	.text
	.file	"bf_cfb64.ll"
	.globl	BF_cfb64_encrypt                # -- Begin function BF_cfb64_encrypt
	.p2align	4, 0x90
	.type	BF_cfb64_encrypt,@function
BF_cfb64_encrypt:                       # @BF_cfb64_encrypt
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$432, %rsp                      # imm = 0x1B0
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%r9, 344(%rsp)                  # 8-byte Spill
	movq	%r8, 352(%rsp)                  # 8-byte Spill
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	movq	%rsi, 368(%rsp)                 # 8-byte Spill
	movq	%rdi, 376(%rsp)                 # 8-byte Spill
	movl	464(%rsp), %eax
	leaq	416(%rsp), %rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movl	(%r9), %ecx
	movl	%ecx, 396(%rsp)                 # 4-byte Spill
	leaq	416(%rsp), %rcx
	movq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	cmpq	$0, %rdx
	sete	%cl
	movb	%cl, 415(%rsp)                  # 1-byte Spill
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.1:                                # %while.cond.preheader
	movl	396(%rsp), %eax                 # 4-byte Reload
	movb	415(%rsp), %cl                  # 1-byte Reload
	testb	$1, %cl
	movl	%eax, 340(%rsp)                 # 4-byte Spill
	jne	.LBB0_13
	jmp	.LBB0_2
.LBB0_2:                                # %while.body.lr.ph
	movq	368(%rsp), %rax                 # 8-byte Reload
	movq	376(%rsp), %rcx                 # 8-byte Reload
	movl	396(%rsp), %edx                 # 4-byte Reload
	movq	400(%rsp), %rsi                 # 8-byte Reload
	movq	384(%rsp), %rdi                 # 8-byte Reload
	movq	352(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, 232(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$2, %r9
	movq	%r9, 240(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$3, %r9
	movq	%r9, 248(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$4, %r9
	movq	%r9, 256(%rsp)                  # 8-byte Spill
	leaq	416(%rsp), %r9
	movq	%r9, 264(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$5, %r9
	movq	%r9, 272(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$6, %r9
	movq	%r9, 280(%rsp)                  # 8-byte Spill
	addq	$7, %r8
	movq	%r8, 288(%rsp)                  # 8-byte Spill
	addq	$8, %rdi
	movq	%rdi, 296(%rsp)                 # 8-byte Spill
	movq	%rsi, 304(%rsp)                 # 8-byte Spill
	movl	%edx, 316(%rsp)                 # 4-byte Spill
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_3:                                # %while.cond67.preheader
	movl	396(%rsp), %eax                 # 4-byte Reload
	movb	415(%rsp), %cl                  # 1-byte Reload
	testb	$1, %cl
	movl	%eax, 340(%rsp)                 # 4-byte Spill
	jne	.LBB0_13
	jmp	.LBB0_4
.LBB0_4:                                # %while.body70.lr.ph
	movq	368(%rsp), %rax                 # 8-byte Reload
	movq	376(%rsp), %rcx                 # 8-byte Reload
	movl	396(%rsp), %edx                 # 4-byte Reload
	movq	400(%rsp), %rsi                 # 8-byte Reload
	movq	384(%rsp), %rdi                 # 8-byte Reload
	movq	352(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, 128(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$2, %r9
	movq	%r9, 136(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$3, %r9
	movq	%r9, 144(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$4, %r9
	movq	%r9, 152(%rsp)                  # 8-byte Spill
	leaq	416(%rsp), %r9
	movq	%r9, 160(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$5, %r9
	movq	%r9, 168(%rsp)                  # 8-byte Spill
	movq	%r8, %r9
	addq	$6, %r9
	movq	%r9, 176(%rsp)                  # 8-byte Spill
	addq	$7, %r8
	movq	%r8, 184(%rsp)                  # 8-byte Spill
	addq	$8, %rdi
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	movq	%rsi, 200(%rsp)                 # 8-byte Spill
	movl	%edx, 212(%rsp)                 # 4-byte Spill
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	jmp	.LBB0_8
.LBB0_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	304(%rsp), %rcx                 # 8-byte Reload
	movl	316(%rsp), %eax                 # 4-byte Reload
	movq	320(%rsp), %rdx                 # 8-byte Reload
	movq	328(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movl	%eax, 116(%rsp)                 # 4-byte Spill
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:                                # %if.then2
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	288(%rsp), %rax                 # 8-byte Reload
	movq	280(%rsp), %rdx                 # 8-byte Reload
	movq	272(%rsp), %r9                  # 8-byte Reload
	movq	256(%rsp), %r11                 # 8-byte Reload
	movq	248(%rsp), %rcx                 # 8-byte Reload
	movq	240(%rsp), %r8                  # 8-byte Reload
	movq	232(%rsp), %r10                 # 8-byte Reload
	movq	352(%rsp), %rbx                 # 8-byte Reload
	movq	264(%rsp), %rdi                 # 8-byte Reload
	movq	360(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rbx), %ebp
	movzbl	(%r10), %r10d
	movzbl	(%r8), %r8d
	movzbl	(%rcx), %ecx
	movzbl	(%r11), %r11d
	shll	$8, %r11d
	orl	%ebp, %r11d
	movd	%r11d, %xmm1
	xorps	%xmm2, %xmm2
	movaps	%xmm2, 80(%rsp)                 # 16-byte Spill
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$24, %xmm1
	movzbl	(%r9), %r9d
	shll	$8, %r9d
	orl	%r10d, %r9d
	movd	%r9d, %xmm0
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	psllq	$16, %xmm0
	por	%xmm1, %xmm0
	movzbl	(%rdx), %edx
	shll	$8, %edx
	orl	%r8d, %edx
	movd	%edx, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$8, %xmm1
	por	%xmm1, %xmm0
	movzbl	(%rax), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movd	%eax, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	por	%xmm1, %xmm0
	movdqa	%xmm0, 416(%rsp)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	264(%rsp), %r9                  # 8-byte Reload
	movq	232(%rsp), %r11                 # 8-byte Reload
	movq	240(%rsp), %r10                 # 8-byte Reload
	movq	248(%rsp), %r8                  # 8-byte Reload
	movq	296(%rsp), %rcx                 # 8-byte Reload
	movq	256(%rsp), %rdi                 # 8-byte Reload
	movq	272(%rsp), %rsi                 # 8-byte Reload
	movq	280(%rsp), %rdx                 # 8-byte Reload
	movq	288(%rsp), %rax                 # 8-byte Reload
	movq	(%r9), %r9
	movq	%r9, %r14
	shrq	$24, %r14
	movb	%r14b, %bpl
	movb	%bpl, (%rbx)
	movq	%r9, %rbx
	shrq	$16, %rbx
                                        # kill: def $bl killed $bl killed $rbx
	movb	%bl, (%r11)
	movq	%r9, %r11
	shrq	$8, %r11
                                        # kill: def $r11b killed $r11b killed $r11
	movb	%r11b, (%r10)
                                        # kill: def $r9b killed $r9b killed $r9
	movb	%r9b, (%r8)
	movq	(%rcx), %rcx
	movq	%rcx, %r8
	shrq	$24, %r8
                                        # kill: def $r8b killed $r8b killed $r8
	movb	%r8b, (%rdi)
	movq	%rcx, %rdi
	shrq	$16, %rdi
                                        # kill: def $dil killed $dil killed $rdi
	movb	%dil, (%rsi)
	movq	%rcx, %rsi
	shrq	$8, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, (%rdx)
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, (%rax)
.LBB0_7:                                # %if.end
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	120(%rsp), %rdi                 # 8-byte Reload
	movl	116(%rsp), %eax                 # 4-byte Reload
	movq	352(%rsp), %rsi                 # 8-byte Reload
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	addq	$1, %rdx
	movb	(%rcx), %r9b
	movslq	%eax, %r8
	xorb	(%rsi,%r8), %r9b
	movq	%r10, %rcx
	addq	$1, %rcx
	movb	%r9b, (%r10)
	movb	%r9b, (%rsi,%r8)
	addl	$1, %eax
	andl	$7, %eax
	movq	%rdi, %rsi
	addq	$-1, %rsi
	cmpq	$0, %rdi
	movq	%rsi, 304(%rsp)                 # 8-byte Spill
	movl	%eax, %esi
	movl	%esi, 316(%rsp)                 # 4-byte Spill
	movq	%rdx, 320(%rsp)                 # 8-byte Spill
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	je	.LBB0_12
	jmp	.LBB0_5
.LBB0_8:                                # %while.body70
                                        # =>This Inner Loop Header: Depth=1
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movl	212(%rsp), %eax                 # 4-byte Reload
	movq	216(%rsp), %rdx                 # 8-byte Reload
	movq	224(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:                                # %if.then73
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	176(%rsp), %rdx                 # 8-byte Reload
	movq	168(%rsp), %r9                  # 8-byte Reload
	movq	152(%rsp), %r11                 # 8-byte Reload
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	136(%rsp), %r8                  # 8-byte Reload
	movq	128(%rsp), %r10                 # 8-byte Reload
	movq	352(%rsp), %rbx                 # 8-byte Reload
	movq	160(%rsp), %rdi                 # 8-byte Reload
	movq	360(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rbx), %ebp
	movzbl	(%r10), %r10d
	movzbl	(%r8), %r8d
	movzbl	(%rcx), %ecx
	movzbl	(%r11), %r11d
	shll	$8, %r11d
	orl	%ebp, %r11d
	movd	%r11d, %xmm1
	xorps	%xmm2, %xmm2
	movaps	%xmm2, 16(%rsp)                 # 16-byte Spill
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$24, %xmm1
	movzbl	(%r9), %r9d
	shll	$8, %r9d
	orl	%r10d, %r9d
	movd	%r9d, %xmm0
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	psllq	$16, %xmm0
	por	%xmm1, %xmm0
	movzbl	(%rdx), %edx
	shll	$8, %edx
	orl	%r8d, %edx
	movd	%edx, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$8, %xmm1
	por	%xmm1, %xmm0
	movzbl	(%rax), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movd	%eax, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	por	%xmm1, %xmm0
	movdqa	%xmm0, 416(%rsp)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	160(%rsp), %r9                  # 8-byte Reload
	movq	128(%rsp), %r11                 # 8-byte Reload
	movq	136(%rsp), %r10                 # 8-byte Reload
	movq	144(%rsp), %r8                  # 8-byte Reload
	movq	192(%rsp), %rcx                 # 8-byte Reload
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movq	168(%rsp), %rsi                 # 8-byte Reload
	movq	176(%rsp), %rdx                 # 8-byte Reload
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	(%r9), %r9
	movq	%r9, %r14
	shrq	$24, %r14
	movb	%r14b, %bpl
	movb	%bpl, (%rbx)
	movq	%r9, %rbx
	shrq	$16, %rbx
                                        # kill: def $bl killed $bl killed $rbx
	movb	%bl, (%r11)
	movq	%r9, %r11
	shrq	$8, %r11
                                        # kill: def $r11b killed $r11b killed $r11
	movb	%r11b, (%r10)
                                        # kill: def $r9b killed $r9b killed $r9
	movb	%r9b, (%r8)
	movq	(%rcx), %rcx
	movq	%rcx, %r8
	shrq	$24, %r8
                                        # kill: def $r8b killed $r8b killed $r8
	movb	%r8b, (%rdi)
	movq	%rcx, %rdi
	shrq	$16, %rdi
                                        # kill: def $dil killed $dil killed $rdi
	movb	%dil, (%rsi)
	movq	%rcx, %rsi
	shrq	$8, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, (%rdx)
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, (%rax)
.LBB0_10:                               # %if.end137
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	60(%rsp), %eax                  # 4-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	352(%rsp), %r9                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdx
	addq	$1, %rdx
	movb	(%rcx), %cl
	movslq	%eax, %r10
	movb	(%r9,%r10), %r8b
	movb	%cl, (%r9,%r10)
	xorb	%cl, %r8b
	movq	%rsi, %rcx
	addq	$1, %rcx
	movb	%r8b, (%rsi)
	addl	$1, %eax
	andl	$7, %eax
	movq	%rdi, %rsi
	addq	$-1, %rsi
	cmpq	$0, %rdi
	movq	%rsi, 200(%rsp)                 # 8-byte Spill
	movl	%eax, %esi
	movl	%esi, 212(%rsp)                 # 4-byte Spill
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	jne	.LBB0_8
# %bb.11:                               # %if.end151.loopexit
	movl	12(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 340(%rsp)                 # 4-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               # %if.end151.loopexit263
	movl	76(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 340(%rsp)                 # 4-byte Spill
.LBB0_13:                               # %if.end151
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	340(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, (%rax)
	addq	$432, %rsp                      # imm = 0x1B0
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	BF_cfb64_encrypt, .Lfunc_end0-BF_cfb64_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BF_encrypt
