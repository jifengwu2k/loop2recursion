	.text
	.file	"fourierf.ll"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function fft_float
.LCPI0_0:
	.quad	0xc01921fb54442d18              # double -6.2831853071795862
.LCPI0_1:
	.quad	0x401921fb54442d18              # double 6.2831853071795862
.LCPI0_2:
	.quad	0x4000000000000000              # double 2
.LCPI0_3:
	.quad	0x8000000000000000              # double -0
.LCPI0_4:
	.quad	0xc000000000000000              # double -2
	.text
	.globl	fft_float
	.p2align	4, 0x90
	.type	fft_float,@function
fft_float:                              # @fft_float
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$488, %rsp                      # imm = 0x1E8
	.cfi_def_cfa_offset 496
	movl	%edi, 448(%rsp)                 # 4-byte Spill
	movl	%esi, 452(%rsp)                 # 4-byte Spill
	movq	%rdx, 456(%rsp)                 # 8-byte Spill
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	movq	%r8, 472(%rsp)                  # 8-byte Spill
	movq	%r9, 480(%rsp)                  # 8-byte Spill
	callq	IsPowerOfTwo@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movl	448(%rsp), %edx                 # 4-byte Reload
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:                                # %if.end
	movl	452(%rsp), %eax                 # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, 431(%rsp)                  # 1-byte Spill
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, 432(%rsp)                # 8-byte Spill
	cmpl	$0, %eax
	movsd	%xmm0, 440(%rsp)                # 8-byte Spill
	jne	.LBB0_38
# %bb.37:                               # %if.end
	movsd	432(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 440(%rsp)                # 8-byte Spill
.LBB0_38:                               # %if.end
	movq	456(%rsp), %rax                 # 8-byte Reload
	movsd	440(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 416(%rsp)                # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:                                # %if.then.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.1, %rdx
	movb	$0, %al
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_4:                                # %CheckPointer.exit
	movq	472(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:                                # %if.then.i228
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.2, %rdx
	movb	$0, %al
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_6:                                # %CheckPointer.exit229
	movq	480(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:                                # %if.then.i232
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.3, %rdx
	movb	$0, %al
	callq	fprintf@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_8:                                # %CheckPointer.exit233
	movl	448(%rsp), %edi                 # 4-byte Reload
	callq	NumberOfBitsNeeded@PLT
	movl	%eax, %ecx
	movl	448(%rsp), %eax                 # 4-byte Reload
	movl	%ecx, 408(%rsp)                 # 4-byte Spill
	cmpl	$0, %eax
	sete	%al
	movb	%al, 415(%rsp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB0_25
# %bb.9:                                # %for.body.lr.ph
	movq	464(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, %rax
	sete	%al
	movb	%al, 399(%rsp)                  # 1-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	jmp	.LBB0_12
.LBB0_10:                               # %for.cond15.preheader
	movl	448(%rsp), %eax                 # 4-byte Reload
	cmpl	$2, %eax
	jb	.LBB0_25
# %bb.11:                               # %for.body18.preheader
	movl	$2, %ecx
	movl	$1, %eax
	movl	%ecx, 388(%rsp)                 # 4-byte Spill
	movl	%eax, 392(%rsp)                 # 4-byte Spill
	jmp	.LBB0_15
.LBB0_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	408(%rsp), %esi                 # 4-byte Reload
	movq	400(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 360(%rsp)                 # 8-byte Spill
	movl	%eax, %edi
	callq	ReverseBits@PLT
	movq	360(%rsp), %rdi                 # 8-byte Reload
	movq	456(%rsp), %rsi                 # 8-byte Reload
	movq	472(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, %edx
	movb	399(%rsp), %al                  # 1-byte Reload
	movl	(%rsi,%rdi,4), %esi
	movl	%edx, %edx
                                        # kill: def $rdx killed $edx
	movq	%rdx, 368(%rsp)                 # 8-byte Spill
	movl	%esi, (%rcx,%rdx,4)
	xorps	%xmm0, %xmm0
	testb	$1, %al
	movsd	%xmm0, 376(%rsp)                # 8-byte Spill
	jne	.LBB0_14
# %bb.13:                               # %cond.false
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	464(%rsp), %rax                 # 8-byte Reload
	movq	360(%rsp), %rcx                 # 8-byte Reload
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 376(%rsp)                # 8-byte Spill
.LBB0_14:                               # %cond.end
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	448(%rsp), %edx                 # 4-byte Reload
	movq	360(%rsp), %rax                 # 8-byte Reload
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	368(%rsp), %rsi                 # 8-byte Reload
	movsd	376(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rsi,4)
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	je	.LBB0_10
	jmp	.LBB0_12
.LBB0_15:                               # %for.body18
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_19 Depth 3
	movsd	416(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	388(%rsp), %eax                 # 4-byte Reload
	movl	392(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 296(%rsp)                 # 4-byte Spill
	movl	%eax, 300(%rsp)                 # 4-byte Spill
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 328(%rsp)                # 8-byte Spill
	movsd	.LCPI0_4(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 312(%rsp)                # 8-byte Spill
	callq	sin@PLT
	movsd	328(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, 304(%rsp)                # 8-byte Spill
	movsd	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	sin@PLT
	movaps	%xmm0, %xmm1
	movsd	312(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm1, 320(%rsp)                # 8-byte Spill
	callq	cos@PLT
	movaps	%xmm0, %xmm1
	movsd	328(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm1, 336(%rsp)                # 8-byte Spill
	callq	cos@PLT
	movb	415(%rsp), %al                  # 1-byte Reload
	movsd	%xmm0, 344(%rsp)                # 8-byte Spill
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 352(%rsp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB0_23
# %bb.16:                               # %for.cond36.preheader.lr.ph
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	296(%rsp), %ecx                 # 4-byte Reload
	cmpl	$0, %ecx
	sete	%al
	movb	%al, 287(%rsp)                  # 1-byte Spill
	xorl	%eax, %eax
	movl	%ecx, 288(%rsp)                 # 4-byte Spill
	movl	%eax, 292(%rsp)                 # 4-byte Spill
.LBB0_17:                               # %for.cond36.preheader
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
	movb	287(%rsp), %al                  # 1-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movl	292(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 276(%rsp)                 # 4-byte Spill
	movl	%ecx, 280(%rsp)                 # 4-byte Spill
	testb	$1, %al
	jne	.LBB0_21
# %bb.18:                               # %for.body39.preheader
                                        #   in Loop: Header=BB0_17 Depth=2
	movsd	336(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	344(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	304(%rsp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	320(%rsp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	276(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 236(%rsp)                 # 4-byte Spill
	movsd	%xmm3, 240(%rsp)                # 8-byte Spill
	movsd	%xmm2, 248(%rsp)                # 8-byte Spill
	movsd	%xmm1, 256(%rsp)                # 8-byte Spill
	movsd	%xmm0, 264(%rsp)                # 8-byte Spill
	jmp	.LBB0_19
.LBB0_19:                               # %for.body39
                                        #   Parent Loop BB0_15 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	264(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	256(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	248(%rsp), %xmm4                # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	240(%rsp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	236(%rsp), %eax                 # 4-byte Reload
	movl	280(%rsp), %ecx                 # 4-byte Reload
	movq	480(%rsp), %rdx                 # 8-byte Reload
	movq	472(%rsp), %rdi                 # 8-byte Reload
	movl	296(%rsp), %r8d                 # 4-byte Reload
	movsd	352(%rsp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movaps	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 112(%rsp)                # 8-byte Spill
	subsd	%xmm5, %xmm1
	movsd	%xmm1, 120(%rsp)                # 8-byte Spill
	mulsd	%xmm2, %xmm3
	movsd	%xmm3, 128(%rsp)                # 8-byte Spill
	subsd	%xmm4, %xmm3
	movsd	%xmm3, 136(%rsp)                # 8-byte Spill
	movl	%eax, %esi
	addl	%r8d, %esi
	movl	%esi, 148(%rsp)                 # 4-byte Spill
	movl	%esi, %esi
	movl	%esi, %r8d
	movss	(%rdi,%r8,4), %xmm4             # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm7
	movaps	%xmm1, %xmm5
	mulsd	%xmm7, %xmm5
	movsd	%xmm5, 152(%rsp)                # 8-byte Spill
	movss	(%rdx,%r8,4), %xmm4             # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movaps	%xmm3, %xmm6
	mulsd	%xmm4, %xmm6
	movsd	%xmm6, 160(%rsp)                # 8-byte Spill
	subsd	%xmm6, %xmm5
	movsd	%xmm5, 168(%rsp)                # 8-byte Spill
	movaps	%xmm1, %xmm6
	mulsd	%xmm4, %xmm6
	movsd	%xmm6, 176(%rsp)                # 8-byte Spill
	movaps	%xmm3, %xmm4
	mulsd	%xmm7, %xmm4
	movsd	%xmm4, 184(%rsp)                # 8-byte Spill
	addsd	%xmm6, %xmm4
	movsd	%xmm4, 192(%rsp)                # 8-byte Spill
	movl	%eax, %esi
                                        # kill: def $rsi killed $esi
	movss	(%rdi,%rsi,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	cvtss2sd	%xmm6, %xmm6
	subsd	%xmm5, %xmm6
	movsd	%xmm6, 200(%rsp)                # 8-byte Spill
	cvtsd2ss	%xmm6, %xmm6
	movss	%xmm6, (%rdi,%r8,4)
	movss	(%rdx,%rsi,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	cvtss2sd	%xmm6, %xmm6
	subsd	%xmm4, %xmm6
	movsd	%xmm6, 208(%rsp)                # 8-byte Spill
	cvtsd2ss	%xmm6, %xmm6
	movss	%xmm6, (%rdx,%r8,4)
	movss	(%rdi,%rsi,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	cvtss2sd	%xmm6, %xmm6
	addsd	%xmm6, %xmm5
	movsd	%xmm5, 216(%rsp)                # 8-byte Spill
	cvtsd2ss	%xmm5, %xmm5
	movss	%xmm5, (%rdi,%rsi,4)
	movss	(%rdx,%rsi,4), %xmm5            # xmm5 = mem[0],zero,zero,zero
	cvtss2sd	%xmm5, %xmm5
	addsd	%xmm5, %xmm4
	movsd	%xmm4, 224(%rsp)                # 8-byte Spill
	cvtsd2ss	%xmm4, %xmm4
	movss	%xmm4, (%rdx,%rsi,4)
	addl	$1, %eax
	movl	%eax, 232(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	movl	%eax, 236(%rsp)                 # 4-byte Spill
	movsd	%xmm3, 240(%rsp)                # 8-byte Spill
	movsd	%xmm2, 248(%rsp)                # 8-byte Spill
	movsd	%xmm1, 256(%rsp)                # 8-byte Spill
	movsd	%xmm0, 264(%rsp)                # 8-byte Spill
	jne	.LBB0_19
# %bb.20:                               # %for.inc108.loopexit
                                        #   in Loop: Header=BB0_17 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               # %for.inc108
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	448(%rsp), %edx                 # 4-byte Reload
	movl	300(%rsp), %esi                 # 4-byte Reload
	movl	280(%rsp), %ecx                 # 4-byte Reload
	movl	276(%rsp), %eax                 # 4-byte Reload
	addl	%esi, %eax
	addl	%esi, %ecx
	cmpl	%edx, %eax
	movl	%ecx, 288(%rsp)                 # 4-byte Spill
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jb	.LBB0_17
# %bb.22:                               # %for.end110.loopexit
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               # %for.end110
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	300(%rsp), %eax                 # 4-byte Reload
	movl	448(%rsp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	shll	$1, %ecx
	cmpl	%edx, %ecx
	movl	%ecx, 388(%rsp)                 # 4-byte Spill
	movl	%eax, 392(%rsp)                 # 4-byte Spill
	jbe	.LBB0_15
# %bb.24:                               # %for.end112.loopexit
	jmp	.LBB0_25
.LBB0_25:                               # %for.end112
	movb	431(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_26
	jmp	.LBB0_36
.LBB0_26:                               # %if.then114
	movb	415(%rsp), %al                  # 1-byte Reload
	movl	448(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cvtsi2sd	%rcx, %xmm0
	movsd	%xmm0, 104(%rsp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB0_36
# %bb.27:                               # %for.body119.preheader
	movl	448(%rsp), %eax                 # 4-byte Reload
	addl	$-1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	$1, %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$2, %rcx
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jb	.LBB0_33
# %bb.28:                               # %min.iters.checked
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movabsq	$8589934590, %rax               # imm = 0x1FFFFFFFE
	andq	%rax, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	je	.LBB0_33
# %bb.29:                               # %vector.memcheck
	movq	480(%rsp), %rdx                 # 8-byte Reload
	movq	472(%rsp), %rsi                 # 8-byte Reload
	movl	448(%rsp), %eax                 # 4-byte Reload
	addl	$-1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	shlq	$2, %rcx
	movq	%rsi, %rax
	addq	%rcx, %rax
	shlq	$2, %rdi
	movq	%rdx, %rcx
	addq	%rdi, %rcx
	cmpq	%rsi, %rcx
	setae	%cl
	cmpq	%rdx, %rax
	setae	%al
	andb	%al, %cl
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	testb	$1, %cl
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jne	.LBB0_33
# %bb.30:                               # %vector.ph
	movsd	104(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	unpcklpd	%xmm0, %xmm0                    # xmm0 = xmm0[0,0]
	movaps	%xmm0, 48(%rsp)                 # 16-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
.LBB0_31:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	480(%rsp), %rdx                 # 8-byte Reload
	movaps	48(%rsp), %xmm1                 # 16-byte Reload
	movq	472(%rsp), %rsi                 # 8-byte Reload
	cvtps2pd	(%rsi,%rax,4), %xmm0
	divpd	%xmm1, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movlpd	%xmm0, (%rsi,%rax,4)
	cvtps2pd	(%rdx,%rax,4), %xmm0
	divpd	%xmm1, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movlpd	%xmm0, (%rdx,%rax,4)
	addq	$2, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpq	%rcx, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jne	.LBB0_31
# %bb.32:                               # %middle.block
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rax, %rcx
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	je	.LBB0_36
.LBB0_33:                               # %for.body119.preheader269
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB0_34:                               # %for.body119
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	448(%rsp), %edx                 # 4-byte Reload
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movsd	104(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	472(%rsp), %rsi                 # 8-byte Reload
	movss	(%rsi,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsi,%rax,4)
	movss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rax,4)
	addq	$1, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jne	.LBB0_34
# %bb.35:                               # %if.end133.loopexit
	jmp	.LBB0_36
.LBB0_36:                               # %if.end133
	addq	$488, %rsp                      # imm = 0x1E8
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	fft_float, .Lfunc_end0-fft_float
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error in fft():  NumSamples=%u is not power of two\n"
	.size	.L.str, 52

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"RealIn"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"RealOut"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ImagOut"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Error in fft_float():  %s == NULL\n"
	.size	.L.str.4, 35

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym IsPowerOfTwo
	.addrsig_sym fprintf
	.addrsig_sym exit
	.addrsig_sym NumberOfBitsNeeded
	.addrsig_sym ReverseBits
	.addrsig_sym sin
	.addrsig_sym cos
	.addrsig_sym stderr
