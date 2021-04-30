	.file	"multiply.c"
	.text
	.globl	result
	.bss
	.align 4
	.type	result, @object
	.size	result, 4
result:
	.zero	4
	.text
	.globl	multiply
	.type	multiply, @function
multiply:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	multiply_result.0(%rip), %eax
	imull	-4(%rbp), %eax
	movl	%eax, multiply_result.0(%rip)
	movl	multiply_result.0(%rip), %eax
	cmpl	$100000, %eax
	jg	.L2
	cmpl	$0, -4(%rbp)
	jne	.L3
.L2:
	movl	$1, multiply_result.0(%rip)
	movl	$-1, %eax
	jmp	.L4
.L3:
	movl	multiply_result.0(%rip), %eax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	multiply, .-multiply
	.local	multiply_result.0
	.comm	multiply_result.0,4,4
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
