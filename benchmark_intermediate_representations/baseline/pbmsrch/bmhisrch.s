	.text
	.file	"bmhisrch.ll"
	.globl	bmhi_init                       # -- Begin function bmhi_init
	.p2align	4, 0x90
	.type	bmhi_init,@function
bmhi_init:                              # @bmhi_init
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 304
	movq	%rdi, 288(%rsp)                 # 8-byte Spill
	callq	strlen@PLT
	movq	%rax, %rsi
	movl	%esi, %eax
	movl	%eax, patlen
	movq	pat, %rdi
	shlq	$32, %rsi
	sarq	$32, %rsi
	callq	realloc@PLT
	movq	%rax, pat
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movl	$1, %edi
	callq	exit@PLT
.LBB0_2:                                # %if.else
	movq	bhmi_cleanup@GOTPCREL(%rip), %rdi
	callq	atexit@PLT
	movl	patlen, %eax
	movl	%eax, 284(%rsp)                 # 4-byte Spill
	cmpl	$0, %eax
	jg	.LBB0_7
	jmp	.LBB0_5
.LBB0_3:                                # %vector.ph.loopexit.unr-lcssa
	jmp	.LBB0_4
.LBB0_4:                                # %vector.ph.loopexit
	jmp	.LBB0_5
.LBB0_5:                                # %vector.ph
	movl	284(%rsp), %eax                 # 4-byte Reload
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)                # 16-byte Spill
# %bb.6:                                # %vector.body
	movl	284(%rsp), %eax                 # 4-byte Reload
	movaps	256(%rsp), %xmm0                # 16-byte Reload
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
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, 240(%rsp)                 # 4-byte Spill
	cmpl	$1, %eax
	setg	%al
	movb	%al, 247(%rsp)                  # 1-byte Spill
	movq	pat, %rcx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB0_15
	jmp	.LBB0_14
.LBB0_7:                                # %for.body.lr.ph
	callq	__ctype_toupper_loc@PLT
	movq	%rax, %rcx
	movl	284(%rsp), %eax                 # 4-byte Reload
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	pat, %rcx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movslq	%eax, %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movslq	%eax, %rcx
	movq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	andq	$3, %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	je	.LBB0_11
# %bb.8:                                # %for.body.prol.preheader
	movq	224(%rsp), %rax                 # 8-byte Reload
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	jmp	.LBB0_9
.LBB0_9:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	184(%rsp), %rcx                 # 8-byte Reload
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	200(%rsp), %rdx                 # 8-byte Reload
	movq	192(%rsp), %rsi                 # 8-byte Reload
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movsbq	(%rdi,%rax), %rdi
	movq	(%rsi), %rsi
	movl	(%rsi,%rdi,4), %esi
                                        # kill: def $sil killed $sil killed $esi
	movb	%sil, (%rdx,%rax)
	addq	$1, %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	addq	$-1, %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	cmpq	$0, %rcx
	movq	%rax, %rdx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	jne	.LBB0_9
# %bb.10:                               # %for.body.lr.ph.split.loopexit
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 232(%rsp)                 # 8-byte Spill
.LBB0_11:                               # %for.body.lr.ph.split
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	cmpq	$3, %rax
	jb	.LBB0_4
# %bb.12:                               # %for.body.lr.ph.split.split
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB0_13
.LBB0_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	200(%rsp), %rdx                 # 8-byte Reload
	movq	192(%rsp), %rsi                 # 8-byte Reload
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movsbq	(%rdi,%rax), %r9
	movq	(%rsi), %r8
	movl	(%r8,%r9,4), %r8d
                                        # kill: def $r8b killed $r8b killed $r8d
	movb	%r8b, (%rdx,%rax)
	movsbq	1(%rdi,%rax), %r9
	movq	(%rsi), %r8
	movl	(%r8,%r9,4), %r8d
                                        # kill: def $r8b killed $r8b killed $r8d
	movb	%r8b, 1(%rdx,%rax)
	movsbq	2(%rdi,%rax), %r9
	movq	(%rsi), %r8
	movl	(%r8,%r9,4), %r8d
                                        # kill: def $r8b killed $r8b killed $r8d
	movb	%r8b, 2(%rdx,%rax)
	movsbq	3(%rdi,%rax), %rdi
	movq	(%rsi), %rsi
	movl	(%rsi,%rdi,4), %esi
                                        # kill: def $sil killed $sil killed $esi
	movb	%sil, 3(%rdx,%rax)
	addq	$4, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	cmpq	%rcx, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jl	.LBB0_13
	jmp	.LBB0_3
.LBB0_14:                               # %for.cond21.preheader.for.end46_crit_edge
	movl	240(%rsp), %eax                 # 4-byte Reload
	cltq
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB0_18
.LBB0_15:                               # %for.body24.lr.ph
	callq	__ctype_tolower_loc@PLT
	movq	%rax, %rcx
	movl	240(%rsp), %eax                 # 4-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	cltq
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	movl	%eax, 108(%rsp)                 # 4-byte Spill
.LBB0_16:                               # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	movl	108(%rsp), %ecx                 # 4-byte Reload
	movl	104(%rsp), %edi                 # 4-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	248(%rsp), %r8                  # 8-byte Reload
	movl	284(%rsp), %r9d                 # 4-byte Reload
	addl	$-1, %edi
	movl	%edi, 56(%rsp)                  # 4-byte Spill
	addl	%r9d, %edi
	movl	%edi, 60(%rsp)                  # 4-byte Spill
	movzbl	(%r8,%rdx), %r8d
                                        # kill: def $r8 killed $r8d
	movl	%edi, skip(,%r8,4)
	movslq	(%rax,%r8,4), %rax
	movl	%edi, skip(,%rax,4)
	addq	$1, %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	xorl	$-1, %ecx
	movl	%ecx, 76(%rsp)                  # 4-byte Spill
	cmpq	%rsi, %rdx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	movl	%eax, 108(%rsp)                 # 4-byte Spill
	jl	.LBB0_16
# %bb.17:                               # %for.end46.loopexit
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB0_18
.LBB0_18:                               # %for.end46
	movq	248(%rsp), %rax                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movb	(%rax,%rcx), %cl
	movb	%cl, 39(%rsp)                   # 1-byte Spill
	movzbl	%cl, %eax
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movl	$32767, skip(,%rcx,4)           # imm = 0x7FFF
	movl	%eax, %ecx
	addl	$128, %ecx
	cmpl	$384, %ecx                      # imm = 0x180
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	jae	.LBB0_20
# %bb.19:                               # %cond.true.i
	callq	__ctype_tolower_loc@PLT
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 52(%rsp)                  # 4-byte Spill
.LBB0_20:                               # %tolower.exit
	movb	247(%rsp), %al                  # 1-byte Reload
	movl	284(%rsp), %ecx                 # 4-byte Reload
	movl	52(%rsp), %edx                  # 4-byte Reload
	movslq	%edx, %rdx
	movl	$32767, skip(,%rdx,4)           # imm = 0x7FFF
	movl	%ecx, skip2
	testb	$1, %al
	jne	.LBB0_21
	jmp	.LBB0_26
.LBB0_21:                               # %for.body63.preheader
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB0_22
.LBB0_22:                               # %for.body63
                                        # =>This Inner Loop Header: Depth=1
	movq	248(%rsp), %rax                 # 8-byte Reload
	movb	39(%rsp), %dl                   # 1-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	cmpb	%dl, (%rax,%rcx)
	jne	.LBB0_24
# %bb.23:                               # %if.then69
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	284(%rsp), %eax                 # 4-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movabsq	$4294967295, %rdx               # imm = 0xFFFFFFFF
	xorq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%ecx, %eax
	movl	%eax, skip2
.LBB0_24:                               # %for.inc73
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$1, %rax
	cmpq	%rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jl	.LBB0_22
# %bb.25:                               # %for.end75.loopexit
	jmp	.LBB0_26
.LBB0_26:                               # %for.end75
	addq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bmhi_init, .Lfunc_end0-bmhi_init
	.cfi_endproc
                                        # -- End function
	.globl	bhmi_cleanup                    # -- Begin function bhmi_cleanup
	.p2align	4, 0x90
	.type	bhmi_cleanup,@function
bhmi_cleanup:                           # @bhmi_cleanup
	.cfi_startproc
# %bb.0:                                # %entry
	movq	pat(%rip), %rdi
	jmp	free@PLT                        # TAILCALL
.Lfunc_end1:
	.size	bhmi_cleanup, .Lfunc_end1-bhmi_cleanup
	.cfi_endproc
                                        # -- End function
	.globl	bmhi_search                     # -- Begin function bmhi_search
	.p2align	4, 0x90
	.type	bmhi_search,@function
bmhi_search:                            # @bmhi_search
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	%rdi, 136(%rsp)                 # 8-byte Spill
	movl	%esi, 148(%rsp)                 # 4-byte Spill
	movl	patlen, %ecx
	movl	%ecx, 152(%rsp)                 # 4-byte Spill
	xorl	$-1, %esi
	addl	%esi, %ecx
	movl	%ecx, 156(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpl	$-1, %ecx
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	jg	.LBB2_11
# %bb.1:                                # %if.end
	movl	156(%rsp), %eax                 # 4-byte Reload
	movl	152(%rsp), %ecx                 # 4-byte Reload
	movl	148(%rsp), %esi                 # 4-byte Reload
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movl	$32767, %edx                    # imm = 0x7FFF
	subl	%esi, %edx
	movl	%edx, 96(%rsp)                  # 4-byte Spill
	addl	$-1, %ecx
	movl	%ecx, 100(%rsp)                 # 4-byte Spill
	movq	pat, %rdx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movl	skip2, %edx
	movl	%edx, 116(%rsp)                 # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movl	%eax, 132(%rsp)                 # 4-byte Spill
.LBB2_2:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movl	132(%rsp), %eax                 # 4-byte Reload
	movslq	%eax, %rdx
	movzbl	(%rcx,%rdx), %ecx
                                        # kill: def $rcx killed $ecx
	addl	skip(,%rcx,4), %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	cmpl	$0, %eax
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	jge	.LBB2_4
.LBB2_3:                                # %while.cond.backedge
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	84(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 132(%rsp)                 # 4-byte Spill
	jmp	.LBB2_2
.LBB2_4:                                # %while.end
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	80(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB2_10
# %bb.5:                                # %if.end8
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	100(%rsp), %eax                 # 4-byte Reload
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	88(%rsp), %rdx                  # 8-byte Reload
	movl	80(%rsp), %esi                  # 4-byte Reload
	addl	$-32767, %esi                   # imm = 0x8001
	movl	%esi, 52(%rsp)                  # 4-byte Spill
	subl	%eax, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%eax, 76(%rsp)                  # 4-byte Spill
.LBB2_6:                                # %while.cond14
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movl	76(%rsp), %edx                  # 4-byte Reload
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	addl	$-1, %edx
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	cmpq	$0, %rcx
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jle	.LBB2_9
# %bb.7:                                # %land.rhs
                                        #   in Loop: Header=BB2_6 Depth=2
	movl	36(%rsp), %ecx                  # 4-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movslq	%ecx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movsbq	(%rax,%rcx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	callq	__ctype_toupper_loc@PLT
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	104(%rsp), %rsi                 # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdx
	movl	36(%rsp), %eax                  # 4-byte Reload
	movq	(%rdx), %rdx
	movl	(%rdx,%r8,4), %edx
	movzbl	(%rsi,%rdi), %esi
	addq	$-1, %rcx
	cmpl	%esi, %edx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	je	.LBB2_6
# %bb.8:                                # %if.end30
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	52(%rsp), %ecx                  # 4-byte Reload
	movl	116(%rsp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	cmpl	$-1, %eax
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	jg	.LBB2_10
	jmp	.LBB2_3
.LBB2_9:                                # %cleanup.loopexit
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %cleanup.loopexit62
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	jmp	.LBB2_11
.LBB2_11:                               # %cleanup
	movq	160(%rsp), %rax                 # 8-byte Reload
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	bmhi_search, .Lfunc_end2-bmhi_search
	.cfi_endproc
                                        # -- End function
	.type	patlen,@object                  # @patlen
	.local	patlen
	.comm	patlen,4,4
	.type	pat,@object                     # @pat
	.local	pat
	.comm	pat,8,8
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
	.addrsig_sym realloc
	.addrsig_sym exit
	.addrsig_sym atexit
	.addrsig_sym bhmi_cleanup
	.addrsig_sym __ctype_toupper_loc
	.addrsig_sym __ctype_tolower_loc
	.addrsig_sym free
