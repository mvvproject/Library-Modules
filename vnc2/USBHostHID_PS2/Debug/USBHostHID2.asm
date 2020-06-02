.FILE "Debug\USBHostHID2.c"

.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
ReportID_MS	.DB	40	?
.GLOBAL	  DO_NOT_EXPORT "ReportID_MS"
hid_parser	.DB	256	?
.GLOBAL	  DO_NOT_EXPORT "hid_parser"
ReportID_tbl	.DB	40	?
.GLOBAL	  DO_NOT_EXPORT "ReportID_tbl"
max_ReportID	.DB	1	?
.GLOBAL	  DO_NOT_EXPORT "max_ReportID"
hc_iocb_class	.DB	3	?
.GLOBAL	  DO_NOT_EXPORT "hc_iocb_class"
buf	.DB	128	?
.GLOBAL	  DO_NOT_EXPORT "buf"
pDATA	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "pDATA"
hUsb	.DW	2	?
.GLOBAL	  DO_NOT_EXPORT "hUsb"
hid_parce_data	.DB	71	?
.GLOBAL	  DO_NOT_EXPORT "hid_parce_data"
MS_OK	.DB	1	?
.GLOBAL	  DO_NOT_EXPORT "MS_OK"
hUART	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUART"
Xpos	.DD	1	?
.GLOBAL	  DO_NOT_EXPORT "Xpos"
Ypos	.DD	1	?
.GLOBAL	  DO_NOT_EXPORT "Ypos"
PS2_KB	.DB	51	?
.GLOBAL	  DO_NOT_EXPORT "PS2_KB"
PS2_MS	.DB	14	?
.GLOBAL	  DO_NOT_EXPORT "PS2_MS"
pPS2_KB	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "pPS2_KB"
ifInfo	.DB	7	?
.GLOBAL	  DO_NOT_EXPORT "ifInfo"
pParser	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "pParser"
hUSBHOST_1	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_1"
hUSBHOST_2	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hUSBHOST_2"
hid_data	.DB	71	?
.GLOBAL	  DO_NOT_EXPORT "hid_data"
hid_path	.DB	41	?
.GLOBAL	  DO_NOT_EXPORT "hid_path"
sem_list	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "sem_list"
hid_Bdata	.DB	71	?
.GLOBAL	  DO_NOT_EXPORT "hid_Bdata"
hid_Wdata	.DB	71	?
.GLOBAL	  DO_NOT_EXPORT "hid_Wdata"
hid_Xdata	.DB	71	?
.GLOBAL	  DO_NOT_EXPORT "hid_Xdata"
hid_Ydata	.DB	71	?
.GLOBAL	  DO_NOT_EXPORT "hid_Ydata"
tcbFIRMWARE	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "tcbFIRMWARE"
phid_data	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "phid_data"
hGPIO_PORT_A	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "hGPIO_PORT_A"
phid_Bdata	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "phid_Bdata"
phid_Wdata	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "phid_Wdata"
phid_Xdata	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "phid_Xdata"
phid_Ydata	.DW	1	?
.GLOBAL	  DO_NOT_EXPORT "phid_Ydata"
Str@0	.ASCIIZ	"USB_thread"
Str@1	.ASCIIZ	"PS2KB_thread"
Str@2	.ASCIIZ	"PS2MS_thread"
Str@3	.ASCIIZ	"\r\n"
Str@4	.ASCIIZ	"Starting...\r\n"
Str@5	.ASCIIZ	"Enumeration complete Port "
Str@6	.ASCIIZ	"No Device Found - code "
Str@7	.ASCIIZ	"No Control Endpoint Found - code "
Str@8	.ASCIIZ	"No interrupt Endpoint Found - code "
Str@9	.ASCIIZ	"Interrupt Endpoint Info Not Found - code "
Str@10	.ASCIIZ	"CONFIGURATION Descriptor failed - code "
Str@11	.ASCIIZ	"Report Descriptor : "
Str@12	.ASCIIZ	" "
Str@13	.ASCIIZ	"Max Report ID : "
Str@14	.ASCIIZ	"Mouse Button was found "
Str@15	.ASCIIZ	"Bit offset: "
Str@16	.ASCIIZ	"Sise(bit): "
Str@17	.ASCIIZ	"Mouse Xpos was found "
Str@18	.ASCIIZ	"Bit offset: "
Str@19	.ASCIIZ	"Sise(bit): "
Str@20	.ASCIIZ	"Mouse Ypos was found "
Str@21	.ASCIIZ	"Bit offset: "
Str@22	.ASCIIZ	"Sise(bit): "
Str@23	.ASCIIZ	"Mouse Wheel was found "
Str@24	.ASCIIZ	"Bit offset: "
Str@25	.ASCIIZ	"Sise(bit): "
Str@26	.ASCIIZ	"Init complete Port "
Str@27	.ASCIIZ	"Port 00 Read Failed - code "
Str@28	.ASCIIZ	"Port 01 Read Failed - code "
Str@29	.ASCIIZ	"Port "
Str@30	.ASCIIZ	" Data: "
Str@31	.ASCIIZ	" "
Str@32	.ASCIIZ	" "
Str@33	.ASCIIZ	"Mouse Button: "
Str@34	.ASCIIZ	"Mouse Xpos: "
Str@35	.ASCIIZ	"Mouse Ypos: "
Str@36	.ASCIIZ	"Mouse Wheel: "
Str@37	.ASCIIZ	"PS2_Keyboard_thread\r\n"
Str@38	.ASCIIZ	"PS2_Keyboard_thread PS2KB <- "
Str@39	.ASCIIZ	"\r\n"


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

.STRUCT	"_usb_hidDescriptor_t"	72
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bcdHID"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bCountryCode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumDescriptors"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType_0"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wDescriptorLength_0"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usb_hidDescriptor_t"

.STRUCT	"_usb_deviceRequest_t"	64
.STRUCTMEM	"bmRequestType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bRequest"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wValue"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wIndex"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wLength"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceRequest_t"

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

.STRUCT	"_usb_hubDescriptor_t"	312
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNbrPorts"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wHubCharacteristics"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bPwrOn2PwrGood"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bHubContrCurrent"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"DeviceRemovable"	"char"	128	0	0	0	1	1	0	
.STRUCTMEM	"PortPwrCtrlMask"	"char"	128	0	0	0	1	1	0	
.STRUCT_END	"_usb_hubDescriptor_t"

.STRUCT	"_ReportID_t"	32
.STRUCTMEM	"ReportID_Offset"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"ReportID_Length"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_ReportID_t"

.STRUCT	"_usb_hubPortStatus_t"	32
.STRUCTMEM	"currentConnectStatus"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portEnabled"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portSuspend"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portOverCurrent"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portReset"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"portPower"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portLowSpeed"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portHighSpeed"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portTest"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portIndicator"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv2"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"currentConnectStatusChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portEnabledChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portSuspendChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portOverCurrentChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portResetChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv3"	"short"	3	0	0	0	0	0	0	
.STRUCTMEM	"portPowerChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portLowSpeedChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portHighSpeedChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portTestChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"portIndicatorChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv4"	"short"	3	0	0	0	0	0	0	
.STRUCT_END	"_usb_hubPortStatus_t"

.ENUM	"USBHOST_STATUS"
.ENUMERATOR	"USBHOST_OK"	0
.ENUMERATOR	"USBHOST_NOT_FOUND"	1
.ENUMERATOR	"USBHOST_PENDING"	2
.ENUMERATOR	"USBHOST_INVALID_PARAMETER"	3
.ENUMERATOR	"USBHOST_INVALID_BUFFER"	4
.ENUMERATOR	"USBHOST_INCOMPLETE_ENUM"	5
.ENUMERATOR	"USBHOST_INVALID_CONFIGURATION"	6
.ENUMERATOR	"USBHOST_TD_FULL"	7
.ENUMERATOR	"USBHOST_EP_FULL"	8
.ENUMERATOR	"USBHOST_IF_FULL"	9
.ENUMERATOR	"USBHOST_EP_HALTED"	10
.ENUMERATOR	"USBHOST_EP_INVALID"	11
.ENUMERATOR	"USBHOST_INVALID_STATE"	12
.ENUMERATOR	"USBHOST_ERROR"	13
.ENUMERATOR	"USBHOST_CC_ERROR"	16
.ENUMERATOR	"USBHOST_FATAL_ERROR"	255
.ENUM_END	"USBHOST_STATUS"

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

.STRUCT	"_fatdrv_ioctl_cb_fs_t"	216
.STRUCTMEM	"fsType"	"char"	8	1	0	0	0	0	0	
.STRUCTMEM	"freeSpaceH"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"freeSpaceL"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"capacityH"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"capacityL"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"bytesPerCluster"	"int"	32	0	0	0	0	0	0	
.STRUCTMEM	"bytesPerSector"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"volID"	"long"	32	0	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_fs_t"

.STRUCT	"_vos_gpio_t"	40
.STRUCTMEM	"gpio_port_a"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_b"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_c"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_d"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"gpio_port_e"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_gpio_t"

.STRUCT	"_usb_deviceEndpointDescriptor_t"	56
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bEndpointAddress"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bmAttributes"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wMaxPacketSize"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bInterval"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceEndpointDescriptor_t"

.STRUCT	"_vos_semaphore_list_t"	56
.STRUCTMEM	"next"	"_vos_semaphore_list_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"siz"	"char"	8	1	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"result"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"list"	"_vos_semaphore_t"	16	0	1	0	1	1	1	
.STRUCT_END	"_vos_semaphore_list_t"

.STRUCT	"_fatdrv_ioctl_cb_dir_t"	16
.STRUCTMEM	"filename"	"char"	16	1	1	0	0	0	1	
.STRUCT_END	"_fatdrv_ioctl_cb_dir_t"

.STRUCT	"_usb_deviceInterfaceDescriptor_t"	72
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceNumber"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bAlternateSetting"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumEndpoints"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iInterface"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceInterfaceDescriptor_t"

.STRUCT	"_usb_deviceQualifierDescriptor_t"	80
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bcdUSB"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPacketSize0"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumConfigurations"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bReserved"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceQualifierDescriptor_t"

.STRUCT	"_vos_mutex_t"	48
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"owner"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"attr"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"ceiling"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_mutex_t"

.STRUCT	"_fatdrv_ioctl_cb_file_t"	56
.STRUCTMEM	"filename"	"char"	16	1	1	0	0	0	1	
.STRUCTMEM	"offset"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"mode"	"char"	8	1	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_file_t"

.STRUCT	"_fat_stream_t"	96
.STRUCTMEM	"file_ctx"	"_file_context_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"long"	32	0	0	0	0	0	0	
.STRUCTMEM	"actual"	"long"	32	0	0	0	0	0	0	
.STRUCT_END	"_fat_stream_t"

.STRUCT	"_vos_device_t"	80
.STRUCTMEM	"mutex"	"_vos_mutex_t"	48	0	0	0	0	0	0	
.STRUCTMEM	"driver"	"_vos_driver_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"context"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_vos_device_t"

.STRUCT	"_fatdrv_ioctl_cb_time_t"	80
.STRUCTMEM	"crtDate"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"crtTime"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wrtDate"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"wrtTime"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"accDate"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_time_t"

.STRUCT	"_usb_deviceDescriptor_t"	144
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bcdUSB"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceSubclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDeviceProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPacketSize0"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"idVendor"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"idProduct"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bcdDevice"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"iManufacturer"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iProduct"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iSerialNumber"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bNumConfigurations"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceDescriptor_t"

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

.STRUCT	"_usb_deviceStringDescriptorZero_t"	32
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wLANGID0"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceStringDescriptorZero_t"

.STRUCT	"_fat_ioctl_cb_t"	56
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"file_ctx"	"_file_context_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"get"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"set"	"char"	16	0	1	0	0	0	1	
.STRUCT_END	"_fat_ioctl_cb_t"

.STRUCT	"_fatdrv_ioctl_cb_attach_t"	24
.STRUCTMEM	"msi_handle"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"partition"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_fatdrv_ioctl_cb_attach_t"

.STRUCT	"_vos_cond_var_t"	40
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"lock"	"_vos_mutex_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"state"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_cond_var_t"

.STRUCT	"_file_context_t"	536
.STRUCTMEM	"dirEntry"	"char"	256	0	0	0	1	1	0	
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"context"	"char"	272	0	0	0	1	1	0	
.STRUCT_END	"_file_context_t"

.STRUCT	"_gpio_context_t"	8
.STRUCTMEM	"port_identifier"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_gpio_context_t"

.STRUCT	"_usbhost_ioctl_cb_class_t"	24
.STRUCTMEM	"dev_class"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"dev_subclass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"dev_protocol"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_class_t"

.STRUCT	"_usbhost_xfer_t"	112
.STRUCTMEM	"ep"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"cond_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"zero"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_xfer_t"

.STRUCT	"_uart_context_t"	8
.STRUCTMEM	"buffer_size"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_uart_context_t"

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

.STRUCT	"_gpio_ioctl_cb_t"	16
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"value"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_gpio_ioctl_cb_t"

.STRUCT	"_usb_hubStatus_t"	32
.STRUCTMEM	"localPowerSource"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"overCurrent"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"short"	14	0	0	0	0	0	0	
.STRUCTMEM	"localPowerSourceChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"overCurrentChange"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"resv2"	"short"	14	0	0	0	0	0	0	
.STRUCT_END	"_usb_hubStatus_t"

.STRUCT	"_vos_semaphore_t"	40
.STRUCTMEM	"val"	"short"	16	1	0	0	0	0	0	
.STRUCTMEM	"threads"	"_vos_tcb_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"usage_count"	"char"	8	1	0	0	0	0	0	
.STRUCT_END	"_vos_semaphore_t"

.STRUCT	"_usb_deviceConfigurationDescriptor_t"	72
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"wTotalLength"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"bNumInterfaces"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bConfigurationValue"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iConfiguration"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bmAttributes"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bMaxPower"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceConfigurationDescriptor_t"

.STRUCT	"_vos_dma_config_t"	80
.STRUCTMEM	"src"	"__unnamed_struct_1"	16	0	0	0	0	0	0	
.STRUCTMEM	"dest"	"__unnamed_struct_2"	16	0	0	0	0	0	0	
.STRUCTMEM	"bufsiz"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"mode"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"fifosize"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"flow_control"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"afull_trigger"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_vos_dma_config_t"

.STRUCT	"_usbhost_ioctl_cb_vid_pid_t"	32
.STRUCTMEM	"vid"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"pid"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_vid_pid_t"

.STRUCT	"_usbhost_ioctl_cb_ep_info_t"	32
.STRUCTMEM	"number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"max_size"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"speed"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_ep_info_t"

.ENUM	"FAT_STATUS"
.ENUMERATOR	"FAT_OK"	0
.ENUMERATOR	"FAT_NOT_FOUND"	1
.ENUMERATOR	"FAT_READ_ONLY"	2
.ENUMERATOR	"FAT_PENDING"	3
.ENUMERATOR	"FAT_INVALID_PARAMETER"	4
.ENUMERATOR	"FAT_INVALID_BUFFER"	5
.ENUMERATOR	"FAT_INVALID_FILE_TYPE"	6
.ENUMERATOR	"FAT_EXISTS"	7
.ENUMERATOR	"FAT_BPB_INVALID"	8
.ENUMERATOR	"FAT_NOT_OPEN"	9
.ENUMERATOR	"FAT_EOF"	10
.ENUMERATOR	"FAT_DIRECTORY_TABLE_FULL"	11
.ENUMERATOR	"FAT_DISK_FULL"	12
.ENUMERATOR	"FAT_ERROR"	13
.ENUMERATOR	"FAT_MSI_ERROR"	128
.ENUMERATOR	"FAT_FATAL_ERROR"	255
.ENUM_END	"FAT_STATUS"

.STRUCT	"_usb_interfaceAssociationDescriptor_t"	64
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFirstInterface"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bInterfaceCount"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionSubClass"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bFunctionProtocol"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iFunction"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_interfaceAssociationDescriptor_t"

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

.STRUCT	"__unnamed_struct_3"	16
.STRUCTMEM	"size"	"short"	11	0	0	0	0	0	0	
.STRUCTMEM	"pad"	"short"	1	0	0	0	0	0	0	
.STRUCTMEM	"cond_code"	"short"	4	0	0	0	0	0	0	
.STRUCT_END	"__unnamed_struct_3"

.UNION	"__unnamed_struct_4"	32
.UNIONMEM	"ep"	"int"	32	1	0	0	0	0	0	
.UNIONMEM	"dif"	"int"	32	1	0	0	0	0	0	
.UNION_END	"__unnamed_struct_4"

.UNION	"__unnamed_struct_5"	32
.UNIONMEM	"uart_baud_rate"	"long"	32	0	0	0	0	0	0	
.UNIONMEM	"spi_master_sck_freq"	"long"	32	0	0	0	0	0	0	
.UNIONMEM	"param"	"char"	8	0	0	0	0	0	0	
.UNIONMEM	"data"	"void"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_5"

.UNION	"__unnamed_struct_6"	32
.UNIONMEM	"spi_master_sck_freq"	"long"	32	0	0	0	0	0	0	
.UNIONMEM	"queue_stat"	"short"	16	0	0	0	0	0	0	
.UNIONMEM	"param"	"char"	8	0	0	0	0	0	0	
.UNIONMEM	"data"	"void"	16	0	1	0	0	0	1	
.UNION_END	"__unnamed_struct_6"

.STRUCT	"__unnamed_struct_7"	408
.STRUCTMEM	"new_data"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"usbkb_buf"	"char"	64	0	0	0	1	1	0	
.STRUCTMEM	"keys_buf"	"char"	112	0	0	0	1	1	0	
.STRUCTMEM	"scan_buf"	"char"	224	0	0	0	1	1	0	
.STRUCT_END	"__unnamed_struct_7"

.STRUCT	"_common_ioctl_cb_t"	72
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"set"	"__unnamed_struct_5"	32	0	0	0	0	0	0	
.STRUCTMEM	"get"	"__unnamed_struct_6"	32	0	0	0	0	0	0	
.STRUCT_END	"_common_ioctl_cb_t"

.ENUM	"GPIO_STATUS"
.ENUMERATOR	"GPIO_OK"	0
.ENUMERATOR	"GPIO_INVALID_PORT_IDENTIFIER"	1
.ENUMERATOR	"GPIO_INVALID_PARAMETER"	2
.ENUMERATOR	"GPIO_INTERRUPT_NOT_ENABLED"	3
.ENUMERATOR	"GPIO_ERROR"	4
.ENUMERATOR	"GPIO_FATAL_ERROR"	255
.ENUM_END	"GPIO_STATUS"

.ENUM	"UART_STATUS"
.ENUMERATOR	"UART_OK"	0
.ENUMERATOR	"UART_INVALID_PARAMETER"	1
.ENUMERATOR	"UART_DMA_NOT_ENABLED"	2
.ENUMERATOR	"UART_ERROR"	3
.ENUMERATOR	"UART_FATAL_ERROR"	255
.ENUM_END	"UART_STATUS"

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

.STRUCT	"_usbhost_ioctl_cb_dev_info_t"	56
.STRUCTMEM	"port_number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"addr"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"interface_number"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"speed"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"alt"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"configuration"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"num_configurations"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_ioctl_cb_dev_info_t"

.STRUCT	"_HIDNode_t"	32
.STRUCTMEM	"UPage"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"Usage"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_HIDNode_t"

.STRUCT	"_HIDPath_t"	328
.STRUCTMEM	"Size"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"Node"	"_HIDNode_t"	320	0	0	0	1	1	0	
.STRUCT_END	"_HIDPath_t"

.STRUCT	"_usbhost_context_t"	32
.STRUCTMEM	"if_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"ep_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"xfer_count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"iso_xfer_count"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_context_t"

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

.STRUCT	"_usbhost_ioctl_cb_t"	80
.STRUCTMEM	"ioctl_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"hub_port"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"handle"	"__unnamed_struct_4"	32	0	0	0	0	0	0	
.STRUCTMEM	"get"	"void"	16	0	1	0	0	0	1	
.STRUCTMEM	"set"	"void"	16	0	1	0	0	0	1	
.STRUCT_END	"_usbhost_ioctl_cb_t"

.STRUCT	"_usb_hub_selector_t"	16
.STRUCTMEM	"hub_port"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"selector"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_hub_selector_t"

.STRUCT	"_usb_deviceStringDescriptor_t"	24
.STRUCTMEM	"bLength"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bDescriptorType"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"bString"	"char"	8	0	0	0	0	0	0	
.STRUCT_END	"_usb_deviceStringDescriptor_t"

.STRUCT	"_usbhost_xfer_iso_t"	256
.STRUCTMEM	"ep"	"int"	32	1	0	0	0	0	0	
.STRUCTMEM	"s"	"_vos_semaphore_t"	16	0	1	0	0	0	1	
.STRUCTMEM	"cond_code"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"buf"	"char"	16	0	1	0	0	0	1	
.STRUCTMEM	"len"	"short"	16	0	0	0	0	0	0	
.STRUCTMEM	"flags"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"resv1"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"count"	"char"	8	0	0	0	0	0	0	
.STRUCTMEM	"len_psw"	"__unnamed_struct_3"	128	0	0	0	1	1	0	
.STRUCTMEM	"frame"	"short"	16	0	0	0	0	0	0	
.STRUCT_END	"_usbhost_xfer_iso_t"

.VARIABLE	"ReportID_MS"	320	"_ReportID_t"	0	0	-1	1	1	0	68	
.VARIABLE	"hid_parser"	2048	"_HIDParser_t"	0	0	-1	0	0	0	59	
.VARIABLE	"ReportID_tbl"	320	"_ReportID_t"	0	0	-1	1	1	0	79	
.VARIABLE	"max_ReportID"	8	"char"	0	0	-1	0	0	0	78	
.VARIABLE	"hc_iocb_class"	24	"_usbhost_ioctl_cb_class_t"	0	0	-1	0	0	0	99	
.VARIABLE	"buf"	1024	"char"	1	0	-1	1	1	0	96	
.VARIABLE	"pDATA"	16	"char"	0	1	-1	0	0	1	92	
.VARIABLE	"hUsb"	32	"short"	0	0	-1	1	1	0	51	
.VARIABLE	"hid_parce_data"	568	"_HIDData_t"	0	0	-1	0	0	0	61	
.VARIABLE	"MS_OK"	8	"char"	0	0	-1	0	0	0	67	
.VARIABLE	"hUART"	16	"short"	0	0	-1	0	0	0	47	
.VARIABLE	"Xpos"	32	"int"	1	0	-1	0	0	0	85	
.VARIABLE	"Ypos"	32	"int"	1	0	-1	0	0	0	86	
.VARIABLE	"PS2_KB"	408	"__unnamed_struct_7"	0	0	-1	0	0	0	89	
.VARIABLE	"PS2_MS"	112	"_PS2_mouse_t"	0	0	-1	0	0	0	84	
.VARIABLE	"pPS2_KB"	16	"__unnamed_struct_7"	0	1	-1	0	0	1	90	
.VARIABLE	"ifInfo"	56	"_usbhost_ioctl_cb_dev_info_t"	0	0	-1	0	0	0	98	
.VARIABLE	"pParser"	16	"_HIDParser_t"	0	1	-1	0	0	1	60	
.VARIABLE	"hUSBHOST_1"	16	"short"	0	0	-1	0	0	0	45	
.VARIABLE	"hUSBHOST_2"	16	"short"	0	0	-1	0	0	0	46	
.VARIABLE	"hid_data"	568	"_HIDData_t"	0	0	-1	0	0	0	64	
.VARIABLE	"hid_path"	328	"_HIDPath_t"	0	0	-1	0	0	0	81	
.VARIABLE	"sem_list"	16	"_vos_semaphore_list_t"	0	1	-1	0	0	1	241	
.VARIABLE	"hid_Bdata"	568	"_HIDData_t"	0	0	-1	0	0	0	69	
.VARIABLE	"hid_Wdata"	568	"_HIDData_t"	0	0	-1	0	0	0	75	
.VARIABLE	"hid_Xdata"	568	"_HIDData_t"	0	0	-1	0	0	0	71	
.VARIABLE	"hid_Ydata"	568	"_HIDData_t"	0	0	-1	0	0	0	73	
.VARIABLE	"tcbFIRMWARE"	16	"_vos_tcb_t"	0	1	-1	0	0	1	36	
.VARIABLE	"phid_data"	16	"_HIDData_t"	0	1	-1	0	0	1	65	
.VARIABLE	"hGPIO_PORT_A"	16	"short"	0	0	-1	0	0	0	48	
.VARIABLE	"phid_Bdata"	16	"_HIDData_t"	0	1	-1	0	0	1	70	
.VARIABLE	"phid_Wdata"	16	"_HIDData_t"	0	1	-1	0	0	1	76	
.VARIABLE	"phid_Xdata"	16	"_HIDData_t"	0	1	-1	0	0	1	72	
.VARIABLE	"phid_Ydata"	16	"_HIDData_t"	0	1	-1	0	0	1	74	
.TYPEDEF	"_HIDParser_t"	"HIDParser_t"
.TYPEDEF	"_PS2_mouse_t"	"PS2_mouse_t"
.TYPEDEF	"_fatdrv_ioctl_cb_fs_t"	"fatdrv_ioctl_cb_fs_t"
.TYPEDEF	"_vos_gpio_t"	"vos_gpio_t"
.TYPEDEF	"int"	"usbhost_ep_handle_ex"
.TYPEDEF	"_usb_deviceEndpointDescriptor_t"	"usb_deviceEndpointDescriptor_t"
.TYPEDEF	"_vos_semaphore_list_t"	"vos_semaphore_list_t"
.TYPEDEF	"char"	"I8"
.TYPEDEF	"char"	"U8"
.TYPEDEF	"_fatdrv_ioctl_cb_dir_t"	"fatdrv_ioctl_cb_dir_t"
.TYPEDEF	"char"	"PF"
.TYPEDEF	"_usb_deviceInterfaceDescriptor_t"	"usb_deviceInterfaceDescriptor_t"
.TYPEDEF	"void"	"fat_context"
.TYPEDEF	"void"	"usbhost_device_handle"
.TYPEDEF	"_usb_deviceQualifierDescriptor_t"	"usb_deviceQualifierDescriptor_t"
.TYPEDEF	"long"	"I32"
.TYPEDEF	"short"	"I16"
.TYPEDEF	"long"	"U32"
.TYPEDEF	"short"	"U16"
.TYPEDEF	"_vos_mutex_t"	"vos_mutex_t"
.TYPEDEF	"_fatdrv_ioctl_cb_file_t"	"fatdrv_ioctl_cb_file_t"
.TYPEDEF	"_fat_stream_t"	"fat_stream_t"
.TYPEDEF	"_vos_device_t"	"vos_device_t"
.TYPEDEF	"_fatdrv_ioctl_cb_time_t"	"fatdrv_ioctl_cb_time_t"
.TYPEDEF	"_usb_deviceDescriptor_t"	"usb_deviceDescriptor_t"
.TYPEDEF	"_vos_driver_t"	"vos_driver_t"
.TYPEDEF	"_file_context_t"	"FILE"
.TYPEDEF	"_vos_system_data_area_t"	"vos_system_data_area_t"
.TYPEDEF	"_usb_deviceStringDescriptorZero_t"	"usb_deviceStringDescriptorZero_t"
.TYPEDEF	"__unnamed_struct_7"	"PS2_keyboard_t"
.TYPEDEF	"char"	"PF_IO"
.TYPEDEF	"_fat_ioctl_cb_t"	"fat_ioctl_cb_t"
.TYPEDEF	"_fatdrv_ioctl_cb_attach_t"	"fatdrv_ioctl_cb_attach_t"
.TYPEDEF	"_vos_cond_var_t"	"vos_cond_var_t"
.TYPEDEF	"_file_context_t"	"file_context_t"
.TYPEDEF	"int"	"usbhost_device_handle_ex"
.TYPEDEF	"void"	"PF_INT"
.TYPEDEF	"_gpio_context_t"	"gpio_context_t"
.TYPEDEF	"_usbhost_ioctl_cb_class_t"	"usbhost_ioctl_cb_class_t"
.TYPEDEF	"_usbhost_xfer_t"	"usbhost_xfer_t"
.TYPEDEF	"_uart_context_t"	"uart_context_t"
.TYPEDEF	"char"	"uchar"
.TYPEDEF	"short"	"wchar"
.TYPEDEF	"_gpio_ioctl_cb_t"	"gpio_ioctl_cb_t"
.TYPEDEF	"long"	"ulong"
.TYPEDEF	"void"	"PF_OPEN"
.TYPEDEF	"_usb_hubStatus_t"	"usb_hubStatus_t"
.TYPEDEF	"_vos_semaphore_t"	"vos_semaphore_t"
.TYPEDEF	"_usb_deviceConfigurationDescriptor_t"	"usb_deviceConfigurationDescriptor_t"
.TYPEDEF	"void"	"PF_CLOSE"
.TYPEDEF	"short"	"addr_t"
.TYPEDEF	"char"	"PF_IOCTL"
.TYPEDEF	"char"	"u_char"
.TYPEDEF	"short"	"size_t"
.TYPEDEF	"_vos_dma_config_t"	"vos_dma_config_t"
.TYPEDEF	"short"	"ushort"
.TYPEDEF	"_usbhost_ioctl_cb_vid_pid_t"	"usbhost_ioctl_cb_vid_pid_t"
.TYPEDEF	"_usbhost_ioctl_cb_ep_info_t"	"usbhost_ioctl_cb_ep_info_t"
.TYPEDEF	"_usb_interfaceAssociationDescriptor_t"	"usb_interfaceAssociationDescriptor_t"
.TYPEDEF	"_common_ioctl_cb_t"	"common_ioctl_cb_t"
.TYPEDEF	"void"	"usbhost_ep_handle"
.TYPEDEF	"_HIDData_t"	"HIDData_t"
.TYPEDEF	"_usbhost_ioctl_cb_dev_info_t"	"usbhost_ioctl_cb_dev_info_t"
.TYPEDEF	"_HIDNode_t"	"HIDNode_t"
.TYPEDEF	"_HIDPath_t"	"HIDPath_t"
.TYPEDEF	"_usbhost_context_t"	"usbhost_context_t"
.TYPEDEF	"_usbhost_ioctl_cb_t"	"usbhost_ioctl_cb_t"
.TYPEDEF	"_usb_hub_selector_t"	"usb_hub_selector_t"
.TYPEDEF	"_usb_deviceStringDescriptor_t"	"usb_deviceStringDescriptor_t"
.TYPEDEF	"_usbhost_xfer_iso_t"	"usbhost_xfer_iso_t"
.TYPEDEF	"void"	"fnVoidPtr"
.TYPEDEF	"_vos_tcb_t"	"vos_tcb_t"
.TYPEDEF	"_usb_hidDescriptor_t"	"usb_hidDescriptor_t"
.TYPEDEF	"_usb_deviceRequest_t"	"usb_deviceRequest_t"
.TYPEDEF	"_usb_hubDescriptor_t"	"usb_hubDescriptor_t"
.TYPEDEF	"_ReportID_t"	"ReportID_t"
.TYPEDEF	"_usb_hubPortStatus_t"	"usb_hubPortStatus_t"
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

.FUNCTION	"fat_dirTableFindFirst"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	261	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	261	
.FUNC_END	"fat_dirTableFindFirst"

.FUNCTION	"vos_signal_semaphore"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"s"	16 "_vos_semaphore_t"	0	1	0	0	0	1	167	
.FUNC_END	"vos_signal_semaphore"

.FUNCTION	"fat_fileMod"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	254	
.PARAMETER	"attr"	8 "char"	0	0	0	0	0	0	254	
.FUNC_END	"fat_fileMod"

.FUNCTION	"vos_gpio_wait_on_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	130	
.FUNC_END	"vos_gpio_wait_on_int"

.FUNCTION	"ResetParser"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	22	
.FUNC_END	"ResetParser"

.FUNCTION	"stdinAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	43	
.FUNC_END	"stdinAttach"

.FUNCTION	"stdioAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	41	
.FUNC_END	"stdioAttach"

.FUNCTION	"vos_dma_get_fifo_data"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	85	
.PARAMETER	"dat"	16 "char"	0	1	0	0	0	1	85	
.FUNC_END	"vos_dma_get_fifo_data"

.FUNCTION	"fatdrv_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"vos_dev_num"	8 "char"	0	0	0	0	0	0	98	
.FUNC_END	"fatdrv_init"

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

.FUNCTION	"fat_fileRead"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	236	
.PARAMETER	"length"	32 "long"	0	0	0	0	0	0	236	
.PARAMETER	"buffer"	16 "char"	1	1	0	0	0	1	236	
.PARAMETER	"hOutput"	16 "short"	0	0	0	0	0	0	236	
.PARAMETER	"bytes_read"	16 "long"	0	1	0	0	0	1	236	
.FUNC_END	"fat_fileRead"

.FUNCTION	"vos_gpio_set_pin_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	116	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	116	
.FUNC_END	"vos_gpio_set_pin_mode"

.FUNCTION	"MS_wr_packet"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"PS2_mouse"	16 "_PS2_mouse_t"	0	1	0	0	0	1	27	
.FUNC_END	"MS_wr_packet"

.FUNCTION	"iomux_setup"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"iomux_setup"

.FUNCTION	"fat_fileSeek"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	229	
.PARAMETER	"offset"	32 "long"	1	0	0	0	0	0	229	
.PARAMETER	"mode"	8 "char"	0	0	0	0	0	0	229	
.FUNC_END	"fat_fileSeek"

.FUNCTION	"fat_dirEntryIsReadOnly"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	267	
.FUNC_END	"fat_dirEntryIsReadOnly"

.FUNCTION	"vos_get_chip_revision"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_chip_revision"

.FUNCTION	"fat_fileTell"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	231	
.PARAMETER	"offset"	16 "long"	0	1	0	0	0	1	231	
.FUNC_END	"fat_fileTell"

.FUNCTION	"vos_wait_semaphore_ex"	
.RETURN "char"	8	1	0	0	0	0	0	
.PARAMETER	"l"	16 "_vos_semaphore_list_t"	0	1	0	0	0	1	166	
.FUNC_END	"vos_wait_semaphore_ex"

.FUNCTION	"fat_fileOpen"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	224	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	224	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	224	
.PARAMETER	"mode"	8 "char"	0	0	0	0	0	0	224	
.FUNC_END	"fat_fileOpen"

.FUNCTION	"fat_fileCopy"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"source_file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	245	
.PARAMETER	"dest_file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	245	
.FUNC_END	"fat_fileCopy"

.FUNCTION	"vos_enable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	72	
.FUNC_END	"vos_enable_interrupts"

.FUNCTION	"fat_capacity"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	216	
.PARAMETER	"bytes_h"	16 "long"	0	1	0	0	0	1	216	
.PARAMETER	"bytes_l"	16 "long"	0	1	0	0	0	1	216	
.FUNC_END	"fat_capacity"

.FUNCTION	"stderrAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	45	
.FUNC_END	"stderrAttach"

.FUNCTION	"FindMouse_XYW"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	49	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	0	0	0	1	49	
.PARAMETER	"XYW"	16 "short"	0	0	0	0	0	0	49	
.FUNC_END	"FindMouse_XYW"

.FUNCTION	"vos_dev_read"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"buf"	16 "char"	0	1	0	0	0	1	54	
.PARAMETER	"num_to_read"	16 "short"	0	0	0	0	0	0	54	
.PARAMETER	"num_read"	16 "short"	0	1	0	0	0	1	54	
.FUNC_END	"vos_dev_read"

.FUNCTION	"stdoutAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	44	
.FUNC_END	"stdoutAttach"

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

.FUNCTION	"fat_getFSType"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	219	
.FUNC_END	"fat_getFSType"

.FUNCTION	"usbhost_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum_1"	8 "char"	0	0	0	0	0	0	348	
.PARAMETER	"devNum_2"	8 "char"	0	0	0	0	0	0	348	
.PARAMETER	"context"	16 "_usbhost_context_t"	0	1	0	0	0	1	348	
.FUNC_END	"usbhost_init"

.FUNCTION	"vos_reset_kernel_clock"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_reset_kernel_clock"

.FUNCTION	"fat_freeSpace"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	214	
.PARAMETER	"bytes_h"	16 "long"	0	1	0	0	0	1	214	
.PARAMETER	"bytes_l"	16 "long"	0	1	0	0	0	1	214	
.PARAMETER	"scan"	8 "char"	0	0	0	0	0	0	214	
.FUNC_END	"fat_freeSpace"

.FUNCTION	"fat_fileClose"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	225	
.FUNC_END	"fat_fileClose"

.FUNCTION	"fat_dirIsRoot"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	281	
.FUNC_END	"fat_dirIsRoot"

.FUNCTION	"vos_gpio_set_port_mode"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"portId"	8 "char"	0	0	0	0	0	0	117	
.PARAMETER	"mask"	8 "char"	0	0	0	0	0	0	117	
.FUNC_END	"vos_gpio_set_port_mode"

.FUNCTION	"fat_fileFlush"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	234	
.FUNC_END	"fat_fileFlush"

.FUNCTION	"vos_iomux_define_input"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	223	
.PARAMETER	"signal"	8 "char"	0	0	0	0	0	0	223	
.FUNC_END	"vos_iomux_define_input"

.FUNCTION	"fat_fileWrite"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	237	
.PARAMETER	"length"	32 "long"	0	0	0	0	0	0	237	
.PARAMETER	"buffer"	16 "char"	1	1	0	0	0	1	237	
.PARAMETER	"hOutput"	16 "short"	0	0	0	0	0	0	237	
.PARAMETER	"bytes_written"	16 "long"	0	1	0	0	0	1	237	
.FUNC_END	"fat_fileWrite"

.FUNCTION	"vos_disable_interrupts"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"mask"	32 "int"	0	0	0	0	0	0	73	
.FUNC_END	"vos_disable_interrupts"

.FUNCTION	"fat_dirEntryIsDirectory"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	269	
.FUNC_END	"fat_dirEntryIsDirectory"

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

.FUNCTION	"PS2_mouse_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"PS2_mouse"	16 "_PS2_mouse_t"	0	1	0	0	0	1	25	
.FUNC_END	"PS2_mouse_init"

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

.FUNCTION	"fat_fileDelete"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"source_file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	241	
.FUNC_END	"fat_fileDelete"

.FUNCTION	"fat_fileRename"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	251	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	251	
.FUNC_END	"fat_fileRename"

.FUNCTION	"vos_get_clock_frequency"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_get_clock_frequency"

.FUNCTION	"fat_fileSetPos"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	230	
.PARAMETER	"offset"	32 "long"	0	0	0	0	0	0	230	
.FUNC_END	"fat_fileSetPos"

.FUNCTION	"vos_set_clock_frequency"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"frequency"	8 "char"	0	0	0	0	0	0	209	
.FUNC_END	"vos_set_clock_frequency"

.FUNCTION	"feof"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	55	
.FUNC_END	"feof"

.FUNCTION	"fat_fileRewind"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	232	
.FUNC_END	"fat_fileRewind"

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

.FUNCTION	"ReportID_Offset"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	47	
.PARAMETER	"ReportID"	8 "char"	0	0	0	0	0	0	47	
.FUNC_END	"ReportID_Offset"

.FUNCTION	"LED_ON"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"LED_ON"

.FUNCTION	"PS2dev_host_req"	
.RETURN "char"	8	1	0	0	0	0	0	
.FUNC_END	"PS2dev_host_req"

.FUNCTION	"fat_getVolumeID"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	220	
.PARAMETER	"volID"	16 "long"	0	1	0	0	0	1	220	
.FUNC_END	"fat_getVolumeID"

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

.FUNCTION	"fat_dirEntryIsVolumeLabel"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	266	
.FUNC_END	"fat_dirEntryIsVolumeLabel"

.FUNCTION	"fread"	
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "void"	0	1	0	0	0	1	61	
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	61	
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	61	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	61	
.FUNC_END	"fread"

.FUNCTION	"GetReportOffset"	
.RETURN "char"	16	0	1	0	0	0	1	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	43	
.PARAMETER	"ReportID"	8 "char"	0	0	0	0	0	0	43	const
.PARAMETER	"ReportType"	8 "char"	0	0	0	0	0	0	44	const
.FUNC_END	"GetReportOffset"

.FUNCTION	"vos_gpio_wait_on_any_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	16 "char"	0	1	0	0	0	1	131	
.FUNC_END	"vos_gpio_wait_on_any_int"

.FUNCTION	"fgetc"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	70	
.FUNC_END	"fgetc"

.FUNCTION	"fseek"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	57	
.PARAMETER	"offset"	32 "long"	1	0	0	0	0	0	57	
.PARAMETER	"whence"	32 "int"	1	0	0	0	0	0	57	
.FUNC_END	"fseek"

.FUNCTION	"LED_OFF"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"LED_OFF"

.FUNCTION	"vos_get_priority_ceiling"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	135	
.FUNC_END	"vos_get_priority_ceiling"

.FUNCTION	"ftell"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	56	
.FUNC_END	"ftell"

.FUNCTION	"fopen"	
.RETURN "_file_context_t"	16	0	1	0	0	0	1	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	53	const
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	53	const
.FUNC_END	"fopen"

.FUNCTION	"fgets"	
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	80	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	80	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	80	
.FUNC_END	"fgets"

.FUNCTION	"vos_dma_disable"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	80	
.FUNC_END	"vos_dma_disable"

.FUNCTION	"USB_PS2"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"USB_code"	8 "char"	0	0	0	0	0	0	18	
.FUNC_END	"USB_PS2"

.FUNCTION	"vos_set_priority_ceiling"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	136	
.PARAMETER	"priority"	8 "char"	0	0	0	0	0	0	136	
.FUNC_END	"vos_set_priority_ceiling"

.FUNCTION	"fputc"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	71	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	71	
.FUNC_END	"fputc"

.FUNCTION	"vos_dma_release"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"h"	16 "short"	0	0	0	0	0	0	75	
.FUNC_END	"vos_dma_release"

.FUNCTION	"vos_iomux_disable_output"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pin"	8 "char"	0	0	0	0	0	0	226	
.FUNC_END	"vos_iomux_disable_output"

.FUNCTION	"fputs"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	81	const
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	81	
.FUNC_END	"fputs"

.FUNCTION	"vos_dma_acquire"	
.RETURN "short"	16	0	0	0	0	0	0	
.FUNC_END	"vos_dma_acquire"

.FUNCTION	"MS_cmd"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"command"	8 "char"	0	0	0	0	0	0	26	
.PARAMETER	"PS2_mouse"	16 "_PS2_mouse_t"	0	1	0	0	0	1	26	
.FUNC_END	"MS_cmd"

.FUNCTION	"fat_dirChangeDir"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	279	
.PARAMETER	"name"	16 "char"	0	1	0	0	0	1	279	
.FUNC_END	"fat_dirChangeDir"

.FUNCTION	"vos_delay_msecs"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"ms"	16 "short"	0	0	0	0	0	0	103	
.FUNC_END	"vos_delay_msecs"

.FUNCTION	"vos_stack_usage"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	188	
.FUNC_END	"vos_stack_usage"

.FUNCTION	"fat_dirTableFind"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	260	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	260	
.PARAMETER	"name"	16 "char"	1	1	0	0	0	1	260	
.FUNC_END	"fat_dirTableFind"

.FUNCTION	"fat_getDevHandle"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	215	
.FUNC_END	"fat_getDevHandle"

.FUNCTION	"vos_get_profile"	
.RETURN "int"	32	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	191	
.FUNC_END	"vos_get_profile"

.FUNCTION	"fat_dirCreateDir"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	280	
.PARAMETER	"name"	16 "char"	0	1	0	0	0	1	280	
.FUNC_END	"fat_dirCreateDir"

.FUNCTION	"vos_gpio_wait_on_all_ints"	
.RETURN "char"	8	0	0	0	0	0	0	
.FUNC_END	"vos_gpio_wait_on_all_ints"

.FUNCTION	"fat_dirEntryName"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	277	
.PARAMETER	"fileName"	16 "char"	1	1	0	0	0	1	277	
.FUNC_END	"fat_dirEntryName"

.FUNCTION	"rename"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	64	const
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	64	const
.FUNC_END	"rename"

.FUNCTION	"fat_dirEntryTime"	
.RETURN "short"	16	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	276	
.PARAMETER	"offset"	8 "char"	0	0	0	0	0	0	276	
.FUNC_END	"fat_dirEntryTime"

.FUNCTION	"fclose"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	54	
.FUNC_END	"fclose"

.FUNCTION	"fat_fileTruncate"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	233	
.FUNC_END	"fat_fileTruncate"

.FUNCTION	"fat_dirEntrySize"	
.RETURN "long"	32	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	270	
.FUNC_END	"fat_dirEntrySize"

.FUNCTION	"KBParse"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"PS2_keyboard"	16 "__unnamed_struct_7"	0	1	0	0	0	1	17	
.FUNC_END	"KBParse"

.FUNCTION	"fflush"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	58	
.FUNC_END	"fflush"

.FUNCTION	"rewind"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	65	
.FUNC_END	"rewind"

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

.FUNCTION	"vos_delay_cancel"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"tcb"	16 "_vos_tcb_t"	0	1	0	0	0	1	104	
.FUNC_END	"vos_delay_cancel"

.FUNCTION	"FindReport_max_ID"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	48	
.FUNC_END	"FindReport_max_ID"

.FUNCTION	"remove"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	63	const
.FUNC_END	"remove"

.FUNCTION	"strcat"	extern
.RETURN "char"	16	1	1	0	0	0	1	
.PARAMETER	"destination"	16 "char"	1	1	0	0	0	1	29	
.PARAMETER	"source"	16 "char"	1	1	0	0	0	1	29	const
.FUNC_END	"strcat"

.FUNCTION	"fwrite"	
.RETURN "short"	16	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "void"	0	1	0	0	0	1	62	const
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	62	
.PARAMETER	"__unknown"	16 "short"	1	0	0	0	0	0	62	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	62	
.FUNC_END	"fwrite"

.FUNCTION	"printf"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"fmt"	16 "char"	1	1	0	0	0	1	50	const
.FUNC_END	"printf"

.FUNCTION	"PS2_keyboard_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"pPS2_keyboard"	16 "__unnamed_struct_7"	0	1	0	0	0	1	16	
.FUNC_END	"PS2_keyboard_init"

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

.FUNCTION	"fat_dirDirIsEmpty"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	264	
.FUNC_END	"fat_dirDirIsEmpty"

.FUNCTION	"HIDParse"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	17	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	0	0	0	1	17	
.FUNC_END	"HIDParse"

.FUNCTION	"vos_unlock_mutex"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	134	
.FUNC_END	"vos_unlock_mutex"

.FUNCTION	"FindMouse_Buttons"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	50	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	0	0	0	1	50	
.FUNC_END	"FindMouse_Buttons"

.FUNCTION	"getchar"	
.RETURN "int"	32	1	0	0	0	0	0	
.FUNC_END	"getchar"

.FUNCTION	"putchar"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	32 "int"	1	0	0	0	0	0	69	
.FUNC_END	"putchar"

.FUNCTION	"fgetpos"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	82	
.PARAMETER	"__unknown"	16 "long"	1	1	0	0	0	1	82	
.FUNC_END	"fgetpos"

.FUNCTION	"fprintf"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	60	
.PARAMETER	"fmt"	16 "char"	1	1	0	0	0	1	60	const
.FUNC_END	"fprintf"

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

.FUNCTION	"fsetpos"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "_file_context_t"	0	1	0	0	0	1	83	
.PARAMETER	"__unknown"	16 "long"	1	1	0	0	0	1	83	const
.FUNC_END	"fsetpos"

.FUNCTION	"sprintf"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "char"	1	1	0	0	0	1	77	
.PARAMETER	"fmt"	16 "char"	1	1	0	0	0	1	77	const
.FUNC_END	"sprintf"

.FUNCTION	"strncmp"	extern
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"str1"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"str2"	16 "char"	1	1	0	0	0	1	26	const
.PARAMETER	"num"	16 "short"	1	0	0	0	0	0	26	
.FUNC_END	"strncmp"

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

.FUNCTION	"GetValue"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"Buf"	16 "char"	0	1	0	0	0	1	33	const
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	0	0	0	1	33	
.PARAMETER	"pReportID_tbl"	16 "_ReportID_t"	0	1	0	0	0	1	33	
.FUNC_END	"GetValue"

.FUNCTION	"fat_dirEntryIsFile"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	268	
.FUNC_END	"fat_dirEntryIsFile"

.FUNCTION	"SetValue"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	0	0	0	1	39	const
.PARAMETER	"Buf"	16 "char"	0	1	0	0	0	1	39	
.FUNC_END	"SetValue"

.FUNCTION	"fsAttach"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"__unknown"	16 "short"	0	0	0	0	0	0	47	
.FUNC_END	"fsAttach"

.FUNCTION	"fat_getVolumeLabel"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	221	
.PARAMETER	"volLabel"	16 "char"	1	1	0	0	0	1	221	
.FUNC_END	"fat_getVolumeLabel"

.FUNCTION	"vos_stop_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_stop_profiler"

.FUNCTION	"ReportID_DataLength"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	46	
.PARAMETER	"ReportID"	8 "char"	0	0	0	0	0	0	46	
.FUNC_END	"ReportID_DataLength"

.FUNCTION	"fat_time"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"time"	32 "long"	0	0	0	0	0	0	257	
.FUNC_END	"fat_time"

.FUNCTION	"fat_open"	
.RETURN "void"	16	0	1	0	0	0	1	
.PARAMETER	"hMsi"	16 "short"	0	0	0	0	0	0	209	
.PARAMETER	"partition"	8 "char"	0	0	0	0	0	0	209	
.PARAMETER	"status"	16 "char"	0	1	0	0	0	1	209	
.FUNC_END	"fat_open"

.FUNCTION	"fat_init"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"fat_init"

.FUNCTION	"vos_trylock_mutex"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"m"	16 "_vos_mutex_t"	0	1	0	0	0	1	133	
.FUNC_END	"vos_trylock_mutex"

.FUNCTION	"fat_bytesPerSector"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	218	
.PARAMETER	"bytes"	16 "short"	0	1	0	0	0	1	218	
.FUNC_END	"fat_bytesPerSector"

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

.FUNCTION	"fat_dirEntryIsValid"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	265	
.FUNC_END	"fat_dirEntryIsValid"

.FUNCTION	"vos_start_profiler"	
.RETURN "void"	0	0	0	0	0	0	0	
.FUNC_END	"vos_start_profiler"

.FUNCTION	"fat_close"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	210	
.FUNC_END	"fat_close"

.FUNCTION	"gpio_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum"	8 "char"	0	0	0	0	0	0	91	
.PARAMETER	"context"	16 "void"	0	1	0	0	0	1	92	
.FUNC_END	"gpio_init"

.FUNCTION	"fat_bytesPerCluster"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	217	
.PARAMETER	"bytes"	16 "long"	0	1	0	0	0	1	217	
.FUNC_END	"fat_bytesPerCluster"

.FUNCTION	"GetValueXY"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"Buf"	16 "char"	0	1	0	0	0	1	34	const
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	0	0	0	1	34	
.PARAMETER	"pReportID_tbl"	16 "_ReportID_t"	0	1	0	0	0	1	34	
.FUNC_END	"GetValueXY"

.FUNCTION	"uart_init"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"devNum"	8 "char"	0	0	0	0	0	0	115	
.PARAMETER	"context"	16 "_uart_context_t"	0	1	0	0	0	1	116	
.FUNC_END	"uart_init"

.FUNCTION	"vos_gpio_enable_int"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"intNum"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"intType"	8 "char"	0	0	0	0	0	0	128	
.PARAMETER	"pinId"	8 "char"	0	0	0	0	0	0	128	
.FUNC_END	"vos_gpio_enable_int"

.FUNCTION	"FindObject"	
.RETURN "int"	32	1	0	0	0	0	0	
.PARAMETER	"pParser"	16 "_HIDParser_t"	0	1	0	0	0	1	27	
.PARAMETER	"pData"	16 "_HIDData_t"	0	1	0	0	0	1	27	
.FUNC_END	"FindObject"

.FUNCTION	"vos_signal_cond_var"	
.RETURN "void"	0	0	0	0	0	0	0	
.PARAMETER	"cv"	16 "_vos_cond_var_t"	0	1	0	0	0	1	182	
.FUNC_END	"vos_signal_cond_var"

.FUNCTION	"fat_dirTableFindNext"	
.RETURN "char"	8	0	0	0	0	0	0	
.PARAMETER	"fat_ctx"	16 "void"	0	1	0	0	0	1	262	
.PARAMETER	"file_ctx"	16 "_file_context_t"	0	1	0	0	0	1	262	
.FUNC_END	"fat_dirTableFindNext"

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

.WEAK	"fat_dirTableFindFirst"

.WEAK	"vos_signal_semaphore"

.WEAK	"fat_fileMod"

.WEAK	"vos_gpio_wait_on_int"

.WEAK	"ResetParser"

.WEAK	"stdinAttach"

.WEAK	"stdioAttach"

.WEAK	"vos_dma_get_fifo_data"

.WEAK	"fatdrv_init"

.WEAK	"PS2dev_write"

.WEAK	"vos_iocell_get_config"

.WEAK	"vos_iomux_define_bidi"

.WEAK	"vos_gpio_set_all_mode"

.WEAK	"vos_iocell_set_config"

.WEAK	"fat_fileRead"

.WEAK	"vos_gpio_set_pin_mode"

.WEAK	"MS_wr_packet"

.WEAK	"iomux_setup"

.WEAK	"fat_fileSeek"

.WEAK	"fat_dirEntryIsReadOnly"

.WEAK	"vos_get_chip_revision"

.WEAK	"fat_fileTell"

.WEAK	"vos_wait_semaphore_ex"

.WEAK	"fat_fileOpen"

.WEAK	"fat_fileCopy"

.WEAK	"vos_enable_interrupts"

.WEAK	"fat_capacity"

.WEAK	"stderrAttach"

.WEAK	"FindMouse_XYW"

.WEAK	"vos_dev_read"

.WEAK	"stdoutAttach"

.WEAK	"PS2dev_unlock"

.WEAK	"vos_dev_open"

.WEAK	"vos_halt_cpu"

.WEAK	"vos_dev_init"

.WEAK	"vos_dma_get_fifo_count"

.WEAK	"fat_getFSType"

.WEAK	"usbhost_init"

.WEAK	"vos_reset_kernel_clock"

.WEAK	"fat_freeSpace"

.WEAK	"fat_fileClose"

.WEAK	"fat_dirIsRoot"

.WEAK	"vos_gpio_set_port_mode"

.WEAK	"fat_fileFlush"

.WEAK	"vos_iomux_define_input"

.WEAK	"fat_fileWrite"

.WEAK	"vos_disable_interrupts"

.WEAK	"fat_dirEntryIsDirectory"

.WEAK	"PS2dev_write_c"

.WEAK	"vos_get_idle_thread_tcb"

.WEAK	"vos_dma_reset"

.WEAK	"vos_dev_close"

.WEAK	"vos_wdt_clear"

.WEAK	"vos_heap_size"

.WEAK	"PS2_mouse_init"

.WEAK	"vos_dev_ioctl"

.WEAK	"vos_dev_write"

.WEAK	"fat_fileDelete"

.WEAK	"fat_fileRename"

.WEAK	"vos_get_clock_frequency"

.WEAK	"fat_fileSetPos"

.WEAK	"vos_set_clock_frequency"

.WEAK	"feof"

.WEAK	"fat_fileRewind"

.WEAK	"vos_dma_enable"

.WEAK	"vos_reset_vnc2"

.WEAK	"vos_heap_space"

.WEAK	"vos_iomux_define_output"

.WEAK	"vos_wdt_enable"

.WEAK	"ReportID_Offset"

.WEAK	"LED_ON"

.WEAK	"PS2dev_host_req"

.WEAK	"fat_getVolumeID"

.WEAK	"vos_dma_wait_on_complete"

.WEAK	"vos_lock_mutex"

.WEAK	"vos_power_down"

.WEAK	"vos_init_mutex"

.WEAK	"fat_dirEntryIsVolumeLabel"

.WEAK	"fread"

.WEAK	"GetReportOffset"

.WEAK	"vos_gpio_wait_on_any_int"

.WEAK	"fgetc"

.WEAK	"fseek"

.WEAK	"LED_OFF"

.WEAK	"vos_get_priority_ceiling"

.WEAK	"ftell"

.WEAK	"fopen"

.WEAK	"fgets"

.WEAK	"vos_dma_disable"

.WEAK	"USB_PS2"

.WEAK	"vos_set_priority_ceiling"

.WEAK	"fputc"

.WEAK	"vos_dma_release"

.WEAK	"vos_iomux_disable_output"

.WEAK	"fputs"

.WEAK	"vos_dma_acquire"

.WEAK	"MS_cmd"

.WEAK	"fat_dirChangeDir"

.WEAK	"vos_delay_msecs"

.WEAK	"vos_stack_usage"

.WEAK	"fat_dirTableFind"

.WEAK	"fat_getDevHandle"

.WEAK	"vos_get_profile"

.WEAK	"fat_dirCreateDir"

.WEAK	"vos_gpio_wait_on_all_ints"

.WEAK	"fat_dirEntryName"

.WEAK	"rename"

.WEAK	"fat_dirEntryTime"

.WEAK	"fclose"

.WEAK	"fat_fileTruncate"

.WEAK	"fat_dirEntrySize"

.WEAK	"KBParse"

.WEAK	"fflush"

.WEAK	"rewind"

.WEAK	"memset"

.WEAK	"memcpy"

.WEAK	"vos_delay_cancel"

.WEAK	"FindReport_max_ID"

.WEAK	"remove"

.WEAK	"strcat"

.WEAK	"fwrite"

.WEAK	"printf"

.WEAK	"PS2_keyboard_init"

.WEAK	"strlen"

.WEAK	"strcmp"

.WEAK	"strcpy"

.WEAK	"vos_dma_retained_configure"

.WEAK	"fat_dirDirIsEmpty"

.WEAK	"HIDParse"

.WEAK	"vos_unlock_mutex"

.WEAK	"FindMouse_Buttons"

.WEAK	"getchar"

.WEAK	"putchar"

.WEAK	"fgetpos"

.WEAK	"fprintf"

.WEAK	"vos_gpio_read_all"

.WEAK	"vos_create_thread"

.WEAK	"fsetpos"

.WEAK	"sprintf"

.WEAK	"strncmp"

.WEAK	"vos_gpio_read_pin"

.WEAK	"vos_dma_configure"

.WEAK	"strncpy"

.WEAK	"vos_init_cond_var"

.WEAK	"vos_wait_cond_var"

.WEAK	"GetValue"

.WEAK	"fat_dirEntryIsFile"

.WEAK	"SetValue"

.WEAK	"fsAttach"

.WEAK	"fat_getVolumeLabel"

.WEAK	"vos_stop_profiler"

.WEAK	"ReportID_DataLength"

.WEAK	"fat_time"

.WEAK	"fat_open"

.WEAK	"fat_init"

.WEAK	"vos_trylock_mutex"

.WEAK	"fat_bytesPerSector"

.WEAK	"vos_free"

.WEAK	"vos_init"

.WEAK	"vos_gpio_read_port"

.WEAK	"vos_gpio_write_all"

.WEAK	"vos_set_idle_thread_tcb_size"

.WEAK	"vos_init_semaphore"

.WEAK	"vos_wait_semaphore"

.WEAK	"vos_gpio_write_pin"

.WEAK	"fat_dirEntryIsValid"

.WEAK	"vos_start_profiler"

.WEAK	"fat_close"

.WEAK	"gpio_init"

.WEAK	"fat_bytesPerCluster"

.WEAK	"GetValueXY"

.WEAK	"uart_init"

.WEAK	"vos_gpio_enable_int"

.WEAK	"FindObject"

.WEAK	"vos_signal_cond_var"

.WEAK	"fat_dirTableFindNext"

.WEAK	"PS2KB_write"

.LINE	103
main:	
.GLOBAL	 DO_NOT_EXPORT  "main"

.VARIABLE	"uartContext"	8	"_uart_context_t"	0	0	6	0	0	0	107	
.VARIABLE	"gpioContextA"	8	"_gpio_context_t"	0	0	14	0	0	0	109	
.VARIABLE	"usbhostContext"	32	"_usbhost_context_t"	0	0	22	0	0	0	111	
.FUNCTION	"main"	
.RETURN "void"	0	0	0	78	0	0	0	
SP_DEC	$75
.LINE	115
PUSH8	$4
PUSH16	$1
PUSH8	$50
CALL	vos_init
SP_INC	$4
.LINE	116
PUSH8	$0
CALL	vos_set_clock_frequency
SP_INC	$1
.LINE	117
PUSH16	$512
CALL	vos_set_idle_thread_tcb_size
SP_INC	$2
.LINE	120
CALL	iomux_setup
.LINE	121
SP_STORE	%ecx
LD16	(%ecx)	$PS2_MS
SP_RD16	%eax	$0
PUSH16	%eax
CALL	PS2_mouse_init
SP_INC	$2
.LINE	122
SP_STORE	%ecx
ADD16	%ecx	$2
LD16	(%ecx)	$PS2_KB
SP_RD16	%eax	$2
PUSH16	%eax
CALL	PS2_keyboard_init
SP_INC	$2
.LINE	124
SP_STORE	%ecx
ADD16	%ecx	$4
LD16	(%ecx)	$PS2_KB
SP_RD16	pPS2_KB	$4
.LINE	128
SP_STORE	%ecx
ADD16	%ecx	$7
SP_STORE	%eax
ADD16	%eax	$6
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$9
SP_STORE	%eax
ADD16	%eax	$7
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$9
LD8	(%ecx)	$64
.LINE	129
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$6
CPY16	(%ecx)	%eax
SP_RD16	%eax	$11
PUSH16	%eax
PUSH8	$2
SP_DEC	$1
CALL	uart_init
POP8	%eax
SP_WR8	%eax	$16
SP_INC	$3
.LINE	132
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$17
LD8	(%ecx)	$0
.LINE	133
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$14
CPY16	(%ecx)	%eax
SP_RD16	%eax	$19
PUSH16	%eax
PUSH8	$3
SP_DEC	$1
CALL	gpio_init
POP8	%eax
SP_WR8	%eax	$24
SP_INC	$3
.LINE	136
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$28
SP_STORE	%eax
ADD16	%eax	$26
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$28
LD8	(%ecx)	$8
.LINE	137
SP_STORE	%ecx
ADD16	%ecx	$30
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$32
SP_STORE	%eax
ADD16	%eax	$30
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$32
LD8	(%ecx)	$16
.LINE	138
SP_STORE	%ecx
ADD16	%ecx	$34
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$34
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$36
LD8	(%ecx)	$2
.LINE	139
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$40
SP_STORE	%eax
ADD16	%eax	$38
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$40
LD8	(%ecx)	$2
.LINE	140
SP_STORE	%ecx
ADD16	%ecx	$42
SP_STORE	%eax
ADD16	%eax	$22
CPY16	(%ecx)	%eax
SP_RD16	%eax	$42
PUSH16	%eax
PUSH8	$1
PUSH8	$0
SP_DEC	$1
CALL	usbhost_init
POP8	%eax
SP_WR8	%eax	$48
SP_INC	$4
.LINE	144
SP_STORE	%ecx
ADD16	%ecx	$45
LD32	(%ecx)	$USB_thread
SP_STORE	%ecx
ADD16	%ecx	$49
LD32	(%ecx)	$Str@0
PUSH16	$0
SP_RD16	%eax	$51
PUSH16	%eax
SP_RD32	%eax	$49
PUSH32	%eax
PUSH16	$4096
PUSH8	$20
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$64
SP_INC	$11
SP_RD16	tcbFIRMWARE	$53
.LINE	145
SP_STORE	%ecx
ADD16	%ecx	$55
LD32	(%ecx)	$PS2KB_thread
SP_STORE	%ecx
ADD16	%ecx	$59
LD32	(%ecx)	$Str@1
PUSH16	$0
SP_RD16	%eax	$61
PUSH16	%eax
SP_RD32	%eax	$59
PUSH32	%eax
PUSH16	$1048
PUSH8	$20
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$74
SP_INC	$11
SP_RD16	tcbFIRMWARE	$63
.LINE	146
SP_STORE	%ecx
ADD16	%ecx	$65
LD32	(%ecx)	$PS2MS_thread
SP_STORE	%ecx
ADD16	%ecx	$69
LD32	(%ecx)	$Str@2
PUSH16	$0
SP_RD16	%eax	$71
PUSH16	%eax
SP_RD32	%eax	$69
PUSH32	%eax
PUSH16	$1048
PUSH8	$20
SP_DEC	$2
CALL	vos_create_thread_ex
POP16	%eax
SP_WR16	%eax	$84
SP_INC	$11
SP_RD16	tcbFIRMWARE	$73
.LINE	149
CALL	vos_start_scheduler
.LINE	151
@fl1main_loop:	
.LINE	152
JUMP	@fl1main_loop
.LINE	152
SP_INC	$75
RTS	
.FUNC_END	"main"

.LINE	156
usbhost_connect_state:	
.GLOBAL	 DO_NOT_EXPORT  "usbhost_connect_state"

.VARIABLE	"connectstate"	8	"char"	0	0	0	0	0	0	158	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	1	0	0	0	159	
.FUNCTION	"usbhost_connect_state"	
.RETURN "char"	8	0	0	30	0	0	0	
.PARAMETER	"hUSB"	16 "short"	0	0	31	0	0	0	156	
SP_DEC	$27
.LINE	158
LD8	%ecx	$0
SP_WR8	%ecx	$0
.LINE	161
SP_STORE	%ecx
ADD16	%ecx	$31
CMP16	(%ecx)	$0
JNZ	@IC2
JUMP	@IC1
@IC2:	
.LINE	163
SP_STORE	%ecx
ADD16	%ecx	$11
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$13
SP_STORE	%eax
ADD16	%eax	$11
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$13
LD8	(%ecx)	$16
.LINE	164
SP_STORE	%ecx
ADD16	%ecx	$15
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$15
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$0
CPY16	(%ecx)	%eax
SP_RD16	%ecx	$17
SP_STORE	%eax
ADD16	%eax	$19
CPY16	(%ecx)	(%eax)
.LINE	165
SP_STORE	%ecx
ADD16	%ecx	$21
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_RD16	%eax	$21
PUSH16	%eax
SP_RD16	%eax	$33
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$27
SP_INC	$4
.LINE	168
SP_RD8	%ecx	$0
CMP8	%ecx	$1
JZ	@IC4
JNZ	@IC3
@IC4:	
.LINE	170
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$1
CPY16	(%ecx)	%eax
SP_RD16	%eax	$24
PUSH16	%eax
SP_RD16	%eax	$33
PUSH16	%eax
SP_DEC	$1
CALL	vos_dev_ioctl
POP8	%eax
SP_WR8	%eax	$30
SP_INC	$4
@IC3:	
@IC1:	
.LINE	173
SP_STORE	%eax
SP_STORE	%ecx
ADD16	%ecx	$30
CPY8	(%ecx)	(%eax)
SP_INC	$27
RTS	
.FUNC_END	"usbhost_connect_state"

.LINE	178
open_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "open_drivers"

.FUNCTION	"open_drivers"	
.RETURN "void"	0	0	0	11	0	0	0	
SP_DEC	$8
.LINE	182
PUSH8	$0
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$1
SP_INC	$1
SP_RD16	hUSBHOST_1	$0
.LINE	183
PUSH8	$1
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$3
SP_INC	$1
SP_RD16	hUSBHOST_2	$2
.LINE	184
PUSH8	$2
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$5
SP_INC	$1
SP_RD16	hUART	$4
.LINE	185
PUSH8	$3
SP_DEC	$2
CALL	vos_dev_open
POP16	%eax
SP_WR16	%eax	$7
SP_INC	$1
SP_RD16	hGPIO_PORT_A	$6
.LINE	185
SP_INC	$8
RTS	
.FUNC_END	"open_drivers"

.LINE	190
attach_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "attach_drivers"

.FUNCTION	"attach_drivers"	
.RETURN "void"	0	0	0	3	0	0	0	
.LINE	190
RTS	
.FUNC_END	"attach_drivers"

.LINE	197
close_drivers:	
.GLOBAL	 DO_NOT_EXPORT  "close_drivers"

.FUNCTION	"close_drivers"	
.RETURN "void"	0	0	0	3	0	0	0	
.LINE	200
PUSH16	hUSBHOST_1
CALL	vos_dev_close
SP_INC	$2
.LINE	201
PUSH16	hUSBHOST_2
CALL	vos_dev_close
SP_INC	$2
.LINE	202
PUSH16	hUART
CALL	vos_dev_close
SP_INC	$2
.LINE	203
PUSH16	hGPIO_PORT_A
CALL	vos_dev_close
SP_INC	$2
.LINE	203
RTS	
.FUNC_END	"close_drivers"

.LINE	210
message:	
.GLOBAL	 DO_NOT_EXPORT  "message"

.FUNCTION	"message"	
.RETURN "void"	0	0	0	3	0	0	0	
.PARAMETER	"msg"	16 "char"	1	1	3	0	0	1	210	
.LINE	210
RTS	
.FUNC_END	"message"

.LINE	216
number:	
.GLOBAL	 DO_NOT_EXPORT  "number"

.FUNCTION	"number"	
.RETURN "void"	0	0	0	3	0	0	0	
.PARAMETER	"val"	8 "char"	0	0	3	0	0	0	216	
.LINE	216
RTS	
.FUNC_END	"number"

.LINE	244
USB_thread:	
.GLOBAL	 DO_NOT_EXPORT  "USB_thread"

.VARIABLE	"eol"	16	"char"	1	1	4	0	0	1	248	
.VARIABLE	"epInt"	64	"int"	1	0	28	1	1	0	268	
.VARIABLE	"epCtrl"	64	"int"	1	0	44	1	1	0	268	
.VARIABLE	"Found"	16	"char"	0	0	76	1	1	0	261	
.VARIABLE	"FoundB"	16	"char"	0	0	94	1	1	0	261	
.VARIABLE	"FoundX"	16	"char"	0	0	112	1	1	0	261	
.VARIABLE	"FoundY"	16	"char"	0	0	130	1	1	0	261	
.VARIABLE	"FoundW"	16	"char"	0	0	148	1	1	0	261	
.VARIABLE	"buf"	1024	"char"	1	0	162	1	1	0	247	
.VARIABLE	"uart_iocb"	72	"_common_ioctl_cb_t"	0	0	310	0	0	0	284	
.VARIABLE	"n"	8	"char"	1	0	406	0	0	0	254	
.VARIABLE	"hc_iocb"	80	"_usbhost_ioctl_cb_t"	0	0	434	0	0	0	277	
.VARIABLE	"ifDev"	32	"int"	1	0	458	0	0	0	265	
.VARIABLE	"status"	8	"char"	0	0	477	0	0	0	253	
.VARIABLE	"epInfo"	32	"_usbhost_ioctl_cb_ep_info_t"	0	0	586	0	0	0	290	
.VARIABLE	"maxPack"	16	"char"	0	0	613	1	1	0	271	
.VARIABLE	"descIndex"	8	"char"	0	0	625	0	0	0	257	
.VARIABLE	"desc_dev"	64	"_usb_deviceRequest_t"	0	0	626	0	0	0	287	
.VARIABLE	"byteCount"	8	"char"	1	0	725	0	0	0	258	
.VARIABLE	"i"	8	"char"	1	0	751	0	0	0	250	
.VARIABLE	"XYW"	16	"short"	0	0	867	0	0	0	260	
.VARIABLE	"endpointSem"	80	"_vos_semaphore_t"	0	0	1149	1	1	0	274	
.VARIABLE	"xfer"	224	"_usbhost_xfer_t"	0	0	1171	1	1	0	281	
.VARIABLE	"Xpos"	32	"int"	1	0	1649	0	0	0	262	
.VARIABLE	"Ypos"	32	"int"	1	0	1706	0	0	0	262	
.FUNCTION	"USB_thread"	
.RETURN "void"	0	0	0	1836	0	0	0	
SP_DEC	$255
SP_DEC	$255
SP_DEC	$255
SP_DEC	$255
SP_DEC	$255
SP_DEC	$255
SP_DEC	$255
SP_DEC	$48
.LINE	248
SP_STORE	%ecx
LD32	(%ecx)	$Str@3
SP_RD16	%ecx	$0
SP_WR16	%ecx	$4
.LINE	292
SP_STORE	%ecx
ADD16	%ecx	$6
LD16	(%ecx)	$hid_parser
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$6
LD16	%ebx	$137
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$10
LD16	(%ecx)	$hid_parce_data
SP_RD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$10
CPY16	(%ecx)	(%eax)
.LINE	293
SP_STORE	%ecx
ADD16	%ecx	$12
LD16	(%ecx)	$hid_parser
SP_RD16	pParser	$12
.LINE	295
SP_STORE	%ecx
ADD16	%ecx	$14
LD16	(%ecx)	$hid_data
SP_RD16	phid_data	$14
.LINE	296
SP_STORE	%ecx
ADD16	%ecx	$16
LD16	(%ecx)	$hid_Bdata
SP_RD16	phid_Bdata	$16
.LINE	297
SP_STORE	%ecx
ADD16	%ecx	$18
LD16	(%ecx)	$hid_Xdata
SP_RD16	phid_Xdata	$18
.LINE	298
SP_STORE	%ecx
ADD16	%ecx	$20
LD16	(%ecx)	$hid_Ydata
SP_RD16	phid_Ydata	$20
.LINE	299
SP_STORE	%ecx
ADD16	%ecx	$22
LD16	(%ecx)	$hid_Wdata
SP_RD16	phid_Wdata	$22
.LINE	301
SP_STORE	%ecx
ADD16	%ecx	$24
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$36
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$38
SP_STORE	%eax
ADD16	%eax	$36
SP_STORE	%ebx
ADD16	%ebx	$24
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$38
LD32	(%ecx)	$0
.LINE	302
SP_STORE	%ecx
ADD16	%ecx	$40
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$52
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$54
SP_STORE	%eax
ADD16	%eax	$52
SP_STORE	%ebx
ADD16	%ebx	$40
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$54
LD32	(%ecx)	$0
.LINE	303
SP_STORE	%ecx
ADD16	%ecx	$56
LD32	%eax	$1
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$60
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$62
SP_STORE	%eax
ADD16	%eax	$60
SP_STORE	%ebx
ADD16	%ebx	$56
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$62
LD32	(%ecx)	$0
.LINE	304
SP_STORE	%ecx
ADD16	%ecx	$64
LD32	%eax	$1
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$68
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$70
SP_STORE	%eax
ADD16	%eax	$68
SP_STORE	%ebx
ADD16	%ebx	$64
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$70
LD32	(%ecx)	$0
.LINE	306
SP_STORE	%ecx
ADD16	%ecx	$72
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$78
SP_STORE	%eax
ADD16	%eax	$76
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$80
SP_STORE	%eax
ADD16	%eax	$78
SP_STORE	%ebx
ADD16	%ebx	$72
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$80
LD8	(%ecx)	$0
.LINE	307
SP_STORE	%ecx
ADD16	%ecx	$82
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$86
SP_STORE	%eax
ADD16	%eax	$76
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$88
SP_STORE	%eax
ADD16	%eax	$86
SP_STORE	%ebx
ADD16	%ebx	$82
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$88
LD8	(%ecx)	$0
.LINE	308
SP_STORE	%ecx
ADD16	%ecx	$90
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$96
SP_STORE	%eax
ADD16	%eax	$94
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$98
SP_STORE	%eax
ADD16	%eax	$96
SP_STORE	%ebx
ADD16	%ebx	$90
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$98
LD8	(%ecx)	$0
.LINE	309
SP_STORE	%ecx
ADD16	%ecx	$100
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$104
SP_STORE	%eax
ADD16	%eax	$94
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$106
SP_STORE	%eax
ADD16	%eax	$104
SP_STORE	%ebx
ADD16	%ebx	$100
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$106
LD8	(%ecx)	$0
.LINE	310
SP_STORE	%ecx
ADD16	%ecx	$108
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$114
SP_STORE	%eax
ADD16	%eax	$112
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$116
SP_STORE	%eax
ADD16	%eax	$114
SP_STORE	%ebx
ADD16	%ebx	$108
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$116
LD8	(%ecx)	$0
.LINE	311
SP_STORE	%ecx
ADD16	%ecx	$118
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$122
SP_STORE	%eax
ADD16	%eax	$112
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$124
SP_STORE	%eax
ADD16	%eax	$122
SP_STORE	%ebx
ADD16	%ebx	$118
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$124
LD8	(%ecx)	$0
.LINE	312
SP_STORE	%ecx
ADD16	%ecx	$126
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$132
SP_STORE	%eax
ADD16	%eax	$130
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$134
SP_STORE	%eax
ADD16	%eax	$132
SP_STORE	%ebx
ADD16	%ebx	$126
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$134
LD8	(%ecx)	$0
.LINE	313
SP_STORE	%ecx
ADD16	%ecx	$136
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$140
SP_STORE	%eax
ADD16	%eax	$130
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$142
SP_STORE	%eax
ADD16	%eax	$140
SP_STORE	%ebx
ADD16	%ebx	$136
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$142
LD8	(%ecx)	$0
.LINE	314
SP_STORE	%ecx
ADD16	%ecx	$144
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$150
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$152
SP_STORE	%eax
ADD16	%eax	$150
SP_STORE	%ebx
ADD16	%ebx	$144
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$152
LD8	(%ecx)	$0
.LINE	315
SP_STORE	%ecx
ADD16	%ecx	$154
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$158
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$160
SP_STORE	%eax
ADD16	%eax	$158
SP_STORE	%ebx
ADD16	%ebx	$154
ADD16	(%ecx)	(%eax)	(%ebx)
SP_RD16	%ecx	$160
LD8	(%ecx)	$0
.LINE	317
SP_STORE	%ecx
ADD16	%ecx	$290
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
PUSH16	$128
PUSH32	$0
SP_STORE	%eax
ADD16	%eax	$296
PUSH16	(%eax)
SP_DEC	$2
CALL	memset
SP_STORE	%eax
ADD16	%eax	$302
POP16	(%eax)
SP_INC	$8
.LINE	319
CALL	open_drivers
.LINE	320
CALL	PS2dev_init
.LINE	321
CALL	PS2dev_unlock
.LINE	322
SP_STORE	%ecx
ADD16	%ecx	$294
LD32	%eax	$0
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$298
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$300
SP_STORE	%eax
ADD16	%eax	$298
SP_STORE	%ebx
ADD16	%ebx	$294
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$300
CPY16	%ecx	(%ecx)
CPY16	(%ecx)	hUSBHOST_2
.LINE	323
SP_STORE	%ecx
ADD16	%ecx	$302
LD32	%eax	$1
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$306
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$308
SP_STORE	%eax
ADD16	%eax	$306
SP_STORE	%ebx
ADD16	%ebx	$302
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$308
CPY16	%ecx	(%ecx)
CPY16	(%ecx)	hUSBHOST_1
.LINE	325
SP_STORE	%ecx
ADD16	%ecx	$319
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$321
SP_STORE	%eax
ADD16	%eax	$319
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$321
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$4
.LINE	326
SP_STORE	%ecx
ADD16	%ecx	$323
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$325
SP_STORE	%eax
ADD16	%eax	$323
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$327
SP_STORE	%eax
ADD16	%eax	$325
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$327
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$0
.LINE	327
SP_STORE	%ecx
ADD16	%ecx	$329
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$329
PUSH16	(%eax)
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$336
POP8	(%eax)
SP_INC	$4
.LINE	330
SP_STORE	%ecx
ADD16	%ecx	$332
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$334
SP_STORE	%eax
ADD16	%eax	$332
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$334
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$34
.LINE	331
SP_STORE	%ecx
ADD16	%ecx	$336
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$338
SP_STORE	%eax
ADD16	%eax	$336
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$340
SP_STORE	%eax
ADD16	%eax	$338
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$340
CPY16	%ecx	(%ecx)
LD32	(%ecx)	$9600
.LINE	332
SP_STORE	%ecx
ADD16	%ecx	$342
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$342
PUSH16	(%eax)
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$349
POP8	(%eax)
SP_INC	$4
.LINE	335
SP_STORE	%ecx
ADD16	%ecx	$345
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$347
SP_STORE	%eax
ADD16	%eax	$345
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$347
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$35
.LINE	336
SP_STORE	%ecx
ADD16	%ecx	$349
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$351
SP_STORE	%eax
ADD16	%eax	$349
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$353
SP_STORE	%eax
ADD16	%eax	$351
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$353
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$1
.LINE	337
SP_STORE	%ecx
ADD16	%ecx	$355
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$355
PUSH16	(%eax)
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$362
POP8	(%eax)
SP_INC	$4
.LINE	340
SP_STORE	%ecx
ADD16	%ecx	$358
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$360
SP_STORE	%eax
ADD16	%eax	$358
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$360
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$36
.LINE	341
SP_STORE	%ecx
ADD16	%ecx	$362
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$364
SP_STORE	%eax
ADD16	%eax	$362
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$366
SP_STORE	%eax
ADD16	%eax	$364
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$366
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$1
.LINE	342
SP_STORE	%ecx
ADD16	%ecx	$368
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$368
PUSH16	(%eax)
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$375
POP8	(%eax)
SP_INC	$4
.LINE	345
SP_STORE	%ecx
ADD16	%ecx	$371
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$373
SP_STORE	%eax
ADD16	%eax	$371
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$373
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$37
.LINE	346
SP_STORE	%ecx
ADD16	%ecx	$375
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$377
SP_STORE	%eax
ADD16	%eax	$375
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$379
SP_STORE	%eax
ADD16	%eax	$377
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$379
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$0
.LINE	347
SP_STORE	%ecx
ADD16	%ecx	$381
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$381
PUSH16	(%eax)
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$388
POP8	(%eax)
SP_INC	$4
.LINE	350
SP_STORE	%ecx
ADD16	%ecx	$384
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$386
SP_STORE	%eax
ADD16	%eax	$384
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$386
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$38
.LINE	351
SP_STORE	%ecx
ADD16	%ecx	$388
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$390
SP_STORE	%eax
ADD16	%eax	$388
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$392
SP_STORE	%eax
ADD16	%eax	$390
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$392
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$0
.LINE	352
SP_STORE	%ecx
ADD16	%ecx	$394
SP_STORE	%eax
ADD16	%eax	$310
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$394
PUSH16	(%eax)
PUSH16	hUART
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$401
POP8	(%eax)
SP_INC	$4
.LINE	355
SP_STORE	%ecx
ADD16	%ecx	$397
LD32	(%ecx)	$Str@4
SP_STORE	%eax
ADD16	%eax	$397
PUSH16	(%eax)
CALL	message
SP_INC	$2
@IC7:	
.LINE	358
PUSH16	$1000
SP_DEC	$1
CALL	vos_delay_msecs
SP_STORE	%eax
ADD16	%eax	$404
POP8	(%eax)
SP_INC	$2
.LINE	359
SP_STORE	%ecx
ADD16	%ecx	$402
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$404
SP_STORE	%eax
ADD16	%eax	$402
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$404
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$0
.LINE	361
SP_STORE	%ecx
ADD16	%ecx	$406
LD8	(%ecx)	$0
@IC10:	
SP_STORE	%ecx
ADD16	%ecx	$406
CMP8	(%ecx)	$2
JLT	@IC12
JUMP	@IC11
@IC12:	
.LINE	362
SP_STORE	%ecx
ADD16	%ecx	$407
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$411
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$413
SP_STORE	%eax
ADD16	%eax	$411
SP_STORE	%ebx
ADD16	%ebx	$407
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$415
SP_STORE	%eax
ADD16	%eax	$413
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$415
CMP32	(%ecx)	$0
JZ	@IC17
JNZ	@IC16
@IC17:	
.LINE	364
SP_STORE	%ecx
ADD16	%ecx	$419
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$423
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$425
SP_STORE	%eax
ADD16	%eax	$423
SP_STORE	%ebx
ADD16	%ebx	$419
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$427
SP_STORE	%eax
ADD16	%eax	$425
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$427
PUSH16	(%eax)
SP_DEC	$1
CALL	usbhost_connect_state
SP_STORE	%eax
ADD16	%eax	$432
POP8	(%eax)
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$429
CMP8	(%ecx)	$17
JZ	@IC21
JNZ	@IC20
@IC21:	
.LINE	365
SP_STORE	%ecx
ADD16	%ecx	$430
LD32	(%ecx)	$Str@5
SP_STORE	%eax
ADD16	%eax	$430
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	366
SP_STORE	%eax
ADD16	%eax	$406
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	367
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	370
SP_STORE	%ecx
ADD16	%ecx	$444
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$446
SP_STORE	%eax
ADD16	%eax	$444
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$446
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$33
.LINE	372
SP_STORE	%ecx
ADD16	%ecx	$448
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$450
SP_STORE	%eax
ADD16	%eax	$448
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$452
SP_STORE	%eax
ADD16	%eax	$450
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$452
CPY16	%ecx	(%ecx)
LD32	(%ecx)	$0
.LINE	374
SP_STORE	%ecx
ADD16	%ecx	$454
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$456
SP_STORE	%eax
ADD16	%eax	$454
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$462
SP_STORE	%eax
ADD16	%eax	$458
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$456
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$462
CPY16	(%ecx)	(%eax)
.LINE	375
SP_STORE	%ecx
ADD16	%ecx	$464
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$468
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$470
SP_STORE	%eax
ADD16	%eax	$468
SP_STORE	%ebx
ADD16	%ebx	$464
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$472
SP_STORE	%eax
ADD16	%eax	$470
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$474
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$474
PUSH16	(%eax)
SP_STORE	%eax
ADD16	%eax	$474
PUSH16	(%eax)
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$481
POP8	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$477
SP_STORE	%eax
ADD16	%eax	$476
CPY8	(%ecx)	(%eax)
.LINE	377
SP_STORE	%ecx
ADD16	%ecx	$477
CMP8	(%ecx)	$0
JNZ	@IC25
JZ	@IC24
@IC25:	
.LINE	379
SP_STORE	%ecx
ADD16	%ecx	$478
LD32	(%ecx)	$Str@6
SP_STORE	%eax
ADD16	%eax	$478
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	380
SP_STORE	%eax
ADD16	%eax	$477
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	381
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	382
JUMP	@IC11
@IC24:	
.LINE	386
SP_STORE	%ecx
ADD16	%ecx	$482
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$484
SP_STORE	%eax
ADD16	%eax	$482
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$484
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$48
.LINE	387
SP_STORE	%ecx
ADD16	%ecx	$486
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$488
SP_STORE	%eax
ADD16	%eax	$486
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$490
SP_STORE	%eax
ADD16	%eax	$488
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$490
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$458
CPY32	(%ecx)	(%eax)
.LINE	388
SP_STORE	%ecx
ADD16	%ecx	$492
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$494
SP_STORE	%eax
ADD16	%eax	$492
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$496
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$500
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$502
SP_STORE	%eax
ADD16	%eax	$500
SP_STORE	%ebx
ADD16	%ebx	$496
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$494
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$502
CPY16	(%ecx)	(%eax)
.LINE	390
SP_STORE	%ecx
ADD16	%ecx	$504
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$508
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$510
SP_STORE	%eax
ADD16	%eax	$508
SP_STORE	%ebx
ADD16	%ebx	$504
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$512
SP_STORE	%eax
ADD16	%eax	$510
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$514
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$514
PUSH16	(%eax)
SP_STORE	%eax
ADD16	%eax	$514
PUSH16	(%eax)
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$521
POP8	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$477
SP_STORE	%eax
ADD16	%eax	$516
CPY8	(%ecx)	(%eax)
.LINE	392
SP_STORE	%ecx
ADD16	%ecx	$477
CMP8	(%ecx)	$0
JNZ	@IC29
JZ	@IC28
@IC29:	
.LINE	394
SP_STORE	%ecx
ADD16	%ecx	$517
LD32	(%ecx)	$Str@7
SP_STORE	%eax
ADD16	%eax	$517
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	395
SP_STORE	%eax
ADD16	%eax	$477
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	396
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	397
JUMP	@IC11
@IC28:	
.LINE	401
SP_STORE	%ecx
ADD16	%ecx	$521
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$523
SP_STORE	%eax
ADD16	%eax	$521
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$523
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$51
.LINE	402
SP_STORE	%ecx
ADD16	%ecx	$525
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$527
SP_STORE	%eax
ADD16	%eax	$525
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$529
SP_STORE	%eax
ADD16	%eax	$527
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$529
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$458
CPY32	(%ecx)	(%eax)
.LINE	403
SP_STORE	%ecx
ADD16	%ecx	$531
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$533
SP_STORE	%eax
ADD16	%eax	$531
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$535
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$539
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$541
SP_STORE	%eax
ADD16	%eax	$539
SP_STORE	%ebx
ADD16	%ebx	$535
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$533
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$541
CPY16	(%ecx)	(%eax)
.LINE	404
SP_STORE	%ecx
ADD16	%ecx	$543
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$547
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$549
SP_STORE	%eax
ADD16	%eax	$547
SP_STORE	%ebx
ADD16	%ebx	$543
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$551
SP_STORE	%eax
ADD16	%eax	$549
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$553
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$553
PUSH16	(%eax)
SP_STORE	%eax
ADD16	%eax	$553
PUSH16	(%eax)
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$560
POP8	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$477
SP_STORE	%eax
ADD16	%eax	$555
CPY8	(%ecx)	(%eax)
.LINE	406
SP_STORE	%ecx
ADD16	%ecx	$477
CMP8	(%ecx)	$0
JNZ	@IC33
JZ	@IC32
@IC33:	
.LINE	408
SP_STORE	%ecx
ADD16	%ecx	$556
LD32	(%ecx)	$Str@8
SP_STORE	%eax
ADD16	%eax	$556
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	409
SP_STORE	%eax
ADD16	%eax	$477
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	410
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	411
JUMP	@IC11
@IC32:	
.LINE	415
SP_STORE	%ecx
ADD16	%ecx	$560
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$562
SP_STORE	%eax
ADD16	%eax	$560
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$562
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$56
.LINE	416
SP_STORE	%ecx
ADD16	%ecx	$564
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$566
SP_STORE	%eax
ADD16	%eax	$564
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$568
SP_STORE	%eax
ADD16	%eax	$566
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$570
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$574
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$576
SP_STORE	%eax
ADD16	%eax	$574
SP_STORE	%ebx
ADD16	%ebx	$570
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$578
SP_STORE	%eax
ADD16	%eax	$576
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$568
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$578
CPY32	(%ecx)	(%eax)
.LINE	417
SP_STORE	%ecx
ADD16	%ecx	$582
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$584
SP_STORE	%eax
ADD16	%eax	$582
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$590
SP_STORE	%eax
ADD16	%eax	$586
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$584
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$590
CPY16	(%ecx)	(%eax)
.LINE	419
SP_STORE	%ecx
ADD16	%ecx	$592
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$596
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$598
SP_STORE	%eax
ADD16	%eax	$596
SP_STORE	%ebx
ADD16	%ebx	$592
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$600
SP_STORE	%eax
ADD16	%eax	$598
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$602
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$602
PUSH16	(%eax)
SP_STORE	%eax
ADD16	%eax	$602
PUSH16	(%eax)
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$609
POP8	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$477
SP_STORE	%eax
ADD16	%eax	$604
CPY8	(%ecx)	(%eax)
.LINE	421
SP_STORE	%ecx
ADD16	%ecx	$477
CMP8	(%ecx)	$0
JNZ	@IC37
JZ	@IC36
@IC37:	
.LINE	423
SP_STORE	%ecx
ADD16	%ecx	$605
LD32	(%ecx)	$Str@9
SP_STORE	%eax
ADD16	%eax	$605
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	424
SP_STORE	%eax
ADD16	%eax	$477
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	425
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	426
JUMP	@IC11
@IC36:	
.LINE	428
SP_STORE	%ecx
ADD16	%ecx	$609
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$615
SP_STORE	%eax
ADD16	%eax	$613
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$617
SP_STORE	%eax
ADD16	%eax	$615
SP_STORE	%ebx
ADD16	%ebx	$609
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$619
SP_STORE	%eax
ADD16	%eax	$586
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$621
SP_STORE	%eax
ADD16	%eax	$619
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$623
SP_STORE	%eax
ADD16	%eax	$621
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$617
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$623
CPY8	(%ecx)	(%eax)
.LINE	431
SP_STORE	%ecx
ADD16	%ecx	$625
LD8	(%ecx)	$0
.LINE	432
SP_STORE	%ecx
ADD16	%ecx	$634
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$636
SP_STORE	%eax
ADD16	%eax	$634
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$636
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$129
.LINE	436
SP_STORE	%ecx
ADD16	%ecx	$638
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$640
SP_STORE	%eax
ADD16	%eax	$638
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$640
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$6
.LINE	438
SP_STORE	%ecx
ADD16	%ecx	$642
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$644
SP_STORE	%eax
ADD16	%eax	$642
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$646
SP_STORE	%ebx
ADD16	%ebx	$625
CPY8	%ebx	(%ebx)
AND32	%ebx	$255
LD32	%eax	$8704
OR32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$644
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$646
CPY16	(%ecx)	(%eax)
.LINE	439
SP_STORE	%ecx
ADD16	%ecx	$650
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$652
SP_STORE	%eax
ADD16	%eax	$650
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$652
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$0
.LINE	440
SP_STORE	%ecx
ADD16	%ecx	$654
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$656
SP_STORE	%eax
ADD16	%eax	$654
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$656
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$255
.LINE	442
SP_STORE	%ecx
ADD16	%ecx	$658
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$660
SP_STORE	%eax
ADD16	%eax	$658
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$660
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$80
.LINE	443
SP_STORE	%ecx
ADD16	%ecx	$662
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$664
SP_STORE	%eax
ADD16	%eax	$662
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$666
SP_STORE	%eax
ADD16	%eax	$664
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$668
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$672
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$674
SP_STORE	%eax
ADD16	%eax	$672
SP_STORE	%ebx
ADD16	%ebx	$668
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$676
SP_STORE	%eax
ADD16	%eax	$674
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$666
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$676
CPY32	(%ecx)	(%eax)
.LINE	444
SP_STORE	%ecx
ADD16	%ecx	$680
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$682
SP_STORE	%eax
ADD16	%eax	$680
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$684
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$682
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$684
CPY16	(%ecx)	(%eax)
.LINE	445
SP_STORE	%ecx
ADD16	%ecx	$686
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$688
SP_STORE	%eax
ADD16	%eax	$686
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$690
LD16	(%ecx)	$pParser
SP_STORE	%ecx
ADD16	%ecx	$692
SP_STORE	%eax
ADD16	%eax	$690
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$694
SP_STORE	%eax
ADD16	%eax	$692
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$688
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$694
CPY16	(%ecx)	(%eax)
.LINE	447
SP_STORE	%ecx
ADD16	%ecx	$696
LD16	(%ecx)	$pParser
SP_STORE	%ecx
ADD16	%ecx	$698
SP_STORE	%eax
ADD16	%eax	$696
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$700
SP_STORE	%eax
ADD16	%eax	$698
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
PUSH16	$128
PUSH32	$0
SP_STORE	%eax
ADD16	%eax	$706
PUSH16	(%eax)
SP_DEC	$2
CALL	memset
SP_STORE	%eax
ADD16	%eax	$712
POP16	(%eax)
SP_INC	$8
.LINE	448
SP_STORE	%ecx
ADD16	%ecx	$704
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$708
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$710
SP_STORE	%eax
ADD16	%eax	$708
SP_STORE	%ebx
ADD16	%ebx	$704
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$712
SP_STORE	%eax
ADD16	%eax	$710
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$714
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$714
PUSH16	(%eax)
SP_STORE	%eax
ADD16	%eax	$714
PUSH16	(%eax)
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$721
POP8	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$477
SP_STORE	%eax
ADD16	%eax	$716
CPY8	(%ecx)	(%eax)
.LINE	449
SP_STORE	%ecx
ADD16	%ecx	$477
CMP8	(%ecx)	$0
JNZ	@IC41
JZ	@IC40
@IC41:	
.LINE	451
SP_STORE	%ecx
ADD16	%ecx	$717
LD32	(%ecx)	$Str@10
SP_STORE	%eax
ADD16	%eax	$717
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	452
SP_STORE	%eax
ADD16	%eax	$477
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	453
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	454
JUMP	@IC11
@IC40:	
.LINE	457
SP_STORE	%ecx
ADD16	%ecx	$721
LD32	(%ecx)	$Str@11
SP_STORE	%eax
ADD16	%eax	$721
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	458
SP_STORE	%eax
ADD16	%eax	$625
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	459
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	461
SP_STORE	%ecx
ADD16	%ecx	$725
LD8	(%ecx)	$0
@IC44:	
SP_STORE	%ecx
ADD16	%ecx	$725
CMP8	(%ecx)	$128
JLT	@IC46
JUMP	@IC45
@IC46:	
.LINE	463
SP_STORE	%ecx
ADD16	%ecx	$726
LD16	(%ecx)	$pParser
SP_STORE	%ecx
ADD16	%ecx	$728
SP_STORE	%eax
ADD16	%eax	$726
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$730
SP_STORE	%eax
ADD16	%eax	$728
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$732
SP_STORE	%eax
ADD16	%eax	$725
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$736
SP_STORE	%eax
ADD16	%eax	$730
SP_STORE	%ebx
ADD16	%ebx	$732
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$738
SP_STORE	%eax
ADD16	%eax	$736
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$738
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	464
SP_STORE	%ecx
ADD16	%ecx	$739
LD32	(%ecx)	$Str@12
SP_STORE	%eax
ADD16	%eax	$739
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	465
SP_STORE	%ecx
ADD16	%ecx	$725
CMP8	(%ecx)	$15
JZ	@IC51
JNZ	@IC50
@IC51:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC50:	
.LINE	466
SP_STORE	%ecx
ADD16	%ecx	$725
CMP8	(%ecx)	$31
JZ	@IC55
JNZ	@IC54
@IC55:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC54:	
.LINE	467
SP_STORE	%ecx
ADD16	%ecx	$725
CMP8	(%ecx)	$47
JZ	@IC59
JNZ	@IC58
@IC59:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC58:	
.LINE	468
SP_STORE	%ecx
ADD16	%ecx	$725
CMP8	(%ecx)	$63
JZ	@IC63
JNZ	@IC62
@IC63:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC62:	
.LINE	469
SP_STORE	%ecx
ADD16	%ecx	$725
CMP8	(%ecx)	$79
JZ	@IC67
JNZ	@IC66
@IC67:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC66:	
.LINE	470
SP_STORE	%ecx
ADD16	%ecx	$725
CMP8	(%ecx)	$95
JZ	@IC71
JNZ	@IC70
@IC71:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC70:	
.LINE	471
SP_STORE	%ecx
ADD16	%ecx	$725
CMP8	(%ecx)	$111
JZ	@IC75
JNZ	@IC74
@IC75:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC74:	
.LINE	472
SP_STORE	%ecx
ADD16	%ecx	$725
CMP8	(%ecx)	$127
JZ	@IC79
JNZ	@IC78
@IC79:	
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC78:	
@IC47:	
.LINE	461
SP_STORE	%ecx
ADD16	%ecx	$743
SP_STORE	%eax
ADD16	%eax	$725
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$725
INC8	(%eax)	$1
JUMP	@IC44
@IC45:	
.LINE	475
PUSH16	pParser
CALL	ResetParser
SP_INC	$2
.LINE	476
SP_STORE	%ecx
ADD16	%ecx	$744
LD16	(%ecx)	$pParser
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
LD16	%ebx	$128
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$748
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$128
.LINE	477
PUSH16	pParser
SP_DEC	$1
CALL	FindReport_max_ID
SP_STORE	%eax
ADD16	%eax	$753
POP8	(%eax)
SP_INC	$2
SP_STORE	%eax
ADD16	%eax	$750
CPY8	max_ReportID	(%eax)
.LINE	478
SP_STORE	%ecx
ADD16	%ecx	$751
LD8	(%ecx)	$0
@IC82:	
SP_STORE	%ecx
ADD16	%ecx	$752
CPY8	%eax	max_ReportID
AND32	%eax	$255
LD32	%ebx	$1
ADD32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$751
SP_STORE	%eax
ADD16	%eax	$752
CMP8	(%ecx)	(%eax)
JLTS	@IC84
JUMP	@IC83
@IC84:	
.LINE	479
SP_STORE	%ecx
ADD16	%ecx	$756
SP_STORE	%eax
ADD16	%eax	$751
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$760
LD16	(%ecx)	$ReportID_tbl
SP_STORE	%ecx
ADD16	%ecx	$762
SP_STORE	%eax
ADD16	%eax	$760
SP_STORE	%ebx
ADD16	%ebx	$756
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$764
SP_STORE	%eax
ADD16	%eax	$762
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$766
SP_STORE	%eax
ADD16	%eax	$751
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$766
PUSH8	(%eax)
PUSH16	pParser
SP_DEC	$4
CALL	ReportID_Offset
SP_STORE	%eax
ADD16	%eax	$774
POP32	(%eax)
SP_INC	$3
SP_STORE	%ecx
ADD16	%ecx	$764
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$767
CPY16	(%ecx)	(%eax)
.LINE	480
SP_STORE	%ecx
ADD16	%ecx	$771
SP_STORE	%eax
ADD16	%eax	$751
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$775
LD16	(%ecx)	$ReportID_tbl
SP_STORE	%ecx
ADD16	%ecx	$777
SP_STORE	%eax
ADD16	%eax	$775
SP_STORE	%ebx
ADD16	%ebx	$771
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$779
SP_STORE	%eax
ADD16	%eax	$777
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$781
SP_STORE	%eax
ADD16	%eax	$751
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$781
PUSH8	(%eax)
PUSH16	pParser
SP_DEC	$4
CALL	ReportID_DataLength
SP_STORE	%eax
ADD16	%eax	$789
POP32	(%eax)
SP_INC	$3
SP_STORE	%ecx
ADD16	%ecx	$779
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$782
CPY16	(%ecx)	(%eax)
@IC85:	
.LINE	478
SP_STORE	%eax
ADD16	%eax	$751
INC8	(%eax)	$1
JUMP	@IC82
@IC83:	
.LINE	482
SP_STORE	%ecx
ADD16	%ecx	$786
LD32	(%ecx)	$Str@13
SP_STORE	%eax
ADD16	%eax	$786
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	483
PUSH8	max_ReportID
CALL	number
SP_INC	$1
.LINE	484
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	487
SP_STORE	%ecx
ADD16	%ecx	$751
LD8	(%ecx)	$0
@IC88:	
SP_STORE	%ecx
ADD16	%ecx	$751
CMP8	(%ecx)	$10
JLT	@IC90
JUMP	@IC89
@IC90:	
.LINE	488
SP_STORE	%ecx
ADD16	%ecx	$790
LD16	(%ecx)	$phid_data
SP_STORE	%ecx
ADD16	%ecx	$792
SP_STORE	%eax
ADD16	%eax	$790
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$794
SP_STORE	%eax
ADD16	%eax	$792
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$796
SP_STORE	%eax
ADD16	%eax	$751
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$800
SP_STORE	%eax
ADD16	%eax	$794
SP_STORE	%ebx
ADD16	%ebx	$796
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$802
SP_STORE	%eax
ADD16	%eax	$800
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$802
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$0
.LINE	489
SP_STORE	%ecx
ADD16	%ecx	$804
LD16	(%ecx)	$phid_data
SP_STORE	%ecx
ADD16	%ecx	$806
SP_STORE	%eax
ADD16	%eax	$804
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$808
SP_STORE	%eax
ADD16	%eax	$806
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$810
SP_STORE	%eax
ADD16	%eax	$751
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$814
SP_STORE	%eax
ADD16	%eax	$808
SP_STORE	%ebx
ADD16	%ebx	$810
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$816
SP_STORE	%eax
ADD16	%eax	$814
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$816
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$0
@IC91:	
.LINE	487
SP_STORE	%eax
ADD16	%eax	$751
INC8	(%eax)	$1
JUMP	@IC88
@IC89:	
.LINE	491
SP_STORE	%ecx
ADD16	%ecx	$818
LD16	(%ecx)	$phid_data
SP_STORE	%ecx
ADD16	%ecx	$820
SP_STORE	%eax
ADD16	%eax	$818
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$822
SP_STORE	%eax
ADD16	%eax	$820
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$822
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$10
.LINE	493
SP_STORE	%ecx
ADD16	%ecx	$824
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$828
SP_STORE	%eax
ADD16	%eax	$76
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$830
SP_STORE	%eax
ADD16	%eax	$828
SP_STORE	%ebx
ADD16	%ebx	$824
ADD16	(%ecx)	(%eax)	(%ebx)
PUSH16	phid_data
PUSH16	pParser
SP_DEC	$4
CALL	FindMouse_Buttons
SP_STORE	%eax
ADD16	%eax	$840
POP32	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$830
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$832
CPY8	(%ecx)	(%eax)
.LINE	494
SP_STORE	%ecx
ADD16	%ecx	$836
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$840
SP_STORE	%eax
ADD16	%eax	$76
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$842
SP_STORE	%eax
ADD16	%eax	$840
SP_STORE	%ebx
ADD16	%ebx	$836
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$844
SP_STORE	%eax
ADD16	%eax	$842
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$844
CMP8	(%ecx)	$0
JNZ	@IC95
JUMP	@IC94
@IC95:	
.LINE	495
SP_STORE	%ecx
ADD16	%ecx	$845
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$847
SP_STORE	%eax
ADD16	%eax	$845
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$847
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$1
.LINE	496
SP_STORE	%ecx
ADD16	%ecx	$849
LD16	(%ecx)	$ReportID_MS
SP_STORE	%ecx
ADD16	%ecx	$851
LD16	(%ecx)	$ReportID_tbl
PUSH16	$40
SP_STORE	%eax
ADD16	%eax	$853
PUSH16	(%eax)
SP_STORE	%eax
ADD16	%eax	$853
PUSH16	(%eax)
SP_DEC	$2
CALL	memcpy
SP_STORE	%eax
ADD16	%eax	$861
POP16	(%eax)
SP_INC	$6
.LINE	498
SP_STORE	%ecx
ADD16	%ecx	$855
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$859
SP_STORE	%eax
ADD16	%eax	$94
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$861
SP_STORE	%eax
ADD16	%eax	$859
SP_STORE	%ebx
ADD16	%ebx	$855
ADD16	(%ecx)	(%eax)	(%ebx)
PUSH16	phid_Bdata
PUSH16	pParser
SP_DEC	$4
CALL	FindMouse_Buttons
SP_STORE	%eax
ADD16	%eax	$871
POP32	(%eax)
SP_INC	$4
SP_STORE	%ecx
ADD16	%ecx	$861
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$863
CPY8	(%ecx)	(%eax)
.LINE	499
SP_STORE	%ecx
ADD16	%ecx	$867
LD16	(%ecx)	$48
.LINE	500
SP_STORE	%ecx
ADD16	%ecx	$869
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$873
SP_STORE	%eax
ADD16	%eax	$112
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$875
SP_STORE	%eax
ADD16	%eax	$873
SP_STORE	%ebx
ADD16	%ebx	$869
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%eax
ADD16	%eax	$867
PUSH16	(%eax)
PUSH16	phid_Xdata
PUSH16	pParser
SP_DEC	$4
CALL	FindMouse_XYW
SP_STORE	%eax
ADD16	%eax	$887
POP32	(%eax)
SP_INC	$6
SP_STORE	%ecx
ADD16	%ecx	$875
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$877
CPY8	(%ecx)	(%eax)
.LINE	501
SP_STORE	%ecx
ADD16	%ecx	$867
LD16	(%ecx)	$49
.LINE	502
SP_STORE	%ecx
ADD16	%ecx	$881
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$885
SP_STORE	%eax
ADD16	%eax	$130
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$887
SP_STORE	%eax
ADD16	%eax	$885
SP_STORE	%ebx
ADD16	%ebx	$881
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%eax
ADD16	%eax	$867
PUSH16	(%eax)
PUSH16	phid_Ydata
PUSH16	pParser
SP_DEC	$4
CALL	FindMouse_XYW
SP_STORE	%eax
ADD16	%eax	$899
POP32	(%eax)
SP_INC	$6
SP_STORE	%ecx
ADD16	%ecx	$887
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$889
CPY8	(%ecx)	(%eax)
.LINE	503
SP_STORE	%ecx
ADD16	%ecx	$867
LD16	(%ecx)	$56
.LINE	504
SP_STORE	%ecx
ADD16	%ecx	$893
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$897
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$899
SP_STORE	%eax
ADD16	%eax	$897
SP_STORE	%ebx
ADD16	%ebx	$893
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%eax
ADD16	%eax	$867
PUSH16	(%eax)
PUSH16	phid_Wdata
PUSH16	pParser
SP_DEC	$4
CALL	FindMouse_XYW
SP_STORE	%eax
ADD16	%eax	$911
POP32	(%eax)
SP_INC	$6
SP_STORE	%ecx
ADD16	%ecx	$899
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$901
CPY8	(%ecx)	(%eax)
@IC94:	
.LINE	507
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	508
SP_STORE	%ecx
ADD16	%ecx	$905
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$909
SP_STORE	%eax
ADD16	%eax	$94
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$911
SP_STORE	%eax
ADD16	%eax	$909
SP_STORE	%ebx
ADD16	%ebx	$905
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$913
SP_STORE	%eax
ADD16	%eax	$911
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$913
CMP8	(%ecx)	$0
JNZ	@IC97
JUMP	@IC96
@IC97:	
.LINE	509
SP_STORE	%ecx
ADD16	%ecx	$914
LD32	(%ecx)	$Str@14
SP_STORE	%eax
ADD16	%eax	$914
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	510
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	511
SP_STORE	%ecx
ADD16	%ecx	$918
LD32	(%ecx)	$Str@15
SP_STORE	%eax
ADD16	%eax	$918
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	512
SP_STORE	%ecx
ADD16	%ecx	$922
LD16	(%ecx)	$phid_Bdata
SP_STORE	%ecx
ADD16	%ecx	$924
SP_STORE	%eax
ADD16	%eax	$922
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$926
SP_STORE	%eax
ADD16	%eax	$924
LD16	%ebx	$46
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$928
SP_STORE	%eax
ADD16	%eax	$926
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$928
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	513
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	514
SP_STORE	%ecx
ADD16	%ecx	$929
LD32	(%ecx)	$Str@16
SP_STORE	%eax
ADD16	%eax	$929
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	515
SP_STORE	%ecx
ADD16	%ecx	$933
LD16	(%ecx)	$phid_Bdata
SP_STORE	%ecx
ADD16	%ecx	$935
SP_STORE	%eax
ADD16	%eax	$933
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$937
SP_STORE	%eax
ADD16	%eax	$935
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$939
SP_STORE	%eax
ADD16	%eax	$937
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$939
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	516
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC96:	
.LINE	518
SP_STORE	%ecx
ADD16	%ecx	$940
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$944
SP_STORE	%eax
ADD16	%eax	$112
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$946
SP_STORE	%eax
ADD16	%eax	$944
SP_STORE	%ebx
ADD16	%ebx	$940
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$948
SP_STORE	%eax
ADD16	%eax	$946
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$948
CMP8	(%ecx)	$0
JNZ	@IC99
JUMP	@IC98
@IC99:	
.LINE	519
SP_STORE	%ecx
ADD16	%ecx	$949
LD32	(%ecx)	$Str@17
SP_STORE	%eax
ADD16	%eax	$949
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	520
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	521
SP_STORE	%ecx
ADD16	%ecx	$953
LD32	(%ecx)	$Str@18
SP_STORE	%eax
ADD16	%eax	$953
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	522
SP_STORE	%ecx
ADD16	%ecx	$957
LD16	(%ecx)	$phid_Xdata
SP_STORE	%ecx
ADD16	%ecx	$959
SP_STORE	%eax
ADD16	%eax	$957
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$961
SP_STORE	%eax
ADD16	%eax	$959
LD16	%ebx	$46
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$963
SP_STORE	%eax
ADD16	%eax	$961
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$963
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	523
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	524
SP_STORE	%ecx
ADD16	%ecx	$964
LD32	(%ecx)	$Str@19
SP_STORE	%eax
ADD16	%eax	$964
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	525
SP_STORE	%ecx
ADD16	%ecx	$968
LD16	(%ecx)	$phid_Xdata
SP_STORE	%ecx
ADD16	%ecx	$970
SP_STORE	%eax
ADD16	%eax	$968
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$972
SP_STORE	%eax
ADD16	%eax	$970
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$974
SP_STORE	%eax
ADD16	%eax	$972
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$974
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	526
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC98:	
.LINE	528
SP_STORE	%ecx
ADD16	%ecx	$975
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$979
SP_STORE	%eax
ADD16	%eax	$130
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$981
SP_STORE	%eax
ADD16	%eax	$979
SP_STORE	%ebx
ADD16	%ebx	$975
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$983
SP_STORE	%eax
ADD16	%eax	$981
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$983
CMP8	(%ecx)	$0
JNZ	@IC101
JUMP	@IC100
@IC101:	
.LINE	529
SP_STORE	%ecx
ADD16	%ecx	$984
LD32	(%ecx)	$Str@20
SP_STORE	%eax
ADD16	%eax	$984
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	530
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	531
SP_STORE	%ecx
ADD16	%ecx	$988
LD32	(%ecx)	$Str@21
SP_STORE	%eax
ADD16	%eax	$988
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	532
SP_STORE	%ecx
ADD16	%ecx	$992
LD16	(%ecx)	$phid_Ydata
SP_STORE	%ecx
ADD16	%ecx	$994
SP_STORE	%eax
ADD16	%eax	$992
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$996
SP_STORE	%eax
ADD16	%eax	$994
LD16	%ebx	$46
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$998
SP_STORE	%eax
ADD16	%eax	$996
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$998
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	533
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	534
SP_STORE	%ecx
ADD16	%ecx	$999
LD32	(%ecx)	$Str@22
SP_STORE	%eax
ADD16	%eax	$999
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	535
SP_STORE	%ecx
ADD16	%ecx	$1003
LD16	(%ecx)	$phid_Ydata
SP_STORE	%ecx
ADD16	%ecx	$1005
SP_STORE	%eax
ADD16	%eax	$1003
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1007
SP_STORE	%eax
ADD16	%eax	$1005
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1009
SP_STORE	%eax
ADD16	%eax	$1007
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1009
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	536
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC100:	
.LINE	538
SP_STORE	%ecx
ADD16	%ecx	$1010
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1014
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1016
SP_STORE	%eax
ADD16	%eax	$1014
SP_STORE	%ebx
ADD16	%ebx	$1010
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1018
SP_STORE	%eax
ADD16	%eax	$1016
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1018
CMP8	(%ecx)	$0
JNZ	@IC103
JUMP	@IC102
@IC103:	
.LINE	539
SP_STORE	%ecx
ADD16	%ecx	$1019
LD32	(%ecx)	$Str@23
SP_STORE	%eax
ADD16	%eax	$1019
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	540
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	541
SP_STORE	%ecx
ADD16	%ecx	$1023
LD32	(%ecx)	$Str@24
SP_STORE	%eax
ADD16	%eax	$1023
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	542
SP_STORE	%ecx
ADD16	%ecx	$1027
LD16	(%ecx)	$phid_Wdata
SP_STORE	%ecx
ADD16	%ecx	$1029
SP_STORE	%eax
ADD16	%eax	$1027
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1031
SP_STORE	%eax
ADD16	%eax	$1029
LD16	%ebx	$46
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1033
SP_STORE	%eax
ADD16	%eax	$1031
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1033
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	543
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	544
SP_STORE	%ecx
ADD16	%ecx	$1034
LD32	(%ecx)	$Str@25
SP_STORE	%eax
ADD16	%eax	$1034
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	545
SP_STORE	%ecx
ADD16	%ecx	$1038
LD16	(%ecx)	$phid_Wdata
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
LD16	%ebx	$47
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1044
SP_STORE	%eax
ADD16	%eax	$1042
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1044
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	546
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC102:	
.LINE	550
SP_STORE	%ecx
ADD16	%ecx	$1045
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1047
SP_STORE	%eax
ADD16	%eax	$1045
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1047
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$33
.LINE	553
SP_STORE	%ecx
ADD16	%ecx	$1049
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1051
SP_STORE	%eax
ADD16	%eax	$1049
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1051
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$10
.LINE	554
SP_STORE	%ecx
ADD16	%ecx	$1053
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1055
SP_STORE	%eax
ADD16	%eax	$1053
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1055
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$0
.LINE	555
SP_STORE	%ecx
ADD16	%ecx	$1057
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1059
SP_STORE	%eax
ADD16	%eax	$1057
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1059
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$0
.LINE	556
SP_STORE	%ecx
ADD16	%ecx	$1061
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1063
SP_STORE	%eax
ADD16	%eax	$1061
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1063
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$0
.LINE	558
SP_STORE	%ecx
ADD16	%ecx	$1065
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1067
SP_STORE	%eax
ADD16	%eax	$1065
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1067
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$80
.LINE	559
SP_STORE	%ecx
ADD16	%ecx	$1069
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1071
SP_STORE	%eax
ADD16	%eax	$1069
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1073
SP_STORE	%eax
ADD16	%eax	$1071
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1075
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1079
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1081
SP_STORE	%eax
ADD16	%eax	$1079
SP_STORE	%ebx
ADD16	%ebx	$1075
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1083
SP_STORE	%eax
ADD16	%eax	$1081
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1073
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1083
CPY32	(%ecx)	(%eax)
.LINE	560
SP_STORE	%ecx
ADD16	%ecx	$1087
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1089
SP_STORE	%eax
ADD16	%eax	$1087
LD16	%ebx	$8
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1091
SP_STORE	%eax
ADD16	%eax	$626
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1089
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1091
CPY16	(%ecx)	(%eax)
.LINE	562
SP_STORE	%ecx
ADD16	%ecx	$1093
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1097
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$1099
SP_STORE	%eax
ADD16	%eax	$1097
SP_STORE	%ebx
ADD16	%ebx	$1093
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1101
SP_STORE	%eax
ADD16	%eax	$1099
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1103
SP_STORE	%eax
ADD16	%eax	$434
CPY16	(%ecx)	%eax
SP_STORE	%eax
ADD16	%eax	$1103
PUSH16	(%eax)
SP_STORE	%eax
ADD16	%eax	$1103
PUSH16	(%eax)
SP_DEC	$1
CALL	vos_dev_ioctl
SP_STORE	%eax
ADD16	%eax	$1110
POP8	(%eax)
SP_INC	$4
.LINE	564
SP_STORE	%ecx
ADD16	%ecx	$1106
LD32	(%ecx)	$Str@26
SP_STORE	%eax
ADD16	%eax	$1106
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	565
SP_STORE	%eax
ADD16	%eax	$406
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	566
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC20:	
@IC16:	
@IC13:	
.LINE	361
SP_STORE	%ecx
ADD16	%ecx	$1110
SP_STORE	%eax
ADD16	%eax	$406
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$406
INC8	(%eax)	$1
JUMP	@IC10
@IC11:	
.LINE	574
SP_STORE	%ecx
ADD16	%ecx	$1111
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1115
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1117
SP_STORE	%eax
ADD16	%eax	$1115
SP_STORE	%ebx
ADD16	%ebx	$1111
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1119
SP_STORE	%eax
ADD16	%eax	$1117
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1119
CMP32	(%ecx)	$0
JNZ	@IC105
JUMP	@IC104
@IC105:	
.LINE	576
CALL	LED_ON
.LINE	577
PUSH16	$9
SP_DEC	$2
CALL	vos_malloc
SP_STORE	%eax
ADD16	%eax	$1127
POP16	(%eax)
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$1125
SP_STORE	%eax
ADD16	%eax	$1123
CPY16	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1125
CPY16	sem_list	(%eax)
.LINE	578
SP_STORE	%ecx
ADD16	%ecx	$1127
LD16	(%ecx)	$sem_list
SP_STORE	%ecx
ADD16	%ecx	$1129
SP_STORE	%eax
ADD16	%eax	$1127
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1131
SP_STORE	%eax
ADD16	%eax	$1129
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1131
CPY16	%ecx	(%ecx)
LD16	(%ecx)	$0
.LINE	579
SP_STORE	%ecx
ADD16	%ecx	$1133
LD16	(%ecx)	$sem_list
SP_STORE	%ecx
ADD16	%ecx	$1135
SP_STORE	%eax
ADD16	%eax	$1133
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1137
SP_STORE	%eax
ADD16	%eax	$1135
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1137
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$2
.LINE	580
SP_STORE	%ecx
ADD16	%ecx	$1139
LD16	(%ecx)	$sem_list
SP_STORE	%ecx
ADD16	%ecx	$1141
SP_STORE	%eax
ADD16	%eax	$1139
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1143
SP_STORE	%eax
ADD16	%eax	$1141
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1143
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$0
.LINE	583
SP_STORE	%ecx
ADD16	%ecx	$1145
LD32	%eax	$0
LD32	%ebx	$5
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1159
SP_STORE	%eax
ADD16	%eax	$1149
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1161
SP_STORE	%eax
ADD16	%eax	$1159
SP_STORE	%ebx
ADD16	%ebx	$1145
ADD16	(%ecx)	(%eax)	(%ebx)
PUSH16	$0
SP_STORE	%eax
ADD16	%eax	$1163
PUSH16	(%eax)
CALL	vos_init_semaphore
SP_INC	$4
.LINE	584
SP_STORE	%ecx
ADD16	%ecx	$1163
LD32	%eax	$1
LD32	%ebx	$5
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1167
SP_STORE	%eax
ADD16	%eax	$1149
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1169
SP_STORE	%eax
ADD16	%eax	$1167
SP_STORE	%ebx
ADD16	%ebx	$1163
ADD16	(%ecx)	(%eax)	(%ebx)
PUSH16	$0
SP_STORE	%eax
ADD16	%eax	$1171
PUSH16	(%eax)
CALL	vos_init_semaphore
SP_INC	$4
.LINE	586
SP_STORE	%ecx
ADD16	%ecx	$1199
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
PUSH16	$28
PUSH32	$0
SP_STORE	%eax
ADD16	%eax	$1205
PUSH16	(%eax)
SP_DEC	$2
CALL	memset
SP_STORE	%eax
ADD16	%eax	$1211
POP16	(%eax)
SP_INC	$8
.LINE	587
SP_STORE	%ecx
ADD16	%ecx	$1203
LD32	%eax	$0
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1207
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1209
SP_STORE	%eax
ADD16	%eax	$1207
SP_STORE	%ebx
ADD16	%ebx	$1203
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1211
SP_STORE	%eax
ADD16	%eax	$1209
LD16	%ebx	$11
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1211
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$96
.LINE	588
SP_STORE	%ecx
ADD16	%ecx	$1213
LD32	%eax	$0
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1217
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1219
SP_STORE	%eax
ADD16	%eax	$1217
SP_STORE	%ebx
ADD16	%ebx	$1213
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1221
SP_STORE	%eax
ADD16	%eax	$1219
LD16	%ebx	$7
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1223
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1221
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1223
CPY16	(%ecx)	(%eax)
.LINE	589
SP_STORE	%ecx
ADD16	%ecx	$1225
LD32	%eax	$0
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1229
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1231
SP_STORE	%eax
ADD16	%eax	$1229
SP_STORE	%ebx
ADD16	%ebx	$1225
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1233
SP_STORE	%eax
ADD16	%eax	$1231
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1235
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1239
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1241
SP_STORE	%eax
ADD16	%eax	$1239
SP_STORE	%ebx
ADD16	%ebx	$1235
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1243
SP_STORE	%eax
ADD16	%eax	$1241
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1233
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1243
CPY32	(%ecx)	(%eax)
.LINE	590
SP_STORE	%ecx
ADD16	%ecx	$1247
LD32	%eax	$0
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1251
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1253
SP_STORE	%eax
ADD16	%eax	$1251
SP_STORE	%ebx
ADD16	%ebx	$1247
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1255
SP_STORE	%eax
ADD16	%eax	$1253
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1257
LD32	%eax	$0
LD32	%ebx	$5
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1261
SP_STORE	%eax
ADD16	%eax	$1149
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1263
SP_STORE	%eax
ADD16	%eax	$1261
SP_STORE	%ebx
ADD16	%ebx	$1257
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1255
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1263
CPY16	(%ecx)	(%eax)
.LINE	592
SP_STORE	%ecx
ADD16	%ecx	$1265
LD32	%eax	$1
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1269
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1271
SP_STORE	%eax
ADD16	%eax	$1269
SP_STORE	%ebx
ADD16	%ebx	$1265
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1273
SP_STORE	%eax
ADD16	%eax	$1271
LD16	%ebx	$11
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1273
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$96
.LINE	593
SP_STORE	%ecx
ADD16	%ecx	$1275
LD32	%eax	$1
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1279
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1281
SP_STORE	%eax
ADD16	%eax	$1279
SP_STORE	%ebx
ADD16	%ebx	$1275
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1283
SP_STORE	%eax
ADD16	%eax	$1281
LD16	%ebx	$7
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1285
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1283
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1285
CPY16	(%ecx)	(%eax)
.LINE	594
SP_STORE	%ecx
ADD16	%ecx	$1287
LD32	%eax	$1
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1291
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1293
SP_STORE	%eax
ADD16	%eax	$1291
SP_STORE	%ebx
ADD16	%ebx	$1287
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1295
SP_STORE	%eax
ADD16	%eax	$1293
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1297
LD32	%eax	$1
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1301
SP_STORE	%eax
ADD16	%eax	$28
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1303
SP_STORE	%eax
ADD16	%eax	$1301
SP_STORE	%ebx
ADD16	%ebx	$1297
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1305
SP_STORE	%eax
ADD16	%eax	$1303
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1295
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1305
CPY32	(%ecx)	(%eax)
.LINE	595
SP_STORE	%ecx
ADD16	%ecx	$1309
LD32	%eax	$1
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1313
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1315
SP_STORE	%eax
ADD16	%eax	$1313
SP_STORE	%ebx
ADD16	%ebx	$1309
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1317
SP_STORE	%eax
ADD16	%eax	$1315
LD16	%ebx	$4
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1319
LD32	%eax	$1
LD32	%ebx	$5
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1323
SP_STORE	%eax
ADD16	%eax	$1149
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1325
SP_STORE	%eax
ADD16	%eax	$1323
SP_STORE	%ebx
ADD16	%ebx	$1319
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1317
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1325
CPY16	(%ecx)	(%eax)
.LINE	597
SP_STORE	%ecx
ADD16	%ecx	$406
LD8	(%ecx)	$255
@IC106:	
.LINE	598
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC108
JUMP	@IC107
@IC108:	
.LINE	601
SP_STORE	%ecx
ADD16	%ecx	$406
CMP8	(%ecx)	$1
JNZ	@IC111
JZ	@IC109
@IC111:	
SP_STORE	%ecx
ADD16	%ecx	$1327
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1331
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1333
SP_STORE	%eax
ADD16	%eax	$1331
SP_STORE	%ebx
ADD16	%ebx	$1327
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1335
SP_STORE	%eax
ADD16	%eax	$1333
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1335
CMP32	(%ecx)	$0
JNZ	@IC110
JUMP	@IC109
@IC110:	
.LINE	603
SP_STORE	%ecx
ADD16	%ecx	$1339
LD16	(%ecx)	$sem_list
SP_STORE	%ecx
ADD16	%ecx	$1341
SP_STORE	%eax
ADD16	%eax	$1339
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1343
SP_STORE	%eax
ADD16	%eax	$1341
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1345
LD32	%eax	$0
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1349
SP_STORE	%eax
ADD16	%eax	$1343
SP_STORE	%ebx
ADD16	%ebx	$1345
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1351
LD32	%eax	$0
LD32	%ebx	$5
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1355
SP_STORE	%eax
ADD16	%eax	$1149
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1357
SP_STORE	%eax
ADD16	%eax	$1355
SP_STORE	%ebx
ADD16	%ebx	$1351
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1349
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1357
CPY16	(%ecx)	(%eax)
.LINE	604
SP_STORE	%ecx
ADD16	%ecx	$1359
LD32	%eax	$0
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1363
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1365
SP_STORE	%eax
ADD16	%eax	$1363
SP_STORE	%ebx
ADD16	%ebx	$1359
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1367
SP_STORE	%eax
ADD16	%eax	$1365
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1369
LD32	%eax	$0
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1373
SP_STORE	%eax
ADD16	%eax	$613
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1375
SP_STORE	%eax
ADD16	%eax	$1373
SP_STORE	%ebx
ADD16	%ebx	$1369
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1377
SP_STORE	%eax
ADD16	%eax	$1375
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1367
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1377
CPY8	%eax	(%eax)
AND16	%eax	$255
CPY16	(%ecx)	%eax
.LINE	605
SP_STORE	%ecx
ADD16	%ecx	$1378
LD32	%eax	$0
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1382
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1384
SP_STORE	%eax
ADD16	%eax	$1382
SP_STORE	%ebx
ADD16	%ebx	$1378
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1386
SP_STORE	%eax
ADD16	%eax	$1384
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1386
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$15
.LINE	606
SP_STORE	%ecx
ADD16	%ecx	$1388
LD32	%eax	$0
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1392
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$1394
SP_STORE	%eax
ADD16	%eax	$1392
SP_STORE	%ebx
ADD16	%ebx	$1388
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1396
SP_STORE	%eax
ADD16	%eax	$1394
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1398
LD32	%eax	$0
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1402
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1404
SP_STORE	%eax
ADD16	%eax	$1402
SP_STORE	%ebx
ADD16	%ebx	$1398
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1406
SP_STORE	%eax
ADD16	%eax	$1404
CPY16	(%ecx)	(%eax)
PUSH16	$0
PUSH16	$14
SP_STORE	%eax
ADD16	%eax	$1410
PUSH16	(%eax)
SP_STORE	%eax
ADD16	%eax	$1402
PUSH16	(%eax)
SP_DEC	$1
CALL	vos_dev_read
SP_STORE	%eax
ADD16	%eax	$1417
POP8	(%eax)
SP_INC	$8
SP_STORE	%ecx
ADD16	%ecx	$477
SP_STORE	%eax
ADD16	%eax	$1408
CPY8	(%ecx)	(%eax)
.LINE	608
SP_STORE	%ecx
ADD16	%ecx	$477
CMP8	(%ecx)	$0
JNZ	@IC115
JZ	@IC114
@IC115:	
.LINE	610
SP_STORE	%ecx
ADD16	%ecx	$1409
LD32	(%ecx)	$Str@27
SP_STORE	%eax
ADD16	%eax	$1409
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	611
SP_STORE	%eax
ADD16	%eax	$477
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	612
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	613
SP_STORE	%ecx
ADD16	%ecx	$1413
LD32	%eax	$0
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1417
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1419
SP_STORE	%eax
ADD16	%eax	$1417
SP_STORE	%ebx
ADD16	%ebx	$1413
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1419
CPY16	%ecx	(%ecx)
LD32	(%ecx)	$0
.LINE	614
CALL	LED_OFF
.LINE	615
JUMP	@IC107
@IC114:	
@IC109:	
.LINE	618
SP_STORE	%ecx
ADD16	%ecx	$406
CMP8	(%ecx)	$0
JNZ	@IC120
JZ	@IC118
@IC120:	
SP_STORE	%ecx
ADD16	%ecx	$1421
LD32	%eax	$1
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1425
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1427
SP_STORE	%eax
ADD16	%eax	$1425
SP_STORE	%ebx
ADD16	%ebx	$1421
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1429
SP_STORE	%eax
ADD16	%eax	$1427
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1429
CMP32	(%ecx)	$0
JNZ	@IC119
JUMP	@IC118
@IC119:	
.LINE	620
SP_STORE	%ecx
ADD16	%ecx	$1433
LD16	(%ecx)	$sem_list
SP_STORE	%ecx
ADD16	%ecx	$1435
SP_STORE	%eax
ADD16	%eax	$1433
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1437
SP_STORE	%eax
ADD16	%eax	$1435
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1439
LD32	%eax	$1
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1443
SP_STORE	%eax
ADD16	%eax	$1437
SP_STORE	%ebx
ADD16	%ebx	$1439
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1445
LD32	%eax	$1
LD32	%ebx	$5
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1449
SP_STORE	%eax
ADD16	%eax	$1149
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1451
SP_STORE	%eax
ADD16	%eax	$1449
SP_STORE	%ebx
ADD16	%ebx	$1445
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1443
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1451
CPY16	(%ecx)	(%eax)
.LINE	621
SP_STORE	%ecx
ADD16	%ecx	$1453
LD32	%eax	$1
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1457
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1459
SP_STORE	%eax
ADD16	%eax	$1457
SP_STORE	%ebx
ADD16	%ebx	$1453
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1461
SP_STORE	%eax
ADD16	%eax	$1459
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1463
LD32	%eax	$1
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1467
SP_STORE	%eax
ADD16	%eax	$613
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1469
SP_STORE	%eax
ADD16	%eax	$1467
SP_STORE	%ebx
ADD16	%ebx	$1463
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1471
SP_STORE	%eax
ADD16	%eax	$1469
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1461
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1471
CPY8	%eax	(%eax)
AND16	%eax	$255
CPY16	(%ecx)	%eax
.LINE	622
SP_STORE	%ecx
ADD16	%ecx	$1472
LD32	%eax	$1
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1476
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1478
SP_STORE	%eax
ADD16	%eax	$1476
SP_STORE	%ebx
ADD16	%ebx	$1472
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1480
SP_STORE	%eax
ADD16	%eax	$1478
LD16	%ebx	$6
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1480
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$15
.LINE	624
SP_STORE	%ecx
ADD16	%ecx	$1482
LD32	%eax	$1
LD32	%ebx	$2
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1486
LD16	(%ecx)	$hUsb
SP_STORE	%ecx
ADD16	%ecx	$1488
SP_STORE	%eax
ADD16	%eax	$1486
SP_STORE	%ebx
ADD16	%ebx	$1482
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1490
SP_STORE	%eax
ADD16	%eax	$1488
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1492
LD32	%eax	$1
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1496
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1498
SP_STORE	%eax
ADD16	%eax	$1496
SP_STORE	%ebx
ADD16	%ebx	$1492
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1500
SP_STORE	%eax
ADD16	%eax	$1498
CPY16	(%ecx)	(%eax)
PUSH16	$0
PUSH16	$14
SP_STORE	%eax
ADD16	%eax	$1504
PUSH16	(%eax)
SP_STORE	%eax
ADD16	%eax	$1496
PUSH16	(%eax)
SP_DEC	$1
CALL	vos_dev_read
SP_STORE	%eax
ADD16	%eax	$1511
POP8	(%eax)
SP_INC	$8
SP_STORE	%ecx
ADD16	%ecx	$477
SP_STORE	%eax
ADD16	%eax	$1502
CPY8	(%ecx)	(%eax)
.LINE	626
SP_STORE	%ecx
ADD16	%ecx	$477
CMP8	(%ecx)	$0
JNZ	@IC124
JZ	@IC123
@IC124:	
.LINE	628
SP_STORE	%ecx
ADD16	%ecx	$1503
LD32	(%ecx)	$Str@28
SP_STORE	%eax
ADD16	%eax	$1503
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	629
SP_STORE	%eax
ADD16	%eax	$477
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	630
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	631
SP_STORE	%ecx
ADD16	%ecx	$1507
LD32	%eax	$1
LD32	%ebx	$4
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1511
SP_STORE	%eax
ADD16	%eax	$44
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1513
SP_STORE	%eax
ADD16	%eax	$1511
SP_STORE	%ebx
ADD16	%ebx	$1507
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1513
CPY16	%ecx	(%ecx)
LD32	(%ecx)	$0
.LINE	632
JUMP	@IC107
@IC123:	
@IC118:	
.LINE	636
PUSH16	sem_list
SP_DEC	$1
CALL	vos_wait_semaphore_ex
SP_STORE	%eax
ADD16	%eax	$1518
POP8	(%eax)
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$406
SP_STORE	%eax
ADD16	%eax	$1515
CPY8	(%ecx)	(%eax)
.LINE	638
SP_STORE	%ecx
ADD16	%ecx	$1516
LD32	(%ecx)	$Str@29
SP_STORE	%eax
ADD16	%eax	$1516
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	639
SP_STORE	%eax
ADD16	%eax	$406
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	640
SP_STORE	%ecx
ADD16	%ecx	$1520
LD32	(%ecx)	$Str@30
SP_STORE	%eax
ADD16	%eax	$1520
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	643
SP_STORE	%ecx
ADD16	%ecx	$406
CMP8	(%ecx)	$0
JZ	@IC129
JNZ	@IC128
@IC129:	
.LINE	646
SP_STORE	%ecx
ADD16	%ecx	$751
LD8	(%ecx)	$0
@IC132:	
SP_STORE	%ecx
ADD16	%ecx	$1524
LD32	%eax	$0
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1528
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1530
SP_STORE	%eax
ADD16	%eax	$1528
SP_STORE	%ebx
ADD16	%ebx	$1524
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1532
SP_STORE	%eax
ADD16	%eax	$1530
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1534
SP_STORE	%eax
ADD16	%eax	$1532
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$751
SP_STORE	%eax
ADD16	%eax	$1534
CMP8	(%ecx)	(%eax)
JLT	@IC134
JUMP	@IC133
@IC134:	
.LINE	647
SP_STORE	%ecx
ADD16	%ecx	$1536
SP_STORE	%eax
ADD16	%eax	$751
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1540
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1542
SP_STORE	%eax
ADD16	%eax	$1540
SP_STORE	%ebx
ADD16	%ebx	$1536
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1544
SP_STORE	%eax
ADD16	%eax	$1542
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1544
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	648
SP_STORE	%ecx
ADD16	%ecx	$1545
LD32	(%ecx)	$Str@31
SP_STORE	%eax
ADD16	%eax	$1545
PUSH16	(%eax)
CALL	message
SP_INC	$2
@IC135:	
.LINE	646
SP_STORE	%ecx
ADD16	%ecx	$1549
SP_STORE	%eax
ADD16	%eax	$751
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$751
INC8	(%eax)	$1
JUMP	@IC132
@IC133:	
.LINE	650
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
JUMP	@IC127
@IC128:	
.LINE	652
SP_STORE	%ecx
ADD16	%ecx	$406
CMP8	(%ecx)	$1
JZ	@IC139
JNZ	@IC138
@IC139:	
.LINE	655
SP_STORE	%ecx
ADD16	%ecx	$751
LD8	(%ecx)	$0
@IC142:	
SP_STORE	%ecx
ADD16	%ecx	$1550
LD32	%eax	$1
LD32	%ebx	$14
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1554
SP_STORE	%eax
ADD16	%eax	$1171
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1556
SP_STORE	%eax
ADD16	%eax	$1554
SP_STORE	%ebx
ADD16	%ebx	$1550
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1558
SP_STORE	%eax
ADD16	%eax	$1556
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1560
SP_STORE	%eax
ADD16	%eax	$1558
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$751
SP_STORE	%eax
ADD16	%eax	$1560
CMP8	(%ecx)	(%eax)
JLT	@IC144
JUMP	@IC143
@IC144:	
.LINE	656
SP_STORE	%ecx
ADD16	%ecx	$1562
SP_STORE	%eax
ADD16	%eax	$751
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1566
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1568
SP_STORE	%eax
ADD16	%eax	$1566
SP_STORE	%ebx
ADD16	%ebx	$1562
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1570
SP_STORE	%eax
ADD16	%eax	$1568
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1570
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	657
SP_STORE	%ecx
ADD16	%ecx	$1571
LD32	(%ecx)	$Str@32
SP_STORE	%eax
ADD16	%eax	$1571
PUSH16	(%eax)
CALL	message
SP_INC	$2
@IC145:	
.LINE	655
SP_STORE	%ecx
ADD16	%ecx	$1575
SP_STORE	%eax
ADD16	%eax	$751
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$751
INC8	(%eax)	$1
JUMP	@IC142
@IC143:	
.LINE	659
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC138:	
@IC127:	
.LINE	662
SP_STORE	%ecx
ADD16	%ecx	$1576
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1580
SP_STORE	%eax
ADD16	%eax	$94
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1582
SP_STORE	%eax
ADD16	%eax	$1580
SP_STORE	%ebx
ADD16	%ebx	$1576
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1584
SP_STORE	%eax
ADD16	%eax	$1582
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1584
CMP8	(%ecx)	$0
JNZ	@IC149
JUMP	@IC148
@IC149:	
.LINE	663
SP_STORE	%ecx
ADD16	%ecx	$1585
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1587
LD16	(%ecx)	$ReportID_MS
SP_STORE	%eax
ADD16	%eax	$1587
PUSH16	(%eax)
PUSH16	phid_Bdata
SP_STORE	%eax
ADD16	%eax	$1589
PUSH16	(%eax)
CALL	GetValue
SP_INC	$6
.LINE	664
SP_STORE	%ecx
ADD16	%ecx	$1589
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$1591
SP_STORE	%eax
ADD16	%eax	$1589
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1593
LD16	(%ecx)	$phid_Bdata
SP_STORE	%ecx
ADD16	%ecx	$1595
SP_STORE	%eax
ADD16	%eax	$1593
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1597
SP_STORE	%eax
ADD16	%eax	$1595
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1599
SP_STORE	%eax
ADD16	%eax	$1597
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1591
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1599
CPY8	(%ecx)	(%eax)
.LINE	665
SP_STORE	%ecx
ADD16	%ecx	$1603
LD32	(%ecx)	$Str@33
SP_STORE	%eax
ADD16	%eax	$1603
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	666
SP_STORE	%ecx
ADD16	%ecx	$1607
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$1609
SP_STORE	%eax
ADD16	%eax	$1607
LD16	%ebx	$2
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1611
SP_STORE	%eax
ADD16	%eax	$1609
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1611
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	667
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC148:	
.LINE	669
SP_STORE	%ecx
ADD16	%ecx	$1612
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1616
SP_STORE	%eax
ADD16	%eax	$112
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1618
SP_STORE	%eax
ADD16	%eax	$1616
SP_STORE	%ebx
ADD16	%ebx	$1612
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1620
SP_STORE	%eax
ADD16	%eax	$1618
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1620
CMP8	(%ecx)	$0
JNZ	@IC151
JUMP	@IC150
@IC151:	
.LINE	670
SP_STORE	%ecx
ADD16	%ecx	$1621
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1623
LD16	(%ecx)	$ReportID_MS
SP_STORE	%eax
ADD16	%eax	$1623
PUSH16	(%eax)
PUSH16	phid_Xdata
SP_STORE	%eax
ADD16	%eax	$1625
PUSH16	(%eax)
CALL	GetValueXY
SP_INC	$6
.LINE	671
SP_STORE	%ecx
ADD16	%ecx	$1625
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$1627
SP_STORE	%eax
ADD16	%eax	$1625
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1629
LD16	(%ecx)	$phid_Xdata
SP_STORE	%ecx
ADD16	%ecx	$1631
SP_STORE	%eax
ADD16	%eax	$1629
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1633
SP_STORE	%eax
ADD16	%eax	$1631
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1635
SP_STORE	%eax
ADD16	%eax	$1633
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1627
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1635
CPY16	(%ecx)	(%eax)
.LINE	672
SP_STORE	%ecx
ADD16	%ecx	$1639
LD16	(%ecx)	$phid_Xdata
SP_STORE	%ecx
ADD16	%ecx	$1641
SP_STORE	%eax
ADD16	%eax	$1639
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1643
SP_STORE	%eax
ADD16	%eax	$1641
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1645
SP_STORE	%eax
ADD16	%eax	$1643
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1649
SP_STORE	%eax
ADD16	%eax	$1645
CPY32	(%ecx)	(%eax)
.LINE	673
SP_STORE	%ecx
ADD16	%ecx	$1653
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$1655
SP_STORE	%eax
ADD16	%eax	$1653
LD16	%ebx	$3
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1657
SP_STORE	%eax
ADD16	%eax	$1655
CPY16	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1657
CPY16	pDATA	(%eax)
.LINE	674
SP_STORE	%ecx
ADD16	%ecx	$1659
LD32	(%ecx)	$Str@34
SP_STORE	%eax
ADD16	%eax	$1659
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	675
SP_STORE	%ecx
ADD16	%ecx	$1663
CPY16	(%ecx)	pDATA
INC16	pDATA	$1
.LINE	676
SP_STORE	%ecx
ADD16	%ecx	$1665
CPY8	(%ecx)	(pDATA)
SP_STORE	%eax
ADD16	%eax	$1665
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	677
SP_STORE	%ecx
ADD16	%ecx	$1666
CPY16	(%ecx)	pDATA
DEC16	pDATA	$1
.LINE	678
SP_STORE	%ecx
ADD16	%ecx	$1668
CPY8	(%ecx)	(pDATA)
SP_STORE	%eax
ADD16	%eax	$1668
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	679
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC150:	
.LINE	681
SP_STORE	%ecx
ADD16	%ecx	$1669
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1673
SP_STORE	%eax
ADD16	%eax	$130
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1675
SP_STORE	%eax
ADD16	%eax	$1673
SP_STORE	%ebx
ADD16	%ebx	$1669
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1677
SP_STORE	%eax
ADD16	%eax	$1675
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1677
CMP8	(%ecx)	$0
JNZ	@IC153
JUMP	@IC152
@IC153:	
.LINE	682
SP_STORE	%ecx
ADD16	%ecx	$1678
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1680
LD16	(%ecx)	$ReportID_MS
SP_STORE	%eax
ADD16	%eax	$1680
PUSH16	(%eax)
PUSH16	phid_Ydata
SP_STORE	%eax
ADD16	%eax	$1682
PUSH16	(%eax)
CALL	GetValueXY
SP_INC	$6
.LINE	683
SP_STORE	%ecx
ADD16	%ecx	$1682
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$1684
SP_STORE	%eax
ADD16	%eax	$1682
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1686
LD16	(%ecx)	$phid_Ydata
SP_STORE	%ecx
ADD16	%ecx	$1688
SP_STORE	%eax
ADD16	%eax	$1686
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1690
SP_STORE	%eax
ADD16	%eax	$1688
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1692
SP_STORE	%eax
ADD16	%eax	$1690
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1684
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1692
CPY16	(%ecx)	(%eax)
.LINE	684
SP_STORE	%ecx
ADD16	%ecx	$1696
LD16	(%ecx)	$phid_Ydata
SP_STORE	%ecx
ADD16	%ecx	$1698
SP_STORE	%eax
ADD16	%eax	$1696
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1700
SP_STORE	%eax
ADD16	%eax	$1698
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1702
SP_STORE	%eax
ADD16	%eax	$1700
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1706
SP_STORE	%eax
ADD16	%eax	$1702
CPY32	(%ecx)	(%eax)
.LINE	685
SP_STORE	%ecx
ADD16	%ecx	$1710
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$1712
SP_STORE	%eax
ADD16	%eax	$1710
LD16	%ebx	$5
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1714
SP_STORE	%eax
ADD16	%eax	$1712
CPY16	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1714
CPY16	pDATA	(%eax)
.LINE	686
SP_STORE	%ecx
ADD16	%ecx	$1716
LD32	(%ecx)	$Str@35
SP_STORE	%eax
ADD16	%eax	$1716
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	687
SP_STORE	%ecx
ADD16	%ecx	$1720
CPY16	(%ecx)	pDATA
INC16	pDATA	$1
.LINE	688
SP_STORE	%ecx
ADD16	%ecx	$1722
CPY8	(%ecx)	(pDATA)
SP_STORE	%eax
ADD16	%eax	$1722
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	689
SP_STORE	%ecx
ADD16	%ecx	$1723
CPY16	(%ecx)	pDATA
DEC16	pDATA	$1
.LINE	690
SP_STORE	%ecx
ADD16	%ecx	$1725
CPY8	(%ecx)	(pDATA)
SP_STORE	%eax
ADD16	%eax	$1725
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	691
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC152:	
.LINE	693
SP_STORE	%ecx
ADD16	%ecx	$1726
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1730
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1732
SP_STORE	%eax
ADD16	%eax	$1730
SP_STORE	%ebx
ADD16	%ebx	$1726
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1734
SP_STORE	%eax
ADD16	%eax	$1732
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1734
CMP8	(%ecx)	$0
JNZ	@IC155
JUMP	@IC154
@IC155:	
.LINE	694
SP_STORE	%ecx
ADD16	%ecx	$1735
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1737
LD16	(%ecx)	$ReportID_MS
SP_STORE	%eax
ADD16	%eax	$1737
PUSH16	(%eax)
PUSH16	phid_Wdata
SP_STORE	%eax
ADD16	%eax	$1739
PUSH16	(%eax)
CALL	GetValue
SP_INC	$6
.LINE	695
SP_STORE	%ecx
ADD16	%ecx	$1739
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$1741
SP_STORE	%eax
ADD16	%eax	$1739
LD16	%ebx	$7
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1743
LD16	(%ecx)	$phid_Wdata
SP_STORE	%ecx
ADD16	%ecx	$1745
SP_STORE	%eax
ADD16	%eax	$1743
CPY16	%eax	(%eax)
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1747
SP_STORE	%eax
ADD16	%eax	$1745
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1749
SP_STORE	%eax
ADD16	%eax	$1747
CPY16	%eax	(%eax)
CPY32	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1741
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1749
CPY16	(%ecx)	(%eax)
.LINE	696
SP_STORE	%ecx
ADD16	%ecx	$1753
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$1755
SP_STORE	%eax
ADD16	%eax	$1753
LD16	%ebx	$7
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1757
SP_STORE	%eax
ADD16	%eax	$1755
CPY16	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$1757
CPY16	pDATA	(%eax)
.LINE	697
SP_STORE	%ecx
ADD16	%ecx	$1759
LD32	(%ecx)	$Str@36
SP_STORE	%eax
ADD16	%eax	$1759
PUSH16	(%eax)
CALL	message
SP_INC	$2
.LINE	698
SP_STORE	%ecx
ADD16	%ecx	$1763
CPY16	(%ecx)	pDATA
INC16	pDATA	$1
.LINE	699
SP_STORE	%ecx
ADD16	%ecx	$1765
CPY8	(%ecx)	(pDATA)
SP_STORE	%eax
ADD16	%eax	$1765
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	700
SP_STORE	%ecx
ADD16	%ecx	$1766
CPY16	(%ecx)	pDATA
DEC16	pDATA	$1
.LINE	701
SP_STORE	%ecx
ADD16	%ecx	$1768
CPY8	(%ecx)	(pDATA)
SP_STORE	%eax
ADD16	%eax	$1768
PUSH8	(%eax)
CALL	number
SP_INC	$1
.LINE	702
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
@IC154:	
.LINE	704
SP_STORE	%ecx
ADD16	%ecx	$1769
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1773
SP_STORE	%eax
ADD16	%eax	$94
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1775
SP_STORE	%eax
ADD16	%eax	$1773
SP_STORE	%ebx
ADD16	%ebx	$1769
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1777
SP_STORE	%eax
ADD16	%eax	$1775
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1777
CMP8	(%ecx)	$0
JNZ	@IC158
JUMP	@IC161
@IC161:	
SP_STORE	%ecx
ADD16	%ecx	$1778
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1782
SP_STORE	%eax
ADD16	%eax	$112
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1784
SP_STORE	%eax
ADD16	%eax	$1782
SP_STORE	%ebx
ADD16	%ebx	$1778
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1786
SP_STORE	%eax
ADD16	%eax	$1784
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1786
CMP8	(%ecx)	$0
JNZ	@IC158
JUMP	@IC160
@IC160:	
SP_STORE	%ecx
ADD16	%ecx	$1787
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1791
SP_STORE	%eax
ADD16	%eax	$130
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1793
SP_STORE	%eax
ADD16	%eax	$1791
SP_STORE	%ebx
ADD16	%ebx	$1787
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1795
SP_STORE	%eax
ADD16	%eax	$1793
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1795
CMP8	(%ecx)	$0
JNZ	@IC158
JUMP	@IC159
@IC159:	
SP_STORE	%ecx
ADD16	%ecx	$1796
SP_STORE	%eax
ADD16	%eax	$406
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1800
SP_STORE	%eax
ADD16	%eax	$148
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1802
SP_STORE	%eax
ADD16	%eax	$1800
SP_STORE	%ebx
ADD16	%ebx	$1796
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1804
SP_STORE	%eax
ADD16	%eax	$1802
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1804
CMP8	(%ecx)	$0
JNZ	@IC158
JUMP	@IC157
@IC158:	
.LINE	705
SP_STORE	%ecx
ADD16	%ecx	$1805
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$1807
SP_STORE	%eax
ADD16	%eax	$1805
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1807
CPY16	%ecx	(%ecx)
LD8	(%ecx)	$1
JUMP	@IC156
@IC157:	
.LINE	707
SP_STORE	%ecx
ADD16	%ecx	$751
LD8	(%ecx)	$0
@IC162:	
SP_STORE	%ecx
ADD16	%ecx	$751
CMP8	(%ecx)	$8
JLT	@IC164
JUMP	@IC163
@IC164:	
.LINE	709
SP_STORE	%ecx
ADD16	%ecx	$1809
LD16	(%ecx)	$PS2_KB
SP_STORE	%ecx
ADD16	%ecx	$1811
SP_STORE	%eax
ADD16	%eax	$1809
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1813
SP_STORE	%eax
ADD16	%eax	$751
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1817
SP_STORE	%eax
ADD16	%eax	$1811
SP_STORE	%ebx
ADD16	%ebx	$1813
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1819
SP_STORE	%eax
ADD16	%eax	$751
CPY8	%eax	(%eax)
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$1823
SP_STORE	%eax
ADD16	%eax	$162
CPY16	(%ecx)	%eax
SP_STORE	%ecx
ADD16	%ecx	$1825
SP_STORE	%eax
ADD16	%eax	$1823
SP_STORE	%ebx
ADD16	%ebx	$1819
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$1827
SP_STORE	%eax
ADD16	%eax	$1825
CPY16	%eax	(%eax)
CPY8	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$1817
CPY16	%ecx	(%ecx)
SP_STORE	%eax
ADD16	%eax	$1827
CPY8	(%ecx)	(%eax)
@IC165:	
.LINE	707
SP_STORE	%ecx
ADD16	%ecx	$1828
SP_STORE	%eax
ADD16	%eax	$751
CPY8	(%ecx)	(%eax)
SP_STORE	%eax
ADD16	%eax	$751
INC8	(%eax)	$1
JUMP	@IC162
@IC163:	
.LINE	712
PUSH16	pPS2_KB
SP_DEC	$4
CALL	KBParse
SP_STORE	%eax
ADD16	%eax	$1835
POP32	(%eax)
SP_INC	$2
@IC156:	
.LINE	715
SP_RD16	%eax	$4
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	598
JUMP	@IC106
@IC107:	
@IC104:	
@IC8:	
.LINE	719
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC7
JUMP	@IC9
@IC9:	
.LINE	719
SP_INC	$255
SP_INC	$255
SP_INC	$255
SP_INC	$255
SP_INC	$255
SP_INC	$255
SP_INC	$255
SP_INC	$48
RTS	
.FUNC_END	"USB_thread"

.LINE	723
PS2KB_thread:	
.GLOBAL	 DO_NOT_EXPORT  "PS2KB_thread"

.VARIABLE	"timer"	32	"int"	1	0	0	0	0	0	726	
.VARIABLE	"i"	8	"char"	1	0	15	0	0	0	725	
.FUNCTION	"PS2KB_thread"	
.RETURN "void"	0	0	0	72	0	0	0	
SP_DEC	$69
.LINE	728
LD32	%ecx	$0
SP_WR32	%ecx	$0
@IC168:	
.LINE	732
SP_STORE	%ecx
ADD16	%ecx	$4
LD16	(%ecx)	$pPS2_KB
SP_STORE	%ecx
ADD16	%ecx	$6
SP_RD16	%eax	$4
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$6
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$10
SP_RD16	%eax	$8
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$10
CMP8	%ecx	$1
JZ	@IC173
JNZ	@IC172
@IC173:	
.LINE	733
SP_STORE	%ecx
ADD16	%ecx	$11
LD32	(%ecx)	$Str@37
SP_RD16	%eax	$11
PUSH16	%eax
CALL	message
SP_INC	$2
.LINE	734
SP_STORE	%ecx
CMP32	(%ecx)	$0
JZ	@IC177
JNZ	@IC176
@IC177:	
.LINE	735
LD32	%ecx	$50000
SP_WR32	%ecx	$0
.LINE	736
LD8	%ecx	$0
SP_WR8	%ecx	$15
@IC180:	
SP_RD8	%ecx	$15
CMP8	%ecx	$28
JLT	@IC182
JUMP	@IC181
@IC182:	
.LINE	737
SP_STORE	%ecx
ADD16	%ecx	$16
LD16	(%ecx)	$pPS2_KB
SP_STORE	%ecx
ADD16	%ecx	$18
SP_RD16	%eax	$16
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$20
SP_STORE	%eax
ADD16	%eax	$18
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$22
SP_RD8	%eax	$15
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$26
SP_STORE	%eax
ADD16	%eax	$20
SP_STORE	%ebx
ADD16	%ebx	$22
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$28
SP_RD16	%eax	$26
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$28
CMP8	%ecx	$255
JZ	@IC188
JNZ	@IC187
@IC188:	
.LINE	738
LD8	%ecx	$28
SP_WR8	%ecx	$15
JUMP	@IC186
@IC187:	
.LINE	740
SP_STORE	%ecx
ADD16	%ecx	$29
LD16	(%ecx)	$pPS2_KB
SP_STORE	%ecx
ADD16	%ecx	$31
SP_RD16	%eax	$29
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$33
SP_STORE	%eax
ADD16	%eax	$31
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$35
SP_RD8	%eax	$15
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$39
SP_STORE	%eax
ADD16	%eax	$33
SP_STORE	%ebx
ADD16	%ebx	$35
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$41
SP_RD16	%eax	$39
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$41
PUSH8	%eax
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$43
SP_INC	$1
.LINE	742
SP_STORE	%ecx
ADD16	%ecx	$43
LD32	(%ecx)	$Str@38
SP_RD16	%eax	$43
PUSH16	%eax
CALL	message
SP_INC	$2
SP_STORE	%ecx
ADD16	%ecx	$47
LD16	(%ecx)	$pPS2_KB
SP_STORE	%ecx
ADD16	%ecx	$49
SP_RD16	%eax	$47
CPY16	(%ecx)	(%eax)
SP_STORE	%ecx
ADD16	%ecx	$51
SP_STORE	%eax
ADD16	%eax	$49
LD16	%ebx	$23
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$53
SP_RD8	%eax	$15
AND32	%eax	$255
LD32	%ebx	$1
MUL32	(%ecx)	%eax	%ebx
SP_STORE	%ecx
ADD16	%ecx	$57
SP_STORE	%eax
ADD16	%eax	$51
SP_STORE	%ebx
ADD16	%ebx	$53
ADD16	(%ecx)	(%eax)	(%ebx)
SP_STORE	%ecx
ADD16	%ecx	$59
SP_RD16	%eax	$57
CPY8	(%ecx)	(%eax)
SP_RD16	%eax	$59
PUSH8	%eax
CALL	number
SP_INC	$1
SP_STORE	%ecx
ADD16	%ecx	$60
LD32	(%ecx)	$Str@39
SP_RD16	%eax	$60
PUSH16	%eax
CALL	message
SP_INC	$2
@IC186:	
@IC183:	
.LINE	736
SP_RD8	%ecx	$15
SP_WR8	%ecx	$64
SP_STORE	%eax
ADD16	%eax	$15
INC8	(%eax)	$1
JUMP	@IC180
@IC181:	
@IC176:	
.LINE	734
JUMP	@IC171
@IC172:	
.LINE	747
LD32	%ecx	$0
SP_WR32	%ecx	$0
@IC171:	
.LINE	750
SP_STORE	%ecx
ADD16	%ecx	$0
CMP32	(%ecx)	$0
JGT	@IC192
JUMP	@IC191
@IC192:	
.LINE	751
SP_RD32	%ecx	$0
SP_WR32	%ecx	$65
SP_STORE	%eax
DEC32	(%eax)	$1
@IC191:	
@IC169:	
.LINE	754
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC168
JUMP	@IC170
@IC170:	
.LINE	754
SP_INC	$69
RTS	
.FUNC_END	"PS2KB_thread"

.LINE	758
PS2MS_thread:	
.GLOBAL	 DO_NOT_EXPORT  "PS2MS_thread"

.VARIABLE	"timer"	32	"int"	1	0	0	0	0	0	762	
.VARIABLE	"req"	8	"char"	0	0	5	0	0	0	761	
.VARIABLE	"cmd"	8	"char"	0	0	11	0	0	0	760	
.FUNCTION	"PS2MS_thread"	
.RETURN "void"	0	0	0	46	0	0	0	
SP_DEC	$43
.LINE	764
LD32	%ecx	$0
SP_WR32	%ecx	$0
@IC195:	
.LINE	768
SP_DEC	$1
CALL	PS2dev_host_req
POP8	%eax
SP_WR8	%eax	$4
SP_RD8	%ecx	$4
SP_WR8	%ecx	$5
.LINE	769
SP_RD8	%ecx	$5
CMP8	%ecx	$0
JNZ	@IC201
JUMP	@IC199
@IC201:	
SP_STORE	%ecx
ADD16	%ecx	$6
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$8
SP_STORE	%eax
ADD16	%eax	$6
LD16	%ebx	$0
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$10
SP_RD16	%eax	$8
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$10
CMP8	%ecx	$0
JNZ	@IC200
JUMP	@IC199
@IC200:	
@IC202:	
.LINE	770
SP_STORE	%ecx
ADD16	%ecx	$12
SP_STORE	%eax
ADD16	%eax	$11
CPY16	(%ecx)	%eax
SP_RD16	%eax	$12
PUSH16	%eax
SP_DEC	$1
CALL	PS2dev_read
POP8	%eax
SP_WR8	%eax	$16
SP_INC	$2
SP_RD8	%ecx	$14
CMP8	%ecx	$0
JNZ	@IC204
JUMP	@IC203
@IC204:	
JUMP	@IC202
@IC203:	
.LINE	771
SP_STORE	%ecx
ADD16	%ecx	$15
LD16	(%ecx)	$PS2_MS
SP_RD16	%eax	$15
PUSH16	%eax
SP_RD16	%eax	$13
PUSH8	%eax
CALL	MS_cmd
SP_INC	$3
.LINE	772
LD32	%ecx	$50000
SP_WR32	%ecx	$0
JUMP	@IC198
@IC199:	
.LINE	774
SP_STORE	%ecx
ADD16	%ecx	$17
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$19
SP_STORE	%eax
ADD16	%eax	$17
LD16	%ebx	$9
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$21
SP_RD16	%eax	$19
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$21
CMP8	%ecx	$0
JNZ	@IC209
JUMP	@IC205
@IC209:	
SP_STORE	%ecx
ADD16	%ecx	$22
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$24
SP_STORE	%eax
ADD16	%eax	$22
LD16	%ebx	$10
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$26
SP_RD16	%eax	$24
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$26
CMP8	%ecx	$0
JNZ	@IC208
JUMP	@IC205
@IC208:	
SP_STORE	%ecx
ADD16	%ecx	$27
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$29
SP_STORE	%eax
ADD16	%eax	$27
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_STORE	%ecx
ADD16	%ecx	$31
SP_RD16	%eax	$29
CPY8	(%ecx)	(%eax)
SP_RD8	%ecx	$31
CMP8	%ecx	$0
JNZ	@IC207
JUMP	@IC205
@IC207:	
SP_STORE	%ecx
CMP32	(%ecx)	$0
JZ	@IC206
JNZ	@IC205
@IC206:	
.LINE	775
SP_STORE	%ecx
ADD16	%ecx	$32
LD16	(%ecx)	$PS2_MS
SP_RD16	%eax	$32
PUSH16	%eax
SP_DEC	$1
CALL	MS_wr_packet
POP8	%eax
SP_WR8	%eax	$36
SP_INC	$2
.LINE	776
SP_STORE	%ecx
ADD16	%ecx	$35
LD16	(%ecx)	$PS2_MS
SP_STORE	%ecx
ADD16	%ecx	$37
SP_STORE	%eax
ADD16	%eax	$35
LD16	%ebx	$1
ADD16	(%ecx)	(%eax)	%ebx
SP_RD16	%ecx	$37
LD8	(%ecx)	$0
@IC205:	
.LINE	778
SP_STORE	%ecx
CMP32	(%ecx)	$0
JGT	@IC213
JUMP	@IC212
@IC213:	
.LINE	779
SP_RD32	%ecx	$0
SP_WR32	%ecx	$39
SP_STORE	%eax
DEC32	(%eax)	$1
@IC212:	
@IC198:	
@IC196:	
.LINE	783
LD8	%ecx	$1
CMP8	%ecx	$0
JNZ	@IC195
JUMP	@IC197
@IC197:	
.LINE	783
SP_INC	$43
RTS	
.FUNC_END	"PS2MS_thread"

