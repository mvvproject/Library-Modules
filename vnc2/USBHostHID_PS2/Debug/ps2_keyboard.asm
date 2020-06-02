.FILE "Debug\ps2_keyboard.c"

.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
Fkeys	.DB	8	-32, -31, -30, -29, -28, -27, -26, -25
.GLOBAL	  DO_NOT_EXPORT "Fkeys"
USB_PS2_tb	.DB	256	127, 0, -128, 127, 28, 50, 33, 35, 36, 43, 52, 51, 67, 59, 66, 75, 58, 49, 68, 77, 21, 45, 27, 44, 60, 42, 29, 34, 53, 26, 22, 30, 38, 37, 46, 54, 61, 62, 70, 69, 90, 118, 102, 13, 41, 78, 85, 84, 91, 93, 93, 76, 82, 14, 65, 73, 74, 88, 5, 6, 4, 12, 3, 11, -125, 10, 1, 9, 120, 7, -4, 126, -9, -16, -20, -3, -15, -23, -6, -12, -21, -14, -11, 119, -54, 124, 123, 121, 26, 105, 114, 122, 107, 115, 116, 108, 117, 125, 112, 113, 97, -81, 127, 15, 47, 55, 63, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 109, 127, 81, 19, 106, 100, 103, 39, 127, 127, 127, 127, 127, 99, 98, 95, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 20, 18, 17, -97, -108, 89, -111, -89, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127
.GLOBAL	  DO_NOT_EXPORT "USB_PS2_tb"
Str@0	.ASCIIZ	"\r\n"
Str@1	.ASCIIZ	"keys_buf:  "
Str@2	.ASCIIZ	" "
Str@3	.ASCIIZ	"n release: "
Str@4	.ASCIIZ	"PS2KB <- F0 "
Str@5	.ASCIIZ	"PS2KB <- E0 F0 "
Str@6	.ASCIIZ	"n press: "
Str@7	.ASCIIZ	"PS2KB <- E0 "
Str@8	.ASCIIZ	"PS2KB <- FC (POST Fail)"
Str@9	.ASCIIZ	"PS2KB <- "
Str@10	.ASCIIZ	"fkeys_buf: "
Str@11	.ASCIIZ	" "
Str@12	.ASCIIZ	"keys_buf:  "
Str@13	.ASCIIZ	" "
Str@14	.ASCIIZ	"scan_buf:  "
Str@15	.ASCIIZ	" "
Str@16	.ASCIIZ	"test flag: "


.ENUM	"IOMUX_SIGNALS"
.ENUMERATOR	"IOMUX_IN_DEBUGGER"	0
.ENUMERATOR	"IOMUX_IN_UART_RXD"	1
.ENUMERATOR	"IOMUX_IN_UART_CTS_N"	2
.ENUMERATOR	"IOMUX_IN_UART_DSR_N"	3
.ENUMERATOR	"IOMUX_IN_UART_DCD"	4
.ENUMERATOR	"IOMUX_IN_UART_RI"	5
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_0"	6
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_1"	7
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_2"	8
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_3"	9
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_4"	10
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_5"	11
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_6"	12
.ENUMERATOR	"IOMUX_IN_FIFO_DATA_7"	13
.ENUMERATOR	"IOMUX_IN_FIFO_OE_N"	14
.ENUMERATOR	"IOMUX_IN_FIFO_RD_N"	15
.ENUMERATOR	"IOMUX_IN_FIFO_WR_N"	16
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_CLK"	17
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_MOSI"	18
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_0_CS"	19
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_CLK"	20
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_MOSI"	21
.ENUMERATOR	"IOMUX_IN_SPI_SLAVE_1_CS"	22
.ENUMERATOR	"IOMUX_IN_SPI_MASTER_MISO"	23
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_0"	24
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_1"	25
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_2"	26
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_3"	27
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_4"	28
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_5"	29
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_6"	30
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_A_7"	31
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_0"	32
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_1"	33
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_2"	34
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_3"	35
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_4"	36
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_5"	37
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_6"	38
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_B_7"	39
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_0"	40
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_1"	41
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_2"	42
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_3"	43
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_4"	44
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_5"	45
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_6"	46
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_C_7"	47
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_0"	48
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_1"	49
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_2"	50
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_3"	51
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_4"	52
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_5"	53
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_6"	54
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_D_7"	55
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_0"	56
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_1"	57
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_2"	58
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_3"	59
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_4"	60
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_5"	61
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_6"	62
.ENUMERATOR	"IOMUX_IN_GPIO_PORT_E_7"	63
.ENUMERATOR	"IOMUX_OUT_DEBUGGER"	64
.ENUMERATOR	"IOMUX_OUT_UART_TXD"	65
.ENUMERATOR	"IOMUX_OUT_UART_RTS_N"	66
.ENUMERATOR	"IOMUX_OUT_UART_DTR_N"	67
.ENUMERATOR	"IOMUX_OUT_UART_TX_ACTIVE"	68
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_0"	69
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_1"	70
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_2"	71
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_3"	72
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_4"	73
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_5"	74
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_6"	75
.ENUMERATOR	"IOMUX_OUT_FIFO_DATA_7"	76
.ENUMERATOR	"IOMUX_OUT_FIFO_RXF_N"	77
.ENUMERATOR	"IOMUX_OUT_FIFO_TXE_N"	78
.ENUMERATOR	"IOMUX_OUT_PWM_0"	79
.ENUMERATOR	"IOMUX_OUT_PWM_1"	80
.ENUMERATOR	"IOMUX_OUT_PWM_2"	81
.ENUMERATOR	"IOMUX_OUT_PWM_3"	82
.ENUMERATOR	"IOMUX_OUT_PWM_4"	83
.ENUMERATOR	"IOMUX_OUT_PWM_5"	84
.ENUMERATOR	"IOMUX_OUT_PWM_6"	85
.ENUMERATOR	"IOMUX_OUT_PWM_7"	86
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_0_MOSI"	87
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_0_MISO"	88
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_1_MOSI"	89
.ENUMERATOR	"IOMUX_OUT_SPI_SLAVE_1_MISO"	90
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CLK"	91
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_MOSI"	92
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CS_0"	93
.ENUMERATOR	"IOMUX_OUT_SPI_MASTER_CS_1"	94
.ENUMERATOR	"IOMUX_OUT_FIFO_CLKOUT_245"	95
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_0"	96
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_1"	97
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_2"	98
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_3"	99
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_4"	100
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_5"	101
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_6"	102
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_A_7"	103
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_0"	104
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_1"	105
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_2"	106
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_3"	107
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_4"	108
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_5"	109
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_6"	110
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_B_7"	111
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_0"	112
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_1"	113
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_2"	114
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_3"	115
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_4"	116
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_5"	117
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_6"	118
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_C_7"	119
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_0"	120
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_1"	121
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_2"	122
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_3"	123
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_4"	124
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_5"	125
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_6"	126
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_D_7"	127
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_0"	128
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_1"	129
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_2"	130
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_3"	131
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_4"	132
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_5"	133
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_6"	134
.ENUMERATOR	"IOMUX_OUT_GPIO_PORT_E_7"	135
.ENUM_END	"IOMUX_SIGNALS"

.STRUCT	"_vos_tcb_t"	368
.STRUCTMEM	"next"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"state"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"orig_priority"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"priority"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"quantum"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"delay"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"sp"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"eax"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"ebx"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"ecx"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r0"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r1"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r2"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"r3"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"system_data"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"system_profiler"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"flags"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"semaphore_list"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_vos_tcb_t"

.ENUM	"dma_status"
.ENUMERATOR	"DMA_OK"	0
.ENUMERATOR	"DMA_INVALID_PARAMETER"	1
.ENUMERATOR	"DMA_ACQUIRE_ERROR"	2
.ENUMERATOR	"DMA_ENABLE_ERROR"	3
.ENUMERATOR	"DMA_DISABLE_ERROR"	4
.ENUMERATOR	"DMA_CONFIGURE_ERROR"	5
.ENUMERATOR	"DMA_ERROR"	6
.ENUMERATOR	"DMA_FIFO_ERROR"	7
.ENUM_END	"dma_status"

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

.STRUCT	"_vos_gpio_t"	40
.STRUCTMEM	"gpio_port_a"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_b"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_c"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_d"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_e"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_gpio_t"

.STRUCT	"_vos_semaphore_list_t"	56
.STRUCTMEM	"next"	"_vos_semaphore_list_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"siz"	"char"	8	1	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"result"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"list"	"_vos_semaphore_t"	16	0	1	0	1	1	1	
.STRUCT_END	"_vos_semaphore_list_t"

.STRUCT	"_vos_mutex_t"	48
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"owner"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"attr"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"ceiling"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_mutex_t"

.STRUCT	"_vos_device_t"	80
.STRUCTMEM	"mutex"	"_vos_mutex_t"	48	0	0	0	0	0	0	
.STRUCTMEM	"driver"	"_vos_driver_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"context"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_vos_device_t"

.STRUCT	"_vos_driver_t"	200
.STRUCTMEM	"open"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"close"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"read"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"write"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"ioctl"	"char"	32	1	1	0	0	0	1	
.STRUCTMEM	"interrupt"	"void"	32	0	1	0	0	0	1	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_driver_t"

.STRUCT	"_vos_system_data_area_t"	80
.STRUCTMEM	"next"	"_vos_system_data_area_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"tcb"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"count"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"name"	"char"	16	1	1	0	0	0	1	
.STRUCT_END	"_vos_system_data_area_t"

.STRUCT	"_vos_cond_var_t"	40
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"lock"	"_vos_mutex_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"state"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_cond_var_t"

.ENUM	"gpioctrl_status"
.ENUMERATOR	"GPIO_OK"	0
.ENUMERATOR	"GPIO_INVALID_PIN"	1
.ENUMERATOR	"GPIO_INVALID_PORT"	2
.ENUMERATOR	"GPIO_INVALID_PARAMETER"	3
.ENUMERATOR	"GPIO_INVALID_INTERRUPT"	4
.ENUMERATOR	"GPIO_INVALID_INTERRUPT_TYPE"	5
.ENUMERATOR	"GPIO_INTERRUPT_NOT_ENABLED"	6
.ENUMERATOR	"GPIO_ERROR"	7
.ENUM_END	"gpioctrl_status"

.STRUCT	"_vos_semaphore_t"	40
.STRUCTMEM	"val"	"short"	16	1	0	0	0	0	0	
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"usage_count"	"char"	8	1	0	0	0	0	0	
.STRUCT_END	"_vos_semaphore_t"

.STRUCT	"_vos_dma_config_t"	80
.STRUCTMEM	"src"	"__unnamed_struct_2"	16	0	0	0	0	0	0	
.STRUCTMEM	"dest"	"__unnamed_struct_3"	16	0	0	0	0	0	0	
.STRUCTMEM	"bufsiz"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"fifosize"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"flow_control"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"afull_trigger"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_dma_config_t"

.ENUM	"__anon_enum_type_1"
.ENUMERATOR	"IDLE"	0
.ENUMERATOR	"BLOCKED"	1
.ENUMERATOR	"READY"	2
.ENUMERATOR	"RUNNING"	3
.ENUMERATOR	"DELAYED"	4
.ENUMERATOR	"GONE"	5
.ENUM_END	"__anon_enum_type_1"

.STRUCT	"__unnamed_struct_1"	408
.STRUCTMEM	"new_data"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"usbkb_buf"	"char"	64	0	0	0	1	1	0	
.STRUCTMEM	"keys_buf"	"char"	112	0	0	0	1	1	0	
.STRUCTMEM	"scan_buf"	"char"	224	0	0	0	1	1	0	
.STRUCT_END	"__unnamed_struct_1"

.UNION	"__unnamed_struct_2"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_2"

.UNION	"__unnamed_struct_3"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_3"

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

.ENUM	"IOMUX_STATUS"
.ENUMERATOR	"IOMUX_OK"	0
.ENUMERATOR	"IOMUX_INVALID_SIGNAL"	1
.ENUMERATOR	"IOMUX_INVALID_PIN_SELECTION"	2
.ENUMERATOR	"IOMUX_UNABLE_TO_ROUTE_SIGNAL"	3
.ENUMERATOR	"IOMUX_INVALID_IOCELL_DRIVE_CURRENT"	4
.ENUMERATOR	"IOMUX_INVALID_IOCELL_TRIGGER"	5
.ENUMERATOR	"IOMUX_INVALID_IOCELL_SLEW_RATE"	6
.ENUMERATOR	"IOMUX_INVALID_IOCELL_PULL"	7
.ENUMERATOR	"IOMUX_ERROR"	8
.ENUM_END	"IOMUX_STATUS"

.VARIABLE	"Fkeys"	64	"char"	0	0	-1	1	1	0	16	
.VARIABLE	"USB_PS2_tb"	2048	"char"	0	0	-1	1	1	0	19	
.TYPEDEF	"_HIDParser_t"	"HIDParser_t"
.TYPEDEF	"_vos_gpio_t"	"vos_gpio_t"
.TYPEDEF	"_vos_semaphore_list_t"	"vos_semaphore_list_t"
.TYPEDEF	"char"	"I8"
.TYPEDEF	"char"	"U8"
.TYPEDEF	"char"	"PF"
.TYPEDEF	"long"	"I32"
.TYPEDEF	"short"	"I16"
.TYPEDEF	"long"	"U32"
.TYPEDEF	"short"	"U16"
.TYPEDEF	"_vos_mutex_t"	"vos_mutex_t"
.TYPEDEF	"_vos_device_t"	"vos_device_t"
.TYPEDEF	"_vos_driver_t"	"vos_driver_t"
.TYPEDEF	"_vos_system_data_area_t"	"vos_system_data_area_t"
.TYPEDEF	"__unnamed_struct_1"	"PS2_keyboard_t"
.TYPEDEF	"char"	"PF_IO"
.TYPEDEF	"_vos_cond_var_t"	"vos_cond_var_t"
.TYPEDEF	"void"	"PF_INT"
.TYPEDEF	"char"	"uchar"
.TYPEDEF	"short"	"wchar"
.TYPEDEF	"long"	"ulong"
.TYPEDEF	"void"	"PF_OPEN"
.TYPEDEF	"_vos_semaphore_t"	"vos_semaphore_t"
.TYPEDEF	"void"	"PF_CLOSE"
.TYPEDEF	"short"	"addr_t"
.TYPEDEF	"char"	"PF_IOCTL"
.TYPEDEF	"char"	"u_char"
.TYPEDEF	"short"	"size_t"
.TYPEDEF	"_vos_dma_config_t"	"vos_dma_config_t"
.TYPEDEF	"short"	"ushort"
.TYPEDEF	"_HIDData_t"	"HIDData_t"
.TYPEDEF	"_HIDNode_t"	"HIDNode_t"
.TYPEDEF	"_HIDPath_t"	"HIDPath_t"
.TYPEDEF	"void"	"fnVoidPtr"
.TYPEDEF	"_vos_tcb_t"	"vos_tcb_t"
.TYPEDEF	"_ReportID_t"	"ReportID_t"
.FUNCTION	"vos_dma_get_fifo_flow_control"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	83	
.FUNC_END	"vos_dma_get_fifo_flow_control"

.FUNCTION	"vos_start_scheduler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_start_scheduler"

.FUNCTION	"PS2dev_read"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"data"	16 "char"	0	1	0	0	0	1	33	
.FUNC_END	"PS2dev_read"

.FUNCTION	"vos_gpio_write_port"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	125	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	125	
.FUNC_END	"vos_gpio_write_port"

.FUNCTION	"vos_signal_semaphore_from_isr"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	168	
.FUNC_END	"vos_signal_semaphore_from_isr"

.FUNCTION	"PS2dev_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"PS2dev_init"

.FUNCTION	"vos_malloc"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"size"	16 "short"	0	0	0	0	0	0	24	
.FUNC_END	"vos_malloc"

.FUNCTION	"vos_create_thread_ex"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	98	
.PARAMETER	"stack"	16 "short"	0	0	0	0	0	0	98	
.PARAMETER	"function"	0 "void"	0	0	0	0	0	0	98	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	98	
.PARAMETER	"arg_size"	16 "short"	1	0	0	0	0	0	98	
.FUNC_END	"vos_create_thread_ex"

.FUNCTION	"vos_memcpy"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"destination"	16 "void"	0	1	0	0	0	1	27	
.PARAMETER	"source"	16 "void"	0	1	0	0	0	1	27	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	27	
.FUNC_END	"vos_memcpy"

.FUNCTION	"vos_memset"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"dstptr"	16 "void"	0	1	0	0	0	1	26	
.PARAMETER	"value"	32 "int"	1	0	0	0	0	0	26	
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"vos_memset"

.FUNCTION	"vos_get_kernel_clock"	
.RETURN "int"	32	0	0	0	0	0	0	
.FUNC_END	"vos_get_kernel_clock"

.FUNCTION	"vos_gpio_disable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	129	
.FUNC_END	"vos_gpio_disable_int"

.FUNCTION	"vos_get_package_type"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_package_type"

.FUNCTION	"vos_dma_get_fifo_data_register"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	82	
.FUNC_END	"vos_dma_get_fifo_data_register"

.FUNCTION	"vos_signal_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	167	
.FUNC_END	"vos_signal_semaphore"

.FUNCTION	"vos_gpio_wait_on_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	130	
.FUNC_END	"vos_gpio_wait_on_int"

.FUNCTION	"vos_dma_get_fifo_data"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	85	
.PARAMETER	"dat"	16 "char"	0	1	0	0	0	1	85	
.FUNC_END	"vos_dma_get_fifo_data"

.FUNCTION	"PS2dev_write"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"data"	8 "char"	0	0	0	0	0	0	31	
.FUNC_END	"PS2dev_write"

.FUNCTION	"vos_iocell_get_config"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	228	
.PARAMETER	"drive_current"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"trigger"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"slew_rate"	16 "char"	0	1	0	0	0	1	228	
.PARAMETER	"pull"	16 "char"	0	1	0	0	0	1	228	
.FUNC_END	"vos_iocell_get_config"

.FUNCTION	"vos_iomux_define_bidi"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	225	
.PARAMETER	"input_signal"	8 "char"	0	0	0	0	0	0	225	
.PARAMETER	"output_signal"	8 "char"	0	0	0	0	0	0	225	
.FUNC_END	"vos_iomux_define_bidi"

.FUNCTION	"vos_gpio_set_all_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"masks"	16 "_vos_gpio_t"	0	1	0	0	0	1	118	
.FUNC_END	"vos_gpio_set_all_mode"

.FUNCTION	"vos_iocell_set_config"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"drive_current"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"trigger"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"slew_rate"	8 "char"	0	0	0	0	0	0	229	
.PARAMETER	"pull"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"vos_iocell_set_config"

.FUNCTION	"vos_gpio_set_pin_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	116	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	116	
.FUNC_END	"vos_gpio_set_pin_mode"

.FUNCTION	"vos_get_chip_revision"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_chip_revision"

.FUNCTION	"vos_wait_semaphore_ex"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"l"	16 "_vos_semaphore_list_t"	0	1	0	0	0	1	166	
.FUNC_END	"vos_wait_semaphore_ex"

.FUNCTION	"vos_enable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	72	
.FUNC_END	"vos_enable_interrupts"

.FUNCTION	"vos_dev_read"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"buf"	16 "char"	0	1	0	0	0	1	54	
.PARAMETER	"num_to_read"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"num_read"	16 "short"	0	1	0	0	0	1	54	
.FUNC_END	"vos_dev_read"

.FUNCTION	"PS2dev_unlock"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"PS2dev_unlock"

.FUNCTION	"vos_dev_open"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"dev_num"	8 "char"	0	0	0	0	0	0	53	
.FUNC_END	"vos_dev_open"

.FUNCTION	"vos_halt_cpu"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_halt_cpu"

.FUNCTION	"vos_dev_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"dev_num"	8 "char"	0	0	0	0	0	0	50	
.PARAMETER	"driver_cb"	16 "_vos_driver_t"	0	1	0	0	0	1	50	
.PARAMETER	"context"	16 "void"	0	1	0	0	0	1	50	
.FUNC_END	"vos_dev_init"

.FUNCTION	"vos_dma_get_fifo_count"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	84	
.FUNC_END	"vos_dma_get_fifo_count"

.FUNCTION	"vos_reset_kernel_clock"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_reset_kernel_clock"

.FUNCTION	"vos_gpio_set_port_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	117	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	117	
.FUNC_END	"vos_gpio_set_port_mode"

.FUNCTION	"vos_iomux_define_input"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	223	
.PARAMETER	"signal"	8 "char"	0	0	0	0	0	0	223	
.FUNC_END	"vos_iomux_define_input"

.FUNCTION	"vos_disable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	73	
.FUNC_END	"vos_disable_interrupts"

.FUNCTION	"PS2dev_write_c"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"data"	8 "char"	0	0	0	0	0	0	32	
.FUNC_END	"PS2dev_write_c"

.FUNCTION	"vos_get_idle_thread_tcb"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.FUNC_END	"vos_get_idle_thread_tcb"

.FUNCTION	"vos_dma_reset"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	76	
.FUNC_END	"vos_dma_reset"

.FUNCTION	"vos_dev_close"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	57	
.FUNC_END	"vos_dev_close"

.FUNCTION	"vos_wdt_clear"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_wdt_clear"

.FUNCTION	"vos_heap_size"	
.RETURN "short"	16	0	0	0	0	0	0	
.FUNC_END	"vos_heap_size"

.FUNCTION	"vos_dev_ioctl"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	56	
.PARAMETER	"cb"	16 "void"	0	1	0	0	0	1	56	
.FUNC_END	"vos_dev_ioctl"

.FUNCTION	"vos_dev_write"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	55	
.PARAMETER	"buf"	16 "char"	0	1	0	0	0	1	55	
.PARAMETER	"num_to_write"	16 "short"	0	0	0	0	0	0	55	
.PARAMETER	"num_written"	16 "short"	0	1	0	0	0	1	55	
.FUNC_END	"vos_dev_write"

.FUNCTION	"vos_get_clock_frequency"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_clock_frequency"

.FUNCTION	"vos_set_clock_frequency"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"frequency"	8 "char"	0	0	0	0	0	0	209	
.FUNC_END	"vos_set_clock_frequency"

.FUNCTION	"vos_dma_enable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	79	
.FUNC_END	"vos_dma_enable"

.FUNCTION	"vos_reset_vnc2"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_reset_vnc2"

.FUNCTION	"vos_heap_space"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"hfree"	16 "short"	0	1	0	0	0	1	30	
.PARAMETER	"hmax"	16 "short"	0	1	0	0	0	1	30	
.FUNC_END	"vos_heap_space"

.FUNCTION	"vos_iomux_define_output"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	224	
.PARAMETER	"signal"	8 "char"	0	0	0	0	0	0	224	
.FUNC_END	"vos_iomux_define_output"

.FUNCTION	"vos_wdt_enable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"bitPosition"	8 "char"	0	0	0	0	0	0	244	
.FUNC_END	"vos_wdt_enable"

.FUNCTION	"LED_ON"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"LED_ON"

.FUNCTION	"PS2dev_host_req"	
.RETURN "char"	8	1	0	0	0	0	0	
.FUNC_END	"PS2dev_host_req"

.FUNCTION	"vos_dma_wait_on_complete"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	81	
.FUNC_END	"vos_dma_wait_on_complete"

.FUNCTION	"vos_lock_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	132	
.FUNC_END	"vos_lock_mutex"

.FUNCTION	"vos_power_down"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"wakeMask"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"vos_power_down"

.FUNCTION	"vos_init_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	131	
.PARAMETER	"state"	8 "char"	0	0	0	0	0	0	131	
.FUNC_END	"vos_init_mutex"

.FUNCTION	"vos_gpio_wait_on_any_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	16 "char"	0	1	0	0	0	1	131	
.FUNC_END	"vos_gpio_wait_on_any_int"

.FUNCTION	"LED_OFF"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"LED_OFF"

.FUNCTION	"vos_get_priority_ceiling"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	135	
.FUNC_END	"vos_get_priority_ceiling"

.FUNCTION	"vos_dma_disable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	80	
.FUNC_END	"vos_dma_disable"

.FUNCTION	"vos_set_priority_ceiling"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	136	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	136	
.FUNC_END	"vos_set_priority_ceiling"

.FUNCTION	"vos_dma_release"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	75	
.FUNC_END	"vos_dma_release"

.FUNCTION	"vos_iomux_disable_output"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	226	
.FUNC_END	"vos_iomux_disable_output"

.FUNCTION	"vos_dma_acquire"	
.RETURN "short"	16	0	0	0	0	0	0	
.FUNC_END	"vos_dma_acquire"

.FUNCTION	"vos_delay_msecs"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"ms"	16 "short"	0	0	0	0	0	0	103	
.FUNC_END	"vos_delay_msecs"

.FUNCTION	"vos_stack_usage"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	188	
.FUNC_END	"vos_stack_usage"

.FUNCTION	"vos_get_profile"	
.RETURN "int"	32	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	191	
.FUNC_END	"vos_get_profile"

.FUNCTION	"vos_gpio_wait_on_all_ints"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_gpio_wait_on_all_ints"

.FUNCTION	"number"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	14	
.FUNC_END	"number"

.FUNCTION	"vos_delay_cancel"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	104	
.FUNC_END	"vos_delay_cancel"

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

.FUNCTION	"vos_dma_retained_configure"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	78	
.PARAMETER	"mem_addr"	16 "char"	0	1	0	0	0	1	78	
.PARAMETER	"bufsiz"	16 "short"	0	0	0	0	0	0	78	
.FUNC_END	"vos_dma_retained_configure"

.FUNCTION	"vos_unlock_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	134	
.FUNC_END	"vos_unlock_mutex"

.FUNCTION	"message"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"msg"	16 "char"	1	1	0	0	0	1	13	
.FUNC_END	"message"

.FUNCTION	"vos_gpio_read_all"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vals"	16 "_vos_gpio_t"	0	1	0	0	0	1	122	
.FUNC_END	"vos_gpio_read_all"

.FUNCTION	"vos_create_thread"	
.RETURN "_vos_tcb_t"	16	0	1	0	0	0	1	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	97	
.PARAMETER	"stack"	16 "short"	0	0	0	0	0	0	97	
.PARAMETER	"function"	0 "void"	0	0	0	0	0	0	97	
.PARAMETER	"arg_size"	16 "short"	1	0	0	0	0	0	97	
.FUNC_END	"vos_create_thread"

.FUNCTION	"vos_gpio_read_pin"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	120	
.PARAMETER	"val"	16 "char"	0	1	0	0	0	1	120	
.FUNC_END	"vos_gpio_read_pin"

.FUNCTION	"strncmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"strncmp"

.FUNCTION	"vos_dma_configure"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	77	
.PARAMETER	"cb"	16 "_vos_dma_config_t"	0	1	0	0	0	1	77	
.FUNC_END	"vos_dma_configure"

.FUNCTION	"strncpy"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	28	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	28	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	28	
.FUNC_END	"strncpy"

.FUNCTION	"vos_init_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	180	
.FUNC_END	"vos_init_cond_var"

.FUNCTION	"vos_wait_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	181	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	181	
.FUNC_END	"vos_wait_cond_var"

.FUNCTION	"vos_stop_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_stop_profiler"

.FUNCTION	"vos_trylock_mutex"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	133	
.FUNC_END	"vos_trylock_mutex"

.FUNCTION	"vos_free"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"ptrFree"	16 "void"	0	1	0	0	0	1	25	
.FUNC_END	"vos_free"

.FUNCTION	"vos_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"quantum"	8 "char"	0	0	0	0	0	0	52	
.PARAMETER	"tick_cnt"	16 "short"	0	0	0	0	0	0	52	
.PARAMETER	"num_devices"	8 "char"	0	0	0	0	0	0	52	
.FUNC_END	"vos_init"

.FUNCTION	"vos_gpio_read_port"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	121	
.PARAMETER	"val"	16 "char"	0	1	0	0	0	1	121	
.FUNC_END	"vos_gpio_read_port"

.FUNCTION	"vos_gpio_write_all"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vals"	16 "_vos_gpio_t"	0	1	0	0	0	1	126	
.FUNC_END	"vos_gpio_write_all"

.FUNCTION	"vos_set_idle_thread_tcb_size"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb_size"	16 "short"	0	0	0	0	0	0	100	
.FUNC_END	"vos_set_idle_thread_tcb_size"

.FUNCTION	"vos_init_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"sem"	16 "_vos_semaphore_t"	0	1	0	0	0	1	164	
.PARAMETER	"count"	16 "short"	1	0	0	0	0	0	164	
.FUNC_END	"vos_init_semaphore"

.FUNCTION	"vos_wait_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	165	
.FUNC_END	"vos_wait_semaphore"

.FUNCTION	"vos_gpio_write_pin"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	124	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	124	
.FUNC_END	"vos_gpio_write_pin"

.FUNCTION	"vos_start_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_start_profiler"

.FUNCTION	"vos_gpio_enable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"intType"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	128	
.FUNC_END	"vos_gpio_enable_int"

.FUNCTION	"vos_signal_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	182	
.FUNC_END	"vos_signal_cond_var"

.FUNCTION	"PS2KB_write"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"data"	8 "char"	0	0	0	0	0	0	35	
.FUNC_END	"PS2KB_write"



.TEXT


.WEAK	"vos_dma_get_fifo_flow_control"

.WEAK	"vos_start_scheduler"

.WEAK	"PS2dev_read"

.WEAK	"vos_gpio_write_port"

.WEAK	"vos_signal_semaphore_from_isr"

.WEAK	"PS2dev_init"

.WEAK	"vos_malloc"

.WEAK	"vos_create_thread_ex"

.WEAK	"vos_memcpy"

.WEAK	"vos_memset"

.WEAK	"vos_get_kernel_clock"

.WEAK	"vos_gpio_disable_int"

.WEAK	"vos_get_package_type"

.WEAK	"vos_dma_get_fifo_data_register"

.WEAK	"vos_signal_semaphore"

.WEAK	"vos_gpio_wait_on_int"

.WEAK	"vos_dma_get_fifo_data"

.WEAK	"PS2dev_write"

.WEAK	"vos_iocell_get_config"

.WEAK	"vos_iomux_define_bidi"

.WEAK	"vos_gpio_set_all_mode"

.WEAK	"vos_iocell_set_config"

.WEAK	"vos_gpio_set_pin_mode"

.WEAK	"vos_get_chip_revision"

.WEAK	"vos_wait_semaphore_ex"

.WEAK	"vos_enable_interrupts"

.WEAK	"vos_dev_read"

.WEAK	"PS2dev_unlock"

.WEAK	"vos_dev_open"

.WEAK	"vos_halt_cpu"

.WEAK	"vos_dev_init"

.WEAK	"vos_dma_get_fifo_count"

.WEAK	"vos_reset_kernel_clock"

.WEAK	"vos_gpio_set_port_mode"

.WEAK	"vos_iomux_define_input"

.WEAK	"vos_disable_interrupts"

.WEAK	"PS2dev_write_c"

.WEAK	"vos_get_idle_thread_tcb"

.WEAK	"vos_dma_reset"

.WEAK	"vos_dev_close"

.WEAK	"vos_wdt_clear"

.WEAK	"vos_heap_size"

.WEAK	"vos_dev_ioctl"

.WEAK	"vos_dev_write"

.WEAK	"vos_get_clock_frequency"

.WEAK	"vos_set_clock_frequency"

.WEAK	"vos_dma_enable"

.WEAK	"vos_reset_vnc2"

.WEAK	"vos_heap_space"

.WEAK	"vos_iomux_define_output"

.WEAK	"vos_wdt_enable"

.WEAK	"LED_ON"

.WEAK	"PS2dev_host_req"

.WEAK	"vos_dma_wait_on_complete"

.WEAK	"vos_lock_mutex"

.WEAK	"vos_power_down"

.WEAK	"vos_init_mutex"

.WEAK	"vos_gpio_wait_on_any_int"

.WEAK	"LED_OFF"

.WEAK	"vos_get_priority_ceiling"

.WEAK	"vos_dma_disable"

.WEAK	"vos_set_priority_ceiling"

.WEAK	"vos_dma_release"

.WEAK	"vos_iomux_disable_output"

.WEAK	"vos_dma_acquire"

.WEAK	"vos_delay_msecs"

.WEAK	"vos_stack_usage"

.WEAK	"vos_get_profile"

.WEAK	"vos_gpio_wait_on_all_ints"

.WEAK	"number"

.WEAK	"vos_delay_cancel"

.WEAK	"memset"

.WEAK	"memcpy"

.WEAK	"strcat"

.WEAK	"strlen"

.WEAK	"strcmp"

.WEAK	"strcpy"

.WEAK	"vos_dma_retained_configure"

.WEAK	"vos_unlock_mutex"

.WEAK	"message"

.WEAK	"vos_gpio_read_all"

.WEAK	"vos_create_thread"

.WEAK	"vos_gpio_read_pin"

.WEAK	"strncmp"

.WEAK	"vos_dma_configure"

.WEAK	"strncpy"

.WEAK	"vos_init_cond_var"

.WEAK	"vos_wait_cond_var"

.WEAK	"vos_stop_profiler"

.WEAK	"vos_trylock_mutex"

.WEAK	"vos_free"

.WEAK	"vos_init"

.WEAK	"vos_gpio_read_port"

.WEAK	"vos_gpio_write_all"

.WEAK	"vos_set_idle_thread_tcb_size"

.WEAK	"vos_init_semaphore"

.WEAK	"vos_wait_semaphore"

.WEAK	"vos_gpio_write_pin"

.WEAK	"vos_start_profiler"

.WEAK	"vos_gpio_enable_int"

.WEAK	"vos_signal_cond_var"

.WEAK	"PS2KB_write"

.LINE	68
SET_BIT:	
.GLOBAL	 DO_NOT_EXPORT  "SET_BIT"

.FUNCTION	"SET_BIT"	
.RETURN "void"	0	0	0	13	0	0	0	
.PARAMETER	"wBYTE"	16 "short"	0	1	13	0	0	1	68	
.PARAMETER	"wBIT"	8 "char"	0	0	15	0	0	0	68	
SP_DEC	$10
.LINE	70
SP_RD16	%ecx	$13
SP_WR16	%ecx	$0
SP_STORE	%ecx
ADD16	%ecx	$2
SP_RD8	%ebx	$15
AND32	%ebx	$255
LD32	%eax	$1
SHL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$6
SP_RD16	%eax	$0
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$6
SP_STORE	%ebx
ADD16	%ebx	$2
OR16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$0
SP_STORE	%eax
ADD16	%eax	$8
CPY16	(%ecx)	(%eax)
.LINE	70
SP_INC	$10
RTS	
.FUNC_END	"SET_BIT"

.LINE	78
CHECK_BIT:	
.GLOBAL	 DO_NOT_EXPORT  "CHECK_BIT"

.FUNCTION	"CHECK_BIT"	
.RETURN "char"	8	1	0	10	0	0	0	
.PARAMETER	"wBYTE"	16 "short"	0	0	11	0	0	0	78	
.PARAMETER	"wBIT"	8 "char"	0	0	13	0	0	0	78	
SP_DEC	$7
.LINE	80
SP_STORE	%ecx
SP_STORE	%eax
ADD16	%eax	$11
SP_RD8	%ebx	$13
AND16	%ebx	$255
SHR16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$2
SP_RD16	%eax	$0
AND32	%eax	$65535
LD32	%ebx	$1
AND32	(%ecx)	%eax	%ebx
SP_RD16	%ecx	$2
SP_WR16	%ecx	$11
.LINE	81
SP_RD8	%ecx	$11
SP_WR8	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$6
SP_STORE	%ecx
ADD16	%ecx	$10
CPY8	(%ecx)	(%eax)
SP_INC	$7
RTS	
.FUNC_END	"CHECK_BIT"

.LINE	84
PS2_keyboard_init:	
.GLOBAL	 DO_NOT_EXPORT  "PS2_keyboard_init"

.FUNCTION	"PS2_keyboard_init"	
.RETURN "void"	0	0	0	25	0	0	0	
.PARAMETER	"pPS2_keyboard"	16 "__unnamed_struct_1"	0	1	25	0	0	1	84	
SP_DEC	$22
.LINE	86
SP_STORE	%ecx
SP_STORE	%eax
ADD16	%eax	$25
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$2
SP_RD16	%eax	$0
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$4
SP_STORE	%eax
ADD16	%eax	$2
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$4
LD8	(%ecx)	$0
.LINE	87
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$25
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$8
SP_RD16	%eax	$6
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
PUSH16	$28
PUSH32	$255
SP_RD16	%eax	$16
PUSH16	%eax
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$20
SP_INC	$8
.LINE	88
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$25
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$16
SP_RD16	%eax	$14
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$16
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
PUSH16	$14
PUSH32	$0
SP_RD16	%eax	$24
PUSH16	%eax
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$28
SP_INC	$8
.LINE	88
SP_INC	$22
RTS	
.FUNC_END	"PS2_keyboard_init"

.LINE	92
KBParse:	
.GLOBAL	 DO_NOT_EXPORT  "KBParse"

.VARIABLE	"eol"	16	"char"	1	1	4	0	0	1	103	
.VARIABLE	"test"	16	"short"	0	0	6	0	0	0	98	
.VARIABLE	"x"	8	"char"	0	0	8	0	0	0	97	
.VARIABLE	"i"	8	"char"	1	0	19	0	0	0	94	
.VARIABLE	"fkeys_buf"	64	"char"	0	0	63	1	1	0	99	
.VARIABLE	"j"	8	"char"	0	0	116	0	0	0	95	
.VARIABLE	"n"	8	"char"	1	0	170	0	0	0	96	
.FUNCTION	"KBParse"	
.RETURN "int"	32	1	0	442	0	0	0	
.PARAMETER	"pPS2_keyboard"	16 "__unnamed_struct_1"	0	1	446	0	0	1	92	
SP_DEC	$255
SP_DEC	$184
.LINE	103
SP_STORE	%ecx
LD32	(%ecx)	$Str@0
SP_RD16	%ecx	$0
SP_WR16	%ecx	$4
.LINE	106
LD16	%ecx	$0
SP_WR16	%ecx	$6
.LINE	107
LD8	%ecx	$0
SP_WR8	%ecx	$8
.LINE	108
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$11
SP_RD16	%eax	$9
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$0
.LINE	111
SP_STORE	%ecx
ADD16	%ecx	$15
LD32	(%ecx)	$Str@1
SP_RD16	%eax	$15
PUSH16	%eax
CALL	message
SP_INC	$2
LD8	%ecx	$0
SP_WR8	%ecx	$19
@IC1:	
SP_RD8	%ecx	$19
CMP8	%ecx	$14
JLT	@IC3
JUMP	@IC2
@IC3:	
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$22
SP_RD16	%eax	$20
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$22
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$26
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$24
SP_STORE	%ebx
ADD16	%ebx	$26
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$32
SP_RD16	%eax	$30
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$32
PUSH8	%eax
CALL	number
SP_INC	$1
SP_STORE	%ecx
ADD16	%ecx	$33
LD32	(%ecx)	$Str@2
SP_RD16	%eax	$33
PUSH16	%eax
CALL	message
SP_INC	$2
@IC4:	
SP_RD8	%ecx	$19
SP_WR8	%ecx	$37
SP_STORE	%eax
ADD16	%eax	$19
INC8	(%eax)	$1
JUMP	@IC1
@IC2:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	114
LD8	%ecx	$0
SP_WR8	%ecx	$19
@IC7:	
SP_RD8	%ecx	$19
CMP8	%ecx	$8
JLT	@IC9
JUMP	@IC8
@IC9:	
.LINE	115
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$40
SP_RD16	%eax	$38
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$40
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$44
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$42
SP_STORE	%ebx
ADD16	%ebx	$44
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$50
SP_RD16	%eax	$48
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$51
SP_RD8	%ebx	$19
AND32	%ebx	$255
LD32	%eax	$1
SHL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$55
SP_STORE	%eax
ADD16	%eax	$50
SP_STORE	%ebx
ADD16	%ebx	$51
CPY8	%eax	(%eax)
AND32	%eax	$255
AND32	(%ecx)	%eax	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$55
CMP32	(%ecx)	$0
JNZ	@IC15
JUMP	@IC14
@IC15:	
.LINE	116
SP_STORE	%ecx
ADD16	%ecx	$59
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$73
SP_STORE	%eax
ADD16	%eax	$71
SP_STORE	%ebx
ADD16	%ebx	$59
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$75
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$79
LD16	(%ecx)	$Fkeys
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$79
SP_STORE	%ebx
ADD16	%ebx	$75
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$83
SP_RD16	%eax	$81
CPY8	(%ecx)	(%eax)
SP_RD16	%ecx	$73
SP_STORE	%eax
ADD16	%eax	$83
CPY8	(%ecx)	(%eax)
JUMP	@IC13
@IC14:	
.LINE	118
SP_STORE	%ecx
ADD16	%ecx	$84
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$88
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$90
SP_STORE	%eax
ADD16	%eax	$88
SP_STORE	%ebx
ADD16	%ebx	$84
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$90
LD8	(%ecx)	$0
@IC13:	
.LINE	121
SP_STORE	%ecx
ADD16	%ecx	$92
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$96
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$98
SP_STORE	%eax
ADD16	%eax	$96
SP_STORE	%ebx
ADD16	%ebx	$92
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$100
SP_RD16	%eax	$98
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$101
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$103
SP_RD16	%eax	$101
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$105
SP_STORE	%eax
ADD16	%eax	$103
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$107
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$111
SP_STORE	%eax
ADD16	%eax	$105
SP_STORE	%ebx
ADD16	%ebx	$107
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$113
SP_RD16	%eax	$111
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$100
SP_STORE	%eax
ADD16	%eax	$113
CMP8	(%ecx)	(%eax)
JZ	@IC17
JNZ	@IC16
@IC17:	
.LINE	122
SP_STORE	%ecx
ADD16	%ecx	$114
SP_STORE	%eax
ADD16	%eax	$6
CPY16	(%ecx)	%eax
SP_RD16	%eax	$19
PUSH8	%eax
SP_RD16	%eax	$115
PUSH16	%eax
CALL	SET_BIT
SP_INC	$3
@IC16:	
.LINE	125
SP_RD8	%ecx	$19
CMP8	%ecx	$6
JLT	@IC21
JUMP	@IC20
@IC21:	
.LINE	126
LD8	%ecx	$2
SP_WR8	%ecx	$116
@IC24:	
SP_RD8	%ecx	$116
CMP8	%ecx	$8
JLT	@IC26
JUMP	@IC25
@IC26:	
.LINE	127
SP_STORE	%ecx
ADD16	%ecx	$117
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$119
SP_RD16	%eax	$117
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$121
SP_STORE	%eax
ADD16	%eax	$119
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$123
SP_RD8	%eax	$116
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$127
SP_STORE	%eax
ADD16	%eax	$121
SP_STORE	%ebx
ADD16	%ebx	$123
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$129
SP_RD16	%eax	$127
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$130
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$132
SP_RD16	%eax	$130
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$134
SP_STORE	%eax
ADD16	%eax	$132
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$136
SP_RD8	%ebx	$19
AND32	%ebx	$255
LD32	%eax	$8
ADD32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$140
SP_STORE	%eax
ADD16	%eax	$136
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$144
SP_STORE	%eax
ADD16	%eax	$134
SP_STORE	%ebx
ADD16	%ebx	$140
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$146
SP_RD16	%eax	$144
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$129
SP_STORE	%eax
ADD16	%eax	$146
CMP8	(%ecx)	(%eax)
JZ	@IC31
JNZ	@IC30
@IC31:	
.LINE	128
SP_STORE	%ecx
ADD16	%ecx	$147
SP_STORE	%eax
ADD16	%eax	$6
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$149
SP_RD8	%ebx	$19
AND32	%ebx	$255
LD32	%eax	$8
ADD32	(%ecx)	%eax	%ebx
SP_RD16	%eax	$149
PUSH8	%eax
SP_RD16	%eax	$148
PUSH16	%eax
CALL	SET_BIT
SP_INC	$3
.LINE	129
LD8	%ecx	$8
SP_WR8	%ecx	$116
@IC30:	
@IC27:	
.LINE	126
SP_RD8	%ecx	$116
SP_WR8	%ecx	$153
SP_STORE	%eax
ADD16	%eax	$116
INC8	(%eax)	$1
JUMP	@IC24
@IC25:	
@IC20:	
@IC10:	
.LINE	114
SP_RD8	%ecx	$19
SP_WR8	%ecx	$154
SP_STORE	%eax
ADD16	%eax	$19
INC8	(%eax)	$1
JUMP	@IC7
@IC8:	
.LINE	136
LD8	%ecx	$0
SP_WR8	%ecx	$19
@IC34:	
SP_RD8	%ecx	$19
CMP8	%ecx	$14
JLT	@IC36
JUMP	@IC35
@IC36:	
.LINE	138
SP_RD16	%eax	$19
PUSH8	%eax
SP_RD16	%eax	$7
PUSH16	%eax
SP_DEC	$1
CALL	CHECK_BIT
POP8	%eax
SP_WR8	%eax	$158
SP_INC	$3
SP_RD8	%ecx	$155
CMP8	%ecx	$0
JZ	@IC41
JNZ	@IC40
@IC41:	
.LINE	139
SP_STORE	%ecx
ADD16	%ecx	$156
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$158
SP_RD16	%eax	$156
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$160
SP_STORE	%eax
ADD16	%eax	$158
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$162
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$166
SP_STORE	%eax
ADD16	%eax	$160
SP_STORE	%ebx
ADD16	%ebx	$162
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$168
SP_RD16	%eax	$166
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$168
PUSH8	%eax
SP_DEC	$1
CALL	USB_PS2
POP8	%eax
SP_WR8	%eax	$170
SP_INC	$1
SP_RD8	%ecx	$169
SP_WR8	%ecx	$170
.LINE	141
SP_STORE	%ecx
ADD16	%ecx	$171
LD32	(%ecx)	$Str@3
SP_RD16	%eax	$171
PUSH16	%eax
CALL	message
SP_INC	$2
SP_RD16	%eax	$170
PUSH8	%eax
CALL	number
SP_INC	$1
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	142
SP_RD8	%ecx	$170
CMP8	%ecx	$127
JLT	@IC47
JUMP	@IC45
@IC47:	
SP_RD8	%ecx	$170
CMP8	%ecx	$0
JGT	@IC46
JUMP	@IC45
@IC46:	
.LINE	143
PUSH8	$240
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$176
SP_INC	$1
.LINE	144
SP_RD16	%eax	$170
PUSH8	%eax
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$177
SP_INC	$1
.LINE	146
SP_STORE	%ecx
ADD16	%ecx	$177
LD32	(%ecx)	$Str@4
SP_RD16	%eax	$177
PUSH16	%eax
CALL	message
SP_INC	$2
SP_RD16	%eax	$170
PUSH8	%eax
CALL	number
SP_INC	$1
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
JUMP	@IC44
@IC45:	
.LINE	147
SP_RD8	%ecx	$170
CMP8	%ecx	$128
JGT	@IC53
JUMP	@IC52
@IC53:	
.LINE	148
PUSH8	$224
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$182
SP_INC	$1
.LINE	149
PUSH8	$240
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$183
SP_INC	$1
.LINE	150
SP_STORE	%ecx
ADD16	%ecx	$183
SP_RD8	%eax	$170
AND32	%eax	$255
LD32	%ebx	$128
SUB32	(%ecx)	%eax	%ebx
SP_RD16	%eax	$183
PUSH8	%eax
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$188
SP_INC	$1
.LINE	152
SP_STORE	%ecx
ADD16	%ecx	$188
LD32	(%ecx)	$Str@5
SP_RD16	%eax	$188
PUSH16	%eax
CALL	message
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$192
SP_RD8	%eax	$170
AND32	%eax	$255
LD32	%ebx	$128
SUB32	(%ecx)	%eax	%ebx
SP_RD16	%eax	$192
PUSH8	%eax
CALL	number
SP_INC	$1
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC52:	
@IC44:	
@IC40:	
.LINE	156
SP_RD8	%ecx	$19
CMP8	%ecx	$8
JLT	@IC58
JUMP	@IC57
@IC58:	
.LINE	157
SP_STORE	%ecx
ADD16	%ecx	$196
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$200
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$202
SP_STORE	%eax
ADD16	%eax	$200
SP_STORE	%ebx
ADD16	%ebx	$196
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$204
SP_RD16	%eax	$202
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$204
PUSH8	%eax
SP_DEC	$1
CALL	USB_PS2
POP8	%eax
SP_WR8	%eax	$206
SP_INC	$1
SP_RD8	%ecx	$205
SP_WR8	%ecx	$170
JUMP	@IC56
@IC57:	
.LINE	159
SP_STORE	%ecx
ADD16	%ecx	$206
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$208
SP_RD16	%eax	$206
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$210
SP_STORE	%eax
ADD16	%eax	$208
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$212
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$6
SUB32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$216
SP_STORE	%eax
ADD16	%eax	$212
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$220
SP_STORE	%eax
ADD16	%eax	$210
SP_STORE	%ebx
ADD16	%ebx	$216
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$222
SP_RD16	%eax	$220
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$222
PUSH8	%eax
SP_DEC	$1
CALL	USB_PS2
POP8	%eax
SP_WR8	%eax	$224
SP_INC	$1
SP_RD8	%ecx	$223
SP_WR8	%ecx	$170
@IC56:	
.LINE	162
SP_STORE	%ecx
ADD16	%ecx	$224
LD32	(%ecx)	$Str@6
SP_RD16	%eax	$224
PUSH16	%eax
CALL	message
SP_INC	$2
SP_RD16	%eax	$170
PUSH8	%eax
CALL	number
SP_INC	$1
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	163
SP_RD8	%ecx	$170
CMP8	%ecx	$128
JGT	@IC63
JUMP	@IC62
@IC63:	
.LINE	166
SP_STORE	%ecx
ADD16	%ecx	$228
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$230
SP_RD16	%eax	$228
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$232
SP_STORE	%eax
ADD16	%eax	$230
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$234
SP_RD8	%eax	$8
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$238
SP_STORE	%eax
ADD16	%eax	$232
SP_STORE	%ebx
ADD16	%ebx	$234
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$238
LD8	(%ecx)	$224
SP_RD8	%ecx	$8
SP_WR8	%ecx	$240
SP_STORE	%eax
ADD16	%eax	$8
INC8	(%eax)	$1
.LINE	167
SP_STORE	%ecx
ADD16	%ecx	$241
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$243
SP_RD16	%eax	$241
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$245
SP_STORE	%eax
ADD16	%eax	$243
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$247
SP_RD8	%eax	$8
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$251
SP_STORE	%eax
ADD16	%eax	$245
SP_STORE	%ebx
ADD16	%ebx	$247
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$253
SP_RD8	%eax	$170
AND32	%eax	$255
LD32	%ebx	$128
SUB32	(%ecx)	%eax	%ebx
SP_RD16	%ecx	$251
SP_STORE	%eax
ADD16	%eax	$253
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$257
SP_RD8	%eax	$8
CPY8	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$8
INC8	(%eax)	$1
.LINE	169
SP_STORE	%ecx
ADD16	%ecx	$258
LD32	(%ecx)	$Str@7
SP_STORE	%eax
ADD16	%eax	$258
PUSH16	(%eax)
CALL	message
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$262
SP_RD8	%eax	$170
AND32	%eax	$255
LD32	%ebx	$128
SUB32	(%ecx)	%eax	%ebx
SP_STORE	%eax
ADD16	%eax	$262
PUSH8	(%eax)
CALL	number
SP_INC	$1
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
JUMP	@IC61
@IC62:	
.LINE	170
SP_RD8	%ecx	$170
CMP8	%ecx	$128
JZ	@IC68
JNZ	@IC67
@IC68:	
.LINE	172
SP_STORE	%ecx
ADD16	%ecx	$266
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$268
SP_STORE	%eax
ADD16	%eax	$266
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$270
SP_STORE	%eax
ADD16	%eax	$268
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$272
SP_RD8	%eax	$8
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$276
SP_STORE	%eax
ADD16	%eax	$270
SP_STORE	%ebx
ADD16	%ebx	$272
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$276
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$252
SP_STORE	%ecx
ADD16	%ecx	$278
SP_RD8	%eax	$8
CPY8	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$8
INC8	(%eax)	$1
.LINE	174
SP_STORE	%ecx
ADD16	%ecx	$279
LD32	(%ecx)	$Str@8
SP_STORE	%eax
ADD16	%eax	$279
PUSH16	(%eax)
CALL	message
SP_INC	$2
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
JUMP	@IC66
@IC67:	
.LINE	175
SP_RD8	%ecx	$170
CMP8	%ecx	$127
JLT	@IC72
JUMP	@IC71
@IC72:	
.LINE	177
SP_STORE	%ecx
ADD16	%ecx	$283
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$285
SP_STORE	%eax
ADD16	%eax	$283
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$287
SP_STORE	%eax
ADD16	%eax	$285
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$289
SP_RD8	%eax	$8
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$293
SP_STORE	%eax
ADD16	%eax	$287
SP_STORE	%ebx
ADD16	%ebx	$289
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$293
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$170
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$295
SP_RD8	%eax	$8
CPY8	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$8
INC8	(%eax)	$1
.LINE	179
SP_STORE	%ecx
ADD16	%ecx	$296
LD32	(%ecx)	$Str@9
SP_STORE	%eax
ADD16	%eax	$296
PUSH16	(%eax)
CALL	message
SP_INC	$2
SP_RD16	%eax	$170
PUSH8	%eax
CALL	number
SP_INC	$1
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC71:	
@IC66:	
@IC61:	
.LINE	183
SP_RD8	%ecx	$19
CMP8	%ecx	$8
JLT	@IC77
JUMP	@IC76
@IC77:	
.LINE	184
SP_STORE	%ecx
ADD16	%ecx	$300
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$302
SP_STORE	%eax
ADD16	%eax	$300
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$304
SP_STORE	%eax
ADD16	%eax	$302
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$306
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$310
SP_STORE	%eax
ADD16	%eax	$304
SP_STORE	%ebx
ADD16	%ebx	$306
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$312
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$316
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$318
SP_STORE	%eax
ADD16	%eax	$316
SP_STORE	%ebx
ADD16	%ebx	$312
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$320
SP_STORE	%eax
ADD16	%eax	$318
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$310
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$320
CPY8	(%ecx)	(%eax)
JUMP	@IC75
@IC76:	
.LINE	186
SP_STORE	%ecx
ADD16	%ecx	$321
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$323
SP_STORE	%eax
ADD16	%eax	$321
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$325
SP_STORE	%eax
ADD16	%eax	$323
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$327
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$331
SP_STORE	%eax
ADD16	%eax	$325
SP_STORE	%ebx
ADD16	%ebx	$327
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$333
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$335
SP_STORE	%eax
ADD16	%eax	$333
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$337
SP_STORE	%eax
ADD16	%eax	$335
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$339
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$6
SUB32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$343
SP_STORE	%eax
ADD16	%eax	$339
LD32	%ebx	$1
MUL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$347
SP_STORE	%eax
ADD16	%eax	$337
SP_STORE	%ebx
ADD16	%ebx	$343
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$349
SP_STORE	%eax
ADD16	%eax	$347
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$331
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$349
CPY8	(%ecx)	(%eax)
@IC75:	
@IC37:	
.LINE	136
SP_STORE	%ecx
ADD16	%ecx	$350
SP_RD8	%eax	$19
CPY8	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$19
INC8	(%eax)	$1
JUMP	@IC34
@IC35:	
.LINE	189
SP_STORE	%ecx
ADD16	%ecx	$351
SP_STORE	%eax
ADD16	%eax	$446
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
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$357
SP_RD8	%eax	$8
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$361
SP_STORE	%eax
ADD16	%eax	$355
SP_STORE	%ebx
ADD16	%ebx	$357
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$361
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$255
.LINE	191
SP_STORE	%ecx
ADD16	%ecx	$363
LD32	(%ecx)	$Str@10
SP_STORE	%eax
ADD16	%eax	$363
PUSH16	(%eax)
CALL	message
SP_INC	$2
LD8	%ecx	$0
SP_WR8	%ecx	$19
@IC80:	
SP_RD8	%ecx	$19
CMP8	%ecx	$8
JLT	@IC82
JUMP	@IC81
@IC82:	
SP_STORE	%ecx
ADD16	%ecx	$367
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$371
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$373
SP_STORE	%eax
ADD16	%eax	$371
SP_STORE	%ebx
ADD16	%ebx	$367
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$375
SP_STORE	%eax
ADD16	%eax	$373
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$375
PUSH8	(%eax)
CALL	number
SP_INC	$1
SP_STORE	%ecx
ADD16	%ecx	$376
LD32	(%ecx)	$Str@11
SP_STORE	%eax
ADD16	%eax	$376
PUSH16	(%eax)
CALL	message
SP_INC	$2
@IC83:	
SP_STORE	%ecx
ADD16	%ecx	$380
SP_RD8	%eax	$19
CPY8	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$19
INC8	(%eax)	$1
JUMP	@IC80
@IC81:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	192
SP_STORE	%ecx
ADD16	%ecx	$381
LD32	(%ecx)	$Str@12
SP_STORE	%eax
ADD16	%eax	$381
PUSH16	(%eax)
CALL	message
SP_INC	$2
LD8	%ecx	$0
SP_WR8	%ecx	$19
@IC86:	
SP_RD8	%ecx	$19
CMP8	%ecx	$14
JLT	@IC88
JUMP	@IC87
@IC88:	
SP_STORE	%ecx
ADD16	%ecx	$385
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$387
SP_STORE	%eax
ADD16	%eax	$385
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$389
SP_STORE	%eax
ADD16	%eax	$387
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$391
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$395
SP_STORE	%eax
ADD16	%eax	$389
SP_STORE	%ebx
ADD16	%ebx	$391
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$397
SP_STORE	%eax
ADD16	%eax	$395
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$397
PUSH8	(%eax)
CALL	number
SP_INC	$1
SP_STORE	%ecx
ADD16	%ecx	$398
LD32	(%ecx)	$Str@13
SP_STORE	%eax
ADD16	%eax	$398
PUSH16	(%eax)
CALL	message
SP_INC	$2
@IC89:	
SP_STORE	%ecx
ADD16	%ecx	$402
SP_RD8	%eax	$19
CPY8	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$19
INC8	(%eax)	$1
JUMP	@IC86
@IC87:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	193
SP_STORE	%ecx
ADD16	%ecx	$403
LD32	(%ecx)	$Str@14
SP_STORE	%eax
ADD16	%eax	$403
PUSH16	(%eax)
CALL	message
SP_INC	$2
LD8	%ecx	$0
SP_WR8	%ecx	$19
@IC92:	
SP_RD8	%ecx	$19
CMP8	%ecx	$28
JLT	@IC94
JUMP	@IC93
@IC94:	
SP_STORE	%ecx
ADD16	%ecx	$407
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$409
SP_STORE	%eax
ADD16	%eax	$407
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$411
SP_STORE	%eax
ADD16	%eax	$409
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$413
SP_RD8	%eax	$19
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$417
SP_STORE	%eax
ADD16	%eax	$411
SP_STORE	%ebx
ADD16	%ebx	$413
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$419
SP_STORE	%eax
ADD16	%eax	$417
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$419
PUSH8	(%eax)
CALL	number
SP_INC	$1
SP_STORE	%ecx
ADD16	%ecx	$420
LD32	(%ecx)	$Str@15
SP_STORE	%eax
ADD16	%eax	$420
PUSH16	(%eax)
CALL	message
SP_INC	$2
@IC95:	
SP_STORE	%ecx
ADD16	%ecx	$424
SP_RD8	%eax	$19
CPY8	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$19
INC8	(%eax)	$1
JUMP	@IC92
@IC93:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	194
SP_STORE	%ecx
ADD16	%ecx	$425
LD32	(%ecx)	$Str@16
SP_STORE	%eax
ADD16	%eax	$425
PUSH16	(%eax)
CALL	message
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$429
SP_RD16	%eax	$6
AND32	%eax	$65535
LD32	%ebx	$8
SHR32	(%ecx)	%eax	%ebx
SP_STORE	%eax
ADD16	%eax	$429
CPY8	%ecx	(%eax)
SP_WR8	%ecx	$170
SP_RD16	%eax	$170
PUSH8	%eax
CALL	number
SP_INC	$1
SP_RD8	%ecx	$6
SP_WR8	%ecx	$170
SP_RD16	%eax	$170
PUSH8	%eax
CALL	number
SP_INC	$1
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	196
SP_STORE	%ecx
ADD16	%ecx	$433
SP_STORE	%eax
ADD16	%eax	$446
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$435
SP_STORE	%eax
ADD16	%eax	$433
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$437
SP_STORE	%eax
ADD16	%eax	$435
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$437
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$1
.LINE	197
SP_STORE	%eax
ADD16	%eax	$442
LD32	(%eax)	$0
SP_INC	$255
SP_INC	$184
RTS	
.FUNC_END	"KBParse"

.LINE	200
USB_PS2:	
.GLOBAL	 DO_NOT_EXPORT  "USB_PS2"

.VARIABLE	"PS2_code"	8	"char"	0	0	9	0	0	0	202	
.FUNCTION	"USB_PS2"	
.RETURN "char"	8	0	0	13	0	0	0	
.PARAMETER	"USB_code"	8 "char"	0	0	14	0	0	0	200	
SP_DEC	$10
.LINE	204
SP_STORE	%ecx
ADD16	%ecx	$0
SP_RD8	%eax	$14
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$4
LD16	(%ecx)	$USB_PS2_tb
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$4
SP_STORE	%ebx
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$8
SP_RD16	%eax	$6
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$8
SP_WR8	%ecx	$9
.LINE	205
SP_STORE	%eax
ADD16	%eax	$9
SP_STORE	%ecx
ADD16	%ecx	$13
CPY8	(%ecx)	(%eax)
SP_INC	$10
RTS	
.FUNC_END	"USB_PS2"

