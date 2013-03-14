/**************************** Pre-processor statements ******************************/
//  library required when using calloc
#include <stdlib.h>
//  Included so program can make use of DSP/BIOS configuration tool.  
#include "dsp_bios_cfg.h"

/* The file dsk6713.h must be included in every program that uses the BSL.  This 
   example also includes dsk6713_aic23.h because it uses the 
   AIC23 codec module (audio interface). */
#include "dsk6713.h"
#include "dsk6713_aic23.h"

// math library (trig functions)
#include <math.h>

/* Some functions to help with Complex algebra and FFT. */
#include "cmplx.h"      
#include "fft_functions.h"  

// Some functions to help with writing/reading the audio ports when using interrupts.
#include <helper_functions_ISR.h>


// min/max macros
 #define min(a,b) \
   ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
     _a < _b ? _a : _b; })

 #define max(a,b) \
   ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
     _a > _b ? _a : _b; })


#define WINCONST 0.85185			/* 0.46/0.54 for Hamming window */
#define FSAMP 8000.0				/* sample frequency, ensure this matches Config for AIC */
#define FFTLEN 256					/* fft length = frame length 256/8000 = 32 ms*/
#define NFREQ (1+FFTLEN/2)			/* number of frequency bins from a real FFT */
#define OVERSAMP 4					/* oversampling ratio (2 or 4) */  
#define FRAMEINC (FFTLEN/OVERSAMP)	/* Frame increment */
#define CIRCBUF (FFTLEN+FRAMEINC)	/* length of I/O buffers */

#define OUTGAIN 16000.0				/* Output gain for DAC */
#define INGAIN  (1.0/OUTGAIN)		/* Input gain for ADC  */

#define PI 3.141592653589793 		// PI defined here for use in your code 
#define TFRAME (FRAMEINC/FSAMP)       /* time between calculation of each frame */

// Noise Minimum Buffer Related
#define NOISE_BUFFER_NUM 4.0		// this is the number of noise buffers we are keeping
#define NOISE_TIME 4.0				// the time, in seconds for the period of time that we are keeping the buffers for
#define FRAMES_PER_NOISE_BUF ((int)(NOISE_TIME/NOISE_BUFFER_NUM/TFRAME))  // this is the number of frames processed before a noise buffer rotation happens

/******************************* Global declarations ********************************/

/* Audio port configuration settings: these values set registers in the AIC23 audio 
   interface to configure it. See TI doc SLWS106D 3-3 to 3-10 for more info. */
DSK6713_AIC23_Config Config = { \
			 /**********************************************************************/
			 /*   REGISTER	            FUNCTION			      SETTINGS         */ 
			 /**********************************************************************/\
    0x0017,  /* 0 LEFTINVOL  Left line input channel volume  0dB                   */\
    0x0017,  /* 1 RIGHTINVOL Right line input channel volume 0dB                   */\
    0x01f9,  /* 2 LEFTHPVOL  Left channel headphone volume   0dB                   */\
    0x01f9,  /* 3 RIGHTHPVOL Right channel headphone volume  0dB                   */\
    0x0011,  /* 4 ANAPATH    Analog audio path control       DAC on, Mic boost 20dB*/\
    0x0000,  /* 5 DIGPATH    Digital audio path control      All Filters off       */\
    0x0000,  /* 6 DPOWERDOWN Power down control              All Hardware on       */\
    0x0043,  /* 7 DIGIF      Digital audio interface format  16 bit                */\
    0x008d,  /* 8 SAMPLERATE Sample rate control        8 KHZ-ensure matches FSAMP */\
    0x0001   /* 9 DIGACT     Digital interface activation    On                    */\
			 /**********************************************************************/
};

// Codec handle:- a variable used to identify audio interface  
DSK6713_AIC23_CodecHandle H_Codec;

/*************** buffers **********************/
float *inbuffer, *outbuffer;   		// Input/output circular buffers 
complex *frameN;         			// buffer for frame N 
complex *frameN1;					// buffer frame N-1 (enhancement 8)
complex *frameN2;					// buffer frame N-2 (enhancement 8)
complex *outFrame;					// output frame content (enhancement 8)
float *inwin, *outwin;              // Input and output windows coefficients
float ingain, outgain;				// ADC and DAC gains  
float cpufrac; 						// Fraction of CPU time used 
volatile int io_ptr=0;              // Input/ouput pointer for circular buffers 
volatile int frame_ptr=0;           // Frame pointer 

float *noiseBuffer;				// the noise circular buffer of all the M subbufs
int curM_offset = 0;			// noise sub-buffer pointer (which M buffer we're chosing)
float *previousFFTvalue;		// for LPFing the FFT bins

/* Enhancement 8 buffers */
float *previousFrameNXRatio;		// for storing previous |N(w)|/|X(w)|
float *frameN1ModY;					// for storing frame N-1 |Y(w)|
float *frameN2ModY;					// for storing frame N-2 |Y(w)|

float *noiseLpfBuffer;					// buffer to LPF the noise estimate to subtract (enhancement 3)

/************** parameters *****************/
float noiseLambda = 0.05f;				// lower bound coefficient for spectral substractions
float noiseOversubtract = 3.2f;			// noise oversubtraction parameter (alpha)

/* enhancements 1 & 2 & 3 */
float freqLpfTimeConstant = 0.04f;		// enhancement 1/2 time constant parameter for LPF
float noiseLpfTimeConstant = 0.1f;	// enhancement 3 time constant parameter for LPF
float freqLPF_K, noiseLPF_K;				// calculated factor for enhancement 1/2 & 3 respectively
float prev_freqLpfTimeConstant = 0;		// previous values for the above time constant values
float prev_noiseLpfTimeConstant=0;	// used for tracking and seeing if the factors needs recalculations

/* enhancement 6 parameters */
float enhance6HighFreqLowerBound = 0.25f;	// fraction of frequency bin to consider as the lower bound for "high freq"
float enhance6HighFreqUpperBound = 0.75;	// the former two should add to one
float enhance6LowFreqGain = 1.2f;			// factor to multiply with alpha for low freq
float enhance6HighFreqGain = 1.f;			// factor to multiply with alpha for high freq
float enhance6LowFreqThreshold = 2.f;		// low freq SNR threshold (NOT in dB)
float enhance6HighFreqThreshold = 5.f;		// high freq SNR threshold (NOT in dB)

// calculated enhancement 6 parameters
int enhance6HighFreqBinLowerBound, enhance6HighFreqBinUpperBound;	// calculated actual frequency bin numbers
float prev_enhance6HighFreqLowerBound = 0, prev_enhance6HighFreqUpperBound=0;	// previous values for the thresholds above to see if recalculation is needed

// enhancement 8 threshold
float enhancement8Threshold = 3.f;			// N/X ratio threshold for enhancement 8

/************** enhancement switches *****************/
short enhancement1 = 1;
short enhancement2 = 1; 	// this overrides enhancement 1
short enhancement3 = 1;
short enhancement4Choice = 4;	// choose zero to turn enhancement 4/5 off.
short enhancement6 = 1;
short enhancement8 = 0;

 /******************************* Function prototypes *******************************/
void init_hardware(void);    	/* Initialize codec */ 
void init_HWI(void);            /* Initialize hardware interrupts */
void ISR_AIC(void);             /* Interrupt service routine for codec */
void process_frame(void);       /* Frame processing routine */
           
/********************************** Main routine ************************************/
void main()
{      

  	int k; // used in various for loops
  
	/*  Initialize and zero fill arrays */  

	/*** buffers ***/
	inbuffer	= (float *) calloc(CIRCBUF, sizeof(float));	/* Input array */
    outbuffer	= (float *) calloc(CIRCBUF, sizeof(float));	/* Output array */
    
	frameN		= (complex *) calloc(FFTLEN, sizeof(complex));	/* FrameN for processing*/
	frameN1		= (complex *) calloc(FFTLEN, sizeof(complex));	/* FrameN-1 for processing*/
	frameN2		= (complex *) calloc(FFTLEN, sizeof(complex));	/* FrameN-2 for processing*/
	outFrame 	= (complex *) calloc(FFTLEN, sizeof(complex));	/* final Output Frame */
	
    inwin		= (float *) calloc(FFTLEN, sizeof(float));	/* Input window */
    outwin		= (float *) calloc(FFTLEN, sizeof(float));	/* Output window */
    
    noiseBuffer			= (float *) calloc(NOISE_BUFFER_NUM*FFTLEN, sizeof(float));	// noise estmiation buffer
    
    previousFFTvalue 	= (float *) calloc(FFTLEN, sizeof(float));		// enhancement 2 buffer
    
    noiseLpfBuffer 		= (float *) calloc(FFTLEN, sizeof(float));		// enhancement 3 buffer
    
    /* enhancement 8 buffers */
    previousFrameNXRatio 	= (float *) calloc(FFTLEN, sizeof(float));
    frameN1ModY				= (float *) calloc(FFTLEN, sizeof(float));
    frameN2ModY				= (float *) calloc(FFTLEN, sizeof(float));
    	
	/* initialize board and the audio port */
  	init_hardware();
  
  	/* initialize hardware interrupts */
  	init_HWI();    
  
	/* initialize algorithm constants */  
                       
  	for (k=0;k<FFTLEN;k++)
	{                           
		inwin[k] = sqrt((1.0-WINCONST*cos(PI*(2*k+1)/FFTLEN))/OVERSAMP);
		outwin[k] = inwin[k]; 
	} 
  	ingain=INGAIN;
  	outgain=OUTGAIN;        

 							
  	/* main loop, wait for interrupt */  
  	while(1) 
  	{ 	
  		// recalculate values if necessary (for manual runtime tweaking)
  		if (prev_freqLpfTimeConstant != freqLpfTimeConstant)
  		{
  			prev_freqLpfTimeConstant = freqLpfTimeConstant;
  			freqLPF_K = exp(-1.f*TFRAME/freqLpfTimeConstant);
  		}
  		
  		if (prev_noiseLpfTimeConstant != noiseLpfTimeConstant)
  		{
  			prev_noiseLpfTimeConstant = noiseLpfTimeConstant;
  			noiseLPF_K = exp(-1.f*TFRAME/noiseLpfTimeConstant);
  		}
  		
  		if (prev_enhance6HighFreqLowerBound != enhance6HighFreqLowerBound)
  		{
  			prev_enhance6HighFreqLowerBound = enhance6HighFreqLowerBound;
  			enhance6HighFreqBinLowerBound = (int) (FFTLEN*enhance6HighFreqLowerBound);
  		}
  		
  		if (prev_enhance6HighFreqUpperBound != enhance6HighFreqUpperBound)
  		{
  			prev_enhance6HighFreqUpperBound = enhance6HighFreqUpperBound;
  			enhance6HighFreqBinUpperBound = (int) (FFTLEN*enhance6HighFreqUpperBound);
  		}
  		
  		process_frame();
  	
  	}
}
    
/********************************** init_hardware() *********************************/  
void init_hardware()
{
    // Initialize the board support library, must be called first 
    DSK6713_init();
    
    // Start the AIC23 codec using the settings defined above in config 
    H_Codec = DSK6713_AIC23_openCodec(0, &Config);

	/* Function below sets the number of bits in word used by MSBSP (serial port) for 
	receives from AIC23 (audio port). We are using a 32 bit packet containing two 
	16 bit numbers hence 32BIT is set for  receive */
	MCBSP_FSETS(RCR1, RWDLEN1, 32BIT);	

	/* Configures interrupt to activate on each consecutive available 32 bits 
	from Audio port hence an interrupt is generated for each L & R sample pair */	
	MCBSP_FSETS(SPCR1, RINTM, FRM);

	/* These commands do the same thing as above but applied to data transfers to the 
	audio port */
	MCBSP_FSETS(XCR1, XWDLEN1, 32BIT);	
	MCBSP_FSETS(SPCR1, XINTM, FRM);	
	

}
/********************************** init_HWI() **************************************/ 
void init_HWI(void)
{
	IRQ_globalDisable();			// Globally disables interrupts
	IRQ_nmiEnable();				// Enables the NMI interrupt (used by the debugger)
	IRQ_map(IRQ_EVT_RINT1,4);		// Maps an event to a physical interrupt
	IRQ_enable(IRQ_EVT_RINT1);		// Enables the event
	IRQ_globalEnable();				// Globally enables interrupts

}
        
/******************************** process_frame() ***********************************/  
void process_frame(void)
{
	int i, j, k, m; 	// various loop counters
	float noiseFactor, noiseMin;	// noise subtraction
	float noiseFactorA, noiseFactorB;	// enhancement 4
	float x;			// holds the abs for the current sample
	
	static int frameCounter = 0;		// frame counter for noise buffer rotation
	
	short rotatedM;		// whether noise buffer rotation has been done
	float noiseVote;	// low pass filtered noise estimate P(w) (enhancement 1/2)
	
	int io_ptr0;   // IO pointer

	/* work out fraction of available CPU time used by algorithm */    
	cpufrac = ((float) (io_ptr & (FRAMEINC - 1)))/FRAMEINC;  
		
	/* wait until io_ptr is at the start of the current frame */ 	
	while((io_ptr/FRAMEINC) != frame_ptr); 
	
	/* then increment the framecount (wrapping if required) */ 
	if (++frame_ptr >= (CIRCBUF/FRAMEINC)) frame_ptr=0;
 	
 	/* save a pointer to the position in the I/O buffers (inbuffer/outbuffer) where the 
 	data should be read (inbuffer) and saved (outbuffer) for the purpose of processing */
 	io_ptr0=frame_ptr * FRAMEINC;
	
	/* copy input data from inbuffer into inframe (starting from the pointer position) */ 
	 
	m=io_ptr0;
    for (k=0;k<FFTLEN;k++)
	{                           
		frameN[k].r = inbuffer[m] * inwin[k]; 
		frameN[k].i = 0.f;
		if (++m >= CIRCBUF) m=0; /* wrap if required */
	} 
	
	/************************* DO PROCESSING OF FRAME  HERE **************************/
	
	fft(FFTLEN, frameN);	// FFT of this frame
	
	// Noise minimum buffer handling
	if (++frameCounter >= FRAMES_PER_NOISE_BUF) // rotate noise buffer if time period passed
	{ 
		frameCounter = 0;
		
		if (++curM_offset >= NOISE_BUFFER_NUM) // circular buffer wrap for noise bufs
			curM_offset = 0;
		
		// M buffers have been rotated, set corresponding flag
		rotatedM = 1;
	}
	else
	{	// no rotations, usual operation
		rotatedM = 0;
	}
		
	// iterate over fft bins
	for (i = 0; i < FFTLEN; i++)
	{	
		x = cabs(frameN[i]); // absolute of the signal's fft bin
		
		noiseVote = x; //default
		
		////////////////////////////////////////////////////////////////////////////
		// Optional enhancements
		if (enhancement1 && !enhancement2) // LPF the FFT bins
		{
			noiseVote = (1-freqLPF_K)*x + freqLPF_K*(previousFFTvalue[i]);	
			previousFFTvalue[i] = noiseVote;
		}
		if (enhancement2) // power domain LPF of FFT bins
		{
			noiseVote = sqrt((1-freqLPF_K)*x*x + freqLPF_K*(previousFFTvalue[i]*previousFFTvalue[i]));	
			previousFFTvalue[i] = noiseVote;
		}
		
		////////////////////////////////////////////////////////////////////////////

		// if M buffers rotated -> overwrite bin with new vote
		// store the minimum of the current noise value in M0 and the new bin value
		*(noiseBuffer + curM_offset*FFTLEN + i) = (rotatedM) ? noiseVote : min(noiseVote, *(noiseBuffer + curM_offset*FFTLEN + i)); //TODO: []?
		
		////////////////////////////////////////////////////////////////////////////
		// iterate over noise min buffers and select the smallest bin value
		
		noiseMin = *(noiseBuffer + i);
		for (j = 1; j < NOISE_BUFFER_NUM; ++j)
		{
			noiseMin = min(noiseMin, *(noiseBuffer + j*FFTLEN + i));
		}
		// oversubstract by alpha coefficient
		noiseMin *= noiseOversubtract;
		
		////////////////////////////////////////////////////////////////////////////
		
				
		/* enhancement 3 - LPF noise estimate */
		if (enhancement3)	
		{
			noiseLpfBuffer[i] = (1-noiseLPF_K)*noiseMin + noiseLPF_K*noiseLpfBuffer[i];
			noiseMin = noiseLpfBuffer[i];
		}
		
		/* Enhancement 6 - further noise overestimation with a sharp 0/1 cutoff */
		if (enhancement6)	
		{
			float SNR = x/noiseMin;
			if (i > enhance6HighFreqBinLowerBound && i < enhance6HighFreqBinUpperBound)
			{	// high frequency handling
				if (SNR < enhance6HighFreqThreshold )
					noiseMin *= enhance6HighFreqGain;
			}
			else
			{	// low frequency handling
				if (SNR < enhance6LowFreqThreshold  )
					noiseMin *= enhance6LowFreqGain ;
			}
		}
		
		/* enhancement 4 & 5 */
		switch (enhancement4Choice)		// calculate G(w), equation used chosen based on switch value
		{
			float temp;
			case 1:
				temp = noiseMin/x;
				noiseFactorA = noiseLambda * temp;
				noiseFactorB = 1.f - temp;
				break;
			case 2: 
				noiseFactorA = noiseLambda * noiseVote/x;
				noiseFactorB = 1.f - noiseMin/x;
				break;
			case 3: 
				temp = noiseMin/noiseVote;
				noiseFactorA = noiseLambda * temp;
				noiseFactorB = 1.f - temp;
				break;
			case 4: 
				noiseFactorA =  noiseLambda;
				noiseFactorB = 1.f -  noiseMin/noiseVote;
				break;
				
			/* enhancement 5 power handling */	
			case 5:	// power version of no enhancement 4
				noiseFactorA =  noiseLambda;
				noiseFactorB =  sqrt(1.0 - noiseMin*noiseMin/(x*x));
				break;
			case 6:	// power version of enhancement 4 - 1
				temp = noiseMin*noiseMin/(x*x);
				noiseFactorA = noiseLambda * sqrt(temp);
				noiseFactorB = sqrt(1.f - temp);
				break;
			case 7:	// power version of enhancement 4 - 2
				noiseFactorA = noiseLambda * sqrt(noiseVote*noiseVote/(x*x));
				noiseFactorB = sqrt(1.f - noiseMin*noiseMin/(x*x));
				break;
			case 8:	// power version of enhancement 4 - 3
				temp = noiseMin*noiseMin/(noiseVote*noiseVote);
				noiseFactorA = noiseLambda * sqrt(temp);
				noiseFactorB = sqrt(1.f - temp);
				break;
			case 9: // power version of enhancement 4 - 4
				noiseFactorA =  noiseLambda;
				noiseFactorB = sqrt(1.f -  noiseMin*noiseMin/(noiseVote*noiseVote));
				break;
			/* enhancement 4 & 5 off */
			case 0: 	
			default: 	
				noiseFactorA = noiseLambda;
				noiseFactorB = 1.0 - noiseMin/x;
				break;
		}
		
		////////////////////////////////////////////////////////////////////////////
		// Perform spectral substraction

		noiseFactor = max(noiseFactorA, noiseFactorB);
		frameN[i] = rmul(noiseFactor, frameN[i]);
		
		////////////////////////////////////////////////////////////////////////////
		/* Enhancement 8 further processing */
		if (enhancement8)
		{
			x *= noiseFactor;			// absolute of Yn
			
			// check if previous frame N/X ratio is above a certain threshold
			if (previousFrameNXRatio[i] > enhancement8Threshold)
			{
				// find the frame with the min abs(Y) and use that frame as the output
				if (x < frameN1ModY[i] && x < frameN2ModY[i])
					outFrame[i] = frameN[i];
				else if (frameN1ModY[i] < x && frameN1ModY[i] < frameN2ModY[i])
					outFrame[i] = frameN1[i];
				else
					outFrame[i] = frameN2[i];
			}
			else	// below threshold? just output the previous frame
			{
				outFrame[i] = frameN1[i];	
			}
			
			previousFrameNXRatio[i] = noiseMin/x;		// update the N/X ratio
			frameN2ModY[i] = x;		// overwrite the value for N-2 frame
		}
		else // plain old no enhancement8
		{		
			outFrame[i] = frameN[i]; // direct assignment
		}
	}
	
	if (enhancement8)	// if enhancement 8, swap relevant buffers
	{
		complex *tempFrame;
		
		tempFrame = frameN2;
		frameN2 = frameN1; // new N-2 frame is old N-1 frame
		frameN1 = frameN;  // new N-1 frame is old N frame
		frameN = tempFrame;	// new N frame reuses the old N-2 frame buffer for new input incoming
		
		// swap |Y(w)| buffers
		float *temp;
		
		temp = frameN2ModY;		// note that the mod Y for frame N is already stored here
		frameN2ModY = frameN1ModY;
		frameN1ModY = temp;
		
	}    
	
	ifft(FFTLEN, outFrame);	// perform inverse FFT to return us back to time domain
	
	/********************************************************************************/
	
    /* multiply outframe by output window and overlap-add into output buffer */  
                           
	m=io_ptr0;
    
    for (k=0;k<(FFTLEN-FRAMEINC);k++) 
	{    										/* this loop adds into outbuffer */                       
	  	outbuffer[m] = outbuffer[m]+outFrame[k].r*outwin[k];   
		if (++m >= CIRCBUF) m=0; /* wrap if required */
	}         
    for (;k<FFTLEN;k++) 
	{                           
		outbuffer[m] = outFrame[k].r*outwin[k];   /* this loop over-writes outbuffer */        
	    m++;
	}	                               
}        
/*************************** INTERRUPT SERVICE ROUTINE  *****************************/

// Map this to the appropriate interrupt in the CDB file
   
void ISR_AIC(void)
{       
	short sample;
	/* Read and write the ADC and DAC using inbuffer and outbuffer */
	
	sample = mono_read_16Bit();
	inbuffer[io_ptr] = ((float)sample)*ingain;
		/* write new output data */
	mono_write_16Bit((int)(outbuffer[io_ptr]*outgain)); 
	
	/* update io_ptr and check for buffer wraparound */    
	
	if (++io_ptr >= CIRCBUF) io_ptr=0;
}

/************************************************************************************/
