# Program to play around with different register sizes

.set exit_num, 60

.section .text
.globl _start

_start:
	movw	$0b0000101000000101, %bx  #10d and 5d into high and low registers
	addb	%bh, %bl
	movb	$0, %bh

	# %bh now contains 10+5, use it as an argument to exit()

	movq	%rbx, %rdi
	movq	$exit_num, %rax
	syscall
