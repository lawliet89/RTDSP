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

; A0 LSB Multiplication  result			B0 Loop Counter
; A1 MSB "				"				B1
; A2									B2 Used to set AMR to circular mode
; A3									B3 Return to C Address
; A4 &circ_ptr							B4 &coef[k]
; A5 circ_ptr							B5
; A6 &read_samp							B6 &filtered_samp
; A7									B7
; A8 Number of Coefs (N) 				B8
; A9									B9
; A10 LSB delay_circ[j]					B10 LSB coef[k]
; A11 MSB	"							B11 MSB  "
; A12 									B12
; A13 									B13 Temp Store for previous AMR register value
; A14 MSB Accumulator 					B14
; A15 LSB 	"							B15
;  See Real Time Digital Signal Processing by Nasser Kehtarnavaz (page 146) for more 
;  info on mixing C and Assembly.
; ****************************************************************************************

_circ_FIR_DP:
		; set circular mode using the AMR 

		MVC.S2			AMR,B13		;(0) Save contents of AMR reg to B13
		STW .D2           B13, *++B15    ; (0) save AMR to stack
		STW .D2           B3, *++B15    ; (0) save return to C to stack
;		STW .D2           B6, *++B15    ; (0) save &filtered_samp to stack
;		STW .D2T1           A15, *++B15    ; (0) save return to C to stack
		MVK.S2			4H,B2;(0) 
		MVKLH.S2		9H,B2;(0)
		MVC.S2			B2,AMR		;(0) set AMR reg

		; get the data passed from C

		LDDW.D1			*A6,A11:A10	;(4) Get the 32 bit data for read_samp put it in A11:A10 
		LDW.D1			*A4,A5		;(4) Get the address of the circ_ptr, dereference then place in A5
		NOP 4						; A5 now holds address pointing into delay_circ

		STW.D1			A11,*--A5	;(0) Store new input sample (MSB) to delay_circ array
		STW.D1			A10,*--A5 	;(0) Store new input sample (LSB) to delay_circ array   
	

		STW.D1			A5,*A4		;(0) write back the decremented pointer to circ_ptr
									; this points to the end of the MSB of where the next sample
									; will be stored on the next call to this function 

		ZERO.S1			A1			;(0) zero accumulator LSB
		ZERO.S1			A0			;(0) zero accumulator MSB

        MV.S2X 			A8, B0      ;(0) move parameter (numCoefs) passed from C into b0 
		
		
		
		MVK .S2 5, B1
		ADD .L2 B0, B1, B0
		|| B .S2 loop
		nop
		
		;********************************** loop begin **********************************
		
loop:	
		nop
		[B0] SUB .S2 B0,1,B0
	||  [B1] SUB .D2 B1,1,B1
	
		[B0] B .S2 loop
		
		LDDW .D1 *A5++, A11:A10
	||	LDDW .D2 *B4++, B11:B10
	||	MPYDP .M1X A11:A10, B11:B10, A3:A2
	|| [!B1] ADDDP .L1 A1:A0, A3:A2, A1:A0
	
		
		
		;********************************** loop end **********************************
		MV .D1 A0, A14
		MV .D1 A1, A15
		
		ADDDP .L1 A1:A0, A15:A14, A15:A14
		
		NOP 6
;		LDW .D2T1          *B15--, A15   
;		LDW .D2           *B15--, B6   ; (4) get &filtered_samp from stack
		LDW .D2           *B15--, B0   ; (4) get return to C from stack
		LDW .D2           *B15--, B1   ; (4) get AMR from stack
		
		NOP 4
		
		; send the result of MAC back to C

		STW.D2			A14,*B6		;(0) Write accumulator (LSB) into filtered_samp 
		STW.D2			A15,*+B6[1]	;(0) Write accumulator (MSB) into filtered_samp 	
	
		; restore previous buffering mode

		MVC.S2			B1,AMR		;(0) restore  AMR reg to previous contents
			
		; return to C code

lend:   B.S2 			B0			; (5) branch to b3 (register b3 holds the return address)
        NOP 			5           
        
        .end
							
