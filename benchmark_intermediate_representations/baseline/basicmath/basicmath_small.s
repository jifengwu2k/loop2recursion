	.text
	.file	"basicmath_small.ll"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function main
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_1:
	.quad	0xc025000000000000              # double -10.5
.LCPI0_2:
	.quad	0x4040000000000000              # double 32
.LCPI0_3:
	.quad	0xc03e000000000000              # double -30
.LCPI0_4:
	.quad	0xc012000000000000              # double -4.5
.LCPI0_5:
	.quad	0x4031000000000000              # double 17
.LCPI0_6:
	.quad	0xc00c000000000000              # double -3.5
.LCPI0_7:
	.quad	0x4036000000000000              # double 22
.LCPI0_8:
	.quad	0xc03f000000000000              # double -31
.LCPI0_9:
	.quad	0xc02b666666666666              # double -13.699999999999999
.LCPI0_10:
	.quad	0xc041800000000000              # double -35
.LCPI0_11:
	.quad	0x4014000000000000              # double 5
.LCPI0_12:
	.quad	0x402e000000000000              # double 15
.LCPI0_13:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_14:
	.quad	0x4066800000000000              # double 180
.LCPI0_15:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
.LCPI0_16:
	.quad	0x401921fb97600b9b              # double 6.2831863071795864
.LCPI0_17:
	.quad	0x3f91df46a2529d39              # double 0.017453292519943295
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$344, %rsp                      # imm = 0x158
	.cfi_def_cfa_offset 352
	leaq	320(%rsp), %rax
	leaq	316(%rsp), %rax
	leaq	304(%rsp), %rax
	movabsq	$.Lstr, %rdi
	callq	puts@PLT
	leaq	320(%rsp), %rsi
	movq	%rsi, 296(%rsp)                 # 8-byte Spill
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2           # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	leaq	316(%rsp), %rdi
	callq	SolveCubic@PLT
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	cmpl	$0, 316(%rsp)
	jle	.LBB0_4
# %bb.1:                                # %for.body.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	jmp	.LBB0_2
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	288(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	movsd	320(%rsp,%rax,8), %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movq	272(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	movslq	316(%rsp), %rcx
	cmpq	%rcx, %rax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	jl	.LBB0_2
# %bb.3:                                # %for.end.loopexit
	jmp	.LBB0_4
.LBB0_4:                                # %for.end
	movl	$10, %edi
	callq	putchar@PLT
	movq	296(%rsp), %rsi                 # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm2           # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3           # xmm3 = mem[0],zero
	leaq	316(%rsp), %rdi
	callq	SolveCubic@PLT
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	cmpl	$0, 316(%rsp)
	jle	.LBB0_8
# %bb.5:                                # %for.body8.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	jmp	.LBB0_6
.LBB0_6:                                # %for.body8
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	movsd	320(%rsp,%rax,8), %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movq	248(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	movslq	316(%rsp), %rcx
	cmpq	%rcx, %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	jl	.LBB0_6
# %bb.7:                                # %for.end14.loopexit
	jmp	.LBB0_8
.LBB0_8:                                # %for.end14
	movl	$10, %edi
	callq	putchar@PLT
	movq	296(%rsp), %rsi                 # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI0_6(%rip), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_7(%rip), %xmm2           # xmm2 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm3           # xmm3 = mem[0],zero
	leaq	316(%rsp), %rdi
	callq	SolveCubic@PLT
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	cmpl	$0, 316(%rsp)
	jle	.LBB0_12
# %bb.9:                                # %for.body20.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	jmp	.LBB0_10
.LBB0_10:                               # %for.body20
                                        # =>This Inner Loop Header: Depth=1
	movq	240(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	movsd	320(%rsp,%rax,8), %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movq	224(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movslq	316(%rsp), %rcx
	cmpq	%rcx, %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	jl	.LBB0_10
# %bb.11:                               # %for.end26.loopexit
	jmp	.LBB0_12
.LBB0_12:                               # %for.end26
	movl	$10, %edi
	callq	putchar@PLT
	movq	296(%rsp), %rsi                 # 8-byte Reload
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	movsd	.LCPI0_9(%rip), %xmm1           # xmm1 = mem[0],zero
	movsd	.LCPI0_10(%rip), %xmm3          # xmm3 = mem[0],zero
	leaq	316(%rsp), %rdi
	movaps	%xmm2, %xmm0
	callq	SolveCubic@PLT
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	cmpl	$0, 316(%rsp)
	jle	.LBB0_16
# %bb.13:                               # %for.body32.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	jmp	.LBB0_14
.LBB0_14:                               # %for.body32
                                        # =>This Inner Loop Header: Depth=1
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	movsd	320(%rsp,%rax,8), %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movq	200(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movslq	316(%rsp), %rcx
	cmpq	%rcx, %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	jl	.LBB0_14
# %bb.15:                               # %for.end38.loopexit
	jmp	.LBB0_16
.LBB0_16:                               # %for.end38
	movl	$10, %edi
	callq	putchar@PLT
	movl	$1, %eax
	movl	%eax, 196(%rsp)                 # 4-byte Spill
.LBB0_17:                               # %for.cond43.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #         Child Loop BB0_20 Depth 4
                                        #           Child Loop BB0_22 Depth 5
	movl	196(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 180(%rsp)                 # 4-byte Spill
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, 184(%rsp)                # 8-byte Spill
	movl	$10, %eax
	movl	%eax, 192(%rsp)                 # 4-byte Spill
.LBB0_18:                               # %for.cond46.preheader
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
                                        #         Child Loop BB0_20 Depth 4
                                        #           Child Loop BB0_22 Depth 5
	movl	192(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 156(%rsp)                 # 4-byte Spill
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, 160(%rsp)                # 8-byte Spill
	movsd	.LCPI0_11(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 168(%rsp)                # 8-byte Spill
.LBB0_19:                               # %for.cond49.preheader
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_20 Depth 4
                                        #           Child Loop BB0_22 Depth 5
	movsd	168(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 144(%rsp)                # 8-byte Spill
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movl	%eax, 152(%rsp)                 # 4-byte Spill
.LBB0_20:                               # %for.body51
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_22 Depth 5
	movq	296(%rsp), %rsi                 # 8-byte Reload
	movsd	144(%rsp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	160(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	184(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	152(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 140(%rsp)                 # 4-byte Spill
	cvtsi2sd	%eax, %xmm3
	leaq	316(%rsp), %rdi
	callq	SolveCubic@PLT
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	cmpl	$0, 316(%rsp)
	jle	.LBB0_24
# %bb.21:                               # %for.body56.preheader
                                        #   in Loop: Header=BB0_20 Depth=4
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	jmp	.LBB0_22
.LBB0_22:                               # %for.body56
                                        #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_20 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movsd	320(%rsp,%rax,8), %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str.2, %rdi
	movb	$1, %al
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movq	112(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movslq	316(%rsp), %rcx
	cmpq	%rcx, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	jl	.LBB0_22
# %bb.23:                               # %for.end62.loopexit
                                        #   in Loop: Header=BB0_20 Depth=4
	jmp	.LBB0_24
.LBB0_24:                               # %for.end62
                                        #   in Loop: Header=BB0_20 Depth=4
	movl	$10, %edi
	callq	putchar@PLT
                                        # kill: def $ecx killed $eax
	movl	140(%rsp), %eax                 # 4-byte Reload
	addl	$-1, %eax
	cmpl	$-11, %eax
	movl	%eax, 152(%rsp)                 # 4-byte Spill
	jg	.LBB0_20
# %bb.25:                               # %for.inc66
                                        #   in Loop: Header=BB0_19 Depth=3
	movsd	144(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_13(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_12(%rip), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	%xmm0, 168(%rsp)                # 8-byte Spill
	ja	.LBB0_19
# %bb.26:                               # %for.inc68
                                        #   in Loop: Header=BB0_18 Depth=2
	movl	156(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %eax
	addl	$-1, %eax
	cmpl	$1, %ecx
	movl	%eax, 192(%rsp)                 # 4-byte Spill
	jg	.LBB0_18
# %bb.27:                               # %for.inc71
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	180(%rsp), %eax                 # 4-byte Reload
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, 196(%rsp)                 # 4-byte Spill
	jne	.LBB0_17
# %bb.28:                               # %for.end73
	movabsq	$.Lstr.11, %rdi
	callq	puts@PLT
	leaq	304(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
.LBB0_29:                               # %for.body77
                                        # =>This Inner Loop Header: Depth=1
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	leaq	304(%rsp), %rsi
	callq	usqrt@PLT
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	(%rcx), %edx
	movl	%eax, %esi
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movq	80(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	cmpq	$1001, %rax                     # imm = 0x3E9
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jne	.LBB0_29
# %bb.30:                               # %for.end81
	movl	$1072497001, %edi               # imm = 0x3FED0169
	leaq	304(%rsp), %rsi
	callq	usqrt@PLT
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %edx
	movabsq	$.L.str.6, %rdi
	movl	$1072497001, %esi               # imm = 0x3FED0169
	movb	$0, %al
	callq	printf@PLT
	movabsq	$.Lstr.12, %rdi
	callq	puts@PLT
	xorl	%eax, %eax
	movl	%eax, 76(%rsp)                  # 4-byte Spill
.LBB0_31:                               # %for.body88
                                        # =>This Inner Loop Header: Depth=1
	movl	76(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI0_15(%rip), %xmm2          # xmm2 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 48(%rsp)                 # 8-byte Spill
	movsd	.LCPI0_14(%rip), %xmm2          # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 56(%rsp)                 # 8-byte Spill
	movabsq	$.L.str.8, %rdi
	movb	$2, %al
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movl	68(%rsp), %eax                  # 4-byte Reload
	addl	$1, %eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	cmpl	$361, %eax                      # imm = 0x169
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	jne	.LBB0_31
# %bb.32:                               # %for.end94
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	puts@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)                 # 8-byte Spill
.LBB0_33:                               # %for.body103
                                        # =>This Inner Loop Header: Depth=1
	movsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	movsd	.LCPI0_14(%rip), %xmm2          # xmm2 = mem[0],zero
	movaps	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	movsd	.LCPI0_15(%rip), %xmm2          # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	movabsq	$.L.str.10, %rdi
	movb	$2, %al
	callq	printf@PLT
	movsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_17(%rip), %xmm1          # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movsd	.LCPI0_16(%rip), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	jae	.LBB0_33
# %bb.34:                               # %for.end114
	xorl	%eax, %eax
	addq	$344, %rsp                      # imm = 0x158
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Solutions:"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" %f"
	.size	.L.str.2, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"sqrt(%3d) = %2d\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nsqrt(%lX) = %X\n"
	.size	.L.str.6, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%3.0f degrees = %.12f radians\n"
	.size	.L.str.8, 31

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%.12f radians = %3.0f degrees\n"
	.size	.L.str.10, 31

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"********* CUBIC FUNCTIONS ***********"
	.size	.Lstr, 38

	.type	.Lstr.11,@object                # @str.11
	.p2align	4
.Lstr.11:
	.asciz	"********* INTEGER SQR ROOTS ***********"
	.size	.Lstr.11, 40

	.type	.Lstr.12,@object                # @str.12
	.p2align	4
.Lstr.12:
	.asciz	"********* ANGLE CONVERSION ***********"
	.size	.Lstr.12, 39

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym SolveCubic
	.addrsig_sym usqrt
	.addrsig_sym puts
	.addrsig_sym putchar
