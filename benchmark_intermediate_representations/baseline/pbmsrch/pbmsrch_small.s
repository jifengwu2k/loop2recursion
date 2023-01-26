	.text
	.file	"pbmsrch_small.ll"
	.globl	init_search                     # -- Begin function init_search
	.p2align	4, 0x90
	.type	init_search,@function
init_search:                            # @init_search
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 304
	movq	%rdi, 256(%rsp)                 # 8-byte Spill
	callq	strlen@PLT
	movq	%rax, %rcx
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	movq	%rax, len(%rip)
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0               # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 272(%rsp)                # 16-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	288(%rsp), %rax                 # 8-byte Reload
	movaps	272(%rsp), %xmm0                # 16-byte Reload
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rax,8)
	movdqa	%xmm0, table+16(,%rax,8)
	movq	%rax, %rcx
	orq	$4, %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$8, %rcx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$12, %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$16, %rcx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$20, %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$24, %rcx
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$28, %rcx
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	addq	$32, %rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	cmpq	$256, %rax                      # imm = 0x100
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	jne	.LBB0_1
# %bb.2:                                # %for.cond1.preheader
	movq	264(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.3:                                # %for.body3.preheader
	movq	264(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	andq	$3, %rcx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	je	.LBB0_7
# %bb.4:                                # %for.body3.prol.preheader
	movq	168(%rsp), %rax                 # 8-byte Reload
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_5:                                # %for.body3.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	256(%rsp), %rdx                 # 8-byte Reload
	movq	264(%rsp), %rsi                 # 8-byte Reload
	movq	%rax, %rdi
	xorq	$-1, %rdi
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	addq	%rdi, %rsi
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	movzbl	(%rdx,%rax), %edx
                                        # kill: def $rdx killed $edx
	movq	%rsi, table(,%rdx,8)
	addq	$1, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	addq	$-1, %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	cmpq	$0, %rcx
	movq	%rax, %rdx
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jne	.LBB0_5
# %bb.6:                                # %for.body3.preheader.split.loopexit
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 176(%rsp)                 # 8-byte Spill
.LBB0_7:                                # %for.body3.preheader.split
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	cmpq	$3, %rax
	jb	.LBB0_11
# %bb.8:                                # %for.body3.preheader.split.split
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB0_9
.LBB0_9:                                # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	264(%rsp), %rcx                 # 8-byte Reload
	movq	256(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rax, %rsi
	xorq	$-1, %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movzbl	(%rdx,%rax), %esi
                                        # kill: def $rsi killed $esi
	movq	%rdi, table(,%rsi,8)
	movq	$-2, %rsi
	subq	%rax, %rsi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movzbl	1(%rdx,%rax), %esi
                                        # kill: def $rsi killed $esi
	movq	%rdi, table(,%rsi,8)
	movq	$-3, %rsi
	subq	%rax, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movzbl	2(%rdx,%rax), %esi
                                        # kill: def $rsi killed $esi
	movq	%rdi, table(,%rsi,8)
	movq	$-4, %rdi
	subq	%rax, %rdi
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movzbl	3(%rdx,%rax), %edx
                                        # kill: def $rdx killed $edx
	movq	%rsi, table(,%rdx,8)
	addq	$4, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	cmpq	%rax, %rcx
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	ja	.LBB0_9
# %bb.10:                               # %for.end9.loopexit.unr-lcssa
	jmp	.LBB0_11
.LBB0_11:                               # %for.end9.loopexit
	jmp	.LBB0_12
.LBB0_12:                               # %for.end9
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	%rax, findme
	addq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	init_search, .Lfunc_end0-init_search
	.cfi_endproc
                                        # -- End function
	.globl	strsearch                       # -- Begin function strsearch
	.p2align	4, 0x90
	.type	strsearch,@function
strsearch:                              # @strsearch
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	movq	len, %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	addq	$-1, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	callq	strlen@PLT
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rdx, %rcx
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	jae	.LBB1_12
# %bb.1:                                # %while.cond1.preheader.lr.ph
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	findme, %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
                                        # implicit-def: $rcx
	movq	%rax, 136(%rsp)                 # 8-byte Spill
.LBB1_2:                                # %while.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movq	104(%rsp), %rdx                 # 8-byte Reload
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	cmpq	%rcx, %rax
	jae	.LBB1_6
# %bb.3:                                # %land.end.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %while.cond1
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	168(%rsp), %rdx                 # 8-byte Reload
	cmpq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jae	.LBB1_9
.LBB1_5:                                # %land.end
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rcx,%rax), %ecx
                                        # kill: def $rcx killed $ecx
	movq	table(,%rcx,8), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	cmpq	$0, %rcx
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	je	.LBB1_7
	jmp	.LBB1_4
.LBB1_6:                                # %while.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	cmpq	$0, %rax
	movq	%rcx, %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	je	.LBB1_8
	jmp	.LBB1_10
.LBB1_7:                                # %if.then.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB1_8:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movq	128(%rsp), %rdi                 # 8-byte Reload
	movq	144(%rsp), %rsi                 # 8-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	subq	%rdx, %rax
	addq	%rax, %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	callq	strncmp@PLT
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	%eax, %esi
	movq	16(%rsp), %rax                  # 8-byte Reload
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpl	$0, %esi
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	je	.LBB1_11
	jmp	.LBB1_10
.LBB1_9:                                # %while.cond.backedge.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, 48(%rsp)                  # 8-byte Spill
.LBB1_10:                               # %while.cond.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	168(%rsp), %rsi                 # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	%rsi, %rcx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jb	.LBB1_2
.LBB1_11:                               # %cleanup.loopexit
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 176(%rsp)                 # 8-byte Spill
.LBB1_12:                               # %cleanup
	movq	176(%rsp), %rax                 # 8-byte Reload
	addq	$184, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	strsearch, .Lfunc_end1-strsearch
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$488, %rsp                      # imm = 0x1E8
	.cfi_def_cfa_offset 496
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	jmp	.LBB2_1
.LBB2_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
                                        #     Child Loop BB2_6 Depth 2
                                        #     Child Loop BB2_10 Depth 2
                                        #     Child Loop BB2_15 Depth 2
                                        #       Child Loop BB2_18 Depth 3
	movq	480(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 424(%rsp)                 # 8-byte Spill
	movq	.Lmain.find_strings(,%rax,8), %rdi
	movq	%rdi, 432(%rsp)                 # 8-byte Spill
	callq	strlen@PLT
	movq	%rax, %rcx
	movq	%rcx, 440(%rsp)                 # 8-byte Spill
	movq	%rax, len(%rip)
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0               # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 448(%rsp)                # 16-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 472(%rsp)                 # 8-byte Spill
.LBB2_2:                                # %vector.body
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	472(%rsp), %rax                 # 8-byte Reload
	movaps	448(%rsp), %xmm0                # 16-byte Reload
	movq	%rax, 352(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rax,8)
	movdqa	%xmm0, table+16(,%rax,8)
	movq	%rax, %rcx
	orq	$4, %rcx
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$8, %rcx
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$12, %rcx
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$16, %rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$20, %rcx
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$24, %rcx
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	movq	%rax, %rcx
	orq	$28, %rcx
	movq	%rcx, 408(%rsp)                 # 8-byte Spill
	movdqa	%xmm0, table(,%rcx,8)
	movdqa	%xmm0, table+16(,%rcx,8)
	addq	$32, %rax
	movq	%rax, 416(%rsp)                 # 8-byte Spill
	cmpq	$256, %rax                      # imm = 0x100
	movq	%rax, 472(%rsp)                 # 8-byte Spill
	jne	.LBB2_2
# %bb.3:                                # %for.cond1.preheader.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	440(%rsp), %rax                 # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB2_13
# %bb.4:                                # %for.body3.i.preheader
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	440(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	andq	$3, %rcx
	movq	%rcx, 336(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	je	.LBB2_8
# %bb.5:                                # %for.body3.i.prol.preheader
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	336(%rsp), %rax                 # 8-byte Reload
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	jmp	.LBB2_6
.LBB2_6:                                # %for.body3.i.prol
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movq	312(%rsp), %rax                 # 8-byte Reload
	movq	432(%rsp), %rdx                 # 8-byte Reload
	movq	440(%rsp), %rsi                 # 8-byte Reload
	movq	%rax, %rdi
	xorq	$-1, %rdi
	movq	%rdi, 272(%rsp)                 # 8-byte Spill
	addq	%rdi, %rsi
	movq	%rsi, 280(%rsp)                 # 8-byte Spill
	movzbl	(%rdx,%rax), %edx
                                        # kill: def $rdx killed $edx
	movq	%rsi, table(,%rdx,8)
	addq	$1, %rax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	addq	$-1, %rcx
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	cmpq	$0, %rcx
	movq	%rax, %rdx
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	jne	.LBB2_6
# %bb.7:                                # %for.body3.i.preheader.split.loopexit
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 344(%rsp)                 # 8-byte Spill
.LBB2_8:                                # %for.body3.i.preheader.split
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	328(%rsp), %rax                 # 8-byte Reload
	movq	344(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	cmpq	$3, %rax
	jb	.LBB2_12
# %bb.9:                                # %for.body3.i.preheader.split.split
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	264(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	jmp	.LBB2_10
.LBB2_10:                               # %for.body3.i
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	440(%rsp), %rcx                 # 8-byte Reload
	movq	432(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	xorq	$-1, %rsi
	movq	%rsi, 184(%rsp)                 # 8-byte Spill
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	movzbl	(%rdx,%rax), %esi
                                        # kill: def $rsi killed $esi
	movq	%rdi, table(,%rsi,8)
	movq	$-2, %rsi
	subq	%rax, %rsi
	movq	%rsi, 200(%rsp)                 # 8-byte Spill
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 208(%rsp)                 # 8-byte Spill
	movzbl	1(%rdx,%rax), %esi
                                        # kill: def $rsi killed $esi
	movq	%rdi, table(,%rsi,8)
	movq	$-3, %rsi
	subq	%rax, %rsi
	movq	%rsi, 216(%rsp)                 # 8-byte Spill
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 224(%rsp)                 # 8-byte Spill
	movzbl	2(%rdx,%rax), %esi
                                        # kill: def $rsi killed $esi
	movq	%rdi, table(,%rsi,8)
	movq	$-4, %rdi
	subq	%rax, %rdi
	movq	%rdi, 232(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, 240(%rsp)                 # 8-byte Spill
	movzbl	3(%rdx,%rax), %edx
                                        # kill: def $rdx killed $edx
	movq	%rsi, table(,%rdx,8)
	addq	$4, %rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	cmpq	%rcx, %rax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	jne	.LBB2_10
# %bb.11:                               # %init_search.exit.loopexit.unr-lcssa
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_12
.LBB2_12:                               # %init_search.exit.loopexit
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_13
.LBB2_13:                               # %init_search.exit
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	440(%rsp), %rax                 # 8-byte Reload
	movq	424(%rsp), %rcx                 # 8-byte Reload
	movq	432(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, findme
	movq	.Lmain.search_strings(,%rcx,8), %rdi
	movq	%rdi, 152(%rsp)                 # 8-byte Spill
	addq	$-1, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	callq	strlen@PLT
	movq	%rax, %rcx
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	cmpq	%rcx, %rax
	jae	.LBB2_25
# %bb.14:                               # %while.cond1.preheader.i.preheader
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	160(%rsp), %rax                 # 8-byte Reload
                                        # implicit-def: $rcx
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB2_15
.LBB2_15:                               # %while.cond1.preheader.i
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_18 Depth 3
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movq	120(%rsp), %rdx                 # 8-byte Reload
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	cmpq	%rcx, %rax
	jae	.LBB2_19
# %bb.16:                               # %land.end.i.preheader
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %while.cond1.i
                                        #   in Loop: Header=BB2_18 Depth=3
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	168(%rsp), %rdx                 # 8-byte Reload
	cmpq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jae	.LBB2_22
.LBB2_18:                               # %land.end.i
                                        #   Parent Loop BB2_1 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	112(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rcx,%rax), %ecx
                                        # kill: def $rcx killed $ecx
	movq	table(,%rcx,8), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdx
	addq	%rax, %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	cmpq	$0, %rcx
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	je	.LBB2_20
	jmp	.LBB2_17
.LBB2_19:                               # %while.end.i
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	cmpq	$0, %rax
	movq	%rcx, %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	je	.LBB2_21
	jmp	.LBB2_23
.LBB2_20:                               # %if.then.i.loopexit
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
.LBB2_21:                               # %if.then.i
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	440(%rsp), %rdx                 # 8-byte Reload
	movq	432(%rsp), %rdi                 # 8-byte Reload
	movq	152(%rsp), %rsi                 # 8-byte Reload
	movq	48(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	subq	%rdx, %rax
	addq	%rax, %rsi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	callq	strncmp@PLT
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	%eax, %esi
	movq	32(%rsp), %rax                  # 8-byte Reload
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpl	$0, %esi
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	je	.LBB2_26
	jmp	.LBB2_23
.LBB2_22:                               # %while.cond.backedge.i.loopexit
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 64(%rsp)                  # 8-byte Spill
.LBB2_23:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rdx, %rax
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jb	.LBB2_15
# %bb.24:                               # %strsearch.exit.thread.loopexit
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_25
.LBB2_25:                               # %strsearch.exit.thread
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	432(%rsp), %rsi                 # 8-byte Reload
	movabsq	$.L.str.104, %rdi
	movabsq	$.L.str.106, %rdx
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB2_28
.LBB2_26:                               # %strsearch.exit
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	432(%rsp), %rsi                 # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	cmpq	$0, %rdi
	setne	%al
	movb	%al, 23(%rsp)                   # 1-byte Spill
	movabsq	$.L.str.106, %rdx
	movabsq	$.L.str.105, %rax
	cmpq	$0, %rdi
	cmovneq	%rax, %rdx
	movabsq	$.L.str.104, %rdi
	movb	$0, %al
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movb	23(%rsp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_27
	jmp	.LBB2_28
.LBB2_27:                               # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movabsq	$.L.str.107, %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB2_28:                               # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movl	$10, %edi
	callq	_IO_putc@PLT
                                        # kill: def $ecx killed $eax
	movq	424(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	cmpq	$57, %rax
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	jne	.LBB2_1
# %bb.29:                               # %for.end
	xorl	%eax, %eax
	addq	$488, %rsp                      # imm = 0x1E8
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	len,@object                     # @len
	.local	len
	.comm	len,8,8
	.type	table,@object                   # @table
	.local	table
	.comm	table,2048,16
	.type	findme,@object                  # @findme
	.local	findme
	.comm	findme,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abb"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"you"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"not"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"it"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"dad"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"yoo"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"hoo"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"oo"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"oh"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"xx"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"x"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"field"
	.size	.L.str.11, 6

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"new"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"row"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"regime"
	.size	.L.str.14, 7

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"boom"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"that"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"impact"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"and"
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"zoom"
	.size	.L.str.19, 5

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"texture"
	.size	.L.str.20, 8

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"magnet"
	.size	.L.str.21, 7

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"doom"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"loom"
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"freq"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"current"
	.size	.L.str.25, 8

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"phase"
	.size	.L.str.26, 6

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"images"
	.size	.L.str.27, 7

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"appears"
	.size	.L.str.28, 8

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"conductor"
	.size	.L.str.29, 10

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"wavez"
	.size	.L.str.30, 6

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"normal"
	.size	.L.str.31, 7

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"free"
	.size	.L.str.32, 5

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"termed"
	.size	.L.str.33, 7

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"provide"
	.size	.L.str.34, 8

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"for"
	.size	.L.str.35, 4

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"struct"
	.size	.L.str.36, 7

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"about"
	.size	.L.str.37, 6

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"have"
	.size	.L.str.38, 5

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"proper"
	.size	.L.str.39, 7

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"involve"
	.size	.L.str.40, 8

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"describedly"
	.size	.L.str.41, 12

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"thats"
	.size	.L.str.42, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"spaces"
	.size	.L.str.43, 7

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"circumstance"
	.size	.L.str.44, 13

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"the"
	.size	.L.str.45, 4

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"member"
	.size	.L.str.46, 7

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"such"
	.size	.L.str.47, 5

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"guide"
	.size	.L.str.48, 6

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"regard"
	.size	.L.str.49, 7

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"officers"
	.size	.L.str.50, 9

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"implement"
	.size	.L.str.51, 10

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"principalities"
	.size	.L.str.52, 15

	.type	.Lmain.find_strings,@object     # @main.find_strings
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.find_strings:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.26
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.18
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	0
	.size	.Lmain.find_strings, 464

	.type	.L.str.53,@object               # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"cabbie"
	.size	.L.str.53, 7

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"your"
	.size	.L.str.54, 5

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"It isn't here"
	.size	.L.str.55, 14

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"But it is here"
	.size	.L.str.56, 15

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"hodad"
	.size	.L.str.57, 6

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"yoohoo"
	.size	.L.str.58, 7

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"."
	.size	.L.str.59, 2

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"In recent years, the field of photonic "
	.size	.L.str.60, 40

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"crystals has found new"
	.size	.L.str.61, 23

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"applications in the RF and microwave"
	.size	.L.str.62, 37

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"regime. A new type of metallic"
	.size	.L.str.63, 31

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"electromagnetic crystal has been"
	.size	.L.str.64, 33

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"developed that is having a"
	.size	.L.str.65, 27

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"significant impact on the field of"
	.size	.L.str.66, 35

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"antennas. It consists of a"
	.size	.L.str.67, 27

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"conductive surface, covered with a"
	.size	.L.str.68, 35

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"special texture which alters its"
	.size	.L.str.69, 33

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"electromagnetic properties. Made of solid"
	.size	.L.str.70, 42

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"metal, the structure"
	.size	.L.str.71, 21

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"conducts DC currents, but over a"
	.size	.L.str.72, 33

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"particular frequency range it does"
	.size	.L.str.73, 35

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"not conduct AC currents. It does not"
	.size	.L.str.74, 37

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"reverse the phase of reflected"
	.size	.L.str.75, 31

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"waves, and the effective image currents"
	.size	.L.str.76, 40

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"appear in-phase, rather than"
	.size	.L.str.77, 29

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"out-of-phase as they are on normal"
	.size	.L.str.78, 35

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"conductors. Furthermore, surface"
	.size	.L.str.79, 33

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"waves do not propagate, and instead"
	.size	.L.str.80, 36

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"radiate efficiently into free"
	.size	.L.str.81, 30

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"space. This new material, termed a"
	.size	.L.str.82, 35

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"high-impedance surface, provides"
	.size	.L.str.83, 33

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"a useful new ground plane for novel"
	.size	.L.str.84, 36

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"low-profile antennas and other"
	.size	.L.str.85, 31

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"electromagnetic structures."
	.size	.L.str.86, 28

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"The recent protests about the Michigamua"
	.size	.L.str.87, 41

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"student organization have raised an"
	.size	.L.str.88, 36

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"important question as to the proper nature"
	.size	.L.str.89, 43

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"and scope of University involvement"
	.size	.L.str.90, 36

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"with student organizations. Accordingly"
	.size	.L.str.91, 40

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"the panel described in my Statement of"
	.size	.L.str.92, 39

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"February 25, 2000 that is considering the"
	.size	.L.str.93, 42

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"question of privileged space also will"
	.size	.L.str.94, 39

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"consider under what circumstances and in"
	.size	.L.str.95, 41

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"what ways the University, its"
	.size	.L.str.96, 30

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"administrators and faculty members should"
	.size	.L.str.97, 42

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"be associated with such organizations"
	.size	.L.str.98, 38

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"and it will recommend guiding principles"
	.size	.L.str.99, 41

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"in this regard. The University's"
	.size	.L.str.100, 33

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Executive Officers and I will then decide"
	.size	.L.str.101, 42

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"whether and how to implement such"
	.size	.L.str.102, 34

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"principles."
	.size	.L.str.103, 12

	.type	.Lmain.search_strings,@object   # @main.search_strings
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.search_strings:
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.58
	.quad	.L.str.58
	.quad	.L.str.58
	.quad	.L.str.58
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.size	.Lmain.search_strings, 456

	.type	.L.str.104,@object              # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"\"%s\" is%s in \"%s\""
	.size	.L.str.104, 18

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.zero	1
	.size	.L.str.105, 1

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	" not"
	.size	.L.str.106, 5

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	" [\"%s\"]"
	.size	.L.str.107, 8

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym strncmp
	.addrsig_sym printf
	.addrsig_sym _IO_putc
	.addrsig_sym stdout
