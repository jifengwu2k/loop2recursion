	.text
	.file	"bf_ofb64.ll"
	.globl	BF_ofb64_encrypt                # -- Begin function BF_ofb64_encrypt
	.p2align	4, 0x90
	.type	BF_ofb64_encrypt,@function
BF_ofb64_encrypt:                       # @BF_ofb64_encrypt
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$352, %rsp                      # imm = 0x160
	.cfi_def_cfa_offset 400
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movq	%rcx, %rax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movq	%r9, 144(%rsp)                  # 8-byte Spill
	leaq	320(%rsp), %r14
	movl	(%r9), %eax
	movl	%eax, 156(%rsp)                 # 4-byte Spill
	leaq	344(%rsp), %rsi
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, 168(%rsp)                  # 8-byte Spill
	movzbl	(%rcx), %edi
	movb	%dil, %bl
	movq	%rcx, %r8
	addq	$2, %r8
	movq	%r8, 176(%rsp)                  # 8-byte Spill
	movzbl	1(%rcx), %ebp
	movb	%bpl, %r11b
	movq	%rcx, %r8
	addq	$3, %r8
	movq	%r8, 184(%rsp)                  # 8-byte Spill
	movzbl	2(%rcx), %r12d
	movb	%r12b, %r10b
	movq	%rcx, %r8
	addq	$4, %r8
	movq	%r8, 192(%rsp)                  # 8-byte Spill
	movzbl	3(%rcx), %r15d
	movb	%r15b, %r9b
	movq	%rcx, %r8
	addq	$5, %r8
	movq	%r8, 200(%rsp)                  # 8-byte Spill
	movzbl	4(%rcx), %esi
	movb	%sil, %r8b
	shll	$8, %esi
	orl	%edi, %esi
	movd	%esi, %xmm1
	xorps	%xmm2, %xmm2
	movaps	%xmm2, 208(%rsp)                # 16-byte Spill
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$24, %xmm1
	movq	%rcx, %rsi
	addq	$6, %rsi
	movq	%rsi, 224(%rsp)                 # 8-byte Spill
	movzbl	5(%rcx), %esi
	movb	%sil, %dil
	shll	$8, %esi
	orl	%ebp, %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	psllq	$16, %xmm0
	por	%xmm1, %xmm0
	movq	%rcx, %rsi
	addq	$7, %rsi
	movq	%rsi, 232(%rsp)                 # 8-byte Spill
	movzbl	6(%rcx), %ebp
	movb	%bpl, %sil
	shll	$8, %ebp
	orl	%r12d, %ebp
	movd	%ebp, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$8, %xmm1
	por	%xmm1, %xmm0
	movzbl	7(%rcx), %ebp
	movb	%bpl, %cl
	shll	$8, %ebp
	orl	%r15d, %ebp
	movd	%ebp, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	por	%xmm1, %xmm0
	leaq	320(%rsp), %r15
	movq	%r15, 240(%rsp)                 # 8-byte Spill
	addq	$8, %r14
	movq	%r14, 248(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, 320(%rsp)
	leaq	344(%rsp), %r14
	addq	$1, %r14
	movq	%r14, 256(%rsp)                 # 8-byte Spill
	movb	%bl, 344(%rsp)
	leaq	344(%rsp), %rbx
	addq	$2, %rbx
	movq	%rbx, 264(%rsp)                 # 8-byte Spill
	movb	%r11b, 345(%rsp)
	leaq	344(%rsp), %r11
	addq	$3, %r11
	movq	%r11, 272(%rsp)                 # 8-byte Spill
	movb	%r10b, 346(%rsp)
	leaq	344(%rsp), %r10
	addq	$4, %r10
	movq	%r10, 280(%rsp)                 # 8-byte Spill
	movb	%r9b, 347(%rsp)
	leaq	344(%rsp), %r9
	addq	$5, %r9
	movq	%r9, 288(%rsp)                  # 8-byte Spill
	movb	%r8b, 348(%rsp)
	leaq	344(%rsp), %r8
	addq	$6, %r8
	movq	%r8, 296(%rsp)                  # 8-byte Spill
	movb	%dil, 349(%rsp)
	leaq	344(%rsp), %rdi
	addq	$7, %rdi
	movq	%rdi, 304(%rsp)                 # 8-byte Spill
	movb	%sil, 350(%rsp)
	movb	%cl, 351(%rsp)
	cmpq	$0, %rdx
	movl	%eax, 316(%rsp)                 # 4-byte Spill
	je	.LBB0_7
# %bb.1:                                # %while.body.preheader
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movl	156(%rsp), %edx                 # 4-byte Reload
	movq	120(%rsp), %rdi                 # 8-byte Reload
	xorl	%esi, %esi
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movl	%esi, 72(%rsp)                  # 4-byte Spill
	movl	%edx, 76(%rsp)                  # 4-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB0_2
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movl	72(%rsp), %eax                  # 4-byte Reload
	movl	76(%rsp), %ecx                  # 4-byte Reload
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	addq	$-1, %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	cmpl	$0, %ecx
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	jne	.LBB0_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	256(%rsp), %rbx                 # 8-byte Reload
	movq	160(%rsp), %r14                 # 8-byte Reload
	movq	240(%rsp), %rdi                 # 8-byte Reload
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	240(%rsp), %r10                 # 8-byte Reload
	movq	264(%rsp), %r11                 # 8-byte Reload
	movq	272(%rsp), %r9                  # 8-byte Reload
	movq	248(%rsp), %rdx                 # 8-byte Reload
	movq	280(%rsp), %r8                  # 8-byte Reload
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movq	296(%rsp), %rsi                 # 8-byte Reload
	movq	304(%rsp), %rcx                 # 8-byte Reload
	movl	44(%rsp), %eax                  # 4-byte Reload
	movq	(%r10), %r10
	movq	%r10, %r15
	shrq	$24, %r15
	movb	%r15b, %bpl
	movb	%bpl, (%r14)
	movq	%r10, %r14
	shrq	$16, %r14
	movb	%r14b, %bpl
	movb	%bpl, (%rbx)
	movq	%r10, %rbx
	shrq	$8, %rbx
                                        # kill: def $bl killed $bl killed $rbx
	movb	%bl, (%r11)
                                        # kill: def $r10b killed $r10b killed $r10
	movb	%r10b, (%r9)
	movq	(%rdx), %rdx
	movq	%rdx, %r9
	shrq	$24, %r9
                                        # kill: def $r9b killed $r9b killed $r9
	movb	%r9b, (%r8)
	movq	%rdx, %r8
	shrq	$16, %r8
                                        # kill: def $r8b killed $r8b killed $r8
	movb	%r8b, (%rdi)
	movq	%rdx, %rdi
	shrq	$8, %rdi
                                        # kill: def $dil killed $dil killed $rdi
	movb	%dil, (%rsi)
                                        # kill: def $dl killed $dl killed $rdx
	movb	%dl, (%rcx)
	addl	$1, %eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	40(%rsp), %ecx                  # 4-byte Reload
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movl	60(%rsp), %eax                  # 4-byte Reload
	movq	%rdx, %rsi
	addq	$1, %rsi
	movb	(%rdx), %r9b
	movslq	%ecx, %rdx
	xorb	344(%rsp,%rdx), %r9b
	movq	%r8, %rdx
	addq	$1, %rdx
	movb	%r9b, (%r8)
	addl	$1, %ecx
	andl	$7, %ecx
	cmpq	$0, %rdi
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movl	%eax, %edi
	movl	%edi, 72(%rsp)                  # 4-byte Spill
	movl	%ecx, %edi
	movl	%edi, 76(%rsp)                  # 4-byte Spill
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	jne	.LBB0_2
# %bb.5:                                # %while.end
	movl	16(%rsp), %eax                  # 4-byte Reload
	movl	20(%rsp), %ecx                  # 4-byte Reload
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	cmpl	$0, %ecx
	movl	%eax, 316(%rsp)                 # 4-byte Spill
	je	.LBB0_7
# %bb.6:                                # %if.then97
	movl	12(%rsp), %eax                  # 4-byte Reload
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	224(%rsp), %rsi                 # 8-byte Reload
	movq	200(%rsp), %rdi                 # 8-byte Reload
	movq	192(%rsp), %r8                  # 8-byte Reload
	movq	184(%rsp), %r9                  # 8-byte Reload
	movq	176(%rsp), %r11                 # 8-byte Reload
	movq	168(%rsp), %rbx                 # 8-byte Reload
	movq	136(%rsp), %r14                 # 8-byte Reload
	movq	248(%rsp), %rdx                 # 8-byte Reload
	movq	240(%rsp), %r10                 # 8-byte Reload
	movq	(%r10), %r10
	movq	(%rdx), %rdx
	movq	%r10, %r15
	shrq	$24, %r15
	movb	%r15b, %bpl
	movb	%bpl, (%r14)
	movq	%r10, %r14
	shrq	$16, %r14
	movb	%r14b, %bpl
	movb	%bpl, (%rbx)
	movq	%r10, %rbx
	shrq	$8, %rbx
                                        # kill: def $bl killed $bl killed $rbx
	movb	%bl, (%r11)
                                        # kill: def $r10b killed $r10b killed $r10
	movb	%r10b, (%r9)
	movq	%rdx, %r9
	shrq	$24, %r9
                                        # kill: def $r9b killed $r9b killed $r9
	movb	%r9b, (%r8)
	movq	%rdx, %r8
	shrq	$16, %r8
                                        # kill: def $r8b killed $r8b killed $r8
	movb	%r8b, (%rdi)
	movq	%rdx, %rdi
	shrq	$8, %rdi
                                        # kill: def $dil killed $dil killed $rdi
	movb	%dil, (%rsi)
                                        # kill: def $dl killed $dl killed $rdx
	movb	%dl, (%rcx)
	movl	%eax, 316(%rsp)                 # 4-byte Spill
.LBB0_7:                                # %if.end130
	movq	144(%rsp), %rax                 # 8-byte Reload
	movl	316(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, (%rax)
	addq	$352, %rsp                      # imm = 0x160
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	BF_ofb64_encrypt, .Lfunc_end0-BF_ofb64_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BF_encrypt
