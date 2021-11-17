	.file	"switch.c"
	.text
	.globl	my_switch
	.type	my_switch, @function
my_switch:
.LFB0:
	.cfi_startproc
	subq	$10, %rsi
	cmpq	$5, %rsi
	ja	.L8
	jmp	*.L4(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L3
	.quad	.L8
	.quad	.L5
	.quad	.L9
	.quad	.L7
	.quad	.L7
	.text
.L3:
	leaq	12(%rdi), %rdx
	jmp	.L2
.L5:
	leaq	(%rdi,%rdi,2), %rdx
	.p2align 4,,3
	jmp	.L6
.L9:
	movq	%rdi, %rdx
.L6:
	addq	$1, %rdx
	jmp	.L2
.L7:
	leaq	8(%rdi), %rdx
	jmp	.L2
.L8:
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
