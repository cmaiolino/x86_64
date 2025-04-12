# Simple program exercising CPU's arithmetic instructions

.globl _start

.section .text

_start:
	movq $3, %rdi
	movq %rdi, %rax
	mulq %rdi
	movq $2, %rdi
	addq %rdi, %rax
	movq $4, %rdi
	mulq %rdi

	movq $10, %rax
	movq $3, %rdi
	divq %rdi	 # Remainder goes to %rdx
	movq %rax, %rdi

	mov $60, %rax
	syscall
