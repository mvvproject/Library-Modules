.DATA

.WEAK	"%eax"
.WEAK	"%ebx"
.WEAK	"%ecx"
.WEAK	"%r0"
.WEAK	"%r1"
.WEAK	"%r2"
.WEAK	"%r3"
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

SET_BIT:	
.GLOBAL	 DO_NOT_EXPORT  "SET_BIT"

.FUNCTION	"SET_BIT"	
PUSH32	%r0
PUSH32	%r1
PUSH32	%r2
SP_RD16	%r1	$15
SP_RD8	%r0	$17
CPY8	%ebx	%r0
AND16	%ebx	$255
LD32	%eax	$1
SHL32	%r0	%eax	%ebx
CPY16	%r2	(%r1)
OR16	%r0	%r2
CPY16	(%r1)	%r0
POP32	%r2
POP32	%r1
POP32	%r0
RTS	
.FUNC_END	"SET_BIT"

CHECK_BIT:	
.GLOBAL	 DO_NOT_EXPORT  "CHECK_BIT"

.FUNCTION	"CHECK_BIT"	
PUSH32	%r0
SP_RD16	%r0	$8
SP_RD8	%ebx	$10
AND16	%ebx	$255
SHR16	%r0	%ebx
CPY16	%eax	%r0
AND32	%eax	$65535
LD32	%r0	$1
AND32	%r0	%eax
CPY16	%r0	%r0
CPY8	%r0	%r0
SP_STORE	%eax
INC16	%eax	$7
CPY8	(%eax)	%r0
POP32	%r0
RTS	
.FUNC_END	"CHECK_BIT"

PS2_keyboard_init:	
.GLOBAL	 DO_NOT_EXPORT  "PS2_keyboard_init"

.FUNCTION	"PS2_keyboard_init"	
PUSH32	%r0
PUSH32	%r1
SP_DEC	$4
SP_STORE	%r0
INC16	%r0	$15
CPY16	%r1	(%r0)
CPY16	%r1	%r1
LD8	(%r1)	$0
CPY16	%r1	(%r0)
INC16	%r1	$23
PUSH16	$2
PUSH32	$0
PUSH16	%r1
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$8
SP_INC	$8
CPY16	%r0	(%r0)
INC16	%r0	$9
PUSH16	$14
PUSH32	$0
PUSH16	%r0
SP_DEC	$2
CALL	memset
POP16	%eax
SP_WR16	%eax	$10
SP_INC	$8
SP_INC	$4
POP32	%r1
POP32	%r0
RTS	
.FUNC_END	"PS2_keyboard_init"

KBParse:	
.GLOBAL	 DO_NOT_EXPORT  "KBParse"

.FUNCTION	"KBParse"	
PUSH32	%r0
PUSH32	%r1
PUSH32	%r2
PUSH32	%r3
SP_DEC	$28
LD32	%r1	$Str@0
SP_STORE	%ecx
CPY16	(%ecx)	%r1
LD16	%ecx	$0
SP_WR16	%ecx	$2
LD8	%ecx	$0
SP_WR8	%ecx	$4
LD32	%r1	$Str@1
PUSH16	%r1
CALL	message
SP_INC	$2
LD8	%r0	$0
@IC1:	
CMP8	%r0	$14
JGE	@IC2
@IC3:	
SP_RD16	%r1	$51
INC16	%r1	$9
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r2	%eax
ADD16	%r1	%r2
CPY8	%r1	(%r1)
PUSH8	%r1
CALL	number
SP_INC	$1
LD32	%r1	$Str@2
PUSH16	%r1
CALL	message
SP_INC	$2
@IC4:	
INC8	%r0	$1
JUMP	@IC1
@IC2:	
SP_STORE	%eax
PUSH16	(%eax)
CALL	message
SP_INC	$2
LD8	%r0	$0
@IC7:	
CMP8	%r0	$8
JGE	@IC8
@IC9:	
SP_RD16	%r1	$51
INC16	%r1	$1
CPY8	%r1	(%r1)
CPY8	%ebx	%r0
AND16	%ebx	$255
LD32	%eax	$1
SHL32	%r2	%eax	%ebx
CPY8	%eax	%r1
AND32	%eax	$255
AND32	%r1	%eax	%r2
CMP32	%r1	$0
JZ	@IC14
@IC15:	
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r1	%eax
SP_STORE	%r2
INC16	%r2	$5
ADD16	%r1	%r2
CPY8	%ebx	%r0
AND16	%ebx	$255
LD32	%eax	$224
ADD32	%r2	%eax	%ebx
CPY8	(%r1)	%r2
JUMP	@IC13
@IC14:	
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r1	%eax
SP_STORE	%r2
INC16	%r2	$5
ADD16	%r1	%r2
LD8	(%r1)	$0
@IC13:	
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r1	%eax
SP_STORE	%r2
INC16	%r2	$5
ADD16	%r1	%r2
CPY8	%r1	(%r1)
SP_RD16	%r2	$51
INC16	%r2	$9
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r3	%eax
ADD16	%r2	%r3
CPY8	%r2	(%r2)
CMP8	%r1	%r2
JNZ	@IC16
@IC17:	
SP_STORE	%r1
INC16	%r1	$2
PUSH8	%r0
PUSH16	%r1
CALL	SET_BIT
SP_INC	$3
@IC16:	
CMP8	%r0	$6
JGE	@IC20
@IC21:	
LD8	%ecx	$2
SP_WR8	%ecx	$13
@IC24:	
SP_STORE	%ecx
INC16	%ecx	$13
CMP8	(%ecx)	$8
JGE	@IC25
@IC26:	
SP_STORE	%r1
INC16	%r1	$51
CPY16	%r2	(%r1)
INC16	%r2	$1
SP_RD8	%eax	$13
AND32	%eax	$255
CPY32	%r3	%eax
ADD16	%r2	%r3
CPY8	%r2	(%r2)
CPY16	%r1	(%r1)
INC16	%r1	$9
CPY8	%ebx	%r0
AND16	%ebx	$255
LD32	%eax	$8
ADD32	%r3	%eax	%ebx
ADD16	%r1	%r3
CPY8	%r1	(%r1)
CMP8	%r2	%r1
JNZ	@IC30
@IC31:	
SP_STORE	%r1
INC16	%r1	$2
CPY8	%ebx	%r0
AND16	%ebx	$255
LD32	%eax	$8
ADD32	%r2	%eax	%ebx
PUSH8	%r2
PUSH16	%r1
CALL	SET_BIT
SP_INC	$3
LD8	%ecx	$8
SP_WR8	%ecx	$13
@IC30:	
@IC27:	
SP_STORE	%eax
INC16	%eax	$13
INC8	(%eax)	$1
JUMP	@IC24
@IC25:	
@IC20:	
@IC10:	
INC8	%r0	$1
JUMP	@IC7
@IC8:	
SP_RD16	%r1	$51
CPY16	%r1	%r1
LD8	(%r1)	$0
LD8	%r0	$0
@IC34:	
CMP8	%r0	$14
JGE	@IC35
@IC36:	
PUSH8	%r0
SP_RD16	%eax	$3
PUSH16	%eax
SP_DEC	$1
CALL	CHECK_BIT
POP8	%eax
SP_WR8	%eax	$17
SP_INC	$3
SP_STORE	%ecx
INC16	%ecx	$14
CMP8	(%ecx)	$0
JNZ	@IC40
@IC41:	
SP_RD16	%r1	$51
INC16	%r1	$9
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r2	%eax
ADD16	%r1	%r2
CPY8	%r1	(%r1)
PUSH8	%r1
SP_DEC	$1
CALL	USB_PS2
POP8	%eax
SP_WR8	%eax	$16
SP_INC	$1
SP_RD8	%ecx	$15
SP_WR8	%ecx	$16
LD32	%r1	$Str@3
PUSH16	%r1
CALL	message
SP_INC	$2
SP_RD16	%eax	$16
PUSH8	%eax
CALL	number
SP_INC	$1
SP_STORE	%eax
PUSH16	(%eax)
CALL	message
SP_INC	$2
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$127
JGE	@IC47
@IC48:	
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$0
JGT	@IC46
@IC47:	
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$131
JNZ	@IC45
@IC46:	
PUSH8	$240
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$18
SP_INC	$1
SP_RD16	%eax	$16
PUSH8	%eax
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$19
SP_INC	$1
LD32	%r1	$Str@4
PUSH16	%r1
CALL	message
SP_INC	$2
SP_RD16	%eax	$16
PUSH8	%eax
CALL	number
SP_INC	$1
SP_RD16	%eax	$0
PUSH16	%eax
CALL	message
SP_INC	$2
JUMP	@IC44
@IC45:	
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$128
JLE	@IC55
@IC57:	
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$131
JZ	@IC55
@IC56:	
PUSH8	$224
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$20
SP_INC	$1
PUSH8	$240
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$21
SP_INC	$1
SP_RD8	%eax	$16
AND32	%eax	$255
LD32	%ebx	$128
SUB32	%r1	%eax	%ebx
PUSH8	%r1
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$22
SP_INC	$1
LD32	%r2	$Str@5
PUSH16	%r2
CALL	message
SP_INC	$2
PUSH8	%r1
CALL	number
SP_INC	$1
SP_STORE	%eax
PUSH16	(%eax)
CALL	message
SP_INC	$2
@IC55:	
@IC44:	
@IC40:	
CMP8	%r0	$8
JGE	@IC63
@IC64:	
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r1	%eax
SP_STORE	%r2
INC16	%r2	$5
ADD16	%r1	%r2
CPY8	%r1	(%r1)
PUSH8	%r1
SP_DEC	$1
CALL	USB_PS2
POP8	%eax
SP_WR8	%eax	$23
SP_INC	$1
SP_RD8	%ecx	$22
SP_WR8	%ecx	$16
JUMP	@IC62
@IC63:	
SP_RD16	%r1	$51
INC16	%r1	$1
CPY8	%eax	%r0
AND32	%eax	$255
LD32	%ebx	$6
SUB32	%r2	%eax	%ebx
ADD16	%r1	%r2
CPY8	%r1	(%r1)
PUSH8	%r1
SP_DEC	$1
CALL	USB_PS2
POP8	%eax
SP_WR8	%eax	$24
SP_INC	$1
SP_RD8	%ecx	$23
SP_WR8	%ecx	$16
@IC62:	
LD32	%r1	$Str@6
PUSH16	%r1
CALL	message
SP_INC	$2
SP_RD16	%eax	$16
PUSH8	%eax
CALL	number
SP_INC	$1
SP_STORE	%eax
PUSH16	(%eax)
CALL	message
SP_INC	$2
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$128
JLE	@IC68
@IC70:	
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$131
JZ	@IC68
@IC69:	
PUSH8	$224
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$25
SP_INC	$1
SP_RD8	%eax	$16
AND32	%eax	$255
LD32	%ebx	$128
SUB32	%r1	%eax	%ebx
PUSH8	%r1
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$26
SP_INC	$1
SP_STORE	%r2
INC16	%r2	$51
CPY16	%r3	(%r2)
INC16	%r3	$23
LD8	(%r3)	$224
CPY16	%r2	(%r2)
INC16	%r2	$23
INC16	%r2	$1
CPY8	(%r2)	%r1
LD8	%ecx	$1
SP_WR8	%ecx	$4
LD32	%r2	$Str@7
PUSH16	%r2
CALL	message
SP_INC	$2
PUSH8	%r1
CALL	number
SP_INC	$1
SP_RD16	%eax	$0
PUSH16	%eax
CALL	message
SP_INC	$2
JUMP	@IC67
@IC68:	
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$128
JNZ	@IC76
@IC77:	
PUSH8	$252
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$27
SP_INC	$1
SP_STORE	%r1
INC16	%r1	$51
CPY16	%r2	(%r1)
INC16	%r2	$23
LD8	(%r2)	$252
CPY16	%r1	(%r1)
INC16	%r1	$23
INC16	%r1	$1
LD8	(%r1)	$252
LD8	%ecx	$1
SP_WR8	%ecx	$4
LD32	%r1	$Str@8
PUSH16	%r1
CALL	message
SP_INC	$2
SP_STORE	%eax
PUSH16	(%eax)
CALL	message
SP_INC	$2
JUMP	@IC75
@IC76:	
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$127
JLT	@IC81
@IC82:	
SP_STORE	%ecx
INC16	%ecx	$16
CMP8	(%ecx)	$131
JNZ	@IC80
@IC81:	
SP_RD16	%eax	$16
PUSH8	%eax
SP_DEC	$1
CALL	PS2KB_write
POP8	%eax
SP_WR8	%eax	$28
SP_INC	$1
SP_STORE	%r1
INC16	%r1	$51
CPY16	%r2	(%r1)
INC16	%r2	$23
SP_STORE	%eax
INC16	%eax	$16
CPY8	(%r2)	(%eax)
CPY16	%r1	(%r1)
INC16	%r1	$23
INC16	%r1	$1
SP_STORE	%eax
INC16	%eax	$16
CPY8	(%r1)	(%eax)
LD8	%ecx	$1
SP_WR8	%ecx	$4
LD32	%r1	$Str@9
PUSH16	%r1
CALL	message
SP_INC	$2
SP_RD16	%eax	$16
PUSH8	%eax
CALL	number
SP_INC	$1
SP_STORE	%eax
PUSH16	(%eax)
CALL	message
SP_INC	$2
@IC80:	
@IC75:	
@IC67:	
CMP8	%r0	$8
JGE	@IC88
@IC89:	
SP_RD16	%r1	$51
INC16	%r1	$9
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r2	%eax
ADD16	%r1	%r2
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r2	%eax
SP_STORE	%r3
INC16	%r3	$5
ADD16	%r2	%r3
CPY8	%r2	(%r2)
CPY8	(%r1)	%r2
JUMP	@IC87
@IC88:	
SP_STORE	%r1
INC16	%r1	$51
CPY16	%r2	(%r1)
INC16	%r2	$9
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r3	%eax
ADD16	%r2	%r3
CPY16	%r1	(%r1)
INC16	%r1	$1
CPY8	%eax	%r0
AND32	%eax	$255
LD32	%ebx	$6
SUB32	%r3	%eax	%ebx
ADD16	%r1	%r3
CPY8	%r1	(%r1)
CPY8	(%r2)	%r1
@IC87:	
@IC37:	
INC8	%r0	$1
JUMP	@IC34
@IC35:	
SP_RD16	%r1	$51
CPY16	%r1	%r1
SP_STORE	%eax
INC16	%eax	$4
CPY8	(%r1)	(%eax)
LD32	%r1	$Str@10
PUSH16	%r1
CALL	message
SP_INC	$2
LD8	%r0	$0
@IC92:	
CMP8	%r0	$8
JGE	@IC93
@IC94:	
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r1	%eax
SP_STORE	%r2
INC16	%r2	$5
ADD16	%r1	%r2
CPY8	%r1	(%r1)
PUSH8	%r1
CALL	number
SP_INC	$1
LD32	%r1	$Str@11
PUSH16	%r1
CALL	message
SP_INC	$2
@IC95:	
INC8	%r0	$1
JUMP	@IC92
@IC93:	
SP_STORE	%eax
PUSH16	(%eax)
CALL	message
SP_INC	$2
LD32	%r1	$Str@12
PUSH16	%r1
CALL	message
SP_INC	$2
LD8	%r0	$0
@IC98:	
CMP8	%r0	$14
JGE	@IC99
@IC100:	
SP_RD16	%r1	$51
INC16	%r1	$9
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r2	%eax
ADD16	%r1	%r2
CPY8	%r1	(%r1)
PUSH8	%r1
CALL	number
SP_INC	$1
LD32	%r1	$Str@13
PUSH16	%r1
CALL	message
SP_INC	$2
@IC101:	
INC8	%r0	$1
JUMP	@IC98
@IC99:	
SP_STORE	%eax
PUSH16	(%eax)
CALL	message
SP_INC	$2
LD32	%r1	$Str@14
PUSH16	%r1
CALL	message
SP_INC	$2
SP_STORE	%r1
INC16	%r1	$51
CPY16	%r2	(%r1)
INC16	%r2	$23
CPY8	%r2	(%r2)
PUSH8	%r2
CALL	number
SP_INC	$1
LD32	%r2	$Str@15
PUSH16	%r2
CALL	message
SP_INC	$2
CPY16	%r1	(%r1)
INC16	%r1	$23
INC16	%r1	$1
CPY8	%r1	(%r1)
PUSH8	%r1
CALL	number
SP_INC	$1
SP_RD16	%eax	$0
PUSH16	%eax
CALL	message
SP_INC	$2
LD32	%r1	$Str@16
PUSH16	%r1
CALL	message
SP_INC	$2
SP_RD16	%eax	$2
AND32	%eax	$65535
LD32	%ebx	$8
SHR32	%r1	%eax	%ebx
CPY8	%r1	%r1
PUSH8	%r1
CALL	number
SP_INC	$1
SP_RD8	%r1	$2
PUSH8	%r1
CALL	number
SP_INC	$1
SP_STORE	%eax
PUSH16	(%eax)
CALL	message
SP_INC	$2
LD32	%eax	$0
SP_WR32	%eax	$47
SP_INC	$28
POP32	%r3
POP32	%r2
POP32	%r1
POP32	%r0
RTS	
.FUNC_END	"KBParse"

USB_PS2:	
.GLOBAL	 DO_NOT_EXPORT  "USB_PS2"

.FUNCTION	"USB_PS2"	
PUSH32	%r0
PUSH32	%r1
SP_RD8	%r0	$12
CPY8	%eax	%r0
AND32	%eax	$255
CPY32	%r0	%eax
LD16	%r1	$USB_PS2_tb
ADD16	%r0	%r1
CPY8	%r0	(%r0)
SP_STORE	%eax
INC16	%eax	$11
CPY8	(%eax)	%r0
POP32	%r1
POP32	%r0
RTS	
.FUNC_END	"USB_PS2"

