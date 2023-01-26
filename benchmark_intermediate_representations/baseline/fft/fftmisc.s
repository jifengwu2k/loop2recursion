	.text
	.file	"fftmisc.ll"
	.globl	IsPowerOfTwo                    # -- Begin function IsPowerOfTwo
	.p2align	4, 0x90
	.type	IsPowerOfTwo,@function
IsPowerOfTwo:                           # @IsPowerOfTwo
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, -8(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	cmpl	$2, %edi
	movl	%eax, -4(%rsp)                  # 4-byte Spill
	jb	.LBB0_2
# %bb.1:                                # %if.end
	movl	-8(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %eax
	addl	$-1, %eax
	andl	%ecx, %eax
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rsp)                  # 4-byte Spill
.LBB0_2:                                # %return
	movl	-4(%rsp), %eax                  # 4-byte Reload
	retq
.Lfunc_end0:
	.size	IsPowerOfTwo, .Lfunc_end0-IsPowerOfTwo
	.cfi_endproc
                                        # -- End function
	.globl	NumberOfBitsNeeded              # -- Begin function NumberOfBitsNeeded
	.p2align	4, 0x90
	.type	NumberOfBitsNeeded,@function
NumberOfBitsNeeded:                     # @NumberOfBitsNeeded
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%rsp)                  # 4-byte Spill
	cmpl	$2, %edi
	jb	.LBB1_2
# %bb.1:                                # %for.cond.preheader
	xorl	%eax, %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %if.then
	movl	20(%rsp), %edx                  # 4-byte Reload
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	16(%rsp), %eax                  # 4-byte Reload
	movl	$1, %edx
	movl	%eax, %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	20(%rsp), %ecx                  # 4-byte Reload
	movl	%edx, (%rsp)                    # 4-byte Spill
	andl	%ecx, %edx
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	cmpl	$0, %edx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	je	.LBB1_3
# %bb.4:                                # %if.then1
	movl	12(%rsp), %eax                  # 4-byte Reload
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	NumberOfBitsNeeded, .Lfunc_end1-NumberOfBitsNeeded
	.cfi_endproc
                                        # -- End function
	.globl	ReverseBits                     # -- Begin function ReverseBits
	.p2align	4, 0x90
	.type	ReverseBits,@function
ReverseBits:                            # @ReverseBits
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$52, %rsp
	.cfi_def_cfa_offset 60
	movl	%edi, 40(%rsp)                  # 4-byte Spill
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	cmpl	$0, %esi
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	je	.LBB2_10
# %bb.1:                                # %for.body.preheader
	movl	40(%rsp), %eax                  # 4-byte Reload
	movl	44(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %ecx
	addl	$-1, %ecx
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	andl	$3, %edx
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	xorl	%ecx, %ecx
	cmpl	$0, %edx
                                        # implicit-def: $edx
	movl	%ecx, %edx
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	je	.LBB2_5
# %bb.2:                                # %for.body.prol.preheader
	movl	24(%rsp), %eax                  # 4-byte Reload
	movl	40(%rsp), %ecx                  # 4-byte Reload
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	jmp	.LBB2_3
.LBB2_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	8(%rsp), %edx                   # 4-byte Reload
	movl	4(%rsp), %eax                   # 4-byte Reload
	shll	$1, %eax
	movl	%eax, -32(%rsp)                 # 4-byte Spill
	movl	%ecx, %edi
	andl	$1, %edi
	movl	%edi, -28(%rsp)                 # 4-byte Spill
	orl	%edi, %eax
	movl	%eax, -24(%rsp)                 # 4-byte Spill
	shrl	$1, %ecx
	movl	%ecx, -20(%rsp)                 # 4-byte Spill
	addl	$1, %edx
	movl	%edx, -16(%rsp)                 # 4-byte Spill
	addl	$-1, %esi
	movl	%esi, -12(%rsp)                 # 4-byte Spill
	cmpl	$0, %esi
	movl	%eax, %edi
	movl	%edi, 4(%rsp)                   # 4-byte Spill
	movl	%edx, %edi
	movl	%edi, 8(%rsp)                   # 4-byte Spill
	movl	%ecx, %edi
	movl	%edi, 12(%rsp)                  # 4-byte Spill
	movl	%esi, 16(%rsp)                  # 4-byte Spill
	movl	%edx, -8(%rsp)                  # 4-byte Spill
	movl	%ecx, -4(%rsp)                  # 4-byte Spill
	movl	%eax, (%rsp)                    # 4-byte Spill
	jne	.LBB2_3
# %bb.4:                                # %for.body.preheader.split.loopexit
	movl	-8(%rsp), %ecx                  # 4-byte Reload
	movl	-4(%rsp), %eax                  # 4-byte Reload
	movl	(%rsp), %edx                    # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, -36(%rsp)                 # 4-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movl	%eax, 36(%rsp)                  # 4-byte Spill
.LBB2_5:                                # %for.body.preheader.split
	movl	20(%rsp), %ecx                  # 4-byte Reload
	movl	-36(%rsp), %eax                 # 4-byte Reload
	movl	28(%rsp), %edx                  # 4-byte Reload
	movl	32(%rsp), %esi                  # 4-byte Reload
	movl	36(%rsp), %edi                  # 4-byte Reload
	movl	%edi, -52(%rsp)                 # 4-byte Spill
	movl	%esi, -48(%rsp)                 # 4-byte Spill
	movl	%edx, -44(%rsp)                 # 4-byte Spill
	cmpl	$3, %ecx
	movl	%eax, -40(%rsp)                 # 4-byte Spill
	jb	.LBB2_9
# %bb.6:                                # %for.body.preheader.split.split
	movl	-52(%rsp), %eax                 # 4-byte Reload
	movl	-48(%rsp), %ecx                 # 4-byte Reload
	movl	-44(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -64(%rsp)                 # 4-byte Spill
	movl	%ecx, -60(%rsp)                 # 4-byte Spill
	movl	%eax, -56(%rsp)                 # 4-byte Spill
	jmp	.LBB2_7
.LBB2_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rsp), %ecx                 # 4-byte Reload
	movl	-60(%rsp), %edx                 # 4-byte Reload
	movl	-64(%rsp), %eax                 # 4-byte Reload
	movl	44(%rsp), %esi                  # 4-byte Reload
	shll	$1, %eax
	movl	%eax, -128(%rsp)                # 4-byte Spill
	movl	%ecx, %edi
	andl	$1, %edi
	movl	%edi, -124(%rsp)                # 4-byte Spill
	orl	%edi, %eax
	movl	%eax, -120(%rsp)                # 4-byte Spill
	shll	$2, %eax
	movl	%eax, -116(%rsp)                # 4-byte Spill
	movl	%ecx, %edi
	andl	$2, %edi
	movl	%edi, -112(%rsp)                # 4-byte Spill
	orl	%edi, %eax
	movl	%eax, -108(%rsp)                # 4-byte Spill
	movl	%ecx, %edi
	shrl	$2, %edi
	movl	%edi, -104(%rsp)                # 4-byte Spill
	andl	$1, %edi
	movl	%edi, -100(%rsp)                # 4-byte Spill
	orl	%edi, %eax
	movl	%eax, -96(%rsp)                 # 4-byte Spill
	movl	%ecx, %edi
	shrl	$3, %edi
	movl	%edi, -92(%rsp)                 # 4-byte Spill
	shll	$1, %eax
	movl	%eax, -88(%rsp)                 # 4-byte Spill
	andl	$1, %edi
	movl	%edi, -84(%rsp)                 # 4-byte Spill
	orl	%edi, %eax
	movl	%eax, -80(%rsp)                 # 4-byte Spill
	shrl	$4, %ecx
	movl	%ecx, -76(%rsp)                 # 4-byte Spill
	addl	$4, %edx
	movl	%edx, -72(%rsp)                 # 4-byte Spill
	cmpl	%esi, %edx
	movl	%eax, %esi
	movl	%esi, -64(%rsp)                 # 4-byte Spill
	movl	%edx, -60(%rsp)                 # 4-byte Spill
	movl	%ecx, -56(%rsp)                 # 4-byte Spill
	movl	%eax, -68(%rsp)                 # 4-byte Spill
	jne	.LBB2_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa
	movl	-68(%rsp), %eax                 # 4-byte Reload
	movl	%eax, -40(%rsp)                 # 4-byte Spill
.LBB2_9:                                # %for.end.loopexit
	movl	-40(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 48(%rsp)                  # 4-byte Spill
.LBB2_10:                               # %for.end
	movl	48(%rsp), %eax                  # 4-byte Reload
	addq	$52, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	ReverseBits, .Lfunc_end2-ReverseBits
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function Index_to_frequency
.LCPI3_0:
	.quad	0x8000000000000000              # double -0
	.quad	0x8000000000000000              # double -0
	.text
	.globl	Index_to_frequency
	.p2align	4, 0x90
	.type	Index_to_frequency,@function
Index_to_frequency:                     # @Index_to_frequency
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, -16(%rsp)                 # 4-byte Spill
	movl	%esi, -12(%rsp)                 # 4-byte Spill
	xorps	%xmm0, %xmm0
	cmpl	%esi, %edi
	movsd	%xmm0, -8(%rsp)                 # 8-byte Spill
	jbe	.LBB3_4
# %bb.1:                                # %if.else
	movl	-12(%rsp), %ecx                 # 4-byte Reload
	movl	-16(%rsp), %eax                 # 4-byte Reload
	shrl	$1, %eax
	cmpl	%ecx, %eax
	jb	.LBB3_3
# %bb.2:                                # %if.then2
	movl	-16(%rsp), %eax                 # 4-byte Reload
	movl	-12(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cvtsi2sd	%rcx, %xmm0
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rsp)                 # 8-byte Spill
	jmp	.LBB3_4
.LBB3_3:                                # %if.end5
	movl	-16(%rsp), %eax                 # 4-byte Reload
	movl	-12(%rsp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	subl	%edx, %ecx
                                        # kill: def $rcx killed $ecx
	cvtsi2sd	%rcx, %xmm0
	movaps	.LCPI3_0(%rip), %xmm1           # xmm1 = [-0.0E+0,-0.0E+0]
	pxor	%xmm1, %xmm0
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rsp)                 # 8-byte Spill
.LBB3_4:                                # %return
	movsd	-8(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	retq
.Lfunc_end3:
	.size	Index_to_frequency, .Lfunc_end3-Index_to_frequency
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\n"
	.size	.L.str, 73

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym stderr
