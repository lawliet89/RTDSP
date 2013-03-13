/*************************************************************************************
			       DEPARTMENT OF ELECTRICAL AND ELECTRONIC ENGINEERING
					   		     IMPERIAL COLLEGE LONDON 

 				      EE 3.19: Real Time Digital Signal Processing
					       Dr Paul Mitcheson and Daniel Harvey

				        		 PROJECT: Frame Processing

 				            ********* ENHANCE. C **********
							 Shell for speech enhancement 

  		Demonstrates overlap-add frame processing (interrupt driven) on the DSK. 

 *************************************************************************************
 				             By Danny Harvey: 21 July 2006
							 Updated for use on CCS v4 Sept 2010
 ************************************************************************************/
/*
 *	You should modify the code so that a speech enhancement project is built 
 *  on top of this template.
 */
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

#define WINCONST 0.85185			/* 0.46/0.54 for Hamming window */
#define FSAMP 8000.0		/* sample frequency, ensure this matches Config for AIC */
#define FFTLEN 256					/* fft length = frame length 256/8000 = 32 ms*/
#define NFREQ (1+FFTLEN/2)			/* number of frequency bins from a real FFT */
#define OVERSAMP 4					/* oversampling ratio (2 or 4) */  
#define FRAMEINC (FFTLEN/OVERSAMP)	/* Frame increment */
#define CIRCBUF (FFTLEN+FRAMEINC)	/* length of I/O buffers */

#define OUTGAIN 16000.0				/* Output gain for DAC */
#define INGAIN  (1.0/OUTGAIN)		/* Input gain for ADC  */
// PI defined here for use in your code 
#define PI 3.141592653589793
#define TFRAME FRAMEINC/FSAMP       /* time between calculation of each frame */

// Noise Minimum Buffer Related
#define NOISE_BUFFER_NUM 4		// this is the number of noise buffers we are keeping
#define NOISE_TIME 10	// the time, in seconds for the period of time that we are keeping the buffers for
#define NOISE_SAMPLES_PER_SUBBUF (NOISE_TIME*FSAMP/NOISE_BUFFER_NUM)	// the number of samples before the noise buffers are rotated

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

float *noiseBuffer;					// the noise buffer
float *noiseEstimateBuffer;		// noise LPF estimate Buffer
float *noiseSubLpf;				// buffer to LPF the noise estimate to subtract (enhancement 3)
volatile int noiseSubbufIndex = 0;		// noise buffer pointer
volatile int sampleCount = 0;	// the number of samples
float noiseK, noiseSubK;
float NOISE_OVERSUBTRACTION = 3.2f;
float NOISE_LPF_TIME_CONSTANT = 0.04f;		//20-80 ms	- enhancement 1
float NOISE_LAMBDA = 0.05f;
float NOISE_SUB_LPF_TIME_CONSTANT = 0.04f;	// enhancement 3

// previous values for recalculation
float prev_NOISE_LPF_TIME_CONSTANT=0, prev_NOISE_SUB_LPF_TIME_CONSTANT=0;

// enhancement 6 parameters
float enhance6HighFreqLowerBound = 0.25f;
float enhance6HighFreqUpperBound = 0.75;	// the former two should add to one
float enhance6LowFreqGain = 0.9f;
float enhance6HighFreqGain = 3.f;
float enhance6LowFreqThreshold = 2.f;
float enhance6HighFreqThreshold = 5.f;

// calculated enhancement 6 parameters
float prev_enhance6HighFreqLowerBound = 0, prev_enhance6HighFreqUpperBound=0;
int enhance6HighFreqBinLowerBound, enhance6HighFreqBinUpperBound;

// Enhancement switches
short enhancement1 = 1;
short enhancement2 = 1;
short enhancement3 = 1;

short enhancement4Choice = 3;

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
    
    noiseBuffer		= (float *) calloc(NOISE_BUFFER_NUM*FFTLEN, sizeof(float));
    noiseEstimateBuffer = (float *) calloc(FFTLEN, sizeof(float));
    noiseSubLpf = (float *) calloc(FFTLEN, sizeof(float));
    	
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
  		// recalculate values if necessary
  		if (prev_NOISE_LPF_TIME_CONSTANT != NOISE_LPF_TIME_CONSTANT)
  		{
  			prev_NOISE_LPF_TIME_CONSTANT = NOISE_LPF_TIME_CONSTANT;
  			noiseK = exp(-1.f*TFRAME/NOISE_LPF_TIME_CONSTANT);
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
	int i, j, k, m; 	// various loop counters
	float noiseFactor, noiseMin;	// noise subtraction
	float noiseFactorA, noiseFactorB;	// enhancement 4
	float x, SNR;
	float temp;		// general purpose temp variable
	
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
	if (sampleCount >= NOISE_SAMPLES_PER_SUBBUF) // time to rotate noise buffer
	{ 
		noiseSubbufIndex = (noiseSubbufIndex == NOISE_BUFFER_NUM-1) ? 0 : noiseSubbufIndex+1;
		sampleCount = 0;
		
		if (enhancement1)			// Enhancement 1 PART I
		{
			for (i = 0; i < FFTLEN; i++){
				x = cabs(inframe[i]);		// LPF filtering
				noiseEstimateBuffer[i] = (1-noiseK)*x + noiseK*(noiseEstimateBuffer[i]);
				*(noiseBuffer + noiseSubbufIndex*FFTLEN + i) =  noiseEstimateBuffer[i];
			}
		} 
		else if (enhancement2) // Enhancement 2 PART I
		{
			for (i = 0; i < FFTLEN; i++){
				x = cabs(inframe[i]);	
				x *= x;	
				noiseEstimateBuffer[i] = sqrt((1-noiseK)*x + noiseK*(noiseEstimateBuffer[i]*noiseEstimateBuffer[i]));
				*(noiseBuffer + noiseSubbufIndex*FFTLEN + i) =  noiseEstimateBuffer[i];
			}
		}
		else		// no enhancements
		{
			for (i = 0; i < FFTLEN; i++)
				*(noiseBuffer + noiseSubbufIndex*FFTLEN + i) =  cabs(inframe[i]);
		}
		
	}
	else // process noise minimisation
	{
		if (enhancement1)			// Enhancement 1 PART II
		{
			for (i = 0; i < FFTLEN; i++)
			{
				x = cabs(inframe[i]);
				noiseEstimateBuffer[i] = (1-noiseK)*x + noiseK*(noiseEstimateBuffer[i]);
				if (noiseEstimateBuffer[i] < *(noiseBuffer + noiseSubbufIndex*FFTLEN + i))
					*(noiseBuffer + noiseSubbufIndex*FFTLEN + i) = noiseEstimateBuffer[i];
			}
		}
		else if (enhancement2)			// Enhancement 2 PART II
		{
			for (i = 0; i < FFTLEN; i++)
			{
				x = cabs(inframe[i]);
				x *= x;	
				noiseEstimateBuffer[i] = sqrt((1-noiseK)*x + noiseK*(noiseEstimateBuffer[i]*noiseEstimateBuffer[i]));
				if (noiseEstimateBuffer[i] < *(noiseBuffer + noiseSubbufIndex*FFTLEN + i))
					*(noiseBuffer + noiseSubbufIndex*FFTLEN + i) = noiseEstimateBuffer[i];
			}
		}
		else		// no enhancements
		{
			for (i = 0; i < FFTLEN; i++)
			{
				if (cabs(inframe[i]) < *(noiseBuffer + noiseSubbufIndex*FFTLEN + i))
					*(noiseBuffer + noiseSubbufIndex*FFTLEN + i) = cabs(inframe[i]);
			}
		}
	}
	
	// Now we will subtract the noise
	for (i = 0; i < FFTLEN; i++)
	{
		noiseMin = *(noiseBuffer+i);
		// determine the noise min for this frequency bin
		for (j = 1; j < NOISE_BUFFER_NUM; j++)
		{
			if (*(noiseBuffer + j*FFTLEN + i) < noiseMin) 
				noiseMin = *(noiseBuffer + j*FFTLEN + i);
		}
		noiseMin *= NOISE_OVERSUBTRACTION;
		
		if (enhancement6)	// Enhancement 6 - further noise overestimation
		{
			SNR = cabs(inframe[i])/noiseMin;
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

		if (enhancement3)	// enhancement 3 - LPF noise estimate
		{
			noiseSubLpf[i] = (1-noiseSubK)*noiseMin + noiseSubK*noiseSubLpf[i];
			noiseMin = noiseSubLpf[i];
		}		
		
		// calculate noiseFactor (g)
		switch (enhancement4Choice)
		{
			case 1:
				temp = noiseMin/cabs(inframe[i]);
				noiseFactorA = NOISE_LAMBDA * temp;
				noiseFactorB = 1.f - temp;
				break;
			case 2: 
				temp = cabs(inframe[i]);
				noiseFactorA = NOISE_LAMBDA * noiseEstimateBuffer[i]/temp;
				noiseFactorB = 1.f - noiseMin/temp;
				break;
			case 3: 
				temp = noiseMin/noiseEstimateBuffer[i];
				noiseFactorA = NOISE_LAMBDA * temp;
				noiseFactorB = 1.f - temp;
				break;
			case 4: 
				noiseFactorA =  NOISE_LAMBDA;
				noiseFactorB = 1.f -  noiseMin/noiseEstimateBuffer[i];
				break;
			default: 	// as though enhancement 4 is off
				noiseFactorA =  NOISE_LAMBDA;
				noiseFactorB = 1.f -  noiseMin/cabs(inframe[i]);
				break;
		}
		
		noiseFactor = (noiseFactorA > noiseFactorB) ? noiseFactorA : noiseFactorB;
		outframe[i] = rmul(noiseFactor, inframe[i]);
	}
	
	ifft(FFTLEN, outframe);
	
	/********************************************************************************/
	
    /* multiply outframe by output window and overlap-add into output buffer */  
                           
	m=io_ptr0;
    
    for (k=0;k<(FFTLEN-FRAMEINC);k++) 
	{    										/* this loop adds into outbuffer */                       
	  	outbuffer[m] = outbuffer[m]+outframe[k].r*outwin[k];   
		if (++m >= CIRCBUF) m=0; /* wrap if required */
	}         
    for (;k<FFTLEN;k++) 
	{                           
		outbuffer[m] = outframe[k].r*outwin[k];   /* this loop over-writes outbuffer */        
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
	sampleCount++;
}

/************************************************************************************/
