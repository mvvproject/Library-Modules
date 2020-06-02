.FILE "Debug\ps2_mouse.c"

.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"


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

.STRUCT	"_PS2_mouse_t"	112
.STRUCTMEM	"conected"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"new_data"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Button"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Xpos"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"Ypos"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"Wheel"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"StreamMode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"DataRepEN"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Resolution"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"SampleRate"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"PrevCMD"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_PS2_mouse_t"

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

.TYPEDEF	"_HIDParser_t"	"HIDParser_t"
.TYPEDEF	"_PS2_mouse_t"	"PS2_mouse_t"
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

.WEAK	"PS2KB_write"

.LINE	7
PS2_mouse_init:	
.GLOBAL	 DO_NOT_EXPORT  "PS2_mouse_init"

.FUNCTION	"PS2_mouse_init"	
.RETURN "void"	0	0	0	63	0	0	0	
.PARAMETER	"PS2_mouse"	16 "_PS2_mouse_t"	0	1	63	0	0	1	7	
SP_DEC	$60
.LINE	8
SP_STORE	%ecx
SP_STORE	%eax
ADD16	%eax	$63
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
.LINE	9
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$8
SP_RD16	%eax	$6
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$10
SP_STORE	%eax
ADD16	%eax	$8
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$10
LD8	(%ecx)	$0
.LINE	10
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$14
SP_RD16	%eax	$12
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$14
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$16
LD16	(%ecx)	$0
.LINE	11
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$20
SP_RD16	%eax	$18
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$20
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$22
LD16	(%ecx)	$0
.LINE	12
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$26
SP_RD16	%eax	$24
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$26
LD16	%ebx	$7
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$28
LD16	(%ecx)	$0
.LINE	14
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$32
SP_RD16	%eax	$30
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$32
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$34
LD8	(%ecx)	$1
.LINE	15
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$38
SP_RD16	%eax	$36
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$38
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$40
LD8	(%ecx)	$0
.LINE	16
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$44
SP_RD16	%eax	$42
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$46
SP_STORE	%eax
ADD16	%eax	$44
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$46
LD8	(%ecx)	$0
.LINE	17
SP_STORE	%ecx
ADD16	%ecx	$48
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$50
SP_RD16	%eax	$48
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$50
LD16	%ebx	$11
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$52
LD8	(%ecx)	$0
.LINE	18
SP_STORE	%ecx
ADD16	%ecx	$54
SP_STORE	%eax
ADD16	%eax	$63
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$56
SP_RD16	%eax	$54
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$58
SP_STORE	%eax
ADD16	%eax	$56
LD16	%ebx	$12
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$58
LD8	(%ecx)	$20
.LINE	18
SP_INC	$60
RTS	
.FUNC_END	"PS2_mouse_init"

.LINE	23
ack:	
.GLOBAL	 DO_NOT_EXPORT  "ack"

.FUNCTION	"ack"	
.RETURN "void"	0	0	0	4	0	0	0	
SP_DEC	$1
@IC1:	
.LINE	24
PUSH8	$250
SP_DEC	$1
CALL	PS2dev_write
POP8	%eax
SP_WR8	%eax	$1
SP_INC	$1
SP_RD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC3
JZ	@IC2
@IC3:	
JUMP	@IC1
@IC2:	
.LINE	24
SP_INC	$1
RTS	
.FUNC_END	"ack"

.LINE	27
MS_wr_packet:	
.GLOBAL	 DO_NOT_EXPORT  "MS_wr_packet"

.VARIABLE	"overflowx"	8	"char"	1	0	0	0	0	0	28	
.VARIABLE	"overflowy"	8	"char"	1	0	1	0	0	0	29	
.VARIABLE	"data"	24	"char"	1	0	44	1	1	0	30	
.FUNCTION	"MS_wr_packet"	
.RETURN "char"	8	1	0	253	0	0	0	
.PARAMETER	"PS2_mouse"	16 "_PS2_mouse_t"	0	1	254	0	0	1	27	
SP_DEC	$250
.LINE	28
LD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	29
LD8	%ecx	$0
SP_WR8	%ecx	$1
.LINE	51
SP_STORE	%ecx
ADD16	%ecx	$2
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$4
SP_RD16	%eax	$2
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$4
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$10
SP_RD16	%eax	$8
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$10
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$14
SP_RD16	%eax	$12
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$16
SP_STORE	%eax
ADD16	%eax	$14
INV16	(%ecx)	(%eax)
SP_RD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$16
CPY16	(%ecx)	(%eax)
.LINE	52
SP_STORE	%ecx
ADD16	%ecx	$18
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$20
SP_RD16	%eax	$18
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$22
SP_STORE	%eax
ADD16	%eax	$20
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$24
SP_RD16	%eax	$22
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$28
SP_RD16	%eax	$26
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$28
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$32
SP_RD16	%eax	$30
CPY16	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$32
INC16	(%eax)	$1
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$36
SP_RD16	%eax	$34
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$36
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$32
CPY16	(%ecx)	(%eax)
.LINE	54
SP_STORE	%ecx
ADD16	%ecx	$40
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$47
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$47
SP_STORE	%ebx
ADD16	%ebx	$40
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$51
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$53
SP_RD16	%eax	$51
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$55
SP_STORE	%eax
ADD16	%eax	$53
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$57
SP_RD16	%eax	$55
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$59
SP_RD16	%eax	$57
AND32	%eax	$65535
LD32	%ebx	$256
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$63
SP_STORE	%eax
ADD16	%eax	$59
LD32	%ebx	$8
SAR32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$67
SP_STORE	%eax
ADD16	%eax	$63
LD32	%ebx	$1
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$67
LD32	%ebx	$5
SHL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$75
SP_STORE	%ebx
ADD16	%ebx	$71
LD32	%eax	$0
OR32	(%ecx)	%eax	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$79
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$81
SP_RD16	%eax	$79
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$83
SP_STORE	%eax
ADD16	%eax	$81
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$85
SP_RD16	%eax	$83
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$87
SP_RD16	%eax	$85
AND32	%eax	$65535
LD32	%ebx	$256
AND32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$91
SP_STORE	%eax
ADD16	%eax	$87
LD32	%ebx	$8
SAR32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$95
SP_STORE	%eax
ADD16	%eax	$91
LD32	%ebx	$1
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$99
SP_STORE	%eax
ADD16	%eax	$95
LD32	%ebx	$4
SHL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$103
SP_STORE	%eax
ADD16	%eax	$75
SP_STORE	%ebx
ADD16	%ebx	$99
OR32	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$107
SP_STORE	%eax
ADD16	%eax	$103
LD32	%ebx	$8
OR32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$111
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$113
SP_RD16	%eax	$111
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$115
SP_STORE	%eax
ADD16	%eax	$113
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$117
SP_RD16	%eax	$115
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$118
SP_RD8	%eax	$117
AND32	%eax	$255
LD32	%ebx	$2
SHR32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$122
SP_STORE	%eax
ADD16	%eax	$118
LD32	%ebx	$1
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$126
SP_STORE	%eax
ADD16	%eax	$122
LD32	%ebx	$2
SHL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$130
SP_STORE	%eax
ADD16	%eax	$107
SP_STORE	%ebx
ADD16	%ebx	$126
OR32	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$134
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$136
SP_RD16	%eax	$134
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$138
SP_STORE	%eax
ADD16	%eax	$136
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$140
SP_RD16	%eax	$138
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$141
SP_RD8	%eax	$140
AND32	%eax	$255
LD32	%ebx	$1
SHR32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$145
SP_STORE	%eax
ADD16	%eax	$141
LD32	%ebx	$1
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$149
SP_STORE	%eax
ADD16	%eax	$145
LD32	%ebx	$1
SHL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$153
SP_STORE	%eax
ADD16	%eax	$130
SP_STORE	%ebx
ADD16	%ebx	$149
OR32	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$157
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$159
SP_RD16	%eax	$157
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$161
SP_STORE	%eax
ADD16	%eax	$159
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$163
SP_RD16	%eax	$161
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$164
SP_RD8	%eax	$163
AND32	%eax	$255
LD32	%ebx	$0
SHR32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$168
SP_STORE	%eax
ADD16	%eax	$164
LD32	%ebx	$1
AND32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$172
SP_STORE	%eax
ADD16	%eax	$168
LD32	%ebx	$0
SHL32	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$176
SP_STORE	%eax
ADD16	%eax	$153
SP_STORE	%ebx
ADD16	%ebx	$172
OR32	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$176
CPY8	(%ecx)	(%eax)
.LINE	63
SP_STORE	%ecx
ADD16	%ecx	$180
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$184
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$186
SP_STORE	%eax
ADD16	%eax	$184
SP_STORE	%ebx
ADD16	%ebx	$180
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$188
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$190
SP_RD16	%eax	$188
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$192
SP_STORE	%eax
ADD16	%eax	$190
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$194
SP_RD16	%eax	$192
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$196
SP_RD16	%eax	$194
AND32	%eax	$65535
LD32	%ebx	$255
AND32	(%ecx)	%eax	%ebx
SP_RD16	%ecx	$186
SP_STORE	%eax
ADD16	%eax	$196
CPY8	(%ecx)	(%eax)
.LINE	64
SP_STORE	%ecx
ADD16	%ecx	$200
LD32	%eax	$2
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$204
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$206
SP_STORE	%eax
ADD16	%eax	$204
SP_STORE	%ebx
ADD16	%ebx	$200
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$208
SP_STORE	%eax
ADD16	%eax	$254
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$210
SP_RD16	%eax	$208
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$212
SP_STORE	%eax
ADD16	%eax	$210
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$214
SP_RD16	%eax	$212
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$216
SP_RD16	%eax	$214
AND32	%eax	$65535
LD32	%ebx	$255
AND32	(%ecx)	%eax	%ebx
SP_RD16	%ecx	$206
SP_STORE	%eax
ADD16	%eax	$216
CPY8	(%ecx)	(%eax)
.LINE	87
SP_STORE	%ecx
ADD16	%ecx	$220
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$224
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$226
SP_STORE	%eax
ADD16	%eax	$224
SP_STORE	%ebx
ADD16	%ebx	$220
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$228
SP_RD16	%eax	$226
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$228
PUSH8	%eax
SP_DEC	$1
CALL	PS2dev_write_c
POP8	%eax
SP_WR8	%eax	$230
SP_INC	$1
SP_RD8	%ecx	$229
CMP8	%ecx	$0
JNZ	@IC7
JZ	@IC6
@IC7:	
.LINE	88
LD8	%eax	$-1
SP_WR8	%eax	$253
SP_INC	$250
RTS	
@IC6:	
.LINE	92
SP_STORE	%ecx
ADD16	%ecx	$230
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$234
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$236
SP_STORE	%eax
ADD16	%eax	$234
SP_STORE	%ebx
ADD16	%ebx	$230
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$238
SP_RD16	%eax	$236
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$238
PUSH8	%eax
SP_DEC	$1
CALL	PS2dev_write_c
POP8	%eax
SP_WR8	%eax	$240
SP_INC	$1
SP_RD8	%ecx	$239
CMP8	%ecx	$0
JNZ	@IC11
JZ	@IC10
@IC11:	
.LINE	93
LD8	%eax	$-1
SP_WR8	%eax	$253
SP_INC	$250
RTS	
@IC10:	
.LINE	97
SP_STORE	%ecx
ADD16	%ecx	$240
LD32	%eax	$2
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$244
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$246
SP_STORE	%eax
ADD16	%eax	$244
SP_STORE	%ebx
ADD16	%ebx	$240
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$248
SP_RD16	%eax	$246
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$248
PUSH8	%eax
SP_DEC	$1
CALL	PS2dev_write_c
POP8	%eax
SP_WR8	%eax	$250
SP_INC	$1
SP_RD8	%ecx	$249
CMP8	%ecx	$0
JNZ	@IC15
JZ	@IC14
@IC15:	
.LINE	98
LD8	%eax	$-1
SP_WR8	%eax	$253
SP_INC	$250
RTS	
@IC14:	
.LINE	103
LD8	%eax	$0
SP_WR8	%eax	$253
SP_INC	$250
RTS	
.FUNC_END	"MS_wr_packet"

.LINE	107
MS_cmd:	
.GLOBAL	 DO_NOT_EXPORT  "MS_cmd"

.VARIABLE	"val"	8	"char"	0	0	27	0	0	0	108	
.FUNCTION	"MS_cmd"	
.RETURN "void"	0	0	0	86	0	0	0	
.PARAMETER	"command"	8 "char"	0	0	86	0	0	0	107	
.PARAMETER	"PS2_mouse"	16 "_PS2_mouse_t"	0	1	87	0	0	1	107	
SP_DEC	$83
.LINE	113
JUMP	@IC20
@IC19:	
.LINE	115
CALL	ack
@IC55:	
.LINE	118
PUSH8	$170
SP_DEC	$1
CALL	PS2dev_write
POP8	%eax
SP_WR8	%eax	$1
SP_INC	$1
SP_RD8	%ecx	$0
CMP8	%ecx	$0
JNZ	@IC57
JZ	@IC56
@IC57:	
JUMP	@IC55
@IC56:	
@IC60:	
.LINE	119
PUSH8	$0
SP_DEC	$1
CALL	PS2dev_write
POP8	%eax
SP_WR8	%eax	$2
SP_INC	$1
SP_RD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC62
JZ	@IC61
@IC62:	
JUMP	@IC60
@IC61:	
.LINE	113
JUMP	@IC18
@IC21:	
.LINE	124
SP_STORE	%ecx
ADD16	%ecx	$2
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$4
SP_RD16	%eax	$2
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$6
SP_STORE	%eax
ADD16	%eax	$4
LD16	%ebx	$13
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$8
SP_RD16	%eax	$6
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$87
PUSH16	%eax
SP_RD16	%eax	$10
PUSH8	%eax
CALL	MS_cmd
SP_INC	$3
.LINE	113
JUMP	@IC18
@IC23:	
.LINE	128
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$11
SP_RD16	%eax	$9
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$1
.LINE	129
CALL	ack
.LINE	113
JUMP	@IC18
@IC25:	
.LINE	132
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_RD16	%eax	$15
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$17
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$19
LD8	(%ecx)	$0
.LINE	133
CALL	ack
.LINE	113
JUMP	@IC18
@IC27:	
.LINE	136
SP_STORE	%ecx
ADD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$23
SP_RD16	%eax	$21
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$25
SP_STORE	%eax
ADD16	%eax	$23
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$25
LD8	(%ecx)	$1
.LINE	137
CALL	ack
.LINE	113
JUMP	@IC18
@IC29:	
.LINE	140
CALL	ack
.LINE	141
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$27
CPY16	(%ecx)	%eax
SP_RD16	%eax	$28
PUSH16	%eax
SP_DEC	$1
CALL	PS2dev_read
POP8	%eax
SP_WR8	%eax	$32
SP_INC	$2
.LINE	142
CALL	ack
.LINE	143
SP_STORE	%ecx
ADD16	%ecx	$31
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$33
SP_RD16	%eax	$31
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$35
SP_STORE	%eax
ADD16	%eax	$33
LD16	%ebx	$12
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$35
SP_STORE	%eax
ADD16	%eax	$27
CPY8	(%ecx)	(%eax)
.LINE	113
JUMP	@IC18
@IC31:	
.LINE	146
CALL	ack
@IC65:	
.LINE	147
PUSH8	$0
SP_DEC	$1
CALL	PS2dev_write
POP8	%eax
SP_WR8	%eax	$38
SP_INC	$1
SP_RD8	%ecx	$37
CMP8	%ecx	$0
JNZ	@IC67
JZ	@IC66
@IC67:	
JUMP	@IC65
@IC66:	
.LINE	113
JUMP	@IC18
@IC33:	
.LINE	151
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$40
SP_RD16	%eax	$38
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$40
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$42
LD8	(%ecx)	$0
.LINE	152
CALL	ack
.LINE	113
JUMP	@IC18
@IC35:	
.LINE	155
CALL	ack
.LINE	113
JUMP	@IC18
@IC37:	
.LINE	158
CALL	ack
.LINE	113
JUMP	@IC18
@IC39:	
.LINE	161
CALL	ack
.LINE	162
SP_RD16	%eax	$87
PUSH16	%eax
SP_DEC	$1
CALL	MS_wr_packet
POP8	%eax
SP_WR8	%eax	$46
SP_INC	$2
.LINE	113
JUMP	@IC18
@IC41:	
.LINE	165
SP_STORE	%ecx
ADD16	%ecx	$45
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$47
SP_RD16	%eax	$45
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$49
SP_STORE	%eax
ADD16	%eax	$47
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$49
LD8	(%ecx)	$1
.LINE	166
CALL	ack
.LINE	113
JUMP	@IC18
@IC43:	
.LINE	169
CALL	ack
@IC70:	
.LINE	170
PUSH8	$230
SP_DEC	$1
CALL	PS2dev_write
POP8	%eax
SP_WR8	%eax	$52
SP_INC	$1
SP_RD8	%ecx	$51
CMP8	%ecx	$0
JNZ	@IC72
JZ	@IC71
@IC72:	
JUMP	@IC70
@IC71:	
@IC75:	
.LINE	171
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$54
SP_RD16	%eax	$52
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$56
SP_STORE	%eax
ADD16	%eax	$54
LD16	%ebx	$11
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$58
SP_RD16	%eax	$56
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$58
PUSH8	%eax
SP_DEC	$1
CALL	PS2dev_write
POP8	%eax
SP_WR8	%eax	$60
SP_INC	$1
SP_RD8	%ecx	$59
CMP8	%ecx	$0
JNZ	@IC77
JZ	@IC76
@IC77:	
JUMP	@IC75
@IC76:	
@IC80:	
.LINE	172
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$62
SP_RD16	%eax	$60
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$62
LD16	%ebx	$12
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$66
SP_RD16	%eax	$64
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$66
PUSH8	%eax
SP_DEC	$1
CALL	PS2dev_write
POP8	%eax
SP_WR8	%eax	$68
SP_INC	$1
SP_RD8	%ecx	$67
CMP8	%ecx	$0
JNZ	@IC82
JZ	@IC81
@IC82:	
JUMP	@IC80
@IC81:	
.LINE	113
JUMP	@IC18
@IC45:	
.LINE	176
CALL	ack
.LINE	177
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$27
CPY16	(%ecx)	%eax
SP_RD16	%eax	$68
PUSH16	%eax
SP_DEC	$1
CALL	PS2dev_read
POP8	%eax
SP_WR8	%eax	$72
SP_INC	$2
.LINE	178
CALL	ack
.LINE	179
SP_STORE	%ecx
ADD16	%ecx	$71
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$73
SP_RD16	%eax	$71
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$75
SP_STORE	%eax
ADD16	%eax	$73
LD16	%ebx	$11
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$75
SP_STORE	%eax
ADD16	%eax	$27
CPY8	(%ecx)	(%eax)
.LINE	113
JUMP	@IC18
@IC47:	
.LINE	182
CALL	ack
.LINE	113
JUMP	@IC18
@IC49:	
.LINE	185
CALL	ack
.LINE	113
JUMP	@IC18
@IC51:	
JUMP	@IC18
@IC53:	
.LINE	190
CALL	ack
.LINE	113
JUMP	@IC18
@IC20:	
SP_RD8	%ecx	$86
CMP8	%ecx	$255
JZ	@IC19
@IC22:	
SP_RD8	%ecx	$86
CMP8	%ecx	$254
JZ	@IC21
@IC24:	
SP_RD8	%ecx	$86
CMP8	%ecx	$246
JZ	@IC23
@IC26:	
SP_RD8	%ecx	$86
CMP8	%ecx	$245
JZ	@IC25
@IC28:	
SP_RD8	%ecx	$86
CMP8	%ecx	$244
JZ	@IC27
@IC30:	
SP_RD8	%ecx	$86
CMP8	%ecx	$243
JZ	@IC29
@IC32:	
SP_RD8	%ecx	$86
CMP8	%ecx	$242
JZ	@IC31
@IC34:	
SP_RD8	%ecx	$86
CMP8	%ecx	$240
JZ	@IC33
@IC36:	
SP_RD8	%ecx	$86
CMP8	%ecx	$238
JZ	@IC35
@IC38:	
SP_RD8	%ecx	$86
CMP8	%ecx	$236
JZ	@IC37
@IC40:	
SP_RD8	%ecx	$86
CMP8	%ecx	$235
JZ	@IC39
@IC42:	
SP_RD8	%ecx	$86
CMP8	%ecx	$234
JZ	@IC41
@IC44:	
SP_RD8	%ecx	$86
CMP8	%ecx	$233
JZ	@IC43
@IC46:	
SP_RD8	%ecx	$86
CMP8	%ecx	$232
JZ	@IC45
@IC48:	
SP_RD8	%ecx	$86
CMP8	%ecx	$231
JZ	@IC47
@IC50:	
SP_RD8	%ecx	$86
CMP8	%ecx	$230
JZ	@IC49
@IC52:	
SP_RD8	%ecx	$86
CMP8	%ecx	$0
JZ	@IC51
@IC54:	
JUMP	@IC53
@IC18:	
.LINE	192
SP_RD8	%ecx	$86
CMP8	%ecx	$254
JNZ	@IC86
JZ	@IC85
@IC86:	
.LINE	193
SP_STORE	%ecx
ADD16	%ecx	$77
SP_STORE	%eax
ADD16	%eax	$87
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$79
SP_RD16	%eax	$77
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$79
LD16	%ebx	$13
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$81
SP_STORE	%eax
ADD16	%eax	$86
CPY8	(%ecx)	(%eax)
@IC85:	
.LINE	193
SP_INC	$83
RTS	
.FUNC_END	"MS_cmd"

