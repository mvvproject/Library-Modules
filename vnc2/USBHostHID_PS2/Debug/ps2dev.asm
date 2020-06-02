.FILE "Debug\ps2dev.c"

.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
GPIO_Lock	.DB	6	?
.GLOBAL	  DO_NOT_EXPORT "GPIO_Lock"
port_data	.DB	1	?
.GLOBAL	  DO_NOT_EXPORT "port_data"
port_mode	.DB	1	?
.GLOBAL	  DO_NOT_EXPORT "port_mode"


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
.STRUCTMEM	"src"	"__unnamed_struct_1"	16	0	0	0	0	0	0	
.STRUCTMEM	"dest"	"__unnamed_struct_2"	16	0	0	0	0	0	0	
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

.UNION	"__unnamed_struct_1"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_1"

.UNION	"__unnamed_struct_2"	16
.UNIONMEM	"io_addr"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"mem_addr"	"char"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_2"

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

.VARIABLE	"GPIO_Lock"	48	"_vos_mutex_t"	0	0	-1	0	0	0	27	
.VARIABLE	"port_data"	8	"char"	1	0	-1	0	0	0	24	
.VARIABLE	"port_mode"	8	"char"	1	0	-1	0	0	0	25	
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
.TYPEDEF	"char"	"PF_IO"
.TYPEDEF	"_vos_cond_var_t"	"vos_cond_var_t"
.TYPEDEF	"void"	"PF_INT"
.TYPEDEF	"char"	"uchar"
.TYPEDEF	"short"	"wchar"
.TYPEDEF	"long"	"ulong"
.TYPEDEF	"void"	"PF_OPEN"
.TYPEDEF	"_vos_semaphore_t"	"vos_semaphore_t"
.TYPEDEF	"void"	"PF_CLOSE"
.TYPEDEF	"char"	"PF_IOCTL"
.TYPEDEF	"char"	"u_char"
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

.FUNCTION	"vos_gpio_write_port"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	125	
.PARAMETER	"val"	8 "char"	0	0	0	0	0	0	125	
.FUNC_END	"vos_gpio_write_port"

.FUNCTION	"vos_signal_semaphore_from_isr"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	168	
.FUNC_END	"vos_signal_semaphore_from_isr"

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

.FUNCTION	"vos_delay_cancel"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	104	
.FUNC_END	"vos_delay_cancel"

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

.FUNCTION	"vos_dma_configure"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	77	
.PARAMETER	"cb"	16 "_vos_dma_config_t"	0	1	0	0	0	1	77	
.FUNC_END	"vos_dma_configure"

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



.TEXT


.WEAK	"vos_dma_get_fifo_flow_control"

.WEAK	"vos_start_scheduler"

.WEAK	"vos_gpio_write_port"

.WEAK	"vos_signal_semaphore_from_isr"

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

.WEAK	"vos_iocell_get_config"

.WEAK	"vos_iomux_define_bidi"

.WEAK	"vos_gpio_set_all_mode"

.WEAK	"vos_iocell_set_config"

.WEAK	"vos_gpio_set_pin_mode"

.WEAK	"vos_get_chip_revision"

.WEAK	"vos_wait_semaphore_ex"

.WEAK	"vos_enable_interrupts"

.WEAK	"vos_dev_read"

.WEAK	"vos_dev_open"

.WEAK	"vos_halt_cpu"

.WEAK	"vos_dev_init"

.WEAK	"vos_dma_get_fifo_count"

.WEAK	"vos_reset_kernel_clock"

.WEAK	"vos_gpio_set_port_mode"

.WEAK	"vos_iomux_define_input"

.WEAK	"vos_disable_interrupts"

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

.WEAK	"vos_dma_wait_on_complete"

.WEAK	"vos_lock_mutex"

.WEAK	"vos_power_down"

.WEAK	"vos_init_mutex"

.WEAK	"vos_gpio_wait_on_any_int"

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

.WEAK	"vos_delay_cancel"

.WEAK	"vos_dma_retained_configure"

.WEAK	"vos_unlock_mutex"

.WEAK	"vos_gpio_read_all"

.WEAK	"vos_create_thread"

.WEAK	"vos_gpio_read_pin"

.WEAK	"vos_dma_configure"

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

.LINE	29
PS2dev_init:	
.GLOBAL	 DO_NOT_EXPORT  "PS2dev_init"

.FUNCTION	"PS2dev_init"	
.RETURN "void"	0	0	0	7	0	0	0	
SP_DEC	$4
.LINE	31
LD8	port_mode	$4
.LINE	32
LD8	port_data	$0
.LINE	33
PUSH8	port_data
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
POP8	%eax
SP_WR8	%eax	$2
SP_INC	$2
.LINE	34
PUSH8	port_mode
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_set_port_mode
POP8	%eax
SP_WR8	%eax	$3
SP_INC	$2
.LINE	36
SP_STORE	%ecx
ADD16	%ecx	$2
LD16	(%ecx)	$GPIO_Lock
PUSH8	$1
SP_RD16	%eax	$3
PUSH16	%eax
CALL	vos_init_mutex
SP_INC	$3
.LINE	36
SP_INC	$4
RTS	
.FUNC_END	"PS2dev_init"

.LINE	39
PS2dev_unlock:	
.GLOBAL	 DO_NOT_EXPORT  "PS2dev_unlock"

.FUNCTION	"PS2dev_unlock"	
.RETURN "void"	0	0	0	5	0	0	0	
SP_DEC	$2
.LINE	41
SP_STORE	%ecx
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$0
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
.LINE	41
SP_INC	$2
RTS	
.FUNC_END	"PS2dev_unlock"

.LINE	45
LED_ON:	
.GLOBAL	 DO_NOT_EXPORT  "LED_ON"

.FUNCTION	"LED_ON"	
.RETURN "void"	0	0	0	12	0	0	0	
SP_DEC	$9
.LINE	47
SP_STORE	%ecx
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$0
PUSH16	%eax
CALL	vos_lock_mutex
SP_INC	$2
.LINE	48
SP_STORE	%ecx
ADD16	%ecx	$2
CPY8	%eax	port_data
SHL32	%eax	$24
SAR32	%eax	$24
LD32	%ebx	$4
OR32	(%ecx)	%eax	%ebx
SP_RD8	port_data	$2
.LINE	49
PUSH8	port_data
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
POP8	%eax
SP_WR8	%eax	$8
SP_INC	$2
.LINE	50
SP_STORE	%ecx
ADD16	%ecx	$7
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$7
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
.LINE	50
SP_INC	$9
RTS	
.FUNC_END	"LED_ON"

.LINE	53
LED_OFF:	
.GLOBAL	 DO_NOT_EXPORT  "LED_OFF"

.FUNCTION	"LED_OFF"	
.RETURN "void"	0	0	0	12	0	0	0	
SP_DEC	$9
.LINE	55
SP_STORE	%ecx
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$0
PUSH16	%eax
CALL	vos_lock_mutex
SP_INC	$2
.LINE	56
SP_STORE	%ecx
ADD16	%ecx	$2
CPY8	%eax	port_data
SHL32	%eax	$24
SAR32	%eax	$24
LD32	%ebx	$-5
AND32	(%ecx)	%eax	%ebx
SP_RD8	port_data	$2
.LINE	57
PUSH8	port_data
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_write_port
POP8	%eax
SP_WR8	%eax	$8
SP_INC	$2
.LINE	58
SP_STORE	%ecx
ADD16	%ecx	$7
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$7
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
.LINE	58
SP_INC	$9
RTS	
.FUNC_END	"LED_OFF"

.LINE	61
delayMicroseconds:	
.GLOBAL	 DO_NOT_EXPORT  "delayMicroseconds"

.FUNCTION	"delayMicroseconds"	
.RETURN "void"	0	0	0	3	0	0	0	
.PARAMETER	"pin"	32 "int"	1	0	3	0	0	0	61	
.LINE	61
RTS	
.FUNC_END	"delayMicroseconds"

.LINE	66
golo:	
.GLOBAL	 DO_NOT_EXPORT  "golo"

.FUNCTION	"golo"	
.RETURN "void"	0	0	0	16	0	0	0	
.PARAMETER	"pin"	32 "int"	1	0	16	0	0	0	66	
SP_DEC	$13
.LINE	68
SP_STORE	%ecx
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$0
PUSH16	%eax
CALL	vos_lock_mutex
SP_INC	$2
.LINE	69
SP_STORE	%ecx
ADD16	%ecx	$2
SP_STORE	%ebx
ADD16	%ebx	$16
LD32	%eax	$1
SHL32	(%ecx)	%eax	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%ebx
ADD16	%ebx	$2
CPY8	%eax	port_mode
SHL32	%eax	$24
SAR32	%eax	$24
OR32	(%ecx)	%eax	(%ebx)
SP_RD8	port_mode	$6
.LINE	70
PUSH8	port_mode
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_set_port_mode
POP8	%eax
SP_WR8	%eax	$12
SP_INC	$2
.LINE	71
SP_STORE	%ecx
ADD16	%ecx	$11
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$11
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
.LINE	71
SP_INC	$13
RTS	
.FUNC_END	"golo"

.LINE	74
gohi:	
.GLOBAL	 DO_NOT_EXPORT  "gohi"

.FUNCTION	"gohi"	
.RETURN "void"	0	0	0	20	0	0	0	
.PARAMETER	"pin"	32 "int"	1	0	20	0	0	0	74	
SP_DEC	$17
.LINE	76
SP_STORE	%ecx
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$0
PUSH16	%eax
CALL	vos_lock_mutex
SP_INC	$2
.LINE	77
SP_STORE	%ecx
ADD16	%ecx	$2
SP_STORE	%ebx
ADD16	%ebx	$20
LD32	%eax	$1
SHL32	(%ecx)	%eax	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$2
INV32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%ebx
ADD16	%ebx	$6
CPY8	%eax	port_mode
SHL32	%eax	$24
SAR32	%eax	$24
AND32	(%ecx)	%eax	(%ebx)
SP_RD8	port_mode	$10
.LINE	78
PUSH8	port_mode
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_set_port_mode
POP8	%eax
SP_WR8	%eax	$16
SP_INC	$2
.LINE	79
SP_STORE	%ecx
ADD16	%ecx	$15
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$15
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
.LINE	79
SP_INC	$17
RTS	
.FUNC_END	"gohi"

.LINE	82
digitalRead:	
.GLOBAL	 DO_NOT_EXPORT  "digitalRead"

.VARIABLE	"data"	8	"char"	1	0	2	0	0	0	84	
.FUNCTION	"digitalRead"	
.RETURN "char"	8	1	0	19	0	0	0	
.PARAMETER	"pin"	32 "int"	1	0	20	0	0	0	82	
SP_DEC	$16
.LINE	85
SP_STORE	%ecx
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$0
PUSH16	%eax
CALL	vos_lock_mutex
SP_INC	$2
.LINE	86
SP_STORE	%ecx
ADD16	%ecx	$3
SP_STORE	%eax
ADD16	%eax	$2
CPY16	(%ecx)	%eax
SP_RD16	%eax	$3
PUSH16	%eax
PUSH8	$0
SP_DEC	$1
CALL	vos_gpio_read_port
POP8	%eax
SP_WR8	%eax	$8
SP_INC	$3
.LINE	87
SP_STORE	%ecx
ADD16	%ecx	$6
LD16	(%ecx)	$GPIO_Lock
SP_RD16	%eax	$6
PUSH16	%eax
CALL	vos_unlock_mutex
SP_INC	$2
.LINE	88
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$2
SP_STORE	%ebx
ADD16	%ebx	$20
CPY8	%eax	(%eax)
SHL32	%eax	$24
SAR32	%eax	$24
SAR32	(%ecx)	%eax	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$8
LD32	%ebx	$1
AND32	(%ecx)	(%eax)	%ebx
SP_RD8	%ecx	$12
SP_WR8	%ecx	$2
.LINE	89
SP_STORE	%eax
ADD16	%eax	$2
SP_STORE	%ecx
ADD16	%ecx	$19
CPY8	(%ecx)	(%eax)
SP_INC	$16
RTS	
.FUNC_END	"digitalRead"

.LINE	95
PS2dev_host_req:	
.GLOBAL	 DO_NOT_EXPORT  "PS2dev_host_req"

.FUNCTION	"PS2dev_host_req"	
.RETURN "char"	8	1	0	5	0	0	0	
SP_DEC	$2
.LINE	97
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$4
SP_INC	$4
SP_RD8	%ecx	$0
CMP8	%ecx	$0
JZ	@IC3
JNZ	@IC4
@IC4:	
PUSH32	$5
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$5
SP_INC	$4
SP_RD8	%ecx	$1
CMP8	%ecx	$0
JZ	@IC3
JNZ	@IC2
@IC3:	
.LINE	98
LD8	%eax	$1
SP_WR8	%eax	$5
SP_INC	$2
RTS	
JUMP	@IC1
@IC2:	
.LINE	101
LD8	%eax	$0
SP_WR8	%eax	$5
SP_INC	$2
RTS	
@IC1:	
.LINE	101
SP_INC	$2
RTS	
.FUNC_END	"PS2dev_host_req"

.LINE	106
PS2dev_write:	
.GLOBAL	 DO_NOT_EXPORT  "PS2dev_write"

.VARIABLE	"parity"	8	"char"	0	0	0	0	0	0	109	
.VARIABLE	"i"	8	"char"	1	0	4	0	0	0	108	
.FUNCTION	"PS2dev_write"	
.RETURN "char"	8	1	0	28	0	0	0	
.PARAMETER	"data"	8 "char"	0	0	29	0	0	0	106	
SP_DEC	$25
.LINE	109
LD8	%ecx	$1
SP_WR8	%ecx	$0
.LINE	115
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$5
SP_INC	$4
SP_RD8	%ecx	$1
CMP8	%ecx	$0
JZ	@IC10
JNZ	@IC9
@IC10:	
.LINE	116
LD8	%eax	$-1
SP_WR8	%eax	$28
SP_INC	$25
RTS	
@IC9:	
.LINE	119
PUSH32	$5
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$6
SP_INC	$4
SP_RD8	%ecx	$2
CMP8	%ecx	$0
JZ	@IC14
JNZ	@IC13
@IC14:	
.LINE	120
LD8	%eax	$-2
SP_WR8	%eax	$28
SP_INC	$25
RTS	
@IC13:	
.LINE	123
PUSH32	$5
CALL	golo
SP_INC	$4
.LINE	124
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	127
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$7
SP_INC	$4
SP_RD8	%ecx	$3
CMP8	%ecx	$0
JZ	@IC18
JNZ	@IC17
@IC18:	
@IC17:	
.LINE	130
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	132
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	133
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	134
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	136
LD8	%ecx	$0
SP_WR8	%ecx	$4
@IC21:	
SP_RD8	%ecx	$4
CMP8	%ecx	$8
JLT	@IC23
JUMP	@IC22
@IC23:	
.LINE	138
SP_STORE	%ecx
ADD16	%ecx	$5
SP_RD8	%eax	$29
AND32	%eax	$255
LD32	%ebx	$1
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$5
CMP32	(%ecx)	$0
JNZ	@IC29
JUMP	@IC28
@IC29:	
.LINE	140
PUSH32	$5
CALL	gohi
SP_INC	$4
JUMP	@IC27
@IC28:	
.LINE	142
PUSH32	$5
CALL	golo
SP_INC	$4
@IC27:	
.LINE	144
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	146
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$13
SP_INC	$4
SP_RD8	%ecx	$9
CMP8	%ecx	$0
JZ	@IC31
JNZ	@IC30
@IC31:	
@IC30:	
.LINE	149
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	151
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	152
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	153
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	155
SP_STORE	%ecx
ADD16	%ecx	$10
SP_RD8	%eax	$29
AND32	%eax	$255
LD32	%ebx	$1
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$14
SP_STORE	%eax
ADD16	%eax	$0
SP_STORE	%ebx
ADD16	%ebx	$10
CPY8	%eax	(%eax)
AND32	%eax	$255
XOR32	(%ecx)	%eax	(%ebx)
SP_RD8	%ecx	$14
SP_WR8	%ecx	$0
.LINE	156
SP_STORE	%ecx
ADD16	%ecx	$18
SP_RD8	%eax	$29
AND32	%eax	$255
LD32	%ebx	$1
SHR32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$18
SP_WR8	%ecx	$29
@IC24:	
.LINE	136
SP_RD8	%ecx	$4
SP_WR8	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$4
INC8	(%eax)	$1
JUMP	@IC21
@IC22:	
.LINE	159
SP_RD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC36
JUMP	@IC35
@IC36:	
.LINE	161
PUSH32	$5
CALL	gohi
SP_INC	$4
JUMP	@IC34
@IC35:	
.LINE	163
PUSH32	$5
CALL	golo
SP_INC	$4
@IC34:	
.LINE	165
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	167
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$27
SP_INC	$4
SP_RD8	%ecx	$23
CMP8	%ecx	$0
JZ	@IC38
JNZ	@IC37
@IC38:	
@IC37:	
.LINE	170
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	172
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	173
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	174
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	177
PUSH32	$5
CALL	gohi
SP_INC	$4
.LINE	178
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	180
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$28
SP_INC	$4
SP_RD8	%ecx	$24
CMP8	%ecx	$0
JZ	@IC42
JNZ	@IC41
@IC42:	
@IC41:	
.LINE	183
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	185
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	186
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	187
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	189
PUSH32	$100
CALL	delayMicroseconds
SP_INC	$4
.LINE	190
LD8	%eax	$0
SP_WR8	%eax	$28
SP_INC	$25
RTS	
.FUNC_END	"PS2dev_write"

.LINE	193
PS2dev_write_c:	
.GLOBAL	 DO_NOT_EXPORT  "PS2dev_write_c"

.VARIABLE	"parity"	8	"char"	0	0	0	0	0	0	196	
.VARIABLE	"err"	8	"char"	1	0	1	0	0	0	197	
.VARIABLE	"i"	8	"char"	1	0	5	0	0	0	195	
.FUNCTION	"PS2dev_write_c"	
.RETURN "char"	8	1	0	29	0	0	0	
.PARAMETER	"data"	8 "char"	0	0	30	0	0	0	193	
SP_DEC	$26
.LINE	196
LD8	%ecx	$1
SP_WR8	%ecx	$0
.LINE	203
LD8	%ecx	$0
SP_WR8	%ecx	$1
.LINE	205
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$6
SP_INC	$4
SP_RD8	%ecx	$2
CMP8	%ecx	$0
JZ	@IC46
JNZ	@IC45
@IC46:	
.LINE	206
LD8	%eax	$-1
SP_WR8	%eax	$29
SP_INC	$26
RTS	
@IC45:	
.LINE	209
PUSH32	$5
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$7
SP_INC	$4
SP_RD8	%ecx	$3
CMP8	%ecx	$0
JZ	@IC50
JNZ	@IC49
@IC50:	
.LINE	210
LD8	%eax	$-2
SP_WR8	%eax	$29
SP_INC	$26
RTS	
@IC49:	
.LINE	214
PUSH32	$5
CALL	golo
SP_INC	$4
.LINE	215
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	218
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$8
SP_INC	$4
SP_RD8	%ecx	$4
CMP8	%ecx	$0
JZ	@IC54
JNZ	@IC53
@IC54:	
.LINE	219
LD8	%eax	$-1
SP_WR8	%eax	$29
SP_INC	$26
RTS	
@IC53:	
.LINE	221
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	223
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	224
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	225
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	227
LD8	%ecx	$0
SP_WR8	%ecx	$5
@IC57:	
SP_RD8	%ecx	$5
CMP8	%ecx	$8
JLT	@IC59
JUMP	@IC58
@IC59:	
.LINE	229
SP_STORE	%ecx
ADD16	%ecx	$6
SP_RD8	%eax	$30
AND32	%eax	$255
LD32	%ebx	$1
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$6
CMP32	(%ecx)	$0
JNZ	@IC65
JUMP	@IC64
@IC65:	
.LINE	231
PUSH32	$5
CALL	gohi
SP_INC	$4
JUMP	@IC63
@IC64:	
.LINE	233
PUSH32	$5
CALL	golo
SP_INC	$4
@IC63:	
.LINE	235
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	237
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$14
SP_INC	$4
SP_RD8	%ecx	$10
CMP8	%ecx	$0
JZ	@IC67
JNZ	@IC66
@IC67:	
.LINE	238
LD8	%eax	$-1
SP_WR8	%eax	$29
SP_INC	$26
RTS	
@IC66:	
.LINE	240
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	242
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	243
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	244
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	246
SP_STORE	%ecx
ADD16	%ecx	$11
SP_RD8	%eax	$30
AND32	%eax	$255
LD32	%ebx	$1
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$0
SP_STORE	%ebx
ADD16	%ebx	$11
CPY8	%eax	(%eax)
AND32	%eax	$255
XOR32	(%ecx)	%eax	(%ebx)
SP_RD8	%ecx	$15
SP_WR8	%ecx	$0
.LINE	247
SP_STORE	%ecx
ADD16	%ecx	$19
SP_RD8	%eax	$30
AND32	%eax	$255
LD32	%ebx	$1
SHR32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$19
SP_WR8	%ecx	$30
@IC60:	
.LINE	227
SP_RD8	%ecx	$5
SP_WR8	%ecx	$23
SP_STORE	%eax
ADD16	%eax	$5
INC8	(%eax)	$1
JUMP	@IC57
@IC58:	
.LINE	250
SP_RD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC72
JUMP	@IC71
@IC72:	
.LINE	252
PUSH32	$5
CALL	gohi
SP_INC	$4
JUMP	@IC70
@IC71:	
.LINE	254
PUSH32	$5
CALL	golo
SP_INC	$4
@IC70:	
.LINE	256
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	258
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$28
SP_INC	$4
SP_RD8	%ecx	$24
CMP8	%ecx	$0
JZ	@IC74
JNZ	@IC73
@IC74:	
.LINE	259
LD8	%eax	$-1
SP_WR8	%eax	$29
SP_INC	$26
RTS	
@IC73:	
.LINE	261
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	263
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	264
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	265
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	268
PUSH32	$5
CALL	gohi
SP_INC	$4
.LINE	269
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	271
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$29
SP_INC	$4
SP_RD8	%ecx	$25
CMP8	%ecx	$0
JZ	@IC78
JNZ	@IC77
@IC78:	
.LINE	272
LD8	%eax	$-1
SP_WR8	%eax	$29
SP_INC	$26
RTS	
@IC77:	
.LINE	274
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	276
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	277
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	278
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	280
PUSH32	$100
CALL	delayMicroseconds
SP_INC	$4
.LINE	281
LD8	%eax	$0
SP_WR8	%eax	$29
SP_INC	$26
RTS	
.FUNC_END	"PS2dev_write_c"

.LINE	285
PS2dev_read:	
.GLOBAL	 DO_NOT_EXPORT  "PS2dev_read"

.VARIABLE	"data"	8	"char"	0	0	0	0	0	0	287	
.VARIABLE	"bit"	8	"char"	0	0	1	0	0	0	289	
.VARIABLE	"parity"	8	"char"	0	0	2	0	0	0	291	
.VARIABLE	"i"	8	"char"	1	0	8	0	0	0	288	
.FUNCTION	"PS2dev_read"	
.RETURN "char"	8	1	0	32	0	0	0	
.PARAMETER	"value"	16 "char"	0	1	33	0	0	1	285	
SP_DEC	$29
.LINE	287
LD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	289
LD8	%ecx	$1
SP_WR8	%ecx	$1
.LINE	291
LD8	%ecx	$1
SP_WR8	%ecx	$2
@IC81:	
.LINE	294
PUSH32	$5
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$7
SP_INC	$4
SP_RD8	%ecx	$3
CMP8	%ecx	$1
JZ	@IC83
JNZ	@IC82
@IC83:	
.LINE	295
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$8
SP_INC	$4
SP_RD8	%ecx	$4
CMP8	%ecx	$1
JZ	@IC87
JNZ	@IC86
@IC87:	
.LINE	296
SP_RD16	%ecx	$33
SP_WR16	%ecx	$5
SP_RD16	%ecx	$5
LD8	(%ecx)	$0
.LINE	297
LD8	%eax	$0
SP_WR8	%eax	$32
SP_INC	$29
RTS	
@IC86:	
.LINE	294
JUMP	@IC81
@IC82:	
@IC90:	
.LINE	301
PUSH32	$4
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$11
SP_INC	$4
SP_RD8	%ecx	$7
CMP8	%ecx	$0
JZ	@IC92
JNZ	@IC91
@IC92:	
JUMP	@IC90
@IC91:	
.LINE	304
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	305
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	306
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	307
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	308
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	310
LD8	%ecx	$0
SP_WR8	%ecx	$8
@IC95:	
SP_RD8	%ecx	$8
CMP8	%ecx	$8
JLT	@IC97
JUMP	@IC96
@IC97:	
.LINE	312
PUSH32	$5
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$13
SP_INC	$4
SP_RD8	%ecx	$9
CMP8	%ecx	$1
JZ	@IC103
JNZ	@IC102
@IC103:	
.LINE	314
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
SP_STORE	%ebx
ADD16	%ebx	$1
CPY8	%eax	(%eax)
CPY8	%ebx	(%ebx)
AND32	%eax	$255
AND32	%ebx	$255
OR32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$10
SP_WR8	%ecx	$0
JUMP	@IC101
@IC102:	
@IC101:	
.LINE	319
SP_STORE	%ecx
ADD16	%ecx	$14
SP_RD8	%eax	$1
AND32	%eax	$255
LD32	%ebx	$1
SHL32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$14
SP_WR8	%ecx	$1
.LINE	321
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	322
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	323
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	324
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	325
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	327
SP_STORE	%ecx
ADD16	%ecx	$18
SP_RD8	%eax	$0
AND32	%eax	$255
LD32	%ebx	$1
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$2
SP_STORE	%ebx
ADD16	%ebx	$18
CPY8	%eax	(%eax)
AND32	%eax	$255
XOR32	(%ecx)	%eax	(%ebx)
SP_RD8	%ecx	$22
SP_WR8	%ecx	$2
@IC98:	
.LINE	310
SP_RD8	%ecx	$8
SP_WR8	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$8
INC8	(%eax)	$1
JUMP	@IC95
@IC96:	
.LINE	333
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	334
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	335
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	336
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	337
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	340
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	341
PUSH32	$5
CALL	golo
SP_INC	$4
.LINE	342
PUSH32	$4
CALL	golo
SP_INC	$4
.LINE	343
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	344
PUSH32	$4
CALL	gohi
SP_INC	$4
.LINE	345
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	346
PUSH32	$5
CALL	gohi
SP_INC	$4
.LINE	348
PUSH32	$100
CALL	delayMicroseconds
SP_INC	$4
.LINE	349
SP_RD16	%ecx	$33
SP_WR16	%ecx	$27
SP_RD16	%ecx	$27
SP_STORE	%eax
CPY8	(%ecx)	(%eax)
.LINE	351
LD8	%eax	$0
SP_WR8	%eax	$32
SP_INC	$29
RTS	
.FUNC_END	"PS2dev_read"

.LINE	355
PS2KB_write:	
.GLOBAL	 DO_NOT_EXPORT  "PS2KB_write"

.VARIABLE	"parity"	8	"char"	0	0	0	0	0	0	358	
.VARIABLE	"i"	8	"char"	1	0	3	0	0	0	357	
.FUNCTION	"PS2KB_write"	
.RETURN "char"	8	1	0	24	0	0	0	
.PARAMETER	"data"	8 "char"	0	0	25	0	0	0	355	
SP_DEC	$21
.LINE	358
LD8	%ecx	$1
SP_WR8	%ecx	$0
.LINE	364
PUSH32	$6
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$5
SP_INC	$4
SP_RD8	%ecx	$1
CMP8	%ecx	$0
JZ	@IC107
JNZ	@IC106
@IC107:	
.LINE	365
LD8	%eax	$-1
SP_WR8	%eax	$24
SP_INC	$21
RTS	
@IC106:	
.LINE	368
PUSH32	$7
SP_DEC	$1
CALL	digitalRead
POP8	%eax
SP_WR8	%eax	$6
SP_INC	$4
SP_RD8	%ecx	$2
CMP8	%ecx	$0
JZ	@IC111
JNZ	@IC110
@IC111:	
.LINE	369
LD8	%eax	$-2
SP_WR8	%eax	$24
SP_INC	$21
RTS	
@IC110:	
.LINE	372
PUSH32	$7
CALL	golo
SP_INC	$4
.LINE	373
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	379
PUSH32	$6
CALL	golo
SP_INC	$4
.LINE	381
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	382
PUSH32	$6
CALL	gohi
SP_INC	$4
.LINE	385
LD8	%ecx	$0
SP_WR8	%ecx	$3
@IC114:	
SP_RD8	%ecx	$3
CMP8	%ecx	$8
JLT	@IC116
JUMP	@IC115
@IC116:	
.LINE	387
SP_STORE	%ecx
ADD16	%ecx	$4
SP_RD8	%eax	$25
AND32	%eax	$255
LD32	%ebx	$1
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$4
CMP32	(%ecx)	$0
JNZ	@IC122
JUMP	@IC121
@IC122:	
.LINE	389
PUSH32	$7
CALL	gohi
SP_INC	$4
JUMP	@IC120
@IC121:	
.LINE	391
PUSH32	$7
CALL	golo
SP_INC	$4
@IC120:	
.LINE	398
PUSH32	$6
CALL	golo
SP_INC	$4
.LINE	400
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	401
PUSH32	$6
CALL	gohi
SP_INC	$4
.LINE	404
SP_STORE	%ecx
ADD16	%ecx	$8
SP_RD8	%eax	$25
AND32	%eax	$255
LD32	%ebx	$1
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$0
SP_STORE	%ebx
ADD16	%ebx	$8
CPY8	%eax	(%eax)
AND32	%eax	$255
XOR32	(%ecx)	%eax	(%ebx)
SP_RD8	%ecx	$12
SP_WR8	%ecx	$0
.LINE	405
SP_STORE	%ecx
ADD16	%ecx	$16
SP_RD8	%eax	$25
AND32	%eax	$255
LD32	%ebx	$1
SHR32	(%ecx)	%eax	%ebx
SP_RD8	%ecx	$16
SP_WR8	%ecx	$25
@IC117:	
.LINE	385
SP_RD8	%ecx	$3
SP_WR8	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$3
INC8	(%eax)	$1
JUMP	@IC114
@IC115:	
.LINE	408
SP_RD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC125
JUMP	@IC124
@IC125:	
.LINE	410
PUSH32	$7
CALL	gohi
SP_INC	$4
JUMP	@IC123
@IC124:	
.LINE	412
PUSH32	$7
CALL	golo
SP_INC	$4
@IC123:	
.LINE	414
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	419
PUSH32	$6
CALL	golo
SP_INC	$4
.LINE	421
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	422
PUSH32	$6
CALL	gohi
SP_INC	$4
.LINE	423
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	426
PUSH32	$7
CALL	gohi
SP_INC	$4
.LINE	427
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	432
PUSH32	$6
CALL	golo
SP_INC	$4
.LINE	434
PUSH32	$40
CALL	delayMicroseconds
SP_INC	$4
.LINE	435
PUSH32	$6
CALL	gohi
SP_INC	$4
.LINE	436
PUSH32	$20
CALL	delayMicroseconds
SP_INC	$4
.LINE	438
PUSH32	$100
CALL	delayMicroseconds
SP_INC	$4
.LINE	439
LD8	%eax	$0
SP_WR8	%eax	$24
SP_INC	$21
RTS	
.FUNC_END	"PS2KB_write"

