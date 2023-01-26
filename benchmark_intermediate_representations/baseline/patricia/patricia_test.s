	.text
	.file	"patricia_test.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 272
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	leaq	128(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	cmpl	$2, %edi
	jge	.LBB0_2
# %bb.1:                                # %if.then
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rsi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB0_2:                                # %if.end
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen@PLT
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:                                # %if.then4
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rsi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_4:                                # %if.end7
	movl	$40, %edi
	callq	malloc@PLT
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:                                # %if.then9
	movabsq	$.L.str.3, %rdi
	callq	perror@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_6:                                # %if.end10
	movq	64(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	movl	$16, %edi
	callq	malloc@PLT
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 8(%rcx)
	cmpq	$0, %rax
	jne	.LBB0_8
# %bb.7:                                # %if.then14
	movabsq	$.L.str.4, %rdi
	callq	perror@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_8:                                # %if.end15
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	$0, (%rax)
	movl	$16, %edi
	callq	malloc@PLT
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rax, 8(%rcx)
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.9:                                # %if.then21
	movabsq	$.L.str.5, %rdi
	callq	perror@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_10:                               # %if.end22
	movq	88(%rsp), %rdx                  # 8-byte Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movb	$0, (%rcx)
	movb	$1, 16(%rax)
	movq	%rax, 32(%rax)
	movq	%rax, 24(%rax)
	movl	$128, %esi
	callq	fgets@PLT
	cmpq	$0, %rax
	je	.LBB0_24
# %bb.11:                               # %while.body.lr.ph
	leaq	120(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB0_12:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movabsq	$.L.str.6, %rsi
	leaq	116(%rsp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	movl	$40, %edi
	callq	malloc@PLT
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB0_14
# %bb.13:                               # %if.then30
	movabsq	$.L.str.3, %rdi
	callq	perror@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_14:                               # %if.end31
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	24(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	movl	$16, %edi
	callq	malloc@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 8(%rcx)
	cmpq	$0, %rax
	jne	.LBB0_16
# %bb.15:                               # %if.then36
	movabsq	$.L.str.4, %rdi
	callq	perror@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_16:                               # %if.end37
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	$0, (%rax)
	movl	$16, %edi
	callq	malloc@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rax, 8(%rcx)
	cmpq	$0, %rax
	jne	.LBB0_18
# %bb.17:                               # %if.then44
	movabsq	$.L.str.5, %rdi
	callq	perror@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_18:                               # %if.end45
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movb	$0, (%rdi)
	movl	(%rdx), %edx
	movl	%edx, %edi
	movq	%rdi, (%rcx)
	movl	$-1, %ecx
	#APP
	bswapl	%ecx
	#NO_APP
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, (%rax)
	callq	pat_search@PLT
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax), %rax
	movl	(%rcx), %ecx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	cmpq	%rcx, %rax
	jne	.LBB0_20
# %bb.19:                               # %if.end64.thread
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	4(%rsp), %esi                   # 4-byte Reload
	movss	116(%rsp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.7, %rdi
	movb	$1, %al
	callq	printf@PLT
	movabsq	$.Lstr, %rdi
	callq	puts@PLT
	jmp	.LBB0_21
.LBB0_20:                               # %if.end64
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	callq	pat_insert@PLT
	cmpq	$0, %rax
	je	.LBB0_22
.LBB0_21:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	88(%rsp), %rdx                  # 8-byte Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movl	$128, %esi
	callq	fgets@PLT
	cmpq	$0, %rax
	je	.LBB0_23
	jmp	.LBB0_12
.LBB0_22:                               # %if.then66
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str.9, %rdi
	movl	$21, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_23:                               # %while.end.loopexit
	jmp	.LBB0_24
.LBB0_24:                               # %while.end
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: %s <TCP stream>\n"
	.size	.L.str, 24

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"File %s doesn't seem to exist\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Allocating p-trie node"
	.size	.L.str.3, 23

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Allocating p-trie mask data"
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Allocating p-trie mask's node data"
	.size	.L.str.5, 35

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%f %d"
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%f %08x: "
	.size	.L.str.7, 10

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Failed on pat_insert\n"
	.size	.L.str.9, 22

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Found."
	.size	.Lstr, 7

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym exit
	.addrsig_sym fopen
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym fgets
	.addrsig_sym __isoc99_sscanf
	.addrsig_sym pat_search
	.addrsig_sym pat_insert
	.addrsig_sym fwrite
	.addrsig_sym puts
	.addrsig_sym stderr
