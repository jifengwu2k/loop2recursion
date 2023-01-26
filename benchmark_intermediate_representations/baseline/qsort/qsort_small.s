	.text
	.file	"qsort_small.ll"
	.globl	compare                         # -- Begin function compare
	.p2align	4, 0x90
	.type	compare,@function
compare:                                # @compare
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	strcmp@PLT
	movl	%eax, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	negb	%al
	movsbl	%al, %eax
	movl	$1, %ecx
	cmpl	$0, %edx
	cmovll	%ecx, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$7680152, %rsp                  # imm = 0x753098
	.cfi_def_cfa_offset 7680160
	movq	%rsi, 128(%rsp)                 # 8-byte Spill
	leaq	144(%rsp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	cmpl	$2, %edi
	jge	.LBB1_2
# %bb.1:                                # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str, %rdi
	movl	$26, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB1_2:                                # %if.else
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen@PLT
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	144(%rsp), %rdx
	shlq	$7, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	addq	%rax, %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movabsq	$.L.str.2, %rsi
	movb	$0, %al
	callq	__isoc99_fscanf@PLT
	movl	%eax, %ecx
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmpl	$1, %ecx
	sete	%cl
	cmpq	$60000, %rax                    # imm = 0xEA60
	setl	%dl
	andb	%cl, %dl
	movb	%dl, 95(%rsp)                   # 1-byte Spill
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	testb	$1, %dl
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jne	.LBB1_3
# %bb.4:                                # %if.end
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	%eax, %esi
	movl	%esi, 60(%rsp)                  # 4-byte Spill
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	136(%rsp), %rdi                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movl	$128, %edx
	movq	compare@GOTPCREL(%rip), %rcx
	callq	qsort@PLT
	movl	60(%rsp), %eax                  # 4-byte Reload
	cmpl	$0, %eax
	jle	.LBB1_8
# %bb.5:                                # %for.body.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB1_6
.LBB1_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	144(%rsp), %rdi
	shlq	$7, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	addq	%rax, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	puts@PLT
	movl	60(%rsp), %edx                  # 4-byte Reload
                                        # kill: def $ecx killed $eax
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jne	.LBB1_6
# %bb.7:                                # %for.end.loopexit
	jmp	.LBB1_8
.LBB1_8:                                # %for.end
	xorl	%eax, %eax
	addq	$7680152, %rsp                  # imm = 0x753098
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: qsort_small <file>\n"
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\nSorting %d elements.\n\n"
	.size	.L.str.3, 24

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compare
	.addrsig_sym strcmp
	.addrsig_sym exit
	.addrsig_sym fopen
	.addrsig_sym __isoc99_fscanf
	.addrsig_sym printf
	.addrsig_sym qsort
	.addrsig_sym puts
	.addrsig_sym fwrite
	.addrsig_sym stderr
