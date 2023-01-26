	.text
	.file	"bmhsrch.ll"
	.globl	bmh_init                        # -- Begin function bmh_init
	.p2align	4, 0x90
	.type	bmh_init,@function
bmh_init:                               # @bmh_init
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 304
	movq	%rdi, 248(%rsp)                 # 8-byte Spill
	movq	%rdi, pat(%rip)
	callq	strlen@PLT
	movq	%rax, %rcx
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 268(%rsp)                 # 4-byte Spill
	movl	%eax, patlen(%rip)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 272(%rsp)                # 16-byte Spill
# %bb.1:                                # %vector.body
	movl	268(%rsp), %eax                 # 4-byte Reload
	movaps	272(%rsp), %xmm0                # 16-byte Reload
	movdqa	%xmm0, skip
	movdqa	%xmm0, skip+16
	movdqa	%xmm0, skip+32
	movdqa	%xmm0, skip+48
	movdqa	%xmm0, skip+64
	movdqa	%xmm0, skip+80
	movdqa	%xmm0, skip+96
	movdqa	%xmm0, skip+112
	movdqa	%xmm0, skip+128
	movdqa	%xmm0, skip+144
	movdqa	%xmm0, skip+160
	movdqa	%xmm0, skip+176
	movdqa	%xmm0, skip+192
	movdqa	%xmm0, skip+208
	movdqa	%xmm0, skip+224
	movdqa	%xmm0, skip+240
	movdqa	%xmm0, skip+256
	movdqa	%xmm0, skip+272
	movdqa	%xmm0, skip+288
	movdqa	%xmm0, skip+304
	movdqa	%xmm0, skip+320
	movdqa	%xmm0, skip+336
	movdqa	%xmm0, skip+352
	movdqa	%xmm0, skip+368
	movdqa	%xmm0, skip+384
	movdqa	%xmm0, skip+400
	movdqa	%xmm0, skip+416
	movdqa	%xmm0, skip+432
	movdqa	%xmm0, skip+448
	movdqa	%xmm0, skip+464
	movdqa	%xmm0, skip+480
	movdqa	%xmm0, skip+496
	movdqa	%xmm0, skip+512
	movdqa	%xmm0, skip+528
	movdqa	%xmm0, skip+544
	movdqa	%xmm0, skip+560
	movdqa	%xmm0, skip+576
	movdqa	%xmm0, skip+592
	movdqa	%xmm0, skip+608
	movdqa	%xmm0, skip+624
	movdqa	%xmm0, skip+640
	movdqa	%xmm0, skip+656
	movdqa	%xmm0, skip+672
	movdqa	%xmm0, skip+688
	movdqa	%xmm0, skip+704
	movdqa	%xmm0, skip+720
	movdqa	%xmm0, skip+736
	movdqa	%xmm0, skip+752
	movdqa	%xmm0, skip+768
	movdqa	%xmm0, skip+784
	movdqa	%xmm0, skip+800
	movdqa	%xmm0, skip+816
	movdqa	%xmm0, skip+832
	movdqa	%xmm0, skip+848
	movdqa	%xmm0, skip+864
	movdqa	%xmm0, skip+880
	movdqa	%xmm0, skip+896
	movdqa	%xmm0, skip+912
	movdqa	%xmm0, skip+928
	movdqa	%xmm0, skip+944
	movdqa	%xmm0, skip+960
	movdqa	%xmm0, skip+976
	movdqa	%xmm0, skip+992
	movdqa	%xmm0, skip+1008
	cmpl	$0, %eax
	jle	.LBB0_11
# %bb.2:                                # %for.body5.lr.ph
	movq	256(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	shlq	$32, %rax
	sarq	$32, %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	shlq	$32, %rcx
	sarq	$32, %rcx
	movq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	andq	$3, %rcx
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	je	.LBB0_6
# %bb.3:                                # %for.body5.prol.preheader
	movq	232(%rsp), %rax                 # 8-byte Reload
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	jmp	.LBB0_4
.LBB0_4:                                # %for.body5.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	248(%rsp), %rdx                 # 8-byte Reload
	movl	268(%rsp), %esi                 # 4-byte Reload
	movabsq	$4294967295, %r8                # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	xorq	%r8, %rdi
	movq	%rdi, 160(%rsp)                 # 8-byte Spill
	addl	%edi, %esi
	movl	%esi, 172(%rsp)                 # 4-byte Spill
	movzbl	(%rdx,%rax), %edx
                                        # kill: def $rdx killed $edx
	movl	%esi, skip(,%rdx,4)
	addq	$1, %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	addq	$-1, %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	cmpq	$0, %rcx
	movq	%rax, %rdx
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	jne	.LBB0_4
# %bb.5:                                # %for.body5.lr.ph.split.loopexit
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 240(%rsp)                 # 8-byte Spill
.LBB0_6:                                # %for.body5.lr.ph.split
	movq	224(%rsp), %rax                 # 8-byte Reload
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	cmpq	$3, %rax
	jb	.LBB0_10
# %bb.7:                                # %for.body5.lr.ph.split.split
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB0_8
.LBB0_8:                                # %for.body5
                                        # =>This Inner Loop Header: Depth=1
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	248(%rsp), %rdx                 # 8-byte Reload
	movl	268(%rsp), %esi                 # 4-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movabsq	$4294967295, %r8                # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	xorq	%r8, %rdi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	movl	%esi, %r8d
	addl	%edi, %r8d
	movl	%r8d, 60(%rsp)                  # 4-byte Spill
	movzbl	(%rdx,%rax), %edi
                                        # kill: def $rdi killed $edi
	movl	%r8d, skip(,%rdi,4)
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movabsq	$4294967295, %r8                # imm = 0xFFFFFFFF
	xorq	%r8, %rdi
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	movl	%esi, %r8d
	addl	%edi, %r8d
	movl	%r8d, 84(%rsp)                  # 4-byte Spill
	movzbl	1(%rdx,%rax), %edi
                                        # kill: def $rdi killed $edi
	movl	%r8d, skip(,%rdi,4)
	movq	%rax, %rdi
	addq	$2, %rdi
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	movabsq	$4294967295, %r8                # imm = 0xFFFFFFFF
	xorq	%r8, %rdi
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movl	%esi, %r8d
	addl	%edi, %r8d
	movl	%r8d, 108(%rsp)                 # 4-byte Spill
	movzbl	2(%rdx,%rax), %edi
                                        # kill: def $rdi killed $edi
	movl	%r8d, skip(,%rdi,4)
	movq	%rax, %rdi
	addq	$3, %rdi
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	movabsq	$4294967295, %r8                # imm = 0xFFFFFFFF
	xorq	%r8, %rdi
	movq	%rdi, 120(%rsp)                 # 8-byte Spill
	addl	%edi, %esi
	movl	%esi, 132(%rsp)                 # 4-byte Spill
	movzbl	3(%rdx,%rax), %edx
                                        # kill: def $rdx killed $edx
	movl	%esi, skip(,%rdx,4)
	addq	$4, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	cmpq	%rax, %rcx
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jg	.LBB0_8
# %bb.9:                                # %for.end13.loopexit.unr-lcssa
	jmp	.LBB0_10
.LBB0_10:                               # %for.end13.loopexit
	jmp	.LBB0_11
.LBB0_11:                               # %for.end13
	movl	268(%rsp), %eax                 # 4-byte Reload
	movq	248(%rsp), %rcx                 # 8-byte Reload
	movq	256(%rsp), %rdx                 # 8-byte Reload
	shlq	$32, %rdx
	movabsq	$-4294967296, %rsi              # imm = 0xFFFFFFFF00000000
	addq	%rsi, %rdx
	sarq	$32, %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movb	(%rcx,%rdx), %cl
	movb	%cl, 39(%rsp)                   # 1-byte Spill
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	movl	$32767, skip(,%rcx,4)           # imm = 0x7FFF
	movl	%eax, skip2
	cmpl	$1, %eax
	jle	.LBB0_17
# %bb.12:                               # %for.body24.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB0_13
.LBB0_13:                               # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	movq	248(%rsp), %rax                 # 8-byte Reload
	movb	39(%rsp), %dl                   # 1-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	cmpb	%dl, (%rax,%rcx)
	jne	.LBB0_15
# %bb.14:                               # %if.then
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	268(%rsp), %eax                 # 4-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movabsq	$4294967295, %rdx               # imm = 0xFFFFFFFF
	xorq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%ecx, %eax
	movl	%eax, skip2
.LBB0_15:                               # %for.inc32
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$1, %rax
	cmpq	%rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jl	.LBB0_13
# %bb.16:                               # %for.end34.loopexit
	jmp	.LBB0_17
.LBB0_17:                               # %for.end34
	addq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bmh_init, .Lfunc_end0-bmh_init
	.cfi_endproc
                                        # -- End function
	.globl	bmh_search                      # -- Begin function bmh_search
	.p2align	4, 0x90
	.type	bmh_search,@function
bmh_search:                             # @bmh_search
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	movl	%esi, -4(%rsp)                  # 4-byte Spill
	movl	patlen, %ecx
	movl	%ecx, (%rsp)                    # 4-byte Spill
	xorl	$-1, %esi
	addl	%esi, %ecx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpl	$-1, %ecx
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jg	.LBB1_11
# %bb.1:                                # %if.end
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	(%rsp), %ecx                    # 4-byte Reload
	movl	-4(%rsp), %esi                  # 4-byte Reload
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movl	$32767, %edx                    # imm = 0x7FFF
	subl	%esi, %edx
	movl	%edx, -56(%rsp)                 # 4-byte Spill
	addl	$-1, %ecx
	movl	%ecx, -52(%rsp)                 # 4-byte Spill
	movq	pat, %rdx
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movl	skip2, %edx
	movl	%edx, -36(%rsp)                 # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	%eax, -20(%rsp)                 # 4-byte Spill
.LBB1_2:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	movl	-20(%rsp), %eax                 # 4-byte Reload
	movslq	%eax, %rdx
	movzbl	(%rcx,%rdx), %ecx
                                        # kill: def $rcx killed $ecx
	addl	skip(,%rcx,4), %eax
	movl	%eax, -72(%rsp)                 # 4-byte Spill
	cmpl	$0, %eax
	movl	%eax, -68(%rsp)                 # 4-byte Spill
	jge	.LBB1_4
.LBB1_3:                                # %while.cond.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-68(%rsp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rsp)                 # 4-byte Spill
	jmp	.LBB1_2
.LBB1_4:                                # %while.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-72(%rsp), %eax                 # 4-byte Reload
	movl	-56(%rsp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB1_10
# %bb.5:                                # %if.end8
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-52(%rsp), %eax                 # 4-byte Reload
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movl	-72(%rsp), %esi                 # 4-byte Reload
	addl	$-32767, %esi                   # imm = 0x8001
	movl	%esi, -100(%rsp)                # 4-byte Spill
	subl	%eax, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movl	%eax, -76(%rsp)                 # 4-byte Spill
.LBB1_6:                                # %while.cond14
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movq	-88(%rsp), %rcx                 # 8-byte Reload
	movl	-76(%rsp), %edx                 # 4-byte Reload
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	addl	$-1, %edx
	movl	%edx, -116(%rsp)                # 4-byte Spill
	cmpq	$0, %rcx
	movq	%rax, -112(%rsp)                # 8-byte Spill
	jle	.LBB1_9
# %bb.7:                                # %land.rhs
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-116(%rsp), %eax                # 4-byte Reload
	movq	-128(%rsp), %rcx                # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movslq	%eax, %rdi
	movsbl	(%rdx,%rdi), %edx
	movzbl	(%rsi,%rdi), %esi
	addq	$-1, %rcx
	cmpl	%esi, %edx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movl	%eax, -76(%rsp)                 # 4-byte Spill
	je	.LBB1_6
# %bb.8:                                # %if.end28
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-100(%rsp), %ecx                # 4-byte Reload
	movl	-36(%rsp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	cmpl	$-1, %eax
	movl	%eax, -68(%rsp)                 # 4-byte Spill
	jg	.LBB1_10
	jmp	.LBB1_3
.LBB1_9:                                # %cleanup.loopexit
	movq	-112(%rsp), %rax                # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cleanup.loopexit59
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_11
.LBB1_11:                               # %cleanup
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	bmh_search, .Lfunc_end1-bmh_search
	.cfi_endproc
                                        # -- End function
	.type	pat,@object                     # @pat
	.local	pat
	.comm	pat,8,8
	.type	patlen,@object                  # @patlen
	.local	patlen
	.comm	patlen,4,4
	.type	skip,@object                    # @skip
	.local	skip
	.comm	skip,1024,16
	.type	skip2,@object                   # @skip2
	.local	skip2
	.comm	skip2,4,4
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
