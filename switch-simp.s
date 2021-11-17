	.file	"switch-simp.c"
	.text
	.globl	my_switch
	.type	my_switch, @function
my_switch:
.LFB0:
	.cfi_startproc
	cmpq	$10, %rsi
	je	.L3
	cmpq	$19, %rsi
	je	.L4
	jmp	.L6
.L3:
	leaq	12(%rdi), %rdx
	.p2align 4,,3
	jmp	.L2
.L4:
	leaq	(%rdi,%rdi,2), %rdx
	.p2align 4,,3
	jmp	.L2
.L6:
	movl	$100, %edx
.L2:
	leaq	(%rdi,%rdi,4), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	my_switch, .-my_switch
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
