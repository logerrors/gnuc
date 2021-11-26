	.file	"call-params.c"
	.text
	.globl	func
	.type	func, @function
func:
.LFB0:
	.cfi_startproc
	movzwl	16(%rsp), %eax
	addl	%edi, %esi
	testq	%r8, %r8
	jns	.L2
	movsbl	%dl, %edx
	addl	%edx, %esi
	addl	%ecx, %esi
	movsbl	(%r9), %edi
	addl	%edi, %esi
.L2:
	movswq	%ax, %rax
	movq	8(%rsp), %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addl	%esi, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
	movl	$204, 8(%rsp)
	movq	$170, (%rsp)
	leaq	31(%rsp), %r9
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	func
	cltq
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
