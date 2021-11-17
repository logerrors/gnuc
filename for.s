	.file	"for.c"
	.text
	.globl	my_for
	.type	my_for, @function
my_for:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
	movl	$2, %edx
	jmp	.L2
.L3:
	imulq	%rdx, %rax
	addq	$1, %rdx
.L2:
	cmpq	%rdi, %rdx
	jle	.L3
	rep ret
	.cfi_endproc
.LFE0:
	.size	my_for, .-my_for
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
