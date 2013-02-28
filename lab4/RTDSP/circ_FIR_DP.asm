; ***************************************************************************************
;			        DEPARTMENT OF ELECTRICAL AND ELECTRONIC ENGINEERING
;					               IMPERIAL COLLEGE LONDON 
;
; 				       EE 3.19: Real Time Digital Signal Processing
;					         Course  by: Dr Paul Mitcheson
;
;				  LAB 4: Double precision FIR using Circular Buffer Hardware
;
; 				           *********** circ_FIR_DP.ASM ***********
;
; ***************************************************************************************
; 				        	 Written by D. Harvey: 18 Jan 2010
;
; ***************************************************************************************
;
        .global _circ_FIR_DP

        .text
;
; ***************************** _circ_FIR_DP description ********************************
;
;		The input delay buffer has a data length of (size in bytes)/(data type length).
;				The buffer you create must have a power of 2 size in bytes  
;	i.e its length in bytes must equal 2^X bytes (where X is integer between 1 and 32).
;
; 			Also ensure that its data length (size in bytes/8) is longer than the
;			coefficient array data length. The buffer will need to be data aligned 
;			using  #pragma DATA_ALIGN(delay_buff_name, B) before it is defined
;					 where B is your chosen delay buffer size in bytes. 
;
; circ_FIR_DP function call in C;
;
; circ_FIR_DP( &circ_ptr, &coef[0], &read_samp, &filtered_samp, N );
;
; ***************************** Register Assignments *************************************

; A0 LSB Accumulator 1                    B0 Loop Counter
; A1 MSB     "                            B1 Moved return to C Address
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
; A12                                     B12
; A13                                     B13 Temp Store for previous AMR register value
; A14                                     B14 Data pointer (DO NOT USE)
; A15 Frame Pointer                       B15 Stack Pointer (DO NOT USE)
;  See Real Time Digital Signal Processing by Nasser Kehtarnavaz (page 146) for more 
;  info on mixing C and Assembly.
; ****************************************************************************************

_circ_FIR_DP:
        ; set circular mode using the AMR 
        MVC .S2           AMR,B13        ;(0) Save contents of AMR reg to B13    
        MVK .S2           4H,B2         ;(0) Lower half. set A5 to be circular buffering addressing mode using BK0
        MVKLH .S2         9H,B2         ;(0) Upper half. Set BK0 to work for 1024 bytes
        MVC .S2           B2,AMR        ;(0) set AMR reg

        ; get the data passed from C

        LDDW .D1          *A6,A9:A8    ;(4) Get the 64 bit data for read_samp put it in A9:A8
    ||  MV .S2X           A8, B0      ;(0) move parameter (numCoefs) passed from C into b0         
        LDW .D1           *A4,A5        ;(4) Get the address of the circ_ptr, dereference then place in A5
    ||  MV .S2            B3, B1        ;(0) move return to C address
        MV .S2            B6, B5        ;(0) move &filtered_samp
        NOP 3                        ; A5 now holds address pointing into delay_circ

        STW .D1           A9,*--A5    ;(0) Store new input sample (MSB) to delay_circ array   
    ||  ZERO .S1          A0            ;(0) zero accumulator LSB
    ||  ZERO .S2          B2
    
        STW .D1           A8,*--A5     ;(0) Store new input sample (LSB) to delay_circ array   
    ||  ZERO .S1          A1            ;(0) zero accumulator MSB
    ||  ZERO .S2          B3
    

        STW .D1           A5,*A4        ;(0) write back the decremented pointer to circ_ptr
                                    ; this points to the end of the MSB of where the next sample
                                    ; will be stored on the next call to this function 
        
        ;********************************** loop prologue **********************************
        ; prime the pipeline 
        LDDW .D1          *A5++, A9:A8 ; (4) loads the (delayed) sample into A9:A8, and post increment pointer
    ||  LDDW .D2          *B4++, B9:B8 ; (4) load the coefficient into B9:B8, and post increment pointer
    
        LDDW .D1          *A5++, A11:A10 ; (4) loads the (delayed) sample into A11:A10, and post increment pointer
    ||  LDDW .D2          *B4++, B11:B10 ; (4) load the coefficient into B11:B10, and post increment pointer
        NOP 4
loop:    

        ; ************************* loop kernel     ****************************
        MPYDP .M1X        A9:A8, B9:B8, A3:A2    ; (9, 4) DP multiply
    ||  MPYDP .M2X        B11:B10, A11:A10, B7:B6    ; (9, 4) DP multiply
    ||  SUB .S2           B0,2,B0            ; (0) b0 - 2 -> b0    
        
        NOP 3
        
        [B0] B .S2             loop            ; (5) loop back if b0 is not zero  
    ||  [B0] LDDW .D1     *A5++, A9:A8 ; (4) loads the (delayed) sample into A9:A8, and post increment pointer
    ||  [B0] LDDW .D2     *B4++, B9:B8 ; (4) load the coefficient into B9:B8, and post increment pointer
        
        
        [B0] LDDW .D1     *A5++, A11:A10 ; (4) loads the (delayed) sample into A11:A10, and post increment pointer
    ||  [B0] LDDW .D2     *B4++, B11:B10 ; (4) load the coefficient into B11:B10, and post increment pointer
        NOP 3
        
        ADDDP .L1         A1:A0, A3:A2, A1:A0    ; (6, 2) DP ADD
    ||  ADDDP .L2         B3:B2, B7:B6, B3:B2    ; (6, 2) DP ADD      
   
                            
        
        ;********************************** loop epilogue **********************************
        ; add both accumulators up
        NOP 5        ; for the final addition to be complete
        ADDDP .L1X        A1:A0, B3:B2, A1:A0    ; (6, 2) DP ADD
        NOP 5
        
        ; send the result of MAC back to C

        STW .D2            A0,*B5        ;(0) Write accumulator (LSB) into filtered_samp 
        STW .D2            A1,*+B5[1]    ;(0) Write accumulator (MSB) into filtered_samp     
    
        ; restore previous buffering mode

    ||  MVC .S2            B13,AMR        ;(0) restore  AMR reg to previous contents
            
        ; return to C code

lend:   B .S2             B1            ; (5) branch to b1 (moved C return address)
        NOP 5           
        
        .end
