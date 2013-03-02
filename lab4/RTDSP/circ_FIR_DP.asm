; ***************************************************************************************
;                    DEPARTMENT OF ELECTRICAL AND ELECTRONIC ENGINEERING
;                                   IMPERIAL COLLEGE LONDON 
;
;                        EE 3.19: Real Time Digital Signal Processing
;                             Course  by: Dr Paul Mitcheson
;
;                  LAB 4: Double precision FIR using Circular Buffer Hardware
;
;                            *********** circ_FIR_DP.ASM ***********
;
; ***************************************************************************************
;                              Written by D. Harvey: 18 Jan 2010
;
; ***************************************************************************************
;
        .global _circ_FIR_DP

        .text
;
; ***************************** _circ_FIR_DP description ********************************
;
;        The input delay buffer has a data length of (size in bytes)/(data type length).
;                The buffer you create must have a power of 2 size in bytes  
;    i.e its length in bytes must equal 2^X bytes (where X is integer between 1 and 32).
;
;             Also ensure that its data length (size in bytes/8) is longer than the
;            coefficient array data length. The buffer will need to be data aligned 
;            using  #pragma DATA_ALIGN(delay_buff_name, B) before it is defined
;                     where B is your chosen delay buffer size in bytes. 
;
; circ_FIR_DP function call in C;
;
; circ_FIR_DP( &circ_ptr, &coef[0], &read_samp, &filtered_samp, N );
;
; ***************************** Register Assignments *************************************

; A0 LSB Accumulator 1                    B0 Loop Counter
; A1 MSB     "                            B1 
; A2 LSB Multiplied result    1           B2 Used to set AMR to circular mode - then reused LSB Accumulator 2
; A3 MSB    "        "                    B3 Return to C Address (original)   - then reused MSB "
; A4 &circ_ptr    - possible reuse        B4 &coef[k] - don't use for calc    
; A5 circ_ptr    - don't use for calc     B5 Moved &filtered_samp
; A6 &read_samp    - possible reuse       B6 &filtered_samp - (original) - then reused LSB Multiplied result 2
; A7                                      B7                                           MSB "
; A8 N, then LSB delay_circ[j] 1          B8 LSB coef[k] 1
; A9         MSB "                        B9 MSB    "
; A10 LSB delay_circ[j]    2              B10 LSB coef[k] 2
; A11 MSB    "                            B11 MSB  "
; A12 LSB delay_circ[N-j] 1               B12 LSB delay_circ[N-j] 2   
; A13 MSB    "                            B13 MSB       "          used to save and restore AMR
; A14                                     B14 Data pointer (DO NOT USE)
; A15                                     B15 Stack Pointer (DO NOT USE)

; ****************************************************************************************

_circ_FIR_DP:
        ; set circular mode using the AMR 
        MVC .S2           AMR,B13        ;(0) Save contents of AMR reg to B13 
        STW .D2           B13, *++B15    ; (0) save AMR to stack
        MVK .S2           4H,B2         ;(0) Lower half. set A5 to be circular buffering addressing mode using BK0
        MVKLH .S2         9H,B2         ;(0) Upper half. Set BK0 to work for 1024 bytes
        MVC .S2           B2,AMR        ;(0) set AMR reg

        ; get the data passed from C

        LDDW .D1          *A6,A11:A10    ;(4) Get the 64 bit data for read_samp put it in A9:A8
    ||  MV .S2X           A8, B0      ;(0) move parameter (numCoefs) passed from C into b0         
        LDW .D1           *A4,A5        ;(4) Get the address of the circ_ptr, dereference then place in A5
    ||  STW .D2           B3, *++B15        ;(0) save return to C address to stack
    ||  MV .S2            B6, B5        ;(0) move &filtered_samp
        NOP 4                        ; A5 now holds address pointing into delay_circ

        STW .D1           A11,*--A5    ;(0) Store new input sample (MSB) to delay_circ array   
    ||  ZERO .S1          A0            ;(0) zero accumulator LSB
    ||  ZERO .S2          B2
    
        STW .D1           A10,*--A5     ;(0) Store new input sample (LSB) to delay_circ array   
    ||  ZERO .S1          A1            ;(0) zero accumulator MSB
    ||  ZERO .S2          B3
    

        STW .D1           A5,*A4        ;(0) write back the decremented pointer to circ_ptr
                                    ; this points to the end of the MSB of where the next sample
                                    ; will be stored on the next call to this function 
        
        ;********************************** loop prologue **********************************
        ; prime the pipeline 

        MVK .S2           10, B1 ; (0)
        ADD .S2           B0, B1, B0  ;(0)
        [B0] B .S2             loop            ; (5) loop back if b0 is not zero 
        NOP
        
loop:    ; ************************* loop kernel     ****************************
		
		[B0] SUB .S2      B0,2,B0            ; (0) b0 - 2 -> b0   
	||	[B1] SUB .L2      B1,2, B1     ;(0)
	
				
		NOP
    
    	[B0] B .S2             loop            ; (5) loop back if b0 is not zero 
    ||  LDDW .D1          *A5++, A11:A10 ; (4) 2 - loads the (delayed) sample into A11:A10, and post increment pointer
    ||  LDDW .D2          *B4++, B11:B10 ; (4) 2 - load the coefficient into B11:B10, and post increment pointer       
    
        MPYDP .M1X        A9:A8, B9:B8, A3:A2    ; (9, 4) 1 - DP multiply
    ||  MPYDP .M2X        B11:B10, A11:A10, B7:B6    ; (9, 4) 2 - DP multiply
    ||  [!B1] ADDDP .L1         A1:A0, A3:A2, A1:A0    ; (6, 2) DP ADD
    ||  [!B1] ADDDP .L2         B3:B2, B7:B6, B3:B2    ; (6, 2) DP ADD         
    ||  LDDW .D1          *A5++, A9:A8 ; (4) 1 - loads the (delayed) sample into A9:A8, and post increment pointer
    ||  LDDW .D2          *B4++, B9:B8 ; (4) 1 - load the coefficient into B9:B8, and post increment pointer  

        ;********************************** loop epilogue **********************************
    	; Move Sum of A43 away for safe storage
    	MV .D1            A1, A15
    ||	MV .S1            A0, A14
    ||  MV .D2            B3, B1
    ||  MV .S2            B2, B0
        NOP	
        ;  Sum A44 is semi complete
        ADDDP .L1         A1:A0, A15:A14, A15:A14
    ||  ADDDP .L2         B3:B2, B1:B0, B1:B0
    
    	NOP 1
        LDW .D2           *B15--, B4     ; (4) load return to c address
        NOP 3
        ADDDP .L1X        A15:A14, B1:B0, A15:A14    ; (6, 2) DP ADD 
        NOP
        
        ; return to C code    
        B .S2             B4            ; (5) branch to b1 
        || LDW .D2           *B15--, B13   ; (4) get AMR from stack
        NOP 3
        ; send the result of MAC back to C

        STW .D2            A15,*B5        ;(0) Write accumulator (LSB) into filtered_samp 
        STW .D2            A14,*+B5[1]    ;(0) Write accumulator (MSB) into filtered_samp     
    
        ; restore previous buffering mode

    ||  MVC .S2            B13,AMR        ;(0) restore  AMR reg to previous contents
        
        .end
