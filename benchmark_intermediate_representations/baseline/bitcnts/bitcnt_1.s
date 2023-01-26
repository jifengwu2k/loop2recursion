	.text
	.file	"bitcnt_1.ll"
	.globl	bit_count                       # -- Begin function bit_count
	.p2align	4, 0x90
	.type	bit_count,@function
bit_count:                              # @bit_count
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	cmpq	$0, %rdi
	movl	%eax, -4(%rsp)                  # 4-byte Spill
	je	.LBB0_4
# %bb.1:                                # %do.body.preheader
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	xorl	%eax, %eax
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	%eax, -20(%rsp)                 # 4-byte Spill
	jmp	.LBB0_2
.LBB0_2:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rsp), %eax                 # 4-byte Reload
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	addl	$1, %eax
	movl	%eax, -60(%rsp)                 # 4-byte Spill
	movq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	andq	%rdx, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	cmpq	$0, %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, -20(%rsp)                 # 4-byte Spill
	movl	%eax, -36(%rsp)                 # 4-byte Spill
	jne	.LBB0_2
# %bb.3:                                # %if.end.loopexit
	movl	-36(%rsp), %eax                 # 4-byte Reload
	movl	%eax, -4(%rsp)                  # 4-byte Spill
.LBB0_4:                                # %if.end
	movl	-4(%rsp), %eax                  # 4-byte Reload
	retq
.Lfunc_end0:
	.size	bit_count, .Lfunc_end0-bit_count
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
