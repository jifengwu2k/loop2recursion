	.text
	.file	"patricia.ll"
	.globl	pat_insert                      # -- Begin function pat_insert
	.p2align	4, 0x90
	.type	pat_insert,@function
pat_insert:                             # @pat_insert
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$408, %rsp                      # imm = 0x198
	.cfi_def_cfa_offset 416
	movq	%rdi, 384(%rsp)                 # 8-byte Spill
	movq	%rsi, 392(%rsp)                 # 8-byte Spill
	cmpq	$0, %rsi
	setne	%cl
	cmpq	$0, %rdi
	setne	%al
	andb	%cl, %al
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	testb	$1, %al
	movq	%rdi, 400(%rsp)                 # 8-byte Spill
	jne	.LBB0_1
	jmp	.LBB0_28
.LBB0_1:                                # %lor.lhs.false2
	movq	384(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	movq	8(%rax), %rcx
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 376(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	je	.LBB0_28
# %bb.2:                                # %if.end
	movq	392(%rsp), %rax                 # 8-byte Reload
	movq	384(%rsp), %rcx                 # 8-byte Reload
	movq	368(%rsp), %rdx                 # 8-byte Reload
	movq	(%rdx), %rdx
	andq	(%rcx), %rdx
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	movq	%rdx, (%rcx)
	movb	17(%rax), %cl
	movb	%cl, 350(%rsp)                  # 1-byte Spill
	movb	%cl, 351(%rsp)                  # 1-byte Spill
	movq	%rax, 352(%rsp)                 # 8-byte Spill
.LBB0_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	352(%rsp), %rcx                 # 8-byte Reload
	movb	351(%rsp), %dl                  # 1-byte Reload
	movq	336(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	movsbl	%dl, %esi
	movl	$31, %ecx
	subl	%esi, %ecx
	movl	%ecx, 276(%rsp)                 # 4-byte Spill
	movl	$1, %esi
                                        # kill: def $cl killed $ecx
	shll	%cl, %esi
	movq	280(%rsp), %rcx                 # 8-byte Reload
	movl	%esi, 292(%rsp)                 # 4-byte Spill
	movslq	%esi, %rsi
	andq	%rax, %rsi
	movq	%rsi, 296(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	addq	$24, %rcx
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	cmpq	$0, %rsi
	cmoveq	%rcx, %rax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	movq	(%rax), %rax
	movb	17(%rax), %cl
	cmpb	%cl, %dl
	movb	%cl, 351(%rsp)                  # 1-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	jl	.LBB0_3
# %bb.4:                                # %do.end
	movq	336(%rsp), %rax                 # 8-byte Reload
	movq	328(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	movq	(%rcx), %rcx
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	cmpq	%rcx, %rax
	je	.LBB0_6
# %bb.5:                                # %for.cond71.preheader
	movq	336(%rsp), %rcx                 # 8-byte Reload
	movq	264(%rsp), %rax                 # 8-byte Reload
	xorq	%rcx, %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movl	$1, %eax
	movl	%eax, 252(%rsp)                 # 4-byte Spill
	jmp	.LBB0_23
.LBB0_6:                                # %for.cond.preheader
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	movb	16(%rax), %al
	movb	%al, 231(%rsp)                  # 1-byte Spill
	movzbl	%al, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	cmpb	$0, %al
	je	.LBB0_12
# %bb.7:                                # %for.body.lr.ph
	movb	231(%rsp), %al                  # 1-byte Reload
	movq	256(%rsp), %rcx                 # 8-byte Reload
	movq	368(%rsp), %rdx                 # 8-byte Reload
	movq	(%rdx), %rdx
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %for.cond
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	200(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	jge	.LBB0_11
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	184(%rsp), %rcx                 # 8-byte Reload
	movq	192(%rsp), %rdx                 # 8-byte Reload
	movq	208(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, 176(%rsp)                 # 8-byte Spill
	cmpq	%rdx, %rcx
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	jne	.LBB0_8
# %bb.10:                               # %if.then26
	movq	376(%rsp), %rdi                 # 8-byte Reload
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	368(%rsp), %rcx                 # 8-byte Reload
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	8(%rcx), %rcx
	shlq	$4, %rdx
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rcx, (%rax)
	callq	free@PLT
	movq	384(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	jmp	.LBB0_28
.LBB0_11:                               # %for.end.loopexit
	jmp	.LBB0_12
.LBB0_12:                               # %for.end
	movq	232(%rsp), %rdi                 # 8-byte Reload
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	malloc@PLT
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	cmpb	$0, (%rcx)
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	je	.LBB0_21
# %bb.13:                               # %for.body43.lr.ph
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	368(%rsp), %rdx                 # 8-byte Reload
	movq	256(%rsp), %rcx                 # 8-byte Reload
	addq	$8, %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movl	%ecx, %edx
	movl	%edx, 128(%rsp)                 # 4-byte Spill
	movl	%ecx, 132(%rsp)                 # 4-byte Spill
	movq	%rax, 136(%rsp)                 # 8-byte Spill
.LBB0_14:                               # %for.body43
                                        # =>This Inner Loop Header: Depth=1
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movq	120(%rsp), %rax                 # 8-byte Reload
	movl	128(%rsp), %esi                 # 4-byte Reload
	movl	132(%rsp), %ecx                 # 4-byte Reload
	movq	136(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	movl	%esi, 92(%rsp)                  # 4-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	cmpq	(%rcx), %rax
	jbe	.LBB0_16
# %bb.15:                               # %if.then52
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movl	$16, %edx
	callq	bcopy@PLT
	movl	88(%rsp), %ecx                  # 4-byte Reload
	movl	92(%rsp), %eax                  # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	jmp	.LBB0_17
.LBB0_16:                               # %if.else
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	96(%rsp), %rdi                  # 8-byte Reload
	movl	$16, %edx
	callq	bcopy@PLT
	movq	360(%rsp), %rax                 # 8-byte Reload
	movl	88(%rsp), %ecx                  # 4-byte Reload
	movq	(%rax), %rax
	movl	$4294967295, %edx               # imm = 0xFFFFFFFF
	movq	%rdx, (%rax)
	movl	$1, %eax
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	movl	%eax, 76(%rsp)                  # 4-byte Spill
.LBB0_17:                               # %for.inc59
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	216(%rsp), %rsi                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	72(%rsp), %edx                  # 4-byte Reload
	movl	76(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movl	%edx, 44(%rsp)                  # 4-byte Spill
	addq	$16, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movzbl	(%rsi), %esi
	cmpl	%esi, %edx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	jge	.LBB0_19
# %bb.18:                               # %for.inc59.for.body43_crit_edge
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	44(%rsp), %ecx                  # 4-byte Reload
	movl	40(%rsp), %edx                  # 4-byte Reload
	movq	360(%rsp), %rsi                 # 8-byte Reload
	movq	(%rsi), %rsi
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	movl	%edx, 128(%rsp)                 # 4-byte Spill
	movl	%ecx, 132(%rsp)                 # 4-byte Spill
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB0_14
.LBB0_19:                               # %for.end60
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	68(%rsp), %ecx                  # 4-byte Reload
	cmpl	$0, %ecx
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	je	.LBB0_21
# %bb.20:                               # %for.end60.if.end64_crit_edge
	movq	360(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_22
.LBB0_21:                               # %if.then62
	movq	360(%rsp), %rax                 # 8-byte Reload
	movq	160(%rsp), %rsi                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	(%rax), %rdi
	movl	$16, %edx
	callq	bcopy@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB0_22:                               # %if.end64
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rdi
	callq	free@PLT
	movq	384(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	256(%rsp), %rax                 # 8-byte Reload
	movb	(%rcx), %dl
	addb	$1, %dl
	movb	%dl, (%rcx)
	movq	8(%rax), %rdi
	callq	free@PLT
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	jmp	.LBB0_28
.LBB0_23:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movl	252(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movl	$31, %ecx
	subl	%eax, %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movslq	%edx, %rdx
	andq	%rdx, %rcx
	cmpq	$0, %rcx
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	jne	.LBB0_25
# %bb.24:                               # %for.inc81
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	16(%rsp), %eax                  # 4-byte Reload
	addl	$1, %eax
	cmpl	$32, %eax
	movl	%eax, %ecx
	movl	%ecx, 252(%rsp)                 # 4-byte Spill
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	jl	.LBB0_23
.LBB0_25:                               # %for.end83
	movb	350(%rsp), %al                  # 1-byte Reload
	movl	20(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movsbl	%al, %eax
	movl	$31, %ecx
	subl	%eax, %ecx
	movl	$1, %eax
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movq	336(%rsp), %rcx                 # 8-byte Reload
	cltq
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB0_27
# %bb.26:                               # %if.then89
	movq	384(%rsp), %rsi                 # 8-byte Reload
	movq	392(%rsp), %rcx                 # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	32(%rcx), %rdi
	callq	insertR
	movq	392(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	384(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 32(%rcx)
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	jmp	.LBB0_28
.LBB0_27:                               # %if.else93
	movq	384(%rsp), %rsi                 # 8-byte Reload
	movq	392(%rsp), %rcx                 # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	24(%rcx), %rdi
	callq	insertR
	movq	392(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	384(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 24(%rcx)
	movq	%rax, 400(%rsp)                 # 8-byte Spill
.LBB0_28:                               # %cleanup
	movq	400(%rsp), %rax                 # 8-byte Reload
	addq	$408, %rsp                      # imm = 0x198
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	pat_insert, .Lfunc_end0-pat_insert
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function insertR
	.type	insertR,@function
insertR:                                # @insertR
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movb	17(%rdi), %al
	movb	%al, 35(%rsp)                   # 1-byte Spill
	movsbl	%al, %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	cmpl	%edx, %eax
	jge	.LBB1_2
# %bb.1:                                # %lor.lhs.false
	movb	35(%rsp), %al                   # 1-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpb	17(%rcx), %al
	jg	.LBB1_3
.LBB1_2:                                # %if.then
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	12(%rsp), %esi                  # 4-byte Reload
	movb	%sil, %cl
	movb	%cl, 17(%rax)
	movq	(%rax), %rdx
	movl	$31, %ecx
	subl	%esi, %ecx
	movl	$1, %esi
                                        # kill: def $cl killed $ecx
	shll	%cl, %esi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movslq	%esi, %rsi
	andq	%rsi, %rdx
	cmpq	$0, %rdx
	movq	%rax, %rsi
	cmovneq	%rcx, %rsi
	movq	%rsi, 24(%rax)
	cmpq	$0, %rdx
	cmovneq	%rax, %rcx
	movq	%rcx, 32(%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_3:                                # %if.end
	.cfi_def_cfa_offset 48
	movl	36(%rsp), %edx                  # 4-byte Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movl	$31, %ecx
	subl	%edx, %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	movslq	%ecx, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB1_5
# %bb.4:                                # %if.then22
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rcx), %rdi
	callq	insertR
	movq	%rax, %rcx
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 32(%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_5:                                # %if.else
	.cfi_def_cfa_offset 48
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	24(%rcx), %rdi
	callq	insertR
	movq	%rax, %rcx
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 24(%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	insertR, .Lfunc_end1-insertR
	.cfi_endproc
                                        # -- End function
	.globl	pat_remove                      # -- Begin function pat_remove
	.p2align	4, 0x90
	.type	pat_remove,@function
pat_remove:                             # @pat_remove
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	pat_remove, .Lfunc_end2-pat_remove
	.cfi_endproc
                                        # -- End function
	.globl	pat_search                      # -- Begin function pat_search
	.p2align	4, 0x90
	.type	pat_search,@function
pat_search:                             # @pat_search
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)                 # 8-byte Spill
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rsi
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	je	.LBB3_4
# %bb.1:                                # %do.body.preheader
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movb	17(%rax), %dl
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movb	%dl, -41(%rsp)                  # 1-byte Spill
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, -32(%rsp)                 # 8-byte Spill
.LBB3_2:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movb	-41(%rsp), %sil                 # 1-byte Reload
	movq	-24(%rsp), %rdi                 # 8-byte Reload
	movq	(%rdx), %rcx
	movq	8(%rdx), %r8
	andq	(%r8), %rdi
	movq	%rdi, -120(%rsp)                # 8-byte Spill
	cmpq	%rdi, %rcx
	cmoveq	%rdx, %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movsbl	%sil, %edi
	movl	$31, %ecx
	subl	%edi, %ecx
	movl	%ecx, -104(%rsp)                # 4-byte Spill
	movl	$1, %edi
                                        # kill: def $cl killed $ecx
	shll	%cl, %edi
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movl	%edi, -100(%rsp)                # 4-byte Spill
	movslq	%edi, %rdi
	andq	%rcx, %rdi
	movq	%rdi, -96(%rsp)                 # 8-byte Spill
	movq	%rdx, %rcx
	addq	$32, %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	addq	$24, %rdx
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	cmpq	$0, %rdi
	cmoveq	%rdx, %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	(%rcx), %rcx
	movb	17(%rcx), %dl
	cmpb	%dl, %sil
	movb	%dl, -41(%rsp)                  # 1-byte Spill
	movq	%rax, %rdx
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	jl	.LBB3_2
# %bb.3:                                # %do.end
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	movq	-56(%rsp), %rax                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	8(%rcx), %rdi
	andq	(%rdi), %rsi
	cmpq	%rsi, %rdx
	cmoveq	%rcx, %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
.LBB3_4:                                # %cleanup
	movq	-8(%rsp), %rax                  # 8-byte Reload
	retq
.Lfunc_end3:
	.size	pat_search, .Lfunc_end3-pat_search
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free
	.addrsig_sym malloc
	.addrsig_sym bcopy
