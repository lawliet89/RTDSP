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

; A0 LSB Accumulator A                    B0 Loop Counter
; A1 MSB     "                            B1 
; A2 LSB Multiplied result    A           B2 Used to set AMR to circular mode - then reused LSB Multiplied Result B
; A3 MSB    "        "                    B3 Return to C Address (original)   - then reused MSB "
; A4 &circ_ptr    - possible reuse        B4 &coef[k] - don't use for calc    
; A5 circ_ptr    - don't use for calc     B5 
; A6 &read_samp    - possible reuse       B6 &filtered_samp - (original) - then reused LSB Accumulator B
; A7                                      B7                                           MSB "
; A8 N, then LSB delay_circ[j] A          B8 LSB coef[k] A
; A9         MSB "                        B9 MSB    "
; A10 LSB delay_circ[j]    B              B10 LSB coef[k] B
; A11 MSB    "                            B11 MSB  "
; A12                                     B12    
; A13                                     B13 
; A14                                     B14 Data pointer (DO NOT USE)
; A15                                     B15 Stack Pointer (DO NOT USE)

; ****************************************************************************************

_circ_FIR_DP:
        MVC.S2            AMR,B13        ;(0) Save contents of AMR reg to B13
    ||  STW .D2           B3, *++B15    ; (0) save return to C to stack
    ||  LDDW.D1           *A6,A11:A10    ;(4) Get the 32 bit data for read_samp put it in A11:A10 
    
        STW .D2           B6, *++B15    ; (0) save &filtered_samp to stack
    ||  MVK .S2           4H,B2 ;(0)Set AMR to allow A5 to be used for circular addressing with BK0
    ||  LDW .D1           *A4,A5        ;(4) Get the address of the circ_ptr, dereference then place in A5
        MVKLH .S2         9H,B2 ;(0)Set BK0 to allow for 1024 bytes addressing
        MVC.S2            B2,AMR        ;(0) set AMR reg
        
        NOP 2                        ; A5 now holds address pointing into delay_circ

        STW .D1           A11,*--A5    ;(0) Store new input sample (MSB) to delay_circ array
    ||  ZERO .S1          A1            ;(0) zero accumulator LSB
    ||  ZERO .S2          B3
        
        STW .D1           A10,*--A5     ;(0) Store new input sample (LSB) to delay_circ array   
    ||  ZERO.S1           A0            ;(0) zero accumulator MSB
    ||  ZERO .S2          B2

        STW.D1            A5,*A4    ;(0) write back the decremented pointer to circ_ptr
                                    ; this points to the end of the MSB of where the next sample
                                    ; will be stored on the next call to this function 

    ||  MV .L2X           A8, B0      ;(0) move parameter (numCoefs) passed from C into b0 
    ||  MVK .S2           10, B1        ;(0) setup countdown to start addition    
        
        
        ADD               .L2 B0, B1, B0 ;(0) Branch needs 10/2=5 iterations to setup and running. 
    ||  B .S2             loop    ;(0) Loop is only 4 cycles, 
                                  ; so we need to kickstart the branch back for loop iteration 1

		NOP                       ; NOP to allow the branch for Loop iteration 1 to happen right at the end
        
        ;********************************** loop begin **********************************
        
loop:    
        [B0] SUB .S2      B0,2,B0  ;(0) Decrement loop counter by 2, because we are doing two calculations togerher

        
        [B1] SUB .D2      B1,2,B1  ; (0) countdown to allow start of addition. Countdown is done by two
                                   ; because the loop counter is decremented by two. And since we added B0
                                   ; and B1 together before the loop, we must also double B1's value and subtract
                                   ; by 2 each time
    
        [B0] B .S2        loop          ;(5) for current iteration i, kickstart the branch back for iteration i+1
    ||  [B0] LDDW .D1     *A5++, A11:A10 ; (4) B - Load delayed sample
    ||  [B0] LDDW .D2     *B4++, B11:B10 ; (4) B - Load coefficient
    ||  [B0] MPYDP .M2X   B11:B10, A11:A10, B3:B2 ; (9,4) B - Multiply
    || [!B1] ADDDP .L2    B7:B6, B3:B2, B7:B6 ; (6,2) B - Accumulate
        
        
        [B0] LDDW .D1     *A5++, A9:A8 ; (4) A - Load delayed sample
    ||  [B0] LDDW .D2     *B4++, B9:B8 ; (4) A - Load coefficient
    ||  [B0] MPYDP .M1X   A9:A8, B9:B8, A3:A2 ; (9,4) A - Multiply
    || [!B1] ADDDP .L1    A1:A0, A3:A2, A1:A0 ; (6,2) A - Accumulate
    || [!B0] MV .S2       B6, B12 ; (0) for the final iteration this cycle, the LH result for B-Addition-44 is 
                                  ; written on this cycle. We move the LH result for B-Addition-43 out of the
                                  ; way to prevent losing them
        
        
        ;********************************** loop end **********************************
        MV .D1            A0, A12 ; (0) the UH result for A-Addition-44 is 
                                  ; written on this cycle. We move the UH result for A-Addition-43 out of the
                                  ; way to prevent losing them
    ||  MV .S2            B7, B13 ; (0) the UH result for B-Addition-44 is 
                                  ; written on this cycle. We move the UH result for B-Addition-43 out of the
                                  ; way to prevent losing them
    
        MV .D1            A1, A13 ; (0) the LH result for A-Addition-44 is 
                                  ; written on this cycle. We move the LH result for A-Addition-43 out of the
                                  ; way to prevent losing them
    ||  ADDDP .L2         B7:B6, B13:B12, B13:B12  ; (6,2) the supurious B-Addition-45 will write the LH result in
                                                   ; 2 cycles after this. Better start adding result of B-Addition-44
        
        ADDDP .L1         A1:A0, A13:A12, A13:A12  ; (6,2) the supurious A-Addition-45 will write the LH result in
                                                   ; 2 cycles after this. Better start adding result of A-Addition-44
    
        LDW .D2           *B15--, B6   ; (4) get &filtered_samp from stack
        LDW .D2           *B15--, B0   ; (4) get return to C from stack
        
        NOP 3
        ADDDP .L1X        A13:A12, B13:B12, A13:A12 ; (6,2) Add the results of Side A and B together 
        
        NOP 

        ; return to C code

lend:   B.S2              B0            ; (5) branch to b3 (register b3 holds the return address)    
        NOP     3
        
        ; send the result of MAC back to C
        STW.D2            A12,*B6        ;(0) Write accumulator (LSB) into filtered_samp 
        
        STW.D2            A13,*+B6[1]    ;(0) Write accumulator (MSB) into filtered_samp     
    ||  MVC.S2            B1,AMR        ;(0) restore  AMR reg to previous contents      
        
        .end
                            
