	.text
	.file	"sha_driver.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$248, %rsp
	.cfi_def_cfa_offset 256
	movl	%edi, 52(%rsp)                  # 4-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	leaq	64(%rsp), %rax
	cmpl	$2, %edi
	jl	.LBB0_3
# %bb.1:                                # %while.cond.preheader
	movl	52(%rsp), %eax                  # 4-byte Reload
	addl	$-1, %eax
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	cmpl	$0, %eax
	je	.LBB0_9
# %bb.2:                                # %while.body.preheader
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	48(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:                                # %if.then
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	64(%rsp), %rdi
	callq	sha_stream@PLT
	leaq	64(%rsp), %rdi
	callq	sha_print@PLT
	jmp	.LBB0_9
.LBB0_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	36(%rsp), %ecx                  # 4-byte Reload
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rdi
	movabsq	$.L.str, %rsi
	callq	fopen@PLT
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:                                # %if.then2
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rsi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_7
.LBB0_6:                                # %if.else4
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	24(%rsp), %rsi                  # 8-byte Reload
	leaq	64(%rsp), %rdi
	callq	sha_stream@PLT
	leaq	64(%rsp), %rdi
	callq	sha_print@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	fclose@PLT
.LBB0_7:                                # %while.cond.backedge
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	12(%rsp), %ecx                  # 4-byte Reload
	addl	$-1, %ecx
	cmpl	$0, %ecx
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jne	.LBB0_4
# %bb.8:                                # %if.end6.loopexit
	jmp	.LBB0_9
.LBB0_9:                                # %if.end6
	xorl	%eax, %eax
	addq	$248, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"error opening %s for reading\n"
	.size	.L.str.1, 30

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sha_stream
	.addrsig_sym sha_print
	.addrsig_sym fopen
	.addrsig_sym printf
	.addrsig_sym fclose
	.addrsig_sym stdin
