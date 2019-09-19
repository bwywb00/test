	.file	"test.c"
	.text
	.globl	i
	.bss
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.comm	j,4,4
	.comm	buff,30,16
	.globl	buff2
	.align 16
	.type	buff2, @object
	.size	buff2, 30
buff2:
	.zero	30
	.globl	clock
	.type	clock, @object
	.size	clock, 4
clock:
	.zero	4
	.comm	clock2,4,1
	.section	.rodata
.LC0:
	.string	"Hello"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1~18.10.1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
