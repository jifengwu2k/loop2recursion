	.text
	.file	"bf_ecb.ll"
	.globl	BF_options                      # -- Begin function BF_options
	.p2align	4, 0x90
	.type	BF_options,@function
BF_options:                             # @BF_options
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$.L.str.1, %rax
	retq
.Lfunc_end0:
	.size	BF_options, .Lfunc_end0-BF_options
	.cfi_endproc
                                        # -- End function
	.globl	BF_ecb_encrypt                  # -- Begin function BF_ecb_encrypt
	.p2align	4, 0x90
	.type	BF_ecb_encrypt,@function
BF_ecb_encrypt:                         # @BF_ecb_encrypt
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movq	%rdx, %rax
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, %rcx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%rdi, %rax
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movzbl	(%rax), %r11d
	movzbl	1(%rax), %r10d
	movzbl	2(%rax), %r9d
	movzbl	3(%rax), %ecx
	leaq	32(%rsp), %rdi
	movzbl	4(%rax), %r8d
	shll	$8, %r8d
	orl	%r11d, %r8d
	movd	%r8d, %xmm1
	xorps	%xmm2, %xmm2
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$24, %xmm1
	movzbl	5(%rax), %r8d
	shll	$8, %r8d
	orl	%r10d, %r8d
	movd	%r8d, %xmm0
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	psllq	$16, %xmm0
	por	%xmm1, %xmm0
	movzbl	6(%rax), %r8d
	shll	$8, %r8d
	orl	%r9d, %r8d
	movd	%r8d, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$8, %xmm1
	por	%xmm1, %xmm0
	movzbl	7(%rax), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movd	%eax, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	por	%xmm1, %xmm0
	movdqa	%xmm0, 32(%rsp)
	callq	BF_encrypt@PLT
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, (%rsi)
	movq	%rax, %rcx
	shrq	$16, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, 1(%rsi)
	movq	%rax, %rcx
	shrq	$8, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, 2(%rsi)
                                        # kill: def $al killed $al killed $rax
	movb	%al, 3(%rsi)
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	shrq	$24, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, 4(%rsi)
	movq	%rax, %rcx
	shrq	$16, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, 5(%rsi)
	movq	%rax, %rcx
	shrq	$8, %rcx
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, 6(%rsi)
                                        # kill: def $al killed $al killed $rax
	movb	%al, 7(%rsi)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	BF_ecb_encrypt, .Lfunc_end1-BF_ecb_encrypt
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"BlowFish part of SSLeay 0.7.0 30-Jan-1997"
	.size	.L.str, 42

	.type	BF_version,@object              # @BF_version
	.data
	.globl	BF_version
	.p2align	3
BF_version:
	.quad	.L.str
	.size	BF_version, 8

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"blowfish(idx)"
	.size	.L.str.1, 14

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BF_encrypt
