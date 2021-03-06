/*************************************************************************************
			       DEPARTMENT OF ELECTRICAL AND ELECTRONIC ENGINEERING
					   		     IMPERIAL COLLEGE LONDON 

 				      EE 3.19: Real Time Digital Signal Processing
					       Dr Paul Mitcheson and Daniel Harvey

                                LAB 5 - Direct form II
 ************************************************************************************/

/**************************** Pre-processor statements ******************************/

#include <stdlib.h>
#include <stdio.h>
//  Included so program can make use of DSP/BIOS configuration tool.  
#include "dsp_bios_cfg.h"

/* The file dsk6713.h must be included in every program that uses the BSL.  This 
   example also includes dsk6713_aic23.h because it uses the 
   AIC23 codec module (audio interface). */
#include "dsk6713.h"
#include "dsk6713_aic23.h"

// math library (trig functions)
#include <math.h>

// Some functions to help with writing/reading the audio ports when using interrupts.
#include <helper_functions_ISR.h>

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
    0x008d,  /* 8 SAMPLERATE Sample rate control             8 KHZ                 */\
    0x0001   /* 9 DIGACT     Digital interface activation    On                    */\
			 /**********************************************************************/
};


// Codec handle:- a variable used to identify audio interface  
DSK6713_AIC23_CodecHandle H_Codec;


/******************************* Filter Stuff ********************************/
// include coefficient
#include "../PartII/coeff.h"

double *v;  // pointer to the delay line buffer (circular)

int index = 0; // index to the circular buffer

 /******************************* Function prototypes ********************************/
void init_hardware(void);     
void init_HWI(void);          
void ISR_AIC(void);    
double IIRFilter(double); 
/********************************** Main routine ************************************/
void main(){      
  // initialise the delay buffer
  v = (double *) calloc(N, sizeof(double));
 
  // initialize board and the audio port
  init_hardware();
	
  /* initialize hardware interrupts */
  init_HWI();
  	 		
  /* loop indefinitely, waiting for interrupts */  					
  while(1) 
  {};
  
}
        
/********************************** init_hardware() **********************************/  
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

	/* These commands do the same thing as above but applied to data transfers to  
	the audio port */
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

/******************** ISR and filter code ***********************/  

void ISR_AIC(void){
    double output = IIRFilter(mono_read_16Bit());
	mono_write_16Bit((Int16) output);
}

// based on difference equation at https://ccrma.stanford.edu/~jos/fp/Direct_Form_II.html
double IIRFilter(double input){
    double* vPtr = v + index + 1;         // loop index pointer
	double* vOffset = v + index;  // current v to write to
    double* vEnd = v+N;   // one element after end of buffer
    double* aPtr = a+1;   // pointer to a1 (ao is not used for calculation)
    double* aEnd = a+N;   // one element after end of a
    double* bPtr = b;     // pointer to b0
    double* bEnd = b+N;   // one element after end of b
    double output = 0;    // output
    
    *vOffset = input;	// read and store 
    
	// calculate v for the current input x
    // v(n) = x(n) - a1 * v(n-1) - a2 * v(n-2) - ...
    for (; vPtr < vEnd; ++vPtr, ++aPtr)
        *vOffset -= (*aPtr) * (*vPtr); 
        
    for (vPtr = v; aPtr < aEnd; ++vPtr, ++aPtr)
        *vOffset -= (*aPtr) * (*vPtr); 
        
    // calculate output y
    // y(n) = b0*v(n) + b1*v(n-1) + b2*v(n-2) + ...
    for (; vOffset < vEnd; ++vOffset, ++bPtr)   // reuse vOffset pointer now
        output += (*bPtr) * (*vOffset);
        
    for (vOffset = v; bPtr < bEnd; ++vOffset, ++bPtr)   // reuse vOffset pointer now
        output += (*bPtr) * (*vOffset);
        
    // decrement index
    index = (index == 0) ? N-1 : index-1;
	
	return output;
}
