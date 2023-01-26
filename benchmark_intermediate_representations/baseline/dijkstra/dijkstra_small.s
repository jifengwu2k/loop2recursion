	.text
	.file	"dijkstra_small.ll"
	.globl	print_path                      # -- Begin function print_path
	.p2align	4, 0x90
	.type	print_path,@function
print_path:                             # @print_path
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movl	%esi, 16(%rsp)                  # 4-byte Spill
	movslq	%esi, %rax
	movl	4(%rdi,%rax,8), %eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	cmpl	$9999, %eax                     # imm = 0x270F
	je	.LBB0_2
# %bb.1:                                # %if.then
	movl	20(%rsp), %esi                  # 4-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	print_path@PLT
.LBB0_2:                                # %if.end
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	$.L.str, %edi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	printf@PLT
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	jmp	fflush@PLT                      # TAILCALL
.Lfunc_end0:
	.size	print_path, .Lfunc_end0-print_path
	.cfi_endproc
                                        # -- End function
	.globl	enqueue                         # -- Begin function enqueue
	.p2align	4, 0x90
	.type	enqueue,@function
enqueue:                                # @enqueue
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movl	%edi, 28(%rsp)                  # 4-byte Spill
	movl	%esi, 32(%rsp)                  # 4-byte Spill
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	movl	$24, %edi
	callq	malloc@PLT
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	qHead@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB1_2
# %bb.1:                                # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str.1, %rdi
	movl	$15, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB1_2:                                # %if.end
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	36(%rsp), %edx                  # 4-byte Reload
	movl	32(%rsp), %esi                  # 4-byte Reload
	movl	28(%rsp), %edi                  # 4-byte Reload
	movl	%edi, (%rcx)
	movl	%esi, 4(%rcx)
	movl	%edx, 8(%rcx)
	movq	$0, 16(%rcx)
	cmpq	$0, %rax
	je	.LBB1_4
# %bb.3:                                # %while.cond.preheader
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %if.then6
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	qHead@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	jmp	.LBB1_7
.LBB1_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rax
	addq	$16, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	16(%rcx), %rcx
	cmpq	$0, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jne	.LBB1_5
# %bb.6:                                # %while.end
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_7:                                # %if.end11
	movq	g_qCount@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movq	g_qCount@GOTPCREL(%rip), %rax
	movl	%ecx, (%rax)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	enqueue, .Lfunc_end1-enqueue
	.cfi_endproc
                                        # -- End function
	.globl	dequeue                         # -- Begin function dequeue
	.p2align	4, 0x90
	.type	dequeue,@function
dequeue:                                # @dequeue
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	qHead@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB2_2
# %bb.1:                                # %if.then
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	(%rdi), %esi
	movl	%esi, (%rdx)
	movl	4(%rdi), %edx
	movl	%edx, (%rcx)
	movl	8(%rdi), %ecx
	movl	%ecx, (%rax)
	movq	16(%rdi), %rcx
	movq	qHead@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movb	$0, %al
	callq	free@PLT
	movq	g_qCount@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movq	g_qCount@GOTPCREL(%rip), %rax
	movl	%ecx, (%rax)
.LBB2_2:                                # %if.end
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	dequeue, .Lfunc_end2-dequeue
	.cfi_endproc
                                        # -- End function
	.globl	qcount                          # -- Begin function qcount
	.p2align	4, 0x90
	.type	qcount,@function
qcount:                                 # @qcount
	.cfi_startproc
# %bb.0:                                # %entry
	movq	g_qCount@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	retq
.Lfunc_end3:
	.size	qcount, .Lfunc_end3-qcount
	.cfi_endproc
                                        # -- End function
	.globl	dijkstra                        # -- Begin function dijkstra
	.p2align	4, 0x90
	.type	dijkstra,@function
dijkstra:                               # @dijkstra
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movl	%edi, 200(%rsp)                 # 4-byte Spill
	movl	%esi, 204(%rsp)                 # 4-byte Spill
	movq	ch@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	208(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, (%rcx,%rax,8)            # imm = 0x270F
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, 4(%rcx,%rax,8)           # imm = 0x270F
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, 8(%rcx,%rax,8)           # imm = 0x270F
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, 12(%rcx,%rax,8)          # imm = 0x270F
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, 16(%rcx,%rax,8)          # imm = 0x270F
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, 20(%rcx,%rax,8)          # imm = 0x270F
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, 24(%rcx,%rax,8)          # imm = 0x270F
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, 28(%rcx,%rax,8)          # imm = 0x270F
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, 32(%rcx,%rax,8)          # imm = 0x270F
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	$9999, 36(%rcx,%rax,8)          # imm = 0x270F
	addq	$5, %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	cmpq	$100, %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	jne	.LBB4_1
# %bb.2:                                # %for.end
	movl	200(%rsp), %eax                 # 4-byte Reload
	movl	204(%rsp), %ecx                 # 4-byte Reload
	movq	ch@GOTPCREL(%rip), %rdx
	movl	$100, (%rdx)
	cmpl	%ecx, %eax
	jne	.LBB4_4
# %bb.3:                                # %if.then
	movabsq	$.Lstr, %rdi
	callq	puts@PLT
	jmp	.LBB4_30
.LBB4_4:                                # %if.else
	movl	200(%rsp), %eax                 # 4-byte Reload
	movslq	%eax, %rcx
	movq	rgnNodes@GOTPCREL(%rip), %rax
	movl	$0, (%rax,%rcx,8)
	movq	rgnNodes@GOTPCREL(%rip), %rax
	movl	$9999, 4(%rax,%rcx,8)           # imm = 0x270F
	movl	$24, %edi
	callq	malloc@PLT
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	qHead@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB4_6
# %bb.5:                                # %if.then.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str.1, %rdi
	movl	$15, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB4_6:                                # %if.end.i
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movl	200(%rsp), %edx                 # 4-byte Reload
	movl	%edx, (%rcx)
	movl	$0, 4(%rcx)
	movl	$9999, 8(%rcx)                  # imm = 0x270F
	movq	$0, 16(%rcx)
	cmpq	$0, %rax
	je	.LBB4_8
# %bb.7:                                # %while.cond.i.preheader
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %if.then6.i
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movq	qHead@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	jmp	.LBB4_11
.LBB4_9:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	addq	$16, %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	16(%rcx), %rcx
	cmpq	$0, %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	jne	.LBB4_9
# %bb.10:                               # %while.end.i
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, (%rax)
.LBB4_11:                               # %enqueue.exit
	movq	g_qCount@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, 140(%rsp)                 # 4-byte Spill
	movq	g_qCount@GOTPCREL(%rip), %rcx
	movl	%edx, (%rcx)
	cmpl	$-1, %eax
	jle	.LBB4_29
# %bb.12:                               # %while.body.preheader
	movl	140(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 136(%rsp)                 # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %while.condthread-pre-split
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	132(%rsp), %eax                 # 4-byte Reload
	cmpl	$0, %eax
	movl	%eax, 136(%rsp)                 # 4-byte Spill
	jle	.LBB4_28
.LBB4_14:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
                                        #       Child Loop BB4_24 Depth 3
	movl	136(%rsp), %eax                 # 4-byte Reload
	movq	qHead@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	cmpq	$0, %rcx
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	je	.LBB4_16
# %bb.15:                               # %if.then.i58
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	120(%rsp), %rdi                 # 8-byte Reload
	movl	(%rdi), %ecx
	movq	iNode@GOTPCREL(%rip), %rax
	movl	%ecx, (%rax)
	movl	4(%rdi), %ecx
	movq	iDist@GOTPCREL(%rip), %rax
	movl	%ecx, (%rax)
	movl	8(%rdi), %ecx
	movq	iPrev@GOTPCREL(%rip), %rax
	movl	%ecx, (%rax)
	movq	16(%rdi), %rcx
	movq	qHead@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movb	$0, %al
	callq	free@PLT
	movq	g_qCount@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	addl	$-1, %eax
	movq	g_qCount@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movl	%eax, 128(%rsp)                 # 4-byte Spill
.LBB4_16:                               # %for.cond12.preheader
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	128(%rsp), %ecx                 # 4-byte Reload
	movq	i@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	iNode@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	cltq
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movl	%ecx, 112(%rsp)                 # 4-byte Spill
	movl	%eax, 116(%rsp)                 # 4-byte Spill
.LBB4_17:                               # %for.body14
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_24 Depth 3
	movq	104(%rsp), %rsi                 # 8-byte Reload
	movl	112(%rsp), %eax                 # 4-byte Reload
	movl	116(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	movslq	%ecx, %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	AdjMatrix@GOTPCREL(%rip), %rcx
	imulq	$400, %rsi, %rsi                # imm = 0x190
	addq	%rsi, %rcx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movl	(%rcx), %ecx
	movl	%ecx, 92(%rsp)                  # 4-byte Spill
	movq	iCost@GOTPCREL(%rip), %rdx
	movl	%ecx, (%rdx)
	cmpl	$9999, %ecx                     # imm = 0x270F
	movl	%eax, 96(%rsp)                  # 4-byte Spill
	je	.LBB4_27
# %bb.18:                               # %if.then20
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	76(%rsp), %eax                  # 4-byte Reload
	movl	92(%rsp), %edi                  # 4-byte Reload
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	rgnNodes@GOTPCREL(%rip), %rcx
	movl	(%rcx,%rdx,8), %edx
	cmpl	$9999, %edx                     # imm = 0x270F
	sete	%cl
	movq	iDist@GOTPCREL(%rip), %rsi
	movl	(%rsi), %esi
	movl	%esi, 68(%rsp)                  # 4-byte Spill
	addl	%edi, %esi
	cmpl	%esi, %edx
	setg	%dl
	orb	%dl, %cl
	testb	$1, %cl
	movl	%eax, 96(%rsp)                  # 4-byte Spill
	jne	.LBB4_19
	jmp	.LBB4_27
.LBB4_19:                               # %if.then29
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	100(%rsp), %edx                 # 4-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	68(%rsp), %edi                  # 4-byte Reload
	movl	92(%rsp), %esi                  # 4-byte Reload
	addl	%edi, %esi
	movl	%esi, 36(%rsp)                  # 4-byte Spill
	movl	%esi, (%rax)
	movq	rgnNodes@GOTPCREL(%rip), %rax
	movl	%edx, 4(%rax,%rcx,8)
	movl	$24, %edi
	callq	malloc@PLT
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	qHead@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB4_21
# %bb.20:                               # %if.then.i62
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str.1, %rdi
	movl	$15, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB4_21:                               # %if.end.i68
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	100(%rsp), %edx                 # 4-byte Reload
	movl	36(%rsp), %esi                  # 4-byte Reload
	movl	72(%rsp), %edi                  # 4-byte Reload
	movl	%edi, (%rcx)
	movl	%esi, 4(%rcx)
	movl	%edx, 8(%rcx)
	movq	$0, 16(%rcx)
	cmpq	$0, %rax
	je	.LBB4_23
# %bb.22:                               # %while.cond.i73.preheader
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %if.then6.i69
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	qHead@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	jmp	.LBB4_26
.LBB4_24:                               # %while.cond.i73
                                        #   Parent Loop BB4_14 Depth=1
                                        #     Parent Loop BB4_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rax
	addq	$16, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rcx), %rcx
	cmpq	$0, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jne	.LBB4_24
# %bb.25:                               # %while.end.i74
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, (%rax)
.LBB4_26:                               # %enqueue.exit76
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	76(%rsp), %eax                  # 4-byte Reload
	addl	$1, %eax
	movq	g_qCount@GOTPCREL(%rip), %rcx
	movl	%eax, (%rcx)
	movl	%eax, 96(%rsp)                  # 4-byte Spill
.LBB4_27:                               # %for.inc39
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	72(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	addl	$1, %eax
	movq	i@GOTPCREL(%rip), %rdx
	movl	%eax, (%rdx)
	cmpl	$100, %eax
	movl	%ecx, %edx
	movl	%edx, 132(%rsp)                 # 4-byte Spill
	movl	%ecx, 112(%rsp)                 # 4-byte Spill
	movl	%eax, 116(%rsp)                 # 4-byte Spill
	jl	.LBB4_17
	jmp	.LBB4_13
.LBB4_28:                               # %while.end.loopexit
	jmp	.LBB4_29
.LBB4_29:                               # %while.end
	movl	204(%rsp), %eax                 # 4-byte Reload
	movslq	%eax, %rcx
	movq	rgnNodes@GOTPCREL(%rip), %rax
	movl	(%rax,%rcx,8), %esi
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf@PLT
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	204(%rsp), %esi                 # 4-byte Reload
	movq	rgnNodes@GOTPCREL(%rip), %rdi
	callq	print_path@PLT
	movl	$10, %edi
	callq	putchar@PLT
.LBB4_30:                               # %if.end48
                                        # implicit-def: $eax
	addq	$216, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	dijkstra, .Lfunc_end4-dijkstra
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	cmpl	$2, %edi
	jge	.LBB5_2
# %bb.1:                                # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str.6, %rdi
	movl	$27, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str.7, %rdi
	movl	$40, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.LBB5_2:                                # %if.end
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdi
	movabsq	$.L.str.8, %rsi
	callq	fopen@PLT
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
.LBB5_3:                                # %for.cond4.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
.LBB5_4:                                # %for.body6
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movabsq	$.L.str.9, %rsi
	leaq	116(%rsp), %rdx
	movb	$0, %al
	callq	__isoc99_fscanf@PLT
	movq	72(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $ecx killed $eax
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	116(%rsp), %edx
	movq	AdjMatrix@GOTPCREL(%rip), %rcx
	imulq	$400, %rsi, %rsi                # imm = 0x190
	addq	%rsi, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, %rsi
	shlq	$2, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	addq	%rsi, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movl	%edx, (%rcx)
	addq	$1, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	cmpq	$100, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jne	.LBB5_4
# %bb.5:                                # %for.inc11
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	cmpq	$100, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	jne	.LBB5_3
# %bb.6:                                # %for.body16.preheader
	xorl	%ecx, %ecx
	movl	$50, %eax
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	jmp	.LBB5_7
.LBB5_7:                                # %for.body16
                                        # =>This Inner Loop Header: Depth=1
	movl	28(%rsp), %eax                  # 4-byte Reload
	movl	24(%rsp), %edi                  # 4-byte Reload
	movl	%edi, 8(%rsp)                   # 4-byte Spill
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %esi
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	callq	dijkstra@PLT
	movl	8(%rsp), %ecx                   # 4-byte Reload
                                        # kill: def $edx killed $eax
	movl	12(%rsp), %eax                  # 4-byte Reload
	addl	$1, %ecx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	addl	$1, %eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	cmpl	$20, %ecx
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	jne	.LBB5_7
# %bb.8:                                # %for.end21
	xorl	%edi, %edi
	callq	exit@PLT
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.type	qHead,@object                   # @qHead
	.bss
	.globl	qHead
	.p2align	3
qHead:
	.quad	0
	.size	qHead, 8

	.type	g_qCount,@object                # @g_qCount
	.globl	g_qCount
	.p2align	2
g_qCount:
	.long	0                               # 0x0
	.size	g_qCount, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %d"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Out of memory.\n"
	.size	.L.str.1, 16

	.type	ch,@object                      # @ch
	.comm	ch,4,4
	.type	rgnNodes,@object                # @rgnNodes
	.comm	rgnNodes,800,16
	.type	iNode,@object                   # @iNode
	.comm	iNode,4,4
	.type	iDist,@object                   # @iDist
	.comm	iDist,4,4
	.type	iPrev,@object                   # @iPrev
	.comm	iPrev,4,4
	.type	i,@object                       # @i
	.comm	i,4,4
	.type	AdjMatrix,@object               # @AdjMatrix
	.comm	AdjMatrix,40000,16
	.type	iCost,@object                   # @iCost
	.comm	iCost,4,4
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Shortest path is %d in cost. "
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Path is: "
	.size	.L.str.4, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Usage: dijkstra <filename>\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Only supports matrix size is #define'd.\n"
	.size	.L.str.7, 41

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"r"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"Shortest path is 0 in cost. Just stay where you are."
	.size	.Lstr, 53

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print_path
	.addrsig_sym printf
	.addrsig_sym fflush
	.addrsig_sym malloc
	.addrsig_sym exit
	.addrsig_sym free
	.addrsig_sym dijkstra
	.addrsig_sym fopen
	.addrsig_sym __isoc99_fscanf
	.addrsig_sym fwrite
	.addrsig_sym putchar
	.addrsig_sym puts
	.addrsig_sym qHead
	.addrsig_sym g_qCount
	.addrsig_sym stdout
	.addrsig_sym stderr
	.addrsig_sym ch
	.addrsig_sym rgnNodes
	.addrsig_sym iNode
	.addrsig_sym iDist
	.addrsig_sym iPrev
	.addrsig_sym i
	.addrsig_sym AdjMatrix
	.addrsig_sym iCost
