	.text
	.file	"bstr_i.ll"
	.globl	bstr_i                          # -- Begin function bstr_i
	.p2align	4, 0x90
	.type	bstr_i,@function
bstr_i:                                 # @bstr_i
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	cmpq	$0, %rdi
	movl	%eax, -4(%rsp)                  # 4-byte Spill
	je	.LBB0_6
# %bb.1:                                # %land.lhs.true.preheader
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movb	(%rax), %cl
	movb	%cl, -17(%rsp)                  # 1-byte Spill
	xorl	%eax, %eax
	cmpb	$0, %cl
	movl	%eax, -4(%rsp)                  # 4-byte Spill
	je	.LBB0_6
# %bb.2:                                # %land.rhs.preheader
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	movb	-17(%rsp), %dl                  # 1-byte Reload
	xorl	%eax, %eax
	movb	%dl, -33(%rsp)                  # 1-byte Spill
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	%eax, -24(%rsp)                 # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movb	-33(%rsp), %dl                  # 1-byte Reload
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movl	-24(%rsp), %eax                 # 4-byte Reload
	movl	%eax, -60(%rsp)                 # 4-byte Spill
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movsbl	%dl, %ecx
	movl	%ecx, -48(%rsp)                 # 4-byte Spill
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpb	$64, %dl
	setb	%dl
	movb	%dl, -41(%rsp)                  # 1-byte Spill
	movl	$1, %edx
                                        # kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movb	-41(%rsp), %cl                  # 1-byte Reload
	movabsq	$844424930131969, %rsi          # imm = 0x3000000000001
	andq	%rsi, %rdx
	cmpq	$0, %rdx
	setne	%dl
	andb	%dl, %cl
	testb	$1, %cl
	movl	%eax, -40(%rsp)                 # 4-byte Spill
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:                                # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	movl	-60(%rsp), %esi                 # 4-byte Reload
	movq	%rdx, %rcx
	addq	$1, %rcx
	shll	$1, %esi
	andl	$1, %eax
	orl	%esi, %eax
	movb	1(%rdx), %dl
	cmpb	$0, %dl
	movb	%dl, -33(%rsp)                  # 1-byte Spill
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, -24(%rsp)                 # 4-byte Spill
	movl	%eax, -40(%rsp)                 # 4-byte Spill
	jne	.LBB0_3
.LBB0_5:                                # %while.end.loopexit
	movl	-40(%rsp), %eax                 # 4-byte Reload
	movl	%eax, -4(%rsp)                  # 4-byte Spill
.LBB0_6:                                # %while.end
	movl	-4(%rsp), %eax                  # 4-byte Reload
	retq
.Lfunc_end0:
	.size	bstr_i, .Lfunc_end0-bstr_i
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
