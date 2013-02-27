;******************************************************************************
;* TMS320C6x C/C++ Codegen                                         PC v6.1.15 *
;* Date/Time created: Wed Feb 27 13:49:26 2013                                *
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
	.dwattr $C$DW$CU, DW_AT_name("dsp_bios_cfg_c.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v6.1.15 Copyright (c) 1996-2010 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("H:\RTDSP\lab4\RTDSP\Debug")
;	C:\EEE\CCStudio4.1\ccsv4\tools\compiler\c6000\bin\opt6x.exe C:\\Users\\ywc110\\AppData\\Local\\Temp\\041722 C:\\Users\\ywc110\\AppData\\Local\\Temp\\041724 

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$1	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$23)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$23)
	.dwendtag $C$DW$T$45

$C$DW$T$46	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x20)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Fxn")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$67)
	.dwendtag $C$DW$T$68

$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x20)
$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)

$C$DW$T$95	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$94)
	.dwendtag $C$DW$T$95

$C$DW$T$96	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_address_class(0x20)
$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Fxn")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
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
$C$DW$T$98	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("SmUns")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("SmBits")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
$C$DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("Byte")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
$C$DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackEntry")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
$C$DW$T$103	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_address_class(0x20)
$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackPtr")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("MdInt")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
$C$DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("Short")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$T$109	.dwtag  DW_TAG_typedef, DW_AT_name("MdUns")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
$C$DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("MdBits")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
$C$DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$T$20	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x20)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("Arg")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$89	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$89, DW_AT_address_class(0x20)
$C$DW$T$61	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$19)
$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Mode")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("LgInt")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("Int32")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("ptrdiff_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)
$C$DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_IntState")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_sizep")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
$C$DW$T$115	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
$C$DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("LgUns")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
$C$DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("LgBits")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$118	.dwtag  DW_TAG_typedef, DW_AT_name("Long")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
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
$C$DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("Float")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x0c)
$C$DW$5	.dwtag  DW_TAG_member
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$5, DW_AT_name("fxn")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$5, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$5, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$6	.dwtag  DW_TAG_member
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$6, DW_AT_name("arg1")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$6, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$6, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$7	.dwtag  DW_TAG_member
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$7, DW_AT_name("arg0")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$7, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$7, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
$C$DW$T$32	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_address_class(0x20)
$C$DW$T$120	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$120, DW_AT_address_class(0x20)
$C$DW$T$121	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Handle")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0c)
$C$DW$8	.dwtag  DW_TAG_member
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$8, DW_AT_name("num")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_num")
	.dwattr $C$DW$8, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$8, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$9	.dwtag  DW_TAG_member
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$9, DW_AT_name("acc")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_acc")
	.dwattr $C$DW$9, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$9, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$10	.dwtag  DW_TAG_member
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$10, DW_AT_name("max")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_max")
	.dwattr $C$DW$10, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$10, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$26

$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
$C$DW$T$35	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_address_class(0x20)
$C$DW$T$122	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$122, DW_AT_address_class(0x20)
$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Handle")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("PIP_Obj")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x64)
$C$DW$11	.dwtag  DW_TAG_member
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$11, DW_AT_name("threshold")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_threshold")
	.dwattr $C$DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$11, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$12	.dwtag  DW_TAG_member
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$12, DW_AT_name("preaderTakeProbe")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_preaderTakeProbe")
	.dwattr $C$DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$12, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$13	.dwtag  DW_TAG_member
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$13, DW_AT_name("readerAddr")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_readerAddr")
	.dwattr $C$DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$13, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$14	.dwtag  DW_TAG_member
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$14, DW_AT_name("readerSize")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_readerSize")
	.dwattr $C$DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$14, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$15	.dwtag  DW_TAG_member
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$15, DW_AT_name("readerCurdesc")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_readerCurdesc")
	.dwattr $C$DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$15, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$16	.dwtag  DW_TAG_member
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$16, DW_AT_name("pnotifyReader")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_pnotifyReader")
	.dwattr $C$DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$16, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$17	.dwtag  DW_TAG_member
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$17, DW_AT_name("readerNumFrames")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_readerNumFrames")
	.dwattr $C$DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$18	.dwtag  DW_TAG_member
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$18, DW_AT_name("preaderGiveProbe")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_preaderGiveProbe")
	.dwattr $C$DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$19, DW_AT_name("pwriterNumFrames")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_pwriterNumFrames")
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$20, DW_AT_name("notifyWriter")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_notifyWriter")
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$21, DW_AT_name("preaderSts")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_preaderSts")
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$22, DW_AT_name("pwriterTakeProbe")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_pwriterTakeProbe")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$23, DW_AT_name("writerAddr")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_writerAddr")
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$24, DW_AT_name("writerSize")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_writerSize")
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$25, DW_AT_name("writerCurdesc")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_writerCurdesc")
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$26, DW_AT_name("pnotifyWriter")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_pnotifyWriter")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$27, DW_AT_name("writerNumFrames")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_writerNumFrames")
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$28, DW_AT_name("pwriterGiveProbe")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_pwriterGiveProbe")
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$29, DW_AT_name("preaderNumFrames")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_preaderNumFrames")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$30, DW_AT_name("notifyReader")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_notifyReader")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$31, DW_AT_name("pwriterSts")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_pwriterSts")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$36

$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("PIP_Obj")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_address_class(0x20)
$C$DW$T$124	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$124, DW_AT_address_class(0x20)
$C$DW$T$125	.dwtag  DW_TAG_typedef, DW_AT_name("PIP_Handle")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("PIP_Curdesc")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x0c)
$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$32, DW_AT_name("addr")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$33, DW_AT_name("size")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$34, DW_AT_name("next")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39

$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)
$C$DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("PIP_Curdesc")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("HST_Obj")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x08)
$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$35, DW_AT_name("mask")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$36, DW_AT_name("pipe")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_pipe")
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$127	.dwtag  DW_TAG_typedef, DW_AT_name("HST_Obj")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
$C$DW$T$128	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$128, DW_AT_address_class(0x20)
$C$DW$T$129	.dwtag  DW_TAG_typedef, DW_AT_name("HST_Handle")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x10)
$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$37, DW_AT_name("spsave")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_spsave")
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$38, DW_AT_name("stkBottom")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_stkBottom")
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$39, DW_AT_name("stkTop")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_stkTop")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$40, DW_AT_name("inhwi")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_inhwi")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$130	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x0c)
$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$41, DW_AT_name("intrMask")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_intrMask")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$42, DW_AT_name("ccMask")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_ccMask")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$43, DW_AT_name("arg")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$42

$C$DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x24)
$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$44, DW_AT_name("runfxn")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_runfxn")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$45, DW_AT_name("execfxn")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_execfxn")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$46, DW_AT_name("curmask")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_curmask")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$47, DW_AT_name("curset")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_curset")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("lock")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$49, DW_AT_name("curmbox")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_curmbox")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$50, DW_AT_name("curfxn")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_curfxn")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$51, DW_AT_name("rdybeg")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_rdybeg")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$52, DW_AT_name("inswi")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_inswi")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$43

$C$DW$T$132	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x2c)
$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("lock")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$54, DW_AT_name("ready")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$55, DW_AT_name("mask")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$56, DW_AT_name("link")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$57, DW_AT_name("initkey")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_initkey")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$58, DW_AT_name("mailbox")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$59, DW_AT_name("fxnobj")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("stslock")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_stslock")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$61, DW_AT_name("sts")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$44

$C$DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
$C$DW$T$134	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$134, DW_AT_address_class(0x20)
$C$DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Handle")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x14)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$62, DW_AT_name("fxn")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$63, DW_AT_name("arg0")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$64, DW_AT_name("arg1")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("priority")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$66, DW_AT_name("mailbox")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$48

$C$DW$T$136	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x04)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("space")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$49

$C$DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x04)
$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("MALLOCSEG")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_MALLOCSEG")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$50

$C$DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x0c)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$69, DW_AT_name("base")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$70, DW_AT_name("length")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("space")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$52

$C$DW$T$139	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x10)
$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$72, DW_AT_name("size")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$73, DW_AT_name("used")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$74, DW_AT_name("length")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("space")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$53

$C$DW$T$140	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x08)
$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$76, DW_AT_name("next")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$77, DW_AT_name("size")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$55

$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x20)
$C$DW$T$141	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x08)
$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$78, DW_AT_name("next")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$79, DW_AT_name("prev")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$57

$C$DW$T$56	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$56, DW_AT_address_class(0x20)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Handle")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x04)
$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("dummy")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_dummy")
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$58

$C$DW$T$142	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x38)
$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$81, DW_AT_name("ready")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$82, DW_AT_name("alarm")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$83, DW_AT_name("setpri")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$84, DW_AT_name("queue")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$85, DW_AT_name("priority")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$86, DW_AT_name("mask")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$87, DW_AT_name("sp")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$88, DW_AT_name("timeout")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("mode")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$90, DW_AT_name("sts")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$91, DW_AT_name("signalled")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$63

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$T$143	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$143, DW_AT_address_class(0x20)
$C$DW$T$144	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Handle")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x30)
$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$92, DW_AT_name("alarm")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$93, DW_AT_name("setpri")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$94, DW_AT_name("queue")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$95, DW_AT_name("priority")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$96, DW_AT_name("mask")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$97, DW_AT_name("sp")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$98, DW_AT_name("timeout")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("mode")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$100, DW_AT_name("sts")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$101, DW_AT_name("signalled")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$64

$C$DW$T$145	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x10)
$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$102, DW_AT_name("wListElem")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("wCount")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$104, DW_AT_name("fxn")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$71

$C$DW$T$66	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x20)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$75	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x20)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$105, DW_AT_name("status")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$106, DW_AT_name("kount")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_kount")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$107, DW_AT_name("period")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_period")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$108, DW_AT_name("nticks")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_nticks")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$109, DW_AT_name("fxnobj")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$110, DW_AT_name("sts")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$146	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
$C$DW$T$147	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$147, DW_AT_address_class(0x20)
$C$DW$T$148	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Handle")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)

$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x0c)
$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$111, DW_AT_name("link")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$112, DW_AT_name("type")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$73

$C$DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x10)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$113, DW_AT_name("ABORTFXN")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_ABORTFXN")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$114, DW_AT_name("ERRORFXN")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_ERRORFXN")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$115, DW_AT_name("EXITFXN")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$116, DW_AT_name("PUTCFXN")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_PUTCFXN")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$74

$C$DW$T$150	.dwtag  DW_TAG_typedef, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
$C$DW$T$76	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$76, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$76, DW_AT_name("signed char")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x20)
$C$DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
$C$DW$T$151	.dwtag  DW_TAG_typedef, DW_AT_name("va_list")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
$C$DW$T$152	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
$C$DW$T$153	.dwtag  DW_TAG_typedef, DW_AT_name("Int8")
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)
$C$DW$T$154	.dwtag  DW_TAG_typedef, DW_AT_name("SmInt")
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)

$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x20)
$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$117, DW_AT_name("job")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("count")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$119, DW_AT_name("pendQ")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$120, DW_AT_name("name")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$79

$C$DW$T$93	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x20)
$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$155	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$155, DW_AT_language(DW_LANG_C)

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x08)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$121, DW_AT_name("type")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$122, DW_AT_name("name")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$80

$C$DW$T$156	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)

$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x20)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("STACKSEG")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_STACKSEG")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("PRIORITY")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_PRIORITY")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$125, DW_AT_name("STACKSIZE")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_STACKSIZE")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$126, DW_AT_name("CREATEFXN")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_CREATEFXN")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$127, DW_AT_name("DELETEFXN")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_DELETEFXN")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$128, DW_AT_name("EXITFXN")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$129, DW_AT_name("SWITCHFXN")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_SWITCHFXN")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$130, DW_AT_name("READYFXN")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_READYFXN")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$81

$C$DW$T$157	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x1c)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("priority")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$132, DW_AT_name("stack")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$133, DW_AT_name("stacksize")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("stackseg")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$135, DW_AT_name("environ")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$136, DW_AT_name("name")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$137, DW_AT_name("exitflag")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$138, DW_AT_name("initstackflag")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_initstackflag")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$82

$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x54)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$139, DW_AT_name("kobj")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_kobj")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$140, DW_AT_name("stack")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$141, DW_AT_name("stacksize")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("stackseg")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$143, DW_AT_name("name")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$144, DW_AT_name("environ")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("errno")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_errno")
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$146, DW_AT_name("exitflag")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$84

$C$DW$T$158	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)
$C$DW$T$159	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$159, DW_AT_address_class(0x20)
$C$DW$T$160	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Handle")
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$T$160, DW_AT_language(DW_LANG_C)

$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x28)
$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$147, DW_AT_name("attrs")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_attrs")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$148, DW_AT_name("mode")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$149, DW_AT_name("sp")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$150, DW_AT_name("used")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$87

$C$DW$T$161	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)

$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x10)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$151, DW_AT_name("seqnum")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$152, DW_AT_name("val1")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_val1")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$153, DW_AT_name("val2")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_val2")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$154, DW_AT_name("val3")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_val3")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$88

$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)

$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x18)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$155, DW_AT_name("bufend")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$156, DW_AT_name("flag")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$157, DW_AT_name("seqnum")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$158, DW_AT_name("curptr")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_curptr")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$159, DW_AT_name("lenmask")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_lenmask")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$160, DW_AT_name("bufbeg")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_bufbeg")
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$92

$C$DW$T$162	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$162, DW_AT_language(DW_LANG_C)
$C$DW$T$163	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$163, DW_AT_address_class(0x20)
$C$DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Handle")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
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
	.dwcfi	undefined, 10
	.dwcfi	undefined, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 15
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
	.dwcfi	undefined, 26
	.dwcfi	undefined, 27
	.dwcfi	undefined, 28
	.dwcfi	undefined, 29
	.dwcfi	undefined, 30
	.dwcfi	undefined, 31
	.dwcfi	undefined, 32
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

$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg0]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg1]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg2]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg3]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg4]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg5]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg6]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg7]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg8]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg9]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg10]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg11]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg12]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg13]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_reg14]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_reg15]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg16]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg17]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg18]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg19]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg20]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg21]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg22]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg23]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg24]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg25]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg26]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg27]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg28]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg29]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg30]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg31]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x20]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x21]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x22]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x23]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x24]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x25]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x26]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x27]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x28]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x29]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x30]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x31]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x32]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x33]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x34]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x35]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x36]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x37]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x38]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x39]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x40]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x41]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x42]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x43]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x44]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x45]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x46]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x47]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x48]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x49]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x50]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x51]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x52]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x53]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x54]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x55]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x56]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x57]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x58]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x59]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x60]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x61]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x62]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x63]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x64]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x65]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x66]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x67]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x68]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x69]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$270	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$270, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$271	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$271, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$272	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$272, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$273	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$273, DW_AT_location[DW_OP_regx 0x70]
$C$DW$274	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$274, DW_AT_location[DW_OP_regx 0x71]
$C$DW$275	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$275, DW_AT_location[DW_OP_regx 0x72]
$C$DW$276	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$276, DW_AT_location[DW_OP_regx 0x73]
$C$DW$277	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$277, DW_AT_location[DW_OP_regx 0x74]
$C$DW$278	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$278, DW_AT_location[DW_OP_regx 0x75]
$C$DW$279	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$279, DW_AT_location[DW_OP_regx 0x76]
$C$DW$280	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$280, DW_AT_location[DW_OP_regx 0x77]
$C$DW$281	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$281, DW_AT_location[DW_OP_regx 0x78]
$C$DW$282	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$282, DW_AT_location[DW_OP_regx 0x79]
$C$DW$283	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$283, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$284	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$284, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$285	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$285, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$286	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$286, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$287	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$287, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$288	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$288, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$289	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$289, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

