	.text
	.file	"sha.ll"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function sha_init
.LCPI0_0:
	.quad	1732584193                      # 0x67452301
	.quad	4023233417                      # 0xefcdab89
.LCPI0_1:
	.quad	2562383102                      # 0x98badcfe
	.quad	271733878                       # 0x10325476
	.text
	.globl	sha_init
	.p2align	4, 0x90
	.type	sha_init,@function
sha_init:                               # @sha_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [1732584193,4023233417]
	movups	%xmm0, (%rdi)
	movaps	.LCPI0_1(%rip), %xmm0           # xmm0 = [2562383102,271733878]
	movups	%xmm0, 16(%rdi)
	movl	$3285377520, %eax               # imm = 0xC3D2E1F0
	movq	%rax, 32(%rdi)
	addq	$40, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	sha_init, .Lfunc_end0-sha_init
	.cfi_endproc
                                        # -- End function
	.globl	sha_update                      # -- Begin function sha_update
	.p2align	4, 0x90
	.type	sha_update,@function
sha_update:                             # @sha_update
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$408, %rsp                      # imm = 0x198
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %eax
	movq	%rdi, 336(%rsp)                 # 8-byte Spill
	movq	%rsi, 344(%rsp)                 # 8-byte Spill
	movl	%eax, 356(%rsp)                 # 4-byte Spill
	movq	%rdi, %rcx
	addq	$40, %rcx
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	movq	40(%rdi), %rdx
	cltq
	movq	%rax, 368(%rsp)                 # 8-byte Spill
	shlq	$3, %rax
	movq	%rdx, %rcx
	addq	%rax, %rcx
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	addq	$48, %rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	movq	48(%rdi), %rax
	movq	%rax, 392(%rsp)                 # 8-byte Spill
	cmpq	%rdx, %rcx
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	jae	.LBB1_2
# %bb.1:                                # %if.then
	movq	384(%rsp), %rcx                 # 8-byte Reload
	movq	392(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, (%rcx)
	movq	%rax, 400(%rsp)                 # 8-byte Spill
.LBB1_2:                                # %if.end
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	356(%rsp), %ecx                 # 4-byte Reload
	movq	336(%rsp), %rdx                 # 8-byte Reload
	movq	384(%rsp), %rsi                 # 8-byte Reload
	movq	368(%rsp), %r8                  # 8-byte Reload
	movq	360(%rsp), %r9                  # 8-byte Reload
	movq	376(%rsp), %r10                 # 8-byte Reload
	movq	400(%rsp), %rdi                 # 8-byte Reload
	movq	%r10, (%r9)
	shrq	$29, %r8
	addq	%r8, %rdi
	movq	%rdi, (%rsi)
	addq	$56, %rdx
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	cmpl	$63, %ecx
	movl	%ecx, 324(%rsp)                 # 4-byte Spill
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	jle	.LBB1_6
# %bb.3:                                # %while.body.lr.ph
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	356(%rsp), %ecx                 # 4-byte Reload
	movq	336(%rsp), %rdx                 # 8-byte Reload
	movq	312(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	addq	$3, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, %rsi
	addq	$64, %rsi
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	addq	$3, %rsi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, %rsi
	addq	$72, %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	addq	$3, %rsi
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	addq	$80, %rsi
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 136(%rsp)                 # 8-byte Spill
	addq	$3, %rsi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	addq	$88, %rsi
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 160(%rsp)                 # 8-byte Spill
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 168(%rsp)                 # 8-byte Spill
	addq	$3, %rsi
	movq	%rsi, 176(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	addq	$96, %rsi
	movq	%rsi, 184(%rsp)                 # 8-byte Spill
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 200(%rsp)                 # 8-byte Spill
	addq	$3, %rsi
	movq	%rsi, 208(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	addq	$104, %rsi
	movq	%rsi, 216(%rsp)                 # 8-byte Spill
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 224(%rsp)                 # 8-byte Spill
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 232(%rsp)                 # 8-byte Spill
	addq	$3, %rsi
	movq	%rsi, 240(%rsp)                 # 8-byte Spill
	addq	$112, %rdx
	movq	%rdx, 248(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 256(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	addq	$2, %rsi
	movq	%rsi, 264(%rsp)                 # 8-byte Spill
	addq	$3, %rdx
	movq	%rdx, 272(%rsp)                 # 8-byte Spill
	movl	%ecx, %edx
	addl	$-64, %edx
	movl	%edx, 280(%rsp)                 # 4-byte Spill
	shrl	$6, %edx
	movl	%edx, %esi
	shll	$6, %esi
	movl	%esi, 284(%rsp)                 # 4-byte Spill
	movl	%edx, %edx
                                        # kill: def $rdx killed $edx
	shlq	$6, %rdx
	addq	$64, %rdx
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	movl	%ecx, 300(%rsp)                 # 4-byte Spill
	movq	%rax, 304(%rsp)                 # 8-byte Spill
.LBB1_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	304(%rsp), %rsi                 # 8-byte Reload
	movl	300(%rsp), %eax                 # 4-byte Reload
	movq	224(%rsp), %rbx                 # 8-byte Reload
	movq	216(%rsp), %r14                 # 8-byte Reload
	movq	200(%rsp), %r15                 # 8-byte Reload
	movq	192(%rsp), %r12                 # 8-byte Reload
	movq	168(%rsp), %r13                 # 8-byte Reload
	movq	80(%rsp), %rbp                  # 8-byte Reload
	movq	312(%rsp), %rdi                 # 8-byte Reload
	movq	%rsi, (%rsp)                    # 8-byte Spill
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	$64, %edx
	callq	memcpy@PLT
	movq	312(%rsp), %rax                 # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	144(%rsp), %r11                 # 8-byte Reload
	movq	232(%rsp), %r9                  # 8-byte Reload
	movq	248(%rsp), %r10                 # 8-byte Reload
	movq	256(%rsp), %r8                  # 8-byte Reload
	movb	(%rax), %dil
	movb	(%rcx), %cl
	movb	(%rdx), %dl
	movb	(%rsi), %sil
	movb	%sil, (%rax)
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	movb	%dl, (%rax)
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	40(%rsp), %rax                  # 8-byte Reload
	movb	%cl, (%rax)
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rax                  # 8-byte Reload
	movb	%dil, (%rax)
	movb	(%rcx), %al
	movb	(%rdx), %dl
	movb	(%rsi), %sil
	movb	(%rbp), %dil
	movb	%dil, (%rcx)
	movq	336(%rsp), %rdi                 # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movb	%sil, (%rcx)
	movq	112(%rsp), %rsi                 # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movb	%dl, (%rcx)
	movq	104(%rsp), %rdx                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movb	%al, (%rbp)
	movq	88(%rsp), %rax                  # 8-byte Reload
	movb	(%rax), %bpl
	movb	(%rcx), %cl
	movb	(%rdx), %dl
	movb	(%rsi), %sil
	movb	%sil, (%rax)
	movq	112(%rsp), %rsi                 # 8-byte Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	movb	%dl, (%rax)
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movq	104(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	120(%rsp), %rax                 # 8-byte Reload
	movb	%bpl, (%rsi)
	movb	(%rax), %bpl
	movb	(%rcx), %cl
	movb	(%rdx), %dl
	movb	(%r11), %sil
	movb	%sil, (%rax)
	movq	208(%rsp), %rsi                 # 8-byte Reload
	movq	128(%rsp), %rax                 # 8-byte Reload
	movb	%dl, (%rax)
	movq	176(%rsp), %rdx                 # 8-byte Reload
	movq	136(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	152(%rsp), %rax                 # 8-byte Reload
	movb	%bpl, (%r11)
	movb	(%rax), %r11b
	movb	(%rcx), %bpl
	movb	(%r13), %cl
	movb	(%rdx), %dl
	movb	%dl, (%rax)
	movq	264(%rsp), %rdx                 # 8-byte Reload
	movq	160(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	184(%rsp), %rax                 # 8-byte Reload
	movb	%bpl, (%r13)
	movb	%r11b, (%rcx)
	movb	(%rax), %r11b
	movb	(%r12), %bpl
	movb	(%r15), %r13b
	movb	(%rsi), %cl
	movb	%cl, (%rax)
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movq	272(%rsp), %rax                 # 8-byte Reload
	movb	%r13b, (%r12)
	movb	%bpl, (%r15)
	movb	%r11b, (%rsi)
	movb	(%r14), %sil
	movb	(%rbx), %r11b
	movb	(%r9), %bpl
	movb	(%rcx), %r15b
	movb	%r15b, (%r14)
	movb	%bpl, (%rbx)
	movb	%r11b, (%r9)
	movb	%sil, (%rcx)
	movb	(%r10), %cl
	movb	(%r8), %sil
	movb	(%rdx), %r9b
	movb	(%rax), %r11b
	movb	%r11b, (%r10)
	movb	%r9b, (%r8)
	movb	%sil, (%rdx)
	movb	%cl, (%rax)
	callq	sha_transform
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	12(%rsp), %ecx                  # 4-byte Reload
	addq	$64, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	addl	$-64, %ecx
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	cmpl	$63, %ecx
	movl	%ecx, 300(%rsp)                 # 4-byte Spill
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	jg	.LBB1_4
# %bb.5:                                # %while.end.loopexit
	movq	288(%rsp), %rdx                 # 8-byte Reload
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	284(%rsp), %esi                 # 4-byte Reload
	movl	280(%rsp), %ecx                 # 4-byte Reload
	subl	%esi, %ecx
	addq	%rdx, %rax
	movl	%ecx, 324(%rsp)                 # 4-byte Spill
	movq	%rax, 328(%rsp)                 # 8-byte Spill
.LBB1_6:                                # %while.end
	movq	312(%rsp), %rdi                 # 8-byte Reload
	movl	324(%rsp), %eax                 # 4-byte Reload
	movq	328(%rsp), %rsi                 # 8-byte Reload
	movslq	%eax, %rdx
	callq	memcpy@PLT
	addq	$408, %rsp                      # imm = 0x198
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	sha_update, .Lfunc_end1-sha_update
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function sha_transform
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$1608, %rsp                     # imm = 0x648
	.cfi_def_cfa_offset 1664
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rsi
	movq	%rsi, 944(%rsp)                 # 8-byte Spill
	leaq	960(%rsp), %rdi
	addq	$56, %rsi
	movl	$128, %edx
	callq	memcpy@PLT
	movl	$16, %eax
	movq	%rax, 952(%rsp)                 # 8-byte Spill
.LBB2_1:                                # %for.body5
                                        # =>This Inner Loop Header: Depth=1
	movq	952(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 872(%rsp)                 # 8-byte Spill
	movq	936(%rsp,%rax,8), %rcx
	xorq	896(%rsp,%rax,8), %rcx
	movq	%rcx, 880(%rsp)                 # 8-byte Spill
	xorq	848(%rsp,%rax,8), %rcx
	movq	%rcx, 888(%rsp)                 # 8-byte Spill
	xorq	832(%rsp,%rax,8), %rcx
	movq	%rcx, 896(%rsp)                 # 8-byte Spill
	movq	%rcx, 960(%rsp,%rax,8)
	movq	%rax, %rcx
	orq	$1, %rcx
	movq	%rcx, 904(%rsp)                 # 8-byte Spill
	movq	944(%rsp,%rax,8), %rdx
	xorq	904(%rsp,%rax,8), %rdx
	movq	%rdx, 912(%rsp)                 # 8-byte Spill
	xorq	856(%rsp,%rax,8), %rdx
	movq	%rdx, 920(%rsp)                 # 8-byte Spill
	xorq	840(%rsp,%rax,8), %rdx
	movq	%rdx, 928(%rsp)                 # 8-byte Spill
	movq	%rdx, 960(%rsp,%rcx,8)
	addq	$2, %rax
	movq	%rax, 936(%rsp)                 # 8-byte Spill
	cmpq	$80, %rax
	movq	%rax, 952(%rsp)                 # 8-byte Spill
	jne	.LBB2_1
# %bb.2:                                # %for.end23
	movq	944(%rsp), %rdi                 # 8-byte Reload
	movq	(%rdi), %rax
	movq	%rax, 752(%rsp)                 # 8-byte Spill
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, 760(%rsp)                 # 8-byte Spill
	movq	8(%rdi), %rcx
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	movq	%rdi, %rdx
	addq	$16, %rdx
	movq	%rdx, 776(%rsp)                 # 8-byte Spill
	movq	16(%rdi), %rdx
	movq	%rdx, 784(%rsp)                 # 8-byte Spill
	movq	%rdi, %rsi
	addq	$24, %rsi
	movq	%rsi, 792(%rsp)                 # 8-byte Spill
	movq	24(%rdi), %rsi
	movq	%rsi, 800(%rsp)                 # 8-byte Spill
	movq	%rdi, %r8
	addq	$32, %r8
	movq	%r8, 808(%rsp)                  # 8-byte Spill
	movq	32(%rdi), %rdi
	movq	%rdi, 816(%rsp)                 # 8-byte Spill
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	movq	%r8, 824(%rsp)                  # 8-byte Spill
	movq	%rdi, 832(%rsp)                 # 8-byte Spill
	movq	%rsi, 840(%rsp)                 # 8-byte Spill
	movq	%rdx, 848(%rsp)                 # 8-byte Spill
	movq	%rcx, 856(%rsp)                 # 8-byte Spill
	movq	%rax, 864(%rsp)                 # 8-byte Spill
.LBB2_3:                                # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	movq	864(%rsp), %rdx                 # 8-byte Reload
	movq	856(%rsp), %r9                  # 8-byte Reload
	movq	848(%rsp), %rcx                 # 8-byte Reload
	movq	840(%rsp), %rax                 # 8-byte Reload
	movq	832(%rsp), %r11                 # 8-byte Reload
	movq	824(%rsp), %r8                  # 8-byte Reload
	movq	%rdx, %rsi
	shlq	$5, %rsi
	movq	%rsi, 592(%rsp)                 # 8-byte Spill
	movq	%rdx, %rdi
	shrq	$27, %rdi
	movq	%rdi, 600(%rsp)                 # 8-byte Spill
	orq	%rdi, %rsi
	movq	%rsi, 608(%rsp)                 # 8-byte Spill
	movq	%rcx, %rdi
	andq	%r9, %rdi
	movq	%rdi, 616(%rsp)                 # 8-byte Spill
	movq	%r9, %rbx
	xorq	$-1, %rbx
	movq	%rbx, 624(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	andq	%rbx, %r10
	movq	%r10, 632(%rsp)                 # 8-byte Spill
	orq	%rdi, %r10
	movq	%r10, 640(%rsp)                 # 8-byte Spill
	movq	960(%rsp,%r8,8), %rdi
	addq	$1518500249, %rsi               # imm = 0x5A827999
	movq	%rsi, 648(%rsp)                 # 8-byte Spill
	addq	%r11, %rsi
	movq	%rsi, 656(%rsp)                 # 8-byte Spill
	addq	%r10, %rsi
	movq	%rsi, 664(%rsp)                 # 8-byte Spill
	addq	%rdi, %rsi
	movq	%rsi, 672(%rsp)                 # 8-byte Spill
	movq	%r9, %rdi
	shlq	$30, %rdi
	movq	%rdi, 680(%rsp)                 # 8-byte Spill
	shrq	$2, %r9
	movq	%r9, 688(%rsp)                  # 8-byte Spill
	orq	%r9, %rdi
	movq	%rdi, 696(%rsp)                 # 8-byte Spill
	addq	$1, %r8
	movq	%r8, 704(%rsp)                  # 8-byte Spill
	cmpq	$20, %r8
	movq	%r8, 824(%rsp)                  # 8-byte Spill
	movq	%rax, %r8
	movq	%r8, 832(%rsp)                  # 8-byte Spill
	movq	%rcx, %r8
	movq	%r8, 840(%rsp)                  # 8-byte Spill
	movq	%rdi, %r8
	movq	%r8, 848(%rsp)                  # 8-byte Spill
	movq	%rdx, %r8
	movq	%r8, 856(%rsp)                  # 8-byte Spill
	movq	%rsi, %r8
	movq	%r8, 864(%rsp)                  # 8-byte Spill
	movq	%rdi, 712(%rsp)                 # 8-byte Spill
	movq	%rsi, 720(%rsp)                 # 8-byte Spill
	movq	%rdx, 728(%rsp)                 # 8-byte Spill
	movq	%rcx, 736(%rsp)                 # 8-byte Spill
	movq	%rax, 744(%rsp)                 # 8-byte Spill
	jne	.LBB2_3
# %bb.4:                                # %for.body51.preheader
	movq	712(%rsp), %rdx                 # 8-byte Reload
	movq	720(%rsp), %rax                 # 8-byte Reload
	movq	728(%rsp), %rcx                 # 8-byte Reload
	movq	736(%rsp), %rsi                 # 8-byte Reload
	movq	744(%rsp), %rdi                 # 8-byte Reload
	movl	$20, %r8d
	movq	%r8, 544(%rsp)                  # 8-byte Spill
	movq	%rdi, 552(%rsp)                 # 8-byte Spill
	movq	%rsi, 560(%rsp)                 # 8-byte Spill
	movq	%rdx, 568(%rsp)                 # 8-byte Spill
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	movq	%rax, 584(%rsp)                 # 8-byte Spill
.LBB2_5:                                # %for.body51
                                        # =>This Inner Loop Header: Depth=1
	movq	584(%rsp), %rdx                 # 8-byte Reload
	movq	576(%rsp), %r9                  # 8-byte Reload
	movq	568(%rsp), %rcx                 # 8-byte Reload
	movq	560(%rsp), %rax                 # 8-byte Reload
	movq	552(%rsp), %r10                 # 8-byte Reload
	movq	544(%rsp), %r8                  # 8-byte Reload
	movq	%rdx, %rsi
	shlq	$5, %rsi
	movq	%rsi, 400(%rsp)                 # 8-byte Spill
	movq	%rdx, %rdi
	shrq	$27, %rdi
	movq	%rdi, 408(%rsp)                 # 8-byte Spill
	orq	%rdi, %rsi
	movq	%rsi, 416(%rsp)                 # 8-byte Spill
	movq	%rcx, %r11
	xorq	%r9, %r11
	movq	%r11, 424(%rsp)                 # 8-byte Spill
	xorq	%rax, %r11
	movq	%r11, 432(%rsp)                 # 8-byte Spill
	movq	960(%rsp,%r8,8), %rdi
	addq	$1859775393, %rsi               # imm = 0x6ED9EBA1
	movq	%rsi, 440(%rsp)                 # 8-byte Spill
	addq	%r11, %rsi
	movq	%rsi, 448(%rsp)                 # 8-byte Spill
	addq	%r10, %rsi
	movq	%rsi, 456(%rsp)                 # 8-byte Spill
	addq	%rdi, %rsi
	movq	%rsi, 464(%rsp)                 # 8-byte Spill
	movq	%r9, %rdi
	shlq	$30, %rdi
	movq	%rdi, 472(%rsp)                 # 8-byte Spill
	shrq	$2, %r9
	movq	%r9, 480(%rsp)                  # 8-byte Spill
	orq	%r9, %rdi
	movq	%rdi, 488(%rsp)                 # 8-byte Spill
	addq	$1, %r8
	movq	%r8, 496(%rsp)                  # 8-byte Spill
	cmpq	$40, %r8
	movq	%r8, 544(%rsp)                  # 8-byte Spill
	movq	%rax, %r8
	movq	%r8, 552(%rsp)                  # 8-byte Spill
	movq	%rcx, %r8
	movq	%r8, 560(%rsp)                  # 8-byte Spill
	movq	%rdi, %r8
	movq	%r8, 568(%rsp)                  # 8-byte Spill
	movq	%rdx, %r8
	movq	%r8, 576(%rsp)                  # 8-byte Spill
	movq	%rsi, %r8
	movq	%r8, 584(%rsp)                  # 8-byte Spill
	movq	%rdi, 504(%rsp)                 # 8-byte Spill
	movq	%rsi, 512(%rsp)                 # 8-byte Spill
	movq	%rdx, 520(%rsp)                 # 8-byte Spill
	movq	%rcx, 528(%rsp)                 # 8-byte Spill
	movq	%rax, 536(%rsp)                 # 8-byte Spill
	jne	.LBB2_5
# %bb.6:                                # %for.body71.preheader
	movq	504(%rsp), %rdx                 # 8-byte Reload
	movq	512(%rsp), %rax                 # 8-byte Reload
	movq	520(%rsp), %rcx                 # 8-byte Reload
	movq	528(%rsp), %rsi                 # 8-byte Reload
	movq	536(%rsp), %rdi                 # 8-byte Reload
	movl	$40, %r8d
	movq	%r8, 352(%rsp)                  # 8-byte Spill
	movq	%rdi, 360(%rsp)                 # 8-byte Spill
	movq	%rsi, 368(%rsp)                 # 8-byte Spill
	movq	%rdx, 376(%rsp)                 # 8-byte Spill
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movq	%rax, 392(%rsp)                 # 8-byte Spill
.LBB2_7:                                # %for.body71
                                        # =>This Inner Loop Header: Depth=1
	movq	392(%rsp), %rdx                 # 8-byte Reload
	movq	384(%rsp), %r9                  # 8-byte Reload
	movq	376(%rsp), %rcx                 # 8-byte Reload
	movq	368(%rsp), %rax                 # 8-byte Reload
	movq	360(%rsp), %r11                 # 8-byte Reload
	movq	352(%rsp), %r8                  # 8-byte Reload
	movq	%rdx, %rsi
	shlq	$5, %rsi
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	movq	%rdx, %rdi
	shrq	$27, %rdi
	movq	%rdi, 200(%rsp)                 # 8-byte Spill
	orq	%rdi, %rsi
	movq	%rsi, 208(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	orq	%rcx, %r10
	movq	%r10, 216(%rsp)                 # 8-byte Spill
	andq	%r9, %r10
	movq	%r10, 224(%rsp)                 # 8-byte Spill
	movq	%rax, %rdi
	andq	%rcx, %rdi
	movq	%rdi, 232(%rsp)                 # 8-byte Spill
	orq	%rdi, %r10
	movq	%r10, 240(%rsp)                 # 8-byte Spill
	movq	960(%rsp,%r8,8), %rdi
	movabsq	$2400959708, %rbx               # imm = 0x8F1BBCDC
	addq	%rbx, %rsi
	movq	%rsi, 248(%rsp)                 # 8-byte Spill
	addq	%r11, %rsi
	movq	%rsi, 256(%rsp)                 # 8-byte Spill
	addq	%r10, %rsi
	movq	%rsi, 264(%rsp)                 # 8-byte Spill
	addq	%rdi, %rsi
	movq	%rsi, 272(%rsp)                 # 8-byte Spill
	movq	%r9, %rdi
	shlq	$30, %rdi
	movq	%rdi, 280(%rsp)                 # 8-byte Spill
	shrq	$2, %r9
	movq	%r9, 288(%rsp)                  # 8-byte Spill
	orq	%r9, %rdi
	movq	%rdi, 296(%rsp)                 # 8-byte Spill
	addq	$1, %r8
	movq	%r8, 304(%rsp)                  # 8-byte Spill
	cmpq	$60, %r8
	movq	%r8, 352(%rsp)                  # 8-byte Spill
	movq	%rax, %r8
	movq	%r8, 360(%rsp)                  # 8-byte Spill
	movq	%rcx, %r8
	movq	%r8, 368(%rsp)                  # 8-byte Spill
	movq	%rdi, %r8
	movq	%r8, 376(%rsp)                  # 8-byte Spill
	movq	%rdx, %r8
	movq	%r8, 384(%rsp)                  # 8-byte Spill
	movq	%rsi, %r8
	movq	%r8, 392(%rsp)                  # 8-byte Spill
	movq	%rdi, 312(%rsp)                 # 8-byte Spill
	movq	%rsi, 320(%rsp)                 # 8-byte Spill
	movq	%rdx, 328(%rsp)                 # 8-byte Spill
	movq	%rcx, 336(%rsp)                 # 8-byte Spill
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	jne	.LBB2_7
# %bb.8:                                # %for.body94.preheader
	movq	312(%rsp), %rdx                 # 8-byte Reload
	movq	320(%rsp), %rax                 # 8-byte Reload
	movq	328(%rsp), %rcx                 # 8-byte Reload
	movq	336(%rsp), %rsi                 # 8-byte Reload
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movl	$60, %r8d
	movq	%r8, 144(%rsp)                  # 8-byte Spill
	movq	%rdi, 152(%rsp)                 # 8-byte Spill
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	%rax, 184(%rsp)                 # 8-byte Spill
.LBB2_9:                                # %for.body94
                                        # =>This Inner Loop Header: Depth=1
	movq	184(%rsp), %rdx                 # 8-byte Reload
	movq	176(%rsp), %r9                  # 8-byte Reload
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	152(%rsp), %r10                 # 8-byte Reload
	movq	144(%rsp), %r8                  # 8-byte Reload
	movq	%rdx, %rsi
	shlq	$5, %rsi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	movq	%rdx, %rdi
	shrq	$27, %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	orq	%rdi, %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, %r11
	xorq	%r9, %r11
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	xorq	%rax, %r11
	movq	%r11, 32(%rsp)                  # 8-byte Spill
	movq	960(%rsp,%r8,8), %rdi
	movabsq	$3395469782, %rbx               # imm = 0xCA62C1D6
	addq	%rbx, %rsi
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	addq	%r11, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	addq	%r10, %rsi
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	addq	%rdi, %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	%r9, %rdi
	shlq	$30, %rdi
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	shrq	$2, %r9
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	orq	%r9, %rdi
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	addq	$1, %r8
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	cmpq	$80, %r8
	movq	%r8, 144(%rsp)                  # 8-byte Spill
	movq	%rax, %r8
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	movq	%rcx, %r8
	movq	%r8, 160(%rsp)                  # 8-byte Spill
	movq	%rdi, %r8
	movq	%r8, 168(%rsp)                  # 8-byte Spill
	movq	%rdx, %r8
	movq	%r8, 176(%rsp)                  # 8-byte Spill
	movq	%rsi, %r8
	movq	%r8, 184(%rsp)                  # 8-byte Spill
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jne	.LBB2_9
# %bb.10:                               # %for.end111
	movq	808(%rsp), %rax                 # 8-byte Reload
	movq	816(%rsp), %rcx                 # 8-byte Reload
	movq	792(%rsp), %rsi                 # 8-byte Reload
	movq	800(%rsp), %rdi                 # 8-byte Reload
	movq	776(%rsp), %r9                  # 8-byte Reload
	movq	784(%rsp), %r10                 # 8-byte Reload
	movq	760(%rsp), %rbx                 # 8-byte Reload
	movq	768(%rsp), %r14                 # 8-byte Reload
	movq	944(%rsp), %r12                 # 8-byte Reload
	movq	752(%rsp), %r13                 # 8-byte Reload
	movq	104(%rsp), %r11                 # 8-byte Reload
	movq	112(%rsp), %rbp                 # 8-byte Reload
	movq	120(%rsp), %r15                 # 8-byte Reload
	movq	128(%rsp), %r8                  # 8-byte Reload
	movq	136(%rsp), %rdx                 # 8-byte Reload
	addq	%rbp, %r13
	movq	%r13, (%r12)
	addq	%r15, %r14
	movq	%r14, (%rbx)
	addq	%r11, %r10
	movq	%r10, (%r9)
	addq	%r8, %rdi
	movq	%rdi, (%rsi)
	addq	%rdx, %rcx
	movq	%rcx, (%rax)
	addq	$1608, %rsp                     # imm = 0x648
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	sha_transform, .Lfunc_end2-sha_transform
	.cfi_endproc
                                        # -- End function
	.globl	sha_final                       # -- Begin function sha_final
	.p2align	4, 0x90
	.type	sha_final,@function
sha_final:                              # @sha_final
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$1144, %rsp                     # imm = 0x478
	.cfi_def_cfa_offset 1200
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 1096(%rsp)                # 8-byte Spill
	movq	40(%rdi), %rax
	movq	%rax, 1104(%rsp)                # 8-byte Spill
	movq	48(%rdi), %rcx
	movq	%rcx, 1112(%rsp)                # 8-byte Spill
	shrq	$3, %rax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%ecx, 1124(%rsp)                # 4-byte Spill
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, %rcx
	addq	$56, %rcx
	movq	%rcx, 1128(%rsp)                # 8-byte Spill
	movb	$-128, 56(%rdi,%rdx)
	movl	%eax, %edx
                                        # kill: def $rdx killed $edx
	addq	%rdx, %rcx
	movq	%rcx, 1136(%rsp)                # 8-byte Spill
	cmpl	$56, %eax
	jbe	.LBB3_2
# %bb.1:                                # %if.then
	movq	1136(%rsp), %rdi                # 8-byte Reload
	movl	1124(%rsp), %eax                # 4-byte Reload
	xorl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	1096(%rsp), %rdi                # 8-byte Reload
	movq	1128(%rsp), %rax                # 8-byte Reload
	movb	(%rax), %cl
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, 664(%rsp)                 # 8-byte Spill
	movb	1(%rax), %dl
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 656(%rsp)                 # 8-byte Spill
	movb	2(%rax), %sil
	movq	%rax, %r8
	addq	$3, %r8
	movq	%r8, 648(%rsp)                  # 8-byte Spill
	movb	3(%rax), %r8b
	movb	%r8b, (%rax)
	movb	%sil, 1(%rax)
	movb	%dl, 2(%rax)
	movb	%cl, 3(%rax)
	movq	%rdi, %rsi
	addq	$64, %rsi
	movq	%rsi, 640(%rsp)                 # 8-byte Spill
	movb	64(%rdi), %al
	movq	%rsi, %rcx
	addq	$1, %rcx
	movq	%rcx, 632(%rsp)                 # 8-byte Spill
	movb	65(%rdi), %cl
	movq	%rsi, %rdx
	addq	$2, %rdx
	movq	%rdx, 624(%rsp)                 # 8-byte Spill
	movb	66(%rdi), %dl
	addq	$3, %rsi
	movq	%rsi, 616(%rsp)                 # 8-byte Spill
	movb	67(%rdi), %sil
	movb	%sil, 64(%rdi)
	movb	%dl, 65(%rdi)
	movb	%cl, 66(%rdi)
	movb	%al, 67(%rdi)
	movq	%rdi, %r15
	addq	$72, %r15
	movq	%r15, 608(%rsp)                 # 8-byte Spill
	movb	72(%rdi), %al
	movq	%r15, %rbx
	addq	$1, %rbx
	movb	73(%rdi), %cl
	movq	%r15, %r14
	addq	$2, %r14
	movb	74(%rdi), %dl
	addq	$3, %r15
	movb	75(%rdi), %sil
	movb	%sil, 72(%rdi)
	movb	%dl, 73(%rdi)
	movb	%cl, 74(%rdi)
	movb	%al, 75(%rdi)
	movq	%rdi, %r12
	addq	$80, %r12
	movb	80(%rdi), %al
	movq	%r12, %r13
	addq	$1, %r13
	movb	81(%rdi), %cl
	movq	%r12, %rbp
	addq	$2, %rbp
	movb	82(%rdi), %dl
	movq	%r12, %rsi
	addq	$3, %rsi
	movq	%rsi, 928(%rsp)                 # 8-byte Spill
	movb	83(%rdi), %sil
	movb	%sil, 80(%rdi)
	movb	%dl, 81(%rdi)
	movb	%cl, 82(%rdi)
	movb	%al, 83(%rdi)
	movq	%rdi, %rsi
	addq	$88, %rsi
	movq	%rsi, 912(%rsp)                 # 8-byte Spill
	movb	88(%rdi), %al
	movq	%rsi, %rcx
	addq	$1, %rcx
	movq	%rcx, 896(%rsp)                 # 8-byte Spill
	movb	89(%rdi), %cl
	movq	%rsi, %rdx
	addq	$2, %rdx
	movq	%rdx, 880(%rsp)                 # 8-byte Spill
	movb	90(%rdi), %dl
	addq	$3, %rsi
	movq	%rsi, 864(%rsp)                 # 8-byte Spill
	movb	91(%rdi), %sil
	movb	%sil, 88(%rdi)
	movb	%dl, 89(%rdi)
	movb	%cl, 90(%rdi)
	movb	%al, 91(%rdi)
	movq	%rdi, %rsi
	addq	$96, %rsi
	movq	%rsi, 848(%rsp)                 # 8-byte Spill
	movb	96(%rdi), %al
	movq	%rsi, %rcx
	addq	$1, %rcx
	movq	%rcx, 832(%rsp)                 # 8-byte Spill
	movb	97(%rdi), %cl
	movq	%rsi, %rdx
	addq	$2, %rdx
	movq	%rdx, 816(%rsp)                 # 8-byte Spill
	movb	98(%rdi), %dl
	addq	$3, %rsi
	movq	%rsi, 800(%rsp)                 # 8-byte Spill
	movb	99(%rdi), %sil
	movb	%sil, 96(%rdi)
	movb	%dl, 97(%rdi)
	movb	%cl, 98(%rdi)
	movb	%al, 99(%rdi)
	movq	%rdi, %rsi
	addq	$104, %rsi
	movq	%rsi, 784(%rsp)                 # 8-byte Spill
	movb	104(%rdi), %al
	movq	%rsi, %rcx
	addq	$1, %rcx
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	movb	105(%rdi), %cl
	movq	%rsi, %rdx
	addq	$2, %rdx
	movq	%rdx, 752(%rsp)                 # 8-byte Spill
	movb	106(%rdi), %dl
	addq	$3, %rsi
	movq	%rsi, 736(%rsp)                 # 8-byte Spill
	movb	107(%rdi), %sil
	movb	%sil, 104(%rdi)
	movb	%dl, 105(%rdi)
	movb	%cl, 106(%rdi)
	movb	%al, 107(%rdi)
	movq	%rdi, %rsi
	addq	$112, %rsi
	movq	%rsi, 720(%rsp)                 # 8-byte Spill
	movb	112(%rdi), %al
	movq	%rsi, %rcx
	addq	$1, %rcx
	movq	%rcx, 704(%rsp)                 # 8-byte Spill
	movb	113(%rdi), %cl
	movq	%rsi, %rdx
	addq	$2, %rdx
	movq	%rdx, 688(%rsp)                 # 8-byte Spill
	movb	114(%rdi), %dl
	addq	$3, %rsi
	movq	%rsi, 672(%rsp)                 # 8-byte Spill
	movb	115(%rdi), %sil
	movb	%sil, 112(%rdi)
	movb	%dl, 113(%rdi)
	movb	%cl, 114(%rdi)
	movb	%al, 115(%rdi)
	callq	sha_transform
	movq	1128(%rsp), %rdi                # 8-byte Reload
	xorl	%esi, %esi
	movl	$56, %edx
	callq	memset@PLT
	movq	608(%rsp), %r11                 # 8-byte Reload
	movq	616(%rsp), %r10                 # 8-byte Reload
	movq	624(%rsp), %r9                  # 8-byte Reload
	movq	632(%rsp), %r8                  # 8-byte Reload
	movq	640(%rsp), %rdi                 # 8-byte Reload
	movq	648(%rsp), %rsi                 # 8-byte Reload
	movq	656(%rsp), %rdx                 # 8-byte Reload
	movq	664(%rsp), %rcx                 # 8-byte Reload
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, 951(%rsp)                  # 1-byte Spill
	movq	672(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 680(%rsp)                 # 8-byte Spill
	movq	688(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 696(%rsp)                 # 8-byte Spill
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 712(%rsp)                 # 8-byte Spill
	movq	720(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 728(%rsp)                 # 8-byte Spill
	movq	736(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 744(%rsp)                 # 8-byte Spill
	movq	752(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 760(%rsp)                 # 8-byte Spill
	movq	768(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 776(%rsp)                 # 8-byte Spill
	movq	784(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 792(%rsp)                 # 8-byte Spill
	movq	800(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 808(%rsp)                 # 8-byte Spill
	movq	816(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 824(%rsp)                 # 8-byte Spill
	movq	832(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 840(%rsp)                 # 8-byte Spill
	movq	848(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 856(%rsp)                 # 8-byte Spill
	movq	864(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 872(%rsp)                 # 8-byte Spill
	movq	880(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 888(%rsp)                 # 8-byte Spill
	movq	896(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 904(%rsp)                 # 8-byte Spill
	movq	912(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 920(%rsp)                 # 8-byte Spill
	movq	928(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 936(%rsp)                 # 8-byte Spill
	movb	951(%rsp), %al                  # 1-byte Reload
	movq	%rbp, 952(%rsp)                 # 8-byte Spill
	movq	%r13, 960(%rsp)                 # 8-byte Spill
	movq	%r12, 968(%rsp)                 # 8-byte Spill
	movq	%r15, 976(%rsp)                 # 8-byte Spill
	movq	%r14, 984(%rsp)                 # 8-byte Spill
	movq	%rbx, 992(%rsp)                 # 8-byte Spill
	movq	%r11, 1000(%rsp)                # 8-byte Spill
	movq	%r10, 1008(%rsp)                # 8-byte Spill
	movq	%r9, 1016(%rsp)                 # 8-byte Spill
	movq	%r8, 1024(%rsp)                 # 8-byte Spill
	movq	%rdi, 1032(%rsp)                # 8-byte Spill
	movq	%rsi, 1040(%rsp)                # 8-byte Spill
	movq	%rdx, 1048(%rsp)                # 8-byte Spill
	movq	%rcx, 1056(%rsp)                # 8-byte Spill
	movb	%al, %cl
	movb	%cl, 1068(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1069(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1070(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1071(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1072(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1073(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1074(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1075(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1076(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1077(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1078(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1079(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1080(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1081(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1082(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1083(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1084(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1085(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1086(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1087(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1088(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1089(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1090(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1091(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1092(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1093(%rsp)                 # 1-byte Spill
	movb	%al, %cl
	movb	%cl, 1094(%rsp)                 # 1-byte Spill
	movb	%al, 1095(%rsp)                 # 1-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	1096(%rsp), %r13                # 8-byte Reload
	movq	1136(%rsp), %rdi                # 8-byte Reload
	movl	1124(%rsp), %ecx                # 4-byte Reload
	movl	$55, %eax
	subl	%ecx, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	1128(%rsp), %rax                # 8-byte Reload
	movb	(%rax), %cl
	movb	%cl, 607(%rsp)                  # 1-byte Spill
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 584(%rsp)                 # 8-byte Spill
	movb	1(%rax), %cl
	movq	%rax, %rdx
	addq	$2, %rdx
	movq	%rdx, 576(%rsp)                 # 8-byte Spill
	movb	2(%rax), %dl
	movq	%rax, %rsi
	addq	$3, %rsi
	movq	%rsi, 568(%rsp)                 # 8-byte Spill
	movb	3(%rax), %sil
	movq	%r13, %rax
	addq	$64, %rax
	movq	%rax, 560(%rsp)                 # 8-byte Spill
	movb	64(%r13), %dil
	movq	%rax, %r8
	addq	$1, %r8
	movq	%r8, 552(%rsp)                  # 8-byte Spill
	movb	65(%r13), %r8b
	movq	%rax, %r9
	addq	$2, %r9
	movq	%r9, 544(%rsp)                  # 8-byte Spill
	movb	66(%r13), %r9b
	addq	$3, %rax
	movq	%rax, 536(%rsp)                 # 8-byte Spill
	movb	67(%r13), %r10b
	movq	%r13, %rax
	addq	$72, %rax
	movq	%rax, 528(%rsp)                 # 8-byte Spill
	movb	72(%r13), %r11b
	movq	%rax, %rbx
	addq	$1, %rbx
	movq	%rbx, 520(%rsp)                 # 8-byte Spill
	movb	73(%r13), %bl
	movq	%rax, %r14
	addq	$2, %r14
	movq	%r14, 512(%rsp)                 # 8-byte Spill
	movb	74(%r13), %bpl
	addq	$3, %rax
	movq	%rax, 504(%rsp)                 # 8-byte Spill
	movb	75(%r13), %r14b
	movq	%r13, %rax
	addq	$80, %rax
	movq	%rax, 496(%rsp)                 # 8-byte Spill
	movb	80(%r13), %r15b
	movq	%rax, %r12
	addq	$1, %r12
	movq	%r12, 488(%rsp)                 # 8-byte Spill
	movb	81(%r13), %r12b
	addq	$2, %rax
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	movq	496(%rsp), %rax                 # 8-byte Reload
	movb	82(%r13), %r13b
	addq	$3, %rax
	movq	%rax, 472(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	83(%rax), %al
	movb	%al, 606(%rsp)                  # 1-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	addq	$88, %rax
	movq	%rax, 464(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	88(%rax), %al
	movb	%al, 605(%rsp)                  # 1-byte Spill
	movq	464(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 456(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	89(%rax), %al
	movb	%al, 604(%rsp)                  # 1-byte Spill
	movq	464(%rsp), %rax                 # 8-byte Reload
	addq	$2, %rax
	movq	%rax, 448(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	90(%rax), %al
	movb	%al, 603(%rsp)                  # 1-byte Spill
	movq	464(%rsp), %rax                 # 8-byte Reload
	addq	$3, %rax
	movq	%rax, 440(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	91(%rax), %al
	movb	%al, 602(%rsp)                  # 1-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	addq	$96, %rax
	movq	%rax, 432(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	96(%rax), %al
	movb	%al, 601(%rsp)                  # 1-byte Spill
	movq	432(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 424(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	97(%rax), %al
	movb	%al, 600(%rsp)                  # 1-byte Spill
	movq	432(%rsp), %rax                 # 8-byte Reload
	addq	$2, %rax
	movq	%rax, 416(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	98(%rax), %al
	movb	%al, 599(%rsp)                  # 1-byte Spill
	movq	432(%rsp), %rax                 # 8-byte Reload
	addq	$3, %rax
	movq	%rax, 408(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	99(%rax), %al
	movb	%al, 598(%rsp)                  # 1-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	addq	$104, %rax
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	104(%rax), %al
	movb	%al, 597(%rsp)                  # 1-byte Spill
	movq	400(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 392(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	105(%rax), %al
	movb	%al, 596(%rsp)                  # 1-byte Spill
	movq	400(%rsp), %rax                 # 8-byte Reload
	addq	$2, %rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	106(%rax), %al
	movb	%al, 595(%rsp)                  # 1-byte Spill
	movq	400(%rsp), %rax                 # 8-byte Reload
	addq	$3, %rax
	movq	%rax, 376(%rsp)                 # 8-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	movb	107(%rax), %al
	movb	%al, 594(%rsp)                  # 1-byte Spill
	movq	1096(%rsp), %rax                # 8-byte Reload
	addq	$112, %rax
	movq	%rax, 368(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 360(%rsp)                 # 8-byte Spill
	movq	368(%rsp), %rax                 # 8-byte Reload
	addq	$2, %rax
	movq	%rax, 352(%rsp)                 # 8-byte Spill
	movq	368(%rsp), %rax                 # 8-byte Reload
	addq	$3, %rax
	movq	%rax, 680(%rsp)                 # 8-byte Spill
	movq	352(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 696(%rsp)                 # 8-byte Spill
	movq	360(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 712(%rsp)                 # 8-byte Spill
	movq	368(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 728(%rsp)                 # 8-byte Spill
	movq	376(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 744(%rsp)                 # 8-byte Spill
	movq	384(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 760(%rsp)                 # 8-byte Spill
	movq	392(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 776(%rsp)                 # 8-byte Spill
	movq	400(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 792(%rsp)                 # 8-byte Spill
	movq	408(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 808(%rsp)                 # 8-byte Spill
	movq	416(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 824(%rsp)                 # 8-byte Spill
	movq	424(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 840(%rsp)                 # 8-byte Spill
	movq	432(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 856(%rsp)                 # 8-byte Spill
	movq	440(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 872(%rsp)                 # 8-byte Spill
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 888(%rsp)                 # 8-byte Spill
	movq	456(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 904(%rsp)                 # 8-byte Spill
	movq	464(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 920(%rsp)                 # 8-byte Spill
	movq	472(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 936(%rsp)                 # 8-byte Spill
	movq	480(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 952(%rsp)                 # 8-byte Spill
	movq	488(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 960(%rsp)                 # 8-byte Spill
	movq	496(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 968(%rsp)                 # 8-byte Spill
	movq	504(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 976(%rsp)                 # 8-byte Spill
	movq	512(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 984(%rsp)                 # 8-byte Spill
	movq	520(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 992(%rsp)                 # 8-byte Spill
	movq	528(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1000(%rsp)                # 8-byte Spill
	movq	536(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1008(%rsp)                # 8-byte Spill
	movq	544(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1016(%rsp)                # 8-byte Spill
	movq	552(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1024(%rsp)                # 8-byte Spill
	movq	560(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1032(%rsp)                # 8-byte Spill
	movq	568(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1040(%rsp)                # 8-byte Spill
	movq	576(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1048(%rsp)                # 8-byte Spill
	movq	584(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 1056(%rsp)                # 8-byte Spill
	movb	594(%rsp), %al                  # 1-byte Reload
	movb	%al, 1068(%rsp)                 # 1-byte Spill
	movb	595(%rsp), %al                  # 1-byte Reload
	movb	%al, 1069(%rsp)                 # 1-byte Spill
	movb	596(%rsp), %al                  # 1-byte Reload
	movb	%al, 1070(%rsp)                 # 1-byte Spill
	movb	597(%rsp), %al                  # 1-byte Reload
	movb	%al, 1071(%rsp)                 # 1-byte Spill
	movb	598(%rsp), %al                  # 1-byte Reload
	movb	%al, 1072(%rsp)                 # 1-byte Spill
	movb	599(%rsp), %al                  # 1-byte Reload
	movb	%al, 1073(%rsp)                 # 1-byte Spill
	movb	600(%rsp), %al                  # 1-byte Reload
	movb	%al, 1074(%rsp)                 # 1-byte Spill
	movb	601(%rsp), %al                  # 1-byte Reload
	movb	%al, 1075(%rsp)                 # 1-byte Spill
	movb	602(%rsp), %al                  # 1-byte Reload
	movb	%al, 1076(%rsp)                 # 1-byte Spill
	movb	603(%rsp), %al                  # 1-byte Reload
	movb	%al, 1077(%rsp)                 # 1-byte Spill
	movb	604(%rsp), %al                  # 1-byte Reload
	movb	%al, 1078(%rsp)                 # 1-byte Spill
	movb	605(%rsp), %al                  # 1-byte Reload
	movb	%al, 1079(%rsp)                 # 1-byte Spill
	movb	606(%rsp), %al                  # 1-byte Reload
	movb	%al, 1080(%rsp)                 # 1-byte Spill
	movb	607(%rsp), %al                  # 1-byte Reload
	movb	%r13b, 1081(%rsp)               # 1-byte Spill
	movb	%r12b, 1082(%rsp)               # 1-byte Spill
	movb	%r15b, 1083(%rsp)               # 1-byte Spill
	movb	%r14b, 1084(%rsp)               # 1-byte Spill
	movb	%bpl, 1085(%rsp)                # 1-byte Spill
	movb	%bl, 1086(%rsp)                 # 1-byte Spill
	movb	%r11b, 1087(%rsp)               # 1-byte Spill
	movb	%r10b, 1088(%rsp)               # 1-byte Spill
	movb	%r9b, 1089(%rsp)                # 1-byte Spill
	movb	%r8b, 1090(%rsp)                # 1-byte Spill
	movb	%dil, 1091(%rsp)                # 1-byte Spill
	movb	%sil, 1092(%rsp)                # 1-byte Spill
	movb	%dl, 1093(%rsp)                 # 1-byte Spill
	movb	%cl, 1094(%rsp)                 # 1-byte Spill
	movb	%al, 1095(%rsp)                 # 1-byte Spill
.LBB3_3:                                # %if.end
	movq	680(%rsp), %rdx                 # 8-byte Reload
	movq	696(%rsp), %r8                  # 8-byte Reload
	movq	712(%rsp), %r10                 # 8-byte Reload
	movq	728(%rsp), %rbx                 # 8-byte Reload
	movq	744(%rsp), %rsi                 # 8-byte Reload
	movq	760(%rsp), %r11                 # 8-byte Reload
	movq	776(%rsp), %r14                 # 8-byte Reload
	movq	792(%rsp), %r12                 # 8-byte Reload
	movq	824(%rsp), %rdi                 # 8-byte Reload
	movb	1068(%rsp), %r13b               # 1-byte Reload
	movb	1069(%rsp), %r15b               # 1-byte Reload
	movb	1070(%rsp), %bpl                # 1-byte Reload
	movb	1071(%rsp), %r9b                # 1-byte Reload
	movb	1092(%rsp), %cl                 # 1-byte Reload
	movb	1095(%rsp), %al                 # 1-byte Reload
	movb	%al, 39(%rsp)                   # 1-byte Spill
	movb	1094(%rsp), %al                 # 1-byte Reload
	movb	%al, 23(%rsp)                   # 1-byte Spill
	movb	1093(%rsp), %al                 # 1-byte Reload
	movb	%al, 7(%rsp)                    # 1-byte Spill
	movb	1091(%rsp), %al                 # 1-byte Reload
	movb	%al, 103(%rsp)                  # 1-byte Spill
	movb	1090(%rsp), %al                 # 1-byte Reload
	movb	%al, 87(%rsp)                   # 1-byte Spill
	movb	1089(%rsp), %al                 # 1-byte Reload
	movb	%al, 71(%rsp)                   # 1-byte Spill
	movb	1088(%rsp), %al                 # 1-byte Reload
	movb	%al, 55(%rsp)                   # 1-byte Spill
	movb	1087(%rsp), %al                 # 1-byte Reload
	movb	%al, 167(%rsp)                  # 1-byte Spill
	movb	1086(%rsp), %al                 # 1-byte Reload
	movb	%al, 151(%rsp)                  # 1-byte Spill
	movb	1085(%rsp), %al                 # 1-byte Reload
	movb	%al, 135(%rsp)                  # 1-byte Spill
	movb	1084(%rsp), %al                 # 1-byte Reload
	movb	%al, 119(%rsp)                  # 1-byte Spill
	movb	1083(%rsp), %al                 # 1-byte Reload
	movb	%al, 231(%rsp)                  # 1-byte Spill
	movb	1082(%rsp), %al                 # 1-byte Reload
	movb	%al, 215(%rsp)                  # 1-byte Spill
	movb	1081(%rsp), %al                 # 1-byte Reload
	movb	%al, 199(%rsp)                  # 1-byte Spill
	movb	1080(%rsp), %al                 # 1-byte Reload
	movb	%al, 183(%rsp)                  # 1-byte Spill
	movb	1079(%rsp), %al                 # 1-byte Reload
	movb	%al, 295(%rsp)                  # 1-byte Spill
	movb	1078(%rsp), %al                 # 1-byte Reload
	movb	%al, 279(%rsp)                  # 1-byte Spill
	movb	1077(%rsp), %al                 # 1-byte Reload
	movb	%al, 263(%rsp)                  # 1-byte Spill
	movb	1076(%rsp), %al                 # 1-byte Reload
	movb	%al, 247(%rsp)                  # 1-byte Spill
	movb	1075(%rsp), %al                 # 1-byte Reload
	movb	%al, 342(%rsp)                  # 1-byte Spill
	movb	1074(%rsp), %al                 # 1-byte Reload
	movb	%al, 343(%rsp)                  # 1-byte Spill
	movb	1073(%rsp), %al                 # 1-byte Reload
	movb	%al, 327(%rsp)                  # 1-byte Spill
	movb	1072(%rsp), %al                 # 1-byte Reload
	movb	%al, 311(%rsp)                  # 1-byte Spill
	movq	1056(%rsp), %rax                # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	1048(%rsp), %rax                # 8-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	1040(%rsp), %rax                # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	1032(%rsp), %rax                # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	1024(%rsp), %rax                # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	1016(%rsp), %rax                # 8-byte Reload
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	1008(%rsp), %rax                # 8-byte Reload
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	1000(%rsp), %rax                # 8-byte Reload
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	992(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	984(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	976(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	968(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movq	960(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	movq	952(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	936(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movq	920(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	movq	904(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movq	888(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	movq	872(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 296(%rsp)                 # 8-byte Spill
	movq	856(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	movq	840(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	movq	808(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	movq	1128(%rsp), %rax                # 8-byte Reload
	movb	%cl, (%rax)
	movb	7(%rsp), %cl                    # 1-byte Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	movb	%cl, (%rax)
	movb	23(%rsp), %cl                   # 1-byte Reload
	movq	24(%rsp), %rax                  # 8-byte Reload
	movb	%cl, (%rax)
	movb	39(%rsp), %cl                   # 1-byte Reload
	movq	40(%rsp), %rax                  # 8-byte Reload
	movb	%cl, (%rax)
	movb	55(%rsp), %cl                   # 1-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movb	%cl, (%rax)
	movb	71(%rsp), %cl                   # 1-byte Reload
	movq	72(%rsp), %rax                  # 8-byte Reload
	movb	%cl, (%rax)
	movb	87(%rsp), %cl                   # 1-byte Reload
	movq	88(%rsp), %rax                  # 8-byte Reload
	movb	%cl, (%rax)
	movb	103(%rsp), %cl                  # 1-byte Reload
	movq	104(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	119(%rsp), %cl                  # 1-byte Reload
	movq	120(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	135(%rsp), %cl                  # 1-byte Reload
	movq	136(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	151(%rsp), %cl                  # 1-byte Reload
	movq	152(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	167(%rsp), %cl                  # 1-byte Reload
	movq	168(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	183(%rsp), %cl                  # 1-byte Reload
	movq	184(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	199(%rsp), %cl                  # 1-byte Reload
	movq	200(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	215(%rsp), %cl                  # 1-byte Reload
	movq	216(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	231(%rsp), %cl                  # 1-byte Reload
	movq	232(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	247(%rsp), %cl                  # 1-byte Reload
	movq	248(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	263(%rsp), %cl                  # 1-byte Reload
	movq	264(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	279(%rsp), %cl                  # 1-byte Reload
	movq	280(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	295(%rsp), %cl                  # 1-byte Reload
	movq	296(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	311(%rsp), %cl                  # 1-byte Reload
	movq	312(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	327(%rsp), %cl                  # 1-byte Reload
	movq	328(%rsp), %rax                 # 8-byte Reload
	movb	%cl, (%rax)
	movb	342(%rsp), %cl                  # 1-byte Reload
	movb	343(%rsp), %al                  # 1-byte Reload
	movb	%al, (%rdi)
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	1096(%rsp), %rdi                # 8-byte Reload
	movb	%cl, (%rax)
	movq	1112(%rsp), %rcx                # 8-byte Reload
	movq	1104(%rsp), %rax                # 8-byte Reload
	movb	%r13b, (%r12)
	movb	%r15b, (%r14)
	movb	%bpl, (%r11)
	movb	%r9b, (%rsi)
	movb	(%rbx), %sil
	movb	(%r10), %r9b
	movb	(%r8), %r11b
	movb	(%rdx), %bpl
	movb	%bpl, (%rbx)
	movb	%r11b, (%r10)
	movb	%r9b, (%r8)
	movb	%sil, (%rdx)
	movq	%rcx, 168(%rdi)
	movq	%rax, 176(%rdi)
	addq	$1144, %rsp                     # imm = 0x478
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	sha_transform                   # TAILCALL
.Lfunc_end3:
	.size	sha_final, .Lfunc_end3-sha_final
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function sha_stream
.LCPI4_0:
	.quad	1732584193                      # 0x67452301
	.quad	4023233417                      # 0xefcdab89
.LCPI4_1:
	.quad	2562383102                      # 0x98badcfe
	.quad	271733878                       # 0x10325476
	.text
	.globl	sha_stream
	.p2align	4, 0x90
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$8248, %rsp                     # imm = 0x2038
	.cfi_def_cfa_offset 8256
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	leaq	48(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movaps	.LCPI4_0(%rip), %xmm0           # xmm0 = [1732584193,4023233417]
	movups	%xmm0, (%rdi)
	movaps	.LCPI4_1(%rip), %xmm0           # xmm0 = [2562383102,271733878]
	movups	%xmm0, 16(%rdi)
	movl	$3285377520, %eax               # imm = 0xC3D2E1F0
	movq	%rax, 32(%rdi)
	addq	$40, %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	$1, %esi
	movl	$8192, %edx                     # imm = 0x2000
	callq	fread@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	cmpl	$0, %eax
	jle	.LBB4_4
# %bb.1:                                # %while.body.preheader
	movl	44(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	jmp	.LBB4_2
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	sha_update@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	$1, %esi
	movl	$8192, %edx                     # imm = 0x2000
	callq	fread@PLT
                                        # kill: def $eax killed $eax killed $rax
	cmpl	$0, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	jg	.LBB4_2
# %bb.3:                                # %while.end.loopexit
	jmp	.LBB4_4
.LBB4_4:                                # %while.end
	movq	16(%rsp), %rdi                  # 8-byte Reload
	addq	$8248, %rsp                     # imm = 0x2038
	.cfi_def_cfa_offset 8
	jmp	sha_final@PLT                   # TAILCALL
.Lfunc_end4:
	.size	sha_stream, .Lfunc_end4-sha_stream
	.cfi_endproc
                                        # -- End function
	.globl	sha_print                       # -- Begin function sha_print
	.p2align	4, 0x90
	.type	sha_print,@function
sha_print:                              # @sha_print
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rsi
	movq	8(%rdi), %rdx
	movq	16(%rdi), %rcx
	movq	24(%rdi), %r8
	movq	32(%rdi), %r9
	movl	$.L.str, %edi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	jmp	printf@PLT                      # TAILCALL
.Lfunc_end5:
	.size	sha_print, .Lfunc_end5-sha_print
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%08lx %08lx %08lx %08lx %08lx\n"
	.size	.L.str, 31

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sha_update
	.addrsig_sym sha_final
	.addrsig_sym fread
	.addrsig_sym printf
