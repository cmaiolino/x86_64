# Simple program that just exits with a simple status code

.globl _start

.section .text

_start:
	movq $60, %rax	# sys_exit
	movq $66, %rdi
	syscall
