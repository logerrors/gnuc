	.file	"testq.s"
	.text
	.globl testq
	.type	testq, @function
testq:
.LFB0:
    .cfi_startproc
    testq %rdi, %rsi
    movq %rsi,%rax
    ret
    .cfi_endproc
.LFE0:
    .size testq, .-testq
    .globl main
    .type main, @function
main:
.LFB1:
    .cfi_startproc
    movabsq $281474927232, %rsi
    movl $174, %edi
    call testq
    rep ret
    .cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
