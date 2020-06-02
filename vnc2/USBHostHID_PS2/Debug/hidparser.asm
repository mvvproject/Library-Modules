.FILE "Debug\hidparser.c"

.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
eol	.DB	2	str@eol
str@eol	.ASCIIZ	"\r\n"
.GLOBAL	  DO_NOT_EXPORT "eol"
ItemSize	.DB	4	0, 1, 2, 4
.GLOBAL	  DO_NOT_EXPORT "ItemSize"
Str@0	.ASCIIZ	"GetReportOffset: FATAL ERROR- Report count is out of space "


.STRUCT	"_ReportID_t"	32
.STRUCTMEM	"ReportID_Offset"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"ReportID_Length"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_ReportID_t"

.STRUCT	"_HIDParser_t"	2048
.STRUCTMEM	"ReportDesc"	"char"	1024	0	0	0	1	1	0	
.STRUCTMEM	"ReportDescSize"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"Pos"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"Item"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Value"	"long"	32	1	0	0	0	0	0	
.STRUCTMEM	"pData"	"_HIDData_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"OffsetTab_ReportID"	"char"	80	0	0	0	1	1	0	
.STRUCTMEM	"OffsetTab_ReportType"	"char"	80	0	0	0	1	1	0	
.STRUCTMEM	"OffsetTab_DataOffset"	"char"	80	0	0	0	1	1	0	
.STRUCTMEM	"ReportCount"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"UPage"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"UsageTab"	"_HIDNode_t"	640	0	0	0	1	1	0	
.STRUCTMEM	"UsageSize"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"nObject"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"nReport"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_HIDParser_t"

.STRUCT	"_HIDData_t"	568
.STRUCTMEM	"Value"	"long"	32	1	0	0	0	0	0	
.STRUCTMEM	"Path_Size"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Path_Node"	"_HIDNode_t"	320	0	0	0	1	1	0	
.STRUCTMEM	"ReportID"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Offset"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Size"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Type"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Attribute"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Unit"	"long"	32	0	0	0	0	0	0	
.STRUCTMEM	"UnitExp"	"char"	8	1	0	0	0	0	0	
.STRUCTMEM	"LogMin"	"long"	32	1	0	0	0	0	0	
.STRUCTMEM	"LogMax"	"long"	32	1	0	0	0	0	0	
.STRUCTMEM	"PhyMin"	"long"	32	1	0	0	0	0	0	
.STRUCTMEM	"PhyMax"	"long"	32	1	0	0	0	0	0	
.STRUCT_END	"_HIDData_t"

.STRUCT	"_HIDNode_t"	32
.STRUCTMEM	"UPage"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"Usage"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_HIDNode_t"

.STRUCT	"_HIDPath_t"	328
.STRUCTMEM	"Size"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Node"	"_HIDNode_t"	320	0	0	0	1	1	0	
.STRUCT_END	"_HIDPath_t"

.VARIABLE	"eol"	16	"char"	1	1	-1	0	0	1	9	
.VARIABLE	"ItemSize"	32	"char"	1	0	-1	1	1	0	11	const
.TYPEDEF	"_HIDParser_t"	"HIDParser_t"
.TYPEDEF	"char"	"I8"
.TYPEDEF	"char"	"U8"
.TYPEDEF	"long"	"I32"
.TYPEDEF	"short"	"I16"
.TYPEDEF	"long"	"U32"
.TYPEDEF	"short"	"U16"
.TYPEDEF	"char"	"uchar"
.TYPEDEF	"short"	"wchar"
.TYPEDEF	"long"	"ulong"
.TYPEDEF	"short"	"addr_t"
.TYPEDEF	"char"	"u_char"
.TYPEDEF	"short"	"size_t"
.TYPEDEF	"short"	"ushort"
.TYPEDEF	"_HIDData_t"	"HIDData_t"
.TYPEDEF	"_HIDNode_t"	"HIDNode_t"
.TYPEDEF	"_HIDPath_t"	"HIDPath_t"
.TYPEDEF	"_ReportID_t"	"ReportID_t"
.FUNCTION	"number"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	8	
.FUNC_END	"number"

.FUNCTION	"memset"	extern
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"dstptr"	16 "void"	0	1	0	0	0	1	24	
.PARAMETER	"value"	32 "int"	1	0	0	0	0	0	24	
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	24	
.FUNC_END	"memset"

.FUNCTION	"memcpy"	extern
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"destination"	16 "void"	0	1	0	0	0	1	23	
.PARAMETER	"source"	16 "void"	0	1	0	0	0	1	23	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	23	
.FUNC_END	"memcpy"

.FUNCTION	"strcat"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	29	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	29	const
.FUNC_END	"strcat"

.FUNCTION	"strlen"	extern
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"str"	16 "char"	1	1	0	0	0	1	30	const
.FUNC_END	"strlen"

.FUNCTION	"strcmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	25	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	25	const
.FUNC_END	"strcmp"

.FUNCTION	"strcpy"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	27	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	27	const
.FUNC_END	"strcpy"

.FUNCTION	"message"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"msg"	16 "char"	1	1	0	0	0	1	7	
.FUNC_END	"message"

.FUNCTION	"strncmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"strncmp"

.FUNCTION	"strncpy"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	28	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	28	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	28	
.FUNC_END	"strncpy"

.FUNCTION	"SetValue"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	0	0	0	1	39	const
.PARAMETER	"Buf"	16 "char"	0	1	0	0	0	1	39	
.FUNC_END	"SetValue"

.FUNCTION	"FindObject"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	27	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	0	0	0	1	27	
.FUNC_END	"FindObject"



.TEXT


.WEAK	"number"

.WEAK	"memset"

.WEAK	"memcpy"

.WEAK	"strcat"

.WEAK	"strlen"

.WEAK	"strcmp"

.WEAK	"strcpy"

.WEAK	"message"

.WEAK	"strncmp"

.WEAK	"strncpy"

.WEAK	"SetValue"

.WEAK	"FindObject"

.LINE	13
ResetParser:	
.GLOBAL	 DO_NOT_EXPORT  "ResetParser"

.VARIABLE	"pParser_Data"	16	"_HIDData_t"	0	1	8	0	0	1	15	
.FUNCTION	"ResetParser"	
.RETURN "void"	0	0	0	91	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	91	0	0	1	13	
SP_DEC	$88
.LINE	16
SP_STORE	%ecx
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$2
SP_RD16	%eax	$0
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$4
SP_STORE	%eax
ADD16	%eax	$2
LD16	%ebx	$137
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$6
SP_RD16	%eax	$4
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$6
SP_WR16	%ecx	$8
.LINE	18
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$12
SP_RD16	%eax	$10
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$12
LD16	%ebx	$130
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$14
LD16	(%ecx)	$0
.LINE	19
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$18
SP_RD16	%eax	$16
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$18
LD16	%ebx	$170
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$20
LD8	(%ecx)	$0
.LINE	20
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$24
SP_RD16	%eax	$22
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$24
LD16	%ebx	$254
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$26
LD8	(%ecx)	$0
.LINE	21
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
SP_RD16	%eax	$28
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$30
LD16	%ebx	$255
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$32
LD8	(%ecx)	$0
.LINE	23
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$36
SP_RD16	%eax	$34
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$36
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$38
LD8	(%ecx)	$0
.LINE	24
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$42
SP_RD16	%eax	$40
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$42
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
PUSH16	$80
PUSH32	$0
SP_RD16	%eax	$50
PUSH16	%eax
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$54
SP_INC	$8
.LINE	26
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$50
SP_RD16	%eax	$48
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$50
LD16	%ebx	$139
ADD16	(%ecx)	(%eax)	%ebx
PUSH16	$10
PUSH32	$0
SP_RD16	%eax	$58
PUSH16	%eax
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$62
SP_INC	$8
.LINE	27
SP_STORE	%ecx
ADD16	%ecx	$56
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$58
SP_RD16	%eax	$56
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$58
LD16	%ebx	$149
ADD16	(%ecx)	(%eax)	%ebx
PUSH16	$10
PUSH32	$0
SP_RD16	%eax	$66
PUSH16	%eax
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$70
SP_INC	$8
.LINE	28
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$66
SP_RD16	%eax	$64
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$66
LD16	%ebx	$159
ADD16	(%ecx)	(%eax)	%ebx
PUSH16	$10
PUSH32	$0
SP_RD16	%eax	$74
PUSH16	%eax
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$78
SP_INC	$8
.LINE	29
SP_STORE	%ecx
ADD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$91
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$74
SP_RD16	%eax	$72
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$76
SP_STORE	%eax
ADD16	%eax	$74
LD16	%ebx	$137
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$78
SP_RD16	%eax	$76
CPY16	(%ecx)	(%eax)
PUSH16	$71
PUSH32	$0
SP_RD16	%eax	$84
PUSH16	%eax
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$88
SP_INC	$8
.LINE	30
SP_STORE	%ecx
ADD16	%ecx	$82
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$84
SP_RD16	%eax	$82
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$86
SP_STORE	%eax
ADD16	%eax	$84
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$86
LD8	(%ecx)	$1
.LINE	30
SP_INC	$88
RTS	
.FUNC_END	"ResetParser"

.LINE	35
ResetLocalState:	
.LOCAL	"ResetLocalState"

.FUNCTION	"ResetLocalState"	
.RETURN "void"	0	0	0	17	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	17	0	0	1	35	
SP_DEC	$14
.LINE	37
SP_STORE	%ecx
SP_STORE	%eax
ADD16	%eax	$17
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$2
SP_RD16	%eax	$0
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$4
SP_STORE	%eax
ADD16	%eax	$2
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$4
LD8	(%ecx)	$0
.LINE	38
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$17
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$8
SP_RD16	%eax	$6
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
PUSH16	$80
PUSH32	$0
SP_RD16	%eax	$16
PUSH16	%eax
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$20
SP_INC	$8
.LINE	38
SP_INC	$14
RTS	
.FUNC_END	"ResetLocalState"

.LINE	43
GetReportOffset:	
.GLOBAL	 DO_NOT_EXPORT  "GetReportOffset"

.VARIABLE	"Pos"	16	"short"	1	0	0	0	0	0	45	
.FUNCTION	"GetReportOffset"	
.RETURN "char"	16	0	1	130	0	0	1	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	132	0	0	1	41	
.PARAMETER	"ReportID"	8 "char"	0	0	134	0	0	0	42	const
.PARAMETER	"ReportType"	8 "char"	0	0	135	0	0	0	43	const
SP_DEC	$127
.LINE	46
LD16	%ecx	$0
SP_WR16	%ecx	$0
@IC1:	
.LINE	47
SP_STORE	%ecx
CMP16	(%ecx)	$10
JLT	@IC4
JUMP	@IC2
@IC4:	
SP_STORE	%ecx
ADD16	%ecx	$2
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$4
SP_RD16	%eax	$2
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$4
LD16	%ebx	$139
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$8
SP_RD16	%eax	$0
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$6
SP_STORE	%ebx
ADD16	%ebx	$8
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$14
SP_RD16	%eax	$12
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$14
CMP8	%ecx	$0
JNZ	@IC3
JZ	@IC2
@IC3:	
.LINE	49
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_RD16	%eax	$15
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$17
LD16	%ebx	$139
ADD16	(%ecx)	(%eax)	%ebx
.LINE	50
SP_STORE	%ecx
ADD16	%ecx	$21
SP_RD16	%eax	$0
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$25
SP_STORE	%eax
ADD16	%eax	$19
SP_STORE	%ebx
ADD16	%ebx	$21
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$27
SP_RD16	%eax	$25
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$134
CMP8	(%ecx)	(%eax)
JZ	@IC11
JNZ	@IC9
@IC11:	
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
SP_RD16	%eax	$28
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$30
LD16	%ebx	$149
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$34
SP_RD16	%eax	$0
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$32
SP_STORE	%ebx
ADD16	%ebx	$34
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$40
SP_RD16	%eax	$38
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$135
CMP8	(%ecx)	(%eax)
JZ	@IC10
JNZ	@IC9
@IC10:	
.LINE	59
SP_STORE	%ecx
ADD16	%ecx	$41
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$43
SP_RD16	%eax	$41
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$45
SP_STORE	%eax
ADD16	%eax	$43
LD16	%ebx	$159
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$47
SP_RD16	%eax	$0
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$51
SP_STORE	%eax
ADD16	%eax	$45
SP_STORE	%ebx
ADD16	%ebx	$47
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%eax	$51
SP_WR16	%eax	$130
SP_INC	$127
RTS	
@IC9:	
.LINE	61
SP_RD16	%ecx	$0
SP_WR16	%ecx	$53
SP_STORE	%eax
ADD16	%eax	$0
INC16	(%eax)	$1
.LINE	47
JUMP	@IC1
@IC2:	
.LINE	63
SP_STORE	%ecx
CMP16	(%ecx)	$10
JLT	@IC17
JUMP	@IC16
@IC17:	
.LINE	73
SP_STORE	%ecx
ADD16	%ecx	$55
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$57
SP_RD16	%eax	$55
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$59
SP_STORE	%eax
ADD16	%eax	$57
LD16	%ebx	$255
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$61
SP_RD16	%eax	$59
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$62
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$64
SP_RD16	%eax	$62
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$66
SP_STORE	%eax
ADD16	%eax	$64
LD16	%ebx	$255
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$68
SP_RD16	%eax	$66
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$68
INC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$69
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$71
SP_RD16	%eax	$69
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$73
SP_STORE	%eax
ADD16	%eax	$71
LD16	%ebx	$255
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$73
SP_STORE	%eax
ADD16	%eax	$68
CPY8	(%ecx)	(%eax)
.LINE	74
SP_STORE	%ecx
ADD16	%ecx	$75
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$77
SP_RD16	%eax	$75
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$79
SP_STORE	%eax
ADD16	%eax	$77
LD16	%ebx	$139
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$81
SP_RD16	%eax	$0
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$79
SP_STORE	%ebx
ADD16	%ebx	$81
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$134
CPY8	(%ecx)	(%eax)
.LINE	75
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$89
SP_RD16	%eax	$87
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$89
LD16	%ebx	$149
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$93
SP_RD16	%eax	$0
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$97
SP_STORE	%eax
ADD16	%eax	$91
SP_STORE	%ebx
ADD16	%ebx	$93
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$97
SP_STORE	%eax
ADD16	%eax	$135
CPY8	(%ecx)	(%eax)
.LINE	76
SP_STORE	%ecx
ADD16	%ecx	$99
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$101
SP_RD16	%eax	$99
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$103
SP_STORE	%eax
ADD16	%eax	$101
LD16	%ebx	$159
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$105
SP_RD16	%eax	$0
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$109
SP_STORE	%eax
ADD16	%eax	$103
SP_STORE	%ebx
ADD16	%ebx	$105
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$109
LD8	(%ecx)	$0
.LINE	78
SP_STORE	%ecx
ADD16	%ecx	$111
SP_STORE	%eax
ADD16	%eax	$132
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$113
SP_RD16	%eax	$111
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$115
SP_STORE	%eax
ADD16	%eax	$113
LD16	%ebx	$159
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$117
SP_RD16	%eax	$0
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$121
SP_STORE	%eax
ADD16	%eax	$115
SP_STORE	%ebx
ADD16	%ebx	$117
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%eax	$121
SP_WR16	%eax	$130
SP_INC	$127
RTS	
@IC16:	
.LINE	81
SP_STORE	%ecx
ADD16	%ecx	$123
LD32	(%ecx)	$Str@0
SP_RD16	%eax	$123
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	82
PUSH16	eol
CALL	message
SP_INC	$2
@IC20:	
.LINE	83
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC22
JUMP	@IC21
@IC22:	
JUMP	@IC20
@IC21:	
.LINE	84
LD16	%eax	$0
SP_WR16	%eax	$130
SP_INC	$127
RTS	
.FUNC_END	"GetReportOffset"

.LINE	88
FormatValue:	
.GLOBAL	 DO_NOT_EXPORT  "FormatValue"

.FUNCTION	"FormatValue"	
.RETURN "long"	32	1	0	14	0	0	0	
.PARAMETER	"Value"	32 "long"	1	0	18	0	0	0	88	
.PARAMETER	"Size"	8 "char"	0	0	22	0	0	0	88	
SP_DEC	$11
.LINE	90
SP_RD8	%ecx	$22
CMP8	%ecx	$1
JZ	@IC25
JNZ	@IC24
@IC25:	
.LINE	91
SP_RD8	%ecx	$18
SP_WR8	%ecx	$0
SP_STORE	%ecx
ADD16	%ecx	$1
SP_RD8	%eax	$0
SHL32	%eax	$24
SAR32	%eax	$24
CPY32	(%ecx)	%eax
SP_RD32	%ecx	$1
SP_WR32	%ecx	$18
JUMP	@IC23
@IC24:	
.LINE	92
SP_RD8	%ecx	$22
CMP8	%ecx	$2
JZ	@IC29
JNZ	@IC28
@IC29:	
.LINE	93
SP_RD16	%ecx	$18
SP_WR16	%ecx	$5
SP_STORE	%ecx
ADD16	%ecx	$7
SP_RD16	%eax	$5
SHL32	%eax	$16
SAR32	%eax	$16
CPY32	(%ecx)	%eax
SP_RD32	%ecx	$7
SP_WR32	%ecx	$18
@IC28:	
@IC23:	
.LINE	94
SP_STORE	%eax
ADD16	%eax	$18
SP_STORE	%ecx
ADD16	%ecx	$14
CPY32	(%ecx)	(%eax)
SP_INC	$11
RTS	
.FUNC_END	"FormatValue"

.LINE	99
HIDParse:	
.GLOBAL	 DO_NOT_EXPORT  "HIDParse"

.VARIABLE	"pParser_Data"	16	"_HIDData_t"	0	1	8	0	0	1	102	
.VARIABLE	"Found"	32	"int"	1	0	10	0	0	0	101	
.VARIABLE	"ii"	8	"char"	0	0	415	0	0	0	157	
.VARIABLE	"ii"	8	"char"	0	0	802	0	0	0	211	
.VARIABLE	"pPosTST"	16	"char"	0	1	985	0	0	1	104	
.FUNCTION	"HIDParse"	
.RETURN "int"	32	1	0	1343	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	1347	0	0	1	99	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	1349	0	0	1	99	
SP_DEC	$255
SP_DEC	$255
SP_DEC	$255
SP_DEC	$255
SP_DEC	$255
SP_DEC	$65
.LINE	106
SP_STORE	%ecx
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$2
SP_RD16	%eax	$0
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$4
SP_STORE	%eax
ADD16	%eax	$2
LD16	%ebx	$137
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$6
SP_RD16	%eax	$4
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$6
SP_WR16	%ecx	$8
.LINE	108
LD32	%ecx	$0
SP_WR32	%ecx	$10
@IC32:	
.LINE	110
SP_STORE	%ecx
ADD16	%ecx	$10
CMP32	(%ecx)	$0
JNZ	@IC33
JUMP	@IC35
@IC35:	
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$16
SP_RD16	%eax	$14
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$16
LD16	%ebx	$130
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$20
SP_RD16	%eax	$18
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$24
SP_RD16	%eax	$22
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$24
LD16	%ebx	$128
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$28
SP_RD16	%eax	$26
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$28
CMP16	(%ecx)	(%eax)
JLT	@IC34
JUMP	@IC33
@IC34:	
.LINE	113
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$32
SP_RD16	%eax	$30
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$32
LD16	%ebx	$170
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$36
SP_RD16	%eax	$34
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$36
CMP8	%ecx	$0
JZ	@IC39
JNZ	@IC38
@IC39:	
.LINE	115
SP_STORE	%ecx
ADD16	%ecx	$37
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$39
SP_RD16	%eax	$37
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$41
SP_STORE	%eax
ADD16	%eax	$39
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$43
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$45
SP_RD16	%eax	$43
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$47
SP_STORE	%eax
ADD16	%eax	$45
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$51
SP_RD16	%eax	$49
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$53
SP_STORE	%eax
ADD16	%eax	$51
LD16	%ebx	$130
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$55
SP_RD16	%eax	$53
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$57
SP_RD16	%eax	$55
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$61
SP_STORE	%eax
ADD16	%eax	$47
SP_STORE	%ebx
ADD16	%ebx	$57
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$63
SP_RD16	%eax	$61
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$66
SP_RD16	%eax	$64
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$66
LD16	%ebx	$130
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$70
SP_RD16	%eax	$68
CPY16	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$70
INC16	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$72
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$74
SP_RD16	%eax	$72
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$76
SP_STORE	%eax
ADD16	%eax	$74
LD16	%ebx	$130
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$76
SP_STORE	%eax
ADD16	%eax	$70
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$41
SP_STORE	%eax
ADD16	%eax	$63
CPY8	(%ecx)	(%eax)
.LINE	116
SP_STORE	%ecx
ADD16	%ecx	$78
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$80
SP_RD16	%eax	$78
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$82
SP_STORE	%eax
ADD16	%eax	$80
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$82
LD32	(%ecx)	$0
.LINE	117
SP_STORE	%ecx
ADD16	%ecx	$84
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$86
SP_RD16	%eax	$84
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$88
SP_STORE	%eax
ADD16	%eax	$86
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$90
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$92
SP_RD16	%eax	$90
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$94
SP_STORE	%eax
ADD16	%eax	$92
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$96
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$98
SP_RD16	%eax	$96
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$100
SP_STORE	%eax
ADD16	%eax	$98
LD16	%ebx	$130
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$102
SP_RD16	%eax	$100
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$104
SP_RD16	%eax	$102
AND32	%eax	$65535
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$108
SP_STORE	%eax
ADD16	%eax	$94
SP_STORE	%ebx
ADD16	%ebx	$104
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$110
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$112
SP_RD16	%eax	$110
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$114
SP_STORE	%eax
ADD16	%eax	$112
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$116
SP_RD16	%eax	$114
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$117
SP_RD8	%eax	$116
AND32	%eax	$255
LD32	%ebx	$3
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$121
SP_STORE	%eax
ADD16	%eax	$117
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$125
LD16	(%ecx)	$ItemSize
SP_STORE	%ecx
ADD16	%ecx	$127
SP_STORE	%eax
ADD16	%eax	$125
SP_STORE	%ebx
ADD16	%ebx	$121
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$129
SP_RD16	%eax	$127
CPY8	(%ecx)	(%eax)
SP_RD8	%eax	$129
AND16	%eax	$255
PUSH16	%eax
SP_RD16	%eax	$110
PUSH16	%eax
SP_RD16	%eax	$92
PUSH16	%eax
SP_DEC	$2
CALL	memcpy
POP16	%eax
SP_WR16	%eax	$136
SP_INC	$6
.LINE	119
SP_STORE	%ecx
ADD16	%ecx	$132
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$134
SP_RD16	%eax	$132
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$136
SP_STORE	%eax
ADD16	%eax	$134
LD16	%ebx	$130
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$138
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$140
SP_RD16	%eax	$138
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$142
SP_STORE	%eax
ADD16	%eax	$140
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$144
SP_RD16	%eax	$142
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$145
SP_RD8	%eax	$144
AND32	%eax	$255
LD32	%ebx	$3
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$149
SP_STORE	%eax
ADD16	%eax	$145
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$153
LD16	(%ecx)	$ItemSize
SP_STORE	%ecx
ADD16	%ecx	$155
SP_STORE	%eax
ADD16	%eax	$153
SP_STORE	%ebx
ADD16	%ebx	$149
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$157
SP_RD16	%eax	$155
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$158
SP_RD16	%eax	$136
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$160
SP_STORE	%eax
ADD16	%eax	$158
SP_RD8	%ebx	$157
SHL16	%ebx	$8
SAR16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$136
SP_STORE	%eax
ADD16	%eax	$160
CPY16	(%ecx)	(%eax)
@IC38:	
.LINE	122
JUMP	@IC44
@IC43:	
.LINE	127
SP_STORE	%ecx
ADD16	%ecx	$162
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$164
SP_RD16	%eax	$162
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$166
SP_STORE	%eax
ADD16	%eax	$164
LD16	%ebx	$171
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$168
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$170
SP_RD16	%eax	$168
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$172
SP_STORE	%eax
ADD16	%eax	$170
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$174
SP_RD16	%eax	$172
CPY32	(%ecx)	(%eax)
SP_RD16	%ecx	$174
SP_WR16	%ecx	$178
SP_RD16	%ecx	$166
SP_STORE	%eax
ADD16	%eax	$178
CPY16	(%ecx)	(%eax)
.LINE	128
JUMP	@IC42
@IC45:	
.LINE	133
SP_STORE	%ecx
ADD16	%ecx	$180
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$182
SP_RD16	%eax	$180
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$184
SP_STORE	%eax
ADD16	%eax	$182
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$186
SP_RD16	%eax	$184
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$187
SP_RD8	%eax	$186
AND32	%eax	$255
LD32	%ebx	$3
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$187
CMP32	(%ecx)	$2
JGT	@IC79
JUMP	@IC78
@IC79:	
.LINE	134
SP_STORE	%ecx
ADD16	%ecx	$191
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$193
SP_RD16	%eax	$191
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$195
SP_STORE	%eax
ADD16	%eax	$193
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$197
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$199
SP_RD16	%eax	$197
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$201
SP_STORE	%eax
ADD16	%eax	$199
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$203
SP_RD16	%eax	$201
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$204
SP_RD8	%eax	$203
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$208
SP_STORE	%eax
ADD16	%eax	$195
SP_STORE	%ebx
ADD16	%ebx	$204
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$210
SP_STORE	%eax
ADD16	%eax	$208
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$212
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$214
SP_RD16	%eax	$212
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$216
SP_STORE	%eax
ADD16	%eax	$214
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$218
SP_RD16	%eax	$216
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$222
SP_STORE	%eax
ADD16	%eax	$218
LD32	%ebx	$16
SAR32	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$222
SP_WR16	%ecx	$226
SP_RD16	%ecx	$210
SP_STORE	%eax
ADD16	%eax	$226
CPY16	(%ecx)	(%eax)
JUMP	@IC77
@IC78:	
.LINE	136
SP_STORE	%ecx
ADD16	%ecx	$228
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$230
SP_RD16	%eax	$228
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$232
SP_STORE	%eax
ADD16	%eax	$230
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$234
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$236
SP_RD16	%eax	$234
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$238
SP_STORE	%eax
ADD16	%eax	$236
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$240
SP_RD16	%eax	$238
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$241
SP_RD8	%eax	$240
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$245
SP_STORE	%eax
ADD16	%eax	$232
SP_STORE	%ebx
ADD16	%ebx	$241
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$247
SP_STORE	%eax
ADD16	%eax	$245
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$249
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$251
SP_RD16	%eax	$249
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$253
SP_STORE	%eax
ADD16	%eax	$251
LD16	%ebx	$171
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$255
SP_RD16	%eax	$253
CPY16	(%ecx)	(%eax)
SP_RD16	%ecx	$247
SP_STORE	%eax
ADD16	%eax	$255
CPY16	(%ecx)	(%eax)
@IC77:	
.LINE	139
SP_STORE	%ecx
ADD16	%ecx	$257
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$259
SP_STORE	%eax
ADD16	%eax	$257
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$261
SP_STORE	%eax
ADD16	%eax	$259
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$263
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$265
SP_STORE	%eax
ADD16	%eax	$263
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$267
SP_STORE	%eax
ADD16	%eax	$265
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$269
SP_STORE	%eax
ADD16	%eax	$267
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$270
SP_STORE	%eax
ADD16	%eax	$269
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$274
SP_STORE	%eax
ADD16	%eax	$261
SP_STORE	%ebx
ADD16	%ebx	$270
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$276
SP_STORE	%eax
ADD16	%eax	$274
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$278
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$280
SP_STORE	%eax
ADD16	%eax	$278
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$282
SP_STORE	%eax
ADD16	%eax	$280
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$284
SP_STORE	%eax
ADD16	%eax	$282
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$288
SP_STORE	%eax
ADD16	%eax	$284
LD32	%ebx	$65535
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$292
SP_STORE	%eax
ADD16	%eax	$288
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$276
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$292
CPY16	(%ecx)	(%eax)
.LINE	142
SP_STORE	%ecx
ADD16	%ecx	$294
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$296
SP_STORE	%eax
ADD16	%eax	$294
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$298
SP_STORE	%eax
ADD16	%eax	$296
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$300
SP_STORE	%eax
ADD16	%eax	$298
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$301
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$303
SP_STORE	%eax
ADD16	%eax	$301
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$305
SP_STORE	%eax
ADD16	%eax	$303
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$307
SP_STORE	%eax
ADD16	%eax	$305
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$307
INC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$308
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$310
SP_STORE	%eax
ADD16	%eax	$308
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$312
SP_STORE	%eax
ADD16	%eax	$310
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$312
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$307
CPY8	(%ecx)	(%eax)
.LINE	144
JUMP	@IC42
@IC47:	
.LINE	150
SP_STORE	%ecx
ADD16	%ecx	$314
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$316
SP_STORE	%eax
ADD16	%eax	$314
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$318
SP_STORE	%eax
ADD16	%eax	$316
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$320
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$322
SP_STORE	%eax
ADD16	%eax	$320
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$324
SP_STORE	%eax
ADD16	%eax	$322
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$326
SP_STORE	%eax
ADD16	%eax	$324
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$327
SP_STORE	%eax
ADD16	%eax	$326
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$331
SP_STORE	%eax
ADD16	%eax	$318
SP_STORE	%ebx
ADD16	%ebx	$327
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$333
SP_STORE	%eax
ADD16	%eax	$331
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$335
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$337
SP_STORE	%eax
ADD16	%eax	$335
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$339
SP_STORE	%eax
ADD16	%eax	$337
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$341
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$345
SP_STORE	%eax
ADD16	%eax	$339
SP_STORE	%ebx
ADD16	%ebx	$341
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$347
SP_STORE	%eax
ADD16	%eax	$345
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$349
SP_STORE	%eax
ADD16	%eax	$347
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$333
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$349
CPY16	(%ecx)	(%eax)
.LINE	151
SP_STORE	%ecx
ADD16	%ecx	$351
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$353
SP_STORE	%eax
ADD16	%eax	$351
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$355
SP_STORE	%eax
ADD16	%eax	$353
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$357
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$359
SP_STORE	%eax
ADD16	%eax	$357
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$361
SP_STORE	%eax
ADD16	%eax	$359
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$363
SP_STORE	%eax
ADD16	%eax	$361
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$364
SP_STORE	%eax
ADD16	%eax	$363
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$368
SP_STORE	%eax
ADD16	%eax	$355
SP_STORE	%ebx
ADD16	%ebx	$364
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$370
SP_STORE	%eax
ADD16	%eax	$368
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$372
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$374
SP_STORE	%eax
ADD16	%eax	$372
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$376
SP_STORE	%eax
ADD16	%eax	$374
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$378
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$382
SP_STORE	%eax
ADD16	%eax	$376
SP_STORE	%ebx
ADD16	%ebx	$378
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$384
SP_STORE	%eax
ADD16	%eax	$382
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$386
SP_STORE	%eax
ADD16	%eax	$384
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$370
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$386
CPY16	(%ecx)	(%eax)
.LINE	152
SP_STORE	%ecx
ADD16	%ecx	$388
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$390
SP_STORE	%eax
ADD16	%eax	$388
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$392
SP_STORE	%eax
ADD16	%eax	$390
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$394
SP_STORE	%eax
ADD16	%eax	$392
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$395
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$397
SP_STORE	%eax
ADD16	%eax	$395
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$399
SP_STORE	%eax
ADD16	%eax	$397
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$401
SP_STORE	%eax
ADD16	%eax	$399
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$401
INC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$402
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$404
SP_STORE	%eax
ADD16	%eax	$402
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$406
SP_STORE	%eax
ADD16	%eax	$404
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$406
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$401
CPY8	(%ecx)	(%eax)
.LINE	155
SP_STORE	%ecx
ADD16	%ecx	$408
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$410
SP_STORE	%eax
ADD16	%eax	$408
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$412
SP_STORE	%eax
ADD16	%eax	$410
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$414
SP_STORE	%eax
ADD16	%eax	$412
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$414
CMP8	(%ecx)	$0
JGT	@IC83
JUMP	@IC82
@IC83:	
.LINE	157
SP_STORE	%ecx
ADD16	%ecx	$415
LD8	(%ecx)	$0
@IC86:	
.LINE	158
SP_STORE	%ecx
ADD16	%ecx	$416
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$418
SP_STORE	%eax
ADD16	%eax	$416
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$420
SP_STORE	%eax
ADD16	%eax	$418
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$422
SP_STORE	%eax
ADD16	%eax	$420
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$415
SP_STORE	%eax
ADD16	%eax	$422
CMP8	(%ecx)	(%eax)
JLT	@IC88
JUMP	@IC87
@IC88:	
.LINE	160
SP_STORE	%ecx
ADD16	%ecx	$423
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$425
SP_STORE	%eax
ADD16	%eax	$423
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$427
SP_STORE	%eax
ADD16	%eax	$425
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$429
SP_STORE	%eax
ADD16	%eax	$415
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$433
SP_STORE	%eax
ADD16	%eax	$427
SP_STORE	%ebx
ADD16	%ebx	$429
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$435
SP_STORE	%eax
ADD16	%eax	$433
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$437
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$439
SP_STORE	%eax
ADD16	%eax	$437
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$441
SP_STORE	%eax
ADD16	%eax	$439
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$443
SP_STORE	%eax
ADD16	%eax	$415
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
ADD32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$447
SP_STORE	%eax
ADD16	%eax	$443
LD32	%ebx	$4
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$451
SP_STORE	%eax
ADD16	%eax	$441
SP_STORE	%ebx
ADD16	%ebx	$447
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$453
SP_STORE	%eax
ADD16	%eax	$451
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$455
SP_STORE	%eax
ADD16	%eax	$453
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$435
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$455
CPY16	(%ecx)	(%eax)
.LINE	161
SP_STORE	%ecx
ADD16	%ecx	$457
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$459
SP_STORE	%eax
ADD16	%eax	$457
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$461
SP_STORE	%eax
ADD16	%eax	$459
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$463
SP_STORE	%eax
ADD16	%eax	$415
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$467
SP_STORE	%eax
ADD16	%eax	$461
SP_STORE	%ebx
ADD16	%ebx	$463
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$469
SP_STORE	%eax
ADD16	%eax	$467
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$471
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$473
SP_STORE	%eax
ADD16	%eax	$471
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$475
SP_STORE	%eax
ADD16	%eax	$473
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$477
SP_STORE	%eax
ADD16	%eax	$415
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
ADD32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$481
SP_STORE	%eax
ADD16	%eax	$477
LD32	%ebx	$4
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$485
SP_STORE	%eax
ADD16	%eax	$475
SP_STORE	%ebx
ADD16	%ebx	$481
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$487
SP_STORE	%eax
ADD16	%eax	$485
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$489
SP_STORE	%eax
ADD16	%eax	$487
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$469
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$489
CPY16	(%ecx)	(%eax)
.LINE	162
SP_STORE	%ecx
ADD16	%ecx	$491
SP_STORE	%eax
ADD16	%eax	$415
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$415
INC8	(%eax)	$1
.LINE	158
JUMP	@IC86
@IC87:	
.LINE	165
SP_STORE	%ecx
ADD16	%ecx	$492
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$494
SP_STORE	%eax
ADD16	%eax	$492
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$496
SP_STORE	%eax
ADD16	%eax	$494
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$498
SP_STORE	%eax
ADD16	%eax	$496
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$499
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$501
SP_STORE	%eax
ADD16	%eax	$499
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$503
SP_STORE	%eax
ADD16	%eax	$501
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$505
SP_STORE	%eax
ADD16	%eax	$503
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$505
DEC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$506
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$508
SP_STORE	%eax
ADD16	%eax	$506
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$510
SP_STORE	%eax
ADD16	%eax	$508
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$510
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$505
CPY8	(%ecx)	(%eax)
@IC82:	
.LINE	169
SP_STORE	%ecx
ADD16	%ecx	$512
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$514
SP_STORE	%eax
ADD16	%eax	$512
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$516
SP_STORE	%eax
ADD16	%eax	$514
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$518
SP_STORE	%eax
ADD16	%eax	$516
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$518
CMP32	(%ecx)	$128
JGES	@IC92
JUMP	@IC91
@IC92:	
.LINE	171
SP_STORE	%ecx
ADD16	%ecx	$522
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$524
SP_STORE	%eax
ADD16	%eax	$522
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$526
SP_STORE	%eax
ADD16	%eax	$524
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$528
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$530
SP_STORE	%eax
ADD16	%eax	$528
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$532
SP_STORE	%eax
ADD16	%eax	$530
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$534
SP_STORE	%eax
ADD16	%eax	$532
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$535
SP_STORE	%eax
ADD16	%eax	$534
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$539
SP_STORE	%eax
ADD16	%eax	$526
SP_STORE	%ebx
ADD16	%ebx	$535
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$541
SP_STORE	%eax
ADD16	%eax	$539
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$541
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$255
.LINE	172
SP_STORE	%ecx
ADD16	%ecx	$543
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$545
SP_STORE	%eax
ADD16	%eax	$543
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$547
SP_STORE	%eax
ADD16	%eax	$545
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$549
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$551
SP_STORE	%eax
ADD16	%eax	$549
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$553
SP_STORE	%eax
ADD16	%eax	$551
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$555
SP_STORE	%eax
ADD16	%eax	$553
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$556
SP_STORE	%eax
ADD16	%eax	$555
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$560
SP_STORE	%eax
ADD16	%eax	$547
SP_STORE	%ebx
ADD16	%ebx	$556
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$562
SP_STORE	%eax
ADD16	%eax	$560
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$564
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$566
SP_STORE	%eax
ADD16	%eax	$564
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$568
SP_STORE	%eax
ADD16	%eax	$566
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$570
SP_STORE	%eax
ADD16	%eax	$568
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$574
SP_STORE	%eax
ADD16	%eax	$570
LD32	%ebx	$127
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$562
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$574
CPY16	(%ecx)	(%eax)
.LINE	173
SP_STORE	%ecx
ADD16	%ecx	$578
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$580
SP_STORE	%eax
ADD16	%eax	$578
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$582
SP_STORE	%eax
ADD16	%eax	$580
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$584
SP_STORE	%eax
ADD16	%eax	$582
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$585
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$587
SP_STORE	%eax
ADD16	%eax	$585
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$589
SP_STORE	%eax
ADD16	%eax	$587
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$591
SP_STORE	%eax
ADD16	%eax	$589
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$591
INC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$592
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$594
SP_STORE	%eax
ADD16	%eax	$592
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$596
SP_STORE	%eax
ADD16	%eax	$594
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$596
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$591
CPY8	(%ecx)	(%eax)
@IC91:	
.LINE	175
SP_STORE	%eax
ADD16	%eax	$1347
PUSH16	(%eax)
CALL	ResetLocalState
SP_INC	$2
.LINE	176
JUMP	@IC42
@IC49:	
.LINE	180
SP_STORE	%ecx
ADD16	%ecx	$598
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$600
SP_STORE	%eax
ADD16	%eax	$598
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$602
SP_STORE	%eax
ADD16	%eax	$600
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$604
SP_STORE	%eax
ADD16	%eax	$602
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$605
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$607
SP_STORE	%eax
ADD16	%eax	$605
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$609
SP_STORE	%eax
ADD16	%eax	$607
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$611
SP_STORE	%eax
ADD16	%eax	$609
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$611
DEC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$612
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$614
SP_STORE	%eax
ADD16	%eax	$612
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$616
SP_STORE	%eax
ADD16	%eax	$614
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$616
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$611
CPY8	(%ecx)	(%eax)
.LINE	182
SP_STORE	%ecx
ADD16	%ecx	$618
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$620
SP_STORE	%eax
ADD16	%eax	$618
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$622
SP_STORE	%eax
ADD16	%eax	$620
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$624
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$626
SP_STORE	%eax
ADD16	%eax	$624
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$628
SP_STORE	%eax
ADD16	%eax	$626
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$630
SP_STORE	%eax
ADD16	%eax	$628
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$631
SP_STORE	%eax
ADD16	%eax	$630
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$635
SP_STORE	%eax
ADD16	%eax	$622
SP_STORE	%ebx
ADD16	%ebx	$631
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$637
SP_STORE	%eax
ADD16	%eax	$635
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$639
SP_STORE	%eax
ADD16	%eax	$637
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$639
CMP16	(%ecx)	$255
JZ	@IC96
JNZ	@IC95
@IC96:	
.LINE	183
SP_STORE	%ecx
ADD16	%ecx	$641
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$643
SP_STORE	%eax
ADD16	%eax	$641
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$645
SP_STORE	%eax
ADD16	%eax	$643
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$647
SP_STORE	%eax
ADD16	%eax	$645
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$648
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$650
SP_STORE	%eax
ADD16	%eax	$648
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$652
SP_STORE	%eax
ADD16	%eax	$650
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$654
SP_STORE	%eax
ADD16	%eax	$652
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$654
DEC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$655
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$657
SP_STORE	%eax
ADD16	%eax	$655
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$659
SP_STORE	%eax
ADD16	%eax	$657
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$659
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$654
CPY8	(%ecx)	(%eax)
@IC95:	
.LINE	184
SP_STORE	%eax
ADD16	%eax	$1347
PUSH16	(%eax)
CALL	ResetLocalState
SP_INC	$2
.LINE	185
JUMP	@IC42
@IC51:	
@IC53:	
@IC55:	
.LINE	192
LD32	%ecx	$1
SP_WR32	%ecx	$10
.LINE	195
SP_STORE	%ecx
ADD16	%ecx	$661
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$663
SP_STORE	%eax
ADD16	%eax	$661
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$665
SP_STORE	%eax
ADD16	%eax	$663
LD16	%ebx	$254
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$667
SP_STORE	%eax
ADD16	%eax	$665
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$668
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$670
SP_STORE	%eax
ADD16	%eax	$668
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$672
SP_STORE	%eax
ADD16	%eax	$670
LD16	%ebx	$254
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$674
SP_STORE	%eax
ADD16	%eax	$672
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$674
INC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$675
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$677
SP_STORE	%eax
ADD16	%eax	$675
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$679
SP_STORE	%eax
ADD16	%eax	$677
LD16	%ebx	$254
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$679
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$674
CPY8	(%ecx)	(%eax)
.LINE	198
SP_STORE	%ecx
ADD16	%ecx	$681
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$683
SP_STORE	%eax
ADD16	%eax	$681
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$685
SP_STORE	%eax
ADD16	%eax	$683
LD16	%ebx	$170
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$687
SP_STORE	%eax
ADD16	%eax	$685
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$687
CMP8	(%ecx)	$0
JZ	@IC100
JNZ	@IC99
@IC100:	
.LINE	200
SP_STORE	%ecx
ADD16	%ecx	$688
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$690
SP_STORE	%eax
ADD16	%eax	$688
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$692
SP_STORE	%eax
ADD16	%eax	$690
LD16	%ebx	$170
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$694
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$696
SP_STORE	%eax
ADD16	%eax	$694
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$698
SP_STORE	%eax
ADD16	%eax	$696
LD16	%ebx	$169
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$700
SP_STORE	%eax
ADD16	%eax	$698
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$692
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$700
CPY8	(%ecx)	(%eax)
@IC99:	
.LINE	204
SP_STORE	%ecx
ADD16	%ecx	$701
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$703
SP_STORE	%eax
ADD16	%eax	$701
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$705
SP_STORE	%eax
ADD16	%eax	$703
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$707
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$709
SP_STORE	%eax
ADD16	%eax	$707
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$711
SP_STORE	%eax
ADD16	%eax	$709
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$713
SP_STORE	%eax
ADD16	%eax	$711
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$714
SP_STORE	%eax
ADD16	%eax	$713
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$718
SP_STORE	%eax
ADD16	%eax	$705
SP_STORE	%ebx
ADD16	%ebx	$714
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$720
SP_STORE	%eax
ADD16	%eax	$718
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$722
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$724
SP_STORE	%eax
ADD16	%eax	$722
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$726
SP_STORE	%eax
ADD16	%eax	$724
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$728
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$732
SP_STORE	%eax
ADD16	%eax	$726
SP_STORE	%ebx
ADD16	%ebx	$728
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$734
SP_STORE	%eax
ADD16	%eax	$732
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$736
SP_STORE	%eax
ADD16	%eax	$734
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$720
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$736
CPY16	(%ecx)	(%eax)
.LINE	205
SP_STORE	%ecx
ADD16	%ecx	$738
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$740
SP_STORE	%eax
ADD16	%eax	$738
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$742
SP_STORE	%eax
ADD16	%eax	$740
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$744
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$746
SP_STORE	%eax
ADD16	%eax	$744
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$748
SP_STORE	%eax
ADD16	%eax	$746
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$750
SP_STORE	%eax
ADD16	%eax	$748
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$751
SP_STORE	%eax
ADD16	%eax	$750
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$755
SP_STORE	%eax
ADD16	%eax	$742
SP_STORE	%ebx
ADD16	%ebx	$751
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$757
SP_STORE	%eax
ADD16	%eax	$755
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$759
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$761
SP_STORE	%eax
ADD16	%eax	$759
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$763
SP_STORE	%eax
ADD16	%eax	$761
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$765
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$769
SP_STORE	%eax
ADD16	%eax	$763
SP_STORE	%ebx
ADD16	%ebx	$765
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$771
SP_STORE	%eax
ADD16	%eax	$769
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$773
SP_STORE	%eax
ADD16	%eax	$771
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$757
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$773
CPY16	(%ecx)	(%eax)
.LINE	206
SP_STORE	%ecx
ADD16	%ecx	$775
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$777
SP_STORE	%eax
ADD16	%eax	$775
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$779
SP_STORE	%eax
ADD16	%eax	$777
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$781
SP_STORE	%eax
ADD16	%eax	$779
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$782
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$784
SP_STORE	%eax
ADD16	%eax	$782
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$786
SP_STORE	%eax
ADD16	%eax	$784
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$788
SP_STORE	%eax
ADD16	%eax	$786
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$788
INC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$789
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$791
SP_STORE	%eax
ADD16	%eax	$789
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$793
SP_STORE	%eax
ADD16	%eax	$791
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$793
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$788
CPY8	(%ecx)	(%eax)
.LINE	209
SP_STORE	%ecx
ADD16	%ecx	$795
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$797
SP_STORE	%eax
ADD16	%eax	$795
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$799
SP_STORE	%eax
ADD16	%eax	$797
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$801
SP_STORE	%eax
ADD16	%eax	$799
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$801
CMP8	(%ecx)	$0
JGT	@IC104
JUMP	@IC103
@IC104:	
.LINE	211
SP_STORE	%ecx
ADD16	%ecx	$802
LD8	(%ecx)	$0
@IC107:	
.LINE	212
SP_STORE	%ecx
ADD16	%ecx	$803
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$805
SP_STORE	%eax
ADD16	%eax	$803
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$807
SP_STORE	%eax
ADD16	%eax	$805
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$809
SP_STORE	%eax
ADD16	%eax	$807
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$802
SP_STORE	%eax
ADD16	%eax	$809
CMP8	(%ecx)	(%eax)
JLT	@IC109
JUMP	@IC108
@IC109:	
.LINE	214
SP_STORE	%ecx
ADD16	%ecx	$810
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$812
SP_STORE	%eax
ADD16	%eax	$810
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$814
SP_STORE	%eax
ADD16	%eax	$812
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$816
SP_STORE	%eax
ADD16	%eax	$802
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$820
SP_STORE	%eax
ADD16	%eax	$814
SP_STORE	%ebx
ADD16	%ebx	$816
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$822
SP_STORE	%eax
ADD16	%eax	$820
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$824
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$826
SP_STORE	%eax
ADD16	%eax	$824
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$828
SP_STORE	%eax
ADD16	%eax	$826
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$830
SP_STORE	%eax
ADD16	%eax	$802
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
ADD32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$834
SP_STORE	%eax
ADD16	%eax	$830
LD32	%ebx	$4
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$838
SP_STORE	%eax
ADD16	%eax	$828
SP_STORE	%ebx
ADD16	%ebx	$834
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$840
SP_STORE	%eax
ADD16	%eax	$838
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$842
SP_STORE	%eax
ADD16	%eax	$840
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$822
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$842
CPY16	(%ecx)	(%eax)
.LINE	215
SP_STORE	%ecx
ADD16	%ecx	$844
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$846
SP_STORE	%eax
ADD16	%eax	$844
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$848
SP_STORE	%eax
ADD16	%eax	$846
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$850
SP_STORE	%eax
ADD16	%eax	$802
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$854
SP_STORE	%eax
ADD16	%eax	$848
SP_STORE	%ebx
ADD16	%ebx	$850
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$856
SP_STORE	%eax
ADD16	%eax	$854
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$858
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$860
SP_STORE	%eax
ADD16	%eax	$858
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$862
SP_STORE	%eax
ADD16	%eax	$860
LD16	%ebx	$173
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$864
SP_STORE	%eax
ADD16	%eax	$802
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
ADD32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$868
SP_STORE	%eax
ADD16	%eax	$864
LD32	%ebx	$4
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$872
SP_STORE	%eax
ADD16	%eax	$862
SP_STORE	%ebx
ADD16	%ebx	$868
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$874
SP_STORE	%eax
ADD16	%eax	$872
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$876
SP_STORE	%eax
ADD16	%eax	$874
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$856
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$876
CPY16	(%ecx)	(%eax)
.LINE	216
SP_STORE	%ecx
ADD16	%ecx	$878
SP_STORE	%eax
ADD16	%eax	$802
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$802
INC8	(%eax)	$1
.LINE	212
JUMP	@IC107
@IC108:	
.LINE	219
SP_STORE	%ecx
ADD16	%ecx	$879
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$881
SP_STORE	%eax
ADD16	%eax	$879
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$883
SP_STORE	%eax
ADD16	%eax	$881
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$885
SP_STORE	%eax
ADD16	%eax	$883
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$886
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$888
SP_STORE	%eax
ADD16	%eax	$886
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$890
SP_STORE	%eax
ADD16	%eax	$888
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$892
SP_STORE	%eax
ADD16	%eax	$890
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$892
DEC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$893
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$895
SP_STORE	%eax
ADD16	%eax	$893
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$897
SP_STORE	%eax
ADD16	%eax	$895
LD16	%ebx	$253
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$897
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$892
CPY8	(%ecx)	(%eax)
@IC103:	
.LINE	223
SP_STORE	%ecx
ADD16	%ecx	$899
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$901
SP_STORE	%eax
ADD16	%eax	$899
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$903
SP_STORE	%eax
ADD16	%eax	$901
LD16	%ebx	$48
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$905
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$907
SP_STORE	%eax
ADD16	%eax	$905
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$909
SP_STORE	%eax
ADD16	%eax	$907
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$911
SP_STORE	%eax
ADD16	%eax	$909
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$912
SP_STORE	%eax
ADD16	%eax	$911
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$252
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$916
SP_STORE	%eax
ADD16	%eax	$912
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$903
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$916
CPY8	(%ecx)	(%eax)
.LINE	226
SP_STORE	%ecx
ADD16	%ecx	$917
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$919
SP_STORE	%eax
ADD16	%eax	$917
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$921
SP_STORE	%eax
ADD16	%eax	$919
LD16	%ebx	$49
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$923
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$925
SP_STORE	%eax
ADD16	%eax	$923
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$927
SP_STORE	%eax
ADD16	%eax	$925
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$929
SP_STORE	%eax
ADD16	%eax	$927
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$933
SP_STORE	%eax
ADD16	%eax	$929
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$921
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$933
CPY8	(%ecx)	(%eax)
.LINE	229
SP_STORE	%ecx
ADD16	%ecx	$934
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$936
SP_STORE	%eax
ADD16	%eax	$934
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$938
SP_STORE	%eax
ADD16	%eax	$936
LD16	%ebx	$46
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$940
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$942
SP_STORE	%eax
ADD16	%eax	$940
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$944
SP_STORE	%eax
ADD16	%eax	$942
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$946
SP_STORE	%eax
ADD16	%eax	$944
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$947
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$949
SP_STORE	%eax
ADD16	%eax	$947
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$951
SP_STORE	%eax
ADD16	%eax	$949
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$953
SP_STORE	%eax
ADD16	%eax	$951
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$954
SP_STORE	%eax
ADD16	%eax	$953
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$252
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$958
SP_STORE	%eax
ADD16	%eax	$954
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$958
PUSH8	(%eax)
SP_STORE	%eax
ADD16	%eax	$947
PUSH8	(%eax)
SP_STORE	%eax
ADD16	%eax	$1349
PUSH16	(%eax)
SP_DEC	$2
CALL	GetReportOffset
SP_STORE	%eax
ADD16	%eax	$965
POP16	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$961
SP_STORE	%eax
ADD16	%eax	$959
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$938
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$961
CPY8	(%ecx)	(%eax)
.LINE	233
PUSH16	$71
SP_RD16	%eax	$10
PUSH16	%eax
SP_STORE	%eax
ADD16	%eax	$1353
PUSH16	(%eax)
SP_DEC	$2
CALL	memcpy
SP_STORE	%eax
ADD16	%eax	$970
POP16	(%eax)
SP_INC	$6
.LINE	237
SP_STORE	%ecx
ADD16	%ecx	$964
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$966
SP_STORE	%eax
ADD16	%eax	$964
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$968
SP_STORE	%eax
ADD16	%eax	$966
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$970
SP_STORE	%eax
ADD16	%eax	$968
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$971
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$973
SP_STORE	%eax
ADD16	%eax	$971
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$975
SP_STORE	%eax
ADD16	%eax	$973
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$977
SP_STORE	%eax
ADD16	%eax	$975
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$978
SP_STORE	%eax
ADD16	%eax	$977
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$252
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$982
SP_STORE	%eax
ADD16	%eax	$978
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$982
PUSH8	(%eax)
SP_STORE	%eax
ADD16	%eax	$971
PUSH8	(%eax)
SP_STORE	%eax
ADD16	%eax	$1349
PUSH16	(%eax)
SP_DEC	$2
CALL	GetReportOffset
SP_STORE	%eax
ADD16	%eax	$989
POP16	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$985
SP_STORE	%eax
ADD16	%eax	$983
CPY16	(%ecx)	(%eax)
.LINE	238
SP_STORE	%ecx
ADD16	%ecx	$987
SP_STORE	%eax
ADD16	%eax	$985
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$989
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$991
SP_STORE	%eax
ADD16	%eax	$989
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$993
SP_STORE	%eax
ADD16	%eax	$991
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$995
SP_STORE	%eax
ADD16	%eax	$993
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$996
SP_STORE	%eax
ADD16	%eax	$987
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$997
SP_STORE	%eax
ADD16	%eax	$996
SP_STORE	%ebx
ADD16	%ebx	$995
ADD8	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$987
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$997
CPY8	(%ecx)	(%eax)
.LINE	249
SP_STORE	%ecx
ADD16	%ecx	$998
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1000
SP_STORE	%eax
ADD16	%eax	$998
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1002
SP_STORE	%eax
ADD16	%eax	$1000
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1004
SP_STORE	%eax
ADD16	%eax	$1002
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1005
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1007
SP_STORE	%eax
ADD16	%eax	$1005
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1009
SP_STORE	%eax
ADD16	%eax	$1007
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1011
SP_STORE	%eax
ADD16	%eax	$1009
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1011
DEC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$1012
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1014
SP_STORE	%eax
ADD16	%eax	$1012
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1016
SP_STORE	%eax
ADD16	%eax	$1014
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1016
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1011
CPY8	(%ecx)	(%eax)
.LINE	252
SP_STORE	%ecx
ADD16	%ecx	$1018
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1020
SP_STORE	%eax
ADD16	%eax	$1018
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1022
SP_STORE	%eax
ADD16	%eax	$1020
LD16	%ebx	$170
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1024
SP_STORE	%eax
ADD16	%eax	$1022
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1025
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1027
SP_STORE	%eax
ADD16	%eax	$1025
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1029
SP_STORE	%eax
ADD16	%eax	$1027
LD16	%ebx	$170
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1031
SP_STORE	%eax
ADD16	%eax	$1029
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1031
DEC8	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$1032
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1034
SP_STORE	%eax
ADD16	%eax	$1032
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1036
SP_STORE	%eax
ADD16	%eax	$1034
LD16	%ebx	$170
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1036
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1031
CPY8	(%ecx)	(%eax)
.LINE	253
SP_STORE	%ecx
ADD16	%ecx	$1038
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1040
SP_STORE	%eax
ADD16	%eax	$1038
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1042
SP_STORE	%eax
ADD16	%eax	$1040
LD16	%ebx	$170
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1044
SP_STORE	%eax
ADD16	%eax	$1042
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1044
CMP8	(%ecx)	$0
JZ	@IC113
JNZ	@IC112
@IC113:	
.LINE	254
SP_STORE	%eax
ADD16	%eax	$1347
PUSH16	(%eax)
CALL	ResetLocalState
SP_INC	$2
@IC112:	
.LINE	256
JUMP	@IC42
@IC57:	
.LINE	260
SP_STORE	%ecx
ADD16	%ecx	$1045
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1047
SP_STORE	%eax
ADD16	%eax	$1045
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1049
SP_STORE	%eax
ADD16	%eax	$1047
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1051
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1053
SP_STORE	%eax
ADD16	%eax	$1051
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1055
SP_STORE	%eax
ADD16	%eax	$1053
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1057
SP_STORE	%eax
ADD16	%eax	$1055
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1061
SP_STORE	%eax
ADD16	%eax	$1057
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1049
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1061
CPY8	(%ecx)	(%eax)
.LINE	261
JUMP	@IC42
@IC59:	
.LINE	265
SP_STORE	%ecx
ADD16	%ecx	$1062
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1064
SP_STORE	%eax
ADD16	%eax	$1062
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1066
SP_STORE	%eax
ADD16	%eax	$1064
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1068
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1070
SP_STORE	%eax
ADD16	%eax	$1068
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1072
SP_STORE	%eax
ADD16	%eax	$1070
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1074
SP_STORE	%eax
ADD16	%eax	$1072
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1078
SP_STORE	%eax
ADD16	%eax	$1074
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1066
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1078
CPY8	(%ecx)	(%eax)
.LINE	266
JUMP	@IC42
@IC61:	
.LINE	270
SP_STORE	%ecx
ADD16	%ecx	$1079
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1081
SP_STORE	%eax
ADD16	%eax	$1079
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1083
SP_STORE	%eax
ADD16	%eax	$1081
LD16	%ebx	$169
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1085
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1087
SP_STORE	%eax
ADD16	%eax	$1085
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1089
SP_STORE	%eax
ADD16	%eax	$1087
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1091
SP_STORE	%eax
ADD16	%eax	$1089
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1095
SP_STORE	%eax
ADD16	%eax	$1091
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1083
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1095
CPY8	(%ecx)	(%eax)
.LINE	271
JUMP	@IC42
@IC63:	
.LINE	275
SP_STORE	%ecx
ADD16	%ecx	$1096
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1098
SP_STORE	%eax
ADD16	%eax	$1096
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1100
SP_STORE	%eax
ADD16	%eax	$1098
LD16	%ebx	$54
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1102
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1104
SP_STORE	%eax
ADD16	%eax	$1102
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1106
SP_STORE	%eax
ADD16	%eax	$1104
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1108
SP_STORE	%eax
ADD16	%eax	$1106
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1112
SP_STORE	%eax
ADD16	%eax	$1108
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1100
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1112
CPY8	(%ecx)	(%eax)
.LINE	277
SP_STORE	%ecx
ADD16	%ecx	$1113
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1115
SP_STORE	%eax
ADD16	%eax	$1113
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1117
SP_STORE	%eax
ADD16	%eax	$1115
LD16	%ebx	$54
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1119
SP_STORE	%eax
ADD16	%eax	$1117
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1119
CMP8	(%ecx)	$7
JGTS	@IC117
JUMP	@IC116
@IC117:	
.LINE	278
SP_STORE	%ecx
ADD16	%ecx	$1120
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1122
SP_STORE	%eax
ADD16	%eax	$1120
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1124
SP_STORE	%eax
ADD16	%eax	$1122
LD16	%ebx	$54
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1126
SP_STORE	%eax
ADD16	%eax	$1124
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1127
SP_STORE	%eax
ADD16	%eax	$1126
LD8	%ebx	$240
OR8	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1124
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1127
CPY8	(%ecx)	(%eax)
@IC116:	
.LINE	279
JUMP	@IC42
@IC65:	
.LINE	283
SP_STORE	%ecx
ADD16	%ecx	$1128
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1130
SP_STORE	%eax
ADD16	%eax	$1128
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1132
SP_STORE	%eax
ADD16	%eax	$1130
LD16	%ebx	$50
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1134
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1136
SP_STORE	%eax
ADD16	%eax	$1134
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1138
SP_STORE	%eax
ADD16	%eax	$1136
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1140
SP_STORE	%eax
ADD16	%eax	$1138
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1132
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1140
CPY32	(%ecx)	(%eax)
.LINE	284
JUMP	@IC42
@IC67:	
.LINE	288
SP_STORE	%ecx
ADD16	%ecx	$1144
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1146
SP_STORE	%eax
ADD16	%eax	$1144
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1148
SP_STORE	%eax
ADD16	%eax	$1146
LD16	%ebx	$55
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1150
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1152
SP_STORE	%eax
ADD16	%eax	$1150
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1154
SP_STORE	%eax
ADD16	%eax	$1152
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1156
SP_STORE	%eax
ADD16	%eax	$1154
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1160
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1162
SP_STORE	%eax
ADD16	%eax	$1160
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1164
SP_STORE	%eax
ADD16	%eax	$1162
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1166
SP_STORE	%eax
ADD16	%eax	$1164
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1167
SP_STORE	%eax
ADD16	%eax	$1166
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$3
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1171
SP_STORE	%eax
ADD16	%eax	$1167
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1175
LD16	(%ecx)	$ItemSize
SP_STORE	%ecx
ADD16	%ecx	$1177
SP_STORE	%eax
ADD16	%eax	$1175
SP_STORE	%ebx
ADD16	%ebx	$1171
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1179
SP_STORE	%eax
ADD16	%eax	$1177
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1179
PUSH8	(%eax)
SP_STORE	%eax
ADD16	%eax	$1157
PUSH32	(%eax)
SP_DEC	$4
CALL	FormatValue
SP_STORE	%eax
ADD16	%eax	$1189
POP32	(%eax)
SP_INC	$5
SP_STORE	%ecx
ADD16	%ecx	$1148
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1180
CPY32	(%ecx)	(%eax)
.LINE	289
JUMP	@IC42
@IC69:	
.LINE	293
SP_STORE	%ecx
ADD16	%ecx	$1184
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1186
SP_STORE	%eax
ADD16	%eax	$1184
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1188
SP_STORE	%eax
ADD16	%eax	$1186
LD16	%ebx	$59
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1190
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1192
SP_STORE	%eax
ADD16	%eax	$1190
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1194
SP_STORE	%eax
ADD16	%eax	$1192
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1196
SP_STORE	%eax
ADD16	%eax	$1194
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1200
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1202
SP_STORE	%eax
ADD16	%eax	$1200
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1204
SP_STORE	%eax
ADD16	%eax	$1202
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1206
SP_STORE	%eax
ADD16	%eax	$1204
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1207
SP_STORE	%eax
ADD16	%eax	$1206
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$3
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1211
SP_STORE	%eax
ADD16	%eax	$1207
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1215
LD16	(%ecx)	$ItemSize
SP_STORE	%ecx
ADD16	%ecx	$1217
SP_STORE	%eax
ADD16	%eax	$1215
SP_STORE	%ebx
ADD16	%ebx	$1211
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1219
SP_STORE	%eax
ADD16	%eax	$1217
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1219
PUSH8	(%eax)
SP_STORE	%eax
ADD16	%eax	$1197
PUSH32	(%eax)
SP_DEC	$4
CALL	FormatValue
SP_STORE	%eax
ADD16	%eax	$1229
POP32	(%eax)
SP_INC	$5
SP_STORE	%ecx
ADD16	%ecx	$1188
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1220
CPY32	(%ecx)	(%eax)
.LINE	294
JUMP	@IC42
@IC71:	
.LINE	298
SP_STORE	%ecx
ADD16	%ecx	$1224
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1226
SP_STORE	%eax
ADD16	%eax	$1224
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1228
SP_STORE	%eax
ADD16	%eax	$1226
LD16	%ebx	$63
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1230
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1232
SP_STORE	%eax
ADD16	%eax	$1230
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1234
SP_STORE	%eax
ADD16	%eax	$1232
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1236
SP_STORE	%eax
ADD16	%eax	$1234
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1240
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1242
SP_STORE	%eax
ADD16	%eax	$1240
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1244
SP_STORE	%eax
ADD16	%eax	$1242
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1246
SP_STORE	%eax
ADD16	%eax	$1244
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1247
SP_STORE	%eax
ADD16	%eax	$1246
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$3
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1251
SP_STORE	%eax
ADD16	%eax	$1247
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1255
LD16	(%ecx)	$ItemSize
SP_STORE	%ecx
ADD16	%ecx	$1257
SP_STORE	%eax
ADD16	%eax	$1255
SP_STORE	%ebx
ADD16	%ebx	$1251
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1259
SP_STORE	%eax
ADD16	%eax	$1257
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1259
PUSH8	(%eax)
SP_STORE	%eax
ADD16	%eax	$1237
PUSH32	(%eax)
SP_DEC	$4
CALL	FormatValue
SP_STORE	%eax
ADD16	%eax	$1269
POP32	(%eax)
SP_INC	$5
SP_STORE	%ecx
ADD16	%ecx	$1228
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1260
CPY32	(%ecx)	(%eax)
.LINE	299
JUMP	@IC42
@IC73:	
.LINE	303
SP_STORE	%ecx
ADD16	%ecx	$1264
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1266
SP_STORE	%eax
ADD16	%eax	$1264
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1268
SP_STORE	%eax
ADD16	%eax	$1266
LD16	%ebx	$67
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1270
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1272
SP_STORE	%eax
ADD16	%eax	$1270
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1274
SP_STORE	%eax
ADD16	%eax	$1272
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1276
SP_STORE	%eax
ADD16	%eax	$1274
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1280
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1282
SP_STORE	%eax
ADD16	%eax	$1280
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1284
SP_STORE	%eax
ADD16	%eax	$1282
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1286
SP_STORE	%eax
ADD16	%eax	$1284
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1287
SP_STORE	%eax
ADD16	%eax	$1286
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$3
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1291
SP_STORE	%eax
ADD16	%eax	$1287
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1295
LD16	(%ecx)	$ItemSize
SP_STORE	%ecx
ADD16	%ecx	$1297
SP_STORE	%eax
ADD16	%eax	$1295
SP_STORE	%ebx
ADD16	%ebx	$1291
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1299
SP_STORE	%eax
ADD16	%eax	$1297
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1299
PUSH8	(%eax)
SP_STORE	%eax
ADD16	%eax	$1277
PUSH32	(%eax)
SP_DEC	$4
CALL	FormatValue
SP_STORE	%eax
ADD16	%eax	$1309
POP32	(%eax)
SP_INC	$5
SP_STORE	%ecx
ADD16	%ecx	$1268
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1300
CPY32	(%ecx)	(%eax)
.LINE	304
JUMP	@IC42
@IC75:	
.LINE	309
SP_STORE	%ecx
ADD16	%ecx	$1304
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1306
SP_STORE	%eax
ADD16	%eax	$1304
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1308
SP_STORE	%eax
ADD16	%eax	$1306
LD16	%ebx	$130
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1310
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1312
SP_STORE	%eax
ADD16	%eax	$1310
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1314
SP_STORE	%eax
ADD16	%eax	$1312
LD16	%ebx	$133
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1316
SP_STORE	%eax
ADD16	%eax	$1314
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1320
SP_STORE	%eax
ADD16	%eax	$1316
LD32	%ebx	$255
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1324
SP_STORE	%eax
ADD16	%eax	$1320
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1325
SP_STORE	%eax
ADD16	%eax	$1308
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1327
SP_STORE	%eax
ADD16	%eax	$1325
SP_STORE	%ebx
ADD16	%ebx	$1324
CPY8	%ebx	(%ebx)
AND16	%ebx	$255
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1308
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1327
CPY16	(%ecx)	(%eax)
.LINE	122
JUMP	@IC42
@IC44:	
SP_STORE	%ecx
ADD16	%ecx	$1329
SP_STORE	%eax
ADD16	%eax	$1347
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1331
SP_STORE	%eax
ADD16	%eax	$1329
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1333
SP_STORE	%eax
ADD16	%eax	$1331
LD16	%ebx	$132
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1335
SP_STORE	%eax
ADD16	%eax	$1333
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1336
SP_STORE	%eax
ADD16	%eax	$1335
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$252
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$4
JZ	@IC43
@IC46:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$8
JZ	@IC45
@IC48:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$160
JZ	@IC47
@IC50:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$192
JZ	@IC49
@IC52:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$176
JZ	@IC51
@IC54:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$128
JZ	@IC53
@IC56:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$144
JZ	@IC55
@IC58:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$132
JZ	@IC57
@IC60:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$116
JZ	@IC59
@IC62:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$148
JZ	@IC61
@IC64:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$84
JZ	@IC63
@IC66:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$100
JZ	@IC65
@IC68:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$20
JZ	@IC67
@IC70:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$36
JZ	@IC69
@IC72:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$52
JZ	@IC71
@IC74:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$68
JZ	@IC73
@IC76:	
SP_STORE	%ecx
ADD16	%ecx	$1336
CMP32	(%ecx)	$252
JZ	@IC75
@IC42:	
.LINE	110
JUMP	@IC32
@IC33:	
.LINE	313
SP_STORE	%eax
ADD16	%eax	$10
SP_STORE	%ecx
ADD16	%ecx	$1343
CPY32	(%ecx)	(%eax)
SP_INC	$255
SP_INC	$255
SP_INC	$255
SP_INC	$255
SP_INC	$255
SP_INC	$65
RTS	
.FUNC_END	"HIDParse"

.LINE	316
GetValue:	
.GLOBAL	 DO_NOT_EXPORT  "GetValue"

.VARIABLE	"Bit"	16	"short"	0	0	7	0	0	0	319	
.VARIABLE	"Weight"	16	"short"	0	0	9	0	0	0	320	
.VARIABLE	"ValueSIZE"	8	"char"	0	0	18	0	0	0	325	
.VARIABLE	"pReportID_tb"	16	"_ReportID_t"	0	1	25	0	0	1	321	
.VARIABLE	"ID"	32	"int"	1	0	34	0	0	0	322	
.VARIABLE	"State"	32	"int"	1	0	83	0	0	0	342	
.VARIABLE	"Value"	32	"int"	1	0	119	0	0	0	324	
.FUNCTION	"GetValue"	
.RETURN "void"	0	0	0	126	0	0	0	
.PARAMETER	"Buf"	16 "char"	0	1	126	0	0	1	316	const
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	128	0	0	1	316	
.PARAMETER	"pReportID_tbl"	16 "_ReportID_t"	0	1	130	0	0	1	316	
SP_DEC	$123
.LINE	319
SP_STORE	%ecx
SP_STORE	%eax
ADD16	%eax	$128
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$2
SP_RD16	%eax	$0
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$4
SP_STORE	%eax
ADD16	%eax	$2
LD16	%ebx	$46
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$6
SP_RD16	%eax	$4
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$7
SP_RD8	%eax	$6
AND16	%eax	$255
CPY16	(%ecx)	%eax
.LINE	320
LD16	%ecx	$0
SP_WR16	%ecx	$9
.LINE	328
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$128
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_RD16	%eax	$11
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$13
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$17
SP_RD16	%eax	$15
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$17
SP_WR8	%ecx	$18
.LINE	330
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$128
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$21
SP_RD16	%eax	$19
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$23
SP_STORE	%eax
ADD16	%eax	$21
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$23
LD32	(%ecx)	$0
.LINE	331
SP_RD16	%ecx	$130
SP_WR16	%ecx	$25
.LINE	334
SP_STORE	%ecx
ADD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$128
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$29
SP_RD16	%eax	$27
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$29
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$33
SP_RD16	%eax	$31
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$34
SP_RD8	%eax	$33
AND32	%eax	$255
CPY32	(%ecx)	%eax
.LINE	337
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$34
LD32	%ebx	$4
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$25
SP_STORE	%ebx
ADD16	%ebx	$38
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$44
SP_STORE	%eax
ADD16	%eax	$42
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$46
SP_RD16	%eax	$44
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$7
SP_STORE	%ebx
ADD16	%ebx	$46
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$48
SP_WR16	%ecx	$7
@IC120:	
.LINE	340
SP_STORE	%ecx
ADD16	%ecx	$50
SP_STORE	%eax
ADD16	%eax	$128
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$52
SP_RD16	%eax	$50
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$54
SP_STORE	%eax
ADD16	%eax	$52
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$56
SP_RD16	%eax	$54
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$9
SP_RD8	%eax	$56
SHL16	%eax	$8
SHR16	%eax	$8
CMP16	(%ecx)	%eax
JLT	@IC122
JUMP	@IC121
@IC122:	
.LINE	342
SP_STORE	%ecx
ADD16	%ecx	$57
SP_RD16	%eax	$7
AND32	%eax	$65535
LD32	%ebx	$3
SHR32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$61
SP_STORE	%eax
ADD16	%eax	$57
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$65
SP_STORE	%eax
ADD16	%eax	$126
SP_STORE	%ebx
ADD16	%ebx	$61
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$67
SP_RD16	%eax	$65
CPY8	%eax	(%eax)
AND32	%eax	$255
CPY32	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$71
SP_RD16	%eax	$7
AND32	%eax	$65535
LD32	%ebx	$8
REM32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$75
SP_STORE	%ebx
ADD16	%ebx	$71
LD32	%eax	$1
SHL32	(%ecx)	%eax	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$79
SP_STORE	%eax
ADD16	%eax	$67
SP_STORE	%ebx
ADD16	%ebx	$75
AND32	(%ecx)	(%eax)	(%ebx)
SP_RD32	%ecx	$79
SP_WR32	%ecx	$83
.LINE	343
SP_STORE	%ecx
ADD16	%ecx	$83
CMP32	(%ecx)	$0
JNZ	@IC126
JUMP	@IC125
@IC126:	
.LINE	345
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$128
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$89
SP_RD16	%eax	$87
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$89
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$93
SP_RD16	%ebx	$9
AND32	%ebx	$65535
LD32	%eax	$1
SHL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$97
SP_RD16	%eax	$91
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$101
SP_STORE	%eax
ADD16	%eax	$97
SP_STORE	%ebx
ADD16	%ebx	$93
ADD32	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$101
CPY32	(%ecx)	(%eax)
@IC125:	
.LINE	347
SP_RD16	%ecx	$9
SP_WR16	%ecx	$105
SP_STORE	%eax
ADD16	%eax	$9
INC16	(%eax)	$1
.LINE	348
SP_RD16	%ecx	$7
SP_WR16	%ecx	$107
SP_STORE	%eax
ADD16	%eax	$7
INC16	(%eax)	$1
.LINE	340
JUMP	@IC120
@IC121:	
.LINE	351
SP_STORE	%ecx
ADD16	%ecx	$109
SP_STORE	%eax
ADD16	%eax	$128
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$111
SP_RD16	%eax	$109
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$113
SP_STORE	%eax
ADD16	%eax	$111
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$115
SP_RD16	%eax	$113
CPY32	(%ecx)	(%eax)
SP_RD32	%ecx	$115
SP_WR32	%ecx	$119
.LINE	351
SP_INC	$123
RTS	
.FUNC_END	"GetValue"

.LINE	359
GetValueXY:	
.GLOBAL	 DO_NOT_EXPORT  "GetValueXY"

.VARIABLE	"Bit"	32	"int"	1	0	7	0	0	0	362	
.VARIABLE	"Weight"	32	"int"	1	0	11	0	0	0	363	
.VARIABLE	"ValueSIZE"	8	"char"	0	0	22	0	0	0	368	
.VARIABLE	"pReportID_tb"	16	"_ReportID_t"	0	1	29	0	0	1	364	
.VARIABLE	"ID"	32	"int"	1	0	38	0	0	0	365	
.VARIABLE	"State"	32	"int"	1	0	89	0	0	0	385	
.VARIABLE	"Value"	32	"int"	1	0	129	0	0	0	367	
.VARIABLE	"Sift"	8	"char"	0	0	151	0	0	0	369	
.FUNCTION	"GetValueXY"	
.RETURN "void"	0	0	0	198	0	0	0	
.PARAMETER	"Buf"	16 "char"	0	1	198	0	0	1	359	const
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	200	0	0	1	359	
.PARAMETER	"pReportID_tbl"	16 "_ReportID_t"	0	1	202	0	0	1	359	
SP_DEC	$195
.LINE	362
SP_STORE	%ecx
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$2
SP_RD16	%eax	$0
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$4
SP_STORE	%eax
ADD16	%eax	$2
LD16	%ebx	$46
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$6
SP_RD16	%eax	$4
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$7
SP_RD8	%eax	$6
AND32	%eax	$255
CPY32	(%ecx)	%eax
.LINE	363
LD32	%ecx	$0
SP_WR32	%ecx	$11
.LINE	372
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_RD16	%eax	$15
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$17
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$21
SP_RD16	%eax	$19
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$21
SP_WR8	%ecx	$22
.LINE	374
SP_STORE	%ecx
ADD16	%ecx	$23
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$25
SP_RD16	%eax	$23
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$27
SP_STORE	%eax
ADD16	%eax	$25
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$27
LD32	(%ecx)	$0
.LINE	375
SP_RD16	%ecx	$202
SP_WR16	%ecx	$29
.LINE	378
SP_STORE	%ecx
ADD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$33
SP_RD16	%eax	$31
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$35
SP_STORE	%eax
ADD16	%eax	$33
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$37
SP_RD16	%eax	$35
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$38
SP_RD8	%eax	$37
AND32	%eax	$255
CPY32	(%ecx)	%eax
.LINE	381
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$38
LD32	%ebx	$4
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$29
SP_STORE	%ebx
ADD16	%ebx	$42
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$46
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$50
SP_RD16	%eax	$48
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$7
SP_RD16	%ebx	$50
AND32	%ebx	$65535
ADD32	(%ecx)	(%eax)	%ebx
SP_RD32	%ecx	$52
SP_WR32	%ecx	$7
@IC127:	
.LINE	383
SP_STORE	%ecx
ADD16	%ecx	$56
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$58
SP_RD16	%eax	$56
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$58
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$62
SP_RD16	%eax	$60
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$11
SP_RD8	%eax	$62
SHL32	%eax	$24
SAR32	%eax	$24
CMP32	(%ecx)	%eax
JLTS	@IC129
JUMP	@IC128
@IC129:	
.LINE	385
SP_STORE	%ecx
ADD16	%ecx	$63
SP_STORE	%eax
ADD16	%eax	$7
LD32	%ebx	$3
SAR32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$67
SP_STORE	%eax
ADD16	%eax	$63
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$198
SP_STORE	%ebx
ADD16	%ebx	$67
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$73
SP_RD16	%eax	$71
CPY8	%eax	(%eax)
AND32	%eax	$255
CPY32	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$77
SP_STORE	%eax
ADD16	%eax	$7
LD32	%ebx	$8
REM32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%ebx
ADD16	%ebx	$77
LD32	%eax	$1
SHL32	(%ecx)	%eax	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$73
SP_STORE	%ebx
ADD16	%ebx	$81
AND32	(%ecx)	(%eax)	(%ebx)
SP_RD32	%ecx	$85
SP_WR32	%ecx	$89
.LINE	386
SP_STORE	%ecx
ADD16	%ecx	$89
CMP32	(%ecx)	$0
JNZ	@IC133
JUMP	@IC132
@IC133:	
.LINE	388
SP_STORE	%ecx
ADD16	%ecx	$93
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$95
SP_RD16	%eax	$93
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$97
SP_STORE	%eax
ADD16	%eax	$95
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$99
SP_STORE	%ebx
ADD16	%ebx	$11
LD32	%eax	$1
SHL32	(%ecx)	%eax	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$103
SP_RD16	%eax	$97
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$107
SP_STORE	%eax
ADD16	%eax	$103
SP_STORE	%ebx
ADD16	%ebx	$99
ADD32	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$97
SP_STORE	%eax
ADD16	%eax	$107
CPY32	(%ecx)	(%eax)
@IC132:	
.LINE	390
SP_RD32	%ecx	$11
SP_WR32	%ecx	$111
SP_STORE	%eax
ADD16	%eax	$11
INC32	(%eax)	$1
.LINE	391
SP_RD32	%ecx	$7
SP_WR32	%ecx	$115
SP_STORE	%eax
ADD16	%eax	$7
INC32	(%eax)	$1
.LINE	383
JUMP	@IC127
@IC128:	
.LINE	395
SP_STORE	%ecx
ADD16	%ecx	$119
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$121
SP_RD16	%eax	$119
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$123
SP_STORE	%eax
ADD16	%eax	$121
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$125
SP_RD16	%eax	$123
CPY32	(%ecx)	(%eax)
SP_RD32	%ecx	$125
SP_WR32	%ecx	$129
.LINE	396
SP_STORE	%ecx
ADD16	%ecx	$133
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$135
SP_RD16	%eax	$133
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$137
SP_STORE	%eax
ADD16	%eax	$135
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$139
SP_RD16	%eax	$137
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$139
CMP8	%ecx	$8
JGT	@IC136
JUMP	@IC135
@IC136:	
.LINE	397
SP_STORE	%ecx
ADD16	%ecx	$140
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$142
SP_RD16	%eax	$140
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$144
SP_STORE	%eax
ADD16	%eax	$142
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$146
SP_RD16	%eax	$144
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$147
SP_RD8	%eax	$146
AND32	%eax	$255
LD32	%ebx	$9
SUB32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$147
SP_WR8	%ecx	$151
.LINE	398
SP_STORE	%ecx
ADD16	%ecx	$152
SP_STORE	%eax
ADD16	%eax	$129
SP_RD8	%ebx	$151
AND32	%ebx	$255
SAR32	(%ecx)	(%eax)	%ebx
SP_RD32	%ecx	$152
SP_WR32	%ecx	$129
JUMP	@IC134
@IC135:	
.LINE	399
SP_STORE	%ecx
ADD16	%ecx	$156
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$158
SP_RD16	%eax	$156
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$160
SP_STORE	%eax
ADD16	%eax	$158
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$162
SP_RD16	%eax	$160
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$162
CMP8	%ecx	$8
JZ	@IC140
JNZ	@IC139
@IC140:	
.LINE	400
SP_STORE	%ecx
ADD16	%ecx	$163
SP_STORE	%eax
ADD16	%eax	$129
LD32	%ebx	$1
SHL32	(%ecx)	(%eax)	%ebx
SP_RD32	%ecx	$163
SP_WR32	%ecx	$129
@IC139:	
@IC134:	
.LINE	403
SP_STORE	%ecx
ADD16	%ecx	$167
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$169
SP_RD16	%eax	$167
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$171
SP_STORE	%eax
ADD16	%eax	$169
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$173
SP_STORE	%eax
ADD16	%eax	$129
LD32	%ebx	$256
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$177
SP_STORE	%eax
ADD16	%eax	$200
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$179
SP_RD16	%eax	$177
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$181
SP_STORE	%eax
ADD16	%eax	$179
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$183
SP_RD16	%eax	$181
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$187
SP_STORE	%eax
ADD16	%eax	$183
LD32	%ebx	$255
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$191
SP_STORE	%eax
ADD16	%eax	$173
SP_STORE	%ebx
ADD16	%ebx	$187
OR32	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$171
SP_STORE	%eax
ADD16	%eax	$191
CPY32	(%ecx)	(%eax)
.LINE	403
SP_INC	$195
RTS	
.FUNC_END	"GetValueXY"

.LINE	421
ReportID_DataLength:	
.GLOBAL	 DO_NOT_EXPORT  "ReportID_DataLength"

.VARIABLE	"Offset"	32	"int"	1	0	0	0	0	0	423	
.VARIABLE	"FoundData"	568	"_HIDData_t"	0	0	4	0	0	0	424	
.FUNCTION	"ReportID_DataLength"	
.RETURN "int"	32	1	0	98	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	102	0	0	1	421	
.PARAMETER	"ReportID"	8 "char"	0	0	104	0	0	0	421	
SP_DEC	$95
.LINE	426
LD32	%ecx	$0
SP_WR32	%ecx	$0
.LINE	427
SP_RD16	%eax	$102
PUSH16	%eax
CALL	ResetParser
SP_INC	$2
@IC143:	
.LINE	428
SP_STORE	%ecx
ADD16	%ecx	$75
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_RD16	%eax	$75
PUSH16	%eax
SP_RD16	%eax	$104
PUSH16	%eax
SP_DEC	$4
CALL	HIDParse
POP32	%eax
SP_WR32	%eax	$81
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$77
CMP32	(%ecx)	$0
JNZ	@IC145
JUMP	@IC144
@IC145:	
.LINE	430
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$81
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$85
SP_RD16	%eax	$83
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$104
CMP8	(%ecx)	(%eax)
JZ	@IC147
JNZ	@IC146
@IC147:	
.LINE	432
SP_STORE	%ecx
ADD16	%ecx	$86
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$88
SP_STORE	%eax
ADD16	%eax	$86
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$90
SP_RD16	%eax	$88
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$0
SP_RD8	%ebx	$90
AND32	%ebx	$255
ADD32	(%ecx)	(%eax)	%ebx
SP_RD32	%ecx	$91
SP_WR32	%ecx	$0
@IC146:	
.LINE	428
JUMP	@IC143
@IC144:	
.LINE	436
SP_STORE	%eax
SP_STORE	%ecx
ADD16	%ecx	$98
CPY32	(%ecx)	(%eax)
SP_INC	$95
RTS	
.FUNC_END	"ReportID_DataLength"

.LINE	439
ReportID_Offset:	
.GLOBAL	 DO_NOT_EXPORT  "ReportID_Offset"

.VARIABLE	"Offset"	32	"int"	1	0	0	0	0	0	441	
.VARIABLE	"FoundData"	568	"_HIDData_t"	0	0	4	0	0	0	442	
.FUNCTION	"ReportID_Offset"	
.RETURN "int"	32	1	0	98	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	102	0	0	1	439	
.PARAMETER	"ReportID"	8 "char"	0	0	104	0	0	0	439	
SP_DEC	$95
.LINE	444
LD32	%ecx	$0
SP_WR32	%ecx	$0
.LINE	445
SP_RD16	%eax	$102
PUSH16	%eax
CALL	ResetParser
SP_INC	$2
@IC150:	
.LINE	446
SP_STORE	%ecx
ADD16	%ecx	$75
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_RD16	%eax	$75
PUSH16	%eax
SP_RD16	%eax	$104
PUSH16	%eax
SP_DEC	$4
CALL	HIDParse
POP32	%eax
SP_WR32	%eax	$81
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$77
CMP32	(%ecx)	$0
JNZ	@IC152
JUMP	@IC151
@IC152:	
.LINE	448
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$81
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$85
SP_RD16	%eax	$83
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$104
CMP8	(%ecx)	(%eax)
JGT	@IC154
JUMP	@IC153
@IC154:	
.LINE	450
SP_STORE	%ecx
ADD16	%ecx	$86
SP_STORE	%eax
ADD16	%eax	$4
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$88
SP_STORE	%eax
ADD16	%eax	$86
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$90
SP_RD16	%eax	$88
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$0
SP_RD8	%ebx	$90
AND32	%ebx	$255
ADD32	(%ecx)	(%eax)	%ebx
SP_RD32	%ecx	$91
SP_WR32	%ecx	$0
@IC153:	
.LINE	446
JUMP	@IC150
@IC151:	
.LINE	454
SP_STORE	%eax
SP_STORE	%ecx
ADD16	%ecx	$98
CPY32	(%ecx)	(%eax)
SP_INC	$95
RTS	
.FUNC_END	"ReportID_Offset"

.LINE	458
FindReport_max_ID:	
.GLOBAL	 DO_NOT_EXPORT  "FindReport_max_ID"

.VARIABLE	"byteCount"	8	"char"	0	0	0	0	0	0	462	
.VARIABLE	"ReportID"	8	"char"	0	0	1	0	0	0	460	
.VARIABLE	"FoundData"	568	"_HIDData_t"	0	0	2	0	0	0	461	
.FUNCTION	"FindReport_max_ID"	
.RETURN "char"	8	0	0	93	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	94	0	0	1	458	
SP_DEC	$90
.LINE	480
LD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	481
LD8	%ecx	$0
SP_WR8	%ecx	$1
.LINE	482
SP_RD16	%eax	$94
PUSH16	%eax
CALL	ResetParser
SP_INC	$2
@IC157:	
.LINE	485
SP_STORE	%ecx
ADD16	%ecx	$73
SP_STORE	%eax
ADD16	%eax	$2
CPY16	(%ecx)	%eax
SP_RD16	%eax	$73
PUSH16	%eax
SP_RD16	%eax	$96
PUSH16	%eax
SP_DEC	$4
CALL	HIDParse
POP32	%eax
SP_WR32	%eax	$79
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$75
CMP32	(%ecx)	$0
JNZ	@IC159
JUMP	@IC158
@IC159:	
.LINE	487
SP_RD8	%ecx	$0
SP_WR8	%ecx	$79
SP_STORE	%eax
INC8	(%eax)	$1
.LINE	488
SP_STORE	%ecx
ADD16	%ecx	$80
SP_STORE	%eax
ADD16	%eax	$2
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$82
SP_STORE	%eax
ADD16	%eax	$80
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$84
SP_RD16	%eax	$82
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$84
SP_STORE	%eax
ADD16	%eax	$1
CMP8	(%ecx)	(%eax)
JGT	@IC161
JUMP	@IC160
@IC161:	
.LINE	490
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$2
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$85
LD16	%ebx	$45
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$89
SP_RD16	%eax	$87
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$89
SP_WR8	%ecx	$1
@IC160:	
.LINE	485
JUMP	@IC157
@IC158:	
.LINE	498
SP_STORE	%eax
ADD16	%eax	$1
SP_STORE	%ecx
ADD16	%ecx	$93
CPY8	(%ecx)	(%eax)
SP_INC	$90
RTS	
.FUNC_END	"FindReport_max_ID"

.LINE	501
FindMouse_XYW:	
.GLOBAL	 DO_NOT_EXPORT  "FindMouse_XYW"

.VARIABLE	"FoundData"	568	"_HIDData_t"	0	0	0	0	0	0	503	
.FUNCTION	"FindMouse_XYW"	
.RETURN "int"	32	1	0	112	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	116	0	0	1	501	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	118	0	0	1	501	
.PARAMETER	"XYW"	16 "short"	0	0	120	0	0	0	501	
SP_DEC	$109
.LINE	504
SP_RD16	%eax	$116
PUSH16	%eax
CALL	ResetParser
SP_INC	$2
@IC164:	
.LINE	505
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$71
PUSH16	%eax
SP_RD16	%eax	$118
PUSH16	%eax
SP_DEC	$4
CALL	HIDParse
POP32	%eax
SP_WR32	%eax	$77
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$73
CMP32	(%ecx)	$0
JNZ	@IC166
JUMP	@IC165
@IC166:	
.LINE	507
SP_STORE	%ecx
ADD16	%ecx	$77
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$79
SP_STORE	%eax
ADD16	%eax	$77
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$81
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$79
SP_STORE	%ebx
ADD16	%ebx	$81
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$85
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$89
SP_RD16	%eax	$87
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$89
CMP16	(%ecx)	$2
JZ	@IC169
JNZ	@IC167
@IC169:	
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$93
SP_STORE	%eax
ADD16	%eax	$91
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$95
LD32	%eax	$2
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$99
SP_STORE	%eax
ADD16	%eax	$93
SP_STORE	%ebx
ADD16	%ebx	$95
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$101
SP_STORE	%eax
ADD16	%eax	$99
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$103
SP_RD16	%eax	$101
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$103
SP_STORE	%eax
ADD16	%eax	$120
CMP16	(%ecx)	(%eax)
JZ	@IC168
JNZ	@IC167
@IC168:	
.LINE	509
SP_STORE	%ecx
ADD16	%ecx	$105
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
PUSH16	$71
SP_RD16	%eax	$107
PUSH16	%eax
SP_RD16	%eax	$122
PUSH16	%eax
SP_DEC	$2
CALL	memcpy
POP16	%eax
SP_WR16	%eax	$113
SP_INC	$6
.LINE	520
LD32	%eax	$1
SP_WR32	%eax	$112
SP_INC	$109
RTS	
@IC167:	
.LINE	505
JUMP	@IC164
@IC165:	
.LINE	523
LD32	%eax	$0
SP_WR32	%eax	$112
SP_INC	$109
RTS	
.FUNC_END	"FindMouse_XYW"

.LINE	526
FindMouse_Buttons:	
.GLOBAL	 DO_NOT_EXPORT  "FindMouse_Buttons"

.VARIABLE	"FoundData"	568	"_HIDData_t"	0	0	0	0	0	0	528	
.FUNCTION	"FindMouse_Buttons"	
.RETURN "int"	32	1	0	142	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	146	0	0	1	526	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	148	0	0	1	526	
SP_DEC	$139
.LINE	529
SP_RD16	%eax	$146
PUSH16	%eax
CALL	ResetParser
SP_INC	$2
@IC174:	
.LINE	530
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%eax	$71
PUSH16	%eax
SP_RD16	%eax	$148
PUSH16	%eax
SP_DEC	$4
CALL	HIDParse
POP32	%eax
SP_WR32	%eax	$77
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$73
CMP32	(%ecx)	$0
JNZ	@IC176
JUMP	@IC175
@IC176:	
.LINE	532
SP_STORE	%ecx
ADD16	%ecx	$77
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$79
SP_STORE	%eax
ADD16	%eax	$77
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$81
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$85
SP_STORE	%eax
ADD16	%eax	$79
SP_STORE	%ebx
ADD16	%ebx	$81
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$87
SP_STORE	%eax
ADD16	%eax	$85
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$89
SP_RD16	%eax	$87
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$89
CMP16	(%ecx)	$2
JZ	@IC179
JNZ	@IC177
@IC179:	
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$93
SP_STORE	%eax
ADD16	%eax	$91
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$95
LD32	%eax	$1
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$99
SP_STORE	%eax
ADD16	%eax	$93
SP_STORE	%ebx
ADD16	%ebx	$95
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$101
SP_STORE	%eax
ADD16	%eax	$99
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$103
SP_RD16	%eax	$101
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$103
CMP16	(%ecx)	$1
JZ	@IC178
JNZ	@IC177
@IC178:	
.LINE	534
SP_STORE	%ecx
ADD16	%ecx	$105
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
PUSH16	$71
SP_RD16	%eax	$107
PUSH16	%eax
SP_RD16	%eax	$152
PUSH16	%eax
SP_DEC	$2
CALL	memcpy
POP16	%eax
SP_WR16	%eax	$113
SP_INC	$6
.LINE	535
SP_STORE	%ecx
ADD16	%ecx	$109
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$111
SP_RD16	%eax	$109
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$113
SP_STORE	%eax
ADD16	%eax	$111
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$113
LD8	(%ecx)	$3
.LINE	536
SP_STORE	%ecx
ADD16	%ecx	$115
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$117
SP_RD16	%eax	$115
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$119
SP_STORE	%eax
ADD16	%eax	$117
LD16	%ebx	$67
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$119
LD32	(%ecx)	$7
.LINE	537
SP_STORE	%ecx
ADD16	%ecx	$121
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$123
SP_RD16	%eax	$121
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$125
SP_STORE	%eax
ADD16	%eax	$123
LD16	%ebx	$63
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$125
LD32	(%ecx)	$0
.LINE	538
SP_STORE	%ecx
ADD16	%ecx	$127
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$129
SP_RD16	%eax	$127
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$131
SP_STORE	%eax
ADD16	%eax	$129
LD16	%ebx	$59
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$131
LD32	(%ecx)	$7
.LINE	539
SP_STORE	%ecx
ADD16	%ecx	$133
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$135
SP_RD16	%eax	$133
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$137
SP_STORE	%eax
ADD16	%eax	$135
LD16	%ebx	$55
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$137
LD32	(%ecx)	$0
.LINE	540
LD32	%eax	$1
SP_WR32	%eax	$142
SP_INC	$139
RTS	
@IC177:	
.LINE	530
JUMP	@IC174
@IC175:	
.LINE	543
LD32	%eax	$0
SP_WR32	%eax	$142
SP_INC	$139
RTS	
.FUNC_END	"FindMouse_Buttons"

