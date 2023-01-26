	.text
	.file	"main.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 336
	movl	%edi, 316(%rsp)                 # 4-byte Spill
	movq	%rsi, 320(%rsp)                 # 8-byte Spill
	cmpl	$3, %edi
	jge	.LBB0_2
# %bb.1:                                # %if.then
	movabsq	$.Lstr.10, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.11, %rdi
	callq	puts@PLT
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf@PLT
	movabsq	$.Lstr.12, %rdi
	callq	puts@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB0_2:                                # %if.else
	movl	316(%rsp), %ecx                 # 4-byte Reload
	xorl	%eax, %eax
	cmpl	$4, %ecx
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	jne	.LBB0_4
# %bb.3:                                # %if.then5
	movq	320(%rsp), %rax                 # 8-byte Reload
	movq	24(%rax), %rdi
	movabsq	$.L.str.4, %rsi
	movl	$2, %edx
	callq	strncmp@PLT
	cmpl	$0, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, 312(%rsp)                 # 4-byte Spill
.LBB0_4:                                # %if.end7
	movq	320(%rsp), %rax                 # 8-byte Reload
	movl	312(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 160(%rsp)                 # 4-byte Spill
	movq	16(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %rcx
	movq	320(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movl	%ecx, 164(%rsp)                 # 4-byte Spill
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movl	%eax, 284(%rsp)                 # 4-byte Spill
	movl	$1, %edi
	callq	srand@PLT
	movq	168(%rsp), %rdi                 # 8-byte Reload
	shlq	$2, %rdi
	movabsq	$17179869180, %rax              # imm = 0x3FFFFFFFC
	andq	%rax, %rdi
	movq	%rdi, 208(%rsp)                 # 8-byte Spill
	callq	malloc@PLT
	movq	208(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	callq	malloc@PLT
	movq	208(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	callq	malloc@PLT
	movq	208(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	callq	malloc@PLT
	movq	232(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	shlq	$2, %rdi
	movabsq	$17179869180, %rax              # imm = 0x3FFFFFFFC
	andq	%rax, %rdi
	movq	%rdi, 256(%rsp)                 # 8-byte Spill
	callq	malloc@PLT
	movq	256(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movl	284(%rsp), %eax                 # 4-byte Reload
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	cmpl	$0, %eax
	sete	%al
	movb	%al, 311(%rsp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB0_7
# %bb.5:                                # %for.body.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	jmp	.LBB0_9
.LBB0_6:                                # %for.cond38.preheader.loopexit
	jmp	.LBB0_7
.LBB0_7:                                # %for.cond38.preheader
	movl	164(%rsp), %eax                 # 4-byte Reload
	cmpl	$0, %eax
	sete	%al
	movb	%al, 151(%rsp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB0_21
# %bb.8:                                # %for.body41.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	callq	rand@PLT
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movl	$1000, %esi                     # imm = 0x3E8
	cltd
	idivl	%esi
	movq	272(%rsp), %rax                 # 8-byte Reload
	cvtsi2ss	%edx, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	callq	rand@PLT
	movq	296(%rsp), %rcx                 # 8-byte Reload
	movl	$1000, %esi                     # imm = 0x3E8
	cltd
	idivl	%esi
	movq	120(%rsp), %rax                 # 8-byte Reload
	movl	%edx, %esi
	movl	284(%rsp), %edx                 # 4-byte Reload
	cvtsi2ss	%esi, %xmm0
	movss	%xmm0, (%rcx,%rax,4)
	addq	$1, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	je	.LBB0_6
	jmp	.LBB0_9
.LBB0_10:                               # %for.body41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	movb	311(%rsp), %al                  # 1-byte Reload
	movq	184(%rsp), %rcx                 # 8-byte Reload
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, %rdi
	shlq	$2, %rdi
	movq	%rcx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	testb	$1, %al
	jne	.LBB0_17
# %bb.11:                               # %for.body47.lr.ph
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %edx
	movl	%edx, %edx
                                        # kill: def $rdx killed $edx
	cvtsi2ss	%rdx, %xmm0
	movss	%xmm0, 84(%rsp)                 # 4-byte Spill
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
.LBB0_12:                               # %for.body47
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	rand@PLT
	movq	272(%rsp), %rsi                 # 8-byte Reload
	movss	84(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	296(%rsp), %rcx                 # 8-byte Reload
	andl	$1, %eax
	movss	(%rsi,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 64(%rsp)                 # 8-byte Spill
	mulss	(%rcx,%rdx,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 72(%rsp)                 # 8-byte Spill
	cmpl	$0, %eax
	je	.LBB0_14
# %bb.13:                               # %if.then51
                                        #   in Loop: Header=BB0_12 Depth=2
	movsd	72(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos@PLT
	movq	112(%rsp), %rax                 # 8-byte Reload
	movaps	%xmm0, %xmm1
	movsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rax), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	jmp	.LBB0_15
.LBB0_14:                               # %if.else66
                                        #   in Loop: Header=BB0_12 Depth=2
	movsd	72(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sin@PLT
	movq	112(%rsp), %rax                 # 8-byte Reload
	movaps	%xmm0, %xmm1
	movsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rax), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.LBB0_15:                               # %if.end82
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	284(%rsp), %edx                 # 4-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	112(%rsp), %rsi                 # 8-byte Reload
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsi)
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jne	.LBB0_12
# %bb.16:                               # %for.inc88.loopexit
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               # %for.inc88
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	164(%rsp), %edx                 # 4-byte Reload
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jne	.LBB0_10
# %bb.18:                               # %for.end90
	movq	248(%rsp), %r9                  # 8-byte Reload
	movq	224(%rsp), %r8                  # 8-byte Reload
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movq	184(%rsp), %rdx                 # 8-byte Reload
	movl	160(%rsp), %esi                 # 4-byte Reload
	movl	164(%rsp), %edi                 # 4-byte Reload
	movb	$0, %al
	callq	fft_float@PLT
	movabsq	$.Lstr, %rdi
	callq	puts@PLT
                                        # kill: def $ecx killed $eax
	movb	151(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_26
# %bb.19:                               # %for.body96.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB0_20
.LBB0_20:                               # %for.body96
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	224(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.6, %rdi
	movb	$1, %al
	callq	printf@PLT
	movl	164(%rsp), %edx                 # 4-byte Reload
                                        # kill: def $ecx killed $eax
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	je	.LBB0_22
	jmp	.LBB0_20
.LBB0_21:                               # %for.end103.critedge
	movq	248(%rsp), %r9                  # 8-byte Reload
	movq	224(%rsp), %r8                  # 8-byte Reload
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movq	184(%rsp), %rdx                 # 8-byte Reload
	movl	160(%rsp), %esi                 # 4-byte Reload
	movl	164(%rsp), %edi                 # 4-byte Reload
	movb	$0, %al
	callq	fft_float@PLT
	movabsq	$.Lstr, %rdi
	callq	puts@PLT
	jmp	.LBB0_23
.LBB0_22:                               # %for.end103.loopexit
	jmp	.LBB0_23
.LBB0_23:                               # %for.end103
	movl	$10, %edi
	callq	putchar@PLT
	movabsq	$.Lstr.9, %rdi
	callq	puts@PLT
                                        # kill: def $ecx killed $eax
	movb	151(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_28
# %bb.24:                               # %for.body109.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB0_25
.LBB0_25:                               # %for.body109
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	248(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.6, %rdi
	movb	$1, %al
	callq	printf@PLT
	movl	164(%rsp), %edx                 # 4-byte Reload
                                        # kill: def $ecx killed $eax
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	je	.LBB0_27
	jmp	.LBB0_25
.LBB0_26:                               # %for.end116.critedge
	movl	$10, %edi
	callq	putchar@PLT
	movabsq	$.Lstr.9, %rdi
	callq	puts@PLT
	jmp	.LBB0_28
.LBB0_27:                               # %for.end116.loopexit
	jmp	.LBB0_28
.LBB0_28:                               # %for.end116
	movl	$10, %edi
	callq	putchar@PLT
	movq	176(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	movq	192(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	movq	216(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	movq	240(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	movq	264(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	movq	288(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"make <waves> random sinusoids"
	.size	.L.str.2, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"-i"
	.size	.L.str.4, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%f \t"
	.size	.L.str.6, 5

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"RealOut:"
	.size	.Lstr, 9

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"ImagOut:"
	.size	.Lstr.9, 9

	.type	.Lstr.10,@object                # @str.10
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.10:
	.asciz	"Usage: fft <waves> <length> -i"
	.size	.Lstr.10, 31

	.type	.Lstr.11,@object                # @str.11
	.p2align	4
.Lstr.11:
	.asciz	"-i performs an inverse fft"
	.size	.Lstr.11, 27

	.type	.Lstr.12,@object                # @str.12
	.p2align	4
.Lstr.12:
	.asciz	"<length> is the number of samples"
	.size	.Lstr.12, 34

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym exit
	.addrsig_sym strncmp
	.addrsig_sym srand
	.addrsig_sym malloc
	.addrsig_sym rand
	.addrsig_sym cos
	.addrsig_sym sin
	.addrsig_sym fft_float
	.addrsig_sym free
	.addrsig_sym strtol
	.addrsig_sym puts
	.addrsig_sym putchar
