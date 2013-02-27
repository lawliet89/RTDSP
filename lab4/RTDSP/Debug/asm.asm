;******************************************************************************
;* TMS320C6x C/C++ Codegen                                         PC v6.1.15 *
;* Date/Time created: Wed Feb 27 13:49:25 2013                                *
;******************************************************************************
	.compiler_opts --c64p_l1d_workaround=default --endian=little --hll_source=on --mem_model:code=near --mem_model:const=data --mem_model:data=far_aggregates --silicon_version=6700 --symdebug:dwarf 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C670x                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../asm.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v6.1.15 Copyright (c) 1996-2010 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("H:\RTDSP\lab4\RTDSP\Debug")
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	$C$IR_1,32
	.field  	_Config+0,32
	.field  	23,32			; _Config._regs[0] @ 0
	.field  	23,32			; _Config._regs[1] @ 32
	.field  	505,32			; _Config._regs[2] @ 64
	.field  	505,32			; _Config._regs[3] @ 96
	.field  	17,32			; _Config._regs[4] @ 128
	.field  	0,32			; _Config._regs[5] @ 160
	.field  	0,32			; _Config._regs[6] @ 192
	.field  	67,32			; _Config._regs[7] @ 224
	.field  	141,32			; _Config._regs[8] @ 256
	.field  	1,32			; _Config._regs[9] @ 288
$C$IR_1:	.set	40

	.sect	".cinit"
	.align	8
	.field  	$C$IR_2,32
	.field  	_x_buffer+0,32
	.word	000000000h,000000000h		; _x_buffer[0] @ 0
$C$IR_2:	.set	8

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_X_PTR+0,32
	.field  	_x_buffer,32		; _X_PTR @ 0

	.sect	".cinit"
	.align	8
	.field  	$C$IR_3,32
	.field  	_b+0,32
	.word	09f397239h,0bf770901h		; _b[0] @ 0
	.word	0d46ced39h,0bf73b824h		; _b[1] @ 64
	.word	0827aed1ah,03f6a860ch		; _b[2] @ 128
	.word	0fa1656feh,03f758dedh		; _b[3] @ 192
	.word	03c873cd8h,03f391e51h		; _b[4] @ 256
	.word	012babde7h,03f64aaceh		; _b[5] @ 320
	.word	028269f24h,03f7b3570h		; _b[6] @ 384
	.word	01943e982h,03f608a79h		; _b[7] @ 448
	.word	069dd6922h,03f43ef79h		; _b[8] @ 512
	.word	03a4378fdh,03f78a7e9h		; _b[9] @ 576
	.word	0e700a2fdh,03f628139h		; _b[10] @ 640
	.word	089bda76ah,0bf709f4bh		; _b[11] @ 704
	.word	0ca0a7a5fh,03f521c41h		; _b[12] @ 768
	.word	0882abe34h,03f4cb1eeh		; _b[13] @ 832
	.word	0fedaff75h,0bf8354b4h		; _b[14] @ 896
	.word	0ba61be16h,0bf7b7f71h		; _b[15] @ 960
	.word	0c5faf8c8h,0bf3d6effh		; _b[16] @ 1024
	.word	0405ec423h,0bf86146ch		; _b[17] @ 1088
	.word	0770283cch,0bf8a4833h		; _b[18] @ 1152
	.word	0afbf6ca0h,03f485d8bh		; _b[19] @ 1216
	.word	0a564ea1ah,0bf6de184h		; _b[20] @ 1280
	.word	0319d9890h,0bf892920h		; _b[21] @ 1344
	.word	0bda758ech,03f741947h		; _b[22] @ 1408
	.word	05a9a0b60h,03f882664h		; _b[23] @ 1472
	.word	0e1374753h,0bf6cc63eh		; _b[24] @ 1536
	.word	06cc4441ch,03f81453dh		; _b[25] @ 1600
	.word	0ef4299cch,03f9ceb81h		; _b[26] @ 1664
	.word	0c5dfa7d2h,03f838a76h		; _b[27] @ 1728
	.word	093151f07h,03f730ec8h		; _b[28] @ 1792
	.word	026db3f46h,03fa0fd20h		; _b[29] @ 1856
	.word	09dfb260bh,03f939f10h		; _b[30] @ 1920
	.word	04d253473h,0bf87d734h		; _b[31] @ 1984
	.word	0e2addf2bh,03f8e86f0h		; _b[32] @ 2048
	.word	049075ad8h,03f931687h		; _b[33] @ 2112
	.word	0f1504dffh,0bfa3a7ebh		; _b[34] @ 2176
	.word	0f1b048fch,0bf9fb899h		; _b[35] @ 2240
	.word	0839adf94h,03f7ca0a0h		; _b[36] @ 2304
	.word	0fae211f5h,0bfafe143h		; _b[37] @ 2368
	.word	03a7aaad9h,0bfb9deb4h		; _b[38] @ 2432
	.word	0874f46deh,0bf83c016h		; _b[39] @ 2496
	.word	0ab1c3e62h,0bfaa4357h		; _b[40] @ 2560
	.word	0a05ba239h,0bfcaff5fh		; _b[41] @ 2624
	.word	08f8bed7ch,0bf961467h		; _b[42] @ 2688
	.word	08ddc22f6h,03fdaf718h		; _b[43] @ 2752
	.word	08ddc22f6h,03fdaf718h		; _b[44] @ 2816
	.word	08f8bed7ch,0bf961467h		; _b[45] @ 2880
	.word	0a05ba239h,0bfcaff5fh		; _b[46] @ 2944
	.word	0ab1c3e62h,0bfaa4357h		; _b[47] @ 3008
	.word	0874f46deh,0bf83c016h		; _b[48] @ 3072
	.word	03a7aaad9h,0bfb9deb4h		; _b[49] @ 3136
	.word	0fae211f5h,0bfafe143h		; _b[50] @ 3200
	.word	0839adf94h,03f7ca0a0h		; _b[51] @ 3264
	.word	0f1b048fch,0bf9fb899h		; _b[52] @ 3328
	.word	0f1504dffh,0bfa3a7ebh		; _b[53] @ 3392
	.word	049075ad8h,03f931687h		; _b[54] @ 3456
	.word	0e2addf2bh,03f8e86f0h		; _b[55] @ 3520
	.word	04d253473h,0bf87d734h		; _b[56] @ 3584
	.word	09dfb260bh,03f939f10h		; _b[57] @ 3648
	.word	026db3f46h,03fa0fd20h		; _b[58] @ 3712
	.word	093151f07h,03f730ec8h		; _b[59] @ 3776
	.word	0c5dfa7d2h,03f838a76h		; _b[60] @ 3840
	.word	0ef4299cch,03f9ceb81h		; _b[61] @ 3904
	.word	06cc4441ch,03f81453dh		; _b[62] @ 3968
	.word	0e1374753h,0bf6cc63eh		; _b[63] @ 4032
	.word	05a9a0b60h,03f882664h		; _b[64] @ 4096
	.word	0bda758ech,03f741947h		; _b[65] @ 4160
	.word	0319d9890h,0bf892920h		; _b[66] @ 4224
	.word	0a564ea1ah,0bf6de184h		; _b[67] @ 4288
	.word	0afbf6ca0h,03f485d8bh		; _b[68] @ 4352
	.word	0770283cch,0bf8a4833h		; _b[69] @ 4416
	.word	0405ec423h,0bf86146ch		; _b[70] @ 4480
	.word	0c5faf8c8h,0bf3d6effh		; _b[71] @ 4544
	.word	0ba61be16h,0bf7b7f71h		; _b[72] @ 4608
	.word	0fedaff75h,0bf8354b4h		; _b[73] @ 4672
	.word	0882abe34h,03f4cb1eeh		; _b[74] @ 4736
	.word	0ca0a7a5fh,03f521c41h		; _b[75] @ 4800
	.word	089bda76ah,0bf709f4bh		; _b[76] @ 4864
	.word	0e700a2fdh,03f628139h		; _b[77] @ 4928
	.word	03a4378fdh,03f78a7e9h		; _b[78] @ 4992
	.word	069dd6922h,03f43ef79h		; _b[79] @ 5056
	.word	01943e982h,03f608a79h		; _b[80] @ 5120
	.word	028269f24h,03f7b3570h		; _b[81] @ 5184
	.word	012babde7h,03f64aaceh		; _b[82] @ 5248
	.word	03c873cd8h,03f391e51h		; _b[83] @ 5312
	.word	0fa1656feh,03f758dedh		; _b[84] @ 5376
	.word	0827aed1ah,03f6a860ch		; _b[85] @ 5440
	.word	0d46ced39h,0bf73b824h		; _b[86] @ 5504
	.word	09f397239h,0bf770901h		; _b[87] @ 5568
$C$IR_3:	.set	704

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_index+0,32
	.field  	0,32			; _index @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_map")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_IRQ_map")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$100)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$100)
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_init")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_DSK6713_init")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_openCodec")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_DSK6713_AIC23_openCodec")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$155)
	.dwendtag $C$DW$5


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("mono_read_16Bit")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_mono_read_16Bit")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external

$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("mono_write_16Bit")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_mono_write_16Bit")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("circ_FIR_DP")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_circ_FIR_DP")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$127)
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$126)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$126)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$126)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$11

$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("_IRQ_eventTable")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("__IRQ_eventTable")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.global	_Config
_Config:	.usect	".far",40,4
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("Config")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_Config")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr _Config]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$18, DW_AT_external
	.global	_H_Codec
	.bss	_H_Codec,4,4
$C$DW$19	.dwtag  DW_TAG_variable, DW_AT_name("H_Codec")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_H_Codec")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr _H_Codec]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$19, DW_AT_external
	.global	_x_buffer
_x_buffer:	.usect	".far",1024,1024
$C$DW$20	.dwtag  DW_TAG_variable, DW_AT_name("x_buffer")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_x_buffer")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _x_buffer]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$20, DW_AT_external
	.global	_X_PTR
	.bss	_X_PTR,4,4
$C$DW$21	.dwtag  DW_TAG_variable, DW_AT_name("X_PTR")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_X_PTR")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _X_PTR]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$21, DW_AT_external
	.global	_b
_b:	.usect	".far",704,8
$C$DW$22	.dwtag  DW_TAG_variable, DW_AT_name("b")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_b")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr _b]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$22, DW_AT_external
	.global	_index
	.bss	_index,4,4
$C$DW$23	.dwtag  DW_TAG_variable, DW_AT_name("index")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_index")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr _index]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$23, DW_AT_external
;	C:\EEE\CCStudio4.1\ccsv4\tools\compiler\c6000\bin\opt6x.exe C:\\Users\\ywc110\\AppData\\Local\\Temp\\054522 C:\\Users\\ywc110\\AppData\\Local\\Temp\\054524 
	.sect	".text"
	.clink
	.global	_init_hardware

$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("init_hardware")
	.dwattr $C$DW$24, DW_AT_low_pc(_init_hardware)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_init_hardware")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_TI_begin_file("../asm.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x64)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "../asm.c",line 101,column 1,is_stmt,address _init_hardware

	.dwfde $C$DW$CIE, _init_hardware
;----------------------------------------------------------------------
; 100 | void init_hardware()                                                   
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: init_hardware                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_init_hardware:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 102 | // Initialize the board support library, must be called first          
;----------------------------------------------------------------------
;          EXCLUSIVE CPU CYCLES: 7
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |101| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
	.dwpsn	file "../asm.c",line 103,column 5,is_stmt
;----------------------------------------------------------------------
; 103 | DSK6713_init();                                                        
; 105 | // Start the AIC23 codec using the settings defined above in config    
;----------------------------------------------------------------------
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("_DSK6713_init")
	.dwattr $C$DW$25, DW_AT_TI_call
           CALL    .S1     _DSK6713_init     ; |103| 
           MVKL    .S2     $C$RL0,B3         ; |103| 
           MVKH    .S2     $C$RL0,B3         ; |103| 
           NOP             3
$C$RL0:    ; CALL OCCURS {_DSK6713_init} {0}  ; |103| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "../asm.c",line 106,column 5,is_stmt
;----------------------------------------------------------------------
; 106 | H_Codec = DSK6713_AIC23_openCodec(0, &Config);                         
;----------------------------------------------------------------------
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_DSK6713_AIC23_openCodec")
	.dwattr $C$DW$26, DW_AT_TI_call
           CALL    .S1     _DSK6713_AIC23_openCodec ; |106| 
           MVKL    .S2     $C$RL1,B3         ; |106| 
           MVKL    .S2     _Config,B4
           MVKH    .S2     $C$RL1,B3         ; |106| 
           MVKH    .S2     _Config,B4
           ZERO    .L1     A4                ; |106| 
$C$RL1:    ; CALL OCCURS {_DSK6713_AIC23_openCodec} {0}  ; |106| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 48
           STW     .D2T1   A4,*+DP(_H_Codec) ; |106| 
	.dwpsn	file "../asm.c",line 111,column 2,is_stmt
;----------------------------------------------------------------------
; 111 | MCBSP_FSETS(RCR1, RWDLEN1, 32BIT);                                     
;----------------------------------------------------------------------
           MVKL    .S1     0x190000c,A3
           MVKH    .S1     0x190000c,A3
           LDW     .D1T2   *A3,B5            ; |111| 
           MVK     .S2     160,B4            ; |111| 
           NOP             3
           CLR     .S2     B5,6,6,B5         ; |111| 
           OR      .L2     B4,B5,B4          ; |111| 
           STW     .D1T2   B4,*A3            ; |111| 
	.dwpsn	file "../asm.c",line 115,column 2,is_stmt
;----------------------------------------------------------------------
; 115 | MCBSP_FSETS(SPCR1, RINTM, FRM);                                        
;----------------------------------------------------------------------
           ADD     .L1     -4,A3,A4
           LDW     .D1T1   *A4,A3            ; |115| 
           NOP             4
           CLR     .S1     A3,4,4,A3         ; |115| 
           SET     .S1     A3,5,5,A3         ; |115| 
           STW     .D1T1   A3,*A4            ; |115| 
	.dwpsn	file "../asm.c",line 119,column 2,is_stmt
;----------------------------------------------------------------------
; 119 | MCBSP_FSETS(XCR1, XWDLEN1, 32BIT);                                     
;----------------------------------------------------------------------
           ADD     .L2X    8,A4,B4
           LDW     .D2T2   *B4,B5            ; |119| 
           MVK     .S2     160,B6            ; |119| 
           NOP             3
           CLR     .S2     B5,6,6,B5         ; |119| 
           OR      .L2     B6,B5,B5          ; |119| 
           STW     .D2T2   B5,*B4            ; |119| 
	.dwpsn	file "../asm.c",line 120,column 2,is_stmt
;----------------------------------------------------------------------
; 120 | MCBSP_FSETS(SPCR1, XINTM, FRM);                                        
;----------------------------------------------------------------------
           LDW     .D1T1   *A4,A3            ; |120| 
           NOP             4
           CLR     .S1     A3,20,20,A3       ; |120| 
           SET     .S1     A3,21,21,A3       ; |120| 
           STW     .D1T1   A3,*A4            ; |120| 
	.dwpsn	file "../asm.c",line 123,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |123| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_return
           RET     .S2     B3                ; |123| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |123| 
	.dwattr $C$DW$24, DW_AT_TI_end_file("../asm.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x7b)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text"
	.clink
	.global	_init_HWI

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("init_HWI")
	.dwattr $C$DW$28, DW_AT_low_pc(_init_HWI)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_init_HWI")
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_TI_begin_file("../asm.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "../asm.c",line 127,column 1,is_stmt,address _init_HWI

	.dwfde $C$DW$CIE, _init_HWI
;----------------------------------------------------------------------
; 126 | void init_HWI(void)                                                    
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: init_HWI                                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_init_HWI:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 128 | IRQ_globalDisable();                    // Globally disables interrupts
; 129 | IRQ_nmiEnable();                                // Enables the NMI inte
;     | rrupt (used by the debugger)                                           
; 130 | IRQ_map(IRQ_EVT_RINT1,4);               // Maps an event to a physical
;     | interrupt                                                              
; 131 | IRQ_enable(IRQ_EVT_RINT1);              // Enables the event           
; 132 | IRQ_globalEnable();                             // Globally enables int
;     | errupts                                                                
; 138 | void ISR_AIC(void){                                                    
; 139 | double sample = 0, output = 0;                                         
; 140 | sample = mono_read_16Bit();     // read                                
; 141 | circ_FIR_DP(&X_PTR, b, &sample, &output, N);                           
; 142 | mono_write_16Bit((Int16) output);                                      
; 144 |                                                                        
;----------------------------------------------------------------------
;          EXCLUSIVE CPU CYCLES: 19
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |127| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 354,column 10,is_stmt
           MVC     .S2     CSR,B4            ; |354| 
           NOP             1
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 355,column 3,is_stmt
           MVC     .S2     CSR,B4            ; |355| 
           AND     .L2     -2,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 
           NOP             1
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 356,column 3,is_stmt
           MVC     .S2     IER,B4            ; |356| 
           OR      .L2     2,B4,B4           ; |356| 
           MVC     .S2     B4,IER            ; |356| 
           NOP             1
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 376,column 1,is_stmt
           MVKL    .S1     _IRQ_map,A3       ; |376| 
           MVKH    .S1     _IRQ_map,A3       ; |376| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_IRQ_map")
	.dwattr $C$DW$29, DW_AT_TI_call
           CALL    .S2X    A3                ; |376| 
           MVKL    .S2     $C$RL2,B3         ; |376| 
           MVKH    .S2     $C$RL2,B3         ; |376| 
           MVK     .S2     0x4,B4            ; |376| 
           MVK     .S1     0xf,A4            ; |376| 
           NOP             1
$C$RL2:    ; CALL OCCURS {_IRQ_map} {0}      ; |376| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 26
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 320,column 3,is_stmt
           MVC     .S2     IER,B4            ; |320| 
           MVKL    .S1     __IRQ_eventTable+60,A3
           MVKH    .S1     __IRQ_eventTable+60,A3
           LDW     .D1T1   *A3,A3            ; |320| 
           NOP             4
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
           NOP             1
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 321,column 1,is_stmt
           MVC     .S2     CSR,B4            ; |321| 
           OR      .L2     1,B4,B4           ; |321| 
           MVC     .S2     B4,CSR            ; |321| 
           NOP             1
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 351,column 1,is_stmt
	.dwpsn	file "../asm.c",line 134,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |134| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return
           RET     .S2     B3                ; |134| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |134| 
	.dwattr $C$DW$28, DW_AT_TI_end_file("../asm.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x86)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.clink
	.global	_main

$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("main")
	.dwattr $C$DW$31, DW_AT_low_pc(_main)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_main")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_TI_begin_file("../asm.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x56)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "../asm.c",line 86,column 12,is_stmt,address _main

	.dwfde $C$DW$CIE, _main

;******************************************************************************
;* FUNCTION NAME: main                                                        *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
;  86 | void main(){                                                           
;  87 | // initialize board and the audio port                                 
;----------------------------------------------------------------------
;          EXCLUSIVE CPU CYCLES: 7
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |86| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
	.dwpsn	file "../asm.c",line 88,column 3,is_stmt
;----------------------------------------------------------------------
;  88 | init_hardware();                                                       
;  91 | init_HWI();                                                            
;  94 | while(1)                                                               
;  95 | {};                                                                    
; 100 | void init_hardware()                                                   
; 102 |   // Initialize the board support library, must be called first        
; 103 |   DSK6713_init();                                                      
; 105 |   // Start the AIC23 codec using the settings defined above in config  
; 106 |   H_Codec = DSK6713_AIC23_openCodec(0, &Config);                       
; 111 |       MCBSP_FSETS(RCR1, RWDLEN1, 32BIT);                               
; 115 |       MCBSP_FSETS(SPCR1, RINTM, FRM);                                  
; 119 |       MCBSP_FSETS(XCR1, XWDLEN1, 32BIT);                               
; 120 |       MCBSP_FSETS(SPCR1, XINTM, FRM);                                  
; 126 | void init_HWI(void)                                                    
; 128 |       IRQ_globalDisable();                    // Globally disables inte
;     | rrupts                                                                 
; 129 |       IRQ_nmiEnable();                                // Enables the NM
;     | I interrupt (used by the debugger)                                     
; 130 |       IRQ_map(IRQ_EVT_RINT1,4);               // Maps an event to a phy
;     | sical interrupt                                                        
; 131 |       IRQ_enable(IRQ_EVT_RINT1);              // Enables the event     
; 132 |       IRQ_globalEnable();                             // Globally enabl
;     | es interrupts                                                          
; 138 | void ISR_AIC(void){                                                    
; 139 |       double sample = 0, output = 0;                                   
; 140 |       sample = mono_read_16Bit();     // read                          
; 141 |       circ_FIR_DP(&X_PTR, b, &sample, &output, N);                     
; 142 |       mono_write_16Bit((Int16) output);                                
; 144 |                                                                        
;----------------------------------------------------------------------
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("_init_hardware")
	.dwattr $C$DW$32, DW_AT_TI_call
           CALL    .S1     _init_hardware    ; |88| 
           MVKL    .S2     $C$RL3,B3         ; |88| 
           MVKH    .S2     $C$RL3,B3         ; |88| 
           NOP             3
$C$RL3:    ; CALL OCCURS {_init_hardware} {0}  ; |88| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 18
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 354,column 10,is_stmt
           MVC     .S2     CSR,B4            ; |354| 
           NOP             1
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 355,column 3,is_stmt
           MVC     .S2     CSR,B4            ; |355| 
           AND     .L2     -2,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 
           NOP             1
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 356,column 3,is_stmt
           MVC     .S2     IER,B4            ; |356| 
           OR      .L2     2,B4,B4           ; |356| 
           MVC     .S2     B4,IER            ; |356| 
           NOP             1
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 376,column 1,is_stmt
           MVKL    .S1     _IRQ_map,A3       ; |376| 
           MVKH    .S1     _IRQ_map,A3       ; |376| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_IRQ_map")
	.dwattr $C$DW$33, DW_AT_TI_call
           CALL    .S2X    A3                ; |376| 
           MVKL    .S2     $C$RL4,B3         ; |376| 
           MVKH    .S2     $C$RL4,B3         ; |376| 
           MVK     .S1     0xf,A4            ; |376| 
           MVK     .S2     0x4,B4            ; |376| 
           NOP             1
$C$RL4:    ; CALL OCCURS {_IRQ_map} {0}      ; |376| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 320,column 3,is_stmt
           MVC     .S2     IER,B4            ; |320| 
           MVKL    .S1     __IRQ_eventTable+60,A3
           MVKH    .S1     __IRQ_eventTable+60,A3
           LDW     .D1T1   *A3,A3            ; |320| 
           NOP             4
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
           NOP             1
	.dwpsn	file "C:/EEE/CCStudio4.1/ccsv4/C6000/csl/include/csl_irq.h",line 321,column 1,is_stmt
           MVC     .S2     CSR,B4            ; |321| 
           OR      .L2     1,B4,B4           ; |321| 
           MVC     .S2     B4,CSR            ; |321| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Bad loop structure
;*----------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_main$4$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "../asm.c",line 94,column 9,is_stmt
           B       .S1     $C$L1             ; |94| 
           NOP             5
           ; BRANCH OCCURS {$C$L1}           ; |94| 
$C$DW$L$_main$4$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0

$C$DW$34	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$34, DW_AT_name("H:\RTDSP\lab4\RTDSP\Debug\asm.asm:$C$L1:1:1361972965")
	.dwattr $C$DW$34, DW_AT_TI_begin_file("../asm.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0x5e)
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x5f)
$C$DW$35	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$35, DW_AT_low_pc($C$DW$L$_main$4$B)
	.dwattr $C$DW$35, DW_AT_high_pc($C$DW$L$_main$4$E)
	.dwendtag $C$DW$34

	.dwattr $C$DW$31, DW_AT_TI_end_file("../asm.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x61)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text"
	.clink
	.global	_ISR_AIC

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("ISR_AIC")
	.dwattr $C$DW$36, DW_AT_low_pc(_ISR_AIC)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_ISR_AIC")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_TI_begin_file("../asm.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x8a)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "../asm.c",line 138,column 19,is_stmt,address _ISR_AIC

	.dwfde $C$DW$CIE, _ISR_AIC

;******************************************************************************
;* FUNCTION NAME: ISR_AIC                                                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP                                   *
;*   Local Frame Size  : 0 Args + 20 Auto + 4 Save = 24 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_ISR_AIC:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
; 138 | void ISR_AIC(void){                                                    
;----------------------------------------------------------------------
;          EXCLUSIVE CPU CYCLES: 17
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(24)      ; |138| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 19, 0
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("sample")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_sample")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_breg31 8]
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("output")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_output")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_breg31 16]
	.dwpsn	file "../asm.c",line 139,column 9,is_stmt
;----------------------------------------------------------------------
; 139 | double sample = 0, output = 0;                                         
;----------------------------------------------------------------------
           ZERO    .L2     B5:B4             ; |139| 
           STW     .D2T2   B4,*+SP(8)        ; |139| 
           STW     .D2T2   B5,*+SP(12)       ; |139| 
	.dwpsn	file "../asm.c",line 139,column 21,is_stmt
           LDDW    .D2T2   *+SP(8),B5:B4     ; |139| 
           NOP             4
           STW     .D2T2   B4,*+SP(16)       ; |139| 
           STW     .D2T2   B5,*+SP(20)       ; |139| 
	.dwpsn	file "../asm.c",line 140,column 2,is_stmt
;----------------------------------------------------------------------
; 140 | sample = mono_read_16Bit();     // read                                
;----------------------------------------------------------------------
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_mono_read_16Bit")
	.dwattr $C$DW$39, DW_AT_TI_call
           CALL    .S1     _mono_read_16Bit  ; |140| 
           MVKL    .S2     $C$RL5,B3         ; |140| 
           MVKH    .S2     $C$RL5,B3         ; |140| 
           NOP             3
$C$RL5:    ; CALL OCCURS {_mono_read_16Bit} {0}  ; |140| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 23
           INTDP   .L1     A4,A5:A4          ; |140| 
           NOP             4
           STW     .D2T1   A4,*+SP(8)        ; |140| 
           STW     .D2T1   A5,*+SP(12)       ; |140| 
	.dwpsn	file "../asm.c",line 141,column 2,is_stmt
;----------------------------------------------------------------------
; 141 | circ_FIR_DP(&X_PTR, b, &sample, &output, N);                           
;----------------------------------------------------------------------
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_circ_FIR_DP")
	.dwattr $C$DW$40, DW_AT_TI_call
           CALL    .S1     _circ_FIR_DP      ; |141| 
           MVKL    .S2     _b,B4
           MVKL    .S2     $C$RL6,B3         ; |141| 
           MVK     .S1     (_X_PTR-$bss),A3  ; |141| 

           MVKH    .S2     _b,B4
||         ADD     .L1X    8,SP,A6           ; |141| 

           ADD     .L1X    DP,A3,A4          ; |141| 
||         MVKH    .S2     $C$RL6,B3         ; |141| 
||         ADD     .D2     SP,16,B6          ; |141| 
||         MVK     .S1     0x58,A8           ; |141| 

$C$RL6:    ; CALL OCCURS {_circ_FIR_DP} {0}  ; |141| 
	.dwpsn	file "../asm.c",line 142,column 2,is_stmt
;----------------------------------------------------------------------
; 142 | mono_write_16Bit((Int16) output);                                      
;----------------------------------------------------------------------
           LDDW    .D2T1   *+SP(16),A5:A4    ; |142| 
           MVKL    .S2     $C$RL7,B3         ; |142| 
           MVKH    .S2     $C$RL7,B3         ; |142| 
           NOP             1
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_mono_write_16Bit")
	.dwattr $C$DW$41, DW_AT_TI_call
           CALL    .S1     _mono_write_16Bit ; |142| 
           DPTRUNC .L1     A5:A4,A3          ; |142| 
           NOP             3
           EXT     .S1     A3,16,16,A4       ; |142| 
$C$RL7:    ; CALL OCCURS {_mono_write_16Bit} {0}  ; |142| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "../asm.c",line 143,column 1,is_stmt
           LDW     .D2T2   *++SP(24),B3      ; |143| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return
           RET     .S2     B3                ; |143| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |143| 
	.dwattr $C$DW$36, DW_AT_TI_end_file("../asm.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x8f)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_IRQ_map
	.global	_DSK6713_init
	.global	_DSK6713_AIC23_openCodec
	.global	_mono_read_16Bit
	.global	_mono_write_16Bit
	.global	_circ_FIR_DP
	.global	__IRQ_eventTable

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)

$C$DW$T$52	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$30)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$T$52

$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x20)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Fxn")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)

$C$DW$T$75	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$T$75

$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x20)
$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)

$C$DW$T$134	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$133)
	.dwendtag $C$DW$T$134

$C$DW$T$135	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_address_class(0x20)
$C$DW$T$136	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Fxn")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$24	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$24, DW_AT_address_class(0x20)
$C$DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
$C$DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("SmUns")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
$C$DW$T$139	.dwtag  DW_TAG_typedef, DW_AT_name("SmBits")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
$C$DW$T$140	.dwtag  DW_TAG_typedef, DW_AT_name("Byte")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
$C$DW$T$141	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackEntry")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
$C$DW$T$142	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_address_class(0x20)
$C$DW$T$143	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackPtr")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
$C$DW$T$145	.dwtag  DW_TAG_typedef, DW_AT_name("MdInt")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
$C$DW$T$146	.dwtag  DW_TAG_typedef, DW_AT_name("Short")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
$C$DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
$C$DW$T$150	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
$C$DW$T$151	.dwtag  DW_TAG_typedef, DW_AT_name("MdUns")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
$C$DW$T$152	.dwtag  DW_TAG_typedef, DW_AT_name("MdBits")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$19	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x28)
$C$DW$47	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$47, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$19

$C$DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)

$C$DW$T$27	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x20)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("Arg")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$96	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$96, DW_AT_address_class(0x20)
$C$DW$T$68	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$26)
$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Mode")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("LgInt")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$153	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle")
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)
$C$DW$T$157	.dwtag  DW_TAG_typedef, DW_AT_name("fpos_t")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
$C$DW$T$158	.dwtag  DW_TAG_typedef, DW_AT_name("Int32")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)
$C$DW$T$159	.dwtag  DW_TAG_typedef, DW_AT_name("ptrdiff_t")
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)
$C$DW$T$163	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_IntState")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_sizep")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
$C$DW$T$104	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$100)
$C$DW$T$105	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$105, DW_AT_address_class(0x20)
$C$DW$T$113	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$113, DW_AT_address_class(0x20)

$C$DW$T$165	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$165, DW_AT_byte_size(0x84)
$C$DW$48	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$48, DW_AT_upper_bound(0x20)
	.dwendtag $C$DW$T$165

$C$DW$T$168	.dwtag  DW_TAG_typedef, DW_AT_name("LgUns")
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)
$C$DW$T$169	.dwtag  DW_TAG_typedef, DW_AT_name("LgBits")
	.dwattr $C$DW$T$169, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$169, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$171	.dwtag  DW_TAG_typedef, DW_AT_name("Long")
	.dwattr $C$DW$T$171, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$171, DW_AT_language(DW_LANG_C)
$C$DW$T$172	.dwtag  DW_TAG_typedef, DW_AT_name("Int40")
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$172, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$173	.dwtag  DW_TAG_typedef, DW_AT_name("Uint40")
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$174	.dwtag  DW_TAG_typedef, DW_AT_name("Float")
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$174, DW_AT_language(DW_LANG_C)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$126	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$126, DW_AT_address_class(0x20)
$C$DW$T$127	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_address_class(0x20)

$C$DW$T$175	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$175, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$175, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$175, DW_AT_byte_size(0x400)
$C$DW$49	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$49, DW_AT_upper_bound(0x7f)
	.dwendtag $C$DW$T$175


$C$DW$T$176	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$176, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$176, DW_AT_byte_size(0x2c0)
$C$DW$50	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$50, DW_AT_upper_bound(0x57)
	.dwendtag $C$DW$T$176

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x28)
$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_name("regs")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$154	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
$C$DW$T$155	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$155, DW_AT_address_class(0x20)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x08)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$52, DW_AT_name("quot")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_quot")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$53, DW_AT_name("rem")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_rem")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$21

$C$DW$T$178	.dwtag  DW_TAG_typedef, DW_AT_name("div_t")
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$178, DW_AT_language(DW_LANG_C)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x10)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$54, DW_AT_name("quot")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_quot")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$55, DW_AT_name("rem")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_rem")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$179	.dwtag  DW_TAG_typedef, DW_AT_name("ldiv_t")
	.dwattr $C$DW$T$179, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$179, DW_AT_language(DW_LANG_C)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x10)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$56, DW_AT_name("quot")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_quot")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$57, DW_AT_name("rem")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_rem")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$180	.dwtag  DW_TAG_typedef, DW_AT_name("lldiv_t")
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$180, DW_AT_language(DW_LANG_C)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x18)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_name("fd")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_fd")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$59, DW_AT_name("buf")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$60, DW_AT_name("pos")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$61, DW_AT_name("bufend")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$62, DW_AT_name("buff_stop")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_buff_stop")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$63, DW_AT_name("flags")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_flags")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25

$C$DW$T$181	.dwtag  DW_TAG_typedef, DW_AT_name("FILE")
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$181, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0c)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$64, DW_AT_name("fxn")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$65, DW_AT_name("arg1")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$66, DW_AT_name("arg0")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$39	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_address_class(0x20)
$C$DW$T$182	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$182, DW_AT_address_class(0x20)
$C$DW$T$183	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Handle")
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$T$183, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x0c)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$67, DW_AT_name("num")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_num")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$68, DW_AT_name("acc")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_acc")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$69, DW_AT_name("max")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_max")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$T$42	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)
$C$DW$T$184	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$184, DW_AT_address_class(0x20)
$C$DW$T$185	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Handle")
	.dwattr $C$DW$T$185, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$T$185, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("PIP_Obj")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x64)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$70, DW_AT_name("threshold")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$71, DW_AT_name("preaderTakeProbe")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_preaderTakeProbe")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$72, DW_AT_name("readerAddr")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_readerAddr")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$73, DW_AT_name("readerSize")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_readerSize")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$74, DW_AT_name("readerCurdesc")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_readerCurdesc")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$75, DW_AT_name("pnotifyReader")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_pnotifyReader")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$76, DW_AT_name("readerNumFrames")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_readerNumFrames")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$77, DW_AT_name("preaderGiveProbe")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_preaderGiveProbe")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$78, DW_AT_name("pwriterNumFrames")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_pwriterNumFrames")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$79, DW_AT_name("notifyWriter")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_notifyWriter")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$80, DW_AT_name("preaderSts")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_preaderSts")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$81, DW_AT_name("pwriterTakeProbe")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_pwriterTakeProbe")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$82, DW_AT_name("writerAddr")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_writerAddr")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$83, DW_AT_name("writerSize")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_writerSize")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$84, DW_AT_name("writerCurdesc")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_writerCurdesc")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$85, DW_AT_name("pnotifyWriter")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_pnotifyWriter")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$86, DW_AT_name("writerNumFrames")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_writerNumFrames")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$87, DW_AT_name("pwriterGiveProbe")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_pwriterGiveProbe")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$88, DW_AT_name("preaderNumFrames")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_preaderNumFrames")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$89, DW_AT_name("notifyReader")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_notifyReader")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$90, DW_AT_name("pwriterSts")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_pwriterSts")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("PIP_Obj")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$36	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x20)
$C$DW$T$186	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$186, DW_AT_address_class(0x20)
$C$DW$T$187	.dwtag  DW_TAG_typedef, DW_AT_name("PIP_Handle")
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$187, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("PIP_Curdesc")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x0c)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$91, DW_AT_name("addr")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$92, DW_AT_name("size")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$93, DW_AT_name("next")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$46

$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)
$C$DW$T$188	.dwtag  DW_TAG_typedef, DW_AT_name("PIP_Curdesc")
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("HST_Obj")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x08)
$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$94, DW_AT_name("mask")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$95, DW_AT_name("pipe")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_pipe")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$47

$C$DW$T$189	.dwtag  DW_TAG_typedef, DW_AT_name("HST_Obj")
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$189, DW_AT_language(DW_LANG_C)
$C$DW$T$190	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$190, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$190, DW_AT_address_class(0x20)
$C$DW$T$191	.dwtag  DW_TAG_typedef, DW_AT_name("HST_Handle")
	.dwattr $C$DW$T$191, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$T$191, DW_AT_language(DW_LANG_C)

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x10)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$96, DW_AT_name("spsave")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_spsave")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$97, DW_AT_name("stkBottom")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_stkBottom")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$98, DW_AT_name("stkTop")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_stkTop")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$99, DW_AT_name("inhwi")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_inhwi")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$48

$C$DW$T$192	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$192, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x0c)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$100, DW_AT_name("intrMask")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_intrMask")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$101, DW_AT_name("ccMask")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_ccMask")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$102, DW_AT_name("arg")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$49

$C$DW$T$193	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$193, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x24)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$103, DW_AT_name("runfxn")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_runfxn")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$104, DW_AT_name("execfxn")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_execfxn")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$105, DW_AT_name("curmask")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_curmask")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$106, DW_AT_name("curset")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_curset")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$107, DW_AT_name("lock")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$108, DW_AT_name("curmbox")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_curmbox")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$109, DW_AT_name("curfxn")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_curfxn")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$110, DW_AT_name("rdybeg")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_rdybeg")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$111, DW_AT_name("inswi")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_inswi")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$50

$C$DW$T$194	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$194, DW_AT_language(DW_LANG_C)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x2c)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$112, DW_AT_name("lock")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$113, DW_AT_name("ready")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$114, DW_AT_name("mask")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$115, DW_AT_name("link")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$116, DW_AT_name("initkey")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_initkey")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$117, DW_AT_name("mailbox")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$118, DW_AT_name("fxnobj")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$119, DW_AT_name("stslock")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_stslock")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$120, DW_AT_name("sts")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$51

$C$DW$T$195	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$195, DW_AT_language(DW_LANG_C)
$C$DW$T$196	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$196, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$196, DW_AT_address_class(0x20)
$C$DW$T$197	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Handle")
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$T$197, DW_AT_language(DW_LANG_C)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x14)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$121, DW_AT_name("fxn")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$122, DW_AT_name("arg0")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$123, DW_AT_name("arg1")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$124, DW_AT_name("priority")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$125, DW_AT_name("mailbox")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55

$C$DW$T$198	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$198, DW_AT_language(DW_LANG_C)

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x04)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$126, DW_AT_name("space")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$56

$C$DW$T$199	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$199, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x04)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$127, DW_AT_name("MALLOCSEG")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_MALLOCSEG")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$57

$C$DW$T$200	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$200, DW_AT_language(DW_LANG_C)

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x0c)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$128, DW_AT_name("base")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$129, DW_AT_name("length")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$130, DW_AT_name("space")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$59

$C$DW$T$201	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$201, DW_AT_language(DW_LANG_C)

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x10)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$131, DW_AT_name("size")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$132, DW_AT_name("used")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$133, DW_AT_name("length")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$134, DW_AT_name("space")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$60

$C$DW$T$202	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$202, DW_AT_language(DW_LANG_C)

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x08)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$135, DW_AT_name("next")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$136, DW_AT_name("size")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$62

$C$DW$T$61	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$61, DW_AT_address_class(0x20)
$C$DW$T$203	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$203, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$203, DW_AT_language(DW_LANG_C)

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x08)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$137, DW_AT_name("next")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$138, DW_AT_name("prev")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$64

$C$DW$T$63	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$63, DW_AT_address_class(0x20)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Handle")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x04)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$139, DW_AT_name("dummy")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_dummy")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$65

$C$DW$T$204	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$204, DW_AT_language(DW_LANG_C)

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x38)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$140, DW_AT_name("ready")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$141, DW_AT_name("alarm")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$142, DW_AT_name("setpri")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$143, DW_AT_name("queue")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$144, DW_AT_name("priority")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$145, DW_AT_name("mask")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$146, DW_AT_name("sp")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$147, DW_AT_name("timeout")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$148, DW_AT_name("mode")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$149, DW_AT_name("sts")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$150, DW_AT_name("signalled")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$70

$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
$C$DW$T$205	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$205, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$205, DW_AT_address_class(0x20)
$C$DW$T$206	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Handle")
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$206, DW_AT_language(DW_LANG_C)

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x30)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$151, DW_AT_name("alarm")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$152, DW_AT_name("setpri")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$153, DW_AT_name("queue")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$154, DW_AT_name("priority")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$155, DW_AT_name("mask")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$156, DW_AT_name("sp")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$157, DW_AT_name("timeout")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$158, DW_AT_name("mode")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$159, DW_AT_name("sts")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$160, DW_AT_name("signalled")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$71

$C$DW$T$207	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$207, DW_AT_language(DW_LANG_C)

$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x10)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$161, DW_AT_name("wListElem")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$162, DW_AT_name("wCount")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$163, DW_AT_name("fxn")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$78

$C$DW$T$73	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$73, DW_AT_address_class(0x20)
$C$DW$T$74	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)

$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x20)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$164, DW_AT_name("status")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$165, DW_AT_name("kount")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_kount")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$166, DW_AT_name("period")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_period")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$167, DW_AT_name("nticks")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_nticks")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$168, DW_AT_name("fxnobj")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$169, DW_AT_name("sts")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$79

$C$DW$T$208	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$208, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$208, DW_AT_language(DW_LANG_C)
$C$DW$T$209	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$209, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$209, DW_AT_address_class(0x20)
$C$DW$T$210	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Handle")
	.dwattr $C$DW$T$210, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$T$210, DW_AT_language(DW_LANG_C)

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x0c)
$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$170, DW_AT_name("link")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$171, DW_AT_name("type")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$80

$C$DW$T$211	.dwtag  DW_TAG_typedef, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$211, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$211, DW_AT_language(DW_LANG_C)

$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x10)
$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$172, DW_AT_name("ABORTFXN")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_ABORTFXN")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$173, DW_AT_name("ERRORFXN")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_ERRORFXN")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$174, DW_AT_name("EXITFXN")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$175, DW_AT_name("PUTCFXN")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_PUTCFXN")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$81

$C$DW$T$212	.dwtag  DW_TAG_typedef, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$212, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$212, DW_AT_language(DW_LANG_C)
$C$DW$T$83	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$83, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$83, DW_AT_name("signed char")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$T$84	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x20)
$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
$C$DW$T$213	.dwtag  DW_TAG_typedef, DW_AT_name("va_list")
	.dwattr $C$DW$T$213, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$213, DW_AT_language(DW_LANG_C)
$C$DW$T$214	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$214, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$214, DW_AT_language(DW_LANG_C)
$C$DW$T$215	.dwtag  DW_TAG_typedef, DW_AT_name("Int8")
	.dwattr $C$DW$T$215, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$215, DW_AT_language(DW_LANG_C)
$C$DW$T$216	.dwtag  DW_TAG_typedef, DW_AT_name("SmInt")
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$216, DW_AT_language(DW_LANG_C)

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x20)
$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$176, DW_AT_name("job")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$177, DW_AT_name("count")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$178, DW_AT_name("pendQ")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$179, DW_AT_name("name")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$86

$C$DW$T$132	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$132, DW_AT_address_class(0x20)
$C$DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
$C$DW$T$217	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$217, DW_AT_language(DW_LANG_C)

$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x08)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$180, DW_AT_name("type")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$181, DW_AT_name("name")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$87

$C$DW$T$218	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$218, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)

$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x20)
$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$182, DW_AT_name("STACKSEG")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_STACKSEG")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$183, DW_AT_name("PRIORITY")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_PRIORITY")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$184, DW_AT_name("STACKSIZE")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_STACKSIZE")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$185, DW_AT_name("CREATEFXN")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_CREATEFXN")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$186, DW_AT_name("DELETEFXN")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_DELETEFXN")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$187, DW_AT_name("EXITFXN")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$188, DW_AT_name("SWITCHFXN")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_SWITCHFXN")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$189, DW_AT_name("READYFXN")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_READYFXN")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$88

$C$DW$T$219	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$219, DW_AT_language(DW_LANG_C)

$C$DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$89, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x1c)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$190, DW_AT_name("priority")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$191, DW_AT_name("stack")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$192, DW_AT_name("stacksize")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$193, DW_AT_name("stackseg")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$194, DW_AT_name("environ")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$195, DW_AT_name("name")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$196, DW_AT_name("exitflag")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$197, DW_AT_name("initstackflag")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_initstackflag")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$89

$C$DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)

$C$DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$91, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x54)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$198, DW_AT_name("kobj")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_kobj")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$199, DW_AT_name("stack")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$200, DW_AT_name("stacksize")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$201, DW_AT_name("stackseg")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$202, DW_AT_name("name")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$203, DW_AT_name("environ")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$204, DW_AT_name("errno")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_errno")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$205, DW_AT_name("exitflag")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$91

$C$DW$T$220	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$220, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$220, DW_AT_language(DW_LANG_C)
$C$DW$T$221	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$221, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$221, DW_AT_address_class(0x20)
$C$DW$T$222	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Handle")
	.dwattr $C$DW$T$222, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$T$222, DW_AT_language(DW_LANG_C)

$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x28)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$206, DW_AT_name("attrs")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_attrs")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$207, DW_AT_name("mode")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$208, DW_AT_name("sp")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$209, DW_AT_name("used")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$94

$C$DW$T$223	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$223, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$223, DW_AT_language(DW_LANG_C)

$C$DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$95, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x10)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$210, DW_AT_name("seqnum")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$211, DW_AT_name("val1")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_val1")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$212, DW_AT_name("val2")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_val2")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$213, DW_AT_name("val3")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_val3")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$95

$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
$C$DW$T$98	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_address_class(0x20)

$C$DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$99, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x18)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$214, DW_AT_name("bufend")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$215, DW_AT_name("flag")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$216, DW_AT_name("seqnum")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$217, DW_AT_name("curptr")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_curptr")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$218, DW_AT_name("lenmask")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_lenmask")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$219, DW_AT_name("bufbeg")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_bufbeg")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$99

$C$DW$T$224	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$224, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$224, DW_AT_language(DW_LANG_C)
$C$DW$T$225	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$225, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$225, DW_AT_address_class(0x20)
$C$DW$T$226	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Handle")
	.dwattr $C$DW$T$226, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$226, DW_AT_language(DW_LANG_C)

$C$DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x04)
$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$220, DW_AT_name("devcfg")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_devcfg")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$101

$C$DW$T$227	.dwtag  DW_TAG_typedef, DW_AT_name("CHIP_Config")
	.dwattr $C$DW$T$227, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$227, DW_AT_language(DW_LANG_C)

$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x10)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$221, DW_AT_name("funcAddr")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_funcAddr")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$222, DW_AT_name("ieMask")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_ieMask")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$223, DW_AT_name("ccMask")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_ccMask")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$224, DW_AT_name("funcArg")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_funcArg")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$102

$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("_IRQ_Dispatch")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$T$109	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x20)

$C$DW$T$103	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x10)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$225, DW_AT_name("funcAddr")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_funcAddr")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$226, DW_AT_name("funcArg")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_funcArg")
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$227, DW_AT_name("ccMask")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_ccMask")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$228, DW_AT_name("ieMask")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_ieMask")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$103

$C$DW$T$228	.dwtag  DW_TAG_typedef, DW_AT_name("IRQ_Config")
	.dwattr $C$DW$T$228, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$228, DW_AT_language(DW_LANG_C)

$C$DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x0c)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$229, DW_AT_name("allocated")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_allocated")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$230, DW_AT_name("eventId")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_eventId")
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$231, DW_AT_name("baseAddr")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_baseAddr")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$106

$C$DW$T$111	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$111, DW_AT_address_class(0x20)
$C$DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("TIMER_Handle")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
$C$DW$T$229	.dwtag  DW_TAG_typedef, DW_AT_name("TIMER_Obj")
	.dwattr $C$DW$T$229, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$229, DW_AT_language(DW_LANG_C)

$C$DW$T$107	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x0c)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$232, DW_AT_name("ctl")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$233, DW_AT_name("prd")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_prd")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$234, DW_AT_name("cnt")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$107

$C$DW$T$230	.dwtag  DW_TAG_typedef, DW_AT_name("TIMER_Config")
	.dwattr $C$DW$T$230, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$230, DW_AT_language(DW_LANG_C)

$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x10)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$235, DW_AT_name("biosPresent")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_biosPresent")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$236, DW_AT_name("dispatchTable")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_dispatchTable")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$237, DW_AT_name("timerUsed")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_timerUsed")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$238, DW_AT_name("timerNum")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_timerNum")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$110


$C$DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x0c)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$239, DW_AT_name("hTimer")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_hTimer")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$240, DW_AT_name("event2IntTbl")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_event2IntTbl")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$241, DW_AT_name("int2EventTbl")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_int2EventTbl")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$114


$C$DW$T$115	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x10)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$242, DW_AT_name("args")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_args")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$243, DW_AT_name("ret")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_ret")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$115

$C$DW$T$231	.dwtag  DW_TAG_typedef, DW_AT_name("_CSL_Config")
	.dwattr $C$DW$T$231, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$231, DW_AT_language(DW_LANG_C)

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x18)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$244, DW_AT_name("allocated")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_allocated")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$245, DW_AT_name("xmtEventId")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_xmtEventId")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$246, DW_AT_name("rcvEventId")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_rcvEventId")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$247, DW_AT_name("baseAddr")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_baseAddr")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$248, DW_AT_name("drrAddr")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_drrAddr")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$249, DW_AT_name("dxrAddr")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_dxrAddr")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$116

$C$DW$T$232	.dwtag  DW_TAG_typedef, DW_AT_name("MCBSP_Obj")
	.dwattr $C$DW$T$232, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$232, DW_AT_language(DW_LANG_C)
$C$DW$T$233	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$233, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$233, DW_AT_address_class(0x20)
$C$DW$T$234	.dwtag  DW_TAG_typedef, DW_AT_name("MCBSP_Handle")
	.dwattr $C$DW$T$234, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$T$234, DW_AT_language(DW_LANG_C)

$C$DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x20)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$250, DW_AT_name("spcr")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_spcr")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$251, DW_AT_name("rcr")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_rcr")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$252, DW_AT_name("xcr")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_xcr")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$253, DW_AT_name("srgr")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_srgr")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$254, DW_AT_name("mcr")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_mcr")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$255, DW_AT_name("rcer")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_rcer")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$256, DW_AT_name("xcer")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_xcer")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$257, DW_AT_name("pcr")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_pcr")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$117

$C$DW$T$235	.dwtag  DW_TAG_typedef, DW_AT_name("MCBSP_Config")
	.dwattr $C$DW$T$235, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$235, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 228
	.dwcfi	cfa_register, 31
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 12
	.dwcfi	same_value, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	same_value, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwcfi	undefined, 92
	.dwcfi	undefined, 93
	.dwcfi	undefined, 94
	.dwcfi	undefined, 95
	.dwcfi	undefined, 96
	.dwcfi	undefined, 97
	.dwcfi	undefined, 98
	.dwcfi	undefined, 99
	.dwcfi	undefined, 100
	.dwcfi	undefined, 101
	.dwcfi	undefined, 102
	.dwcfi	undefined, 103
	.dwcfi	undefined, 104
	.dwcfi	undefined, 105
	.dwcfi	undefined, 106
	.dwcfi	undefined, 107
	.dwcfi	undefined, 108
	.dwcfi	undefined, 109
	.dwcfi	undefined, 110
	.dwcfi	undefined, 111
	.dwcfi	undefined, 112
	.dwcfi	undefined, 113
	.dwcfi	undefined, 114
	.dwcfi	undefined, 115
	.dwcfi	undefined, 116
	.dwcfi	undefined, 117
	.dwcfi	undefined, 118
	.dwcfi	undefined, 119
	.dwcfi	undefined, 120
	.dwcfi	undefined, 121
	.dwcfi	undefined, 122
	.dwcfi	undefined, 123
	.dwcfi	undefined, 124
	.dwcfi	undefined, 125
	.dwcfi	undefined, 126
	.dwcfi	undefined, 127
	.dwcfi	undefined, 128
	.dwcfi	undefined, 129
	.dwcfi	undefined, 130
	.dwcfi	undefined, 131
	.dwcfi	undefined, 132
	.dwcfi	undefined, 133
	.dwcfi	undefined, 134
	.dwcfi	undefined, 135
	.dwcfi	undefined, 136
	.dwcfi	undefined, 137
	.dwcfi	undefined, 138
	.dwcfi	undefined, 139
	.dwcfi	undefined, 140
	.dwcfi	undefined, 141
	.dwcfi	undefined, 142
	.dwcfi	undefined, 143
	.dwcfi	undefined, 144
	.dwcfi	undefined, 145
	.dwcfi	undefined, 146
	.dwcfi	undefined, 147
	.dwcfi	undefined, 148
	.dwcfi	undefined, 149
	.dwcfi	undefined, 150
	.dwcfi	undefined, 151
	.dwcfi	undefined, 152
	.dwcfi	undefined, 153
	.dwcfi	undefined, 154
	.dwcfi	undefined, 155
	.dwcfi	undefined, 156
	.dwcfi	undefined, 157
	.dwcfi	undefined, 158
	.dwcfi	undefined, 159
	.dwcfi	undefined, 160
	.dwcfi	undefined, 161
	.dwcfi	undefined, 162
	.dwcfi	undefined, 163
	.dwcfi	undefined, 164
	.dwcfi	undefined, 165
	.dwcfi	undefined, 166
	.dwcfi	undefined, 167
	.dwcfi	undefined, 168
	.dwcfi	undefined, 169
	.dwcfi	undefined, 170
	.dwcfi	undefined, 171
	.dwcfi	undefined, 172
	.dwcfi	undefined, 173
	.dwcfi	undefined, 174
	.dwcfi	undefined, 175
	.dwcfi	undefined, 176
	.dwcfi	undefined, 177
	.dwcfi	undefined, 178
	.dwcfi	undefined, 179
	.dwcfi	undefined, 180
	.dwcfi	undefined, 181
	.dwcfi	undefined, 182
	.dwcfi	undefined, 183
	.dwcfi	undefined, 184
	.dwcfi	undefined, 185
	.dwcfi	undefined, 186
	.dwcfi	undefined, 187
	.dwcfi	undefined, 188
	.dwcfi	undefined, 189
	.dwcfi	undefined, 190
	.dwcfi	undefined, 191
	.dwcfi	undefined, 192
	.dwcfi	undefined, 193
	.dwcfi	undefined, 194
	.dwcfi	undefined, 195
	.dwcfi	undefined, 196
	.dwcfi	undefined, 197
	.dwcfi	undefined, 198
	.dwcfi	undefined, 199
	.dwcfi	undefined, 200
	.dwcfi	undefined, 201
	.dwcfi	undefined, 202
	.dwcfi	undefined, 203
	.dwcfi	undefined, 204
	.dwcfi	undefined, 205
	.dwcfi	undefined, 206
	.dwcfi	undefined, 207
	.dwcfi	undefined, 208
	.dwcfi	undefined, 209
	.dwcfi	undefined, 210
	.dwcfi	undefined, 211
	.dwcfi	undefined, 212
	.dwcfi	undefined, 213
	.dwcfi	undefined, 214
	.dwcfi	undefined, 215
	.dwcfi	undefined, 216
	.dwcfi	undefined, 217
	.dwcfi	undefined, 218
	.dwcfi	undefined, 219
	.dwcfi	undefined, 220
	.dwcfi	undefined, 221
	.dwcfi	undefined, 222
	.dwcfi	undefined, 223
	.dwcfi	undefined, 224
	.dwcfi	undefined, 225
	.dwcfi	undefined, 226
	.dwcfi	undefined, 227
	.dwcfi	undefined, 228
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg0]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_reg1]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_reg2]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg3]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg4]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg5]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg6]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg7]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg8]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg9]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg10]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg11]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg12]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg13]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg14]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg15]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg16]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg17]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg18]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg19]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg20]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg21]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_reg22]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg23]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg24]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg25]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg26]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg27]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg28]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg29]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg30]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg31]
$C$DW$290	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$290, DW_AT_location[DW_OP_regx 0x20]
$C$DW$291	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$291, DW_AT_location[DW_OP_regx 0x21]
$C$DW$292	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$292, DW_AT_location[DW_OP_regx 0x22]
$C$DW$293	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$293, DW_AT_location[DW_OP_regx 0x23]
$C$DW$294	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$294, DW_AT_location[DW_OP_regx 0x24]
$C$DW$295	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$295, DW_AT_location[DW_OP_regx 0x25]
$C$DW$296	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$296, DW_AT_location[DW_OP_regx 0x26]
$C$DW$297	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$297, DW_AT_location[DW_OP_regx 0x27]
$C$DW$298	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$298, DW_AT_location[DW_OP_regx 0x28]
$C$DW$299	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$299, DW_AT_location[DW_OP_regx 0x29]
$C$DW$300	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$300, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$301	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$301, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$302	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$302, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$303	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$303, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$304	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$304, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$305	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$305, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$306	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$306, DW_AT_location[DW_OP_regx 0x30]
$C$DW$307	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$307, DW_AT_location[DW_OP_regx 0x31]
$C$DW$308	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$308, DW_AT_location[DW_OP_regx 0x32]
$C$DW$309	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$309, DW_AT_location[DW_OP_regx 0x33]
$C$DW$310	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$310, DW_AT_location[DW_OP_regx 0x34]
$C$DW$311	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$311, DW_AT_location[DW_OP_regx 0x35]
$C$DW$312	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$312, DW_AT_location[DW_OP_regx 0x36]
$C$DW$313	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$313, DW_AT_location[DW_OP_regx 0x37]
$C$DW$314	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$314, DW_AT_location[DW_OP_regx 0x38]
$C$DW$315	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$315, DW_AT_location[DW_OP_regx 0x39]
$C$DW$316	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$316, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$317	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$317, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$318	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$318, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$319	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$319, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$320	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$320, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$321	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$321, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$322	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$322, DW_AT_location[DW_OP_regx 0x40]
$C$DW$323	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$323, DW_AT_location[DW_OP_regx 0x41]
$C$DW$324	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$324, DW_AT_location[DW_OP_regx 0x42]
$C$DW$325	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$325, DW_AT_location[DW_OP_regx 0x43]
$C$DW$326	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$326, DW_AT_location[DW_OP_regx 0x44]
$C$DW$327	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$327, DW_AT_location[DW_OP_regx 0x45]
$C$DW$328	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$328, DW_AT_location[DW_OP_regx 0x46]
$C$DW$329	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$329, DW_AT_location[DW_OP_regx 0x47]
$C$DW$330	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$330, DW_AT_location[DW_OP_regx 0x48]
$C$DW$331	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$331, DW_AT_location[DW_OP_regx 0x49]
$C$DW$332	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$332, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$333	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$333, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$334	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$334, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$335	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$335, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$336	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$336, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$337	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$337, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$338	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$338, DW_AT_location[DW_OP_regx 0x50]
$C$DW$339	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$339, DW_AT_location[DW_OP_regx 0x51]
$C$DW$340	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$340, DW_AT_location[DW_OP_regx 0x52]
$C$DW$341	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$341, DW_AT_location[DW_OP_regx 0x53]
$C$DW$342	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$342, DW_AT_location[DW_OP_regx 0x54]
$C$DW$343	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$343, DW_AT_location[DW_OP_regx 0x55]
$C$DW$344	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$344, DW_AT_location[DW_OP_regx 0x56]
$C$DW$345	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$345, DW_AT_location[DW_OP_regx 0x57]
$C$DW$346	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$346, DW_AT_location[DW_OP_regx 0x58]
$C$DW$347	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$347, DW_AT_location[DW_OP_regx 0x59]
$C$DW$348	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$348, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$349	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$349, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$350	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$350, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$351	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$351, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$352	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$352, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$353	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$353, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$354	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$354, DW_AT_location[DW_OP_regx 0x60]
$C$DW$355	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$355, DW_AT_location[DW_OP_regx 0x61]
$C$DW$356	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$356, DW_AT_location[DW_OP_regx 0x62]
$C$DW$357	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$357, DW_AT_location[DW_OP_regx 0x63]
$C$DW$358	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$358, DW_AT_location[DW_OP_regx 0x64]
$C$DW$359	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$359, DW_AT_location[DW_OP_regx 0x65]
$C$DW$360	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$360, DW_AT_location[DW_OP_regx 0x66]
$C$DW$361	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$361, DW_AT_location[DW_OP_regx 0x67]
$C$DW$362	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$362, DW_AT_location[DW_OP_regx 0x68]
$C$DW$363	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$363, DW_AT_location[DW_OP_regx 0x69]
$C$DW$364	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$364, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$365	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$365, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$366	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$366, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$367	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$367, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$368	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$368, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$369	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$369, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$370	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$370, DW_AT_location[DW_OP_regx 0x70]
$C$DW$371	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$371, DW_AT_location[DW_OP_regx 0x71]
$C$DW$372	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$372, DW_AT_location[DW_OP_regx 0x72]
$C$DW$373	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$373, DW_AT_location[DW_OP_regx 0x73]
$C$DW$374	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$374, DW_AT_location[DW_OP_regx 0x74]
$C$DW$375	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$375, DW_AT_location[DW_OP_regx 0x75]
$C$DW$376	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$376, DW_AT_location[DW_OP_regx 0x76]
$C$DW$377	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$377, DW_AT_location[DW_OP_regx 0x77]
$C$DW$378	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$378, DW_AT_location[DW_OP_regx 0x78]
$C$DW$379	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$379, DW_AT_location[DW_OP_regx 0x79]
$C$DW$380	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$380, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$381	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$381, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$382	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$382, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$383	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$383, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$384	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$384, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$385	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$385, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$386	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

