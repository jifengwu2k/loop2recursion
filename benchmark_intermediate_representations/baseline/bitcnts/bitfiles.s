	.text
	.file	"bitfiles.ll"
	.globl	bfopen                          # -- Begin function bfopen
	.p2align	4, 0x90
	.type	bfopen,@function
bfopen:                                 # @bfopen
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movl	$16, %edi
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	je	.LBB0_4
# %bb.1:                                # %if.end
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	fopen@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx)
	cmpq	$0, %rax
	jne	.LBB0_3
# %bb.2:                                # %if.then4
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:                                # %if.end5
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movb	$0, 9(%rcx)
	movb	$0, 11(%rcx)
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB0_4:                                # %cleanup
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bfopen, .Lfunc_end0-bfopen
	.cfi_endproc
                                        # -- End function
	.globl	bfread                          # -- Begin function bfread
	.p2align	4, 0x90
	.type	bfread,@function
bfread:                                 # @bfread
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, %rax
	addq	$9, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movb	9(%rdi), %al
	movb	%al, 39(%rsp)                   # 1-byte Spill
	cmpb	$0, %al
	je	.LBB1_2
# %bb.1:                                # %entry.if.end_crit_edge
	movb	39(%rsp), %al                   # 1-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movb	8(%rcx), %cl
	addb	$-1, %al
	movb	%cl, 14(%rsp)                   # 1-byte Spill
	movb	%al, 15(%rsp)                   # 1-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %if.then
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rdi
	callq	fgetc@PLT
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	%eax, %ecx
	movq	24(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 8(%rdx)
	movb	$8, (%rax)
	movb	$7, %al
	movb	%cl, 14(%rsp)                   # 1-byte Spill
	movb	%al, 15(%rsp)                   # 1-byte Spill
.LBB1_3:                                # %if.end
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movb	14(%rsp), %al                   # 1-byte Reload
	movb	15(%rsp), %cl                   # 1-byte Reload
	movb	%cl, (%rdx)
	movsbl	%al, %eax
	movsbl	%cl, %ecx
	movl	$1, %edx
                                        # kill: def $cl killed $ecx
	shll	%cl, %edx
	movl	%edx, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	bfread, .Lfunc_end1-bfread
	.cfi_endproc
                                        # -- End function
	.globl	bfwrite                         # -- Begin function bfwrite
	.p2align	4, 0x90
	.type	bfwrite,@function
bfwrite:                                # @bfwrite
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, 4(%rsp)                   # 4-byte Spill
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %rax
	addq	$11, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movb	11(%rsi), %al
	movb	%al, 31(%rsp)                   # 1-byte Spill
	addq	$10, %rsi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	cmpb	$8, %al
	je	.LBB2_2
# %bb.1:                                # %entry.if.end_crit_edge
	movb	31(%rsp), %al                   # 1-byte Reload
	addb	$1, %al
	movb	%al, 3(%rsp)                    # 1-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %if.then
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movsbl	(%rcx), %edi
	movq	(%rax), %rsi
	callq	fputc@PLT
                                        # kill: def $ecx killed $eax
	movq	16(%rsp), %rax                  # 8-byte Reload
	movb	$0, (%rax)
	movb	$1, %al
	movb	%al, 3(%rsp)                    # 1-byte Spill
.LBB2_3:                                # %if.end
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	4(%rsp), %edx                   # 4-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movb	3(%rsp), %sil                   # 1-byte Reload
	movb	%sil, (%rcx)
	movb	(%rax), %cl
	shlb	$1, %cl
	andl	$1, %edx
	movzbl	%cl, %ecx
	orl	%edx, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	bfwrite, .Lfunc_end2-bfwrite
	.cfi_endproc
                                        # -- End function
	.globl	bfclose                         # -- Begin function bfclose
	.p2align	4, 0x90
	.type	bfclose,@function
bfclose:                                # @bfclose
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movq	(%rdi), %rdi
	callq	fclose@PLT
	movq	(%rsp), %rdi                    # 8-byte Reload
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end3:
	.size	bfclose, .Lfunc_end3-bfclose
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym fopen
	.addrsig_sym free
	.addrsig_sym fgetc
	.addrsig_sym fputc
	.addrsig_sym fclose
