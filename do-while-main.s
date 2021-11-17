	.file	"do-while-main.c"
	.text
	.globl	do_while
	.type	do_while, @function
do_while:
.LFB0:
	.cfi_startproc
.L2:
	leaq	(%rsi,%rsi,2), %rsi
	subq	$1, %rdi
	cmpq	$1, %rdi
	jg	.L2
	leaq	(%rdi,%rsi), %rax
	ret
	.cfi_endproc
.LFE0:
	.size	do_while, .-do_while
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	movl	$5, %esi
	movl	$3, %edi
	call	do_while
	rep ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
