	.file	"while.c"
	.text
	.globl	my_while
	.type	my_while, @function
my_while:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
	jmp	.L2
.L3:
	addq	%rdi, %rax
	subq	$1, %rdi
.L2:
	cmpq	$1, %rdi
	jg	.L3
	rep ret
	.cfi_endproc
.LFE0:
	.size	my_while, .-my_while
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
