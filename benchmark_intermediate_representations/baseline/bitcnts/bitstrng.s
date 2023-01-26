	.text
	.file	"bitstrng.ll"
	.globl	bitstring                       # -- Begin function bitstring
	.p2align	4, 0x90
	.type	bitstring,@function
bitstring:                              # @bitstring
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movl	%ecx, %eax
	movl	%edx, 92(%rsp)                  # 4-byte Spill
	movq	%rsi, %rcx
	movl	92(%rsp), %esi                  # 4-byte Reload
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movl	%esi, 112(%rsp)                 # 4-byte Spill
	movl	%eax, 116(%rsp)                 # 4-byte Spill
	movl	%esi, %edx
	sarl	$2, %edx
	movl	%esi, %ecx
	andl	$3, %ecx
	cmpl	$0, %ecx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movl	%ecx, 120(%rsp)                 # 4-byte Spill
	addl	%esi, %edx
	movl	%edx, 124(%rsp)                 # 4-byte Spill
	subl	%edx, %eax
	addl	%ecx, %eax
	cmpl	$0, %eax
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	jle	.LBB0_2
# %bb.1:                                # %for.body.preheader
	movq	96(%rsp), %rdi                  # 8-byte Reload
	movl	124(%rsp), %ecx                 # 4-byte Reload
	movl	116(%rsp), %edx                 # 4-byte Reload
	movl	120(%rsp), %eax                 # 4-byte Reload
	addl	%edx, %eax
	addl	$-1, %eax
	subl	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	addq	$1, %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movl	$32, %esi
	callq	memset@PLT
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
.LBB0_2:                                # %while.cond.preheader
	movl	112(%rsp), %ecx                 # 4-byte Reload
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	cmpl	$0, %ecx
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jle	.LBB0_8
# %bb.3:                                # %while.body.preheader
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	112(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rax, 56(%rsp)                  # 8-byte Spill
.LBB0_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	addl	$-1, %ecx
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shrq	%cl, %rax
	movl	28(%rsp), %ecx                  # 4-byte Reload
	andq	$1, %rax
	orq	$48, %rax
	movb	%al, %sil
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movb	%sil, (%rdx)
	movl	%ecx, %edx
	andl	$3, %edx
	cmpl	$0, %edx
	sete	%dl
	cmpl	$0, %ecx
	setne	%cl
	andb	%dl, %cl
	testb	$1, %cl
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jne	.LBB0_6
.LBB0_5:                                # %while.cond.backedge
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	24(%rsp), %edx                  # 4-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$-1, %rcx
	cmpl	$1, %edx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, (%rsp)                    # 8-byte Spill
	jg	.LBB0_4
	jmp	.LBB0_7
.LBB0_6:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$2, %rax
	movb	$32, (%rcx)
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB0_5
.LBB0_7:                                # %while.end.loopexit
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
.LBB0_8:                                # %while.end
	movq	72(%rsp), %rax                  # 8-byte Reload
	movb	$0, (%rax)
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bitstring, .Lfunc_end0-bitstring
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
