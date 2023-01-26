	.text
	.file	"isqrt.ll"
	.globl	usqrt                           # -- Begin function usqrt
	.p2align	4, 0x90
	.type	usqrt,@function
usqrt:                                  # @usqrt
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	4(%rsp), %esi                   # 4-byte Reload
	shlq	$2, %rdx
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	shrq	$30, %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	andq	$3, %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	orq	%rax, %rdx
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	shlq	$2, %rcx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	movq	%rdi, %r8
	shlq	$1, %r8
	movq	%r8, -88(%rsp)                  # 8-byte Spill
	shlq	$2, %rdi
	movq	%rdi, -80(%rsp)                 # 8-byte Spill
	orq	$1, %rdi
	movq	%rdi, -72(%rsp)                 # 8-byte Spill
	cmpq	%rdi, %rdx
	setb	%al
	andb	$1, %al
	movb	%al, -57(%rsp)                  # 1-byte Spill
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	orq	%r8, %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	xorq	$1, %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	cmpq	%rdi, %rdx
	cmovbq	%r8, %rdi
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	subq	%rdi, %rdx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	addl	$1, %esi
	movl	%esi, -20(%rsp)                 # 4-byte Spill
	cmpl	$32, %esi
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	jne	.LBB0_1
# %bb.2:                                # %for.end
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	usqrt, .Lfunc_end0-usqrt
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
