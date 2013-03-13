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
#define NOISE_TIME 10.0				// the time, in seconds for the period of time that we are keeping the buffers for
#define FRAMES_PER_NOISE_BUF ((int)(NOISE_TIME/NOISE_BUFFER_NUM/TFRAME))

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

float *inbuffer, *outbuffer;   		/* Input/output circular buffers */
complex *inframe, *outframe;          /* Input and output frames */
float *inwin, *outwin;              /* Input and output windows */
float ingain, outgain;				/* ADC and DAC gains */ 
float cpufrac; 						/* Fraction of CPU time used */
volatile int io_ptr=0;              /* Input/ouput pointer for circular buffers */
volatile int frame_ptr=0;           /* Frame pointer */

float *noiseBuffer;				// the noise circular buffer of all the M subbufs
int curM_offset = 0;			// noise sub-buffer pointer (which M buffer we're chosing)
float *previousFFTvalue;		// for LPFing the FFT bins

float *noiseSubLpf;				// buffer to LPF the noise estimate to subtract (enhancement 3)

float freqLPF_K, noiseSubK;
float NOISE_OVERSUBTRACTION = 3.2f;
float FREQ_LPF_TIME_CONSTANT = 0.04f;
float NOISE_LAMBDA = 0.05f;		// lower bound coefficient for spectral substractions
float NOISE_SUB_LPF_TIME_CONSTANT = 0.1f;

// previous values for recalculation
float prev_FREQ_LPF_TIME_CONSTANT=0, prev_NOISE_SUB_LPF_TIME_CONSTANT=0;



//TODO: refactor
// enhancement 6 parameters
float enhance6HighFreqLowerBound = 0.25f;
float enhance6HighFreqUpperBound = 0.75;	// the former two should add to one
float enhance6LowFreqGain = 1.2;//0.9f;
float enhance6HighFreqGain = 1;//3.f;
float enhance6LowFreqThreshold = 2.f;
float enhance6HighFreqThreshold = 5.f;



// calculated enhancement 6 parameters
float prev_enhance6HighFreqLowerBound = 0, prev_enhance6HighFreqUpperBound=0;
int enhance6HighFreqBinLowerBound, enhance6HighFreqBinUpperBound;



// Enhancement switches
short enhancement1 = 1;
short enhancement2 = 0;
short enhancement3 = 1;
short enhancement4Choice = 4;
short enhancement6 = 1;




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

	inbuffer	= (float *) calloc(CIRCBUF, sizeof(float));	/* Input array */
    outbuffer	= (float *) calloc(CIRCBUF, sizeof(float));	/* Output array */
	inframe		= (complex *) calloc(FFTLEN, sizeof(complex));	/* Array for processing*/
    outframe	= (complex *) calloc(FFTLEN, sizeof(complex));	/* Array for processing*/
    inwin		= (float *) calloc(FFTLEN, sizeof(float));	/* Input window */
    outwin		= (float *) calloc(FFTLEN, sizeof(float));	/* Output window */
    
    noiseBuffer			= (float *) calloc(NOISE_BUFFER_NUM*FFTLEN, sizeof(float));
    previousFFTvalue = (float *) calloc(FFTLEN, sizeof(float));
    noiseSubLpf 		= (float *) calloc(FFTLEN, sizeof(float));
    	
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
  	while(1) //TODO: kill irrelevant
  	{ 	
  		// recalculate values if necessary
  		if (prev_FREQ_LPF_TIME_CONSTANT != FREQ_LPF_TIME_CONSTANT)
  		{
  			prev_FREQ_LPF_TIME_CONSTANT = FREQ_LPF_TIME_CONSTANT;
  			freqLPF_K = exp(-1.f*TFRAME/FREQ_LPF_TIME_CONSTANT);
  		}
  		
  		if (prev_NOISE_SUB_LPF_TIME_CONSTANT != NOISE_SUB_LPF_TIME_CONSTANT)
  		{
  			prev_NOISE_SUB_LPF_TIME_CONSTANT = NOISE_SUB_LPF_TIME_CONSTANT;
  			noiseSubK = exp(-1.f*TFRAME/NOISE_SUB_LPF_TIME_CONSTANT);
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
	// TODO: filter
	int i, j, k, m; 	// various loop counters
	float noiseFactor, noiseMin;	// noise subtraction
	float noiseFactorA, noiseFactorB;	// enhancement 4
	float x, SNR;
	float sampleAbs;		// absolute of the sample
	float temp;		// general purpose temp variable
	
	static int frame_cnt = 0;
	
	short rotatedM;
	float noise_vote;
	
	int io_ptr0;   

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
		inframe[k].r = inbuffer[m] * inwin[k]; 
		inframe[k].i = 0.f;
		if (++m >= CIRCBUF) m=0; /* wrap if required */
	} 
	
	/************************* DO PROCESSING OF FRAME  HERE **************************/
	fft(FFTLEN, inframe);	// perform FFT of this frame
	
	// Noise minimum buffer handling
	if (++frame_cnt >= FRAMES_PER_NOISE_BUF) // rotate noise buffer if time period passed
	{ 
		frame_cnt = 0;
		
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
		x = cabs(inframe[i]);
		
		noise_vote = x; //default
		
		////////////////////////////////////////////////////////////////////////////
		// Optional enhancements
		if (enhancement1 && !enhancement2) // LPF the FFT bins
		{
			noise_vote = (1-freqLPF_K)*x + freqLPF_K*(previousFFTvalue[i]);	
			previousFFTvalue[i] = noise_vote;
		}
		if (enhancement2) // power domain LPF of FFT bins
		{
			noise_vote = sqrt((1-freqLPF_K)*x*x + freqLPF_K*(previousFFTvalue[i]*previousFFTvalue[i]));	
			previousFFTvalue[i] = noise_vote;
		}
		////////////////////////////////////////////////////////////////////////////

		
		// if M buffers rotated -> overwrite bin with new vote
		// store the minimum of the current noise value in M0 and the new bin value
		*(noiseBuffer + curM_offset*FFTLEN + i) = (rotatedM) ? noise_vote : min(noise_vote, *(noiseBuffer + curM_offset*FFTLEN + i)); //TODO: []?
		
		////////////////////////////////////////////////////////////////////////////
		// iterate over noise min buffers and select the smallest bin value
		
		noiseMin = *(noiseBuffer + i);
		for (j = 1; j < NOISE_BUFFER_NUM; ++j)
		{
			if (*(noiseBuffer + j*FFTLEN + i) < noiseMin) 
				noiseMin = *(noiseBuffer + j*FFTLEN + i);
		}
		// oversubstract by alpha coefficient
		noiseMin *= NOISE_OVERSUBTRACTION;
		
		////////////////////////////////////////////////////////////////////////////
		// Perform spectral substraction
		
		// Optionals go here
		
		// default for no enh and enh1
		noiseFactorA = NOISE_LAMBDA;
		noiseFactorB = 1.0 - noiseMin/x;
		
		noiseFactor = max(noiseFactorA, noiseFactorB);
		inframe[i] = rmul(noiseFactor, inframe[i]);
	}

	ifft(FFTLEN, inframe);
	
	/********************************************************************************/
	
    /* multiply outframe by output window and overlap-add into output buffer */  
                           
	m=io_ptr0;
    
    for (k=0;k<(FFTLEN-FRAMEINC);k++) 
	{    										/* this loop adds into outbuffer */                       
	  	outbuffer[m] = outbuffer[m]+inframe[k].r*outwin[k];   
		if (++m >= CIRCBUF) m=0; /* wrap if required */
	}         
    for (;k<FFTLEN;k++) 
	{                           
		outbuffer[m] = inframe[k].r*outwin[k];   /* this loop over-writes outbuffer */        
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
