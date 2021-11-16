	.file	"if-else-main.c"
	.text
	.globl	ifelse
	.type	ifelse, @function
ifelse:
.LFB0:
	.cfi_startproc
	cmpq	%rsi, %rdi
	jge	.L2
	leaq	3(%rsi), %rdi
	jmp	.L3
.L2:
	leaq	(%rdi,%rdi,4), %rsi
	addq	%rsi, %rsi
.L3:
	leaq	(%rdi,%rsi), %rax
	ret
	.cfi_endproc
.LFE0:
	.size	ifelse, .-ifelse
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	movl	$5, %esi
	movl	$3, %edi
	call	ifelse
	rep ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
