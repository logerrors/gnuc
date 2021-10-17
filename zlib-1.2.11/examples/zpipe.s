	.file	"zpipe.i"
	.section	.rodata
.LC0:
	.string	"1.2.11"
.LC1:
	.string	"zpipe.c"
.LC2:
	.string	"ret != (-2)"
.LC3:
	.string	"strm.avail_in == 0"
.LC4:
	.string	"ret == 1"
	.text
	.globl	def
	.type	def, @function
def:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32928, %rsp
	movq	%rdi, -32904(%rbp)
	movq	%rsi, -32912(%rbp)
	movl	%edx, -32916(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movl	-32916(%rbp), %esi
	leaq	-128(%rbp), %rax
	movl	$112, %ecx
	movl	$.LC0, %edx
	movq	%rax, %rdi
	call	deflateInit_
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L2
	movl	-4(%rbp), %eax
	jmp	.L13
.L2:
	movq	-32904(%rbp), %rdx
	leaq	-16512(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16384, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread
	movl	%eax, -120(%rbp)
	movq	-32904(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L4
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	deflateEnd
	movl	$-1, %eax
	jmp	.L13
.L4:
	movq	-32904(%rbp), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	je	.L5
	movl	$4, %eax
	jmp	.L6
.L5:
	movl	$0, %eax
.L6:
	movl	%eax, -8(%rbp)
	leaq	-16512(%rbp), %rax
	movq	%rax, -128(%rbp)
.L10:
	movl	$16384, -96(%rbp)
	leaq	-32896(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-8(%rbp), %edx
	leaq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	deflate
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L7
	movl	$__PRETTY_FUNCTION__.3458, %ecx
	movl	$68, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L7:
	movl	-96(%rbp), %eax
	movl	$16384, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-32912(%rbp), %rcx
	leaq	-32896(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite
	movl	-12(%rbp), %edx
	cmpq	%rdx, %rax
	jne	.L8
	movq	-32912(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L9
.L8:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	deflateEnd
	movl	$-1, %eax
	jmp	.L13
.L9:
	movl	-96(%rbp), %eax
	testl	%eax, %eax
	je	.L10
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	je	.L11
	movl	$__PRETTY_FUNCTION__.3458, %ecx
	movl	$75, %edx
	movl	$.LC1, %esi
	movl	$.LC3, %edi
	call	__assert_fail
.L11:
	cmpl	$4, -8(%rbp)
	jne	.L2
	cmpl	$1, -4(%rbp)
	je	.L12
	movl	$__PRETTY_FUNCTION__.3458, %ecx
	movl	$79, %edx
	movl	$.LC1, %esi
	movl	$.LC4, %edi
	call	__assert_fail
.L12:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	deflateEnd
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	def, .-def
	.globl	inf
	.type	inf, @function
inf:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32912, %rsp
	movq	%rdi, -32904(%rbp)
	movq	%rsi, -32912(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	leaq	-128(%rbp), %rax
	movl	$112, %edx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	inflateInit_
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L15
	movl	-4(%rbp), %eax
	jmp	.L29
.L15:
	movq	-32904(%rbp), %rdx
	leaq	-16512(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16384, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fread
	movl	%eax, -120(%rbp)
	movq	-32904(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L17
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	inflateEnd
	movl	$-1, %eax
	jmp	.L29
.L17:
	movl	-120(%rbp), %eax
	testl	%eax, %eax
	jne	.L18
	jmp	.L19
.L18:
	leaq	-16512(%rbp), %rax
	movq	%rax, -128(%rbp)
.L26:
	movl	$16384, -96(%rbp)
	leaq	-32896(%rbp), %rax
	movq	%rax, -104(%rbp)
	leaq	-128(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	inflate
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L20
	movl	$__PRETTY_FUNCTION__.3473, %ecx
	movl	$126, %edx
	movl	$.LC1, %esi
	movl	$.LC2, %edi
	call	__assert_fail
.L20:
	movl	-4(%rbp), %eax
	cmpl	$-4, %eax
	jl	.L21
	cmpl	$-3, %eax
	jle	.L22
	cmpl	$2, %eax
	jne	.L21
	movl	$-3, -4(%rbp)
.L22:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	inflateEnd
	movl	-4(%rbp), %eax
	jmp	.L29
.L21:
	movl	-96(%rbp), %eax
	movl	$16384, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edx
	movq	-32912(%rbp), %rcx
	leaq	-32896(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite
	movl	-8(%rbp), %edx
	cmpq	%rdx, %rax
	jne	.L24
	movq	-32912(%rbp), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L25
.L24:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	inflateEnd
	movl	$-1, %eax
	jmp	.L29
.L25:
	movl	-96(%rbp), %eax
	testl	%eax, %eax
	je	.L26
	cmpl	$1, -4(%rbp)
	jne	.L15
.L19:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	inflateEnd
	cmpl	$1, -4(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L28
.L27:
	movl	$-3, %eax
.L28:
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	inf, .-inf
	.section	.rodata
.LC5:
	.string	"zpipe: "
.LC6:
	.string	"error reading stdin\n"
.LC7:
	.string	"error writing stdout\n"
.LC8:
	.string	"invalid compression level\n"
	.align 8
.LC9:
	.string	"invalid or incomplete deflate data\n"
.LC10:
	.string	"out of memory\n"
.LC11:
	.string	"zlib version mismatch!\n"
	.text
	.globl	zerr
	.type	zerr, @function
zerr:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$7, %edx
	movl	$1, %esi
	movl	$.LC5, %edi
	call	fwrite
	movl	-4(%rbp), %eax
	addl	$6, %eax
	cmpl	$5, %eax
	ja	.L30
	movl	%eax, %eax
	movq	.L33(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L33:
	.quad	.L32
	.quad	.L30
	.quad	.L34
	.quad	.L35
	.quad	.L36
	.quad	.L37
	.text
.L37:
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L38
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
.L38:
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	ferror
	testl	%eax, %eax
	je	.L39
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	movl	$.LC7, %edi
	call	fwrite
	jmp	.L30
.L39:
	jmp	.L30
.L36:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$26, %edx
	movl	$1, %esi
	movl	$.LC8, %edi
	call	fwrite
	jmp	.L30
.L35:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC9, %edi
	call	fwrite
	jmp	.L30
.L34:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$14, %edx
	movl	$1, %esi
	movl	$.LC10, %edi
	call	fwrite
	jmp	.L30
.L32:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	movl	$.LC11, %edi
	call	fwrite
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	zerr, .-zerr
	.section	.rodata
.LC12:
	.string	"-d"
	.align 8
.LC13:
	.string	"zpipe usage: zpipe [-d] < source > dest\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.L41
	movq	stdout(%rip), %rcx
	movq	stdin(%rip), %rax
	movl	$-1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	def
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L42
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	zerr
.L42:
	movl	-4(%rbp), %eax
	jmp	.L43
.L41:
	cmpl	$2, -20(%rbp)
	jne	.L44
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L44
	movq	stdout(%rip), %rdx
	movq	stdin(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	inf
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L45
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	zerr
.L45:
	movl	-4(%rbp), %eax
	jmp	.L43
.L44:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC13, %edi
	call	fwrite
	movl	$1, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.3458, @object
	.size	__PRETTY_FUNCTION__.3458, 4
__PRETTY_FUNCTION__.3458:
	.string	"def"
	.type	__PRETTY_FUNCTION__.3473, @object
	.size	__PRETTY_FUNCTION__.3473, 4
__PRETTY_FUNCTION__.3473:
	.string	"inf"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
