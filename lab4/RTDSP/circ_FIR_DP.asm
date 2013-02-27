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
;   See 7.3 Register Conventions of spru187o for register convention and usage

; A0 MSB Accumulator 1 (final)		    B0 MSB Accumulator 2
; A1 LSB "				"				B1 LSB Accumulator 2
; A2									B2 Used to set AMR to circular mode
; A3									B3 Return to C Address
; A4 &circ_ptr (arg 1)					B4 &coef[k] (arg 2)
; A5 circ_ptr							B5
; A6 &read_samp	(arg 3)					B6 &filtered_samp (arg 4)
; A7									B7
; A8 Number of Coefs (N) from C	(arg 5)	B8  LSB coef[k] 1
; A9 									B9	MSB		"
; A10 LSB delay_circ[j]	1				B10 LSB coef[k] 2
; A11 MSB	"							B11 MSB  "
; A12 LSB delay_circ[j] 2				B12 Loop Counter
; A13 MSB	"							B13 Temp Store for previous AMR register value
; A14                       			B14 Data page pointer (DO NOT USE)
; A15 Frame pointer			            B15 Stack pointer (DO NOT USE)
; ****************************************************************************************

_circ_FIR_DP:
		; set circular mode using the AMR 

		MVC .S2			AMR,B13		;(0) Save contents of AMR reg to B13
		MVK .S2			4H,B2 		;(0) Lower half. set A5 to be circular buffering addressing mode using BK0
		MVKLH .S2		9H,B2 		;(0) Upper half. Set BK0 to work for 1024 bytes
		MVC .S2			B2,AMR		;(0) set AMR reg

		; get the data passed from C

		LDDW .D1		*A6,A11:A10	;(4) Get the 64 bit data for read_samp put it in A11:A10 
		LDW .D1			*A4,A5		;(4) Get the address of the circ_ptr, dereference then place in A5
		NOP 4						; A5 now holds address pointing into delay_circ

		STW .D1			A11,*--A5	;(0) Store new input sample (MSB) to delay_circ array
	||	ZERO .S1		A0			;(0) zero accumulator LSB
	||	ZERO .S2		B0  		;(0) 
		STW .D1			A10,*--A5 	;(0) Store new input sample (LSB) to delay_circ array   
	||	ZERO .S1		A1			;(0) zero accumulator MSB
	||	ZERO .S2		B1			;(0)

		STW .D1			A5,*A4		;(0) write back the decremented pointer to circ_ptr
									; this points to the end of the MSB of where the next sample
									; will be stored on the next call to this function 

    ||  MV .S2X 		A8, B12      ;(0) move parameter (numCoefs) passed from C into B12 (Loop counter)
		
		;********************************** loop begin **********************************
		
loop:	

		; ************************* INSERT YOUR MAC CODE HERE ****************************
		LDDW .D1		*A5++, A11:A10 ; (4) loads the (delayed) sample into A11:A10, and post increment pointer
	||	LDDW .D2		*B4++, B9:B8 ; (4) load the coefficient into B11:B10, and post increment pointer
	
		LDDW .D1		*A5++, A13:A12 ; (4) loads the (delayed) sample into A11:A10, and post increment pointer
	||	LDDW .D2		*B4++, B11:B10 ; (4) load the coefficient into B11:B10, and post increment pointer	
			
		NOP	3
		MPYDP .M1X		A11:A10, B9:B8, A11:A10	; (9, 4) DP multiply. takes four cycles to read registers
		MPYDP .M2X		B11:B10, A13:A12, B11:B10	; (9, 4) DP multiply. takes four cycles to read registers		
				
		NOP 7			; reduced by one delay slot due to the way MPYDP and ADDDP reads/writes registers (lower first)
		ADDDP .L1		A1:A0, A11:A10, A1:A0	; (6, 2) DP ADD
		ADDDP .L2		B1:B0, B11:B10, B1:B0	; (6, 2) DP ADD
		
		NOP 6
		
		; ********************************************************************************
		
		; manage loop

        SUB.D2 			B12,2,B12        ; (0) b12 - 1 -> b12
   [B0] B.S2 			loop			; (5) loop back if b0 is not zero
        NOP 			5						
		
		;********************************** loop end **********************************

		; add separate values up
		ADDDP .L1X	A1:A0, B1:B0, A1:A0	; (6, 2)
		NOP 5		; because we are storing lower half first
		; send the result of MAC back to C

		STW.D2			A0,*B6		;(0) Write accumulator (LSB) into filtered_samp 
		STW.D2			A1,*+B6[1]	;(0) Write accumulator (MSB) into filtered_samp 	
	
		; restore previous buffering mode

	||	MVC.S2			B13,AMR		;(0) restore  AMR reg to previous contents
			
		; return to C code

lend:   B.S2 			B3			; (5) branch to b3 (register b3 holds the return address)
        NOP 			5           
        
        .end
							
