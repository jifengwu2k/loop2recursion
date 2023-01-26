	.text
	.file	"susan.ll"
	.globl	usage                           # -- Begin function usage
	.p2align	4, 0x90
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movabsq	$.Lstr, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.32, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.33, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.34, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.35, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.36, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.37, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.38, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.39, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.40, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.41, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.42, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.43, %rdi
	callq	puts@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	usage, .Lfunc_end0-usage
	.cfi_endproc
                                        # -- End function
	.globl	getint                          # -- Begin function getint
	.p2align	4, 0x90
	.type	getint,@function
getint:                                 # @getint
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$10072, %rsp                    # imm = 0x2758
	.cfi_def_cfa_offset 10080
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	leaq	64(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_IO_getc@PLT
	movl	%eax, 60(%rsp)                  # 4-byte Spill
.LBB1_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	60(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	subl	$-1, %eax
	je	.LBB1_3
	jmp	.LBB1_9
.LBB1_9:                                # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	36(%rsp), %eax                  # 4-byte Reload
	subl	$35, %eax
	jne	.LBB1_4
	jmp	.LBB1_2
.LBB1_2:                                # %if.end5.thread
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	$9000, %esi                     # imm = 0x2328
	callq	fgets@PLT
	jmp	.LBB1_6
.LBB1_3:                                # %if.then3
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movb	$0, %al
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB1_4:                                # %if.end5
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	36(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %ecx
	addl	$-48, %ecx
	cmpl	$10, %ecx
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	jae	.LBB1_6
# %bb.5:                                # %while.body12.preheader
	movl	32(%rsp), %ecx                  # 4-byte Reload
	xorl	%eax, %eax
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %if.end9
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	_IO_getc@PLT
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	jmp	.LBB1_1
.LBB1_7:                                # %while.body12
                                        # =>This Inner Loop Header: Depth=1
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movl	24(%rsp), %eax                  # 4-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	imull	$10, %ecx, %ecx
	addl	$-48, %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	addl	%ecx, %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	callq	_IO_getc@PLT
	movl	%eax, %ecx
	movl	8(%rsp), %eax                   # 4-byte Reload
	cmpl	$-1, %ecx
	sete	%dl
	movl	%ecx, %esi
	addl	$-48, %esi
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	cmpl	$9, %esi
	seta	%sil
	orb	%sil, %dl
	movb	%dl, 19(%rsp)                   # 1-byte Spill
	testb	$1, %dl
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	jne	.LBB1_8
	jmp	.LBB1_7
.LBB1_8:                                # %cleanup
	movl	20(%rsp), %eax                  # 4-byte Reload
	addq	$10072, %rsp                    # imm = 0x2758
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	getint, .Lfunc_end1-getint
	.cfi_endproc
                                        # -- End function
	.globl	get_image                       # -- Begin function get_image
	.p2align	4, 0x90
	.type	get_image,@function
get_image:                              # @get_image
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movabsq	$.L.str.15, %rsi
	callq	fopen@PLT
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB2_2
# %bb.1:                                # %if.then
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.16, %rsi
	movb	$0, %al
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB2_2:                                # %if.end
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	fgetc@PLT
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	callq	fgetc@PLT
	movl	%eax, %ecx
	movl	12(%rsp), %eax                  # 4-byte Reload
	andl	$255, %eax
	cmpl	$80, %eax
	sete	%al
	andl	$255, %ecx
	cmpl	$53, %ecx
	sete	%cl
	andb	%cl, %al
	testb	$1, %al
	jne	.LBB2_4
# %bb.3:                                # %if.then14
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.17, %rsi
	movb	$0, %al
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB2_4:                                # %if.end16
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	getint@PLT
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	%eax, %ecx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, (%rax)
	callq	getint@PLT
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	%eax, %ecx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, (%rax)
	callq	getint@PLT
	movq	40(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $edx killed $eax
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %eax
	imull	(%rcx), %eax
	movslq	%eax, %rdi
	movq	%rdi, (%rsp)                    # 8-byte Spill
	callq	malloc@PLT
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, %rdi
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rdi, (%rax)
	movl	$1, %esi
	callq	fread@PLT
	cmpq	$0, %rax
	jne	.LBB2_6
# %bb.5:                                # %if.then27
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.18, %rsi
	movb	$0, %al
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB2_6:                                # %if.end29
	movq	48(%rsp), %rdi                  # 8-byte Reload
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	jmp	fclose@PLT                      # TAILCALL
.Lfunc_end2:
	.size	get_image, .Lfunc_end2-get_image
	.cfi_endproc
                                        # -- End function
	.globl	put_image                       # -- Begin function put_image
	.p2align	4, 0x90
	.type	put_image,@function
put_image:                              # @put_image
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	movabsq	$.L.str.19, %rsi
	callq	fopen@PLT
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB3_2
# %bb.1:                                # %if.then
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.20, %rsi
	movb	$0, %al
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB3_2:                                # %if.end
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movabsq	$.L.str.21, %rdi
	movl	$3, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movabsq	$.L.str.22, %rsi
	movb	$0, %al
	callq	fprintf@PLT
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movabsq	$.L.str.23, %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	24(%rsp), %edx                  # 4-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $rsi killed $rax
	movl	28(%rsp), %eax                  # 4-byte Reload
	imull	%edx, %eax
	movslq	%eax, %rsi
	movl	$1, %edx
	callq	fwrite@PLT
	cmpq	$1, %rax
	je	.LBB3_4
# %bb.3:                                # %if.then8
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movabsq	$.L.str.24, %rsi
	movb	$0, %al
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB3_4:                                # %if.end10
	movq	32(%rsp), %rdi                  # 8-byte Reload
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	jmp	fclose@PLT                      # TAILCALL
.Lfunc_end3:
	.size	put_image, .Lfunc_end3-put_image
	.cfi_endproc
                                        # -- End function
	.globl	int_to_uchar                    # -- Begin function int_to_uchar
	.p2align	4, 0x90
	.type	int_to_uchar,@function
int_to_uchar:                           # @int_to_uchar
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$952, %rsp                      # imm = 0x3B8
	.cfi_def_cfa_offset 960
	movq	%rdi, 920(%rsp)                 # 8-byte Spill
	movq	%rsi, 928(%rsp)                 # 8-byte Spill
	movl	%edx, 940(%rsp)                 # 4-byte Spill
	movl	(%rdi), %eax
	movl	%eax, 944(%rsp)                 # 4-byte Spill
	cmpl	$0, %edx
	setg	%al
	movb	%al, 951(%rsp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_23
.LBB4_1:                                # %for.body.preheader
	movl	944(%rsp), %eax                 # 4-byte Reload
	movl	940(%rsp), %ecx                 # 4-byte Reload
	cmpl	$1, %ecx
	movl	%eax, %ecx
	movl	%ecx, 912(%rsp)                 # 4-byte Spill
	movl	%eax, 916(%rsp)                 # 4-byte Spill
	je	.LBB4_14
# %bb.2:                                # %for.body.for.body_crit_edge.lr.ph
	movl	944(%rsp), %eax                 # 4-byte Reload
	movl	940(%rsp), %ecx                 # 4-byte Reload
	addl	$-2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$1, %rdx
	movq	%rdx, 888(%rsp)                 # 8-byte Spill
	movl	$1, %ecx
	cmpq	$8, %rdx
	movq	%rcx, 896(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 904(%rsp)                 # 4-byte Spill
	movl	%eax, 908(%rsp)                 # 4-byte Spill
	jb	.LBB4_11
# %bb.3:                                # %min.iters.checked
	movl	944(%rsp), %eax                 # 4-byte Reload
	movq	888(%rsp), %rdx                 # 8-byte Reload
	movabsq	$8589934584, %rcx               # imm = 0x1FFFFFFF8
	andq	%rcx, %rdx
	movq	%rdx, 832(%rsp)                 # 8-byte Spill
	movq	%rdx, %rcx
	orq	$1, %rcx
	movq	%rcx, 840(%rsp)                 # 8-byte Spill
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 848(%rsp)                # 16-byte Spill
	movaps	%xmm0, 864(%rsp)                # 16-byte Spill
	movl	$1, %ecx
	cmpq	$0, %rdx
	movq	%rcx, 896(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 904(%rsp)                 # 4-byte Spill
	movl	%eax, 908(%rsp)                 # 4-byte Spill
	je	.LBB4_11
# %bb.4:                                # %vector.body.preheader
	movaps	864(%rsp), %xmm0                # 16-byte Reload
	movaps	848(%rsp), %xmm1                # 16-byte Reload
	movl	940(%rsp), %eax                 # 4-byte Reload
	addl	$-2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	$1, %rcx
	movabsq	$8589934584, %rax               # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	addq	$-8, %rcx
	shrq	$3, %rcx
	movq	%rcx, 752(%rsp)                 # 8-byte Spill
	andq	$1, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm2
	movq	%rax, 760(%rsp)                 # 8-byte Spill
	movaps	%xmm1, %xmm2
	movaps	%xmm2, 768(%rsp)                # 16-byte Spill
	movaps	%xmm1, 784(%rsp)                # 16-byte Spill
	movaps	%xmm0, %xmm1
	movaps	%xmm1, 800(%rsp)                # 16-byte Spill
	movaps	%xmm0, 816(%rsp)                # 16-byte Spill
	jne	.LBB4_6
# %bb.5:                                # %vector.body.prol
	movaps	848(%rsp), %xmm6                # 16-byte Reload
	movaps	864(%rsp), %xmm0                # 16-byte Reload
	movq	920(%rsp), %rax                 # 8-byte Reload
	movups	4(%rax), %xmm3
	movups	20(%rax), %xmm2
	movaps	%xmm3, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm0, %xmm4
	movaps	%xmm3, %xmm1
	pand	%xmm5, %xmm1
	por	%xmm4, %xmm1
	movaps	%xmm2, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	pand	%xmm5, %xmm0
	por	%xmm4, %xmm0
	movaps	%xmm6, %xmm5
	pcmpgtd	%xmm3, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm5, %xmm3
	por	%xmm4, %xmm3
	movaps	%xmm6, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm5, %xmm2
	por	%xmm4, %xmm2
	movl	$8, %eax
	movaps	%xmm2, %xmm4
	movaps	%xmm4, 688(%rsp)                # 16-byte Spill
	movaps	%xmm3, %xmm4
	movaps	%xmm4, 704(%rsp)                # 16-byte Spill
	movaps	%xmm0, %xmm4
	movaps	%xmm4, 720(%rsp)                # 16-byte Spill
	movaps	%xmm1, %xmm4
	movaps	%xmm4, 736(%rsp)                # 16-byte Spill
	movq	%rax, 760(%rsp)                 # 8-byte Spill
	movaps	%xmm3, 768(%rsp)                # 16-byte Spill
	movaps	%xmm2, 784(%rsp)                # 16-byte Spill
	movaps	%xmm1, 800(%rsp)                # 16-byte Spill
	movaps	%xmm0, 816(%rsp)                # 16-byte Spill
.LBB4_6:                                # %vector.body.preheader.split
	movq	752(%rsp), %rax                 # 8-byte Reload
	movaps	688(%rsp), %xmm3                # 16-byte Reload
	movaps	704(%rsp), %xmm2                # 16-byte Reload
	movaps	720(%rsp), %xmm1                # 16-byte Reload
	movaps	736(%rsp), %xmm0                # 16-byte Reload
	movq	760(%rsp), %rcx                 # 8-byte Reload
	movaps	768(%rsp), %xmm4                # 16-byte Reload
	movaps	784(%rsp), %xmm5                # 16-byte Reload
	movaps	800(%rsp), %xmm6                # 16-byte Reload
	movaps	816(%rsp), %xmm7                # 16-byte Reload
	movaps	%xmm7, 544(%rsp)                # 16-byte Spill
	movaps	%xmm6, 560(%rsp)                # 16-byte Spill
	movaps	%xmm5, 576(%rsp)                # 16-byte Spill
	movaps	%xmm4, 592(%rsp)                # 16-byte Spill
	movq	%rcx, 616(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	movaps	%xmm3, 624(%rsp)                # 16-byte Spill
	movaps	%xmm2, 640(%rsp)                # 16-byte Spill
	movaps	%xmm1, 656(%rsp)                # 16-byte Spill
	movaps	%xmm0, 672(%rsp)                # 16-byte Spill
	je	.LBB4_10
# %bb.7:                                # %vector.body.preheader.split.split
	movaps	544(%rsp), %xmm0                # 16-byte Reload
	movaps	560(%rsp), %xmm1                # 16-byte Reload
	movaps	576(%rsp), %xmm2                # 16-byte Reload
	movaps	592(%rsp), %xmm3                # 16-byte Reload
	movq	616(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 472(%rsp)                 # 8-byte Spill
	movaps	%xmm3, 480(%rsp)                # 16-byte Spill
	movaps	%xmm2, 496(%rsp)                # 16-byte Spill
	movaps	%xmm1, 512(%rsp)                # 16-byte Spill
	movaps	%xmm0, 528(%rsp)                # 16-byte Spill
	jmp	.LBB4_8
.LBB4_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	528(%rsp), %xmm5                # 16-byte Reload
	movaps	512(%rsp), %xmm2                # 16-byte Reload
	movaps	496(%rsp), %xmm3                # 16-byte Reload
	movaps	480(%rsp), %xmm4                # 16-byte Reload
	movq	472(%rsp), %rax                 # 8-byte Reload
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movq	920(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rsi
	shlq	$2, %rsi
	movq	%rsi, -32(%rsp)                 # 8-byte Spill
	orq	$4, %rsi
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
	movups	(%rdx,%rsi), %xmm7
	movups	16(%rdx,%rsi), %xmm6
	movaps	%xmm7, %xmm1
	pcmpgtd	%xmm2, %xmm1
	movaps	%xmm1, -16(%rsp)                # 16-byte Spill
	movaps	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	movaps	%xmm0, (%rsp)                   # 16-byte Spill
	pandn	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	movaps	%xmm6, %xmm2
	pcmpgtd	%xmm5, %xmm2
	movaps	%xmm2, 32(%rsp)                 # 16-byte Spill
	movaps	%xmm6, %xmm1
	pand	%xmm2, %xmm1
	movaps	%xmm1, 48(%rsp)                 # 16-byte Spill
	pandn	%xmm5, %xmm2
	por	%xmm2, %xmm1
	movaps	%xmm1, 64(%rsp)                 # 16-byte Spill
	movaps	%xmm4, %xmm2
	pcmpgtd	%xmm7, %xmm2
	movaps	%xmm2, 80(%rsp)                 # 16-byte Spill
	pand	%xmm2, %xmm7
	movaps	%xmm7, 96(%rsp)                 # 16-byte Spill
	pandn	%xmm4, %xmm2
	por	%xmm2, %xmm7
	movaps	%xmm7, 112(%rsp)                # 16-byte Spill
	movaps	%xmm3, %xmm2
	pcmpgtd	%xmm6, %xmm2
	movaps	%xmm2, 128(%rsp)                # 16-byte Spill
	pand	%xmm2, %xmm6
	movaps	%xmm6, 144(%rsp)                # 16-byte Spill
	pandn	%xmm3, %xmm2
	por	%xmm2, %xmm6
	movaps	%xmm6, 160(%rsp)                # 16-byte Spill
	leaq	32(,%rax,4), %rsi
	orq	$4, %rsi
	movq	%rsi, 184(%rsp)                 # 8-byte Spill
	movups	(%rdx,%rsi), %xmm2
	movups	16(%rdx,%rsi), %xmm3
	movaps	%xmm2, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movaps	%xmm5, 192(%rsp)                # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	pand	%xmm5, %xmm0
	movaps	%xmm0, 208(%rsp)                # 16-byte Spill
	por	%xmm4, %xmm0
	movaps	%xmm0, 224(%rsp)                # 16-byte Spill
	movaps	%xmm3, %xmm5
	pcmpgtd	%xmm1, %xmm5
	movaps	%xmm5, 240(%rsp)                # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm1, %xmm4
	movaps	%xmm3, %xmm1
	pand	%xmm5, %xmm1
	movaps	%xmm1, 256(%rsp)                # 16-byte Spill
	por	%xmm4, %xmm1
	movaps	%xmm1, 272(%rsp)                # 16-byte Spill
	movaps	%xmm7, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movaps	%xmm5, 288(%rsp)                # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm7, %xmm4
	pand	%xmm5, %xmm2
	movaps	%xmm2, 304(%rsp)                # 16-byte Spill
	por	%xmm4, %xmm2
	movaps	%xmm2, 320(%rsp)                # 16-byte Spill
	movaps	%xmm6, %xmm5
	pcmpgtd	%xmm3, %xmm5
	movaps	%xmm5, 336(%rsp)                # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm5, %xmm3
	movaps	%xmm3, 352(%rsp)                # 16-byte Spill
	por	%xmm4, %xmm3
	movaps	%xmm3, 368(%rsp)                # 16-byte Spill
	addq	$16, %rax
	movq	%rax, 392(%rsp)                 # 8-byte Spill
	cmpq	%rcx, %rax
	movq	%rax, 472(%rsp)                 # 8-byte Spill
	movaps	%xmm2, %xmm4
	movaps	%xmm4, 480(%rsp)                # 16-byte Spill
	movaps	%xmm3, %xmm4
	movaps	%xmm4, 496(%rsp)                # 16-byte Spill
	movaps	%xmm0, %xmm4
	movaps	%xmm4, 512(%rsp)                # 16-byte Spill
	movaps	%xmm1, %xmm4
	movaps	%xmm4, 528(%rsp)                # 16-byte Spill
	movaps	%xmm3, 400(%rsp)                # 16-byte Spill
	movaps	%xmm2, 416(%rsp)                # 16-byte Spill
	movaps	%xmm1, 432(%rsp)                # 16-byte Spill
	movaps	%xmm0, 448(%rsp)                # 16-byte Spill
	jne	.LBB4_8
# %bb.9:                                # %middle.block.unr-lcssa
	movaps	400(%rsp), %xmm3                # 16-byte Reload
	movaps	416(%rsp), %xmm2                # 16-byte Reload
	movaps	432(%rsp), %xmm1                # 16-byte Reload
	movaps	448(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm3, 624(%rsp)                # 16-byte Spill
	movaps	%xmm2, 640(%rsp)                # 16-byte Spill
	movaps	%xmm1, 656(%rsp)                # 16-byte Spill
	movaps	%xmm0, 672(%rsp)                # 16-byte Spill
.LBB4_10:                               # %middle.block
	movq	840(%rsp), %rdx                 # 8-byte Reload
	movq	888(%rsp), %rsi                 # 8-byte Reload
	movq	832(%rsp), %rdi                 # 8-byte Reload
	movaps	624(%rsp), %xmm3                # 16-byte Reload
	movaps	640(%rsp), %xmm1                # 16-byte Reload
	movaps	656(%rsp), %xmm5                # 16-byte Reload
	movaps	672(%rsp), %xmm2                # 16-byte Reload
	movaps	%xmm2, %xmm4
	pcmpgtd	%xmm5, %xmm4
	movaps	%xmm4, %xmm0
	pandn	%xmm5, %xmm0
	pand	%xmm4, %xmm2
	por	%xmm0, %xmm2
	pshufd	$238, %xmm2, %xmm5              # xmm5 = xmm2[2,3,2,3]
	movaps	%xmm2, %xmm4
	pcmpgtd	%xmm5, %xmm4
	movaps	%xmm4, %xmm0
	pandn	%xmm5, %xmm0
	pand	%xmm4, %xmm2
	por	%xmm0, %xmm2
	pshufd	$85, %xmm2, %xmm0               # xmm0 = xmm2[1,1,1,1]
	movaps	%xmm2, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movd	%xmm4, %eax
	movb	%al, %r8b
	movd	%xmm2, %ecx
	movd	%xmm0, %eax
	testb	$1, %r8b
	cmovnel	%ecx, %eax
	movaps	%xmm3, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	pandn	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm3              # xmm3 = xmm1[2,3,2,3]
	movaps	%xmm3, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	pandn	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	movaps	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movd	%xmm2, %ecx
	movb	%cl, %r9b
	movd	%xmm1, %r8d
	movd	%xmm0, %ecx
	testb	$1, %r9b
	cmovnel	%r8d, %ecx
	cmpq	%rdi, %rsi
	movq	%rdx, 896(%rsp)                 # 8-byte Spill
	movl	%ecx, %edx
	movl	%edx, 904(%rsp)                 # 4-byte Spill
	movl	%eax, %edx
	movl	%edx, 908(%rsp)                 # 4-byte Spill
	movl	%ecx, 912(%rsp)                 # 4-byte Spill
	movl	%eax, 916(%rsp)                 # 4-byte Spill
	je	.LBB4_14
.LBB4_11:                               # %for.body.for.body_crit_edge.preheader
	movq	896(%rsp), %rdx                 # 8-byte Reload
	movl	904(%rsp), %ecx                 # 4-byte Reload
	movl	908(%rsp), %eax                 # 4-byte Reload
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movl	%ecx, -40(%rsp)                 # 4-byte Spill
	movl	%eax, -36(%rsp)                 # 4-byte Spill
.LBB4_12:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rsp), %eax                 # 4-byte Reload
	movl	-40(%rsp), %ecx                 # 4-byte Reload
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movl	940(%rsp), %edi                 # 4-byte Reload
	movq	920(%rsp), %rsi                 # 8-byte Reload
	movl	(%rsi,%rdx,4), %esi
	cmpl	%eax, %esi
	cmovgl	%esi, %eax
	movl	%eax, -72(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %esi
	cmovll	%esi, %ecx
	movl	%ecx, -68(%rsp)                 # 4-byte Spill
	addq	$1, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movl	%edx, %esi
	cmpl	%edi, %esi
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movl	%ecx, %edx
	movl	%edx, -40(%rsp)                 # 4-byte Spill
	movl	%eax, %edx
	movl	%edx, -36(%rsp)                 # 4-byte Spill
	movl	%ecx, -56(%rsp)                 # 4-byte Spill
	movl	%eax, -52(%rsp)                 # 4-byte Spill
	jne	.LBB4_12
# %bb.13:                               # %for.end.loopexit
	movl	-56(%rsp), %ecx                 # 4-byte Reload
	movl	-52(%rsp), %eax                 # 4-byte Reload
	movl	%ecx, 912(%rsp)                 # 4-byte Spill
	movl	%eax, 916(%rsp)                 # 4-byte Spill
.LBB4_14:                               # %for.end
	movb	951(%rsp), %al                  # 1-byte Reload
	movl	912(%rsp), %edx                 # 4-byte Reload
	movl	916(%rsp), %ecx                 # 4-byte Reload
	movl	%edx, -80(%rsp)                 # 4-byte Spill
	subl	%edx, %ecx
	movl	%ecx, -76(%rsp)                 # 4-byte Spill
	testb	$1, %al
	jne	.LBB4_15
	jmp	.LBB4_23
.LBB4_15:                               # %for.body15.preheader
	movq	928(%rsp), %rcx                 # 8-byte Reload
	movl	-76(%rsp), %esi                 # 4-byte Reload
	movl	-80(%rsp), %edx                 # 4-byte Reload
	movl	944(%rsp), %eax                 # 4-byte Reload
	subl	%edx, %eax
	imull	$255, %eax, %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	movl	940(%rsp), %eax                 # 4-byte Reload
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, (%rcx)
	cmpl	$1, %eax
	je	.LBB4_23
# %bb.16:                               # %for.body15.for.body15_crit_edge.preheader
	movl	940(%rsp), %ecx                 # 4-byte Reload
	andl	$1, %ecx
	movl	$1, %eax
	cmpl	$0, %ecx
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	jne	.LBB4_18
# %bb.17:                               # %for.body15.for.body15_crit_edge.prol
	movl	-76(%rsp), %ecx                 # 4-byte Reload
	movl	-80(%rsp), %edx                 # 4-byte Reload
	movq	920(%rsp), %rax                 # 8-byte Reload
	movl	4(%rax), %eax
	subl	%edx, %eax
	imull	$255, %eax, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	928(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 1(%rax)
	movl	$2, %eax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
.LBB4_18:                               # %for.body15.for.body15_crit_edge.preheader.split
	movl	940(%rsp), %eax                 # 4-byte Reload
	movq	-88(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	cmpl	$2, %eax
	je	.LBB4_22
# %bb.19:                               # %for.body15.for.body15_crit_edge.preheader.split.split
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -104(%rsp)                # 8-byte Spill
	jmp	.LBB4_20
.LBB4_20:                               # %for.body15.for.body15_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rsp), %rdi                # 8-byte Reload
	movq	928(%rsp), %rcx                 # 8-byte Reload
	movl	-76(%rsp), %esi                 # 4-byte Reload
	movl	-80(%rsp), %edx                 # 4-byte Reload
	movq	920(%rsp), %rax                 # 8-byte Reload
	movq	%rdi, -120(%rsp)                # 8-byte Spill
	movl	(%rax,%rdi,4), %eax
	subl	%edx, %eax
	movl	%eax, -128(%rsp)                # 4-byte Spill
	imull	$255, %eax, %eax
	cltd
	idivl	%esi
	movl	-80(%rsp), %edx                 # 4-byte Reload
	movl	%eax, %r8d
	movq	920(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $r8b killed $r8b killed $r8d
	movb	%r8b, (%rcx,%rdi)
	movl	4(%rax,%rdi,4), %eax
	subl	%edx, %eax
	movl	%eax, -124(%rsp)                # 4-byte Spill
	imull	$255, %eax, %eax
	cltd
	idivl	%esi
	movl	940(%rsp), %edx                 # 4-byte Reload
	movl	%eax, %esi
	movq	-120(%rsp), %rax                # 8-byte Reload
                                        # kill: def $sil killed $sil killed $esi
	movb	%sil, 1(%rcx,%rax)
	addq	$2, %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, -104(%rsp)                # 8-byte Spill
	jne	.LBB4_20
# %bb.21:                               # %for.end23.loopexit.unr-lcssa
	jmp	.LBB4_22
.LBB4_22:                               # %for.end23.loopexit
	jmp	.LBB4_23
.LBB4_23:                               # %for.end23
                                        # implicit-def: $eax
	addq	$952, %rsp                      # imm = 0x3B8
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	int_to_uchar, .Lfunc_end4-int_to_uchar
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function setup_brightness_lut
.LCPI5_0:
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI5_1:
	.quad	0x4059000000000000              # double 100
	.text
	.globl	setup_brightness_lut
	.p2align	4, 0x90
	.type	setup_brightness_lut,@function
setup_brightness_lut:                   # @setup_brightness_lut
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movl	%esi, 32(%rsp)                  # 4-byte Spill
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	movl	$516, %edi                      # imm = 0x204
	callq	malloc@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	32(%rsp), %esi                  # 4-byte Reload
	movl	36(%rsp), %edx                  # 4-byte Reload
	addq	$258, %rax                      # imm = 0x102
	movq	%rax, (%rdi)
	cvtsi2ss	%esi, %xmm0
	movss	%xmm0, 40(%rsp)                 # 4-byte Spill
	cmpl	$6, %edx
	sete	%al
	movb	%al, 47(%rsp)                   # 1-byte Spill
	movq	$-256, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	47(%rsp), %al                   # 1-byte Reload
	movss	40(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	cvtsi2ss	%ecx, %xmm0
	divss	%xmm1, %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, 16(%rsp)                 # 4-byte Spill
	movaps	%xmm0, %xmm1
	mulss	%xmm1, %xmm1
	mulss	%xmm1, %xmm0
	testb	$1, %al
	movss	%xmm0, 20(%rsp)                 # 4-byte Spill
	jne	.LBB5_4
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movss	16(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 20(%rsp)                 # 4-byte Spill
.LBB5_4:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movss	20(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI5_0(%rip), %xmm1           # xmm1 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	pxor	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	exp@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	movsd	.LCPI5_1(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %edx
                                        # kill: def $dl killed $dl killed $edx
	movq	(%rcx), %rcx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	cmpq	$257, %rax                      # imm = 0x101
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	jne	.LBB5_1
# %bb.2:                                # %for.end
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	setup_brightness_lut, .Lfunc_end5-setup_brightness_lut
	.cfi_endproc
                                        # -- End function
	.globl	susan_principle                 # -- Begin function susan_principle
	.p2align	4, 0x90
	.type	susan_principle,@function
susan_principle:                        # @susan_principle
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$200, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%rdi, 168(%rsp)                 # 8-byte Spill
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movl	%ecx, 184(%rsp)                 # 4-byte Spill
	movl	%r8d, 188(%rsp)                 # 4-byte Spill
	movl	%r9d, 192(%rsp)                 # 4-byte Spill
	imull	%r8d, %r9d
	movslq	%r9d, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	192(%rsp), %r9d                 # 4-byte Reload
	addl	$-3, %r9d
	movl	%r9d, 196(%rsp)                 # 4-byte Spill
	cmpl	$3, %r9d
	jle	.LBB6_10
# %bb.1:                                # %for.cond3.preheader.lr.ph
	movl	188(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	addl	$-3, %ecx
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	cmpl	$3, %ecx
	setg	%dl
	movb	%dl, 111(%rsp)                  # 1-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	addl	$-5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	addl	$-6, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	cltq
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movl	$3, %eax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
.LBB6_2:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
	movb	111(%rsp), %al                  # 1-byte Reload
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	testb	$1, %al
	jne	.LBB6_3
	jmp	.LBB6_8
.LBB6_3:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	160(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rsi
	addq	$-3, %rsi
	imulq	%rcx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	imulq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	movl	$3, %ecx
	movl	$3, %eax
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	%eax, 92(%rsp)                  # 4-byte Spill
.LBB6_4:                                # %for.body7
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	184(%rsp), %ecx                 # 4-byte Reload
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movq	120(%rsp), %r9                  # 8-byte Reload
	movq	128(%rsp), %r11                 # 8-byte Reload
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	176(%rsp), %rdx                 # 8-byte Reload
	movq	160(%rsp), %rax                 # 8-byte Reload
	movl	76(%rsp), %r14d                 # 4-byte Reload
	movq	80(%rsp), %rbx                  # 8-byte Reload
	movl	92(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, 4(%rsp)                   # 4-byte Spill
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %r10
	addq	%rbx, %r10
	movq	%r10, %r8
	addq	$-1, %r8
	addl	%r14d, %ebp
	movslq	%ebp, %r14
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	movzbl	(%rax,%r14), %eax
                                        # kill: def $rax killed $eax
	addq	%rax, %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	addq	$1, %r8
	movzbl	-1(%rsi,%rbx), %eax
	movl	%eax, %r14d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r14, %rax
	movzbl	(%rdx,%rax), %eax
	addl	$100, %eax
	addq	$1, %r8
	movzbl	(%rsi,%rbx), %ebp
	movl	%ebp, %r15d
	xorl	%ebp, %ebp
	movl	%ebp, %r14d
	subq	%r15, %r14
	movzbl	(%rdx,%r14), %ebp
	addl	%ebp, %eax
	movzbl	1(%rsi,%rbx), %esi
	movl	%esi, %ebx
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rbx, %rsi
	movzbl	(%rdx,%rsi), %esi
	addl	%esi, %eax
	addq	%rdi, %r8
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%r8, %rsi
	addq	$1, %rsi
	movzbl	1(%r10,%rdi), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	2(%r10,%rdi), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	3(%r10,%rdi), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	4(%r10,%rdi), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	5(%r10,%rdi), %r10d
	movl	%r10d, %ebx
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%rbx, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	addq	%r9, %rsi
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rsi, %r10
	addq	$1, %r10
	movzbl	4(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	5(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	6(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	7(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	8(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	9(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	10(%r8,%r9), %r8d
	movl	%r8d, %ebx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%rbx, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	addq	%r11, %r10
	movq	%r10, 48(%rsp)                  # 8-byte Spill
	movq	%r10, %r8
	addq	$1, %r8
	movzbl	6(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r8
	movzbl	7(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	8(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$2, %r8
	addq	$1, %r8
	movzbl	10(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r8
	movzbl	11(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	12(%rsi,%r11), %esi
	movl	%esi, %ebx
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rbx, %rsi
	movzbl	(%rdx,%rsi), %esi
	addl	%esi, %eax
	addq	%r11, %r8
	movq	%r8, %rsi
	addq	$1, %rsi
	movzbl	6(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	7(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	8(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	9(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	10(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	11(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	12(%r10,%r11), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	addq	%r9, %rsi
	movzbl	6(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	7(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	8(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	9(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	10(%r8,%r9), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	movzbl	4(%rsi,%rdi), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	movzbl	5(%rsi,%rdi), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	movzbl	6(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%edx, %eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	cmpl	%ecx, %eax
	jg	.LBB6_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB6_4 Depth=2
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	60(%rsp), %esi                  # 4-byte Reload
	movl	184(%rsp), %edx                 # 4-byte Reload
	subl	%esi, %edx
	movl	%edx, (%rax,%rcx,4)
.LBB6_6:                                # %for.inc
                                        #   in Loop: Header=BB6_4 Depth=2
	movl	104(%rsp), %esi                 # 4-byte Reload
	movl	4(%rsp), %eax                   # 4-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	movl	%ecx, %edx
	cmpl	%esi, %edx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	jne	.LBB6_4
# %bb.7:                                # %for.inc285.loopexit
                                        #   in Loop: Header=BB6_2 Depth=1
	jmp	.LBB6_8
.LBB6_8:                                # %for.inc285
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	196(%rsp), %edx                 # 4-byte Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jne	.LBB6_2
# %bb.9:                                # %for.end287.loopexit
	jmp	.LBB6_10
.LBB6_10:                               # %for.end287
                                        # implicit-def: $eax
	addq	$200, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	susan_principle, .Lfunc_end6-susan_principle
	.cfi_endproc
                                        # -- End function
	.globl	susan_principle_small           # -- Begin function susan_principle_small
	.p2align	4, 0x90
	.type	susan_principle_small,@function
susan_principle_small:                  # @susan_principle_small
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	120(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	%rdi, 136(%rsp)                 # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movl	%r8d, 156(%rsp)                 # 4-byte Spill
	movl	%r9d, 160(%rsp)                 # 4-byte Spill
	imull	%r8d, %r9d
	movslq	%r9d, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	160(%rsp), %r9d                 # 4-byte Reload
	addl	$-1, %r9d
	movl	%r9d, 164(%rsp)                 # 4-byte Spill
	cmpl	$1, %r9d
	jle	.LBB7_10
# %bb.1:                                # %for.cond3.preheader.lr.ph
	movl	156(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	cmpl	$1, %ecx
	setg	%cl
	movb	%cl, 95(%rsp)                   # 1-byte Spill
	movl	%eax, %ecx
	addl	$-2, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	cltq
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
.LBB7_2:                                # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movb	95(%rsp), %al                   # 1-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	testb	$1, %al
	jne	.LBB7_3
	jmp	.LBB7_8
.LBB7_3:                                # %for.body7.lr.ph
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rsi
	addq	$-1, %rsi
	imulq	%rcx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	imulq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	movl	$1, %ecx
	movl	$1, %eax
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%eax, 76(%rsp)                  # 4-byte Spill
.LBB7_4:                                # %for.body7
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	128(%rsp), %rax                 # 8-byte Reload
	movl	60(%rsp), %r11d                 # 4-byte Reload
	movq	64(%rsp), %r9                   # 8-byte Reload
	movl	76(%rsp), %r10d                 # 4-byte Reload
	movl	%r10d, 12(%rsp)                 # 4-byte Spill
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	movq	%r8, %rdi
	addq	%r9, %rdi
	movq	%rdi, %rdx
	addq	$-1, %rdx
	addl	%r11d, %r10d
	movslq	%r10d, %r10
	movq	%r10, 24(%rsp)                  # 8-byte Spill
	movzbl	(%rax,%r10), %eax
                                        # kill: def $rax killed $eax
	addq	%rax, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	addq	$1, %rdx
	movzbl	-1(%r8,%r9), %eax
	movl	%eax, %r10d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r10, %rax
	movzbl	(%rcx,%rax), %eax
	addl	$100, %eax
	addq	$1, %rdx
	movzbl	(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rcx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	1(%r8,%r9), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rcx,%r8), %r8d
	addl	%r8d, %eax
	addq	%rsi, %rdx
	movzbl	1(%rdi,%rsi), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rcx,%r8), %r8d
	addl	%r8d, %eax
	movzbl	3(%rdi,%rsi), %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rcx,%rdi), %edi
	addl	%edi, %eax
	movzbl	2(%rdx,%rsi), %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rcx,%rdi), %edi
	addl	%edi, %eax
	movzbl	3(%rdx,%rsi), %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rcx,%rdi), %edi
	addl	%edi, %eax
	movzbl	4(%rdx,%rsi), %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%rsi, %rdx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	cmpl	$731, %eax                      # imm = 0x2DB
	jge	.LBB7_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB7_4 Depth=2
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	44(%rsp), %esi                  # 4-byte Reload
	movl	$730, %edx                      # imm = 0x2DA
	subl	%esi, %edx
	movl	%edx, (%rax,%rcx,4)
.LBB7_6:                                # %for.inc
                                        #   in Loop: Header=BB7_4 Depth=2
	movl	88(%rsp), %esi                  # 4-byte Reload
	movl	12(%rsp), %eax                  # 4-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	movl	%ecx, %edx
	cmpl	%esi, %edx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	jne	.LBB7_4
# %bb.7:                                # %for.inc81.loopexit
                                        #   in Loop: Header=BB7_2 Depth=1
	jmp	.LBB7_8
.LBB7_8:                                # %for.inc81
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	164(%rsp), %edx                 # 4-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jne	.LBB7_2
# %bb.9:                                # %for.end83.loopexit
	jmp	.LBB7_10
.LBB7_10:                               # %for.end83
                                        # implicit-def: $eax
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	susan_principle_small, .Lfunc_end7-susan_principle_small
	.cfi_endproc
                                        # -- End function
	.globl	median                          # -- Begin function median
	.p2align	4, 0x90
	.type	median,@function
median:                                 # @median
	.cfi_startproc
# %bb.0:                                # %for.body60.preheader
	subq	$568, %rsp                      # imm = 0x238
	.cfi_def_cfa_offset 576
	movl	%esi, %eax
	movq	%rdi, 488(%rsp)                 # 8-byte Spill
	leaq	528(%rsp), %rsi
	movq	%rsi, 496(%rsp)                 # 8-byte Spill
	movl	%eax, %esi
	addl	$-1, %esi
	imull	%ecx, %esi
	addl	%edx, %esi
	movslq	%esi, %rsi
	movzbl	-1(%rdi,%rsi), %r8d
	movl	%r8d, 508(%rsp)                 # 4-byte Spill
	movl	%r8d, 528(%rsp)
	movzbl	(%rdi,%rsi), %r10d
	movzbl	1(%rdi,%rsi), %r9d
	movl	%ecx, %esi
	imull	%eax, %esi
	addl	%edx, %esi
	movslq	%esi, %rsi
	movzbl	-1(%rsi,%rdi), %r8d
	leaq	540(%rsp), %r11
	movq	%r11, 512(%rsp)                 # 8-byte Spill
	movzbl	1(%rsi,%rdi), %esi
	movd	%r10d, %xmm0
	pinsrw	$2, %r9d, %xmm0
	pinsrw	$4, %r8d, %xmm0
	pinsrw	$6, %esi, %xmm0
	leaq	528(%rsp), %rsi
	addq	$16, %rsi
	movq	%rsi, 520(%rsp)                 # 8-byte Spill
	movdqu	%xmm0, 532(%rsp)
	addl	$1, %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rdi,%rcx), %ecx
	movl	%ecx, 548(%rsp)
	movslq	%eax, %rcx
	movzbl	(%rdi,%rcx), %ecx
	movl	%ecx, 552(%rsp)
	addl	$1, %eax
	cltq
	movzbl	(%rdi,%rax), %eax
	movl	%eax, 556(%rsp)
# %bb.1:                                # %for.body60
	movl	508(%rsp), %ecx                 # 4-byte Reload
	leaq	528(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 472(%rsp)                 # 8-byte Spill
	movl	532(%rsp), %eax
	movl	%eax, 480(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 484(%rsp)                 # 4-byte Spill
	jg	.LBB8_3
.LBB8_2:                                # %for.cond56.backedge
	movl	484(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 452(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 456(%rsp)                 # 8-byte Spill
	movl	536(%rsp), %eax
	movl	%eax, 464(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 468(%rsp)                 # 4-byte Spill
	jg	.LBB8_51
	jmp	.LBB8_52
.LBB8_3:                                # %if.then
	movl	508(%rsp), %eax                 # 4-byte Reload
	movq	472(%rsp), %rcx                 # 8-byte Reload
	movl	480(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 528(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 484(%rsp)                 # 4-byte Spill
	jmp	.LBB8_2
.LBB8_4:                                # %for.body60.1
	movl	428(%rsp), %ecx                 # 4-byte Reload
	leaq	528(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 432(%rsp)                 # 8-byte Spill
	movl	532(%rsp), %eax
	movl	%eax, 444(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 448(%rsp)                 # 4-byte Spill
	jle	.LBB8_6
# %bb.5:                                # %if.then.1
	movl	428(%rsp), %eax                 # 4-byte Reload
	movq	432(%rsp), %rcx                 # 8-byte Reload
	movl	444(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 528(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 448(%rsp)                 # 4-byte Spill
.LBB8_6:                                # %for.cond56.backedge.1
	movl	448(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 404(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 408(%rsp)                 # 8-byte Spill
	movl	536(%rsp), %eax
	movl	%eax, 420(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 424(%rsp)                 # 4-byte Spill
	jg	.LBB8_41
	jmp	.LBB8_42
.LBB8_7:                                # %for.body60.2
	movl	380(%rsp), %ecx                 # 4-byte Reload
	leaq	528(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	movl	532(%rsp), %eax
	movl	%eax, 396(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 400(%rsp)                 # 4-byte Spill
	jle	.LBB8_9
# %bb.8:                                # %if.then.2
	movl	380(%rsp), %eax                 # 4-byte Reload
	movq	384(%rsp), %rcx                 # 8-byte Reload
	movl	396(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 528(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 400(%rsp)                 # 4-byte Spill
.LBB8_9:                                # %for.cond56.backedge.2
	movl	400(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 356(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 360(%rsp)                 # 8-byte Spill
	movl	536(%rsp), %eax
	movl	%eax, 372(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 376(%rsp)                 # 4-byte Spill
	jg	.LBB8_33
	jmp	.LBB8_34
.LBB8_10:                               # %for.body60.3
	movl	332(%rsp), %ecx                 # 4-byte Reload
	leaq	528(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 336(%rsp)                 # 8-byte Spill
	movl	532(%rsp), %eax
	movl	%eax, 348(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 352(%rsp)                 # 4-byte Spill
	jle	.LBB8_12
# %bb.11:                               # %if.then.3
	movl	332(%rsp), %eax                 # 4-byte Reload
	movq	336(%rsp), %rcx                 # 8-byte Reload
	movl	348(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 528(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 352(%rsp)                 # 4-byte Spill
.LBB8_12:                               # %for.cond56.backedge.3
	movl	352(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 308(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	movl	536(%rsp), %eax
	movl	%eax, 324(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 328(%rsp)                 # 4-byte Spill
	jg	.LBB8_27
	jmp	.LBB8_28
.LBB8_13:                               # %for.body60.4
	movl	284(%rsp), %ecx                 # 4-byte Reload
	leaq	528(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	movl	532(%rsp), %eax
	movl	%eax, 300(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 304(%rsp)                 # 4-byte Spill
	jle	.LBB8_15
# %bb.14:                               # %if.then.4
	movl	284(%rsp), %eax                 # 4-byte Reload
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movl	300(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 528(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 304(%rsp)                 # 4-byte Spill
.LBB8_15:                               # %for.cond56.backedge.4
	movl	304(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 260(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movl	536(%rsp), %eax
	movl	%eax, 276(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 280(%rsp)                 # 4-byte Spill
	jg	.LBB8_23
	jmp	.LBB8_24
.LBB8_16:                               # %for.body60.5
	movl	236(%rsp), %ecx                 # 4-byte Reload
	leaq	528(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movl	532(%rsp), %eax
	movl	%eax, 252(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 256(%rsp)                 # 4-byte Spill
	jle	.LBB8_18
# %bb.17:                               # %if.then.5
	movl	236(%rsp), %eax                 # 4-byte Reload
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movl	252(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 528(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 256(%rsp)                 # 4-byte Spill
.LBB8_18:                               # %for.cond56.backedge.5
	movl	256(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 220(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rcx
	addq	$8, %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	movl	536(%rsp), %ecx
	movl	%ecx, 232(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jg	.LBB8_21
	jmp	.LBB8_22
.LBB8_19:                               # %if.then.6
	movq	208(%rsp), %rax                 # 8-byte Reload
	movl	204(%rsp), %ecx                 # 4-byte Reload
	movl	200(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 528(%rsp)
	movl	%ecx, (%rax)
.LBB8_20:                               # %for.inc78.6
	movq	520(%rsp), %rcx                 # 8-byte Reload
	movq	512(%rsp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	addl	(%rcx), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movzbl	%al, %eax
	addq	$568, %rsp                      # imm = 0x238
	.cfi_def_cfa_offset 8
	retq
.LBB8_21:                               # %if.then.5.1
	.cfi_def_cfa_offset 576
	movq	224(%rsp), %rax                 # 8-byte Reload
	movl	220(%rsp), %ecx                 # 4-byte Reload
	movl	232(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 532(%rsp)
	movl	%ecx, (%rax)
.LBB8_22:                               # %for.cond56.backedge.5.1
	movq	496(%rsp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 204(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rcx
	addq	$4, %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movl	532(%rsp), %ecx
	movl	%ecx, 200(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jg	.LBB8_19
	jmp	.LBB8_20
.LBB8_23:                               # %if.then.4.1
	movl	260(%rsp), %eax                 # 4-byte Reload
	movq	264(%rsp), %rcx                 # 8-byte Reload
	movl	276(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 532(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 280(%rsp)                 # 4-byte Spill
.LBB8_24:                               # %for.cond56.backedge.4.1
	movl	280(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 180(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rcx
	addq	$12, %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movl	540(%rsp), %ecx
	movl	%ecx, 196(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jle	.LBB8_26
# %bb.25:                               # %if.then.4.2
	movq	184(%rsp), %rax                 # 8-byte Reload
	movl	180(%rsp), %ecx                 # 4-byte Reload
	movl	196(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 536(%rsp)
	movl	%ecx, (%rax)
.LBB8_26:                               # %for.cond56.backedge.4.2
	movq	496(%rsp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 236(%rsp)                 # 4-byte Spill
	jmp	.LBB8_16
.LBB8_27:                               # %if.then.3.1
	movl	308(%rsp), %eax                 # 4-byte Reload
	movq	312(%rsp), %rcx                 # 8-byte Reload
	movl	324(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 532(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 328(%rsp)                 # 4-byte Spill
.LBB8_28:                               # %for.cond56.backedge.3.1
	movl	328(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 156(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$12, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movl	540(%rsp), %eax
	movl	%eax, 172(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 176(%rsp)                 # 4-byte Spill
	jle	.LBB8_30
# %bb.29:                               # %if.then.3.2
	movl	156(%rsp), %eax                 # 4-byte Reload
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movl	172(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 536(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 176(%rsp)                 # 4-byte Spill
.LBB8_30:                               # %for.cond56.backedge.3.2
	movl	176(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 140(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rcx
	addq	$16, %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movl	544(%rsp), %ecx
	movl	%ecx, 152(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jle	.LBB8_32
# %bb.31:                               # %if.then.3.3
	movq	144(%rsp), %rax                 # 8-byte Reload
	movl	140(%rsp), %ecx                 # 4-byte Reload
	movl	152(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 540(%rsp)
	movl	%ecx, (%rax)
.LBB8_32:                               # %for.cond56.backedge.3.3
	movq	496(%rsp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 284(%rsp)                 # 4-byte Spill
	jmp	.LBB8_13
.LBB8_33:                               # %if.then.2.1
	movl	356(%rsp), %eax                 # 4-byte Reload
	movq	360(%rsp), %rcx                 # 8-byte Reload
	movl	372(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 532(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 376(%rsp)                 # 4-byte Spill
.LBB8_34:                               # %for.cond56.backedge.2.1
	movl	376(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 116(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$12, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	540(%rsp), %eax
	movl	%eax, 132(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 136(%rsp)                 # 4-byte Spill
	jle	.LBB8_36
# %bb.35:                               # %if.then.2.2
	movl	116(%rsp), %eax                 # 4-byte Reload
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movl	132(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 536(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 136(%rsp)                 # 4-byte Spill
.LBB8_36:                               # %for.cond56.backedge.2.2
	movl	136(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 92(%rsp)                  # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$16, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movl	544(%rsp), %eax
	movl	%eax, 108(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 112(%rsp)                 # 4-byte Spill
	jle	.LBB8_38
# %bb.37:                               # %if.then.2.3
	movl	92(%rsp), %eax                  # 4-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movl	108(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 540(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 112(%rsp)                 # 4-byte Spill
.LBB8_38:                               # %for.cond56.backedge.2.3
	movl	112(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 76(%rsp)                  # 4-byte Spill
	leaq	528(%rsp), %rcx
	addq	$20, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	548(%rsp), %ecx
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	cmpl	%ecx, %eax
	jle	.LBB8_40
# %bb.39:                               # %if.then.2.4
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	76(%rsp), %ecx                  # 4-byte Reload
	movl	88(%rsp), %edx                  # 4-byte Reload
	movl	%edx, 544(%rsp)
	movl	%ecx, (%rax)
.LBB8_40:                               # %for.cond56.backedge.2.4
	movq	496(%rsp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 332(%rsp)                 # 4-byte Spill
	jmp	.LBB8_10
.LBB8_41:                               # %if.then.1.1
	movl	404(%rsp), %eax                 # 4-byte Reload
	movq	408(%rsp), %rcx                 # 8-byte Reload
	movl	420(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 532(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 424(%rsp)                 # 4-byte Spill
.LBB8_42:                               # %for.cond56.backedge.1.1
	movl	424(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$12, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movl	540(%rsp), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	jle	.LBB8_44
# %bb.43:                               # %if.then.1.2
	movl	52(%rsp), %eax                  # 4-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	68(%rsp), %edx                  # 4-byte Reload
	movl	%edx, 536(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 72(%rsp)                  # 4-byte Spill
.LBB8_44:                               # %for.cond56.backedge.1.2
	movl	72(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$16, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	544(%rsp), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	jle	.LBB8_46
# %bb.45:                               # %if.then.1.3
	movl	28(%rsp), %eax                  # 4-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	44(%rsp), %edx                  # 4-byte Reload
	movl	%edx, 540(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 48(%rsp)                  # 4-byte Spill
.LBB8_46:                               # %for.cond56.backedge.1.3
	movl	48(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$20, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	548(%rsp), %eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	jle	.LBB8_48
# %bb.47:                               # %if.then.1.4
	movl	4(%rsp), %eax                   # 4-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	20(%rsp), %edx                  # 4-byte Reload
	movl	%edx, 544(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 24(%rsp)                  # 4-byte Spill
.LBB8_48:                               # %for.cond56.backedge.1.4
	movl	24(%rsp), %eax                  # 4-byte Reload
	movl	%eax, -12(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rcx
	addq	$24, %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movl	552(%rsp), %ecx
	movl	%ecx, (%rsp)                    # 4-byte Spill
	cmpl	%ecx, %eax
	jle	.LBB8_50
# %bb.49:                               # %if.then.1.5
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	-12(%rsp), %ecx                 # 4-byte Reload
	movl	(%rsp), %edx                    # 4-byte Reload
	movl	%edx, 548(%rsp)
	movl	%ecx, (%rax)
.LBB8_50:                               # %for.cond56.backedge.1.5
	movq	496(%rsp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 380(%rsp)                 # 4-byte Spill
	jmp	.LBB8_7
.LBB8_51:                               # %if.then.1140
	movl	452(%rsp), %eax                 # 4-byte Reload
	movq	456(%rsp), %rcx                 # 8-byte Reload
	movl	464(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 532(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, 468(%rsp)                 # 4-byte Spill
.LBB8_52:                               # %for.cond56.backedge.1141
	movl	468(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, -36(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$12, %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movl	540(%rsp), %eax
	movl	%eax, -20(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, -16(%rsp)                 # 4-byte Spill
	jle	.LBB8_54
# %bb.53:                               # %if.then.2146
	movl	-36(%rsp), %eax                 # 4-byte Reload
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movl	-20(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 536(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, -16(%rsp)                 # 4-byte Spill
.LBB8_54:                               # %for.cond56.backedge.2147
	movl	-16(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, -60(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movl	544(%rsp), %eax
	movl	%eax, -44(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, -40(%rsp)                 # 4-byte Spill
	jle	.LBB8_56
# %bb.55:                               # %if.then.3152
	movl	-60(%rsp), %eax                 # 4-byte Reload
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	movl	-44(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 540(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, -40(%rsp)                 # 4-byte Spill
.LBB8_56:                               # %for.cond56.backedge.3153
	movl	-40(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, -84(%rsp)                 # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$20, %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movl	548(%rsp), %eax
	movl	%eax, -68(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, -64(%rsp)                 # 4-byte Spill
	jle	.LBB8_58
# %bb.57:                               # %if.then.4158
	movl	-84(%rsp), %eax                 # 4-byte Reload
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	movl	-68(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 544(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, -64(%rsp)                 # 4-byte Spill
.LBB8_58:                               # %for.cond56.backedge.4159
	movl	-64(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, -108(%rsp)                # 4-byte Spill
	leaq	528(%rsp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movl	552(%rsp), %eax
	movl	%eax, -92(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	movl	%eax, -88(%rsp)                 # 4-byte Spill
	jle	.LBB8_60
# %bb.59:                               # %if.then.5164
	movl	-108(%rsp), %eax                # 4-byte Reload
	movq	-104(%rsp), %rcx                # 8-byte Reload
	movl	-92(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 548(%rsp)
	movl	%eax, (%rcx)
	movl	%eax, -88(%rsp)                 # 4-byte Spill
.LBB8_60:                               # %for.cond56.backedge.5165
	movl	-88(%rsp), %eax                 # 4-byte Reload
	movl	%eax, -124(%rsp)                # 4-byte Spill
	leaq	528(%rsp), %rcx
	addq	$28, %rcx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	movl	556(%rsp), %ecx
	movl	%ecx, -112(%rsp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jle	.LBB8_62
# %bb.61:                               # %if.then.6169
	movq	-120(%rsp), %rax                # 8-byte Reload
	movl	-124(%rsp), %ecx                # 4-byte Reload
	movl	-112(%rsp), %edx                # 4-byte Reload
	movl	%edx, 552(%rsp)
	movl	%ecx, (%rax)
.LBB8_62:                               # %for.cond56.backedge.6
	movq	496(%rsp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 428(%rsp)                 # 4-byte Spill
	jmp	.LBB8_4
.Lfunc_end8:
	.size	median, .Lfunc_end8-median
	.cfi_endproc
                                        # -- End function
	.globl	enlarge                         # -- Begin function enlarge
	.p2align	4, 0x90
	.type	enlarge,@function
enlarge:                                # @enlarge
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$360, %rsp                      # imm = 0x168
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 320(%rsp)                 # 8-byte Spill
	movq	%rsi, 328(%rsp)                 # 8-byte Spill
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	movl	%r8d, 356(%rsp)                 # 4-byte Spill
	cmpl	$0, (%rcx)
	jle	.LBB9_3
# %bb.1:                                # %for.body.lr.ph
	movl	356(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	%ecx, 300(%rsp)                 # 4-byte Spill
	cltq
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, 316(%rsp)                 # 4-byte Spill
	jmp	.LBB9_5
.LBB9_2:                                # %for.cond8.preheader.loopexit
	jmp	.LBB9_3
.LBB9_3:                                # %for.cond8.preheader
	movl	356(%rsp), %eax                 # 4-byte Reload
	cmpl	$0, %eax
	setg	%al
	movb	%al, 299(%rsp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB9_4
	jmp	.LBB9_7
.LBB9_4:                                # %for.body11.lr.ph
	movl	356(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, 272(%rsp)                 # 4-byte Spill
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	%ecx, 276(%rsp)                 # 4-byte Spill
	cltq
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	%ecx, 288(%rsp)                 # 4-byte Spill
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jmp	.LBB9_9
.LBB9_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	316(%rsp), %edx                 # 4-byte Reload
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rsi                 # 8-byte Reload
	movq	328(%rsp), %rdi                 # 8-byte Reload
	movl	300(%rsp), %r10d                # 4-byte Reload
	movq	336(%rsp), %rax                 # 8-byte Reload
	movl	356(%rsp), %r8d                 # 4-byte Reload
	movl	%edx, 264(%rsp)                 # 4-byte Spill
	movl	%edx, %r9d
	addl	%r8d, %r9d
	movl	%r9d, 220(%rsp)                 # 4-byte Spill
	movl	(%rax), %eax
	movl	%eax, %r8d
	addl	%r10d, %r8d
	movl	%r8d, 224(%rsp)                 # 4-byte Spill
	imull	%r9d, %r8d
	movl	%r8d, 228(%rsp)                 # 4-byte Spill
	movslq	%r8d, %r8
	addq	%r8, %rdi
	movq	%rdi, 232(%rsp)                 # 8-byte Spill
	addq	%rsi, %rdi
	movq	%rdi, 240(%rsp)                 # 8-byte Spill
	movq	(%rcx), %rsi
	movl	%eax, %ecx
	imull	%edx, %ecx
	movl	%ecx, 252(%rsp)                 # 4-byte Spill
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	%rsi, 256(%rsp)                 # 8-byte Spill
	movslq	%eax, %rdx
	callq	memcpy@PLT
	movl	264(%rsp), %eax                 # 4-byte Reload
	movq	344(%rsp), %rcx                 # 8-byte Reload
	addl	$1, %eax
	movl	%eax, 268(%rsp)                 # 4-byte Spill
	cmpl	(%rcx), %eax
	movl	%eax, 316(%rsp)                 # 4-byte Spill
	jl	.LBB9_5
	jmp	.LBB9_2
.LBB9_6:                                # %for.cond42.preheader
	movb	299(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_8
	jmp	.LBB9_7
.LBB9_7:                                # %for.cond42.preheader.for.end87_crit_edge
	movl	356(%rsp), %eax                 # 4-byte Reload
	shll	$1, %eax
	movl	%eax, 216(%rsp)                 # 4-byte Spill
	jmp	.LBB9_16
.LBB9_8:                                # %for.cond46.preheader.lr.ph
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	356(%rsp), %ecx                 # 4-byte Reload
	shll	$1, %ecx
	movl	%ecx, 200(%rsp)                 # 4-byte Spill
	movl	(%rax), %ecx
	xorl	%eax, %eax
	movl	%ecx, 204(%rsp)                 # 4-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 208(%rsp)                 # 4-byte Spill
	movl	%eax, 212(%rsp)                 # 4-byte Spill
	jmp	.LBB9_10
.LBB9_9:                                # %for.body11
                                        # =>This Inner Loop Header: Depth=1
	movl	292(%rsp), %edx                 # 4-byte Reload
	movl	288(%rsp), %r8d                 # 4-byte Reload
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movq	280(%rsp), %rsi                 # 8-byte Reload
	movq	328(%rsp), %rdi                 # 8-byte Reload
	movl	276(%rsp), %r10d                # 4-byte Reload
	movq	336(%rsp), %rax                 # 8-byte Reload
	movl	272(%rsp), %r9d                 # 4-byte Reload
	movl	%edx, 188(%rsp)                 # 4-byte Spill
	movl	%r8d, 124(%rsp)                 # 4-byte Spill
	addl	%r8d, %r9d
	movl	%r9d, 76(%rsp)                  # 4-byte Spill
	movl	(%rax), %eax
	movl	%eax, %r8d
	addl	%r10d, %r8d
	movl	%r8d, 80(%rsp)                  # 4-byte Spill
	imull	%r9d, %r8d
	movl	%r8d, 84(%rsp)                  # 4-byte Spill
	movslq	%r8d, %r8
	addq	%r8, %rdi
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	addq	%rsi, %rdi
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movq	(%rcx), %rsi
	movl	%eax, %ecx
	imull	%edx, %ecx
	movl	%ecx, 108(%rsp)                 # 4-byte Spill
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	movslq	%eax, %rdx
	callq	memcpy@PLT
	movq	344(%rsp), %rdx                 # 8-byte Reload
	movq	336(%rsp), %rax                 # 8-byte Reload
	movl	276(%rsp), %r11d                # 4-byte Reload
	movq	328(%rsp), %rdi                 # 8-byte Reload
	movq	280(%rsp), %r8                  # 8-byte Reload
	movq	320(%rsp), %rsi                 # 8-byte Reload
	movl	124(%rsp), %ecx                 # 4-byte Reload
	movl	188(%rsp), %r9d                 # 4-byte Reload
	movl	356(%rsp), %r10d                # 4-byte Reload
	movl	(%rdx), %edx
	addl	%r10d, %r9d
	movl	%r9d, 128(%rsp)                 # 4-byte Spill
	addl	%edx, %r9d
	movl	%r9d, 132(%rsp)                 # 4-byte Spill
	movl	(%rax), %eax
	movl	%eax, %r10d
	addl	%r11d, %r10d
	movl	%r10d, 136(%rsp)                # 4-byte Spill
	imull	%r10d, %r9d
	movl	%r9d, 140(%rsp)                 # 4-byte Spill
	movslq	%r9d, %r9
	addq	%r9, %rdi
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	addq	%r8, %rdi
	movq	%rdi, 152(%rsp)                 # 8-byte Spill
	movq	(%rsi), %rsi
	addl	$-1, %ecx
	movl	%ecx, 164(%rsp)                 # 4-byte Spill
	addl	%edx, %ecx
	movl	%ecx, 168(%rsp)                 # 4-byte Spill
	imull	%eax, %ecx
	movl	%ecx, 172(%rsp)                 # 4-byte Spill
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movq	%rsi, 176(%rsp)                 # 8-byte Spill
	movslq	%eax, %rdx
	callq	memcpy@PLT
	movl	188(%rsp), %ecx                 # 4-byte Reload
	movl	356(%rsp), %edx                 # 4-byte Reload
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, 192(%rsp)                 # 4-byte Spill
	xorl	$-1, %ecx
	movl	%ecx, 196(%rsp)                 # 4-byte Spill
	cmpl	%edx, %eax
	movl	%ecx, 288(%rsp)                 # 4-byte Spill
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	je	.LBB9_6
	jmp	.LBB9_9
.LBB9_10:                               # %for.cond46.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
	movl	200(%rsp), %edx                 # 4-byte Reload
	movl	204(%rsp), %eax                 # 4-byte Reload
	movl	208(%rsp), %ecx                 # 4-byte Reload
	movl	212(%rsp), %esi                 # 4-byte Reload
	movl	%esi, 64(%rsp)                  # 4-byte Spill
	movl	%ecx, 68(%rsp)                  # 4-byte Spill
	movl	%eax, %ecx
	addl	%edx, %ecx
	cmpl	$0, %ecx
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	jle	.LBB9_14
# %bb.11:                               # %for.body51.lr.ph
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	68(%rsp), %eax                  # 4-byte Reload
	addl	$-1, %eax
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
.LBB9_12:                               # %for.body51
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	60(%rsp), %ecx                  # 4-byte Reload
	movl	200(%rsp), %esi                 # 4-byte Reload
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	328(%rsp), %rdx                 # 8-byte Reload
	movl	64(%rsp), %r9d                  # 4-byte Reload
	movl	56(%rsp), %r8d                  # 4-byte Reload
	movl	356(%rsp), %r11d                # 4-byte Reload
	movq	336(%rsp), %rdi                 # 8-byte Reload
	movl	%esi, %ebp
	addl	(%rdi), %ebp
	movl	%ebp, (%rsp)                    # 4-byte Spill
	imull	%ecx, %ebp
	movl	%ebp, 4(%rsp)                   # 4-byte Spill
	addl	%r11d, %ebp
	movl	%ebp, 8(%rsp)                   # 4-byte Spill
	movl	%ebp, %r10d
	addl	%r9d, %r10d
	movl	%r10d, 12(%rsp)                 # 4-byte Spill
	movslq	%r10d, %r10
	movb	(%rdx,%r10), %bl
	movl	%r8d, %r10d
	addl	%ebp, %r10d
	movl	%r10d, 16(%rsp)                 # 4-byte Spill
	movslq	%r10d, %r10
	movb	%bl, (%rdx,%r10)
	movl	(%rdi), %edi
	movl	%edi, %r10d
	addl	%esi, %r10d
	movl	%r10d, 20(%rsp)                 # 4-byte Spill
	imull	%ecx, %r10d
	movl	%r10d, 24(%rsp)                 # 4-byte Spill
	addl	%r11d, %edi
	movl	%edi, 28(%rsp)                  # 4-byte Spill
	addl	%r10d, %edi
	movl	%edi, 32(%rsp)                  # 4-byte Spill
	addl	%edi, %r8d
	movl	%r8d, 36(%rsp)                  # 4-byte Spill
	movslq	%r8d, %r8
	movb	(%rdx,%r8), %r8b
	addl	%r9d, %edi
	movl	%edi, 40(%rsp)                  # 4-byte Spill
	movslq	%edi, %rdi
	movb	%r8b, (%rdx,%rdi)
	addl	$1, %ecx
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	movl	(%rax), %eax
	movl	%eax, %edx
	addl	%esi, %edx
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	cmpl	%edx, %ecx
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	jl	.LBB9_12
# %bb.13:                               # %for.inc85.loopexit
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	52(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 72(%rsp)                  # 4-byte Spill
.LBB9_14:                               # %for.inc85
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	356(%rsp), %esi                 # 4-byte Reload
	movl	64(%rsp), %ecx                  # 4-byte Reload
	movl	72(%rsp), %edx                  # 4-byte Reload
	movl	%ecx, %eax
	addl	$1, %eax
	xorl	$-1, %ecx
	cmpl	%esi, %eax
	movl	%edx, 204(%rsp)                 # 4-byte Spill
	movl	%ecx, 208(%rsp)                 # 4-byte Spill
	movl	%eax, 212(%rsp)                 # 4-byte Spill
	jne	.LBB9_10
# %bb.15:                               # %for.end87.loopexit
	movl	200(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 216(%rsp)                 # 4-byte Spill
	jmp	.LBB9_16
.LBB9_16:                               # %for.end87
	movq	320(%rsp), %rax                 # 8-byte Reload
	movq	328(%rsp), %rcx                 # 8-byte Reload
	movq	344(%rsp), %rdx                 # 8-byte Reload
	movq	336(%rsp), %rdi                 # 8-byte Reload
	movl	216(%rsp), %esi                 # 4-byte Reload
	movl	%esi, %r8d
	addl	(%rdi), %r8d
	movl	%r8d, (%rdi)
	addl	(%rdx), %esi
	movl	%esi, (%rdx)
	movq	%rcx, (%rax)
                                        # implicit-def: $eax
	addq	$360, %rsp                      # imm = 0x168
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	enlarge, .Lfunc_end9-enlarge
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function susan_smoothing
.LCPI10_0:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI10_3:
	.quad	0x4059000000000000              # double 100
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI10_1:
	.long	0x41700000                      # float 15
.LCPI10_2:
	.long	0x80000000                      # float -0
	.text
	.globl	susan_smoothing
	.p2align	4, 0x90
	.type	susan_smoothing,@function
susan_smoothing:                        # @susan_smoothing
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$776, %rsp                      # imm = 0x308
	.cfi_def_cfa_offset 832
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 720(%rsp)                 # 8-byte Spill
	movl	%edx, 728(%rsp)                 # 4-byte Spill
	movl	%ecx, 732(%rsp)                 # 4-byte Spill
	movq	%r8, 736(%rsp)                  # 8-byte Spill
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 748(%rsp)                # 4-byte Spill
	movq	%rsi, 768(%rsp)
	movl	%edx, 764(%rsp)
	movl	%ecx, 760(%rsp)
	cmpl	$0, %edi
	sete	%cl
	movb	%cl, 755(%rsp)                  # 1-byte Spill
	movl	$1, %eax
	testb	$1, %cl
	movl	%eax, 756(%rsp)                 # 4-byte Spill
	jne	.LBB10_1
	jmp	.LBB10_2
.LBB10_1:                               # %if.then
	movss	748(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI10_0(%rip), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	addl	$1, %eax
	movl	%eax, 756(%rsp)                 # 4-byte Spill
.LBB10_2:                               # %if.end
	movss	748(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	756(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 716(%rsp)                 # 4-byte Spill
	movss	.LCPI10_1(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB10_4
# %bb.3:                                # %if.then14
	movss	748(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.25, %rdi
	movb	$1, %al
	callq	printf@PLT
	movabsq	$.Lstr.44, %rdi
	callq	puts@PLT
	movabsq	$.Lstr.45, %rdi
	callq	puts@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB10_4:                               # %if.end18
	movl	732(%rsp), %edx                 # 4-byte Reload
	movl	728(%rsp), %eax                 # 4-byte Reload
	movl	716(%rsp), %ecx                 # 4-byte Reload
	shll	$1, %ecx
	movl	%ecx, 708(%rsp)                 # 4-byte Spill
	orl	$1, %ecx
	movl	%ecx, 712(%rsp)                 # 4-byte Spill
	cmpl	%eax, %ecx
	setg	%al
	cmpl	%edx, %ecx
	setg	%cl
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB10_5
	jmp	.LBB10_6
.LBB10_5:                               # %if.then27
	movl	732(%rsp), %ecx                 # 4-byte Reload
	movl	728(%rsp), %edx                 # 4-byte Reload
	movl	716(%rsp), %esi                 # 4-byte Reload
	movabsq	$.L.str.28, %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB10_6:                               # %if.end29
	movl	732(%rsp), %edx                 # 4-byte Reload
	movl	708(%rsp), %eax                 # 4-byte Reload
	movl	728(%rsp), %esi                 # 4-byte Reload
	movl	%eax, %ecx
	addl	%esi, %ecx
	addl	%edx, %eax
	imull	%ecx, %eax
	movslq	%eax, %rdi
	callq	malloc@PLT
	movl	716(%rsp), %r8d                 # 4-byte Reload
	movq	%rax, %rsi
	leaq	768(%rsp), %rdi
	leaq	764(%rsp), %rdx
	leaq	760(%rsp), %rcx
	callq	enlarge@PLT
                                        # kill: def $ecx killed $eax
	movb	755(%rsp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_9
# %bb.7:                                # %for.cond139.preheader
	movl	760(%rsp), %eax
	movl	%eax, 704(%rsp)                 # 4-byte Spill
	addl	$-1, %eax
	cmpl	$1, %eax
	jle	.LBB10_40
# %bb.8:                                # %for.cond144.preheader.preheader
	movq	720(%rsp), %rcx                 # 8-byte Reload
	movl	704(%rsp), %esi                 # 4-byte Reload
	movl	764(%rsp), %edx
	movl	$1, %eax
	movl	%esi, 680(%rsp)                 # 4-byte Spill
	movl	%edx, 684(%rsp)                 # 4-byte Spill
	movq	%rcx, 688(%rsp)                 # 8-byte Spill
	movl	%eax, 700(%rsp)                 # 4-byte Spill
	jmp	.LBB10_30
.LBB10_9:                               # %if.then40
	movl	712(%rsp), %eax                 # 4-byte Reload
	movl	764(%rsp), %ecx
	subl	%eax, %ecx
	movl	%ecx, 652(%rsp)                 # 4-byte Spill
	imull	%eax, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	malloc@PLT
	movss	748(%rsp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rcx
	movl	716(%rsp), %eax                 # 4-byte Reload
	movq	%rcx, 656(%rsp)                 # 8-byte Spill
	mulss	%xmm1, %xmm1
	movss	.LCPI10_2(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	%xmm0, 668(%rsp)                # 4-byte Spill
	xorl	%ecx, %ecx
	subl	%eax, %ecx
	movl	%ecx, 672(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	setl	%al
	movb	%al, 679(%rsp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB10_13
# %bb.10:                               # %for.body55.lr.ph.preheader
	movl	672(%rsp), %eax                 # 4-byte Reload
	movq	656(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 640(%rsp)                 # 8-byte Spill
	movl	%eax, 648(%rsp)                 # 4-byte Spill
	jmp	.LBB10_11
.LBB10_11:                              # %for.body55.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
	movl	672(%rsp), %eax                 # 4-byte Reload
	movq	640(%rsp), %rcx                 # 8-byte Reload
	movl	648(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 616(%rsp)                 # 4-byte Spill
	imull	%edx, %edx
	movl	%edx, 620(%rsp)                 # 4-byte Spill
	movq	%rcx, 624(%rsp)                 # 8-byte Spill
	movl	%eax, 636(%rsp)                 # 4-byte Spill
	jmp	.LBB10_15
.LBB10_12:                              # %for.cond68.preheader.loopexit
	jmp	.LBB10_13
.LBB10_13:                              # %for.cond68.preheader
	movl	716(%rsp), %eax                 # 4-byte Reload
	movl	760(%rsp), %ecx
	movl	%ecx, 612(%rsp)                 # 4-byte Spill
	subl	%eax, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_40
# %bb.14:                               # %for.cond73.preheader.lr.ph
	movl	716(%rsp), %eax                 # 4-byte Reload
	movq	720(%rsp), %rcx                 # 8-byte Reload
	movl	612(%rsp), %edx                 # 4-byte Reload
	movl	652(%rsp), %esi                 # 4-byte Reload
	movslq	%eax, %r8
	movq	%r8, 568(%rsp)                  # 8-byte Spill
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movq	%rdi, 576(%rsp)                 # 8-byte Spill
	movslq	%esi, %rsi
	movq	%rsi, 584(%rsp)                 # 8-byte Spill
	movl	%edx, 596(%rsp)                 # 4-byte Spill
	movq	%rcx, 600(%rsp)                 # 8-byte Spill
	movl	%eax, 608(%rsp)                 # 4-byte Spill
	jmp	.LBB10_17
.LBB10_15:                              # %for.body55
                                        #   Parent Loop BB10_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	636(%rsp), %eax                 # 4-byte Reload
	movq	624(%rsp), %rdx                 # 8-byte Reload
	movss	668(%rsp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	620(%rsp), %ecx                 # 4-byte Reload
	movl	%eax, 532(%rsp)                 # 4-byte Spill
	movq	%rdx, 520(%rsp)                 # 8-byte Spill
	imull	%eax, %eax
	movl	%eax, 508(%rsp)                 # 4-byte Spill
	addl	%ecx, %eax
	movl	%eax, 512(%rsp)                 # 4-byte Spill
	cvtsi2ss	%eax, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 516(%rsp)                # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	exp@PLT
	movq	520(%rsp), %rcx                 # 8-byte Reload
	movl	716(%rsp), %esi                 # 4-byte Reload
	movl	532(%rsp), %edx                 # 4-byte Reload
	movsd	.LCPI10_3(%rip), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 536(%rsp)                # 8-byte Spill
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, 544(%rsp)                 # 8-byte Spill
	movb	%dil, (%rcx)
	movl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, 556(%rsp)                 # 4-byte Spill
	cmpl	%esi, %edx
	movq	%rax, %rdx
	movq	%rdx, 624(%rsp)                 # 8-byte Spill
	movl	%ecx, 636(%rsp)                 # 4-byte Spill
	movq	%rax, 560(%rsp)                 # 8-byte Spill
	jl	.LBB10_15
# %bb.16:                               # %for.inc65
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	616(%rsp), %edx                 # 4-byte Reload
	movl	716(%rsp), %esi                 # 4-byte Reload
	movq	560(%rsp), %rcx                 # 8-byte Reload
	movl	%edx, %eax
	addl	$1, %eax
	cmpl	%esi, %edx
	movq	%rcx, 640(%rsp)                 # 8-byte Spill
	movl	%eax, 648(%rsp)                 # 4-byte Spill
	jl	.LBB10_11
	jmp	.LBB10_12
.LBB10_17:                              # %for.cond73.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_19 Depth 2
                                        #       Child Loop BB10_21 Depth 3
                                        #         Child Loop BB10_22 Depth 4
	movl	716(%rsp), %edx                 # 4-byte Reload
	movl	596(%rsp), %ecx                 # 4-byte Reload
	movq	600(%rsp), %rax                 # 8-byte Reload
	movl	608(%rsp), %esi                 # 4-byte Reload
	movl	%esi, 476(%rsp)                 # 4-byte Spill
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	movl	764(%rsp), %esi
	movl	%esi, 488(%rsp)                 # 4-byte Spill
	subl	%edx, %esi
	cmpl	%esi, %edx
	movl	%ecx, 492(%rsp)                 # 4-byte Spill
	movq	%rax, 496(%rsp)                 # 8-byte Spill
	jge	.LBB10_29
# %bb.18:                               # %for.body77.lr.ph
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	480(%rsp), %rax                 # 8-byte Reload
	movl	488(%rsp), %ecx                 # 4-byte Reload
	movq	568(%rsp), %rdx                 # 8-byte Reload
	movl	716(%rsp), %edi                 # 4-byte Reload
	movl	476(%rsp), %esi                 # 4-byte Reload
	subl	%edi, %esi
	movl	%esi, 444(%rsp)                 # 4-byte Spill
	movq	%rdx, 448(%rsp)                 # 8-byte Spill
	movl	%ecx, 460(%rsp)                 # 4-byte Spill
	movq	%rax, 464(%rsp)                 # 8-byte Spill
.LBB10_19:                              # %for.body77
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_21 Depth 3
                                        #         Child Loop BB10_22 Depth 4
	movb	679(%rsp), %dl                  # 1-byte Reload
	movq	736(%rsp), %rax                 # 8-byte Reload
	movl	476(%rsp), %r8d                 # 4-byte Reload
	movq	448(%rsp), %rdi                 # 8-byte Reload
	movl	460(%rsp), %esi                 # 4-byte Reload
	movq	464(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movl	%esi, 396(%rsp)                 # 4-byte Spill
	movq	%rdi, 400(%rsp)                 # 8-byte Spill
	movq	768(%rsp), %rcx
	movq	%rcx, 408(%rsp)                 # 8-byte Spill
	imull	%r8d, %esi
	movl	%edi, 416(%rsp)                 # 4-byte Spill
	addl	%edi, %esi
	movslq	%esi, %rsi
	movb	(%rcx,%rsi), %cl
	movzbl	%cl, %esi
	movl	%esi, 420(%rsp)                 # 4-byte Spill
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, 424(%rsp)                 # 8-byte Spill
	movl	$4294957296, %ecx               # imm = 0xFFFFD8F0
	xorl	%eax, %eax
	testb	$1, %dl
	movl	%ecx, 436(%rsp)                 # 4-byte Spill
	movl	%eax, 440(%rsp)                 # 4-byte Spill
	jne	.LBB10_26
# %bb.20:                               # %for.cond95.preheader.preheader
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	672(%rsp), %eax                 # 4-byte Reload
	movq	656(%rsp), %rsi                 # 8-byte Reload
	movq	576(%rsp), %rcx                 # 8-byte Reload
	movq	400(%rsp), %rdi                 # 8-byte Reload
	movq	408(%rsp), %rdx                 # 8-byte Reload
	movl	444(%rsp), %r9d                 # 4-byte Reload
	movl	396(%rsp), %r8d                 # 4-byte Reload
	imull	%r9d, %r8d
	movslq	%r8d, %r8
	addq	%r8, %rdx
	addq	%rdi, %rdx
	addq	%rcx, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%edi, 356(%rsp)                 # 4-byte Spill
	movq	%rsi, 360(%rsp)                 # 8-byte Spill
	movq	%rdx, 368(%rsp)                 # 8-byte Spill
	movl	%ecx, 376(%rsp)                 # 4-byte Spill
	movl	%eax, 380(%rsp)                 # 4-byte Spill
.LBB10_21:                              # %for.body98.preheader
                                        #   Parent Loop BB10_17 Depth=1
                                        #     Parent Loop BB10_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_22 Depth 4
	movl	672(%rsp), %eax                 # 4-byte Reload
	movl	356(%rsp), %edi                 # 4-byte Reload
	movq	360(%rsp), %rsi                 # 8-byte Reload
	movq	368(%rsp), %rdx                 # 8-byte Reload
	movl	376(%rsp), %ecx                 # 4-byte Reload
	movl	380(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, 320(%rsp)                 # 4-byte Spill
	movl	%edi, 324(%rsp)                 # 4-byte Spill
	movq	%rsi, 328(%rsp)                 # 8-byte Spill
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	movl	%ecx, 348(%rsp)                 # 4-byte Spill
	movl	%eax, 352(%rsp)                 # 4-byte Spill
.LBB10_22:                              # %for.body98
                                        #   Parent Loop BB10_17 Depth=1
                                        #     Parent Loop BB10_19 Depth=2
                                        #       Parent Loop BB10_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	352(%rsp), %r8d                 # 4-byte Reload
	movl	348(%rsp), %r11d                # 4-byte Reload
	movq	336(%rsp), %rcx                 # 8-byte Reload
	movq	328(%rsp), %rdx                 # 8-byte Reload
	movl	324(%rsp), %edi                 # 4-byte Reload
	movl	716(%rsp), %r9d                 # 4-byte Reload
	movq	424(%rsp), %rsi                 # 8-byte Reload
	movq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	movb	(%rcx), %bl
	movzbl	%bl, %r10d
	movq	%rdx, %rcx
	addq	$1, %rcx
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	movzbl	(%rdx), %edx
	movzbl	%bl, %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movq	%rbx, 264(%rsp)                 # 8-byte Spill
	movzbl	(%rsi,%rbx), %esi
	imull	%edx, %esi
	movl	%esi, 276(%rsp)                 # 4-byte Spill
	movl	%esi, %edx
	addl	%r11d, %edx
	movl	%edx, 280(%rsp)                 # 4-byte Spill
	imull	%r10d, %esi
	movl	%esi, 284(%rsp)                 # 4-byte Spill
	addl	%edi, %esi
	movl	%esi, 288(%rsp)                 # 4-byte Spill
	movl	%r8d, %edi
	addl	$1, %edi
	movl	%edi, 292(%rsp)                 # 4-byte Spill
	cmpl	%r9d, %r8d
	movl	%esi, %r8d
	movl	%r8d, 324(%rsp)                 # 4-byte Spill
	movq	%rcx, %r8
	movq	%r8, 328(%rsp)                  # 8-byte Spill
	movq	%rax, %r8
	movq	%r8, 336(%rsp)                  # 8-byte Spill
	movl	%edx, %r8d
	movl	%r8d, 348(%rsp)                 # 4-byte Spill
	movl	%edi, 352(%rsp)                 # 4-byte Spill
	movl	%esi, 296(%rsp)                 # 4-byte Spill
	movl	%edx, 300(%rsp)                 # 4-byte Spill
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	jl	.LBB10_22
# %bb.23:                               # %for.end113
                                        #   in Loop: Header=BB10_21 Depth=3
	movl	320(%rsp), %r8d                 # 4-byte Reload
	movl	716(%rsp), %r9d                 # 4-byte Reload
	movq	584(%rsp), %rdx                 # 8-byte Reload
	movl	296(%rsp), %ecx                 # 4-byte Reload
	movl	300(%rsp), %eax                 # 4-byte Reload
	movq	304(%rsp), %rdi                 # 8-byte Reload
	movq	312(%rsp), %rsi                 # 8-byte Reload
	addq	%rdx, %rsi
	movl	%r8d, %edx
	addl	$1, %edx
	cmpl	%r9d, %r8d
	movl	%ecx, %r8d
	movl	%r8d, 356(%rsp)                 # 4-byte Spill
	movq	%rdi, 360(%rsp)                 # 8-byte Spill
	movq	%rsi, 368(%rsp)                 # 8-byte Spill
	movl	%eax, %esi
	movl	%esi, 376(%rsp)                 # 4-byte Spill
	movl	%edx, 380(%rsp)                 # 4-byte Spill
	movl	%ecx, 240(%rsp)                 # 4-byte Spill
	movl	%eax, 244(%rsp)                 # 4-byte Spill
	jl	.LBB10_21
# %bb.24:                               # %for.end118
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	240(%rsp), %eax                 # 4-byte Reload
	movl	244(%rsp), %ecx                 # 4-byte Reload
	addl	$-10000, %ecx                   # imm = 0xD8F0
	cmpl	$0, %ecx
	movl	%ecx, 436(%rsp)                 # 4-byte Spill
	movl	%eax, 440(%rsp)                 # 4-byte Spill
	jne	.LBB10_26
# %bb.25:                               # %if.then122
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	396(%rsp), %ecx                 # 4-byte Reload
	movl	416(%rsp), %edx                 # 4-byte Reload
	movl	476(%rsp), %esi                 # 4-byte Reload
	movq	408(%rsp), %rdi                 # 8-byte Reload
	callq	median@PLT
	movb	%al, 239(%rsp)                  # 1-byte Spill
	jmp	.LBB10_27
.LBB10_26:                              # %if.else125
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	420(%rsp), %edx                 # 4-byte Reload
	movl	436(%rsp), %ecx                 # 4-byte Reload
	movl	440(%rsp), %eax                 # 4-byte Reload
	imull	$-10000, %edx, %edx             # imm = 0xD8F0
	addl	%edx, %eax
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movb	%al, 239(%rsp)                  # 1-byte Spill
.LBB10_27:                              # %for.inc132
                                        #   in Loop: Header=BB10_19 Depth=2
	movl	716(%rsp), %edi                 # 4-byte Reload
	movq	400(%rsp), %rdx                 # 8-byte Reload
	movq	384(%rsp), %rcx                 # 8-byte Reload
	movb	239(%rsp), %sil                 # 1-byte Reload
	movq	%rcx, %rax
	addq	$1, %rax
	movb	%sil, (%rcx)
	addq	$1, %rdx
	movl	764(%rsp), %ecx
	movl	%ecx, %esi
	subl	%edi, %esi
	movslq	%esi, %rsi
	cmpq	%rsi, %rdx
	movq	%rdx, 448(%rsp)                 # 8-byte Spill
	movl	%ecx, 460(%rsp)                 # 4-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	jl	.LBB10_19
# %bb.28:                               # %for.inc135.loopexit
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	224(%rsp), %rax                 # 8-byte Reload
	movl	760(%rsp), %ecx
	movl	%ecx, 492(%rsp)                 # 4-byte Spill
	movq	%rax, 496(%rsp)                 # 8-byte Spill
.LBB10_29:                              # %for.inc135
                                        #   in Loop: Header=BB10_17 Depth=1
	movl	716(%rsp), %edi                 # 4-byte Reload
	movl	476(%rsp), %eax                 # 4-byte Reload
	movl	492(%rsp), %edx                 # 4-byte Reload
	movq	496(%rsp), %rcx                 # 8-byte Reload
	addl	$1, %eax
	movl	%edx, %esi
	subl	%edi, %esi
	cmpl	%esi, %eax
	movl	%edx, 596(%rsp)                 # 4-byte Spill
	movq	%rcx, 600(%rsp)                 # 8-byte Spill
	movl	%eax, 608(%rsp)                 # 4-byte Spill
	jl	.LBB10_17
	jmp	.LBB10_38
.LBB10_30:                              # %for.cond144.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_32 Depth 2
	movl	680(%rsp), %edx                 # 4-byte Reload
	movl	684(%rsp), %ecx                 # 4-byte Reload
	movq	688(%rsp), %rax                 # 8-byte Reload
	movl	700(%rsp), %esi                 # 4-byte Reload
	movl	%esi, 188(%rsp)                 # 4-byte Spill
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movl	%ecx, 204(%rsp)                 # 4-byte Spill
	movl	%ecx, %esi
	addl	$-1, %esi
	cmpl	$1, %esi
	movl	%edx, 208(%rsp)                 # 4-byte Spill
	movl	%ecx, 212(%rsp)                 # 4-byte Spill
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	jle	.LBB10_37
# %bb.31:                               # %for.body148.lr.ph
                                        #   in Loop: Header=BB10_30 Depth=1
	movq	192(%rsp), %rax                 # 8-byte Reload
	movl	204(%rsp), %ecx                 # 4-byte Reload
	movl	188(%rsp), %edx                 # 4-byte Reload
	addl	$-1, %edx
	movl	%edx, 156(%rsp)                 # 4-byte Spill
	movl	$1, %edx
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	movl	%ecx, 172(%rsp)                 # 4-byte Spill
	movq	%rax, 176(%rsp)                 # 8-byte Spill
.LBB10_32:                              # %for.body148
                                        #   Parent Loop BB10_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	736(%rsp), %rcx                 # 8-byte Reload
	movl	188(%rsp), %r10d                # 4-byte Reload
	movl	156(%rsp), %edi                 # 4-byte Reload
	movq	160(%rsp), %r8                  # 8-byte Reload
	movl	172(%rsp), %esi                 # 4-byte Reload
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	768(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movl	%esi, %edx
	imull	%edi, %edx
	movslq	%edx, %rdx
	movq	%rax, %rdi
	addq	%rdx, %rdi
	movq	%rdi, %rdx
	addq	%r8, %rdx
	movq	%rdx, %rbx
	addq	$-1, %rbx
	movl	%esi, %r9d
	imull	%r10d, %r9d
	movl	%r8d, %r10d
	movl	%r10d, 64(%rsp)                 # 4-byte Spill
	addl	%r10d, %r9d
	movslq	%r9d, %r9
	movb	(%rax,%r9), %al
	movb	%al, 71(%rsp)                   # 1-byte Spill
	movzbl	%al, %eax
                                        # kill: def $rax killed $eax
	addq	%rax, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	addq	$1, %rbx
	movb	-1(%rdi,%r8), %al
	movb	%al, 83(%rsp)                   # 1-byte Spill
	movzbl	%al, %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r9, %rax
	movzbl	(%rcx,%rax), %eax
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	addq	$1, %rbx
	movb	(%rdi,%r8), %r9b
	movb	%r9b, 91(%rsp)                  # 1-byte Spill
	movzbl	%r9b, %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rcx,%r9), %r11d
	movl	%r11d, 92(%rsp)                 # 4-byte Spill
	movb	1(%rdi,%r8), %dil
	movb	%dil, 99(%rsp)                  # 1-byte Spill
	movzbl	%dil, %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rcx,%rdi), %r10d
	movl	%r10d, 100(%rsp)                # 4-byte Spill
	addl	$-2, %esi
	movslq	%esi, %r14
	addq	%r14, %rbx
	movb	1(%rdx,%r14), %sil
	movb	%sil, 107(%rsp)                 # 1-byte Spill
	movzbl	%sil, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rcx,%rsi), %r9d
	movl	%r9d, 108(%rsp)                 # 4-byte Spill
	movb	2(%rdx,%r14), %sil
	movb	%sil, 115(%rsp)                 # 1-byte Spill
	movzbl	%sil, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rcx,%rsi), %r8d
	movl	%r8d, 116(%rsp)                 # 4-byte Spill
	movb	3(%rdx,%r14), %dl
	movb	%dl, 123(%rsp)                  # 1-byte Spill
	movzbl	%dl, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%rsi, %rdx
	movzbl	(%rcx,%rdx), %edi
	movl	%edi, 124(%rsp)                 # 4-byte Spill
	movb	2(%rbx,%r14), %dl
	movb	%dl, 131(%rsp)                  # 1-byte Spill
	movzbl	%dl, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%rsi, %rdx
	movzbl	(%rcx,%rdx), %esi
	movl	%esi, 132(%rsp)                 # 4-byte Spill
	movb	3(%rbx,%r14), %dl
	movb	%dl, 139(%rsp)                  # 1-byte Spill
	movzbl	%dl, %edx
	movl	%edx, %r15d
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r15, %rdx
	movzbl	(%rcx,%rdx), %edx
	movl	%edx, 140(%rsp)                 # 4-byte Spill
	movb	4(%rbx,%r14), %bl
	movb	%bl, 147(%rsp)                  # 1-byte Spill
	movzbl	%bl, %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rcx,%rbx), %ecx
	movl	%ecx, 148(%rsp)                 # 4-byte Spill
	addl	$-100, %eax
	addl	%r11d, %eax
	addl	%r10d, %eax
	addl	%r9d, %eax
	addl	%r8d, %eax
	addl	%edi, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, 152(%rsp)                 # 4-byte Spill
	cmpl	$0, %eax
	jne	.LBB10_34
# %bb.33:                               # %if.then250
                                        #   in Loop: Header=BB10_32 Depth=2
	movl	44(%rsp), %ecx                  # 4-byte Reload
	movl	64(%rsp), %edx                  # 4-byte Reload
	movl	188(%rsp), %esi                 # 4-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	median@PLT
	movb	%al, 31(%rsp)                   # 1-byte Spill
	jmp	.LBB10_35
.LBB10_34:                              # %if.else253
                                        #   in Loop: Header=BB10_32 Depth=2
	movb	71(%rsp), %bpl                  # 1-byte Reload
	movl	148(%rsp), %edx                 # 4-byte Reload
	movb	147(%rsp), %r14b                # 1-byte Reload
	movl	140(%rsp), %esi                 # 4-byte Reload
	movb	139(%rsp), %r15b                # 1-byte Reload
	movl	132(%rsp), %edi                 # 4-byte Reload
	movb	131(%rsp), %r12b                # 1-byte Reload
	movl	124(%rsp), %r8d                 # 4-byte Reload
	movb	123(%rsp), %r13b                # 1-byte Reload
	movl	116(%rsp), %r9d                 # 4-byte Reload
	movl	108(%rsp), %r10d                # 4-byte Reload
	movl	100(%rsp), %r11d                # 4-byte Reload
	movl	92(%rsp), %ebx                  # 4-byte Reload
	movl	84(%rsp), %eax                  # 4-byte Reload
	movb	83(%rsp), %cl                   # 1-byte Reload
	movzbl	%cl, %ecx
	imull	%ecx, %eax
	movb	91(%rsp), %cl                   # 1-byte Reload
	movzbl	%cl, %ecx
	imull	%ecx, %ebx
	movb	99(%rsp), %cl                   # 1-byte Reload
	movzbl	%cl, %ecx
	imull	%ecx, %r11d
	movb	107(%rsp), %cl                  # 1-byte Reload
	movzbl	%cl, %ecx
	imull	%ecx, %r10d
	movb	115(%rsp), %cl                  # 1-byte Reload
	movzbl	%cl, %ecx
	imull	%ecx, %r9d
	movl	152(%rsp), %ecx                 # 4-byte Reload
	movzbl	%r13b, %r13d
	imull	%r13d, %r8d
	movzbl	%r12b, %r12d
	imull	%r12d, %edi
	movzbl	%r15b, %r15d
	imull	%r15d, %esi
	movzbl	%r14b, %r14d
	imull	%r14d, %edx
	movzbl	%bpl, %ebp
	imull	$-100, %ebp, %ebp
	addl	%ebp, %eax
	addl	%ebx, %eax
	addl	%r11d, %eax
	addl	%r10d, %eax
	addl	%r9d, %eax
	addl	%r8d, %eax
	addl	%edi, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	cltd
	idivl	%ecx
                                        # kill: def $al killed $al killed $eax
	movb	%al, 31(%rsp)                   # 1-byte Spill
.LBB10_35:                              # %for.inc260
                                        #   in Loop: Header=BB10_32 Depth=2
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movb	31(%rsp), %sil                  # 1-byte Reload
	movq	%rcx, %rax
	addq	$1, %rax
	movb	%sil, (%rcx)
	addq	$1, %rdx
	movl	764(%rsp), %ecx
	movl	%ecx, %esi
	addl	$-1, %esi
	movslq	%esi, %rsi
	cmpq	%rsi, %rdx
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	movl	%ecx, %edx
	movl	%edx, 172(%rsp)                 # 4-byte Spill
	movq	%rax, %rdx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jl	.LBB10_32
# %bb.36:                               # %for.inc263.loopexit
                                        #   in Loop: Header=BB10_30 Depth=1
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	760(%rsp), %edx
	movl	%edx, 208(%rsp)                 # 4-byte Spill
	movl	%ecx, 212(%rsp)                 # 4-byte Spill
	movq	%rax, 216(%rsp)                 # 8-byte Spill
.LBB10_37:                              # %for.inc263
                                        #   in Loop: Header=BB10_30 Depth=1
	movl	188(%rsp), %eax                 # 4-byte Reload
	movl	208(%rsp), %esi                 # 4-byte Reload
	movl	212(%rsp), %edx                 # 4-byte Reload
	movq	216(%rsp), %rcx                 # 8-byte Reload
	addl	$1, %eax
	movl	%esi, %edi
	addl	$-1, %edi
	cmpl	%edi, %eax
	movl	%esi, 680(%rsp)                 # 4-byte Spill
	movl	%edx, 684(%rsp)                 # 4-byte Spill
	movq	%rcx, 688(%rsp)                 # 8-byte Spill
	movl	%eax, 700(%rsp)                 # 4-byte Spill
	jl	.LBB10_30
	jmp	.LBB10_39
.LBB10_38:                              # %if.end266.loopexit
	jmp	.LBB10_40
.LBB10_39:                              # %if.end266.loopexit496
	jmp	.LBB10_40
.LBB10_40:                              # %if.end266
	addq	$776, %rsp                      # imm = 0x308
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	susan_smoothing, .Lfunc_end10-susan_smoothing
	.cfi_endproc
                                        # -- End function
	.globl	edge_draw                       # -- Begin function edge_draw
	.p2align	4, 0x90
	.type	edge_draw,@function
edge_draw:                              # @edge_draw
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movq	%rsi, (%rsp)                    # 8-byte Spill
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	imull	%edx, %ecx
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	cmpl	$0, %r8d
	jne	.LBB11_4
# %bb.1:                                # %for.cond.preheader
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$0, %eax
	jle	.LBB11_19
# %bb.2:                                # %for.body.lr.ph
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	12(%rsp), %eax                  # 4-byte Reload
	movslq	%eax, %rsi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%rsi, %rdx
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	addl	$-2, %eax
	cltq
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movl	%eax, -12(%rsp)                 # 4-byte Spill
	jmp	.LBB11_11
.LBB11_3:                               # %for.cond19.preheader.loopexit
	jmp	.LBB11_4
.LBB11_4:                               # %for.cond19.preheader
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$0, %eax
	jle	.LBB11_19
# %bb.5:                                # %for.body23.lr.ph
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	12(%rsp), %eax                  # 4-byte Reload
	movl	16(%rsp), %edx                  # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, -60(%rsp)                 # 4-byte Spill
	andl	$1, %edx
	xorl	%eax, %eax
	cmpl	$0, %edx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movl	%eax, -44(%rsp)                 # 4-byte Spill
	je	.LBB11_9
# %bb.6:                                # %for.body23.prol
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpb	$8, (%rax)
	jae	.LBB11_8
# %bb.7:                                # %if.then27.prol
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movb	$0, (%rax)
.LBB11_8:                               # %if.end32.prol
	movq	(%rsp), %rcx                    # 8-byte Reload
	addq	$1, %rcx
	movl	$1, %eax
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movl	%eax, -44(%rsp)                 # 4-byte Spill
.LBB11_9:                               # %for.body23.lr.ph.split
	movl	-60(%rsp), %eax                 # 4-byte Reload
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	movl	-44(%rsp), %edx                 # 4-byte Reload
	movl	%edx, -76(%rsp)                 # 4-byte Spill
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	cmpl	$1, %eax
	je	.LBB11_18
# %bb.10:                               # %for.body23.lr.ph.split.split
	movl	-76(%rsp), %eax                 # 4-byte Reload
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movl	%eax, -80(%rsp)                 # 4-byte Spill
	jmp	.LBB11_14
.LBB11_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	-12(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, -100(%rsp)                # 4-byte Spill
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	cmpb	$8, (%rax)
	jae	.LBB11_13
# %bb.12:                               # %if.then4
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	-96(%rsp), %rax                 # 8-byte Reload
	subq	%rdx, %rax
	addq	%rax, %rsi
	movq	%rsi, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	addq	$-1, %rax
	addq	$1, %rax
	movb	$-1, -1(%rsi,%rdi)
	addq	$1, %rax
	movb	$-1, (%rsi,%rdi)
	movb	$-1, 1(%rsi,%rdi)
	addq	%rcx, %rax
	movb	$-1, 1(%rdx,%rcx)
	movb	$-1, 3(%rdx,%rcx)
	movb	$-1, 2(%rax,%rcx)
	movb	$-1, 3(%rax,%rcx)
	movb	$-1, 4(%rax,%rcx)
.LBB11_13:                              # %if.end
                                        #   in Loop: Header=BB11_11 Depth=1
	movl	20(%rsp), %edx                  # 4-byte Reload
	movl	-100(%rsp), %eax                # 4-byte Reload
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	cmpl	%edx, %eax
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movl	%eax, -12(%rsp)                 # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_11
.LBB11_14:                              # %for.body23
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movl	-80(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, -116(%rsp)                # 4-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	cmpb	$8, (%rax)
	jae	.LBB11_16
# %bb.15:                               # %if.then27
                                        #   in Loop: Header=BB11_14 Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	-112(%rsp), %rcx                # 8-byte Reload
	subq	%rdx, %rcx
	movb	$0, (%rax,%rcx)
.LBB11_16:                              # %if.end32
                                        #   in Loop: Header=BB11_14 Depth=1
	movq	-112(%rsp), %rax                # 8-byte Reload
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	cmpb	$8, 1(%rax)
	jb	.LBB11_20
	jmp	.LBB11_21
.LBB11_17:                              # %for.end36.loopexit.unr-lcssa
	jmp	.LBB11_18
.LBB11_18:                              # %for.end36.loopexit
	jmp	.LBB11_19
.LBB11_19:                              # %for.end36
                                        # implicit-def: $eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB11_20:                              # %if.then27.1
                                        #   in Loop: Header=BB11_14 Depth=1
	.cfi_def_cfa_offset 32
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	-128(%rsp), %rcx                # 8-byte Reload
	subq	%rdx, %rcx
	movb	$0, (%rax,%rcx)
.LBB11_21:                              # %if.end32.1
                                        #   in Loop: Header=BB11_14 Depth=1
	movl	20(%rsp), %edx                  # 4-byte Reload
	movl	-116(%rsp), %eax                # 4-byte Reload
	movq	-112(%rsp), %rcx                # 8-byte Reload
	addq	$2, %rcx
	addl	$2, %eax
	cmpl	%edx, %eax
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movl	%eax, -80(%rsp)                 # 4-byte Spill
	je	.LBB11_17
	jmp	.LBB11_14
.Lfunc_end11:
	.size	edge_draw, .Lfunc_end11-edge_draw
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function susan_thin
.LCPI12_0:
	.quad	0x3fe6666666666666              # double 0.69999999999999996
	.text
	.globl	susan_thin
	.p2align	4, 0x90
	.type	susan_thin,@function
susan_thin:                             # @susan_thin
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$360, %rsp                      # imm = 0x168
	.cfi_def_cfa_offset 416
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 336(%rsp)                 # 8-byte Spill
	movq	%rsi, 344(%rsp)                 # 8-byte Spill
	movl	%edx, 352(%rsp)                 # 4-byte Spill
	addl	$-4, %ecx
	movl	%ecx, 356(%rsp)                 # 4-byte Spill
	cmpl	$4, %ecx
	jle	.LBB12_56
# %bb.1:                                # %for.cond1.preheader.lr.ph
	movl	352(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	addl	$-4, %ecx
	movl	%ecx, 312(%rsp)                 # 4-byte Spill
	cmpl	$4, %ecx
	setg	%cl
	movb	%cl, 319(%rsp)                  # 1-byte Spill
	cltq
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	movl	$4, %eax
	movl	%eax, 332(%rsp)                 # 4-byte Spill
                                        # implicit-def: $eax
                                        # implicit-def: $eax
.LBB12_2:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	movb	319(%rsp), %sil                 # 1-byte Reload
	movl	332(%rsp), %edx                 # 4-byte Reload
	movl	284(%rsp), %ecx                 # 4-byte Reload
	movl	280(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 288(%rsp)                 # 4-byte Spill
	movl	%ecx, 292(%rsp)                 # 4-byte Spill
	movl	%edx, 296(%rsp)                 # 4-byte Spill
	testb	$1, %sil
	movl	%edx, 300(%rsp)                 # 4-byte Spill
	movl	%ecx, 304(%rsp)                 # 4-byte Spill
	movl	%eax, 308(%rsp)                 # 4-byte Spill
	jne	.LBB12_3
	jmp	.LBB12_54
.LBB12_3:                               # %for.body4.preheader
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	288(%rsp), %eax                 # 4-byte Reload
	movl	292(%rsp), %ecx                 # 4-byte Reload
	movl	296(%rsp), %edx                 # 4-byte Reload
	movl	$4, %esi
	movl	%esi, 264(%rsp)                 # 4-byte Spill
	movl	%edx, 268(%rsp)                 # 4-byte Spill
	movl	%ecx, 272(%rsp)                 # 4-byte Spill
	movl	%eax, 276(%rsp)                 # 4-byte Spill
	jmp	.LBB12_4
.LBB12_4:                               # %for.body4
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movl	352(%rsp), %r9d                 # 4-byte Reload
	movl	264(%rsp), %eax                 # 4-byte Reload
	movl	268(%rsp), %ecx                 # 4-byte Reload
	movl	272(%rsp), %edx                 # 4-byte Reload
	movl	276(%rsp), %esi                 # 4-byte Reload
	movl	%esi, 204(%rsp)                 # 4-byte Spill
	movl	%edx, 208(%rsp)                 # 4-byte Spill
	movl	%ecx, 212(%rsp)                 # 4-byte Spill
	movl	%eax, 216(%rsp)                 # 4-byte Spill
	movl	%ecx, %r8d
	imull	%r9d, %r8d
	addl	%eax, %r8d
	movl	%r8d, 220(%rsp)                 # 4-byte Spill
	movslq	%r8d, %r8
	movq	%r8, 224(%rsp)                  # 8-byte Spill
	movq	%rdi, %r9
	addq	%r8, %r9
	movq	%r9, 232(%rsp)                  # 8-byte Spill
	movb	(%rdi,%r8), %dil
	movb	%dil, 247(%rsp)                 # 1-byte Spill
	cmpb	$8, %dil
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jae	.LBB12_52
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movl	216(%rsp), %eax                 # 4-byte Reload
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movl	352(%rsp), %esi                 # 4-byte Reload
	movl	212(%rsp), %edx                 # 4-byte Reload
	movq	336(%rsp), %r8                  # 8-byte Reload
	movq	224(%rsp), %r9                  # 8-byte Reload
	movl	(%r8,%r9,4), %r8d
	movl	%r8d, 188(%rsp)                 # 4-byte Spill
	addl	$-1, %edx
	movl	%edx, 192(%rsp)                 # 4-byte Spill
	imull	%esi, %edx
	movl	%edx, 196(%rsp)                 # 4-byte Spill
	movslq	%edx, %rdx
	addq	%rdx, %rdi
	movslq	%eax, %rdx
	movq	%rdi, %rsi
	addq	%rdx, %rsi
	movb	-1(%rdx,%rdi), %r8b
	movb	(%rdx,%rdi), %al
	subb	$8, %al
	setb	%al
	subb	$8, %r8b
	movzbl	%al, %eax
	adcl	$0, %eax
	movb	1(%rdx,%rdi), %dl
	subb	$8, %dl
	adcl	$0, %eax
	leaq	-1(%rcx,%rsi), %rdx
	movb	-1(%rcx,%rsi), %dil
	movb	1(%rcx,%rsi), %sil
	subb	$8, %dil
	adcl	$0, %eax
	subb	$8, %sil
	adcl	$0, %eax
	movb	(%rcx,%rdx), %dil
	movb	1(%rcx,%rdx), %sil
	subb	$8, %dil
	adcl	$0, %eax
	subb	$8, %sil
	adcl	$0, %eax
	movb	2(%rcx,%rdx), %cl
	subb	$8, %cl
	setb	%cl
	movzbl	%cl, %ecx
	addl	%ecx, %eax
	movl	%eax, 200(%rsp)                 # 4-byte Spill
	je	.LBB12_6
	jmp	.LBB12_57
.LBB12_57:                              # %if.then
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	216(%rsp), %eax                 # 4-byte Reload
	movl	212(%rsp), %ecx                 # 4-byte Reload
	movl	208(%rsp), %edx                 # 4-byte Reload
	movl	204(%rsp), %esi                 # 4-byte Reload
	movl	200(%rsp), %edi                 # 4-byte Reload
	subl	$1, %edi
	movl	%esi, 172(%rsp)                 # 4-byte Spill
	movl	%edx, 176(%rsp)                 # 4-byte Spill
	movl	%ecx, 180(%rsp)                 # 4-byte Spill
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	je	.LBB12_7
	jmp	.LBB12_30
.LBB12_6:                               # %if.then70
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	216(%rsp), %eax                 # 4-byte Reload
	movl	212(%rsp), %ecx                 # 4-byte Reload
	movl	208(%rsp), %edx                 # 4-byte Reload
	movl	204(%rsp), %esi                 # 4-byte Reload
	movq	232(%rsp), %rdi                 # 8-byte Reload
	movb	$100, (%rdi)
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jmp	.LBB12_52
.LBB12_7:                               # %land.lhs.true
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	216(%rsp), %eax                 # 4-byte Reload
	movl	212(%rsp), %ecx                 # 4-byte Reload
	movl	208(%rsp), %edx                 # 4-byte Reload
	movl	204(%rsp), %esi                 # 4-byte Reload
	movb	247(%rsp), %dil                 # 1-byte Reload
	cmpb	$6, %dil
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jae	.LBB12_52
# %bb.8:                                # %if.then84
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	336(%rsp), %rdx                 # 8-byte Reload
	movl	216(%rsp), %edi                 # 4-byte Reload
	movl	352(%rsp), %r8d                 # 4-byte Reload
	movl	212(%rsp), %esi                 # 4-byte Reload
	movl	220(%rsp), %r9d                 # 4-byte Reload
	movl	196(%rsp), %r10d                # 4-byte Reload
	addl	%edi, %r10d
	movl	%r10d, %ecx
	addl	$-1, %ecx
	movslq	%ecx, %rcx
	movl	(%rdx,%rcx,4), %r11d
	movl	%r11d, 60(%rsp)                 # 4-byte Spill
	movslq	%r10d, %r11
	movq	%r11, 64(%rsp)                  # 8-byte Spill
	movl	(%rdx,%r11,4), %r11d
	movl	%r11d, 76(%rsp)                 # 4-byte Spill
	addl	$1, %r10d
	movslq	%r10d, %r10
	movq	%r10, 80(%rsp)                  # 8-byte Spill
	movl	(%rdx,%r10,4), %r10d
	movl	%r10d, 92(%rsp)                 # 4-byte Spill
	movl	%r9d, %r10d
	addl	$-1, %r10d
	movslq	%r10d, %r10
	movq	%r10, 96(%rsp)                  # 8-byte Spill
	movl	(%rdx,%r10,4), %r10d
	movl	%r10d, 108(%rsp)                # 4-byte Spill
	addl	$1, %r9d
	movslq	%r9d, %r9
	movq	%r9, 112(%rsp)                  # 8-byte Spill
	movl	(%rdx,%r9,4), %r9d
	movl	%r9d, 124(%rsp)                 # 4-byte Spill
	addl	$1, %esi
	imull	%r8d, %esi
	addl	%edi, %esi
	movl	%esi, %edi
	addl	$-1, %edi
	movslq	%edi, %rdi
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	movl	(%rdx,%rdi,4), %edi
	movl	%edi, 140(%rsp)                 # 4-byte Spill
	movslq	%esi, %rdi
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	movl	(%rdx,%rdi,4), %edi
	movl	%edi, 156(%rsp)                 # 4-byte Spill
	addl	$1, %esi
	movslq	%esi, %rsi
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movl	(%rdx,%rsi,4), %edx
	movl	%edx, 168(%rsp)                 # 4-byte Spill
	cmpb	$8, (%rax,%rcx)
	jae	.LBB12_10
# %bb.9:                                # %if.then147
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	168(%rsp), %r8d                 # 4-byte Reload
	movl	156(%rsp), %eax                 # 4-byte Reload
	movl	124(%rsp), %edx                 # 4-byte Reload
	movl	140(%rsp), %esi                 # 4-byte Reload
	movl	92(%rsp), %ecx                  # 4-byte Reload
	shll	$1, %ecx
	shll	$1, %esi
	imull	$3, %edx, %edx
	imull	$3, %eax, %edi
	shll	$2, %r8d
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movl	%edi, 32(%rsp)                  # 4-byte Spill
	movl	%esi, 36(%rsp)                  # 4-byte Spill
	movl	%edx, 40(%rsp)                  # 4-byte Spill
	movl	%eax, %edx
	movl	%edx, 44(%rsp)                  # 4-byte Spill
	movl	%ecx, 48(%rsp)                  # 4-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	jmp	.LBB12_24
.LBB12_10:                              # %if.else
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	cmpb	$8, (%rax,%rcx)
	jae	.LBB12_12
# %bb.11:                               # %if.then169
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	156(%rsp), %edi                 # 4-byte Reload
	movl	168(%rsp), %eax                 # 4-byte Reload
	movl	140(%rsp), %esi                 # 4-byte Reload
	movl	124(%rsp), %edx                 # 4-byte Reload
	movl	108(%rsp), %ecx                 # 4-byte Reload
	shll	$1, %ecx
	shll	$1, %edx
	imull	$3, %esi, %esi
	imull	$3, %eax, %r8d
	shll	$2, %edi
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movl	%edi, 32(%rsp)                  # 4-byte Spill
	movl	%esi, 36(%rsp)                  # 4-byte Spill
	movl	%edx, 40(%rsp)                  # 4-byte Spill
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 48(%rsp)                  # 4-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	jmp	.LBB12_24
.LBB12_12:                              # %if.else183
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	cmpb	$8, (%rax,%rcx)
	jae	.LBB12_14
# %bb.13:                               # %if.then193
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	140(%rsp), %esi                 # 4-byte Reload
	movl	156(%rsp), %ecx                 # 4-byte Reload
	movl	108(%rsp), %edx                 # 4-byte Reload
	movl	168(%rsp), %r8d                 # 4-byte Reload
	movl	60(%rsp), %eax                  # 4-byte Reload
	shll	$1, %eax
	shll	$1, %r8d
	imull	$3, %edx, %edx
	imull	$3, %ecx, %edi
	shll	$2, %esi
	xorl	%ecx, %ecx
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movl	%edi, 32(%rsp)                  # 4-byte Spill
	movl	%esi, 36(%rsp)                  # 4-byte Spill
	movl	%ecx, %esi
	movl	%esi, 40(%rsp)                  # 4-byte Spill
	movl	%edx, 44(%rsp)                  # 4-byte Spill
	movl	%ecx, %edx
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	jmp	.LBB12_24
.LBB12_14:                              # %if.else207
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	cmpb	$8, (%rax,%rcx)
	jae	.LBB12_16
# %bb.15:                               # %if.then216
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	124(%rsp), %esi                 # 4-byte Reload
	movl	168(%rsp), %eax                 # 4-byte Reload
	movl	92(%rsp), %edx                  # 4-byte Reload
	movl	156(%rsp), %edi                 # 4-byte Reload
	movl	76(%rsp), %ecx                  # 4-byte Reload
	shll	$1, %ecx
	shll	$1, %edi
	imull	$3, %edx, %edx
	imull	$3, %eax, %r8d
	shll	$2, %esi
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movl	%edi, 32(%rsp)                  # 4-byte Spill
	movl	%eax, %edi
	movl	%edi, 36(%rsp)                  # 4-byte Spill
	movl	%esi, 40(%rsp)                  # 4-byte Spill
	movl	%eax, %esi
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	jmp	.LBB12_24
.LBB12_16:                              # %if.else230
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	cmpb	$8, (%rax,%rcx)
	jae	.LBB12_18
# %bb.17:                               # %if.then239
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	140(%rsp), %edx                 # 4-byte Reload
	movl	60(%rsp), %eax                  # 4-byte Reload
	movl	156(%rsp), %r8d                 # 4-byte Reload
	movl	76(%rsp), %ecx                  # 4-byte Reload
	shll	$1, %ecx
	shll	$1, %r8d
	imull	$3, %eax, %eax
	imull	$3, %edx, %edi
	shll	$2, %esi
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	%r9d, 28(%rsp)                  # 4-byte Spill
	movl	%r8d, 32(%rsp)                  # 4-byte Spill
	movl	%edi, 36(%rsp)                  # 4-byte Spill
	movl	%edx, %edi
	movl	%edi, 40(%rsp)                  # 4-byte Spill
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	jmp	.LBB12_24
.LBB12_18:                              # %if.else253
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	cmpb	$8, (%rax,%rcx)
	jae	.LBB12_20
# %bb.19:                               # %if.then263
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	92(%rsp), %edx                  # 4-byte Reload
	movl	124(%rsp), %esi                 # 4-byte Reload
	movl	76(%rsp), %ecx                  # 4-byte Reload
	movl	168(%rsp), %r8d                 # 4-byte Reload
	movl	60(%rsp), %eax                  # 4-byte Reload
	shll	$1, %eax
	shll	$1, %r8d
	imull	$3, %ecx, %ecx
	imull	$3, %esi, %edi
	shll	$2, %edx
	xorl	%esi, %esi
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movl	%esi, %r8d
	movl	%r8d, 32(%rsp)                  # 4-byte Spill
	movl	%esi, %r8d
	movl	%r8d, 36(%rsp)                  # 4-byte Spill
	movl	%edi, 40(%rsp)                  # 4-byte Spill
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	jmp	.LBB12_24
.LBB12_20:                              # %if.else277
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rcx                 # 8-byte Reload
	cmpb	$8, (%rax,%rcx)
	jae	.LBB12_22
# %bb.21:                               # %if.then286
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	76(%rsp), %ecx                  # 4-byte Reload
	movl	92(%rsp), %edx                  # 4-byte Reload
	movl	60(%rsp), %eax                  # 4-byte Reload
	movl	124(%rsp), %edi                 # 4-byte Reload
	movl	108(%rsp), %esi                 # 4-byte Reload
	shll	$1, %esi
	shll	$1, %edi
	imull	$3, %eax, %eax
	imull	$3, %edx, %edx
	shll	$2, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	%r9d, 28(%rsp)                  # 4-byte Spill
	movl	%r8d, %r9d
	movl	%r9d, 32(%rsp)                  # 4-byte Spill
	movl	%r8d, 36(%rsp)                  # 4-byte Spill
	movl	%edi, 40(%rsp)                  # 4-byte Spill
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	jmp	.LBB12_24
.LBB12_22:                              # %if.else300
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	60(%rsp), %eax                  # 4-byte Reload
	movl	76(%rsp), %ecx                  # 4-byte Reload
	movl	92(%rsp), %edx                  # 4-byte Reload
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	124(%rsp), %edi                 # 4-byte Reload
	movl	140(%rsp), %r8d                 # 4-byte Reload
	movl	156(%rsp), %r9d                 # 4-byte Reload
	movl	168(%rsp), %r10d                # 4-byte Reload
	movq	344(%rsp), %r11                 # 8-byte Reload
	movq	160(%rsp), %rbx                 # 8-byte Reload
	cmpb	$8, (%r11,%rbx)
	movl	%r10d, 28(%rsp)                 # 4-byte Spill
	movl	%r9d, 32(%rsp)                  # 4-byte Spill
	movl	%r8d, 36(%rsp)                  # 4-byte Spill
	movl	%edi, 40(%rsp)                  # 4-byte Spill
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	jae	.LBB12_24
# %bb.23:                               # %if.then310
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	60(%rsp), %eax                  # 4-byte Reload
	movl	108(%rsp), %esi                 # 4-byte Reload
	movl	76(%rsp), %ecx                  # 4-byte Reload
	movl	92(%rsp), %edx                  # 4-byte Reload
	movl	140(%rsp), %r8d                 # 4-byte Reload
	shll	$1, %r8d
	shll	$1, %edx
	imull	$3, %ecx, %ecx
	imull	$3, %esi, %esi
	shll	$2, %eax
	xorl	%edi, %edi
	movl	%edi, %r9d
	movl	%r9d, 28(%rsp)                  # 4-byte Spill
	movl	%edi, %r9d
	movl	%r9d, 32(%rsp)                  # 4-byte Spill
	movl	%r8d, 36(%rsp)                  # 4-byte Spill
	movl	%edi, 40(%rsp)                  # 4-byte Spill
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
.LBB12_24:                              # %for.cond336.preheader.preheader
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	216(%rsp), %eax                 # 4-byte Reload
	movl	212(%rsp), %ecx                 # 4-byte Reload
	movl	204(%rsp), %esi                 # 4-byte Reload
	movl	208(%rsp), %edx                 # 4-byte Reload
	movl	28(%rsp), %r9d                  # 4-byte Reload
	movl	32(%rsp), %r11d                 # 4-byte Reload
	movl	36(%rsp), %r10d                 # 4-byte Reload
	movl	40(%rsp), %r8d                  # 4-byte Reload
	movl	44(%rsp), %ebx                  # 4-byte Reload
	movl	48(%rsp), %ebp                  # 4-byte Reload
	movl	52(%rsp), %r12d                 # 4-byte Reload
	movl	56(%rsp), %r14d                 # 4-byte Reload
	cmpl	$0, %r14d
	setg	%r15b
	xorl	%r13d, %r13d
	cmpl	$0, %r14d
	cmovgl	%r14d, %r13d
	xorl	%edi, %edi
	cmpl	$0, %r14d
	cmovgl	%edi, %edx
	cmpl	%r13d, %r12d
	setg	%dil
	cmpl	%r13d, %r12d
	movl	%r13d, %r14d
	cmovgl	%r12d, %r14d
	orb	%r15b, %dil
	movl	$1, %r15d
	cmpl	%r13d, %r12d
	cmovgl	%r15d, %edx
	cmpl	%r14d, %ebp
	setg	%r12b
	cmpl	%r14d, %ebp
	movl	%r14d, %r15d
	cmovgl	%ebp, %r15d
	orb	%dil, %r12b
	xorl	%edi, %edi
	testb	$1, %r12b
	cmovnel	%edi, %esi
	movl	$2, %edi
	cmpl	%r14d, %ebp
	cmovgl	%edi, %edx
	cmpl	%r15d, %ebx
	setg	%bpl
	cmpl	%r15d, %ebx
	movl	%r15d, %r14d
	cmovgl	%ebx, %r14d
	xorl	%edi, %edi
	cmpl	%r15d, %ebx
	cmovgl	%edi, %edx
	cmpl	$0, %r14d
	setl	%dil
	xorl	%r15d, %r15d
	cmpl	$0, %r14d
	movl	%r14d, %ebx
	cmovll	%r15d, %ebx
	orb	%bpl, %dil
	movl	$1, %ebp
	cmpl	$0, %r14d
	cmovll	%ebp, %edx
	cmpl	%ebx, %r8d
	setg	%r14b
	cmpl	%ebx, %r8d
	movl	%ebx, %ebp
	cmovgl	%r8d, %ebp
	orb	%dil, %r14b
	movl	$1, %edi
	testb	$1, %r14b
	cmovnel	%edi, %esi
	movl	$2, %edi
	cmpl	%ebx, %r8d
	cmovgl	%edi, %edx
	cmpl	%ebp, %r10d
	setg	%dil
	cmpl	%ebp, %r10d
	movl	%ebp, %ebx
	cmovgl	%r10d, %ebx
	xorl	%r8d, %r8d
	cmpl	%ebp, %r10d
	cmovgl	%r8d, %edx
	cmpl	%ebx, %r11d
	setg	%r8b
	cmpl	%ebx, %r11d
	movl	%ebx, %r10d
	cmovgl	%r11d, %r10d
	orb	%dil, %r8b
	movl	$1, %edi
	cmpl	%ebx, %r11d
	cmovgl	%edi, %edx
	cmpl	%r10d, %r9d
	setg	%r11b
	cmpl	%r10d, %r9d
	movl	%r10d, %edi
	cmovgl	%r9d, %edi
	orb	%r8b, %r11b
	movl	$2, %r8d
	testb	$1, %r11b
	cmovnel	%r8d, %esi
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	movl	$2, %r8d
	cmpl	%r10d, %r9d
	cmovgl	%r8d, %edx
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	cmpl	$0, %edi
	movl	%esi, 172(%rsp)                 # 4-byte Spill
	movl	%edx, 176(%rsp)                 # 4-byte Spill
	movl	%ecx, 180(%rsp)                 # 4-byte Spill
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	jle	.LBB12_30
# %bb.25:                               # %if.then359
                                        #   in Loop: Header=BB12_4 Depth=2
	movb	247(%rsp), %al                  # 1-byte Reload
	cmpb	$4, %al
	jae	.LBB12_27
# %bb.26:                               # %if.then367
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	24(%rsp), %esi                  # 4-byte Reload
	movl	216(%rsp), %ecx                 # 4-byte Reload
	movl	352(%rsp), %edi                 # 4-byte Reload
	movl	20(%rsp), %r8d                  # 4-byte Reload
	movl	192(%rsp), %edx                 # 4-byte Reload
	addl	%r8d, %edx
	imull	%edi, %edx
	addl	$-1, %ecx
	addl	%esi, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movb	$4, (%rax,%rcx)
	jmp	.LBB12_28
.LBB12_27:                              # %if.else376
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	24(%rsp), %edi                  # 4-byte Reload
	movl	216(%rsp), %ecx                 # 4-byte Reload
	movl	352(%rsp), %r8d                 # 4-byte Reload
	movl	20(%rsp), %r9d                  # 4-byte Reload
	movl	192(%rsp), %esi                 # 4-byte Reload
	movb	247(%rsp), %dl                  # 1-byte Reload
	addb	$1, %dl
	addl	%r9d, %esi
	imull	%r8d, %esi
	addl	$-1, %ecx
	addl	%edi, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
.LBB12_28:                              # %if.end392
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	216(%rsp), %eax                 # 4-byte Reload
	movl	212(%rsp), %ecx                 # 4-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	%esi, %edi
	shll	$1, %edi
	addl	%edx, %edi
	cmpl	$3, %edi
	movl	%esi, 172(%rsp)                 # 4-byte Spill
	movl	%edx, 176(%rsp)                 # 4-byte Spill
	movl	%ecx, 180(%rsp)                 # 4-byte Spill
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	jge	.LBB12_30
# %bb.29:                               # %if.then397
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	216(%rsp), %eax                 # 4-byte Reload
	movl	192(%rsp), %ecx                 # 4-byte Reload
	addl	%esi, %ecx
	addl	$-2, %eax
	addl	%edx, %eax
	movl	$4, %edi
	cmpl	$4, %ecx
	cmovll	%edi, %ecx
	movl	$4, %edi
	cmpl	$4, %eax
	cmovll	%edi, %eax
	movl	%esi, 172(%rsp)                 # 4-byte Spill
	movl	%edx, 176(%rsp)                 # 4-byte Spill
	movl	%ecx, 180(%rsp)                 # 4-byte Spill
	movl	%eax, 184(%rsp)                 # 4-byte Spill
.LBB12_30:                              # %if.end412
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	200(%rsp), %eax                 # 4-byte Reload
	movl	172(%rsp), %ecx                 # 4-byte Reload
	movl	176(%rsp), %edx                 # 4-byte Reload
	movl	180(%rsp), %esi                 # 4-byte Reload
	movl	184(%rsp), %edi                 # 4-byte Reload
	movl	%edi, 4(%rsp)                   # 4-byte Spill
	movl	%esi, 8(%rsp)                   # 4-byte Spill
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	cmpl	$2, %eax
	jne	.LBB12_48
# %bb.31:                               # %if.then415
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rcx                 # 8-byte Reload
	movl	4(%rsp), %edx                   # 4-byte Reload
	movl	352(%rsp), %r8d                 # 4-byte Reload
	movl	8(%rsp), %edi                   # 4-byte Reload
	movl	%edi, %eax
	addl	$-1, %eax
	movl	%eax, -32(%rsp)                 # 4-byte Spill
	imull	%r8d, %eax
	addl	%edx, %eax
	movl	%eax, -28(%rsp)                 # 4-byte Spill
	movl	%eax, %esi
	addl	$-1, %esi
	movslq	%esi, %rsi
	cmpb	$8, (%rcx,%rsi)
	setb	%sil
	movb	%sil, -21(%rsp)                 # 1-byte Spill
	andb	$1, %sil
	movzbl	%sil, %esi
	movl	%esi, -20(%rsp)                 # 4-byte Spill
	addl	$1, %eax
	cltq
	cmpb	$8, (%rcx,%rax)
	setb	%al
	movb	%al, -13(%rsp)                  # 1-byte Spill
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -12(%rsp)                 # 4-byte Spill
	addl	$1, %edi
	imull	%r8d, %edi
	addl	%edx, %edi
	movl	%edi, -8(%rsp)                  # 4-byte Spill
	movl	%edi, %edx
	addl	$-1, %edx
	movslq	%edx, %rdx
	cmpb	$8, (%rcx,%rdx)
	setb	%dl
	andb	$1, %dl
	movzbl	%dl, %edx
	movl	%edx, -4(%rsp)                  # 4-byte Spill
	addl	$1, %edi
	movslq	%edi, %rdi
	cmpb	$8, (%rcx,%rdi)
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movl	%ecx, (%rsp)                    # 4-byte Spill
	addl	%esi, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	cmpl	$2, %eax
	jne	.LBB12_44
# %bb.32:                               # %land.lhs.true457
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	-12(%rsp), %edx                 # 4-byte Reload
	movl	-4(%rsp), %ecx                  # 4-byte Reload
	movl	-20(%rsp), %esi                 # 4-byte Reload
	movl	(%rsp), %eax                    # 4-byte Reload
	orl	%esi, %eax
	orl	%edx, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB12_44
# %bb.33:                               # %if.then459
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	188(%rsp), %edi                 # 4-byte Reload
	movq	336(%rsp), %r8                  # 8-byte Reload
	movl	352(%rsp), %r11d                # 4-byte Reload
	movb	-21(%rsp), %bpl                 # 1-byte Reload
	movl	-12(%rsp), %r9d                 # 4-byte Reload
	movb	-13(%rsp), %r10b                # 1-byte Reload
	movb	%r10b, %bl
	xorb	$-1, %bl
	andb	$1, %bl
	negb	%bl
	movsbl	%bl, %r14d
	andb	$1, %r10b
	negb	%r10b
	movsbl	%r10b, %ebx
	movl	%r9d, %r10d
	xorl	$1, %r10d
	testb	$1, %bpl
	cmovnel	%r14d, %r9d
	movl	%r9d, -48(%rsp)                 # 4-byte Spill
	testb	$1, %bpl
	cmovnel	%ebx, %r10d
	movl	%r10d, -44(%rsp)                # 4-byte Spill
	addl	%ecx, %r10d
	imull	%r11d, %r10d
	addl	%eax, %r9d
	addl	%r10d, %r9d
	movslq	%r9d, %r9
	movq	%r9, -40(%rsp)                  # 8-byte Spill
	cvtsi2ssl	(%r8,%r9,4), %xmm0
	cvtsi2ss	%edi, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI12_0(%rip), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jbe	.LBB12_52
# %bb.34:                               # %if.then483
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	-48(%rsp), %eax                 # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB12_39
# %bb.35:                               # %land.lhs.true486
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	4(%rsp), %edx                   # 4-byte Reload
	movl	352(%rsp), %esi                 # 4-byte Reload
	movl	8(%rsp), %edi                   # 4-byte Reload
	movl	-44(%rsp), %ecx                 # 4-byte Reload
	shll	$1, %ecx
	addl	%edi, %ecx
	imull	%esi, %ecx
	addl	%edx, %ecx
	movl	%ecx, -52(%rsp)                 # 4-byte Spill
	movslq	%ecx, %rcx
	cmpb	$7, (%rax,%rcx)
	jbe	.LBB12_39
# %bb.36:                               # %land.lhs.true496
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	-52(%rsp), %ecx                 # 4-byte Reload
	addl	$-1, %ecx
	movslq	%ecx, %rcx
	cmpb	$7, (%rax,%rcx)
	jbe	.LBB12_39
# %bb.37:                               # %land.lhs.true507
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	-52(%rsp), %ecx                 # 4-byte Reload
	addl	$1, %ecx
	movslq	%ecx, %rcx
	cmpb	$7, (%rax,%rcx)
	jbe	.LBB12_39
# %bb.38:                               # %land.lhs.true507.if.then552_crit_edge
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %ecx                   # 4-byte Reload
	movl	352(%rsp), %edx                 # 4-byte Reload
	movl	8(%rsp), %eax                   # 4-byte Reload
	imull	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, -56(%rsp)                 # 4-byte Spill
	jmp	.LBB12_43
.LBB12_39:                              # %lor.lhs.false
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	-44(%rsp), %edi                 # 4-byte Reload
	cmpl	$0, %edi
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jne	.LBB12_52
# %bb.40:                               # %land.lhs.true520
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movl	-48(%rsp), %r9d                 # 4-byte Reload
	movl	352(%rsp), %r10d                # 4-byte Reload
	movl	%ecx, %r8d
	imull	%r10d, %r8d
	addl	%eax, %r8d
	movl	%r8d, -64(%rsp)                 # 4-byte Spill
	shll	$1, %r9d
	movl	%r9d, -60(%rsp)                 # 4-byte Spill
	addl	%r9d, %r8d
	movslq	%r8d, %r8
	cmpb	$7, (%rdi,%r8)
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jbe	.LBB12_52
# %bb.41:                               # %land.lhs.true530
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movl	-8(%rsp), %r9d                  # 4-byte Reload
	movl	-60(%rsp), %r8d                 # 4-byte Reload
	addl	%r9d, %r8d
	movslq	%r8d, %r8
	cmpb	$7, (%rdi,%r8)
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jbe	.LBB12_52
# %bb.42:                               # %land.lhs.true541
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	-64(%rsp), %edi                 # 4-byte Reload
	movq	344(%rsp), %r8                  # 8-byte Reload
	movl	-28(%rsp), %r10d                # 4-byte Reload
	movl	-60(%rsp), %r9d                 # 4-byte Reload
	addl	%r10d, %r9d
	movslq	%r9d, %r9
	cmpb	$7, (%r8,%r9)
	movl	%edi, -56(%rsp)                 # 4-byte Spill
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jbe	.LBB12_52
.LBB12_43:                              # %if.then552
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movq	-40(%rsp), %r8                  # 8-byte Reload
	movl	-56(%rsp), %r9d                 # 4-byte Reload
	movslq	%r9d, %r9
	movb	$100, (%rdi,%r9)
	movb	$3, (%rdi,%r8)
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jmp	.LBB12_52
.LBB12_44:                              # %if.else565
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movq	344(%rsp), %r8                  # 8-byte Reload
	movl	-8(%rsp), %r9d                  # 4-byte Reload
	movl	352(%rsp), %edi                 # 4-byte Reload
	movl	-28(%rsp), %r10d                # 4-byte Reload
	movslq	%r10d, %r10
	cmpb	$8, (%r8,%r10)
	setb	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r10d
	movl	%r10d, -84(%rsp)                # 4-byte Spill
	movl	%ecx, %r11d
	imull	%edi, %r11d
	addl	%eax, %r11d
	movl	%r11d, -80(%rsp)                # 4-byte Spill
	movl	%r11d, %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	cmpb	$8, (%r8,%rdi)
	setb	%dil
	andb	$1, %dil
	movzbl	%dil, %edi
	movl	%edi, -76(%rsp)                 # 4-byte Spill
	movslq	%r9d, %r9
	cmpb	$8, (%r8,%r9)
	setb	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	movl	%r9d, -72(%rsp)                 # 4-byte Spill
	addl	$-1, %r11d
	movslq	%r11d, %r11
	cmpb	$8, (%r8,%r11)
	setb	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	movl	%r8d, -68(%rsp)                 # 4-byte Spill
	addl	%r10d, %edi
	addl	%r9d, %edi
	addl	%r8d, %edi
	cmpl	$2, %edi
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jne	.LBB12_52
# %bb.45:                               # %land.lhs.true603
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	-84(%rsp), %r9d                 # 4-byte Reload
	movl	-72(%rsp), %r8d                 # 4-byte Reload
	movl	-76(%rsp), %r10d                # 4-byte Reload
	movl	-68(%rsp), %edi                 # 4-byte Reload
	orl	%r10d, %edi
	orl	%r9d, %r8d
	andl	%r8d, %edi
	cmpl	$0, %edi
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	je	.LBB12_52
# %bb.46:                               # %land.lhs.true608
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	-72(%rsp), %r9d                 # 4-byte Reload
	movq	344(%rsp), %r8                  # 8-byte Reload
	movl	352(%rsp), %r10d                # 4-byte Reload
	movl	-76(%rsp), %ebx                 # 4-byte Reload
	movl	-8(%rsp), %r11d                 # 4-byte Reload
	movl	-28(%rsp), %ebp                 # 4-byte Reload
	movl	-68(%rsp), %r15d                # 4-byte Reload
	movl	-84(%rsp), %edi                 # 4-byte Reload
	movl	%ecx, %r14d
	addl	$-2, %r14d
	imull	%r10d, %r14d
	addl	%eax, %r14d
	movl	%r14d, %r12d
	addl	$-1, %r12d
	movslq	%r12d, %r12
	cmpb	$8, (%r8,%r12)
	setb	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %r12d
	addl	$1, %r14d
	movslq	%r14d, %r14
	cmpb	$8, (%r8,%r14)
	setb	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %r14d
	orl	%r12d, %r14d
	andl	%edi, %r14d
	movl	%ebp, %edi
	addl	$-2, %edi
	movslq	%edi, %rdi
	cmpb	$8, (%r8,%rdi)
	setb	%dil
	andb	$1, %dil
	movzbl	%dil, %r12d
	movl	%r11d, %edi
	addl	$-2, %edi
	movslq	%edi, %rdi
	cmpb	$8, (%r8,%rdi)
	setb	%dil
	andb	$1, %dil
	movzbl	%dil, %edi
	orl	%r12d, %edi
	andl	%r15d, %edi
	orl	%r14d, %edi
	addl	$2, %ebp
	movslq	%ebp, %r14
	cmpb	$8, (%r8,%r14)
	setb	%bpl
	andb	$1, %bpl
	movzbl	%bpl, %ebp
	addl	$2, %r11d
	movslq	%r11d, %r11
	cmpb	$8, (%r8,%r11)
	setb	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %r11d
	orl	%ebp, %r11d
	andl	%ebx, %r11d
	orl	%r11d, %edi
	movl	%ecx, %r11d
	addl	$2, %r11d
	imull	%r10d, %r11d
	addl	%eax, %r11d
	movl	%r11d, %r10d
	addl	$-1, %r10d
	movslq	%r10d, %r10
	cmpb	$8, (%r8,%r10)
	setb	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r10d
	addl	$1, %r11d
	movslq	%r11d, %r11
	cmpb	$8, (%r8,%r11)
	setb	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	orl	%r10d, %r8d
	andl	%r9d, %r8d
	orl	%r8d, %edi
	cmpl	$0, %edi
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	je	.LBB12_52
# %bb.47:                               # %if.then693
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	-32(%rsp), %ecx                 # 4-byte Reload
	movl	8(%rsp), %r8d                   # 4-byte Reload
	movl	4(%rsp), %eax                   # 4-byte Reload
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movl	-80(%rsp), %r9d                 # 4-byte Reload
	movslq	%r9d, %r9
	movb	$100, (%rdi,%r9)
	addl	$-2, %eax
	movl	$4, %edi
	cmpl	$5, %r8d
	cmovll	%edi, %ecx
	movl	$4, %edi
	cmpl	$4, %eax
	cmovll	%edi, %eax
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jmp	.LBB12_52
.LBB12_48:                              # %if.end709
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	200(%rsp), %edi                 # 4-byte Reload
	cmpl	$2, %edi
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jle	.LBB12_52
# %bb.49:                               # %if.then712
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movq	344(%rsp), %r8                  # 8-byte Reload
	movl	352(%rsp), %ebx                 # 4-byte Reload
	movl	%ecx, %edi
	addl	$-1, %edi
	movl	%edi, -116(%rsp)                # 4-byte Spill
	imull	%ebx, %edi
	addl	%eax, %edi
	movl	%edi, -112(%rsp)                # 4-byte Spill
	movslq	%edi, %rdi
	cmpb	$8, (%r8,%rdi)
	setb	%dil
	andb	$1, %dil
	movzbl	%dil, %r10d
	movl	%r10d, -108(%rsp)               # 4-byte Spill
	movl	%ecx, %r11d
	imull	%ebx, %r11d
	addl	%eax, %r11d
	movl	%r11d, -104(%rsp)               # 4-byte Spill
	movl	%r11d, %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	cmpb	$8, (%r8,%rdi)
	setb	%dil
	andb	$1, %dil
	movzbl	%dil, %edi
	movl	%edi, -100(%rsp)                # 4-byte Spill
	movl	%ecx, %r9d
	addl	$1, %r9d
	imull	%ebx, %r9d
	addl	%eax, %r9d
	movl	%r9d, -96(%rsp)                 # 4-byte Spill
	movslq	%r9d, %r9
	cmpb	$8, (%r8,%r9)
	setb	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	movl	%r9d, -92(%rsp)                 # 4-byte Spill
	addl	$-1, %r11d
	movslq	%r11d, %r11
	cmpb	$8, (%r8,%r11)
	setb	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	movl	%r8d, -88(%rsp)                 # 4-byte Spill
	addl	%r10d, %edi
	addl	%r9d, %edi
	addl	%r8d, %edi
	cmpl	$1, %edi
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jbe	.LBB12_52
# %bb.50:                               # %if.then750
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	-88(%rsp), %r15d                # 4-byte Reload
	movl	-92(%rsp), %ebp                 # 4-byte Reload
	movl	-100(%rsp), %r9d                # 4-byte Reload
	movl	-108(%rsp), %r8d                # 4-byte Reload
	movq	344(%rsp), %r10                 # 8-byte Reload
	movl	-96(%rsp), %r11d                # 4-byte Reload
	movl	-112(%rsp), %edi                # 4-byte Reload
	movl	%edi, %ebx
	addl	$-1, %ebx
	movslq	%ebx, %rbx
	cmpb	$8, (%r10,%rbx)
	setb	%bl
	andb	$1, %bl
	movzbl	%bl, %r14d
	addl	$1, %edi
	movslq	%edi, %rdi
	cmpb	$8, (%r10,%rdi)
	setb	%dil
	andb	$1, %dil
	movzbl	%dil, %edi
	movl	%r11d, %ebx
	addl	$-1, %ebx
	movslq	%ebx, %rbx
	cmpb	$8, (%r10,%rbx)
	setb	%bl
	andb	$1, %bl
	movzbl	%bl, %ebx
	addl	$1, %r11d
	movslq	%r11d, %r11
	cmpb	$8, (%r10,%r11)
	setb	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r10d
	orl	%r8d, %r14d
	orl	%r9d, %edi
	orl	%ebp, %r10d
	orl	%r15d, %ebx
	movl	%edi, %r11d
	andl	%r8d, %r11d
	movl	%r10d, %r8d
	andl	%r9d, %r8d
	movl	%ebx, %r9d
	andl	%ebp, %r9d
	movl	%r14d, %ebp
	andl	%r15d, %ebp
	addl	%r14d, %edi
	subl	%ebp, %edi
	addl	%ebx, %edi
	subl	%r11d, %edi
	addl	%r10d, %edi
	subl	%r9d, %edi
	subl	%r8d, %edi
	cmpl	$2, %edi
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	jge	.LBB12_52
# %bb.51:                               # %if.then804
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	12(%rsp), %edx                  # 4-byte Reload
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	-116(%rsp), %ecx                # 4-byte Reload
	movl	8(%rsp), %r8d                   # 4-byte Reload
	movl	4(%rsp), %eax                   # 4-byte Reload
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movl	-104(%rsp), %r9d                # 4-byte Reload
	movslq	%r9d, %r9
	movb	$100, (%rdi,%r9)
	addl	$-2, %eax
	movl	$4, %edi
	cmpl	$5, %r8d
	cmovll	%edi, %ecx
	movl	$4, %edi
	cmpl	$4, %eax
	cmovll	%edi, %eax
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
.LBB12_52:                              # %for.inc823
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	312(%rsp), %edi                 # 4-byte Reload
	movl	248(%rsp), %eax                 # 4-byte Reload
	movl	252(%rsp), %ecx                 # 4-byte Reload
	movl	256(%rsp), %edx                 # 4-byte Reload
	movl	260(%rsp), %esi                 # 4-byte Reload
	addl	$1, %esi
	cmpl	%edi, %esi
	movl	%esi, 264(%rsp)                 # 4-byte Spill
	movl	%edx, %esi
	movl	%esi, 268(%rsp)                 # 4-byte Spill
	movl	%ecx, %esi
	movl	%esi, 272(%rsp)                 # 4-byte Spill
	movl	%eax, %esi
	movl	%esi, 276(%rsp)                 # 4-byte Spill
	movl	%edx, -128(%rsp)                # 4-byte Spill
	movl	%ecx, -124(%rsp)                # 4-byte Spill
	movl	%eax, -120(%rsp)                # 4-byte Spill
	jl	.LBB12_4
# %bb.53:                               # %for.inc826.loopexit
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	-128(%rsp), %edx                # 4-byte Reload
	movl	-124(%rsp), %ecx                # 4-byte Reload
	movl	-120(%rsp), %eax                # 4-byte Reload
	movl	%edx, 300(%rsp)                 # 4-byte Spill
	movl	%ecx, 304(%rsp)                 # 4-byte Spill
	movl	%eax, 308(%rsp)                 # 4-byte Spill
.LBB12_54:                              # %for.inc826
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	356(%rsp), %esi                 # 4-byte Reload
	movl	300(%rsp), %edx                 # 4-byte Reload
	movl	304(%rsp), %ecx                 # 4-byte Reload
	movl	308(%rsp), %eax                 # 4-byte Reload
	addl	$1, %edx
	cmpl	%esi, %edx
	movl	%edx, 332(%rsp)                 # 4-byte Spill
	movl	%ecx, 284(%rsp)                 # 4-byte Spill
	movl	%eax, 280(%rsp)                 # 4-byte Spill
	jl	.LBB12_2
# %bb.55:                               # %for.end828.loopexit
	jmp	.LBB12_56
.LBB12_56:                              # %for.end828
                                        # implicit-def: $eax
	addq	$360, %rsp                      # imm = 0x168
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	susan_thin, .Lfunc_end12-susan_thin
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function susan_edges
.LCPI13_0:
	.quad	0x3feccccccccccccd              # double 0.90000000000000002
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI13_1:
	.long	0x3f000000                      # float 0.5
.LCPI13_2:
	.long	0x40000000                      # float 2
.LCPI13_3:
	.long	0x49742400                      # float 1.0E+6
.LCPI13_4:
	.long	0x80000000                      # float -0
	.text
	.globl	susan_edges
	.p2align	4, 0x90
	.type	susan_edges,@function
susan_edges:                            # @susan_edges
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$1544, %rsp                     # imm = 0x608
	.cfi_def_cfa_offset 1600
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 1496(%rsp)                # 4-byte Spill
	movl	%r8d, 1500(%rsp)                # 4-byte Spill
	movq	%rcx, 1504(%rsp)                # 8-byte Spill
	movq	%rdx, 1512(%rsp)                # 8-byte Spill
	movq	%rsi, 1520(%rsp)                # 8-byte Spill
	movq	%rdi, %rax
	movq	1520(%rsp), %rdi                # 8-byte Reload
	movq	%rax, 1528(%rsp)                # 8-byte Spill
	movl	1600(%rsp), %eax
	movl	%eax, 1536(%rsp)                # 4-byte Spill
	imull	%r9d, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	1536(%rsp), %eax                # 4-byte Reload
	addl	$-3, %eax
	movl	%eax, 1540(%rsp)                # 4-byte Spill
	cmpl	$3, %eax
	jle	.LBB13_5
# %bb.1:                                # %for.cond3.preheader.lr.ph
	movl	1496(%rsp), %eax                # 4-byte Reload
	movl	%eax, %ecx
	addl	$-3, %ecx
	movl	%ecx, 1448(%rsp)                # 4-byte Spill
	cmpl	$3, %ecx
	setg	%dl
	movb	%dl, 1455(%rsp)                 # 1-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 1456(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	addl	$-5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 1464(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	addl	$-6, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 1472(%rsp)                # 8-byte Spill
	cltq
	movq	%rax, 1480(%rsp)                # 8-byte Spill
	movl	$3, %eax
	movq	%rax, 1488(%rsp)                # 8-byte Spill
.LBB13_2:                               # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
	movb	1455(%rsp), %al                 # 1-byte Reload
	movq	1488(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 1440(%rsp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB13_3
	jmp	.LBB13_11
.LBB13_3:                               # %for.body7.lr.ph
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	1480(%rsp), %rcx                # 8-byte Reload
	movq	1440(%rsp), %rax                # 8-byte Reload
	movq	1528(%rsp), %rdx                # 8-byte Reload
	movq	%rax, %rsi
	addq	$-3, %rsi
	imulq	%rcx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 1408(%rsp)                # 8-byte Spill
	imulq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 1420(%rsp)                # 4-byte Spill
	movl	$3, %ecx
	movl	$3, %eax
	movq	%rcx, 1424(%rsp)                # 8-byte Spill
	movl	%eax, 1436(%rsp)                # 4-byte Spill
	jmp	.LBB13_7
.LBB13_4:                               # %for.cond288.preheader.loopexit
	jmp	.LBB13_5
.LBB13_5:                               # %for.cond288.preheader
	movl	1536(%rsp), %eax                # 4-byte Reload
	addl	$-4, %eax
	movl	%eax, 1404(%rsp)                # 4-byte Spill
	cmpl	$4, %eax
	jle	.LBB13_41
# %bb.6:                                # %for.cond293.preheader.lr.ph
	movl	1496(%rsp), %eax                # 4-byte Reload
	movl	%eax, %ecx
	addl	$-4, %ecx
	movl	%ecx, 1352(%rsp)                # 4-byte Spill
	cmpl	$4, %ecx
	setg	%cl
	movb	%cl, 1359(%rsp)                 # 1-byte Spill
	movl	%eax, %ecx
	addl	$-3, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 1360(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	addl	$-5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 1368(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	addl	$-6, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 1376(%rsp)                # 8-byte Spill
	cltq
	movq	%rax, 1384(%rsp)                # 8-byte Spill
	movl	$4, %eax
	movq	%rax, 1392(%rsp)                # 8-byte Spill
	jmp	.LBB13_12
.LBB13_7:                               # %for.body7
                                        #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	1500(%rsp), %ecx                # 4-byte Reload
	movq	1456(%rsp), %rdi                # 8-byte Reload
	movq	1464(%rsp), %r9                 # 8-byte Reload
	movq	1472(%rsp), %r11                # 8-byte Reload
	movq	1408(%rsp), %rsi                # 8-byte Reload
	movq	1504(%rsp), %rdx                # 8-byte Reload
	movq	1528(%rsp), %rax                # 8-byte Reload
	movl	1420(%rsp), %r14d               # 4-byte Reload
	movq	1424(%rsp), %rbx                # 8-byte Reload
	movl	1436(%rsp), %ebp                # 4-byte Reload
	movl	%ebp, 1292(%rsp)                # 4-byte Spill
	movq	%rbx, 1296(%rsp)                # 8-byte Spill
	movq	%rsi, %r10
	addq	%rbx, %r10
	movq	%r10, %r8
	addq	$-1, %r8
	addl	%r14d, %ebp
	movslq	%ebp, %r14
	movq	%r14, 1304(%rsp)                # 8-byte Spill
	movzbl	(%rax,%r14), %eax
                                        # kill: def $rax killed $eax
	addq	%rax, %rdx
	movq	%rdx, 1312(%rsp)                # 8-byte Spill
	addq	$1, %r8
	movzbl	-1(%rsi,%rbx), %eax
	movl	%eax, %r14d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r14, %rax
	movzbl	(%rdx,%rax), %eax
	addl	$100, %eax
	addq	$1, %r8
	movzbl	(%rsi,%rbx), %ebp
	movl	%ebp, %r15d
	xorl	%ebp, %ebp
	movl	%ebp, %r14d
	subq	%r15, %r14
	movzbl	(%rdx,%r14), %ebp
	addl	%ebp, %eax
	movzbl	1(%rsi,%rbx), %esi
	movl	%esi, %ebx
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rbx, %rsi
	movzbl	(%rdx,%rsi), %esi
	addl	%esi, %eax
	addq	%rdi, %r8
	movq	%r8, 1320(%rsp)                 # 8-byte Spill
	movq	%r8, %rsi
	addq	$1, %rsi
	movzbl	1(%r10,%rdi), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	2(%r10,%rdi), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	3(%r10,%rdi), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	4(%r10,%rdi), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	5(%r10,%rdi), %r10d
	movl	%r10d, %ebx
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%rbx, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	addq	%r9, %rsi
	movq	%rsi, 1328(%rsp)                # 8-byte Spill
	movq	%rsi, %r10
	addq	$1, %r10
	movzbl	4(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	5(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	6(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	7(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	8(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r10
	movzbl	9(%r8,%r9), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	10(%r8,%r9), %r8d
	movl	%r8d, %ebx
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%rbx, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	addq	%r11, %r10
	movq	%r10, 1336(%rsp)                # 8-byte Spill
	movq	%r10, %r8
	addq	$1, %r8
	movzbl	6(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r8
	movzbl	7(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	8(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$2, %r8
	addq	$1, %r8
	movzbl	10(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %r8
	movzbl	11(%rsi,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	12(%rsi,%r11), %esi
	movl	%esi, %ebx
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rbx, %rsi
	movzbl	(%rdx,%rsi), %esi
	addl	%esi, %eax
	addq	%r11, %r8
	movq	%r8, %rsi
	addq	$1, %rsi
	movzbl	6(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	7(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	8(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	9(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	10(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	11(%r10,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	12(%r10,%r11), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	addq	%r9, %rsi
	movzbl	6(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	7(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	8(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	9(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	10(%r8,%r9), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	movzbl	4(%rsi,%rdi), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	movzbl	5(%rsi,%rdi), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	movzbl	6(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%edx, %eax
	movl	%eax, 1348(%rsp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jg	.LBB13_9
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB13_7 Depth=2
	movq	1520(%rsp), %rax                # 8-byte Reload
	movq	1304(%rsp), %rcx                # 8-byte Reload
	movl	1348(%rsp), %esi                # 4-byte Reload
	movl	1500(%rsp), %edx                # 4-byte Reload
	subl	%esi, %edx
	movl	%edx, (%rax,%rcx,4)
.LBB13_9:                               # %for.inc
                                        #   in Loop: Header=BB13_7 Depth=2
	movl	1448(%rsp), %esi                # 4-byte Reload
	movl	1292(%rsp), %eax                # 4-byte Reload
	movq	1296(%rsp), %rcx                # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	movl	%ecx, %edx
	cmpl	%esi, %edx
	movq	%rcx, 1424(%rsp)                # 8-byte Spill
	movl	%eax, 1436(%rsp)                # 4-byte Spill
	jne	.LBB13_7
# %bb.10:                               # %for.inc285.loopexit
                                        #   in Loop: Header=BB13_2 Depth=1
	jmp	.LBB13_11
.LBB13_11:                              # %for.inc285
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	1540(%rsp), %edx                # 4-byte Reload
	movq	1440(%rsp), %rax                # 8-byte Reload
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 1488(%rsp)                # 8-byte Spill
	je	.LBB13_4
	jmp	.LBB13_2
.LBB13_12:                              # %for.cond293.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_14 Depth 2
	movb	1359(%rsp), %al                 # 1-byte Reload
	movq	1392(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 1280(%rsp)                # 8-byte Spill
	testb	$1, %al
	jne	.LBB13_13
	jmp	.LBB13_39
.LBB13_13:                              # %for.body297.lr.ph
                                        #   in Loop: Header=BB13_12 Depth=1
	movq	1280(%rsp), %rax                # 8-byte Reload
	movq	1528(%rsp), %rdx                # 8-byte Reload
	movq	1384(%rsp), %rdi                # 8-byte Reload
	movq	%rax, %rcx
	imulq	%rdi, %rcx
	movq	%rax, %rsi
	addq	$-3, %rsi
	imulq	%rdi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 1240(%rsp)                # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 1252(%rsp)                # 4-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 1256(%rsp)                # 4-byte Spill
	movl	%eax, 1260(%rsp)                # 4-byte Spill
	movl	$4, %ecx
	movl	$4, %eax
	movq	%rcx, 1264(%rsp)                # 8-byte Spill
	movl	%eax, 1276(%rsp)                # 4-byte Spill
.LBB13_14:                              # %for.body297
                                        #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	1520(%rsp), %rax                # 8-byte Reload
	movl	1252(%rsp), %edx                # 4-byte Reload
	movq	1264(%rsp), %rsi                # 8-byte Reload
	movl	1276(%rsp), %ecx                # 4-byte Reload
	movl	%ecx, 1212(%rsp)                # 4-byte Spill
	movq	%rsi, 1216(%rsp)                # 8-byte Spill
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 1224(%rsp)                # 8-byte Spill
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 1236(%rsp)                # 4-byte Spill
	cmpl	$0, %eax
	jle	.LBB13_37
# %bb.15:                               # %if.then304
                                        #   in Loop: Header=BB13_14 Depth=2
	movq	1216(%rsp), %rdx                # 8-byte Reload
	movq	1240(%rsp), %rcx                # 8-byte Reload
	movq	1504(%rsp), %rsi                # 8-byte Reload
	movq	1528(%rsp), %rdi                # 8-byte Reload
	movq	1224(%rsp), %r8                 # 8-byte Reload
	movl	1236(%rsp), %r9d                # 4-byte Reload
	movl	1500(%rsp), %eax                # 4-byte Reload
	subl	%r9d, %eax
	movl	%eax, 1180(%rsp)                # 4-byte Spill
	movzbl	(%rdi,%r8), %edi
                                        # kill: def $rdi killed $edi
	addq	%rdi, %rsi
	movq	%rsi, 1184(%rsp)                # 8-byte Spill
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, 1192(%rsp)                # 8-byte Spill
	addq	$1, %rcx
	movq	%rcx, 1200(%rsp)                # 8-byte Spill
	cmpl	$600, %eax                      # imm = 0x258
	jg	.LBB13_17
# %bb.16:                               # %if.then304.if.then762_crit_edge
                                        #   in Loop: Header=BB13_14 Depth=2
	movq	1360(%rsp), %rsi                # 8-byte Reload
	movq	1368(%rsp), %rax                # 8-byte Reload
	movq	1376(%rsp), %rcx                # 8-byte Reload
	movq	1200(%rsp), %rdx                # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, 1048(%rsp)                # 8-byte Spill
	addq	%rsi, %rdx
	movq	%rdx, 744(%rsp)                 # 8-byte Spill
	addq	$1, %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, %r9
	addq	%rax, %r9
	movq	%r9, %r10
	addq	$1, %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, %rbx
	addq	$1, %rbx
	movq	%rbx, %r14
	addq	$1, %r14
	movq	%r14, %r15
	addq	$1, %r15
	movq	%r15, %r12
	addq	$1, %r12
	movq	%r12, %r13
	addq	%rcx, %r13
	movq	%r13, %rbp
	addq	$1, %rbp
	movq	%rbp, %rax
	addq	$1, %rax
	movq	%rax, 1032(%rsp)                # 8-byte Spill
	addq	$2, %rax
	movq	%rax, 1016(%rsp)                # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 1000(%rsp)                # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 984(%rsp)                 # 8-byte Spill
	addq	%rcx, %rax
	movq	1368(%rsp), %rcx                # 8-byte Reload
	movq	%rax, 968(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 952(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 936(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 920(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 904(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 888(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 872(%rsp)                 # 8-byte Spill
	addq	%rcx, %rax
	movq	1360(%rsp), %rcx                # 8-byte Reload
	movq	%rax, 856(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 840(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 824(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 808(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 792(%rsp)                 # 8-byte Spill
	addq	%rcx, %rax
	movq	744(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 776(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 760(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 752(%rsp)                 # 8-byte Spill
	movq	760(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 768(%rsp)                 # 8-byte Spill
	movq	776(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 784(%rsp)                 # 8-byte Spill
	movq	792(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 800(%rsp)                 # 8-byte Spill
	movq	808(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 816(%rsp)                 # 8-byte Spill
	movq	824(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 832(%rsp)                 # 8-byte Spill
	movq	840(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 848(%rsp)                 # 8-byte Spill
	movq	856(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 864(%rsp)                 # 8-byte Spill
	movq	872(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 880(%rsp)                 # 8-byte Spill
	movq	888(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 896(%rsp)                 # 8-byte Spill
	movq	904(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 912(%rsp)                 # 8-byte Spill
	movq	920(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 928(%rsp)                 # 8-byte Spill
	movq	936(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 944(%rsp)                 # 8-byte Spill
	movq	952(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 960(%rsp)                 # 8-byte Spill
	movq	968(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 976(%rsp)                 # 8-byte Spill
	movq	984(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 992(%rsp)                 # 8-byte Spill
	movq	1000(%rsp), %rax                # 8-byte Reload
	movq	%rax, 1008(%rsp)                # 8-byte Spill
	movq	1016(%rsp), %rax                # 8-byte Reload
	movq	%rax, 1024(%rsp)                # 8-byte Spill
	movq	1032(%rsp), %rax                # 8-byte Reload
	movq	%rax, 1040(%rsp)                # 8-byte Spill
	movq	1048(%rsp), %rax                # 8-byte Reload
	movq	%rbp, 1056(%rsp)                # 8-byte Spill
	movq	%r13, 1064(%rsp)                # 8-byte Spill
	movq	%r12, 1072(%rsp)                # 8-byte Spill
	movq	%r15, 1080(%rsp)                # 8-byte Spill
	movq	%r14, 1088(%rsp)                # 8-byte Spill
	movq	%rbx, 1096(%rsp)                # 8-byte Spill
	movq	%r11, 1104(%rsp)                # 8-byte Spill
	movq	%r10, 1112(%rsp)                # 8-byte Spill
	movq	%r9, 1120(%rsp)                 # 8-byte Spill
	movq	%r8, 1128(%rsp)                 # 8-byte Spill
	movq	%rdi, 1136(%rsp)                # 8-byte Spill
	movq	%rsi, 1144(%rsp)                # 8-byte Spill
	movq	%rdx, 1152(%rsp)                # 8-byte Spill
	movq	%rcx, 1160(%rsp)                # 8-byte Spill
	movq	%rax, 1168(%rsp)                # 8-byte Spill
	jmp	.LBB13_28
.LBB13_17:                              # %if.then319
                                        #   in Loop: Header=BB13_14 Depth=2
	movq	1184(%rsp), %rdx                # 8-byte Reload
	movq	1360(%rsp), %r9                 # 8-byte Reload
	movq	1368(%rsp), %rdi                # 8-byte Reload
	movq	1376(%rsp), %r8                 # 8-byte Reload
	movq	1200(%rsp), %rsi                # 8-byte Reload
	movq	1192(%rsp), %rax                # 8-byte Reload
	movzbl	(%rax), %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	movzbl	(%rdx,%rax), %r10d
	movl	%r10d, 384(%rsp)                # 4-byte Spill
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, 712(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %ecx
	movl	%ecx, %r11d
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%r11, %rcx
	movzbl	(%rdx,%rcx), %ecx
	addl	%r10d, %ecx
	movzbl	1(%rsi), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	movl	%r10d, 388(%rsp)                # 4-byte Spill
	addl	%r10d, %ecx
	movl	%ecx, 432(%rsp)                 # 4-byte Spill
	addq	%r9, %rax
	movq	%rax, 736(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	movzbl	1(%rsi,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	shll	$1, %r10d
	movl	%r10d, 452(%rsp)                # 4-byte Spill
	addq	$1, %rcx
	movq	%rcx, 568(%rsp)                 # 8-byte Spill
	movzbl	2(%rsi,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	movl	%r10d, 392(%rsp)                # 4-byte Spill
	shll	$1, %r10d
	movl	%r10d, 428(%rsp)                # 4-byte Spill
	addq	$1, %rcx
	movq	%rcx, 560(%rsp)                 # 8-byte Spill
	movzbl	3(%rsi,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	shll	$1, %r10d
	movl	%r10d, 456(%rsp)                # 4-byte Spill
	addq	$1, %rcx
	movq	%rcx, 552(%rsp)                 # 8-byte Spill
	movzbl	4(%rsi,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rdx,%r10), %r10d
	movl	%r10d, 396(%rsp)                # 4-byte Spill
	shll	$1, %r10d
	movl	%r10d, 460(%rsp)                # 4-byte Spill
	movzbl	5(%rsi,%r9), %esi
	movl	%esi, %r9d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r9, %rsi
	movzbl	(%rdx,%rsi), %esi
	shll	$1, %esi
	movl	%esi, 464(%rsp)                 # 4-byte Spill
	addq	%rdi, %rcx
	movq	%rcx, 728(%rsp)                 # 8-byte Spill
	movq	%rcx, %rbx
	addq	$1, %rbx
	movq	%rbx, 544(%rsp)                 # 8-byte Spill
	movzbl	4(%rax,%rdi), %esi
	movl	%esi, %r9d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r9, %rsi
	movzbl	(%rdx,%rsi), %esi
	movl	%esi, 468(%rsp)                 # 4-byte Spill
	addq	$1, %rbx
	movq	%rbx, 536(%rsp)                 # 8-byte Spill
	movzbl	5(%rax,%rdi), %esi
	movl	%esi, %r9d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r9, %rsi
	movzbl	(%rdx,%rsi), %esi
	movl	%esi, 472(%rsp)                 # 4-byte Spill
	shll	$1, %esi
	movl	%esi, 400(%rsp)                 # 4-byte Spill
	addq	$1, %rbx
	movzbl	6(%rax,%rdi), %esi
	movl	%esi, %r9d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r9, %rsi
	movzbl	(%rdx,%rsi), %esi
	movl	%esi, 476(%rsp)                 # 4-byte Spill
	movq	%rbx, %r14
	addq	$1, %r14
	movzbl	7(%rax,%rdi), %esi
	movl	%esi, %r9d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r9, %rsi
	movzbl	(%rdx,%rsi), %esi
	movl	%esi, 480(%rsp)                 # 4-byte Spill
	movq	%r14, %r15
	addq	$1, %r15
	movzbl	8(%rax,%rdi), %esi
	movl	%esi, %r9d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r9, %rsi
	movzbl	(%rdx,%rsi), %esi
	movl	%esi, 484(%rsp)                 # 4-byte Spill
	movq	%r15, %r12
	addq	$1, %r12
	movzbl	9(%rax,%rdi), %esi
	movl	%esi, %r9d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r9, %rsi
	movzbl	(%rdx,%rsi), %esi
	movl	%esi, 488(%rsp)                 # 4-byte Spill
	movzbl	10(%rax,%rdi), %eax
	movl	%eax, %esi
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rsi, %rax
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 492(%rsp)                 # 4-byte Spill
	movq	%r12, %rsi
	addq	%r8, %rsi
	movq	%rsi, 720(%rsp)                 # 8-byte Spill
	movq	%rsi, %rbp
	addq	$1, %rbp
	movzbl	6(%rcx,%r8), %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r9, %rax
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 372(%rsp)                 # 4-byte Spill
	movq	%rbp, %r13
	addq	$1, %r13
	movq	%r13, 528(%rsp)                 # 8-byte Spill
	movzbl	7(%rcx,%r8), %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r9, %rax
	movzbl	(%rdx,%rax), %eax
	shll	$1, %eax
	movl	%eax, 404(%rsp)                 # 4-byte Spill
	movzbl	8(%rcx,%r8), %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r9, %rax
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 408(%rsp)                 # 4-byte Spill
	addq	$2, %r13
	movq	%r13, 520(%rsp)                 # 8-byte Spill
	addq	$1, %r13
	movzbl	10(%rcx,%r8), %eax
	movl	%eax, %r9d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r9, %rax
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 412(%rsp)                 # 4-byte Spill
	movq	%r13, %rax
	addq	$1, %rax
	movq	%rax, 704(%rsp)                 # 8-byte Spill
	movzbl	11(%rcx,%r8), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r9d
	movl	%r9d, 380(%rsp)                 # 4-byte Spill
	movzbl	12(%rcx,%r8), %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%r9, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movl	%ecx, 376(%rsp)                 # 4-byte Spill
	addq	%r8, %rax
	movq	%rax, 696(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 688(%rsp)                 # 8-byte Spill
	movzbl	6(%rsi,%r8), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r9d
	movl	%r9d, 496(%rsp)                 # 4-byte Spill
	addq	$1, %rcx
	movq	%rcx, 680(%rsp)                 # 8-byte Spill
	movzbl	7(%rsi,%r8), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r9d
	movl	%r9d, 500(%rsp)                 # 4-byte Spill
	shll	$1, %r9d
	movl	%r9d, 416(%rsp)                 # 4-byte Spill
	addq	$1, %rcx
	movq	%rcx, 672(%rsp)                 # 8-byte Spill
	movzbl	8(%rsi,%r8), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r9d
	movl	%r9d, 504(%rsp)                 # 4-byte Spill
	addq	$1, %rcx
	movq	%rcx, 664(%rsp)                 # 8-byte Spill
	movzbl	9(%rsi,%r8), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r9d
	movl	%r9d, 508(%rsp)                 # 4-byte Spill
	addq	$1, %rcx
	movq	%rcx, 656(%rsp)                 # 8-byte Spill
	movzbl	10(%rsi,%r8), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r11d
	addq	$1, %rcx
	movq	%rcx, 648(%rsp)                 # 8-byte Spill
	movzbl	11(%rsi,%r8), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r10d
	movzbl	12(%rsi,%r8), %esi
	movl	%esi, %r8d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r8, %rsi
	movzbl	(%rdx,%rsi), %r9d
	addq	%rdi, %rcx
	movq	%rcx, 640(%rsp)                 # 8-byte Spill
	addq	$1, %rcx
	movq	%rcx, 632(%rsp)                 # 8-byte Spill
	movzbl	6(%rax,%rdi), %esi
	movl	%esi, %r8d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r8, %rsi
	movzbl	(%rdx,%rsi), %r8d
	shll	$1, %r8d
	addq	$1, %rcx
	movq	%rcx, 624(%rsp)                 # 8-byte Spill
	movzbl	7(%rax,%rdi), %eax
                                        # kill: def $rax killed $eax
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rax, %rsi
	movq	696(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rdx,%rsi), %esi
	movl	%esi, 444(%rsp)                 # 4-byte Spill
	addq	$1, %rcx
	movq	%rcx, 616(%rsp)                 # 8-byte Spill
	movzbl	8(%rax,%rdi), %eax
                                        # kill: def $rax killed $eax
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rax, %rsi
	movq	696(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rdx,%rsi), %esi
	addq	$1, %rcx
	movq	%rcx, 608(%rsp)                 # 8-byte Spill
	movzbl	9(%rax,%rdi), %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	movq	1360(%rsp), %rcx                # 8-byte Reload
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 448(%rsp)                 # 4-byte Spill
	movq	696(%rsp), %rax                 # 8-byte Reload
	movzbl	10(%rax,%rdi), %eax
                                        # kill: def $rax killed $eax
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%rax, %rdi
	movq	608(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rdx,%rdi), %edi
	shll	$1, %edi
	addq	%rcx, %rax
	movq	%rax, 600(%rsp)                 # 8-byte Spill
	addq	$1, %rax
	movq	%rax, 592(%rsp)                 # 8-byte Spill
	movq	640(%rsp), %rax                 # 8-byte Reload
	movzbl	4(%rax,%rcx), %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	movq	1360(%rsp), %rcx                # 8-byte Reload
	movzbl	(%rdx,%rax), %edx
	movq	592(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 584(%rsp)                 # 8-byte Spill
	movq	640(%rsp), %rax                 # 8-byte Reload
	movzbl	5(%rax,%rcx), %eax
                                        # kill: def $rax killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%rax, %rcx
	movq	1184(%rsp), %rax                # 8-byte Reload
	movzbl	(%rax,%rcx), %eax
	movq	1360(%rsp), %rcx                # 8-byte Reload
	movl	%eax, 436(%rsp)                 # 4-byte Spill
	movq	640(%rsp), %rax                 # 8-byte Reload
	movzbl	6(%rax,%rcx), %eax
                                        # kill: def $rax killed $eax
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%rax, %rcx
	movq	1184(%rsp), %rax                # 8-byte Reload
	movzbl	(%rax,%rcx), %eax
	movl	492(%rsp), %ecx                 # 4-byte Reload
	movl	%eax, 440(%rsp)                 # 4-byte Spill
	movl	468(%rsp), %eax                 # 4-byte Reload
	subl	%eax, %ecx
	movl	372(%rsp), %eax                 # 4-byte Reload
	subl	%eax, %ecx
	movl	376(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	496(%rsp), %eax                 # 4-byte Reload
	subl	%eax, %ecx
	movl	380(%rsp), %eax                 # 4-byte Reload
	addl	%r9d, %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, 424(%rsp)                 # 4-byte Spill
	movl	488(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	384(%rsp), %ecx                 # 4-byte Reload
	addl	%r10d, %eax
	shll	$1, %eax
	movl	%eax, 420(%rsp)                 # 4-byte Spill
	movl	388(%rsp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	movl	452(%rsp), %ecx                 # 4-byte Reload
	subl	%ecx, %eax
	movl	392(%rsp), %ecx                 # 4-byte Reload
	subl	%ecx, %eax
	movl	396(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	464(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	400(%rsp), %ecx                 # 4-byte Reload
	subl	%ecx, %eax
	movl	476(%rsp), %ecx                 # 4-byte Reload
	subl	%ecx, %eax
	movl	484(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	404(%rsp), %ecx                 # 4-byte Reload
	subl	%ecx, %eax
	movl	408(%rsp), %ecx                 # 4-byte Reload
	subl	%ecx, %eax
	movl	412(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	416(%rsp), %ecx                 # 4-byte Reload
	subl	%ecx, %eax
	movl	504(%rsp), %ecx                 # 4-byte Reload
	subl	%ecx, %eax
	movl	420(%rsp), %ecx                 # 4-byte Reload
	addl	%r11d, %eax
	addl	%ecx, %eax
	movl	444(%rsp), %ecx                 # 4-byte Reload
	subl	%r8d, %eax
	subl	%ecx, %eax
	movl	424(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	448(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	440(%rsp), %ecx                 # 4-byte Reload
	addl	%edi, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	movl	428(%rsp), %ecx                 # 4-byte Reload
	movl	%eax, 512(%rsp)                 # 4-byte Spill
	movl	432(%rsp), %eax                 # 4-byte Reload
	subl	%eax, %edx
	movl	436(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %edx
	movl	440(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %edx
	movl	444(%rsp), %eax                 # 4-byte Reload
	imull	$3, %edx, %edx
	addl	%eax, %esi
	movl	448(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %esi
	movl	452(%rsp), %eax                 # 4-byte Reload
	shll	$1, %esi
	addl	%eax, %ecx
	movl	456(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	460(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	464(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	468(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	472(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	476(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	480(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	484(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	488(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	492(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	496(%rsp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	movl	500(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	504(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	508(%rsp), %ecx                 # 4-byte Reload
	addl	%ecx, %eax
	movl	512(%rsp), %ecx                 # 4-byte Reload
	addl	%r11d, %eax
	addl	%r10d, %eax
	addl	%r9d, %eax
	addl	%r8d, %eax
	addl	%edi, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	movl	%eax, 516(%rsp)                 # 4-byte Spill
	imull	%ecx, %ecx
	imull	%eax, %eax
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	callq	sqrtf@PLT
	movl	1180(%rsp), %eax                # 4-byte Reload
	movq	520(%rsp), %r9                  # 8-byte Reload
	movq	528(%rsp), %rcx                 # 8-byte Reload
	movq	536(%rsp), %r11                 # 8-byte Reload
	movq	544(%rsp), %r10                 # 8-byte Reload
	movq	552(%rsp), %r8                  # 8-byte Reload
	movq	560(%rsp), %rdi                 # 8-byte Reload
	movq	568(%rsp), %rsi                 # 8-byte Reload
	movq	576(%rsp), %rdx                 # 8-byte Reload
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm1
	movq	584(%rsp), %rax                 # 8-byte Reload
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI13_0(%rip), %xmm2          # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movq	%rax, 752(%rsp)                 # 8-byte Spill
	movq	592(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 768(%rsp)                 # 8-byte Spill
	movq	600(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 784(%rsp)                 # 8-byte Spill
	movq	608(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 800(%rsp)                 # 8-byte Spill
	movq	616(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 816(%rsp)                 # 8-byte Spill
	movq	624(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 832(%rsp)                 # 8-byte Spill
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 848(%rsp)                 # 8-byte Spill
	movq	640(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 864(%rsp)                 # 8-byte Spill
	movq	648(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 880(%rsp)                 # 8-byte Spill
	movq	656(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 896(%rsp)                 # 8-byte Spill
	movq	664(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 912(%rsp)                 # 8-byte Spill
	movq	672(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 928(%rsp)                 # 8-byte Spill
	movq	680(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 944(%rsp)                 # 8-byte Spill
	movq	688(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 960(%rsp)                 # 8-byte Spill
	movq	696(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 976(%rsp)                 # 8-byte Spill
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 992(%rsp)                 # 8-byte Spill
	movq	712(%rsp), %rax                 # 8-byte Reload
	movq	%r13, 1008(%rsp)                # 8-byte Spill
	movq	720(%rsp), %r13                 # 8-byte Reload
	movq	%r9, 1024(%rsp)                 # 8-byte Spill
	movq	728(%rsp), %r9                  # 8-byte Reload
	movq	%rcx, 1040(%rsp)                # 8-byte Spill
	movq	736(%rsp), %rcx                 # 8-byte Reload
	movq	%rbp, 1056(%rsp)                # 8-byte Spill
	movq	%r13, 1064(%rsp)                # 8-byte Spill
	movq	%r12, 1072(%rsp)                # 8-byte Spill
	movq	%r15, 1080(%rsp)                # 8-byte Spill
	movq	%r14, 1088(%rsp)                # 8-byte Spill
	movq	%rbx, 1096(%rsp)                # 8-byte Spill
	movq	%r11, 1104(%rsp)                # 8-byte Spill
	movq	%r10, 1112(%rsp)                # 8-byte Spill
	movq	%r9, 1120(%rsp)                 # 8-byte Spill
	movq	%r8, 1128(%rsp)                 # 8-byte Spill
	movq	%rdi, 1136(%rsp)                # 8-byte Spill
	movq	%rsi, 1144(%rsp)                # 8-byte Spill
	movq	%rdx, 1152(%rsp)                # 8-byte Spill
	movq	%rcx, 1160(%rsp)                # 8-byte Spill
	movq	%rax, 1168(%rsp)                # 8-byte Spill
	jbe	.LBB13_28
# %bb.18:                               # %if.then682
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	512(%rsp), %eax                 # 4-byte Reload
	movss	.LCPI13_3(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cmpl	$0, %eax
	movaps	%xmm0, 352(%rsp)                # 16-byte Spill
	je	.LBB13_20
# %bb.19:                               # %if.else
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	512(%rsp), %eax                 # 4-byte Reload
	movl	516(%rsp), %ecx                 # 4-byte Reload
	cvtsi2ss	%ecx, %xmm0
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm0, 352(%rsp)                # 16-byte Spill
.LBB13_20:                              # %if.end688
                                        #   in Loop: Header=BB13_14 Depth=2
	movaps	352(%rsp), %xmm2                # 16-byte Reload
	xorps	%xmm0, %xmm0
	ucomiss	%xmm2, %xmm0
	seta	%al
	movb	%al, 339(%rsp)                  # 1-byte Spill
	movss	.LCPI13_4(%rip), %xmm3          # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	xorps	%xmm0, %xmm0
	movaps	%xmm2, %xmm1
	cmpltss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	andps	%xmm3, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm0, %xmm1
	movss	%xmm1, 340(%rsp)                # 4-byte Spill
	xorl	%ecx, %ecx
	movl	$1, %eax
	movss	.LCPI13_1(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 344(%rsp)                 # 4-byte Spill
	movl	%eax, 348(%rsp)                 # 4-byte Spill
	ja	.LBB13_23
# %bb.21:                               # %if.else699
                                        #   in Loop: Header=BB13_14 Depth=2
	movss	340(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$1, %ecx
	xorl	%eax, %eax
	movss	.LCPI13_2(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 344(%rsp)                 # 4-byte Spill
	movl	%eax, 348(%rsp)                 # 4-byte Spill
	ja	.LBB13_23
# %bb.22:                               # %if.else704
                                        #   in Loop: Header=BB13_14 Depth=2
	movb	339(%rsp), %dl                  # 1-byte Reload
	movl	$1, %ecx
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	testb	$1, %dl
	cmovnel	%eax, %ecx
	movl	$1, %eax
	movl	%ecx, 344(%rsp)                 # 4-byte Spill
	movl	%eax, 348(%rsp)                 # 4-byte Spill
.LBB13_23:                              # %if.end711
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	1236(%rsp), %eax                # 4-byte Reload
	movq	1520(%rsp), %rcx                # 8-byte Reload
	movq	1216(%rsp), %rdi                # 8-byte Reload
	movl	1496(%rsp), %r8d                # 4-byte Reload
	movl	1256(%rsp), %r9d                # 4-byte Reload
	movl	344(%rsp), %esi                 # 4-byte Reload
	movl	348(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 324(%rsp)                 # 4-byte Spill
	movl	%esi, 328(%rsp)                 # 4-byte Spill
	addl	%r9d, %esi
	imull	%r8d, %esi
	movl	%edi, 332(%rsp)                 # 4-byte Spill
	addl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_37
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	1236(%rsp), %eax                # 4-byte Reload
	movq	1520(%rsp), %rcx                # 8-byte Reload
	movl	324(%rsp), %edi                 # 4-byte Reload
	movl	332(%rsp), %edx                 # 4-byte Reload
	movl	1496(%rsp), %r8d                # 4-byte Reload
	movl	328(%rsp), %r9d                 # 4-byte Reload
	movl	1256(%rsp), %esi                # 4-byte Reload
	subl	%r9d, %esi
	imull	%r8d, %esi
	subl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_37
# %bb.25:                               # %land.lhs.true728
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	1236(%rsp), %eax                # 4-byte Reload
	movq	1520(%rsp), %rcx                # 8-byte Reload
	movl	332(%rsp), %edi                 # 4-byte Reload
	movl	324(%rsp), %edx                 # 4-byte Reload
	movl	1496(%rsp), %r8d                # 4-byte Reload
	movl	1256(%rsp), %r9d                # 4-byte Reload
	movl	328(%rsp), %esi                 # 4-byte Reload
	shll	$1, %esi
	movl	%esi, 316(%rsp)                 # 4-byte Spill
	addl	%r9d, %esi
	imull	%r8d, %esi
	shll	$1, %edx
	movl	%edx, 320(%rsp)                 # 4-byte Spill
	addl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_37
# %bb.26:                               # %land.lhs.true739
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	1236(%rsp), %eax                # 4-byte Reload
	movq	1520(%rsp), %rcx                # 8-byte Reload
	movl	320(%rsp), %edi                 # 4-byte Reload
	movl	332(%rsp), %edx                 # 4-byte Reload
	movl	1496(%rsp), %r8d                # 4-byte Reload
	movl	316(%rsp), %r9d                 # 4-byte Reload
	movl	1256(%rsp), %esi                # 4-byte Reload
	subl	%r9d, %esi
	imull	%r8d, %esi
	subl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_37
# %bb.27:                               # %if.then750
                                        #   in Loop: Header=BB13_14 Depth=2
	movq	1512(%rsp), %rax                # 8-byte Reload
	movq	1224(%rsp), %rcx                # 8-byte Reload
	movb	$1, (%rax,%rcx)
	jmp	.LBB13_37
.LBB13_28:                              # %if.then762
                                        #   in Loop: Header=BB13_14 Depth=2
	movq	752(%rsp), %r11                 # 8-byte Reload
	movq	768(%rsp), %rdx                 # 8-byte Reload
	movq	784(%rsp), %r14                 # 8-byte Reload
	movq	800(%rsp), %r15                 # 8-byte Reload
	movq	816(%rsp), %rbp                 # 8-byte Reload
	movq	832(%rsp), %r10                 # 8-byte Reload
	movq	848(%rsp), %r8                  # 8-byte Reload
	movq	928(%rsp), %rdi                 # 8-byte Reload
	movq	960(%rsp), %rbx                 # 8-byte Reload
	movq	1080(%rsp), %r12                # 8-byte Reload
	movq	1096(%rsp), %r9                 # 8-byte Reload
	movq	1136(%rsp), %r13                # 8-byte Reload
	movq	1144(%rsp), %rsi                # 8-byte Reload
	movq	1160(%rsp), %rcx                # 8-byte Reload
	movq	1168(%rsp), %rax                # 8-byte Reload
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	1152(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	1128(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	1120(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	1112(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	1104(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	1088(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	1072(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movq	1064(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	1056(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	1040(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	1024(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	1008(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	992(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	976(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	944(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	912(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	896(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movq	880(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	864(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movq	1192(%rsp), %rcx                # 8-byte Reload
	movq	%rbp, 192(%rsp)                 # 8-byte Spill
	movzbl	(%rcx), %ecx
	movl	%ecx, %ebp
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%rbp, %rcx
	movq	1184(%rsp), %rbp                # 8-byte Reload
	movzbl	(%rbp,%rcx), %ebp
	movq	1200(%rsp), %rcx                # 8-byte Reload
	movl	%ebp, 228(%rsp)                 # 4-byte Spill
	movzbl	(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	xorl	%ebp, %ebp
                                        # kill: def $rbp killed $ebp
	subq	%rcx, %rbp
	movq	1184(%rsp), %rcx                # 8-byte Reload
	movzbl	(%rcx,%rbp), %ecx
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	xorl	%ebp, %ebp
                                        # kill: def $rbp killed $ebp
	subq	%rax, %rbp
	movq	1184(%rsp), %rax                # 8-byte Reload
	movzbl	(%rax,%rbp), %eax
	movl	228(%rsp), %ebp                 # 4-byte Reload
	movl	%eax, 232(%rsp)                 # 4-byte Spill
	subl	%eax, %ebp
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 200(%rsp)                 # 4-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rbp, %rax
	movq	1184(%rsp), %rbp                # 8-byte Reload
	movzbl	(%rbp,%rax), %ebp
	movq	88(%rsp), %rax                  # 8-byte Reload
	shll	$2, %ebp
	movl	%ebp, 300(%rsp)                 # 4-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rbp, %rax
	movq	1184(%rsp), %rbp                # 8-byte Reload
	movzbl	(%rbp,%rax), %ebp
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 288(%rsp)                 # 4-byte Spill
	movzbl	(%rsi), %esi
                                        # kill: def $rsi killed $esi
	xorl	%ebp, %ebp
                                        # kill: def $rbp killed $ebp
	subq	%rsi, %rbp
	movq	1184(%rsp), %rsi                # 8-byte Reload
	movzbl	(%rsi,%rbp), %esi
	movzbl	(%r13), %ebp
	movl	%ebp, %r13d
	xorl	%ebp, %ebp
                                        # kill: def $rbp killed $ebp
	subq	%r13, %rbp
	movq	1184(%rsp), %r13                # 8-byte Reload
	movzbl	(%r13,%rbp), %r13d
	movl	%r13d, 216(%rsp)                # 4-byte Spill
	shll	$1, %r13d
	movzbl	(%rax), %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rbp, %rax
	movq	1184(%rsp), %rbp                # 8-byte Reload
	movzbl	(%rbp,%rax), %ebp
	movq	104(%rsp), %rax                 # 8-byte Reload
	shll	$2, %ebp
	movl	%ebp, 204(%rsp)                 # 4-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rbp, %rax
	movq	1184(%rsp), %rbp                # 8-byte Reload
	movzbl	(%rbp,%rax), %ebp
	movq	112(%rsp), %rax                 # 8-byte Reload
	movl	%ebp, 260(%rsp)                 # 4-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rbp, %rax
	movq	1184(%rsp), %rbp                # 8-byte Reload
	movzbl	(%rbp,%rax), %ebp
	movq	120(%rsp), %rax                 # 8-byte Reload
	movl	%ebp, 256(%rsp)                 # 4-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rbp, %rax
	movq	1184(%rsp), %rbp                # 8-byte Reload
	movzbl	(%rbp,%rax), %ebp
	movq	128(%rsp), %rax                 # 8-byte Reload
	movl	%ebp, 208(%rsp)                 # 4-byte Spill
	movzbl	(%r9), %r9d
                                        # kill: def $r9 killed $r9d
	xorl	%ebp, %ebp
                                        # kill: def $rbp killed $ebp
	subq	%r9, %rbp
	movq	1184(%rsp), %r9                 # 8-byte Reload
	movzbl	(%r9,%rbp), %r9d
	movzbl	(%rax), %eax
	movl	%eax, %ebp
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rbp, %rax
	movq	1184(%rsp), %rbp                # 8-byte Reload
	movzbl	(%rbp,%rax), %ebp
	movq	136(%rsp), %rax                 # 8-byte Reload
	movl	%ebp, 212(%rsp)                 # 4-byte Spill
	movzbl	(%r12), %ebp
	movl	%ebp, %r12d
	xorl	%ebp, %ebp
                                        # kill: def $rbp killed $ebp
	subq	%r12, %rbp
	movq	1184(%rsp), %r12                # 8-byte Reload
	movzbl	(%r12,%rbp), %ebp
	movl	%ebp, 240(%rsp)                 # 4-byte Spill
	shll	$1, %ebp
	movzbl	(%rax), %eax
	movl	%eax, %r12d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r12, %rax
	movq	1184(%rsp), %r12                # 8-byte Reload
	movzbl	(%r12,%rax), %r12d
	movq	144(%rsp), %rax                 # 8-byte Reload
	movl	%r12d, 268(%rsp)                # 4-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %r12d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r12, %rax
	movq	1184(%rsp), %r12                # 8-byte Reload
	movzbl	(%r12,%rax), %r12d
	movq	152(%rsp), %rax                 # 8-byte Reload
	movl	%r12d, 272(%rsp)                # 4-byte Spill
	movzbl	(%rbx), %ebx
                                        # kill: def $rbx killed $ebx
	xorl	%r12d, %r12d
                                        # kill: def $r12 killed $r12d
	subq	%rbx, %r12
	movq	1184(%rsp), %rbx                # 8-byte Reload
	movzbl	(%rbx,%r12), %ebx
	movl	%ebx, 244(%rsp)                 # 4-byte Spill
	shll	$1, %ebx
	movzbl	(%rax), %eax
	movl	%eax, %r12d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r12, %rax
	movq	1184(%rsp), %r12                # 8-byte Reload
	movzbl	(%r12,%rax), %r12d
	movq	160(%rsp), %rax                 # 8-byte Reload
	movl	%r12d, 224(%rsp)                # 4-byte Spill
	movzbl	(%rdi), %edi
                                        # kill: def $rdi killed $edi
	xorl	%r12d, %r12d
                                        # kill: def $r12 killed $r12d
	subq	%rdi, %r12
	movq	1184(%rsp), %rdi                # 8-byte Reload
	movzbl	(%rdi,%r12), %edi
	movzbl	(%rax), %eax
	movl	%eax, %r12d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r12, %rax
	movq	1184(%rsp), %r12                # 8-byte Reload
	movzbl	(%r12,%rax), %r12d
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%r12d, 236(%rsp)                # 4-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %r12d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r12, %rax
	movq	1184(%rsp), %r12                # 8-byte Reload
	movzbl	(%r12,%rax), %r12d
	movq	176(%rsp), %rax                 # 8-byte Reload
	movl	%r12d, 292(%rsp)                # 4-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %r12d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r12, %rax
	movq	1184(%rsp), %r12                # 8-byte Reload
	movzbl	(%r12,%rax), %r12d
	movq	184(%rsp), %rax                 # 8-byte Reload
	movl	%r12d, 276(%rsp)                # 4-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %r12d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r12, %rax
	movq	1184(%rsp), %r12                # 8-byte Reload
	movzbl	(%r12,%rax), %r12d
	movq	192(%rsp), %rax                 # 8-byte Reload
	shll	$2, %r12d
	movl	%r12d, 248(%rsp)                # 4-byte Spill
	movzbl	(%r8), %r8d
                                        # kill: def $r8 killed $r8d
	xorl	%r12d, %r12d
                                        # kill: def $r12 killed $r12d
	subq	%r8, %r12
	movq	1184(%rsp), %r8                 # 8-byte Reload
	movzbl	(%r8,%r12), %r8d
	movl	%r8d, 220(%rsp)                 # 4-byte Spill
	shll	$1, %r8d
	movzbl	(%r10), %r10d
                                        # kill: def $r10 killed $r10d
	xorl	%r12d, %r12d
                                        # kill: def $r12 killed $r12d
	subq	%r10, %r12
	movq	1184(%rsp), %r10                # 8-byte Reload
	movzbl	(%r10,%r12), %r10d
	movzbl	(%rax), %eax
	movl	%eax, %r12d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r12, %rax
	movq	1184(%rsp), %r12                # 8-byte Reload
	movzbl	(%r12,%rax), %r12d
	movl	200(%rsp), %eax                 # 4-byte Reload
	movl	%r12d, 296(%rsp)                # 4-byte Spill
	movzbl	(%r15), %r15d
                                        # kill: def $r15 killed $r15d
	xorl	%r12d, %r12d
                                        # kill: def $r12 killed $r12d
	subq	%r15, %r12
	movq	1184(%rsp), %r15                # 8-byte Reload
	movzbl	(%r15,%r12), %r15d
	movl	204(%rsp), %r12d                # 4-byte Reload
	shll	$2, %r15d
	movl	%r15d, 252(%rsp)                # 4-byte Spill
	movzbl	(%r14), %r14d
                                        # kill: def $r14 killed $r14d
	xorl	%r15d, %r15d
                                        # kill: def $r15 killed $r15d
	subq	%r14, %r15
	movq	1184(%rsp), %r14                # 8-byte Reload
	movzbl	(%r14,%r15), %r14d
	movl	208(%rsp), %r15d                # 4-byte Reload
	movl	%r14d, 280(%rsp)                # 4-byte Spill
	movzbl	(%rdx), %edx
                                        # kill: def $rdx killed $edx
	xorl	%r14d, %r14d
                                        # kill: def $r14 killed $r14d
	subq	%rdx, %r14
	movq	1184(%rsp), %rdx                # 8-byte Reload
	movzbl	(%rdx,%r14), %edx
	movzbl	(%r11), %r11d
                                        # kill: def $r11 killed $r11d
	xorl	%r14d, %r14d
                                        # kill: def $r14 killed $r14d
	subq	%r11, %r14
	movq	1184(%rsp), %r11                # 8-byte Reload
	movzbl	(%r11,%r14), %r11d
	movl	212(%rsp), %r14d                # 4-byte Reload
	movl	%r11d, 284(%rsp)                # 4-byte Spill
	movl	288(%rsp), %r11d                # 4-byte Reload
	addl	%r11d, %esi
	movl	216(%rsp), %r11d                # 4-byte Reload
	addl	%r11d, %esi
	movl	220(%rsp), %r11d                # 4-byte Reload
	addl	%r11d, %esi
	movl	224(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %esi
	movl	296(%rsp), %r10d                # 4-byte Reload
	addl	%r10d, %esi
	movl	228(%rsp), %r10d                # 4-byte Reload
	shll	$2, %esi
	addl	%r10d, %ecx
	movl	232(%rsp), %r10d                # 4-byte Reload
	addl	%r10d, %ecx
	movl	280(%rsp), %r10d                # 4-byte Reload
	addl	%r10d, %ecx
	movl	300(%rsp), %r10d                # 4-byte Reload
	addl	%edx, %ecx
	movl	284(%rsp), %edx                 # 4-byte Reload
	addl	%edx, %ecx
	imull	$9, %ecx, %ecx
	movl	%r12d, %edx
	addl	%r10d, %edx
	movl	260(%rsp), %r10d                # 4-byte Reload
	addl	%r10d, %edx
	movl	256(%rsp), %r10d                # 4-byte Reload
	addl	%r10d, %edx
	movl	236(%rsp), %r10d                # 4-byte Reload
	addl	%r15d, %edx
	addl	%r9d, %edx
	movl	240(%rsp), %r9d                 # 4-byte Reload
	addl	%r14d, %edx
	addl	%r9d, %edx
	movl	268(%rsp), %r9d                 # 4-byte Reload
	addl	%r9d, %edx
	movl	272(%rsp), %r9d                 # 4-byte Reload
	addl	%r9d, %edx
	movl	244(%rsp), %r9d                 # 4-byte Reload
	addl	%r9d, %edx
	movl	248(%rsp), %r9d                 # 4-byte Reload
	addl	%r11d, %edx
	addl	%edi, %edx
	movl	292(%rsp), %edi                 # 4-byte Reload
	addl	%r10d, %edx
	addl	%edi, %edx
	movl	276(%rsp), %edi                 # 4-byte Reload
	addl	%edi, %edx
	movl	252(%rsp), %edi                 # 4-byte Reload
	addl	%r9d, %edx
	addl	%edi, %edx
	addl	%esi, %edx
	movl	256(%rsp), %esi                 # 4-byte Reload
	addl	%ecx, %edx
	movl	260(%rsp), %ecx                 # 4-byte Reload
	movl	%edx, 264(%rsp)                 # 4-byte Spill
	addl	%eax, %ecx
	movl	268(%rsp), %eax                 # 4-byte Reload
	subl	%eax, %ecx
	movl	272(%rsp), %eax                 # 4-byte Reload
	subl	%eax, %ecx
	movl	276(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	280(%rsp), %eax                 # 4-byte Reload
	subl	%eax, %ecx
	movl	284(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	288(%rsp), %eax                 # 4-byte Reload
	imull	$3, %ecx, %ecx
	addl	%eax, %esi
	movl	292(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %esi
	movl	296(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %esi
	movl	300(%rsp), %eax                 # 4-byte Reload
	shll	$1, %esi
	subl	%r13d, %eax
	subl	%r12d, %eax
	addl	%r15d, %eax
	subl	%r14d, %eax
	subl	%ebp, %eax
	subl	%ebx, %eax
	subl	%r11d, %eax
	addl	%r10d, %eax
	subl	%r9d, %eax
	subl	%r8d, %eax
	addl	%edi, %eax
	addl	%esi, %eax
	addl	%ecx, %eax
	movl	%eax, 304(%rsp)                 # 4-byte Spill
	movl	$1, %ecx
	xorl	%eax, %eax
	cmpl	$0, %edx
	movl	%ecx, 308(%rsp)                 # 4-byte Spill
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	je	.LBB13_32
# %bb.29:                               # %if.end1188
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	252(%rsp), %r11d                # 4-byte Reload
	movl	296(%rsp), %ebx                 # 4-byte Reload
	movl	220(%rsp), %ebp                 # 4-byte Reload
	movl	248(%rsp), %r14d                # 4-byte Reload
	movl	236(%rsp), %r15d                # 4-byte Reload
	movl	224(%rsp), %r12d                # 4-byte Reload
	movl	212(%rsp), %r13d                # 4-byte Reload
	movl	256(%rsp), %r10d                # 4-byte Reload
	movq	1184(%rsp), %rdx                # 8-byte Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movzbl	(%rcx), %ecx
	movl	%ecx, %r9d
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%r9, %rcx
	movzbl	(%rdx,%rcx), %ecx
	movzbl	(%r8), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r9d
	movzbl	(%rdi), %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rdx,%rdi), %r8d
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rdx,%rsi), %edi
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rax, %rsi
	movq	72(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rdx,%rsi), %edx
	movzbl	(%rax), %eax
                                        # kill: def $rax killed $eax
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rax, %rsi
	movq	1184(%rsp), %rax                # 8-byte Reload
	movzbl	(%rax,%rsi), %eax
	movl	240(%rsp), %esi                 # 4-byte Reload
	addl	%r10d, %esi
	movl	244(%rsp), %r10d                # 4-byte Reload
	addl	%r10d, %esi
	movl	292(%rsp), %r10d                # 4-byte Reload
	addl	%r10d, %esi
	movl	280(%rsp), %r10d                # 4-byte Reload
	addl	%r9d, %esi
	movl	260(%rsp), %r9d                 # 4-byte Reload
	addl	%edx, %esi
	movl	268(%rsp), %edx                 # 4-byte Reload
	shll	$2, %esi
	addl	%r9d, %edx
	movl	272(%rsp), %r9d                 # 4-byte Reload
	addl	%r9d, %edx
	movl	276(%rsp), %r9d                 # 4-byte Reload
	addl	%r9d, %edx
	movl	284(%rsp), %r9d                 # 4-byte Reload
	addl	%ecx, %edx
	movl	232(%rsp), %ecx                 # 4-byte Reload
	addl	%eax, %edx
	movl	228(%rsp), %eax                 # 4-byte Reload
	imull	$9, %edx, %edx
	addl	%eax, %ecx
	movl	300(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	288(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	216(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	204(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	208(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %ecx
	movl	264(%rsp), %eax                 # 4-byte Reload
	addl	%r13d, %ecx
	addl	%r12d, %ecx
	addl	%r15d, %ecx
	addl	%r14d, %ecx
	addl	%ebp, %ecx
	addl	%ebx, %ecx
	addl	%r11d, %ecx
	addl	%r10d, %ecx
	addl	%r9d, %ecx
	addl	%r8d, %ecx
	addl	%edi, %ecx
	addl	%esi, %ecx
	addl	%edx, %ecx
	cvtsi2ss	%ecx, %xmm1
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, 28(%rsp)                 # 4-byte Spill
	xorl	%ecx, %ecx
	movl	$1, %eax
	movss	.LCPI13_1(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 308(%rsp)                 # 4-byte Spill
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	ja	.LBB13_32
# %bb.30:                               # %if.else1193
                                        #   in Loop: Header=BB13_14 Depth=2
	movss	28(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$1, %ecx
	xorl	%eax, %eax
	movss	.LCPI13_2(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 308(%rsp)                 # 4-byte Spill
	movl	%eax, 312(%rsp)                 # 4-byte Spill
	ja	.LBB13_32
# %bb.31:                               # %if.else1198
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	304(%rsp), %edx                 # 4-byte Reload
	movl	$1, %ecx
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	cmpl	$0, %edx
	cmovgl	%eax, %ecx
	movl	$1, %eax
	movl	%ecx, 308(%rsp)                 # 4-byte Spill
	movl	%eax, 312(%rsp)                 # 4-byte Spill
.LBB13_32:                              # %if.end1205
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	1236(%rsp), %eax                # 4-byte Reload
	movq	1520(%rsp), %rcx                # 8-byte Reload
	movq	1216(%rsp), %rdi                # 8-byte Reload
	movl	1496(%rsp), %r8d                # 4-byte Reload
	movl	1260(%rsp), %r9d                # 4-byte Reload
	movl	308(%rsp), %esi                 # 4-byte Reload
	movl	312(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 16(%rsp)                  # 4-byte Spill
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	addl	%r9d, %esi
	imull	%r8d, %esi
	movl	%edi, 24(%rsp)                  # 4-byte Spill
	addl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_37
# %bb.33:                               # %land.lhs.true1214
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	1236(%rsp), %eax                # 4-byte Reload
	movq	1520(%rsp), %rcx                # 8-byte Reload
	movl	16(%rsp), %edi                  # 4-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	1496(%rsp), %r8d                # 4-byte Reload
	movl	20(%rsp), %r9d                  # 4-byte Reload
	movl	1260(%rsp), %esi                # 4-byte Reload
	subl	%r9d, %esi
	imull	%r8d, %esi
	subl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_37
# %bb.34:                               # %land.lhs.true1223
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	1236(%rsp), %eax                # 4-byte Reload
	movq	1520(%rsp), %rcx                # 8-byte Reload
	movl	24(%rsp), %edi                  # 4-byte Reload
	movl	16(%rsp), %edx                  # 4-byte Reload
	movl	1496(%rsp), %r8d                # 4-byte Reload
	movl	1260(%rsp), %r9d                # 4-byte Reload
	movl	20(%rsp), %esi                  # 4-byte Reload
	shll	$1, %esi
	movl	%esi, 8(%rsp)                   # 4-byte Spill
	addl	%r9d, %esi
	imull	%r8d, %esi
	shll	$1, %edx
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	addl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_37
# %bb.35:                               # %land.lhs.true1234
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	1236(%rsp), %eax                # 4-byte Reload
	movq	1520(%rsp), %rcx                # 8-byte Reload
	movl	12(%rsp), %edi                  # 4-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	1496(%rsp), %r8d                # 4-byte Reload
	movl	8(%rsp), %r9d                   # 4-byte Reload
	movl	1260(%rsp), %esi                # 4-byte Reload
	subl	%r9d, %esi
	imull	%r8d, %esi
	subl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_37
# %bb.36:                               # %if.then1245
                                        #   in Loop: Header=BB13_14 Depth=2
	movq	1512(%rsp), %rax                # 8-byte Reload
	movq	1224(%rsp), %rcx                # 8-byte Reload
	movb	$2, (%rax,%rcx)
.LBB13_37:                              # %for.inc1253
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	1352(%rsp), %esi                # 4-byte Reload
	movl	1212(%rsp), %eax                # 4-byte Reload
	movq	1216(%rsp), %rcx                # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	movl	%ecx, %edx
	cmpl	%esi, %edx
	movq	%rcx, 1264(%rsp)                # 8-byte Spill
	movl	%eax, 1276(%rsp)                # 4-byte Spill
	jne	.LBB13_14
# %bb.38:                               # %for.inc1256.loopexit
                                        #   in Loop: Header=BB13_12 Depth=1
	jmp	.LBB13_39
.LBB13_39:                              # %for.inc1256
                                        #   in Loop: Header=BB13_12 Depth=1
	movl	1404(%rsp), %edx                # 4-byte Reload
	movq	1280(%rsp), %rax                # 8-byte Reload
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 1392(%rsp)                # 8-byte Spill
	jne	.LBB13_12
# %bb.40:                               # %for.end1258.loopexit
	jmp	.LBB13_41
.LBB13_41:                              # %for.end1258
                                        # implicit-def: $eax
	addq	$1544, %rsp                     # imm = 0x608
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	susan_edges, .Lfunc_end13-susan_edges
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function susan_edges_small
.LCPI14_0:
	.quad	0x3fd999999999999a              # double 0.40000000000000002
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI14_1:
	.long	0x3f000000                      # float 0.5
.LCPI14_2:
	.long	0x40000000                      # float 2
.LCPI14_3:
	.long	0x49742400                      # float 1.0E+6
.LCPI14_4:
	.long	0x80000000                      # float -0
	.text
	.globl	susan_edges_small
	.p2align	4, 0x90
	.type	susan_edges_small,@function
susan_edges_small:                      # @susan_edges_small
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$536, %rsp                      # imm = 0x218
	.cfi_def_cfa_offset 544
	movl	%r9d, 492(%rsp)                 # 4-byte Spill
	movq	%rcx, 496(%rsp)                 # 8-byte Spill
	movq	%rdx, 504(%rsp)                 # 8-byte Spill
	movq	%rsi, 512(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	512(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 520(%rsp)                 # 8-byte Spill
	movl	544(%rsp), %eax
	movl	%eax, 528(%rsp)                 # 4-byte Spill
	imull	%r9d, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	528(%rsp), %eax                 # 4-byte Reload
	addl	$-1, %eax
	movl	%eax, 532(%rsp)                 # 4-byte Spill
	cmpl	$1, %eax
	jle	.LBB14_5
# %bb.1:                                # %for.cond3.preheader.lr.ph
	movl	492(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, 456(%rsp)                 # 4-byte Spill
	cmpl	$1, %ecx
	setg	%cl
	movb	%cl, 463(%rsp)                  # 1-byte Spill
	movl	%eax, %ecx
	addl	$-2, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	cltq
	movq	%rax, 472(%rsp)                 # 8-byte Spill
	movl	$1, %eax
	movq	%rax, 480(%rsp)                 # 8-byte Spill
.LBB14_2:                               # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_7 Depth 2
	movb	463(%rsp), %al                  # 1-byte Reload
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 448(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB14_3
	jmp	.LBB14_11
.LBB14_3:                               # %for.body7.lr.ph
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	472(%rsp), %rcx                 # 8-byte Reload
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	520(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rsi
	addq	$-1, %rsi
	imulq	%rcx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 416(%rsp)                 # 8-byte Spill
	imulq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 428(%rsp)                 # 4-byte Spill
	movl	$1, %ecx
	movl	$1, %eax
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
	movl	%eax, 444(%rsp)                 # 4-byte Spill
	jmp	.LBB14_7
.LBB14_4:                               # %for.cond84.preheader.loopexit
	jmp	.LBB14_5
.LBB14_5:                               # %for.cond84.preheader
	movl	528(%rsp), %eax                 # 4-byte Reload
	addl	$-2, %eax
	movl	%eax, 412(%rsp)                 # 4-byte Spill
	cmpl	$2, %eax
	jle	.LBB14_37
# %bb.6:                                # %for.cond89.preheader.lr.ph
	movl	492(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	addl	$-2, %ecx
	movl	%ecx, 376(%rsp)                 # 4-byte Spill
	cmpl	$2, %ecx
	setg	%dl
	movb	%dl, 383(%rsp)                  # 1-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	cltq
	movq	%rax, 392(%rsp)                 # 8-byte Spill
	movl	$2, %eax
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	jmp	.LBB14_12
.LBB14_7:                               # %for.body7
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	464(%rsp), %rsi                 # 8-byte Reload
	movq	416(%rsp), %r8                  # 8-byte Reload
	movq	496(%rsp), %rcx                 # 8-byte Reload
	movq	520(%rsp), %rax                 # 8-byte Reload
	movl	428(%rsp), %r11d                # 4-byte Reload
	movq	432(%rsp), %r9                  # 8-byte Reload
	movl	444(%rsp), %r10d                # 4-byte Reload
	movl	%r10d, 340(%rsp)                # 4-byte Spill
	movq	%r9, 344(%rsp)                  # 8-byte Spill
	movq	%r8, %rdi
	addq	%r9, %rdi
	movq	%rdi, %rdx
	addq	$-1, %rdx
	addl	%r11d, %r10d
	movslq	%r10d, %r10
	movq	%r10, 352(%rsp)                 # 8-byte Spill
	movzbl	(%rax,%r10), %eax
                                        # kill: def $rax killed $eax
	addq	%rax, %rcx
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	addq	$1, %rdx
	movzbl	-1(%r8,%r9), %eax
	movl	%eax, %r10d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r10, %rax
	movzbl	(%rcx,%rax), %eax
	addl	$100, %eax
	addq	$1, %rdx
	movzbl	(%r8,%r9), %r10d
	movl	%r10d, %r11d
	xorl	%r10d, %r10d
                                        # kill: def $r10 killed $r10d
	subq	%r11, %r10
	movzbl	(%rcx,%r10), %r10d
	addl	%r10d, %eax
	movzbl	1(%r8,%r9), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rcx,%r8), %r8d
	addl	%r8d, %eax
	addq	%rsi, %rdx
	movzbl	1(%rdi,%rsi), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rcx,%r8), %r8d
	addl	%r8d, %eax
	movzbl	3(%rdi,%rsi), %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rcx,%rdi), %edi
	addl	%edi, %eax
	movzbl	2(%rdx,%rsi), %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rcx,%rdi), %edi
	addl	%edi, %eax
	movzbl	3(%rdx,%rsi), %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rcx,%rdi), %edi
	addl	%edi, %eax
	movzbl	4(%rdx,%rsi), %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%rsi, %rdx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, 372(%rsp)                 # 4-byte Spill
	cmpl	$731, %eax                      # imm = 0x2DB
	jge	.LBB14_9
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB14_7 Depth=2
	movq	512(%rsp), %rax                 # 8-byte Reload
	movq	352(%rsp), %rcx                 # 8-byte Reload
	movl	372(%rsp), %esi                 # 4-byte Reload
	movl	$730, %edx                      # imm = 0x2DA
	subl	%esi, %edx
	movl	%edx, (%rax,%rcx,4)
.LBB14_9:                               # %for.inc
                                        #   in Loop: Header=BB14_7 Depth=2
	movl	456(%rsp), %esi                 # 4-byte Reload
	movl	340(%rsp), %eax                 # 4-byte Reload
	movq	344(%rsp), %rcx                 # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	movl	%ecx, %edx
	cmpl	%esi, %edx
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
	movl	%eax, 444(%rsp)                 # 4-byte Spill
	jne	.LBB14_7
# %bb.10:                               # %for.inc81.loopexit
                                        #   in Loop: Header=BB14_2 Depth=1
	jmp	.LBB14_11
.LBB14_11:                              # %for.inc81
                                        #   in Loop: Header=BB14_2 Depth=1
	movl	532(%rsp), %edx                 # 4-byte Reload
	movq	448(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	je	.LBB14_4
	jmp	.LBB14_2
.LBB14_12:                              # %for.cond89.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_14 Depth 2
	movb	383(%rsp), %al                  # 1-byte Reload
	movq	400(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB14_13
	jmp	.LBB14_35
.LBB14_13:                              # %for.body93.lr.ph
                                        #   in Loop: Header=BB14_12 Depth=1
	movq	328(%rsp), %rax                 # 8-byte Reload
	movq	520(%rsp), %rdx                 # 8-byte Reload
	movq	392(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, %rcx
	imulq	%rdi, %rcx
	movq	%rax, %rsi
	addq	$-1, %rsi
	imulq	%rdi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 300(%rsp)                 # 4-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 304(%rsp)                 # 4-byte Spill
	movl	%eax, 308(%rsp)                 # 4-byte Spill
	movl	$2, %ecx
	movl	$2, %eax
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	movl	%eax, 324(%rsp)                 # 4-byte Spill
.LBB14_14:                              # %for.body93
                                        #   Parent Loop BB14_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	512(%rsp), %rax                 # 8-byte Reload
	movl	300(%rsp), %edx                 # 4-byte Reload
	movq	312(%rsp), %rsi                 # 8-byte Reload
	movl	324(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 260(%rsp)                 # 4-byte Spill
	movq	%rsi, 264(%rsp)                 # 8-byte Spill
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 284(%rsp)                 # 4-byte Spill
	cmpl	$0, %eax
	jle	.LBB14_33
# %bb.15:                               # %if.then100
                                        #   in Loop: Header=BB14_14 Depth=2
	movq	264(%rsp), %rdx                 # 8-byte Reload
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	496(%rsp), %rsi                 # 8-byte Reload
	movq	520(%rsp), %rdi                 # 8-byte Reload
	movq	272(%rsp), %r8                  # 8-byte Reload
	movl	284(%rsp), %r9d                 # 4-byte Reload
	movl	$730, %eax                      # imm = 0x2DA
	subl	%r9d, %eax
	movl	%eax, 228(%rsp)                 # 4-byte Spill
	movzbl	(%rdi,%r8), %edi
                                        # kill: def $rdi killed $edi
	addq	%rdi, %rsi
	movq	%rsi, 232(%rsp)                 # 8-byte Spill
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	addq	$1, %rcx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	cmpl	$250, %eax
	jg	.LBB14_17
# %bb.16:                               # %if.then100.if.then260_crit_edge
                                        #   in Loop: Header=BB14_14 Depth=2
	movq	384(%rsp), %rdi                 # 8-byte Reload
	movq	248(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, %rcx
	addq	%rdi, %rcx
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 176(%rsp)                  # 8-byte Spill
	movq	%rdi, 184(%rsp)                 # 8-byte Spill
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	jmp	.LBB14_26
.LBB14_17:                              # %if.then115
                                        #   in Loop: Header=BB14_14 Depth=2
	movq	232(%rsp), %rdx                 # 8-byte Reload
	movq	384(%rsp), %rdi                 # 8-byte Reload
	movq	248(%rsp), %rcx                 # 8-byte Reload
	movq	240(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax), %eax
	movl	%eax, %esi
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rsi, %rax
	movzbl	(%rdx,%rax), %r10d
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 168(%rsp)                 # 8-byte Spill
	movzbl	(%rcx), %eax
	movl	%eax, %r8d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r8, %rax
	movzbl	(%rdx,%rax), %r9d
	addl	%r10d, %r9d
	movzbl	1(%rcx), %eax
	movl	%eax, %r8d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r8, %rax
	movzbl	(%rdx,%rax), %r8d
	movl	%r8d, %eax
	subl	%r10d, %eax
	addl	%r8d, %r9d
	addq	%rdi, %rsi
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movzbl	1(%rcx,%rdi), %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r10, %r8
	movzbl	(%rdx,%r8), %r8d
	subl	%r8d, %eax
	movq	%rsi, %r8
	addq	$2, %r8
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	movzbl	3(%rcx,%rdi), %ecx
	movl	%ecx, %r10d
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%r10, %rcx
	movzbl	(%rdx,%rcx), %ecx
	addl	%ecx, %eax
	addq	%rdi, %r8
	movq	%r8, 144(%rsp)                  # 8-byte Spill
	addq	$1, %r8
	movq	%r8, 136(%rsp)                  # 8-byte Spill
	movzbl	2(%rsi,%rdi), %ecx
	movl	%ecx, %r10d
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%r10, %rcx
	movzbl	(%rdx,%rcx), %ecx
	subl	%ecx, %eax
	subl	%r9d, %ecx
	addq	$1, %r8
	movq	%r8, 128(%rsp)                  # 8-byte Spill
	movzbl	3(%rsi,%rdi), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %ecx
	movzbl	4(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%edx, %eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	addl	%edx, %ecx
	movl	%ecx, 124(%rsp)                 # 4-byte Spill
	imull	%eax, %eax
	imull	%ecx, %ecx
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	callq	sqrtf@PLT
	movl	228(%rsp), %r9d                 # 4-byte Reload
	movq	128(%rsp), %r8                  # 8-byte Reload
	movq	136(%rsp), %rdi                 # 8-byte Reload
	movq	144(%rsp), %rsi                 # 8-byte Reload
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	168(%rsp), %rax                 # 8-byte Reload
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ss	%r9d, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI14_0(%rip), %xmm2          # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movq	%r8, 176(%rsp)                  # 8-byte Spill
	movq	%rdi, 184(%rsp)                 # 8-byte Spill
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	jbe	.LBB14_26
# %bb.18:                               # %if.then202
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	120(%rsp), %eax                 # 4-byte Reload
	movss	.LCPI14_3(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cmpl	$0, %eax
	movaps	%xmm0, 96(%rsp)                 # 16-byte Spill
	je	.LBB14_20
# %bb.19:                               # %if.else
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	120(%rsp), %eax                 # 4-byte Reload
	movl	124(%rsp), %ecx                 # 4-byte Reload
	cvtsi2ss	%ecx, %xmm0
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movaps	%xmm0, 96(%rsp)                 # 16-byte Spill
.LBB14_20:                              # %if.end208
                                        #   in Loop: Header=BB14_14 Depth=2
	movaps	96(%rsp), %xmm2                 # 16-byte Reload
	xorps	%xmm0, %xmm0
	ucomiss	%xmm2, %xmm0
	seta	%al
	movb	%al, 83(%rsp)                   # 1-byte Spill
	movss	.LCPI14_4(%rip), %xmm3          # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	xorps	%xmm0, %xmm0
	movaps	%xmm2, %xmm1
	cmpltss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	andps	%xmm3, %xmm0
	andnps	%xmm2, %xmm1
	orps	%xmm0, %xmm1
	movss	%xmm1, 84(%rsp)                 # 4-byte Spill
	xorl	%ecx, %ecx
	movl	$1, %eax
	movss	.LCPI14_1(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	ja	.LBB14_23
# %bb.21:                               # %if.else219
                                        #   in Loop: Header=BB14_14 Depth=2
	movss	84(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$1, %ecx
	xorl	%eax, %eax
	movss	.LCPI14_2(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	ja	.LBB14_23
# %bb.22:                               # %if.else224
                                        #   in Loop: Header=BB14_14 Depth=2
	movb	83(%rsp), %dl                   # 1-byte Reload
	movl	$1, %ecx
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	testb	$1, %dl
	cmovnel	%eax, %ecx
	movl	$1, %eax
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	movl	%eax, 92(%rsp)                  # 4-byte Spill
.LBB14_23:                              # %if.end231
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	284(%rsp), %eax                 # 4-byte Reload
	movq	512(%rsp), %rcx                 # 8-byte Reload
	movq	264(%rsp), %rdi                 # 8-byte Reload
	movl	492(%rsp), %r8d                 # 4-byte Reload
	movl	304(%rsp), %r9d                 # 4-byte Reload
	movl	88(%rsp), %esi                  # 4-byte Reload
	movl	92(%rsp), %edx                  # 4-byte Reload
	movl	%edx, 68(%rsp)                  # 4-byte Spill
	movl	%esi, 72(%rsp)                  # 4-byte Spill
	addl	%r9d, %esi
	imull	%r8d, %esi
	movl	%edi, 76(%rsp)                  # 4-byte Spill
	addl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB14_33
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	284(%rsp), %eax                 # 4-byte Reload
	movq	512(%rsp), %rcx                 # 8-byte Reload
	movl	68(%rsp), %edi                  # 4-byte Reload
	movl	76(%rsp), %edx                  # 4-byte Reload
	movl	492(%rsp), %r8d                 # 4-byte Reload
	movl	72(%rsp), %r9d                  # 4-byte Reload
	movl	304(%rsp), %esi                 # 4-byte Reload
	subl	%r9d, %esi
	imull	%r8d, %esi
	subl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB14_33
# %bb.25:                               # %if.then248
                                        #   in Loop: Header=BB14_14 Depth=2
	movq	504(%rsp), %rax                 # 8-byte Reload
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movb	$1, (%rax,%rcx)
	jmp	.LBB14_33
.LBB14_26:                              # %if.then260
                                        #   in Loop: Header=BB14_14 Depth=2
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	248(%rsp), %rdx                 # 8-byte Reload
	movq	240(%rsp), %rax                 # 8-byte Reload
	movq	176(%rsp), %rsi                 # 8-byte Reload
	movq	184(%rsp), %rdi                 # 8-byte Reload
	movq	192(%rsp), %r8                  # 8-byte Reload
	movq	200(%rsp), %r10                 # 8-byte Reload
	movq	208(%rsp), %r11                 # 8-byte Reload
	movq	216(%rsp), %r9                  # 8-byte Reload
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	movq	%r10, 24(%rsp)                  # 8-byte Spill
	movzbl	(%rax), %eax
	movl	%eax, %r10d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r10, %rax
	movzbl	(%rcx,%rax), %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movzbl	(%rdx), %edx
	movl	%edx, %r10d
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%r10, %rdx
	movzbl	(%rcx,%rdx), %edx
	addl	%eax, %edx
	movzbl	(%r9), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rcx,%r9), %r9d
	movl	%r9d, 40(%rsp)                  # 4-byte Spill
	addl	%r9d, %edx
	subl	%r9d, %eax
	movzbl	(%r8), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rcx,%r8), %r8d
	movl	%r8d, 44(%rsp)                  # 4-byte Spill
	addl	%r8d, %edx
	subl	%r8d, %eax
	movzbl	(%rdi), %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rcx,%rdi), %edi
	addl	%edi, %edx
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, 48(%rsp)                  # 4-byte Spill
	addl	%ecx, %edx
	movl	%edx, 52(%rsp)                  # 4-byte Spill
	addl	%ecx, %eax
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	movl	$1, %ecx
	xorl	%eax, %eax
	cmpl	$0, %edx
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	je	.LBB14_30
# %bb.27:                               # %if.end350
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	52(%rsp), %eax                  # 4-byte Reload
	movl	48(%rsp), %edi                  # 4-byte Reload
	movl	44(%rsp), %r8d                  # 4-byte Reload
	movq	232(%rsp), %rdx                 # 8-byte Reload
	movq	24(%rsp), %r9                   # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	36(%rsp), %r10d                 # 4-byte Reload
	movl	40(%rsp), %ecx                  # 4-byte Reload
	addl	%r10d, %ecx
	movzbl	(%rsi), %esi
	movl	%esi, %r10d
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%r10, %rsi
	movzbl	(%rdx,%rsi), %esi
	movzbl	(%r9), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %edx
	addl	%r8d, %ecx
	addl	%edi, %ecx
	addl	%esi, %ecx
	addl	%edx, %ecx
	cvtsi2ss	%ecx, %xmm1
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm1
	movss	%xmm1, 12(%rsp)                 # 4-byte Spill
	xorl	%ecx, %ecx
	movl	$1, %eax
	movss	.LCPI14_1(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	ja	.LBB14_30
# %bb.28:                               # %if.else355
                                        #   in Loop: Header=BB14_14 Depth=2
	movss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$1, %ecx
	xorl	%eax, %eax
	movss	.LCPI14_2(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	ja	.LBB14_30
# %bb.29:                               # %if.else360
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	56(%rsp), %edx                  # 4-byte Reload
	movl	$1, %ecx
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	cmpl	$0, %edx
	cmovgl	%eax, %ecx
	movl	$1, %eax
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	movl	%eax, 64(%rsp)                  # 4-byte Spill
.LBB14_30:                              # %if.end367
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	284(%rsp), %eax                 # 4-byte Reload
	movq	512(%rsp), %rcx                 # 8-byte Reload
	movq	264(%rsp), %rdi                 # 8-byte Reload
	movl	492(%rsp), %r8d                 # 4-byte Reload
	movl	308(%rsp), %r9d                 # 4-byte Reload
	movl	60(%rsp), %esi                  # 4-byte Reload
	movl	64(%rsp), %edx                  # 4-byte Reload
	movl	%edx, (%rsp)                    # 4-byte Spill
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	addl	%r9d, %esi
	imull	%r8d, %esi
	movl	%edi, 8(%rsp)                   # 4-byte Spill
	addl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB14_33
# %bb.31:                               # %land.lhs.true376
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	284(%rsp), %eax                 # 4-byte Reload
	movq	512(%rsp), %rcx                 # 8-byte Reload
	movl	(%rsp), %edi                    # 4-byte Reload
	movl	8(%rsp), %edx                   # 4-byte Reload
	movl	492(%rsp), %r8d                 # 4-byte Reload
	movl	4(%rsp), %r9d                   # 4-byte Reload
	movl	308(%rsp), %esi                 # 4-byte Reload
	subl	%r9d, %esi
	imull	%r8d, %esi
	subl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB14_33
# %bb.32:                               # %if.then385
                                        #   in Loop: Header=BB14_14 Depth=2
	movq	504(%rsp), %rax                 # 8-byte Reload
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movb	$2, (%rax,%rcx)
.LBB14_33:                              # %for.inc393
                                        #   in Loop: Header=BB14_14 Depth=2
	movl	376(%rsp), %esi                 # 4-byte Reload
	movl	260(%rsp), %eax                 # 4-byte Reload
	movq	264(%rsp), %rcx                 # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	movl	%ecx, %edx
	cmpl	%esi, %edx
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	movl	%eax, 324(%rsp)                 # 4-byte Spill
	jne	.LBB14_14
# %bb.34:                               # %for.inc396.loopexit
                                        #   in Loop: Header=BB14_12 Depth=1
	jmp	.LBB14_35
.LBB14_35:                              # %for.inc396
                                        #   in Loop: Header=BB14_12 Depth=1
	movl	412(%rsp), %edx                 # 4-byte Reload
	movq	328(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	jne	.LBB14_12
# %bb.36:                               # %for.end398.loopexit
	jmp	.LBB14_37
.LBB14_37:                              # %for.end398
                                        # implicit-def: $eax
	addq	$536, %rsp                      # imm = 0x218
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	susan_edges_small, .Lfunc_end14-susan_edges_small
	.cfi_endproc
                                        # -- End function
	.globl	corner_draw                     # -- Begin function corner_draw
	.p2align	4, 0x90
	.type	corner_draw,@function
corner_draw:                            # @corner_draw
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -24(%rsp)                 # 8-byte Spill
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movl	%edx, -8(%rsp)                  # 4-byte Spill
	movl	%ecx, -4(%rsp)                  # 4-byte Spill
	cmpl	$7, 8(%rsi)
	je	.LBB15_7
# %bb.1:                                # %while.body.lr.ph
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	-8(%rsp), %ecx                  # 4-byte Reload
	movl	-4(%rsp), %edx                  # 4-byte Reload
	cmpl	$0, %edx
	sete	%dl
	movb	%dl, -49(%rsp)                  # 1-byte Spill
	addl	$-2, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, -32(%rsp)                 # 8-byte Spill
.LBB15_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movb	-49(%rsp), %al                  # 1-byte Reload
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movq	%rsi, -72(%rsp)                 # 8-byte Spill
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rdx
	addq	$4, %rdx
	movl	(%rdx), %edx
	movl	%edx, -60(%rsp)                 # 4-byte Spill
	movl	(%rcx), %ecx
	movl	%ecx, -56(%rsp)                 # 4-byte Spill
	testb	$1, %al
	jne	.LBB15_3
	jmp	.LBB15_4
.LBB15_3:                               # %if.then
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	movl	-56(%rsp), %eax                 # 4-byte Reload
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movl	-8(%rsp), %edi                  # 4-byte Reload
	movl	-60(%rsp), %edx                 # 4-byte Reload
	addl	$-1, %edx
	imull	%edi, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	movslq	%eax, %rdi
	movq	%rsi, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	addq	$-1, %rax
	addq	$1, %rax
	movb	$-1, -1(%rsi,%rdi)
	addq	$1, %rax
	movb	$-1, (%rsi,%rdi)
	movb	$-1, 1(%rsi,%rdi)
	addq	%rcx, %rax
	movb	$-1, 1(%rdx,%rcx)
	movb	$0, 2(%rdx,%rcx)
	movb	$-1, 3(%rdx,%rcx)
	movb	$-1, 2(%rax,%rcx)
	movb	$-1, 3(%rax,%rcx)
	movb	$-1, 4(%rax,%rcx)
	jmp	.LBB15_5
.LBB15_4:                               # %if.else
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	-56(%rsp), %ecx                 # 4-byte Reload
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	-8(%rsp), %esi                  # 4-byte Reload
	movl	-60(%rsp), %edx                 # 4-byte Reload
	imull	%esi, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	movslq	%ecx, %rcx
	movb	$0, (%rax,%rcx)
.LBB15_5:                               # %while.cond.backedge
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	addq	$1, %rcx
	imulq	$24, %rcx, %rsi
	movq	%rdx, %rax
	addq	%rsi, %rax
	imulq	$24, %rcx, %rsi
	addq	%rsi, %rdx
	addq	$8, %rdx
	cmpl	$7, (%rdx)
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	jne	.LBB15_2
# %bb.6:                                # %while.end.loopexit
	jmp	.LBB15_7
.LBB15_7:                               # %while.end
                                        # implicit-def: $eax
	retq
.Lfunc_end15:
	.size	corner_draw, .Lfunc_end15-corner_draw
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function susan_corners
.LCPI16_0:
	.quad	0xbfe0000000000000              # double -0.5
.LCPI16_1:
	.quad	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI16_2:
	.long	0x40400000                      # float 3
.LCPI16_3:
	.long	0x40000000                      # float 2
	.text
	.globl	susan_corners
	.p2align	4, 0x90
	.type	susan_corners,@function
susan_corners:                          # @susan_corners
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$1064, %rsp                     # imm = 0x428
	.cfi_def_cfa_offset 1120
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 956(%rsp)                 # 4-byte Spill
	movq	%r8, 960(%rsp)                  # 8-byte Spill
	movl	%ecx, 972(%rsp)                 # 4-byte Spill
	movq	%rdx, 976(%rsp)                 # 8-byte Spill
	movq	%rsi, 984(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	984(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 992(%rsp)                 # 8-byte Spill
	movl	1120(%rsp), %eax
	movl	%eax, 1028(%rsp)                # 4-byte Spill
	imull	%r9d, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	movq	%rdx, 1000(%rsp)                # 8-byte Spill
	xorl	%esi, %esi
	callq	memset@PLT
	movq	1000(%rsp), %rdi                # 8-byte Reload
	callq	malloc@PLT
	movq	1000(%rsp), %rdi                # 8-byte Reload
	movq	%rax, 1008(%rsp)                # 8-byte Spill
	movq	%rax, 1016(%rsp)                # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movl	1028(%rsp), %eax                # 4-byte Reload
	movq	%rcx, 1032(%rsp)                # 8-byte Spill
	movq	%rcx, 1040(%rsp)                # 8-byte Spill
	addl	$-5, %eax
	movl	%eax, 1052(%rsp)                # 4-byte Spill
	cmpl	$5, %eax
	setg	%cl
	movb	%cl, 1059(%rsp)                 # 1-byte Spill
	xorl	%eax, %eax
	testb	$1, %cl
	movl	%eax, 1060(%rsp)                # 4-byte Spill
	jne	.LBB16_1
	jmp	.LBB16_92
.LBB16_1:                               # %for.cond10.preheader.lr.ph
	movl	956(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	addl	$-5, %ecx
	movl	%ecx, 904(%rsp)                 # 4-byte Spill
	cmpl	$5, %ecx
	setg	%dl
	movb	%dl, 911(%rsp)                  # 1-byte Spill
	movl	%eax, %edx
	addl	$-3, %edx
	movslq	%edx, %rdx
	movq	%rdx, 912(%rsp)                 # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 920(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	addl	$-6, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 928(%rsp)                 # 8-byte Spill
	cltq
	movq	%rax, 936(%rsp)                 # 8-byte Spill
	movl	$5, %eax
	movq	%rax, 944(%rsp)                 # 8-byte Spill
.LBB16_2:                               # %for.cond10.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
	movb	911(%rsp), %al                  # 1-byte Reload
	movq	944(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 896(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB16_3
	jmp	.LBB16_33
.LBB16_3:                               # %for.body14.lr.ph
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	896(%rsp), %rax                 # 8-byte Reload
	movq	936(%rsp), %rdx                 # 8-byte Reload
	movq	992(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	addq	$-3, %rsi
	imulq	%rdx, %rsi
	addq	%rsi, %rcx
	movq	%rcx, 856(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	imulq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, 868(%rsp)                 # 4-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 872(%rsp)                 # 4-byte Spill
	movl	%eax, 876(%rsp)                 # 4-byte Spill
	movl	$5, %ecx
	movl	$5, %eax
	movq	%rcx, 880(%rsp)                 # 8-byte Spill
	movl	%eax, 892(%rsp)                 # 4-byte Spill
	jmp	.LBB16_6
.LBB16_4:                               # %for.cond911.preheader
	movb	1059(%rsp), %cl                 # 1-byte Reload
	xorl	%eax, %eax
	testb	$1, %cl
	movl	%eax, 1060(%rsp)                # 4-byte Spill
	jne	.LBB16_5
	jmp	.LBB16_92
.LBB16_5:                               # %for.cond916.preheader.lr.ph
	movl	1052(%rsp), %eax                # 4-byte Reload
	movl	956(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %edx
	addl	$-5, %edx
	cmpl	$5, %edx
	setg	%sil
	movb	%sil, 815(%rsp)                 # 1-byte Spill
	movslq	%edx, %rdx
	movq	%rdx, 816(%rsp)                 # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 824(%rsp)                 # 8-byte Spill
	cltq
	movq	%rax, 832(%rsp)                 # 8-byte Spill
	movl	$5, %ecx
	xorl	%eax, %eax
	movq	%rcx, 840(%rsp)                 # 8-byte Spill
	movl	%eax, 852(%rsp)                 # 4-byte Spill
	jmp	.LBB16_34
.LBB16_6:                               # %for.body14
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movq	928(%rsp), %rdi                 # 8-byte Reload
	movq	920(%rsp), %r10                 # 8-byte Reload
	movq	912(%rsp), %r11                 # 8-byte Reload
	movq	856(%rsp), %rsi                 # 8-byte Reload
	movq	976(%rsp), %rdx                 # 8-byte Reload
	movq	992(%rsp), %rax                 # 8-byte Reload
	movl	868(%rsp), %r14d                # 4-byte Reload
	movq	880(%rsp), %rbx                 # 8-byte Reload
	movl	892(%rsp), %ebp                 # 4-byte Reload
	movl	%ebp, 684(%rsp)                 # 4-byte Spill
	movq	%rbx, 688(%rsp)                 # 8-byte Spill
	movq	%rsi, %r8
	addq	%rbx, %r8
	movq	%r8, %r9
	addq	$-1, %r9
	addl	%r14d, %ebp
	movslq	%ebp, %r14
	movq	%r14, 696(%rsp)                 # 8-byte Spill
	movzbl	(%rax,%r14), %eax
                                        # kill: def $rax killed $eax
	addq	%rax, %rdx
	movq	%rdx, 704(%rsp)                 # 8-byte Spill
	addq	$1, %r9
	movzbl	-1(%rsi,%rbx), %eax
	movl	%eax, %r14d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r14, %rax
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 716(%rsp)                 # 4-byte Spill
	addl	$100, %eax
	addq	$1, %r9
	movzbl	(%rsi,%rbx), %ebp
	movl	%ebp, %r15d
	xorl	%ebp, %ebp
	movl	%ebp, %r14d
	subq	%r15, %r14
	movzbl	(%rdx,%r14), %ebp
	movl	%ebp, 720(%rsp)                 # 4-byte Spill
	addl	%ebp, %eax
	movzbl	1(%rsi,%rbx), %esi
	movl	%esi, %ebx
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rbx, %rsi
	movzbl	(%rdx,%rsi), %esi
	movl	%esi, 724(%rsp)                 # 4-byte Spill
	addl	%esi, %eax
	addq	%r11, %r9
	movq	%r9, 728(%rsp)                  # 8-byte Spill
	movq	%r9, %rsi
	addq	$1, %rsi
	movzbl	1(%r8,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	movl	%ebx, 740(%rsp)                 # 4-byte Spill
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	2(%r8,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	movl	%ebx, 744(%rsp)                 # 4-byte Spill
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	3(%r8,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	movl	%ebx, 748(%rsp)                 # 4-byte Spill
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	4(%r8,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	movl	%ebx, 752(%rsp)                 # 4-byte Spill
	addl	%ebx, %eax
	movzbl	5(%r8,%r11), %r8d
	movl	%r8d, %r11d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r11, %r8
	movzbl	(%rdx,%r8), %r8d
	movl	%r8d, 756(%rsp)                 # 4-byte Spill
	addl	%r8d, %eax
	addq	%r10, %rsi
	movq	%rsi, %r8
	addq	$1, %r8
	movzbl	4(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	movl	%r11d, 760(%rsp)                # 4-byte Spill
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	5(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	movl	%r11d, 764(%rsp)                # 4-byte Spill
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	6(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	movl	%r11d, 768(%rsp)                # 4-byte Spill
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	7(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	movl	%r11d, 772(%rsp)                # 4-byte Spill
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	8(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	movl	%r11d, 776(%rsp)                # 4-byte Spill
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	9(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	movl	%r11d, 780(%rsp)                # 4-byte Spill
	addl	%r11d, %eax
	movzbl	10(%r9,%r10), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r9d
	movl	%r9d, 784(%rsp)                 # 4-byte Spill
	addl	%r9d, %eax
	addq	%rdi, %r8
	addq	$1, %r8
	movzbl	6(%rsi,%rdi), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r9d
	movl	%r9d, 788(%rsp)                 # 4-byte Spill
	addl	%r9d, %eax
	addq	$1, %r8
	movq	%r8, 792(%rsp)                  # 8-byte Spill
	movzbl	7(%rsi,%rdi), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r8d
	movl	%r8d, 800(%rsp)                 # 4-byte Spill
	addl	%r8d, %eax
	movzbl	8(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movl	%edx, 804(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 808(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	808(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	792(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$2, %rdi
	addq	$1, %rdi
	movq	%rdi, 664(%rsp)                 # 8-byte Spill
	movzbl	2(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 676(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 680(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.8:                                # %if.then165
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	680(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	664(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 648(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 656(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 660(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.9:                                # %if.then175
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	660(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	648(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 640(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 644(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.10:                               # %if.then184
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	644(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	648(%rsp), %rsi                 # 8-byte Reload
	movq	928(%rsp), %rdi                 # 8-byte Reload
	movq	%rsi, %r8
	addq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 624(%rsp)                  # 8-byte Spill
	movzbl	(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 632(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 636(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.11:                               # %if.then197
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	636(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	624(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 608(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 616(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 620(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.12:                               # %if.then207
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	620(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	608(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 592(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 600(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 604(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.13:                               # %if.then217
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	604(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	592(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 576(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 584(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 588(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.14:                               # %if.then227
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	588(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	576(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 560(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 568(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 572(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.15:                               # %if.then237
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	572(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	560(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 544(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 552(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 556(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.16:                               # %if.then247
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	556(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	544(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 536(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 540(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.17:                               # %if.then256
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	540(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	544(%rsp), %rsi                 # 8-byte Reload
	movq	920(%rsp), %rdi                 # 8-byte Reload
	movq	%rsi, %r8
	addq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 520(%rsp)                  # 8-byte Spill
	movzbl	(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 528(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 532(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.18:                               # %if.then269
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	532(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	520(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 504(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 512(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 516(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.19:                               # %if.then279
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	516(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	504(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 488(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 496(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 500(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.20:                               # %if.then289
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	500(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	488(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 472(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 480(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 484(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.21:                               # %if.then299
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	484(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	472(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 464(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 468(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.22:                               # %if.then308
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	468(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	472(%rsp), %rsi                 # 8-byte Reload
	movq	912(%rsp), %rdi                 # 8-byte Reload
	movq	%rsi, %r8
	addq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 448(%rsp)                  # 8-byte Spill
	movzbl	(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 456(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 460(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.23:                               # %if.then321
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	460(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	448(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 440(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 444(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.24:                               # %if.then331
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	972(%rsp), %ecx                 # 4-byte Reload
	movl	444(%rsp), %edx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	448(%rsp), %rsi                 # 8-byte Reload
	movzbl	1(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	movl	%eax, 432(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	movl	%eax, 436(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB16_31
# %bb.25:                               # %if.then340
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	616(%rsp), %ebp                 # 4-byte Reload
	movl	784(%rsp), %r11d                # 4-byte Reload
	movl	764(%rsp), %r15d                # 4-byte Reload
	movl	760(%rsp), %esi                 # 4-byte Reload
	movl	752(%rsp), %ecx                 # 4-byte Reload
	movl	744(%rsp), %r12d                # 4-byte Reload
	movl	716(%rsp), %r13d                # 4-byte Reload
	movl	724(%rsp), %eax                 # 4-byte Reload
	movl	656(%rsp), %ebx                 # 4-byte Reload
	movl	464(%rsp), %edi                 # 4-byte Reload
	movl	528(%rsp), %r9d                 # 4-byte Reload
	movl	800(%rsp), %r14d                # 4-byte Reload
	movl	748(%rsp), %edx                 # 4-byte Reload
	movl	740(%rsp), %r10d                # 4-byte Reload
	movl	720(%rsp), %r8d                 # 4-byte Reload
	addl	%r13d, %r8d
	addl	%eax, %r8d
	movl	756(%rsp), %eax                 # 4-byte Reload
	shll	$1, %r10d
	shll	$1, %r12d
	shll	$1, %edx
	shll	$1, %ecx
	shll	$1, %eax
	shll	$1, %r15d
	shll	$1, %r14d
	shll	$1, %ebp
	shll	$1, %r9d
	shll	$1, %edi
	subl	%esi, %r11d
	movl	788(%rsp), %esi                 # 4-byte Reload
	subl	%esi, %r11d
	movl	640(%rsp), %esi                 # 4-byte Reload
	addl	%esi, %r11d
	movl	632(%rsp), %esi                 # 4-byte Reload
	subl	%esi, %r11d
	movl	536(%rsp), %esi                 # 4-byte Reload
	addl	%esi, %r11d
	movl	780(%rsp), %esi                 # 4-byte Reload
	imull	$3, %r11d, %r11d
	addl	%esi, %ebx
	movl	552(%rsp), %esi                 # 4-byte Reload
	addl	%esi, %ebx
	movl	724(%rsp), %esi                 # 4-byte Reload
	shll	$1, %ebx
	subl	%r13d, %esi
	movl	744(%rsp), %r13d                # 4-byte Reload
	subl	%r10d, %esi
	subl	%r13d, %esi
	movl	752(%rsp), %r13d                # 4-byte Reload
	addl	%r13d, %esi
	movl	784(%rsp), %r13d                # 4-byte Reload
	addl	%eax, %esi
	subl	%r15d, %esi
	movl	768(%rsp), %r15d                # 4-byte Reload
	subl	%r15d, %esi
	movl	776(%rsp), %r15d                # 4-byte Reload
	addl	%r15d, %esi
	movl	616(%rsp), %r15d                # 4-byte Reload
	subl	%r14d, %esi
	movl	804(%rsp), %r14d                # 4-byte Reload
	subl	%r14d, %esi
	movl	676(%rsp), %r14d                # 4-byte Reload
	addl	%r14d, %esi
	movl	600(%rsp), %r14d                # 4-byte Reload
	subl	%ebp, %esi
	movl	568(%rsp), %ebp                 # 4-byte Reload
	subl	%r14d, %esi
	addl	%ebp, %esi
	movl	584(%rsp), %ebp                 # 4-byte Reload
	addl	%ebx, %esi
	movl	568(%rsp), %ebx                 # 4-byte Reload
	addl	%r11d, %esi
	movl	512(%rsp), %r11d                # 4-byte Reload
	subl	%r9d, %esi
	subl	%r11d, %esi
	movl	480(%rsp), %r11d                # 4-byte Reload
	addl	%r11d, %esi
	movl	456(%rsp), %r11d                # 4-byte Reload
	addl	%edi, %esi
	subl	%r11d, %esi
	movl	432(%rsp), %r11d                # 4-byte Reload
	addl	%r11d, %esi
	movl	512(%rsp), %r11d                # 4-byte Reload
	movl	%esi, 416(%rsp)                 # 4-byte Spill
	movl	456(%rsp), %esi                 # 4-byte Reload
	subl	%r8d, %esi
	movl	440(%rsp), %r8d                 # 4-byte Reload
	addl	%r8d, %esi
	movl	432(%rsp), %r8d                 # 4-byte Reload
	addl	%r8d, %esi
	movl	496(%rsp), %r8d                 # 4-byte Reload
	imull	$3, %esi, %esi
	addl	%r11d, %r8d
	movl	480(%rsp), %r11d                # 4-byte Reload
	addl	%r11d, %r8d
	movl	552(%rsp), %r11d                # 4-byte Reload
	shll	$1, %r8d
	addl	%r10d, %r12d
	movl	536(%rsp), %r10d                # 4-byte Reload
	addl	%edx, %r12d
	movl	416(%rsp), %edx                 # 4-byte Reload
	addl	%ecx, %r12d
	movl	436(%rsp), %ecx                 # 4-byte Reload
	addl	%eax, %r12d
	movl	760(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %r12d
	movl	764(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %r12d
	movl	768(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %r12d
	movl	772(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %r12d
	movl	776(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %r12d
	movl	780(%rsp), %eax                 # 4-byte Reload
	addl	%eax, %r12d
	movl	632(%rsp), %eax                 # 4-byte Reload
	addl	%r13d, %r12d
	subl	%r12d, %eax
	addl	%r15d, %eax
	addl	%r14d, %eax
	addl	%ebp, %eax
	addl	%ebx, %eax
	addl	%r11d, %eax
	addl	%r10d, %eax
	addl	%r9d, %eax
	addl	%r8d, %eax
	addl	%edi, %eax
	addl	%esi, %eax
	movl	%eax, 420(%rsp)                 # 4-byte Spill
	imull	%edx, %edx
	movl	%edx, 424(%rsp)                 # 4-byte Spill
	imull	%eax, %eax
	movl	%eax, 428(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	imull	%ecx, %ecx
	shrl	$1, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB16_31
# %bb.26:                               # %if.then697
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	428(%rsp), %eax                 # 4-byte Reload
	movl	424(%rsp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %eax
	jae	.LBB16_28
# %bb.27:                               # %if.then700
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	416(%rsp), %ecx                 # 4-byte Reload
	movl	420(%rsp), %eax                 # 4-byte Reload
	cvtsi2ss	%eax, %xmm2
	xorl	%eax, %eax
	subl	%ecx, %eax
	cmpl	$-1, %ecx
	cmovgl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm2
	movss	%xmm2, 384(%rsp)                # 4-byte Spill
	cltd
	idivl	%ecx
	movl	%eax, 388(%rsp)                 # 4-byte Spill
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 392(%rsp)                # 8-byte Spill
	xorps	%xmm1, %xmm1
	movsd	.LCPI16_0(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm3          # xmm3 = mem[0],zero
	movsd	%xmm3, 400(%rsp)                # 8-byte Spill
	ucomiss	%xmm2, %xmm1
	movsd	%xmm0, 408(%rsp)                # 8-byte Spill
	ja	.LBB16_94
# %bb.93:                               # %if.then700
                                        #   in Loop: Header=BB16_6 Depth=2
	movsd	400(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 408(%rsp)                # 8-byte Spill
.LBB16_94:                              # %if.then700
                                        #   in Loop: Header=BB16_6 Depth=2
	movss	384(%rsp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	992(%rsp), %rcx                 # 8-byte Reload
	movl	388(%rsp), %esi                 # 4-byte Reload
	movq	688(%rsp), %rdi                 # 8-byte Reload
	movl	956(%rsp), %r8d                 # 4-byte Reload
	movl	872(%rsp), %r9d                 # 4-byte Reload
	movsd	392(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	408(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	addl	%r9d, %edx
	imull	%r8d, %edx
	movl	%edi, 352(%rsp)                 # 4-byte Spill
	addl	%edi, %edx
	addl	%esi, %edx
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, 356(%rsp)                 # 4-byte Spill
	movss	.LCPI16_3(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 360(%rsp)                # 8-byte Spill
	xorps	%xmm1, %xmm1
	movsd	.LCPI16_0(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm3          # xmm3 = mem[0],zero
	movsd	%xmm3, 368(%rsp)                # 8-byte Spill
	ucomiss	%xmm2, %xmm1
	movsd	%xmm0, 376(%rsp)                # 8-byte Spill
	ja	.LBB16_96
# %bb.95:                               # %if.then700
                                        #   in Loop: Header=BB16_6 Depth=2
	movsd	368(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 376(%rsp)                # 8-byte Spill
.LBB16_96:                              # %if.then700
                                        #   in Loop: Header=BB16_6 Depth=2
	movss	384(%rsp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movl	356(%rsp), %ecx                 # 4-byte Reload
	movq	704(%rsp), %rax                 # 8-byte Reload
	movq	992(%rsp), %rdx                 # 8-byte Reload
	movl	388(%rsp), %edi                 # 4-byte Reload
	movl	352(%rsp), %r8d                 # 4-byte Reload
	movl	956(%rsp), %r9d                 # 4-byte Reload
	movl	872(%rsp), %r10d                # 4-byte Reload
	movsd	360(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	376(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	%r10d, %esi
	imull	%r9d, %esi
	addl	%r8d, %esi
	shll	$1, %edi
	addl	%edi, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%rsi, %rdx
	movzbl	(%rax,%rdx), %eax
	addl	%ecx, %eax
	movl	%eax, 324(%rsp)                 # 4-byte Spill
	movss	.LCPI16_2(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 328(%rsp)                # 8-byte Spill
	xorps	%xmm1, %xmm1
	movsd	.LCPI16_0(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm3          # xmm3 = mem[0],zero
	movsd	%xmm3, 336(%rsp)                # 8-byte Spill
	ucomiss	%xmm2, %xmm1
	movsd	%xmm0, 344(%rsp)                # 8-byte Spill
	ja	.LBB16_98
# %bb.97:                               # %if.then700
                                        #   in Loop: Header=BB16_6 Depth=2
	movsd	336(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 344(%rsp)                # 8-byte Spill
.LBB16_98:                              # %if.then700
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	324(%rsp), %eax                 # 4-byte Reload
	movq	704(%rsp), %rcx                 # 8-byte Reload
	movq	992(%rsp), %rdx                 # 8-byte Reload
	movl	388(%rsp), %edi                 # 4-byte Reload
	movl	352(%rsp), %r8d                 # 4-byte Reload
	movl	956(%rsp), %r9d                 # 4-byte Reload
	movl	872(%rsp), %r10d                # 4-byte Reload
	movsd	328(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	344(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	%r10d, %esi
	imull	%r9d, %esi
	addl	%r8d, %esi
	imull	$3, %edi, %edi
	addl	%edi, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%rsi, %rdx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, 320(%rsp)                 # 4-byte Spill
	jmp	.LBB16_29
.LBB16_28:                              # %if.else
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	956(%rsp), %ecx                 # 4-byte Reload
	movl	420(%rsp), %esi                 # 4-byte Reload
	movl	416(%rsp), %eax                 # 4-byte Reload
	cvtsi2ss	%eax, %xmm2
	xorl	%eax, %eax
	subl	%esi, %eax
	cmpl	$-1, %esi
	cmovgl	%esi, %eax
	cvtsi2ss	%eax, %xmm0
	divss	%xmm0, %xmm2
	movss	%xmm2, 284(%rsp)                # 4-byte Spill
	cltd
	idivl	%esi
	movl	876(%rsp), %edx                 # 4-byte Reload
	movl	%eax, 288(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	imull	%ecx, %eax
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 296(%rsp)                # 8-byte Spill
	xorps	%xmm1, %xmm1
	movsd	.LCPI16_0(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm3          # xmm3 = mem[0],zero
	movsd	%xmm3, 304(%rsp)                # 8-byte Spill
	ucomiss	%xmm2, %xmm1
	movsd	%xmm0, 312(%rsp)                # 8-byte Spill
	ja	.LBB16_100
# %bb.99:                               # %if.else
                                        #   in Loop: Header=BB16_6 Depth=2
	movsd	304(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 312(%rsp)                # 8-byte Spill
.LBB16_100:                             # %if.else
                                        #   in Loop: Header=BB16_6 Depth=2
	movss	284(%rsp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movl	956(%rsp), %ecx                 # 4-byte Reload
	movl	876(%rsp), %edx                 # 4-byte Reload
	movl	288(%rsp), %eax                 # 4-byte Reload
	movq	704(%rsp), %rsi                 # 8-byte Reload
	movq	992(%rsp), %rdi                 # 8-byte Reload
	movl	292(%rsp), %r9d                 # 4-byte Reload
	movq	688(%rsp), %r10                 # 8-byte Reload
	movsd	296(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	312(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	movl	%r10d, 244(%rsp)                # 4-byte Spill
	addl	%r10d, %r8d
	addl	%r9d, %r8d
	movslq	%r8d, %r8
	movzbl	(%rdi,%r8), %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
                                        # kill: def $rdi killed $edi
	subq	%r8, %rdi
	movzbl	(%rsi,%rdi), %esi
	movl	%esi, 248(%rsp)                 # 4-byte Spill
	shll	$1, %eax
	addl	%edx, %eax
	imull	%ecx, %eax
	movl	%eax, 252(%rsp)                 # 4-byte Spill
	movss	.LCPI16_3(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 256(%rsp)                # 8-byte Spill
	xorps	%xmm1, %xmm1
	movsd	.LCPI16_0(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm3          # xmm3 = mem[0],zero
	movsd	%xmm3, 264(%rsp)                # 8-byte Spill
	ucomiss	%xmm2, %xmm1
	movsd	%xmm0, 272(%rsp)                # 8-byte Spill
	ja	.LBB16_102
# %bb.101:                              # %if.else
                                        #   in Loop: Header=BB16_6 Depth=2
	movsd	264(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 272(%rsp)                # 8-byte Spill
.LBB16_102:                             # %if.else
                                        #   in Loop: Header=BB16_6 Depth=2
	movss	284(%rsp), %xmm2                # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movl	956(%rsp), %ecx                 # 4-byte Reload
	movl	876(%rsp), %edx                 # 4-byte Reload
	movl	288(%rsp), %eax                 # 4-byte Reload
	movl	248(%rsp), %edi                 # 4-byte Reload
	movq	704(%rsp), %rsi                 # 8-byte Reload
	movq	992(%rsp), %r8                  # 8-byte Reload
	movl	252(%rsp), %r10d                # 4-byte Reload
	movl	244(%rsp), %r11d                # 4-byte Reload
	movsd	256(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	272(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r9d
	addl	%r11d, %r9d
	addl	%r10d, %r9d
	movslq	%r9d, %r9
	movzbl	(%r8,%r9), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rsi,%r8), %esi
	addl	%edi, %esi
	movl	%esi, 208(%rsp)                 # 4-byte Spill
	imull	$3, %eax, %eax
	addl	%edx, %eax
	imull	%ecx, %eax
	movl	%eax, 212(%rsp)                 # 4-byte Spill
	movss	.LCPI16_2(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 216(%rsp)                # 8-byte Spill
	xorps	%xmm1, %xmm1
	movsd	.LCPI16_0(%rip), %xmm0          # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm3          # xmm3 = mem[0],zero
	movsd	%xmm3, 224(%rsp)                # 8-byte Spill
	ucomiss	%xmm2, %xmm1
	movsd	%xmm0, 232(%rsp)                # 8-byte Spill
	ja	.LBB16_104
# %bb.103:                              # %if.else
                                        #   in Loop: Header=BB16_6 Depth=2
	movsd	224(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 232(%rsp)                # 8-byte Spill
.LBB16_104:                             # %if.else
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	208(%rsp), %eax                 # 4-byte Reload
	movq	704(%rsp), %rcx                 # 8-byte Reload
	movq	992(%rsp), %rdx                 # 8-byte Reload
	movl	212(%rsp), %edi                 # 4-byte Reload
	movl	244(%rsp), %r8d                 # 4-byte Reload
	movsd	216(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	232(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	%r8d, %esi
	addl	%edi, %esi
	movslq	%esi, %rsi
	movzbl	(%rdx,%rsi), %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%rsi, %rdx
	movzbl	(%rcx,%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, 320(%rsp)                 # 4-byte Spill
.LBB16_29:                              # %if.end
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	320(%rsp), %eax                 # 4-byte Reload
	cmpl	$290, %eax                      # imm = 0x122
	jle	.LBB16_31
# %bb.30:                               # %if.then869
                                        #   in Loop: Header=BB16_6 Depth=2
	movq	696(%rsp), %rcx                 # 8-byte Reload
	movl	436(%rsp), %esi                 # 4-byte Reload
	movl	416(%rsp), %eax                 # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movl	972(%rsp), %edi                 # 4-byte Reload
	subl	%esi, %edi
	movl	%edi, (%rdx,%rcx,4)
	imull	$51, %eax, %eax
	cltd
	idivl	%esi
	movq	1016(%rsp), %rdx                # 8-byte Reload
	movl	%eax, %edi
	movl	420(%rsp), %eax                 # 4-byte Reload
	movl	%edi, (%rdx,%rcx,4)
	imull	$51, %eax, %eax
	cltd
	idivl	%esi
	movl	%eax, %edx
	movq	1040(%rsp), %rax                # 8-byte Reload
	movl	%edx, (%rax,%rcx,4)
.LBB16_31:                              # %for.inc
                                        #   in Loop: Header=BB16_6 Depth=2
	movl	904(%rsp), %esi                 # 4-byte Reload
	movl	684(%rsp), %eax                 # 4-byte Reload
	movq	688(%rsp), %rcx                 # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	movl	%ecx, %edx
	cmpl	%esi, %edx
	movq	%rcx, 880(%rsp)                 # 8-byte Spill
	movl	%eax, 892(%rsp)                 # 4-byte Spill
	jne	.LBB16_6
# %bb.32:                               # %for.inc908.loopexit
                                        #   in Loop: Header=BB16_2 Depth=1
	jmp	.LBB16_33
.LBB16_33:                              # %for.inc908
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	1052(%rsp), %edx                # 4-byte Reload
	movq	896(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 944(%rsp)                 # 8-byte Spill
	je	.LBB16_4
	jmp	.LBB16_2
.LBB16_34:                              # %for.cond916.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_37 Depth 2
	movb	815(%rsp), %al                  # 1-byte Reload
	movq	840(%rsp), %rcx                 # 8-byte Reload
	movl	852(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 196(%rsp)                 # 4-byte Spill
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB16_36
# %bb.35:                               # %for.cond916.preheader.for.inc1385_crit_edge
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	196(%rsp), %eax                 # 4-byte Reload
	movq	200(%rsp), %rcx                 # 8-byte Reload
	addq	$1, %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movl	%eax, 192(%rsp)                 # 4-byte Spill
	jmp	.LBB16_90
.LBB16_36:                              # %for.body920.lr.ph
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	196(%rsp), %ecx                 # 4-byte Reload
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	824(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	imulq	%rdi, %rdx
	movq	%rax, %rsi
	addq	$-3, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$-2, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$-1, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, 128(%rsp)                 # 8-byte Spill
	imulq	%rdi, %rsi
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$2, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$3, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, 160(%rsp)                 # 4-byte Spill
	movl	%eax, 164(%rsp)                 # 4-byte Spill
	movl	$5, %edx
	movl	$5, %eax
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movl	%ecx, 176(%rsp)                 # 4-byte Spill
	movl	%eax, 180(%rsp)                 # 4-byte Spill
.LBB16_37:                              # %for.body920
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	984(%rsp), %rcx                 # 8-byte Reload
	movl	160(%rsp), %esi                 # 4-byte Reload
	movq	168(%rsp), %rdi                 # 8-byte Reload
	movl	176(%rsp), %eax                 # 4-byte Reload
	movl	180(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 64(%rsp)                  # 4-byte Spill
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	addl	%esi, %edx
	movl	%edx, 84(%rsp)                  # 4-byte Spill
	movslq	%edx, %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movl	(%rcx,%rdx,4), %ecx
	movl	%ecx, 96(%rsp)                  # 4-byte Spill
	cmpl	$0, %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.38:                               # %if.then927
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.39:                               # %land.lhs.true
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.40:                               # %land.lhs.true944
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.41:                               # %land.lhs.true953
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.42:                               # %land.lhs.true961
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.43:                               # %land.lhs.true970
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.44:                               # %land.lhs.true979
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.45:                               # %land.lhs.true988
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.46:                               # %land.lhs.true997
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.47:                               # %land.lhs.true1006
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.48:                               # %land.lhs.true1015
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.49:                               # %land.lhs.true1023
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.50:                               # %land.lhs.true1032
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.51:                               # %land.lhs.true1041
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.52:                               # %land.lhs.true1050
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	120(%rsp), %rdi                 # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.53:                               # %land.lhs.true1059
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.54:                               # %land.lhs.true1068
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.55:                               # %land.lhs.true1077
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.56:                               # %land.lhs.true1085
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.57:                               # %land.lhs.true1094
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.58:                               # %land.lhs.true1103
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.59:                               # %land.lhs.true1112
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movl	84(%rsp), %esi                  # 4-byte Reload
	addl	$-3, %esi
	movslq	%esi, %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.60:                               # %land.lhs.true1120
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movl	84(%rsp), %esi                  # 4-byte Reload
	addl	$-2, %esi
	movslq	%esi, %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.61:                               # %land.lhs.true1128
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movl	84(%rsp), %esi                  # 4-byte Reload
	addl	$-1, %esi
	movslq	%esi, %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jle	.LBB16_88
# %bb.62:                               # %land.lhs.true1136
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movl	84(%rsp), %esi                  # 4-byte Reload
	addl	$1, %esi
	movslq	%esi, %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.63:                               # %land.lhs.true1144
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movl	84(%rsp), %esi                  # 4-byte Reload
	addl	$2, %esi
	movslq	%esi, %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.64:                               # %land.lhs.true1152
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movl	84(%rsp), %esi                  # 4-byte Reload
	addl	$3, %esi
	movslq	%esi, %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.65:                               # %land.lhs.true1160
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	136(%rsp), %rdi                 # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.66:                               # %land.lhs.true1169
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.67:                               # %land.lhs.true1178
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.68:                               # %land.lhs.true1187
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.69:                               # %land.lhs.true1195
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.70:                               # %land.lhs.true1204
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.71:                               # %land.lhs.true1213
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.72:                               # %land.lhs.true1222
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	144(%rsp), %rdi                 # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.73:                               # %land.lhs.true1231
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.74:                               # %land.lhs.true1240
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.75:                               # %land.lhs.true1249
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.76:                               # %land.lhs.true1257
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.77:                               # %land.lhs.true1266
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.78:                               # %land.lhs.true1275
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.79:                               # %land.lhs.true1284
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.80:                               # %land.lhs.true1293
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.81:                               # %land.lhs.true1302
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.82:                               # %land.lhs.true1311
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.83:                               # %land.lhs.true1319
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.84:                               # %land.lhs.true1328
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.85:                               # %land.lhs.true1337
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movq	984(%rsp), %rdx                 # 8-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jl	.LBB16_88
# %bb.86:                               # %if.then1346
                                        #   in Loop: Header=BB16_37 Depth=2
	movl	68(%rsp), %eax                  # 4-byte Reload
	movq	960(%rsp), %rcx                 # 8-byte Reload
	movq	992(%rsp), %rdx                 # 8-byte Reload
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	1040(%rsp), %r8                 # 8-byte Reload
	movq	1016(%rsp), %r9                 # 8-byte Reload
	movl	164(%rsp), %r11d                # 4-byte Reload
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movslq	%eax, %rsi
	imulq	$24, %rsi, %r14
	movq	%rcx, %r10
	addq	%r14, %r10
	addq	$8, %r10
	movl	$0, (%r10)
	imulq	$24, %rsi, %r14
	movq	%rcx, %r10
	addq	%r14, %r10
	movl	%ebx, (%r10)
	imulq	$24, %rsi, %rbx
	movq	%rcx, %r10
	addq	%rbx, %r10
	addq	$4, %r10
	movl	%r11d, (%r10)
	movl	(%r9,%rdi,4), %r10d
	imulq	$24, %rsi, %r11
	movq	%rcx, %r9
	addq	%r11, %r9
	addq	$12, %r9
	movl	%r10d, (%r9)
	movl	(%r8,%rdi,4), %r9d
	imulq	$24, %rsi, %r10
	movq	%rcx, %r8
	addq	%r10, %r8
	addq	$16, %r8
	movl	%r9d, (%r8)
	movzbl	(%rdx,%rdi), %edx
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rcx
	addq	$20, %rcx
	movl	%edx, (%rcx)
	addl	$1, %eax
	cmpl	$15000, %eax                    # imm = 0x3A98
	movl	%eax, 100(%rsp)                 # 4-byte Spill
	jne	.LBB16_88
# %bb.87:                               # %if.then1377
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str.29, %rdi
	movl	$18, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB16_88:                              # %for.inc1382
                                        #   in Loop: Header=BB16_37 Depth=2
	movq	816(%rsp), %rsi                 # 8-byte Reload
	movl	64(%rsp), %ecx                  # 4-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movl	100(%rsp), %eax                 # 4-byte Reload
	addq	$1, %rdx
	addl	$1, %ecx
	cmpq	%rsi, %rdx
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movl	%eax, %edx
	movl	%edx, 176(%rsp)                 # 4-byte Spill
	movl	%ecx, 180(%rsp)                 # 4-byte Spill
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	jl	.LBB16_37
# %bb.89:                               # %for.inc1385.loopexit
                                        #   in Loop: Header=BB16_34 Depth=1
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movl	12(%rsp), %eax                  # 4-byte Reload
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movl	%eax, 192(%rsp)                 # 4-byte Spill
.LBB16_90:                              # %for.inc1385
                                        #   in Loop: Header=BB16_34 Depth=1
	movq	832(%rsp), %rdx                 # 8-byte Reload
	movq	184(%rsp), %rcx                 # 8-byte Reload
	movl	192(%rsp), %eax                 # 4-byte Reload
	cmpq	%rdx, %rcx
	movq	%rcx, 840(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 852(%rsp)                 # 4-byte Spill
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	jl	.LBB16_34
# %bb.91:                               # %for.end1387.loopexit
	movl	8(%rsp), %eax                   # 4-byte Reload
	movl	%eax, 1060(%rsp)                # 4-byte Spill
.LBB16_92:                              # %for.end1387
	movq	1008(%rsp), %rdi                # 8-byte Reload
	movq	960(%rsp), %rax                 # 8-byte Reload
	movl	1060(%rsp), %ecx                # 4-byte Reload
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	$7, 8(%rax,%rcx,8)
	callq	free@PLT
	movq	1032(%rsp), %rdi                # 8-byte Reload
	addq	$1064, %rsp                     # imm = 0x428
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end16:
	.size	susan_corners, .Lfunc_end16-susan_corners
	.cfi_endproc
                                        # -- End function
	.globl	susan_corners_quick             # -- Begin function susan_corners_quick
	.p2align	4, 0x90
	.type	susan_corners_quick,@function
susan_corners_quick:                    # @susan_corners_quick
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$856, %rsp                      # imm = 0x358
	.cfi_def_cfa_offset 912
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 796(%rsp)                 # 4-byte Spill
	movq	%r8, 800(%rsp)                  # 8-byte Spill
	movl	%ecx, 812(%rsp)                 # 4-byte Spill
	movq	%rdx, 816(%rsp)                 # 8-byte Spill
	movq	%rsi, 824(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	824(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, 832(%rsp)                 # 8-byte Spill
	movl	912(%rsp), %eax
	movl	%eax, 840(%rsp)                 # 4-byte Spill
	imull	%r9d, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	840(%rsp), %eax                 # 4-byte Reload
	addl	$-7, %eax
	movl	%eax, 844(%rsp)                 # 4-byte Spill
	cmpl	$7, %eax
	setg	%cl
	movb	%cl, 851(%rsp)                  # 1-byte Spill
	xorl	%eax, %eax
	testb	$1, %cl
	movl	%eax, 852(%rsp)                 # 4-byte Spill
	jne	.LBB17_1
	jmp	.LBB17_87
.LBB17_1:                               # %for.cond3.preheader.lr.ph
	movl	796(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %ecx
	addl	$-7, %ecx
	movl	%ecx, 744(%rsp)                 # 4-byte Spill
	cmpl	$7, %ecx
	setg	%cl
	movb	%cl, 751(%rsp)                  # 1-byte Spill
	movl	%eax, %ecx
	addl	$-3, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 752(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	addl	$-5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 760(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	addl	$-6, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	cltq
	movq	%rax, 776(%rsp)                 # 8-byte Spill
	movl	$7, %eax
	movq	%rax, 784(%rsp)                 # 8-byte Spill
.LBB17_2:                               # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_6 Depth 2
	movb	751(%rsp), %al                  # 1-byte Reload
	movq	784(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 736(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB17_3
	jmp	.LBB17_28
.LBB17_3:                               # %for.body7.lr.ph
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	776(%rsp), %rcx                 # 8-byte Reload
	movq	736(%rsp), %rax                 # 8-byte Reload
	movq	832(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rsi
	addq	$-3, %rsi
	imulq	%rcx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 704(%rsp)                 # 8-byte Spill
	imulq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 716(%rsp)                 # 4-byte Spill
	movl	$7, %ecx
	movl	$7, %eax
	movq	%rcx, 720(%rsp)                 # 8-byte Spill
	movl	%eax, 732(%rsp)                 # 4-byte Spill
	jmp	.LBB17_6
.LBB17_4:                               # %for.cond360.preheader
	movb	851(%rsp), %cl                  # 1-byte Reload
	xorl	%eax, %eax
	testb	$1, %cl
	movl	%eax, 852(%rsp)                 # 4-byte Spill
	jne	.LBB17_5
	jmp	.LBB17_87
.LBB17_5:                               # %for.cond365.preheader.lr.ph
	movl	844(%rsp), %eax                 # 4-byte Reload
	movl	796(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %edx
	addl	$-7, %edx
	cmpl	$7, %edx
	setg	%sil
	movb	%sil, 663(%rsp)                 # 1-byte Spill
	movslq	%edx, %rdx
	movq	%rdx, 664(%rsp)                 # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 672(%rsp)                 # 8-byte Spill
	cltq
	movq	%rax, 680(%rsp)                 # 8-byte Spill
	movl	$7, %ecx
	xorl	%eax, %eax
	movq	%rcx, 688(%rsp)                 # 8-byte Spill
	movl	%eax, 700(%rsp)                 # 4-byte Spill
	jmp	.LBB17_29
.LBB17_6:                               # %for.body7
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movq	768(%rsp), %rdi                 # 8-byte Reload
	movq	760(%rsp), %r10                 # 8-byte Reload
	movq	752(%rsp), %r11                 # 8-byte Reload
	movq	704(%rsp), %rsi                 # 8-byte Reload
	movq	816(%rsp), %rdx                 # 8-byte Reload
	movq	832(%rsp), %rax                 # 8-byte Reload
	movl	716(%rsp), %r14d                # 4-byte Reload
	movq	720(%rsp), %rbx                 # 8-byte Reload
	movl	732(%rsp), %ebp                 # 4-byte Reload
	movl	%ebp, 612(%rsp)                 # 4-byte Spill
	movq	%rbx, 616(%rsp)                 # 8-byte Spill
	movq	%rsi, %r8
	addq	%rbx, %r8
	movq	%r8, %r9
	addq	$-1, %r9
	addl	%r14d, %ebp
	movslq	%ebp, %r14
	movq	%r14, 624(%rsp)                 # 8-byte Spill
	movzbl	(%rax,%r14), %eax
                                        # kill: def $rax killed $eax
	addq	%rax, %rdx
	movq	%rdx, 632(%rsp)                 # 8-byte Spill
	addq	$1, %r9
	movzbl	-1(%rsi,%rbx), %eax
	movl	%eax, %r14d
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%r14, %rax
	movzbl	(%rdx,%rax), %eax
	addl	$100, %eax
	addq	$1, %r9
	movzbl	(%rsi,%rbx), %ebp
	movl	%ebp, %r15d
	xorl	%ebp, %ebp
	movl	%ebp, %r14d
	subq	%r15, %r14
	movzbl	(%rdx,%r14), %ebp
	addl	%ebp, %eax
	movzbl	1(%rsi,%rbx), %esi
	movl	%esi, %ebx
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rbx, %rsi
	movzbl	(%rdx,%rsi), %esi
	addl	%esi, %eax
	addq	%r11, %r9
	movq	%r9, 640(%rsp)                  # 8-byte Spill
	movq	%r9, %rsi
	addq	$1, %rsi
	movzbl	1(%r8,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	2(%r8,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	3(%r8,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	addq	$1, %rsi
	movzbl	4(%r8,%r11), %ebx
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
                                        # kill: def $rbx killed $ebx
	subq	%r14, %rbx
	movzbl	(%rdx,%rbx), %ebx
	addl	%ebx, %eax
	movzbl	5(%r8,%r11), %r8d
	movl	%r8d, %r11d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r11, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	addq	%r10, %rsi
	movq	%rsi, %r8
	addq	$1, %r8
	movzbl	4(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	5(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	6(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	7(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	8(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	addl	%r11d, %eax
	addq	$1, %r8
	movzbl	9(%r9,%r10), %r11d
	movl	%r11d, %ebx
	xorl	%r11d, %r11d
                                        # kill: def $r11 killed $r11d
	subq	%rbx, %r11
	movzbl	(%rdx,%r11), %r11d
	addl	%r11d, %eax
	movzbl	10(%r9,%r10), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r9d
	addl	%r9d, %eax
	addq	%rdi, %r8
	addq	$1, %r8
	movzbl	6(%rsi,%rdi), %r9d
	movl	%r9d, %r10d
	xorl	%r9d, %r9d
                                        # kill: def $r9 killed $r9d
	subq	%r10, %r9
	movzbl	(%rdx,%r9), %r9d
	addl	%r9d, %eax
	addq	$1, %r8
	movq	%r8, 648(%rsp)                  # 8-byte Spill
	movzbl	7(%rsi,%rdi), %r8d
	movl	%r8d, %r9d
	xorl	%r8d, %r8d
                                        # kill: def $r8 killed $r8d
	subq	%r9, %r8
	movzbl	(%rdx,%r8), %r8d
	addl	%r8d, %eax
	movzbl	8(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rdx,%rsi), %edx
	addl	%edx, %eax
	movl	%eax, 656(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	656(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	648(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$2, %rdi
	addq	$1, %rdi
	movq	%rdi, 600(%rsp)                 # 8-byte Spill
	movzbl	2(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 608(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.8:                                # %if.then158
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	608(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	600(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 584(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 596(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.9:                                # %if.then168
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	596(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	584(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 580(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.10:                               # %if.then177
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	580(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	584(%rsp), %rsi                 # 8-byte Reload
	movq	768(%rsp), %rdi                 # 8-byte Reload
	movq	%rsi, %r8
	addq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 568(%rsp)                  # 8-byte Spill
	movzbl	(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 576(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.11:                               # %if.then190
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	576(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	568(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 552(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 564(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.12:                               # %if.then200
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	564(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	552(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 536(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 548(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.13:                               # %if.then210
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	548(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	536(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 520(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 532(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.14:                               # %if.then220
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	532(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	520(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 504(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 516(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.15:                               # %if.then230
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	516(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	504(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 488(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 500(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.16:                               # %if.then240
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	500(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	488(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 484(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.17:                               # %if.then249
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	484(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	488(%rsp), %rsi                 # 8-byte Reload
	movq	760(%rsp), %rdi                 # 8-byte Reload
	movq	%rsi, %r8
	addq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 472(%rsp)                  # 8-byte Spill
	movzbl	(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 480(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.18:                               # %if.then262
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	480(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	472(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 456(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 468(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.19:                               # %if.then272
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	468(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	456(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 440(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 452(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.20:                               # %if.then282
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	452(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	440(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 424(%rsp)                 # 8-byte Spill
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 436(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.21:                               # %if.then292
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	436(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	424(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 420(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.22:                               # %if.then301
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	420(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	424(%rsp), %rsi                 # 8-byte Reload
	movq	752(%rsp), %rdi                 # 8-byte Reload
	movq	%rsi, %r8
	addq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 408(%rsp)                  # 8-byte Spill
	movzbl	(%rsi,%rdi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 416(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.23:                               # %if.then314
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	416(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	408(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 404(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.24:                               # %if.then324
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	812(%rsp), %ecx                 # 4-byte Reload
	movl	404(%rsp), %edx                 # 4-byte Reload
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	408(%rsp), %rsi                 # 8-byte Reload
	movzbl	1(%rsi), %esi
	movl	%esi, %edi
	xorl	%esi, %esi
                                        # kill: def $rsi killed $esi
	subq	%rdi, %rsi
	movzbl	(%rax,%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 400(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %eax
	jge	.LBB17_26
# %bb.25:                               # %if.then333
                                        #   in Loop: Header=BB17_6 Depth=2
	movq	824(%rsp), %rax                 # 8-byte Reload
	movq	624(%rsp), %rcx                 # 8-byte Reload
	movl	400(%rsp), %esi                 # 4-byte Reload
	movl	812(%rsp), %edx                 # 4-byte Reload
	subl	%esi, %edx
	movl	%edx, (%rax,%rcx,4)
.LBB17_26:                              # %for.inc
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	744(%rsp), %esi                 # 4-byte Reload
	movl	612(%rsp), %eax                 # 4-byte Reload
	movq	616(%rsp), %rcx                 # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	movl	%ecx, %edx
	cmpl	%esi, %edx
	movq	%rcx, 720(%rsp)                 # 8-byte Spill
	movl	%eax, 732(%rsp)                 # 4-byte Spill
	jne	.LBB17_6
# %bb.27:                               # %for.inc357.loopexit
                                        #   in Loop: Header=BB17_2 Depth=1
	jmp	.LBB17_28
.LBB17_28:                              # %for.inc357
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	844(%rsp), %edx                 # 4-byte Reload
	movq	736(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 784(%rsp)                 # 8-byte Spill
	je	.LBB17_4
	jmp	.LBB17_2
.LBB17_29:                              # %for.cond365.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_32 Depth 2
	movb	663(%rsp), %al                  # 1-byte Reload
	movq	688(%rsp), %rcx                 # 8-byte Reload
	movl	700(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 388(%rsp)                 # 4-byte Spill
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	testb	$1, %al
	jne	.LBB17_31
# %bb.30:                               # %for.cond365.preheader.for.inc1323_crit_edge
                                        #   in Loop: Header=BB17_29 Depth=1
	movl	388(%rsp), %eax                 # 4-byte Reload
	movq	392(%rsp), %rcx                 # 8-byte Reload
	addq	$1, %rcx
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	movl	%eax, 384(%rsp)                 # 4-byte Spill
	jmp	.LBB17_85
.LBB17_31:                              # %for.body369.lr.ph
                                        #   in Loop: Header=BB17_29 Depth=1
	movl	388(%rsp), %ecx                 # 4-byte Reload
	movq	392(%rsp), %rax                 # 8-byte Reload
	movq	672(%rsp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	imulq	%rdi, %rdx
	movq	%rax, %rsi
	addq	$-3, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 296(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$-2, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 304(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$-1, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 312(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, 320(%rsp)                 # 8-byte Spill
	imulq	%rdi, %rsi
	movq	%rsi, 328(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$2, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 336(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	addq	$3, %rsi
	imulq	%rdi, %rsi
	movq	%rsi, 344(%rsp)                 # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	movl	%edx, 352(%rsp)                 # 4-byte Spill
	movl	%eax, 356(%rsp)                 # 4-byte Spill
	movl	$7, %edx
	movl	$7, %eax
	movq	%rdx, 360(%rsp)                 # 8-byte Spill
	movl	%ecx, 368(%rsp)                 # 4-byte Spill
	movl	%eax, 372(%rsp)                 # 4-byte Spill
.LBB17_32:                              # %for.body369
                                        #   Parent Loop BB17_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	824(%rsp), %rcx                 # 8-byte Reload
	movl	352(%rsp), %esi                 # 4-byte Reload
	movq	360(%rsp), %rdi                 # 8-byte Reload
	movl	368(%rsp), %eax                 # 4-byte Reload
	movl	372(%rsp), %edx                 # 4-byte Reload
	movl	%edx, 256(%rsp)                 # 4-byte Spill
	movl	%eax, 260(%rsp)                 # 4-byte Spill
	movq	%rdi, 264(%rsp)                 # 8-byte Spill
	addl	%esi, %edx
	movl	%edx, 276(%rsp)                 # 4-byte Spill
	movslq	%edx, %rdx
	movq	%rdx, 280(%rsp)                 # 8-byte Spill
	movl	(%rcx,%rdx,4), %ecx
	movl	%ecx, 288(%rsp)                 # 4-byte Spill
	cmpl	$0, %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.33:                               # %if.then376
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	296(%rsp), %rdi                 # 8-byte Reload
	movq	264(%rsp), %rsi                 # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 248(%rsp)                 # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.34:                               # %land.lhs.true
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	248(%rsp), %rsi                 # 8-byte Reload
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.35:                               # %land.lhs.true393
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	248(%rsp), %rsi                 # 8-byte Reload
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.36:                               # %land.lhs.true402
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	248(%rsp), %rsi                 # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.37:                               # %land.lhs.true410
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	248(%rsp), %rsi                 # 8-byte Reload
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.38:                               # %land.lhs.true419
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	248(%rsp), %rsi                 # 8-byte Reload
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.39:                               # %land.lhs.true428
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	248(%rsp), %rsi                 # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.40:                               # %land.lhs.true437
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	304(%rsp), %rdi                 # 8-byte Reload
	movq	264(%rsp), %rsi                 # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 240(%rsp)                 # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.41:                               # %land.lhs.true446
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	240(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$-2, %rdi
	movq	%rdi, 232(%rsp)                 # 8-byte Spill
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.42:                               # %land.lhs.true455
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	240(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$-1, %rdi
	movq	%rdi, 224(%rsp)                 # 8-byte Spill
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.43:                               # %land.lhs.true464
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	240(%rsp), %rsi                 # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.44:                               # %land.lhs.true472
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	240(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 216(%rsp)                 # 8-byte Spill
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.45:                               # %land.lhs.true481
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	240(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 208(%rsp)                 # 8-byte Spill
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.46:                               # %land.lhs.true490
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	240(%rsp), %rsi                 # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.47:                               # %land.lhs.true499
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	312(%rsp), %rdi                 # 8-byte Reload
	movq	264(%rsp), %rsi                 # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 200(%rsp)                 # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.48:                               # %land.lhs.true508
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	200(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$-2, %rdi
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.49:                               # %land.lhs.true517
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	200(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$-1, %rdi
	movq	%rdi, 184(%rsp)                 # 8-byte Spill
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.50:                               # %land.lhs.true526
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	200(%rsp), %rsi                 # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.51:                               # %land.lhs.true534
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	200(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 176(%rsp)                 # 8-byte Spill
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.52:                               # %land.lhs.true543
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	200(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 168(%rsp)                 # 8-byte Spill
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.53:                               # %land.lhs.true552
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	200(%rsp), %rsi                 # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.54:                               # %land.lhs.true561
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movl	276(%rsp), %esi                 # 4-byte Reload
	addl	$-3, %esi
	movslq	%esi, %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.55:                               # %land.lhs.true569
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movl	276(%rsp), %esi                 # 4-byte Reload
	addl	$-2, %esi
	movslq	%esi, %rsi
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.56:                               # %land.lhs.true577
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movl	276(%rsp), %esi                 # 4-byte Reload
	addl	$-1, %esi
	movslq	%esi, %rsi
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jle	.LBB17_83
# %bb.57:                               # %land.lhs.true585
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movl	276(%rsp), %esi                 # 4-byte Reload
	addl	$1, %esi
	movslq	%esi, %rsi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.58:                               # %land.lhs.true593
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movl	276(%rsp), %esi                 # 4-byte Reload
	addl	$2, %esi
	movslq	%esi, %rsi
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.59:                               # %land.lhs.true601
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movl	276(%rsp), %esi                 # 4-byte Reload
	addl	$3, %esi
	movslq	%esi, %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.60:                               # %land.lhs.true609
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	328(%rsp), %rdi                 # 8-byte Reload
	movq	264(%rsp), %rsi                 # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 128(%rsp)                 # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.61:                               # %land.lhs.true618
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$-2, %rdi
	movq	%rdi, 120(%rsp)                 # 8-byte Spill
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.62:                               # %land.lhs.true627
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$-1, %rdi
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.63:                               # %land.lhs.true636
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	128(%rsp), %rsi                 # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.64:                               # %land.lhs.true644
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.65:                               # %land.lhs.true653
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.66:                               # %land.lhs.true662
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	128(%rsp), %rsi                 # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.67:                               # %land.lhs.true671
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	336(%rsp), %rdi                 # 8-byte Reload
	movq	264(%rsp), %rsi                 # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.68:                               # %land.lhs.true680
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, %rdi
	addq	$-2, %rdi
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.69:                               # %land.lhs.true689
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, %rdi
	addq	$-1, %rdi
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.70:                               # %land.lhs.true698
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.71:                               # %land.lhs.true706
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.72:                               # %land.lhs.true715
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, %rdi
	addq	$2, %rdi
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.73:                               # %land.lhs.true724
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.74:                               # %land.lhs.true733
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	344(%rsp), %rdi                 # 8-byte Reload
	movq	264(%rsp), %rsi                 # 8-byte Reload
	addq	%rdi, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	cmpl	-12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.75:                               # %land.lhs.true742
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	-8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.76:                               # %land.lhs.true751
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	-4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.77:                               # %land.lhs.true760
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.78:                               # %land.lhs.true768
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	4(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.79:                               # %land.lhs.true777
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	8(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.80:                               # %land.lhs.true786
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %eax                 # 4-byte Reload
	movl	288(%rsp), %ecx                 # 4-byte Reload
	movq	824(%rsp), %rdx                 # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	12(%rdx,%rsi,4), %ecx
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jl	.LBB17_83
# %bb.81:                               # %if.then795
                                        #   in Loop: Header=BB17_32 Depth=2
	movl	260(%rsp), %ecx                 # 4-byte Reload
	movq	800(%rsp), %rax                 # 8-byte Reload
	movq	240(%rsp), %rdx                 # 8-byte Reload
	movq	112(%rsp), %r10                 # 8-byte Reload
	movq	184(%rsp), %r11                 # 8-byte Reload
	movq	224(%rsp), %r13                 # 8-byte Reload
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	176(%rsp), %rbp                 # 8-byte Reload
	movq	80(%rsp), %r9                   # 8-byte Reload
	movq	120(%rsp), %r14                 # 8-byte Reload
	movq	192(%rsp), %r15                 # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	136(%rsp), %r8                  # 8-byte Reload
	movq	168(%rsp), %r12                 # 8-byte Reload
	movslq	%ecx, %rsi
	imulq	$24, %rsi, %rcx
	addq	%rcx, %rax
	movq	800(%rsp), %rcx                 # 8-byte Reload
	addq	$8, %rax
	movl	$0, (%rax)
	imulq	$24, %rsi, %rax
	addq	%rax, %rcx
	movq	264(%rsp), %rax                 # 8-byte Reload
	movl	%eax, (%rcx)
	movq	800(%rsp), %rax                 # 8-byte Reload
	imulq	$24, %rsi, %rcx
	addq	%rcx, %rax
	movl	356(%rsp), %ecx                 # 4-byte Reload
	addq	$4, %rax
	movl	%ecx, (%rax)
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	832(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax,%rcx), %ecx
	movzbl	(%rax,%r13), %eax
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	216(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	208(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	200(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%r15), %ecx
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%r11), %ecx
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	160(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rbp), %ecx
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%r12), %ecx
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	152(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	280(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	144(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	128(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%r8), %ecx
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%r14), %ecx
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%r10), %ecx
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	96(%rsp), %rdx                  # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rbx), %ecx
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	72(%rsp), %rdx                  # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%r9), %ecx
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	88(%rsp), %rdx                  # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %ecx
	movq	64(%rsp), %rdx                  # 8-byte Reload
	addl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rdx), %edx
	addl	%edx, %eax
	movzbl	(%rcx,%rdi), %ecx
	addl	%ecx, %eax
	movl	$25, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	800(%rsp), %rax                 # 8-byte Reload
	imulq	$24, %rsi, %rdx
	addq	%rdx, %rax
	movq	96(%rsp), %rdx                  # 8-byte Reload
	addq	$20, %rax
	movl	%ecx, (%rax)
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	832(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax,%rcx), %eax
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movq	832(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax,%r12), %r12d
	movzbl	(%rax,%r8), %r8d
	movzbl	(%rax,%rdx), %edx
	movzbl	(%rax,%rdi), %edi
	movzbl	(%rax,%rcx), %eax
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movq	832(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax,%r15), %r15d
	movzbl	(%rax,%rcx), %ecx
	movzbl	(%rax,%r14), %r14d
	movzbl	(%rax,%r9), %eax
	movl	20(%rsp), %r9d                  # 4-byte Reload
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	movl	%r12d, %eax
	addl	%r9d, %eax
	movq	832(%rsp), %r9                  # 8-byte Reload
	addl	%r8d, %eax
	movl	24(%rsp), %r8d                  # 4-byte Reload
	addl	%edx, %eax
	addl	%edi, %eax
	subl	%r8d, %eax
	movq	144(%rsp), %r8                  # 8-byte Reload
	subl	%r15d, %eax
	subl	%ecx, %eax
	movl	28(%rsp), %ecx                  # 4-byte Reload
	subl	%r14d, %eax
	subl	%ecx, %eax
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%r9,%rcx), %ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movzbl	(%r9,%rbp), %ebp
	movzbl	(%r9,%r8), %r8d
	movzbl	(%r9,%rbx), %ebx
	movzbl	(%r9,%rcx), %ecx
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%r9,%r13), %r13d
	movzbl	(%r9,%r11), %r11d
	movzbl	(%r9,%rcx), %ecx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movzbl	(%r9,%r10), %r10d
	movzbl	(%r9,%rcx), %r9d
	movl	32(%rsp), %ecx                  # 4-byte Reload
	shll	$1, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	%ebp, %eax
	addl	%ecx, %eax
	movl	12(%rsp), %ecx                  # 4-byte Reload
	addl	%ecx, %eax
	movl	16(%rsp), %ecx                  # 4-byte Reload
	addl	%r8d, %eax
	movl	36(%rsp), %r8d                  # 4-byte Reload
	addl	%ebx, %eax
	addl	%r8d, %eax
	movq	88(%rsp), %r8                   # 8-byte Reload
	subl	%r13d, %eax
	subl	%r11d, %eax
	subl	%ecx, %eax
	movq	832(%rsp), %rcx                 # 8-byte Reload
	subl	%r10d, %eax
	subl	%r9d, %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movq	240(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rcx,%r8), %r8d
	movzbl	(%rcx,%rax), %ecx
	movl	20(%rsp), %eax                  # 4-byte Reload
	subl	%eax, %edi
	movl	24(%rsp), %eax                  # 4-byte Reload
	subl	%eax, %edi
	movl	28(%rsp), %eax                  # 4-byte Reload
	addl	%eax, %edi
	movl	32(%rsp), %eax                  # 4-byte Reload
	subl	%eax, %edi
	movl	36(%rsp), %eax                  # 4-byte Reload
	addl	%eax, %edi
	movl	40(%rsp), %eax                  # 4-byte Reload
	subl	%r13d, %edi
	movq	200(%rsp), %r13                 # 8-byte Reload
	addl	%r9d, %edi
	movq	128(%rsp), %r9                  # 8-byte Reload
	addl	%r8d, %edi
	movq	832(%rsp), %r8                  # 8-byte Reload
	subl	%ecx, %edi
	movq	800(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%r8,%r9), %r9d
	movzbl	(%r8,%r13), %r8d
	shll	$1, %edi
	subl	%r12d, %edx
	subl	%r15d, %edx
	addl	%r14d, %edx
	subl	%ebp, %edx
	addl	%ebx, %edx
	subl	%r11d, %edx
	addl	%r10d, %edx
	addl	%r9d, %edx
	subl	%r8d, %edx
	addl	%edi, %edx
	movl	%edx, 44(%rsp)                  # 4-byte Spill
	movl	$15, %edi
	cltd
	idivl	%edi
	movl	%eax, %edi
	movl	44(%rsp), %eax                  # 4-byte Reload
	imulq	$24, %rsi, %r8
	movq	%rcx, %rdx
	addq	%r8, %rdx
	addq	$12, %rdx
	movl	%edi, (%rdx)
	movl	$15, %edi
	cltd
	idivl	%edi
	movl	%eax, %edx
	movl	260(%rsp), %eax                 # 4-byte Reload
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rcx
	addq	$16, %rcx
	movl	%edx, (%rcx)
	addl	$1, %eax
	cmpl	$15000, %eax                    # imm = 0x3A98
	movl	%eax, 292(%rsp)                 # 4-byte Spill
	jne	.LBB17_83
# %bb.82:                               # %if.then1316
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str.29, %rdi
	movl	$18, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB17_83:                              # %for.inc1320
                                        #   in Loop: Header=BB17_32 Depth=2
	movq	664(%rsp), %rsi                 # 8-byte Reload
	movl	256(%rsp), %ecx                 # 4-byte Reload
	movq	264(%rsp), %rdx                 # 8-byte Reload
	movl	292(%rsp), %eax                 # 4-byte Reload
	addq	$1, %rdx
	addl	$1, %ecx
	cmpq	%rsi, %rdx
	movq	%rdx, 360(%rsp)                 # 8-byte Spill
	movl	%eax, %edx
	movl	%edx, 368(%rsp)                 # 4-byte Spill
	movl	%ecx, 372(%rsp)                 # 4-byte Spill
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	jl	.LBB17_32
# %bb.84:                               # %for.inc1323.loopexit
                                        #   in Loop: Header=BB17_29 Depth=1
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movl	8(%rsp), %eax                   # 4-byte Reload
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	movl	%eax, 384(%rsp)                 # 4-byte Spill
.LBB17_85:                              # %for.inc1323
                                        #   in Loop: Header=BB17_29 Depth=1
	movq	680(%rsp), %rdx                 # 8-byte Reload
	movq	376(%rsp), %rcx                 # 8-byte Reload
	movl	384(%rsp), %eax                 # 4-byte Reload
	cmpq	%rdx, %rcx
	movq	%rcx, 688(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 700(%rsp)                 # 4-byte Spill
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	jl	.LBB17_29
# %bb.86:                               # %for.end1325.loopexit
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	%eax, 852(%rsp)                 # 4-byte Spill
.LBB17_87:                              # %for.end1325
	movq	800(%rsp), %rax                 # 8-byte Reload
	movl	852(%rsp), %ecx                 # 4-byte Reload
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movl	$7, (%rax)
                                        # implicit-def: $eax
	addq	$856, %rsp                      # imm = 0x358
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	susan_corners_quick, .Lfunc_end17-susan_corners_quick
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function main
.LCPI18_0:
	.long	0x40800000                      # float 4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI18_1:
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.long	0x80000000                      # float -0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI18_2:
	.quad	0x4059000000000000              # double 100
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$362928, %rsp                   # imm = 0x589B0
	.cfi_def_cfa_offset 362944
	.cfi_offset %rbx, -16
	movl	%edi, 2900(%rsp)                # 4-byte Spill
	movq	%rsi, 2904(%rsp)                # 8-byte Spill
	leaq	362920(%rsp), %rax
	leaq	362916(%rsp), %rax
	leaq	362912(%rsp), %rax
	leaq	2912(%rsp), %rax
	cmpl	$3, %edi
	jge	.LBB18_2
# %bb.1:                                # %if.then
	callq	usage@PLT
.LBB18_2:                               # %if.end
	movq	2904(%rsp), %rax                # 8-byte Reload
	movq	8(%rax), %rdi
	leaq	362920(%rsp), %rsi
	leaq	362916(%rsp), %rdx
	leaq	362912(%rsp), %rcx
	callq	get_image@PLT
	movl	2900(%rsp), %esi                # 4-byte Reload
	xorl	%ecx, %ecx
	movss	.LCPI18_0(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	$1, %edx
	movl	$20, %eax
	cmpl	$3, %esi
	movl	%ecx, %esi
	movl	%esi, 2868(%rsp)                # 4-byte Spill
	movss	%xmm0, 2872(%rsp)               # 4-byte Spill
	movl	%ecx, %esi
	movl	%esi, 2876(%rsp)                # 4-byte Spill
	movl	%ecx, %esi
	movl	%esi, 2880(%rsp)                # 4-byte Spill
	movl	%ecx, %esi
	movl	%esi, 2884(%rsp)                # 4-byte Spill
	movl	%edx, 2888(%rsp)                # 4-byte Spill
	movl	%ecx, 2892(%rsp)                # 4-byte Spill
	movl	%eax, 2896(%rsp)                # 4-byte Spill
	jle	.LBB18_24
# %bb.3:                                # %while.body.preheader
	xorl	%edx, %edx
	movss	.LCPI18_0(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movl	$1, %esi
	movl	$20, %ecx
	movl	$3, %eax
	movl	%edx, %edi
	movl	%edi, 2832(%rsp)                # 4-byte Spill
	movss	%xmm0, 2836(%rsp)               # 4-byte Spill
	movl	%edx, %edi
	movl	%edi, 2840(%rsp)                # 4-byte Spill
	movl	%edx, %edi
	movl	%edi, 2844(%rsp)                # 4-byte Spill
	movl	%edx, %edi
	movl	%edi, 2848(%rsp)                # 4-byte Spill
	movl	%esi, 2852(%rsp)                # 4-byte Spill
	movl	%edx, 2856(%rsp)                # 4-byte Spill
	movl	%ecx, 2860(%rsp)                # 4-byte Spill
	movl	%eax, 2864(%rsp)                # 4-byte Spill
	jmp	.LBB18_4
.LBB18_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	2904(%rsp), %rax                # 8-byte Reload
	movl	2832(%rsp), %edx                # 4-byte Reload
	movss	2836(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2840(%rsp), %esi                # 4-byte Reload
	movl	2844(%rsp), %edi                # 4-byte Reload
	movl	2848(%rsp), %r8d                # 4-byte Reload
	movl	2852(%rsp), %r9d                # 4-byte Reload
	movl	2856(%rsp), %r10d               # 4-byte Reload
	movl	2860(%rsp), %r11d               # 4-byte Reload
	movl	2864(%rsp), %ecx                # 4-byte Reload
	movl	%ecx, 2788(%rsp)                # 4-byte Spill
	movl	%r11d, 2792(%rsp)               # 4-byte Spill
	movl	%r10d, 2796(%rsp)               # 4-byte Spill
	movl	%r9d, 2800(%rsp)                # 4-byte Spill
	movl	%r8d, 2804(%rsp)                # 4-byte Spill
	movl	%edi, 2808(%rsp)                # 4-byte Spill
	movl	%esi, 2812(%rsp)                # 4-byte Spill
	movss	%xmm0, 2816(%rsp)               # 4-byte Spill
	movl	%edx, 2820(%rsp)                # 4-byte Spill
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 2824(%rsp)                # 8-byte Spill
	cmpb	$45, (%rax)
	jne	.LBB18_21
# %bb.5:                                # %if.then5
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2820(%rsp), %eax                # 4-byte Reload
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2788(%rsp), %r10d               # 4-byte Reload
	movq	2824(%rsp), %r11                # 8-byte Reload
	movsbl	1(%r11), %r11d
	addl	$-51, %r11d
	movl	%r11d, %ebx
	movq	%rbx, 2744(%rsp)                # 8-byte Spill
	subl	$65, %r11d
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	ja	.LBB18_22
# %bb.119:                              # %if.then5
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2820(%rsp), %ecx                # 4-byte Reload
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %edx                # 4-byte Reload
	movl	2808(%rsp), %esi                # 4-byte Reload
	movl	2804(%rsp), %edi                # 4-byte Reload
	movl	2800(%rsp), %r8d                # 4-byte Reload
	movl	2796(%rsp), %r9d                # 4-byte Reload
	movl	2792(%rsp), %r10d               # 4-byte Reload
	movl	2788(%rsp), %r11d               # 4-byte Reload
	movq	2744(%rsp), %rax                # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rax
	movl	%r11d, 2752(%rsp)               # 4-byte Spill
	movl	%r10d, 2756(%rsp)               # 4-byte Spill
	movl	%r9d, 2760(%rsp)                # 4-byte Spill
	movl	%r8d, 2764(%rsp)                # 4-byte Spill
	movl	%edi, 2768(%rsp)                # 4-byte Spill
	movl	%esi, 2772(%rsp)                # 4-byte Spill
	movl	%edx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%ecx, 2784(%rsp)                # 4-byte Spill
	jmpq	*%rax
.LBB18_6:                               # %sw.bb
                                        #   in Loop: Header=BB18_4 Depth=1
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2788(%rsp), %r10d               # 4-byte Reload
	xorl	%eax, %eax
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_7:                               # %sw.bb7
                                        #   in Loop: Header=BB18_4 Depth=1
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2788(%rsp), %r10d               # 4-byte Reload
	movl	$1, %eax
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_8:                               # %sw.bb8
                                        #   in Loop: Header=BB18_4 Depth=1
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2788(%rsp), %r10d               # 4-byte Reload
	movl	$2, %eax
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_9:                               # %sw.bb9
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2820(%rsp), %eax                # 4-byte Reload
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2788(%rsp), %r10d               # 4-byte Reload
	movl	$1, %r8d
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_10:                              # %sw.bb10
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2820(%rsp), %eax                # 4-byte Reload
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2788(%rsp), %r10d               # 4-byte Reload
	xorl	%edi, %edi
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_11:                              # %sw.bb11
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2820(%rsp), %eax                # 4-byte Reload
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2788(%rsp), %r10d               # 4-byte Reload
	movl	$1, %edx
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_12:                              # %sw.bb12
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2820(%rsp), %eax                # 4-byte Reload
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2788(%rsp), %r10d               # 4-byte Reload
	movl	$1, %esi
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_13:                              # %sw.bb13
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2820(%rsp), %eax                # 4-byte Reload
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2788(%rsp), %r10d               # 4-byte Reload
	movl	$1, %ecx
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_14:                              # %sw.bb14
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2900(%rsp), %ecx                # 4-byte Reload
	movl	2788(%rsp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, 2740(%rsp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jl	.LBB18_16
# %bb.15:                               # %if.then17
	movabsq	$.Lstr.47, %rdi
	callq	puts@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB18_16:                              # %if.end19
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2740(%rsp), %ecx                # 4-byte Reload
	movq	2904(%rsp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	strtod@PLT
	movl	2740(%rsp), %r10d               # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2820(%rsp), %eax                # 4-byte Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 2736(%rsp)               # 4-byte Spill
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jbe	.LBB18_22
# %bb.17:                               # %if.then26
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2820(%rsp), %eax                # 4-byte Reload
	movss	2736(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2792(%rsp), %r9d                # 4-byte Reload
	movl	2740(%rsp), %r10d               # 4-byte Reload
	movl	$1, %esi
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_18:                              # %sw.bb28
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2900(%rsp), %ecx                # 4-byte Reload
	movl	2788(%rsp), %eax                # 4-byte Reload
	addl	$1, %eax
	movl	%eax, 2732(%rsp)                # 4-byte Spill
	cmpl	%ecx, %eax
	jl	.LBB18_20
# %bb.19:                               # %if.then32
	movabsq	$.Lstr.46, %rdi
	callq	puts@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB18_20:                              # %if.end34
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2732(%rsp), %ecx                # 4-byte Reload
	movq	2904(%rsp), %rax                # 8-byte Reload
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movl	2732(%rsp), %r10d               # 4-byte Reload
	movl	2796(%rsp), %r8d                # 4-byte Reload
	movl	2800(%rsp), %edi                # 4-byte Reload
	movl	2804(%rsp), %esi                # 4-byte Reload
	movl	2808(%rsp), %edx                # 4-byte Reload
	movl	2812(%rsp), %ecx                # 4-byte Reload
	movss	2816(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %r9
	movl	2820(%rsp), %eax                # 4-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	movl	%r10d, 2752(%rsp)               # 4-byte Spill
	movl	%r9d, 2756(%rsp)                # 4-byte Spill
	movl	%r8d, 2760(%rsp)                # 4-byte Spill
	movl	%edi, 2764(%rsp)                # 4-byte Spill
	movl	%esi, 2768(%rsp)                # 4-byte Spill
	movl	%edx, 2772(%rsp)                # 4-byte Spill
	movl	%ecx, 2776(%rsp)                # 4-byte Spill
	movss	%xmm0, 2780(%rsp)               # 4-byte Spill
	movl	%eax, 2784(%rsp)                # 4-byte Spill
	jmp	.LBB18_22
.LBB18_21:                              # %if.else
	callq	usage@PLT
.LBB18_22:                              # %if.end39
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	2900(%rsp), %r11d               # 4-byte Reload
	movl	2752(%rsp), %r10d               # 4-byte Reload
	movl	2756(%rsp), %eax                # 4-byte Reload
	movl	2760(%rsp), %ecx                # 4-byte Reload
	movl	2764(%rsp), %edx                # 4-byte Reload
	movl	2768(%rsp), %esi                # 4-byte Reload
	movl	2772(%rsp), %edi                # 4-byte Reload
	movl	2776(%rsp), %r8d                # 4-byte Reload
	movss	2780(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2784(%rsp), %r9d                # 4-byte Reload
	addl	$1, %r10d
	cmpl	%r11d, %r10d
	movl	%r9d, %r11d
	movl	%r11d, 2832(%rsp)               # 4-byte Spill
	movaps	%xmm0, %xmm1
	movss	%xmm1, 2836(%rsp)               # 4-byte Spill
	movl	%r8d, %r11d
	movl	%r11d, 2840(%rsp)               # 4-byte Spill
	movl	%edi, %r11d
	movl	%r11d, 2844(%rsp)               # 4-byte Spill
	movl	%esi, %r11d
	movl	%r11d, 2848(%rsp)               # 4-byte Spill
	movl	%edx, %r11d
	movl	%r11d, 2852(%rsp)               # 4-byte Spill
	movl	%ecx, %r11d
	movl	%r11d, 2856(%rsp)               # 4-byte Spill
	movl	%eax, %r11d
	movl	%r11d, 2860(%rsp)               # 4-byte Spill
	movl	%r10d, 2864(%rsp)               # 4-byte Spill
	movl	%r9d, 2700(%rsp)                # 4-byte Spill
	movss	%xmm0, 2704(%rsp)               # 4-byte Spill
	movl	%r8d, 2708(%rsp)                # 4-byte Spill
	movl	%edi, 2712(%rsp)                # 4-byte Spill
	movl	%esi, 2716(%rsp)                # 4-byte Spill
	movl	%edx, 2720(%rsp)                # 4-byte Spill
	movl	%ecx, 2724(%rsp)                # 4-byte Spill
	movl	%eax, 2728(%rsp)                # 4-byte Spill
	jl	.LBB18_4
# %bb.23:                               # %while.end.loopexit
	movl	2700(%rsp), %r9d                # 4-byte Reload
	movss	2704(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2708(%rsp), %r8d                # 4-byte Reload
	movl	2712(%rsp), %edi                # 4-byte Reload
	movl	2716(%rsp), %esi                # 4-byte Reload
	movl	2720(%rsp), %edx                # 4-byte Reload
	movl	2724(%rsp), %ecx                # 4-byte Reload
	movl	2728(%rsp), %eax                # 4-byte Reload
	movl	%r9d, 2868(%rsp)                # 4-byte Spill
	movss	%xmm0, 2872(%rsp)               # 4-byte Spill
	movl	%r8d, 2876(%rsp)                # 4-byte Spill
	movl	%edi, 2880(%rsp)                # 4-byte Spill
	movl	%esi, 2884(%rsp)                # 4-byte Spill
	movl	%edx, 2888(%rsp)                # 4-byte Spill
	movl	%ecx, 2892(%rsp)                # 4-byte Spill
	movl	%eax, 2896(%rsp)                # 4-byte Spill
.LBB18_24:                              # %while.end
	movl	2868(%rsp), %eax                # 4-byte Reload
	movss	2872(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	2876(%rsp), %edx                # 4-byte Reload
	movl	2880(%rsp), %esi                # 4-byte Reload
	movl	2884(%rsp), %edi                # 4-byte Reload
	movl	2888(%rsp), %r8d                # 4-byte Reload
	movl	2892(%rsp), %ecx                # 4-byte Reload
	movl	2896(%rsp), %r9d                # 4-byte Reload
	movl	%r9d, 2668(%rsp)                # 4-byte Spill
	movl	%ecx, 2672(%rsp)                # 4-byte Spill
	movl	%r8d, 2676(%rsp)                # 4-byte Spill
	movl	%edi, 2680(%rsp)                # 4-byte Spill
	movl	%esi, 2684(%rsp)                # 4-byte Spill
	movl	%edx, 2688(%rsp)                # 4-byte Spill
	movss	%xmm0, 2692(%rsp)               # 4-byte Spill
	xorl	$1, %ecx
	orl	%eax, %ecx
	movl	$1, %ecx
	cmovel	%ecx, %eax
	movl	%eax, 2696(%rsp)                # 4-byte Spill
	testl	%eax, %eax
	je	.LBB18_26
	jmp	.LBB18_120
.LBB18_120:                             # %while.end
	movl	2696(%rsp), %eax                # 4-byte Reload
	subl	$1, %eax
	je	.LBB18_29
	jmp	.LBB18_121
.LBB18_121:                             # %while.end
	movl	2696(%rsp), %eax                # 4-byte Reload
	subl	$2, %eax
	je	.LBB18_77
	jmp	.LBB18_25
.LBB18_25:                              # %while.end.sw.epilog101_crit_edge
	movq	362920(%rsp), %rax
	movl	362916(%rsp), %ecx
	movl	362912(%rsp), %edx
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jmp	.LBB18_116
.LBB18_26:                              # %sw.bb47
	movl	$516, %edi                      # imm = 0x204
	callq	malloc@PLT
	movq	%rax, %rcx
	movl	2668(%rsp), %eax                # 4-byte Reload
	addq	$258, %rcx                      # imm = 0x102
	movq	%rcx, 2624(%rsp)                # 8-byte Spill
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 2636(%rsp)               # 4-byte Spill
	movq	$-256, %rax
	movq	%rax, 2640(%rsp)                # 8-byte Spill
.LBB18_27:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	2640(%rsp), %rax                # 8-byte Reload
	movss	2636(%rsp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, 2608(%rsp)                # 8-byte Spill
	cvtsi2ss	%eax, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 2584(%rsp)               # 4-byte Spill
	mulss	%xmm0, %xmm0
	movss	%xmm0, 2588(%rsp)               # 4-byte Spill
	movaps	.LCPI18_1(%rip), %xmm1          # xmm1 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	pxor	%xmm1, %xmm0
	movaps	%xmm0, 2592(%rsp)               # 16-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	exp@PLT
	movq	2624(%rsp), %rcx                # 8-byte Reload
	movq	2608(%rsp), %rax                # 8-byte Reload
	movsd	.LCPI18_2(%rip), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	movq	%rax, 2616(%rsp)                # 8-byte Spill
	cmpq	$257, %rax                      # imm = 0x101
	movq	%rax, 2640(%rsp)                # 8-byte Spill
	jne	.LBB18_27
# %bb.28:                               # %setup_brightness_lut.exit
	movq	2624(%rsp), %r8                 # 8-byte Reload
	movl	2680(%rsp), %edi                # 4-byte Reload
	movss	2692(%rsp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	362920(%rsp), %rsi
	movq	%rsi, 2576(%rsp)                # 8-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movl	362916(%rsp), %edx
	movl	%edx, 2572(%rsp)                # 4-byte Spill
	movl	362912(%rsp), %ecx
	movl	%ecx, 2568(%rsp)                # 4-byte Spill
	callq	susan_smoothing@PLT
	movl	2568(%rsp), %edx                # 4-byte Reload
	movl	2572(%rsp), %ecx                # 4-byte Reload
	movq	2576(%rsp), %rax                # 8-byte Reload
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jmp	.LBB18_116
.LBB18_29:                              # %sw.bb49
	movl	362916(%rsp), %ecx
	movl	%ecx, 2516(%rsp)                # 4-byte Spill
	movl	362912(%rsp), %eax
	movl	%eax, 2520(%rsp)                # 4-byte Spill
	imull	%ecx, %eax
	movl	%eax, 2524(%rsp)                # 4-byte Spill
	movslq	%eax, %rdi
	movq	%rdi, 2528(%rsp)                # 8-byte Spill
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, 2536(%rsp)                # 8-byte Spill
	movl	$516, %edi                      # imm = 0x204
	callq	malloc@PLT
	movq	%rax, %rcx
	movl	2668(%rsp), %eax                # 4-byte Reload
	addq	$258, %rcx                      # imm = 0x102
	movq	%rcx, 2544(%rsp)                # 8-byte Spill
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 2556(%rsp)               # 4-byte Spill
	movq	$-256, %rax
	movq	%rax, 2560(%rsp)                # 8-byte Spill
.LBB18_30:                              # %for.body.i177
                                        # =>This Inner Loop Header: Depth=1
	movq	2560(%rsp), %rax                # 8-byte Reload
	movss	2556(%rsp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, 2496(%rsp)                # 8-byte Spill
	cvtsi2ss	%eax, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 2468(%rsp)               # 4-byte Spill
	mulss	%xmm0, %xmm0
	movss	%xmm0, 2472(%rsp)               # 4-byte Spill
	movaps	%xmm0, %xmm1
	mulss	%xmm1, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, 2476(%rsp)               # 4-byte Spill
	movaps	.LCPI18_1(%rip), %xmm1          # xmm1 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	pxor	%xmm1, %xmm0
	movaps	%xmm0, 2480(%rsp)               # 16-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	exp@PLT
	movq	2544(%rsp), %rcx                # 8-byte Reload
	movq	2496(%rsp), %rax                # 8-byte Reload
	movsd	.LCPI18_2(%rip), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	movq	%rax, 2504(%rsp)                # 8-byte Spill
	cmpq	$257, %rax                      # imm = 0x101
	movq	%rax, 2560(%rsp)                # 8-byte Spill
	jne	.LBB18_30
# %bb.31:                               # %setup_brightness_lut.exit178
	movl	2672(%rsp), %eax                # 4-byte Reload
	movq	2536(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 2456(%rsp)                # 8-byte Spill
	cmpl	$0, %eax
	je	.LBB18_55
# %bb.32:                               # %if.then53
	movl	2680(%rsp), %eax                # 4-byte Reload
	movq	362920(%rsp), %rcx
	movq	%rcx, 2448(%rsp)                # 8-byte Spill
	cmpl	$0, %eax
	je	.LBB18_34
# %bb.33:                               # %if.then55
	movl	2520(%rsp), %r9d                # 4-byte Reload
	movl	2516(%rsp), %r8d                # 4-byte Reload
	movq	2544(%rsp), %rdx                # 8-byte Reload
	movq	2456(%rsp), %rsi                # 8-byte Reload
	movq	2448(%rsp), %rdi                # 8-byte Reload
                                        # implicit-def: $ecx
	callq	susan_principle_small@PLT
	jmp	.LBB18_35
.LBB18_34:                              # %if.else57
	movl	2520(%rsp), %r9d                # 4-byte Reload
	movl	2516(%rsp), %r8d                # 4-byte Reload
	movq	2544(%rsp), %rdx                # 8-byte Reload
	movq	2456(%rsp), %rsi                # 8-byte Reload
	movq	2448(%rsp), %rdi                # 8-byte Reload
	movl	$2650, %ecx                     # imm = 0xA5A
	callq	susan_principle@PLT
.LBB18_35:                              # %if.end59
	movq	2448(%rsp), %rax                # 8-byte Reload
	movl	2516(%rsp), %ecx                # 4-byte Reload
	movl	2520(%rsp), %edx                # 4-byte Reload
	movl	2524(%rsp), %esi                # 4-byte Reload
	movq	2456(%rsp), %rdi                # 8-byte Reload
	movl	(%rdi), %edi
	movl	%edi, 2444(%rsp)                # 4-byte Spill
	cmpl	$0, %esi
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jle	.LBB18_116
# %bb.36:                               # %for.body.i179.preheader
	movq	2448(%rsp), %rax                # 8-byte Reload
	movl	2516(%rsp), %ecx                # 4-byte Reload
	movl	2520(%rsp), %edx                # 4-byte Reload
	movl	2524(%rsp), %esi                # 4-byte Reload
	cmpl	$1, %esi
	sete	%sil
	movb	%sil, 2443(%rsp)                # 1-byte Spill
	testb	$1, %sil
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jne	.LBB18_116
# %bb.37:                               # %for.body.for.body_crit_edge.i.preheader
	movl	2444(%rsp), %eax                # 4-byte Reload
	movl	2516(%rsp), %edx                # 4-byte Reload
	movl	2520(%rsp), %ecx                # 4-byte Reload
	imull	%edx, %ecx
	addl	$-2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$1, %rdx
	movq	%rdx, 2416(%rsp)                # 8-byte Spill
	movl	$1, %ecx
	cmpq	$8, %rdx
	movq	%rcx, 2424(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 2432(%rsp)                # 4-byte Spill
	movl	%eax, 2436(%rsp)                # 4-byte Spill
	jb	.LBB18_46
# %bb.38:                               # %min.iters.checked386
	movl	2444(%rsp), %eax                # 4-byte Reload
	movq	2416(%rsp), %rdx                # 8-byte Reload
	movabsq	$8589934584, %rcx               # imm = 0x1FFFFFFF8
	andq	%rcx, %rdx
	movq	%rdx, 2368(%rsp)                # 8-byte Spill
	movq	%rdx, %rcx
	orq	$1, %rcx
	movq	%rcx, 2376(%rsp)                # 8-byte Spill
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 2384(%rsp)               # 16-byte Spill
	movaps	%xmm0, 2400(%rsp)               # 16-byte Spill
	movl	$1, %ecx
	cmpq	$0, %rdx
	movq	%rcx, 2424(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 2432(%rsp)                # 4-byte Spill
	movl	%eax, 2436(%rsp)                # 4-byte Spill
	je	.LBB18_46
# %bb.39:                               # %vector.body382.preheader
	movaps	2400(%rsp), %xmm0               # 16-byte Reload
	movaps	2384(%rsp), %xmm1               # 16-byte Reload
	movl	2516(%rsp), %ecx                # 4-byte Reload
	movl	2520(%rsp), %eax                # 4-byte Reload
	imull	%ecx, %eax
	addl	$-2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	$1, %rcx
	movabsq	$8589934584, %rax               # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	addq	$-8, %rcx
	shrq	$3, %rcx
	movq	%rcx, 2288(%rsp)                # 8-byte Spill
	andq	$1, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm2
	movq	%rax, 2296(%rsp)                # 8-byte Spill
	movaps	%xmm1, %xmm2
	movaps	%xmm2, 2304(%rsp)               # 16-byte Spill
	movaps	%xmm1, 2320(%rsp)               # 16-byte Spill
	movaps	%xmm0, %xmm1
	movaps	%xmm1, 2336(%rsp)               # 16-byte Spill
	movaps	%xmm0, 2352(%rsp)               # 16-byte Spill
	jne	.LBB18_41
# %bb.40:                               # %vector.body382.prol
	movaps	2384(%rsp), %xmm6               # 16-byte Reload
	movaps	2400(%rsp), %xmm0               # 16-byte Reload
	movq	2536(%rsp), %rax                # 8-byte Reload
	movups	4(%rax), %xmm3
	movups	20(%rax), %xmm2
	movaps	%xmm3, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm0, %xmm4
	movaps	%xmm3, %xmm1
	pand	%xmm5, %xmm1
	por	%xmm4, %xmm1
	movaps	%xmm2, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	pand	%xmm5, %xmm0
	por	%xmm4, %xmm0
	movaps	%xmm6, %xmm5
	pcmpgtd	%xmm3, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm5, %xmm3
	por	%xmm4, %xmm3
	movaps	%xmm6, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm5, %xmm2
	por	%xmm4, %xmm2
	movl	$8, %eax
	movaps	%xmm2, %xmm4
	movaps	%xmm4, 2224(%rsp)               # 16-byte Spill
	movaps	%xmm3, %xmm4
	movaps	%xmm4, 2240(%rsp)               # 16-byte Spill
	movaps	%xmm0, %xmm4
	movaps	%xmm4, 2256(%rsp)               # 16-byte Spill
	movaps	%xmm1, %xmm4
	movaps	%xmm4, 2272(%rsp)               # 16-byte Spill
	movq	%rax, 2296(%rsp)                # 8-byte Spill
	movaps	%xmm3, 2304(%rsp)               # 16-byte Spill
	movaps	%xmm2, 2320(%rsp)               # 16-byte Spill
	movaps	%xmm1, 2336(%rsp)               # 16-byte Spill
	movaps	%xmm0, 2352(%rsp)               # 16-byte Spill
.LBB18_41:                              # %vector.body382.preheader.split
	movq	2288(%rsp), %rax                # 8-byte Reload
	movaps	2224(%rsp), %xmm3               # 16-byte Reload
	movaps	2240(%rsp), %xmm2               # 16-byte Reload
	movaps	2256(%rsp), %xmm1               # 16-byte Reload
	movaps	2272(%rsp), %xmm0               # 16-byte Reload
	movq	2296(%rsp), %rcx                # 8-byte Reload
	movaps	2304(%rsp), %xmm4               # 16-byte Reload
	movaps	2320(%rsp), %xmm5               # 16-byte Reload
	movaps	2336(%rsp), %xmm6               # 16-byte Reload
	movaps	2352(%rsp), %xmm7               # 16-byte Reload
	movaps	%xmm7, 2080(%rsp)               # 16-byte Spill
	movaps	%xmm6, 2096(%rsp)               # 16-byte Spill
	movaps	%xmm5, 2112(%rsp)               # 16-byte Spill
	movaps	%xmm4, 2128(%rsp)               # 16-byte Spill
	movq	%rcx, 2152(%rsp)                # 8-byte Spill
	cmpq	$0, %rax
	movaps	%xmm3, 2160(%rsp)               # 16-byte Spill
	movaps	%xmm2, 2176(%rsp)               # 16-byte Spill
	movaps	%xmm1, 2192(%rsp)               # 16-byte Spill
	movaps	%xmm0, 2208(%rsp)               # 16-byte Spill
	je	.LBB18_45
# %bb.42:                               # %vector.body382.preheader.split.split
	movaps	2080(%rsp), %xmm0               # 16-byte Reload
	movaps	2096(%rsp), %xmm1               # 16-byte Reload
	movaps	2112(%rsp), %xmm2               # 16-byte Reload
	movaps	2128(%rsp), %xmm3               # 16-byte Reload
	movq	2152(%rsp), %rax                # 8-byte Reload
	movq	%rax, 2008(%rsp)                # 8-byte Spill
	movaps	%xmm3, 2016(%rsp)               # 16-byte Spill
	movaps	%xmm2, 2032(%rsp)               # 16-byte Spill
	movaps	%xmm1, 2048(%rsp)               # 16-byte Spill
	movaps	%xmm0, 2064(%rsp)               # 16-byte Spill
	jmp	.LBB18_43
.LBB18_43:                              # %vector.body382
                                        # =>This Inner Loop Header: Depth=1
	movaps	2064(%rsp), %xmm5               # 16-byte Reload
	movaps	2048(%rsp), %xmm2               # 16-byte Reload
	movaps	2032(%rsp), %xmm3               # 16-byte Reload
	movaps	2016(%rsp), %xmm4               # 16-byte Reload
	movq	2008(%rsp), %rax                # 8-byte Reload
	movq	2368(%rsp), %rcx                # 8-byte Reload
	movq	2456(%rsp), %rdx                # 8-byte Reload
	movq	%rax, %rsi
	shlq	$2, %rsi
	movq	%rsi, 1504(%rsp)                # 8-byte Spill
	orq	$4, %rsi
	movq	%rsi, 1512(%rsp)                # 8-byte Spill
	movups	(%rdx,%rsi), %xmm7
	movups	16(%rdx,%rsi), %xmm6
	movaps	%xmm7, %xmm1
	pcmpgtd	%xmm2, %xmm1
	movaps	%xmm1, 1520(%rsp)               # 16-byte Spill
	movaps	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	movaps	%xmm0, 1536(%rsp)               # 16-byte Spill
	pandn	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movaps	%xmm0, 1552(%rsp)               # 16-byte Spill
	movaps	%xmm6, %xmm2
	pcmpgtd	%xmm5, %xmm2
	movaps	%xmm2, 1568(%rsp)               # 16-byte Spill
	movaps	%xmm6, %xmm1
	pand	%xmm2, %xmm1
	movaps	%xmm1, 1584(%rsp)               # 16-byte Spill
	pandn	%xmm5, %xmm2
	por	%xmm2, %xmm1
	movaps	%xmm1, 1600(%rsp)               # 16-byte Spill
	movaps	%xmm4, %xmm2
	pcmpgtd	%xmm7, %xmm2
	movaps	%xmm2, 1616(%rsp)               # 16-byte Spill
	pand	%xmm2, %xmm7
	movaps	%xmm7, 1632(%rsp)               # 16-byte Spill
	pandn	%xmm4, %xmm2
	por	%xmm2, %xmm7
	movaps	%xmm7, 1648(%rsp)               # 16-byte Spill
	movaps	%xmm3, %xmm2
	pcmpgtd	%xmm6, %xmm2
	movaps	%xmm2, 1664(%rsp)               # 16-byte Spill
	pand	%xmm2, %xmm6
	movaps	%xmm6, 1680(%rsp)               # 16-byte Spill
	pandn	%xmm3, %xmm2
	por	%xmm2, %xmm6
	movaps	%xmm6, 1696(%rsp)               # 16-byte Spill
	leaq	32(,%rax,4), %rsi
	orq	$4, %rsi
	movq	%rsi, 1720(%rsp)                # 8-byte Spill
	movups	(%rdx,%rsi), %xmm2
	movups	16(%rdx,%rsi), %xmm3
	movaps	%xmm2, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movaps	%xmm5, 1728(%rsp)               # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	pand	%xmm5, %xmm0
	movaps	%xmm0, 1744(%rsp)               # 16-byte Spill
	por	%xmm4, %xmm0
	movaps	%xmm0, 1760(%rsp)               # 16-byte Spill
	movaps	%xmm3, %xmm5
	pcmpgtd	%xmm1, %xmm5
	movaps	%xmm5, 1776(%rsp)               # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm1, %xmm4
	movaps	%xmm3, %xmm1
	pand	%xmm5, %xmm1
	movaps	%xmm1, 1792(%rsp)               # 16-byte Spill
	por	%xmm4, %xmm1
	movaps	%xmm1, 1808(%rsp)               # 16-byte Spill
	movaps	%xmm7, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movaps	%xmm5, 1824(%rsp)               # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm7, %xmm4
	pand	%xmm5, %xmm2
	movaps	%xmm2, 1840(%rsp)               # 16-byte Spill
	por	%xmm4, %xmm2
	movaps	%xmm2, 1856(%rsp)               # 16-byte Spill
	movaps	%xmm6, %xmm5
	pcmpgtd	%xmm3, %xmm5
	movaps	%xmm5, 1872(%rsp)               # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm5, %xmm3
	movaps	%xmm3, 1888(%rsp)               # 16-byte Spill
	por	%xmm4, %xmm3
	movaps	%xmm3, 1904(%rsp)               # 16-byte Spill
	addq	$16, %rax
	movq	%rax, 1928(%rsp)                # 8-byte Spill
	cmpq	%rcx, %rax
	movq	%rax, 2008(%rsp)                # 8-byte Spill
	movaps	%xmm2, %xmm4
	movaps	%xmm4, 2016(%rsp)               # 16-byte Spill
	movaps	%xmm3, %xmm4
	movaps	%xmm4, 2032(%rsp)               # 16-byte Spill
	movaps	%xmm0, %xmm4
	movaps	%xmm4, 2048(%rsp)               # 16-byte Spill
	movaps	%xmm1, %xmm4
	movaps	%xmm4, 2064(%rsp)               # 16-byte Spill
	movaps	%xmm3, 1936(%rsp)               # 16-byte Spill
	movaps	%xmm2, 1952(%rsp)               # 16-byte Spill
	movaps	%xmm1, 1968(%rsp)               # 16-byte Spill
	movaps	%xmm0, 1984(%rsp)               # 16-byte Spill
	jne	.LBB18_43
# %bb.44:                               # %middle.block383.unr-lcssa
	movaps	1936(%rsp), %xmm3               # 16-byte Reload
	movaps	1952(%rsp), %xmm2               # 16-byte Reload
	movaps	1968(%rsp), %xmm1               # 16-byte Reload
	movaps	1984(%rsp), %xmm0               # 16-byte Reload
	movaps	%xmm3, 2160(%rsp)               # 16-byte Spill
	movaps	%xmm2, 2176(%rsp)               # 16-byte Spill
	movaps	%xmm1, 2192(%rsp)               # 16-byte Spill
	movaps	%xmm0, 2208(%rsp)               # 16-byte Spill
.LBB18_45:                              # %middle.block383
	movq	2376(%rsp), %rdx                # 8-byte Reload
	movq	2416(%rsp), %rsi                # 8-byte Reload
	movq	2368(%rsp), %rdi                # 8-byte Reload
	movaps	2160(%rsp), %xmm3               # 16-byte Reload
	movaps	2176(%rsp), %xmm1               # 16-byte Reload
	movaps	2192(%rsp), %xmm5               # 16-byte Reload
	movaps	2208(%rsp), %xmm2               # 16-byte Reload
	movaps	%xmm2, %xmm4
	pcmpgtd	%xmm5, %xmm4
	movaps	%xmm4, %xmm0
	pandn	%xmm5, %xmm0
	pand	%xmm4, %xmm2
	por	%xmm0, %xmm2
	pshufd	$238, %xmm2, %xmm5              # xmm5 = xmm2[2,3,2,3]
	movaps	%xmm2, %xmm4
	pcmpgtd	%xmm5, %xmm4
	movaps	%xmm4, %xmm0
	pandn	%xmm5, %xmm0
	pand	%xmm4, %xmm2
	por	%xmm0, %xmm2
	pshufd	$85, %xmm2, %xmm0               # xmm0 = xmm2[1,1,1,1]
	movaps	%xmm2, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movd	%xmm4, %eax
	movb	%al, %r8b
	movd	%xmm2, %ecx
	movd	%xmm0, %eax
	testb	$1, %r8b
	cmovnel	%ecx, %eax
	movaps	%xmm3, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	pandn	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm3              # xmm3 = xmm1[2,3,2,3]
	movaps	%xmm3, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	pandn	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	movaps	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movd	%xmm2, %ecx
	movb	%cl, %r9b
	movd	%xmm1, %r8d
	movd	%xmm0, %ecx
	testb	$1, %r9b
	cmovnel	%r8d, %ecx
	cmpq	%rdi, %rsi
	movq	%rdx, 2424(%rsp)                # 8-byte Spill
	movl	%ecx, %edx
	movl	%edx, 2432(%rsp)                # 4-byte Spill
	movl	%eax, %edx
	movl	%edx, 2436(%rsp)                # 4-byte Spill
	movl	%ecx, 1496(%rsp)                # 4-byte Spill
	movl	%eax, 1500(%rsp)                # 4-byte Spill
	je	.LBB18_49
.LBB18_46:                              # %for.body.for.body_crit_edge.i.preheader432
	movq	2424(%rsp), %rdx                # 8-byte Reload
	movl	2432(%rsp), %ecx                # 4-byte Reload
	movl	2436(%rsp), %eax                # 4-byte Reload
	movq	%rdx, 1480(%rsp)                # 8-byte Spill
	movl	%ecx, 1488(%rsp)                # 4-byte Spill
	movl	%eax, 1492(%rsp)                # 4-byte Spill
.LBB18_47:                              # %for.body.for.body_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movl	1492(%rsp), %eax                # 4-byte Reload
	movl	1488(%rsp), %ecx                # 4-byte Reload
	movq	1480(%rsp), %rdx                # 8-byte Reload
	movl	2524(%rsp), %edi                # 4-byte Reload
	movq	2456(%rsp), %rsi                # 8-byte Reload
	movl	(%rsi,%rdx,4), %esi
	cmpl	%eax, %esi
	cmovgl	%esi, %eax
	movl	%eax, 1456(%rsp)                # 4-byte Spill
	cmpl	%ecx, %esi
	cmovll	%esi, %ecx
	movl	%ecx, 1460(%rsp)                # 4-byte Spill
	addq	$1, %rdx
	movq	%rdx, 1464(%rsp)                # 8-byte Spill
	movl	%edx, %esi
	cmpl	%edi, %esi
	movq	%rdx, 1480(%rsp)                # 8-byte Spill
	movl	%ecx, %edx
	movl	%edx, 1488(%rsp)                # 4-byte Spill
	movl	%eax, %edx
	movl	%edx, 1492(%rsp)                # 4-byte Spill
	movl	%ecx, 1472(%rsp)                # 4-byte Spill
	movl	%eax, 1476(%rsp)                # 4-byte Spill
	jne	.LBB18_47
# %bb.48:                               # %for.body15.i.preheader.loopexit
	movl	1472(%rsp), %ecx                # 4-byte Reload
	movl	1476(%rsp), %eax                # 4-byte Reload
	movl	%ecx, 1496(%rsp)                # 4-byte Spill
	movl	%eax, 1500(%rsp)                # 4-byte Spill
.LBB18_49:                              # %for.body15.i.preheader
	movl	2516(%rsp), %ecx                # 4-byte Reload
	movb	2443(%rsp), %sil                # 1-byte Reload
	movl	2444(%rsp), %eax                # 4-byte Reload
	movl	1496(%rsp), %edx                # 4-byte Reload
	movl	1500(%rsp), %edi                # 4-byte Reload
	movl	%edx, 1448(%rsp)                # 4-byte Spill
	subl	%edx, %edi
	movl	%edi, 1452(%rsp)                # 4-byte Spill
	subl	%edx, %eax
	imull	$255, %eax, %eax
	cltd
	idivl	%edi
	movl	2520(%rsp), %edx                # 4-byte Reload
	movl	%eax, %edi
	movq	2448(%rsp), %rax                # 8-byte Reload
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, (%rax)
	testb	$1, %sil
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jne	.LBB18_116
# %bb.50:                               # %for.body15.for.body15_crit_edge.i.preheader
	movl	2516(%rsp), %eax                # 4-byte Reload
	movl	2520(%rsp), %ecx                # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 1436(%rsp)                # 4-byte Spill
	andl	$1, %ecx
	movl	$1, %eax
	cmpl	$0, %ecx
	movq	%rax, 1440(%rsp)                # 8-byte Spill
	jne	.LBB18_52
# %bb.51:                               # %for.body15.for.body15_crit_edge.i.prol
	movl	1452(%rsp), %ecx                # 4-byte Reload
	movl	1448(%rsp), %edx                # 4-byte Reload
	movq	2536(%rsp), %rax                # 8-byte Reload
	movl	4(%rax), %eax
	subl	%edx, %eax
	imull	$255, %eax, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	2448(%rsp), %rax                # 8-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 1(%rax)
	movl	$2, %eax
	movq	%rax, 1440(%rsp)                # 8-byte Spill
.LBB18_52:                              # %for.body15.for.body15_crit_edge.i.preheader.split
	movl	1436(%rsp), %eax                # 4-byte Reload
	movq	1440(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 1424(%rsp)                # 8-byte Spill
	cmpl	$2, %eax
	je	.LBB18_112
# %bb.53:                               # %for.body15.for.body15_crit_edge.i.preheader.split.split
	movq	1424(%rsp), %rax                # 8-byte Reload
	movq	%rax, 1416(%rsp)                # 8-byte Spill
	jmp	.LBB18_54
.LBB18_54:                              # %for.body15.for.body15_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	1416(%rsp), %rdi                # 8-byte Reload
	movq	2448(%rsp), %rcx                # 8-byte Reload
	movl	1452(%rsp), %esi                # 4-byte Reload
	movl	1448(%rsp), %edx                # 4-byte Reload
	movq	2456(%rsp), %rax                # 8-byte Reload
	movq	%rdi, 1400(%rsp)                # 8-byte Spill
	movl	(%rax,%rdi,4), %eax
	subl	%edx, %eax
	movl	%eax, 1392(%rsp)                # 4-byte Spill
	imull	$255, %eax, %eax
	cltd
	idivl	%esi
	movl	1448(%rsp), %edx                # 4-byte Reload
	movl	%eax, %r8d
	movq	2456(%rsp), %rax                # 8-byte Reload
                                        # kill: def $r8b killed $r8b killed $r8d
	movb	%r8b, (%rcx,%rdi)
	movl	4(%rax,%rdi,4), %eax
	subl	%edx, %eax
	movl	%eax, 1396(%rsp)                # 4-byte Spill
	imull	$255, %eax, %eax
	cltd
	idivl	%esi
	movl	2524(%rsp), %edx                # 4-byte Reload
	movl	%eax, %esi
	movq	1400(%rsp), %rax                # 8-byte Reload
                                        # kill: def $sil killed $sil killed $esi
	movb	%sil, 1(%rcx,%rax)
	addq	$2, %rax
	movq	%rax, 1408(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 1416(%rsp)                # 8-byte Spill
	je	.LBB18_111
	jmp	.LBB18_54
.LBB18_55:                              # %if.else62
	movq	2528(%rsp), %rdi                # 8-byte Reload
	callq	malloc@PLT
	movq	2528(%rsp), %rdx                # 8-byte Reload
	movq	%rax, %rdi
	movq	%rdi, 1376(%rsp)                # 8-byte Spill
	movl	$100, %esi
	callq	memset@PLT
	movl	2680(%rsp), %eax                # 4-byte Reload
	movq	362920(%rsp), %rcx
	movq	%rcx, 1384(%rsp)                # 8-byte Spill
	cmpl	$0, %eax
	je	.LBB18_57
# %bb.56:                               # %if.then69
	movl	2520(%rsp), %eax                # 4-byte Reload
	movl	2516(%rsp), %r9d                # 4-byte Reload
	movq	2544(%rsp), %rcx                # 8-byte Reload
	movq	1376(%rsp), %rdx                # 8-byte Reload
	movq	2456(%rsp), %rsi                # 8-byte Reload
	movq	1384(%rsp), %rdi                # 8-byte Reload
                                        # implicit-def: $r8d
	movl	%eax, (%rsp)
	callq	susan_edges_small@PLT
	jmp	.LBB18_58
.LBB18_57:                              # %if.else71
	movl	2520(%rsp), %eax                # 4-byte Reload
	movl	2516(%rsp), %r9d                # 4-byte Reload
	movq	2544(%rsp), %rcx                # 8-byte Reload
	movq	1376(%rsp), %rdx                # 8-byte Reload
	movq	2456(%rsp), %rsi                # 8-byte Reload
	movq	1384(%rsp), %rdi                # 8-byte Reload
	movl	$2650, %r8d                     # imm = 0xA5A
	movl	%eax, (%rsp)
	callq	susan_edges@PLT
.LBB18_58:                              # %if.end73
	movl	2676(%rsp), %eax                # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB18_60
# %bb.59:                               # %if.then75
	movl	2520(%rsp), %ecx                # 4-byte Reload
	movl	2516(%rsp), %edx                # 4-byte Reload
	movq	1376(%rsp), %rsi                # 8-byte Reload
	movq	2456(%rsp), %rdi                # 8-byte Reload
	callq	susan_thin@PLT
.LBB18_60:                              # %if.end77
	movl	2684(%rsp), %eax                # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB18_64
# %bb.61:                               # %for.cond.preheader.i
	movq	1384(%rsp), %rax                # 8-byte Reload
	movl	2516(%rsp), %ecx                # 4-byte Reload
	movl	2520(%rsp), %edx                # 4-byte Reload
	movl	2524(%rsp), %esi                # 4-byte Reload
	cmpl	$0, %esi
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jle	.LBB18_116
# %bb.62:                               # %for.body.lr.ph.i
	movq	1376(%rsp), %rcx                # 8-byte Reload
	movl	2516(%rsp), %eax                # 4-byte Reload
	movslq	%eax, %rsi
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	subq	%rsi, %rdx
	movq	%rdx, 1344(%rsp)                # 8-byte Spill
	addl	$-2, %eax
	cltq
	movq	%rax, 1352(%rsp)                # 8-byte Spill
	xorl	%eax, %eax
	movq	%rcx, 1360(%rsp)                # 8-byte Spill
	movl	%eax, 1372(%rsp)                # 4-byte Spill
	jmp	.LBB18_71
.LBB18_63:                              # %for.cond19.preheader.i.loopexit
	jmp	.LBB18_64
.LBB18_64:                              # %for.cond19.preheader.i
	movq	1384(%rsp), %rax                # 8-byte Reload
	movl	2516(%rsp), %ecx                # 4-byte Reload
	movl	2520(%rsp), %edx                # 4-byte Reload
	movl	2524(%rsp), %esi                # 4-byte Reload
	cmpl	$0, %esi
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jle	.LBB18_116
# %bb.65:                               # %for.body23.lr.ph.i
	movq	1376(%rsp), %rcx                # 8-byte Reload
	movl	2516(%rsp), %eax                # 4-byte Reload
	movl	2520(%rsp), %edx                # 4-byte Reload
	imull	%eax, %edx
	movl	%edx, 1324(%rsp)                # 4-byte Spill
	andl	$1, %edx
	xorl	%eax, %eax
	cmpl	$0, %edx
	movq	%rcx, 1328(%rsp)                # 8-byte Spill
	movl	%eax, 1340(%rsp)                # 4-byte Spill
	je	.LBB18_69
# %bb.66:                               # %for.body23.i.prol
	movq	1376(%rsp), %rax                # 8-byte Reload
	cmpb	$8, (%rax)
	jae	.LBB18_68
# %bb.67:                               # %if.then27.i.prol
	movq	1384(%rsp), %rax                # 8-byte Reload
	movb	$0, (%rax)
.LBB18_68:                              # %if.end32.i.prol
	movq	1376(%rsp), %rcx                # 8-byte Reload
	addq	$1, %rcx
	movl	$1, %eax
	movq	%rcx, 1328(%rsp)                # 8-byte Spill
	movl	%eax, 1340(%rsp)                # 4-byte Spill
.LBB18_69:                              # %for.body23.lr.ph.i.split
	movl	1324(%rsp), %eax                # 4-byte Reload
	movq	1328(%rsp), %rcx                # 8-byte Reload
	movl	1340(%rsp), %edx                # 4-byte Reload
	movl	%edx, 1308(%rsp)                # 4-byte Spill
	movq	%rcx, 1312(%rsp)                # 8-byte Spill
	cmpl	$1, %eax
	je	.LBB18_110
# %bb.70:                               # %for.body23.lr.ph.i.split.split
	movl	1308(%rsp), %eax                # 4-byte Reload
	movq	1312(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 1296(%rsp)                # 8-byte Spill
	movl	%eax, 1304(%rsp)                # 4-byte Spill
	jmp	.LBB18_74
.LBB18_71:                              # %for.body.i189
                                        # =>This Inner Loop Header: Depth=1
	movq	1360(%rsp), %rax                # 8-byte Reload
	movl	1372(%rsp), %ecx                # 4-byte Reload
	movl	%ecx, 1284(%rsp)                # 4-byte Spill
	movq	%rax, 1288(%rsp)                # 8-byte Spill
	cmpb	$8, (%rax)
	jae	.LBB18_73
# %bb.72:                               # %if.then4.i
                                        #   in Loop: Header=BB18_71 Depth=1
	movq	1352(%rsp), %rcx                # 8-byte Reload
	movq	1344(%rsp), %rdi                # 8-byte Reload
	movq	1384(%rsp), %rsi                # 8-byte Reload
	movq	1376(%rsp), %rdx                # 8-byte Reload
	movq	1288(%rsp), %rax                # 8-byte Reload
	subq	%rdx, %rax
	addq	%rax, %rsi
	movq	%rsi, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	addq	$-1, %rax
	addq	$1, %rax
	movb	$-1, -1(%rsi,%rdi)
	addq	$1, %rax
	movb	$-1, (%rsi,%rdi)
	movb	$-1, 1(%rsi,%rdi)
	addq	%rcx, %rax
	movb	$-1, 1(%rdx,%rcx)
	movb	$-1, 3(%rdx,%rcx)
	movb	$-1, 2(%rax,%rcx)
	movb	$-1, 3(%rax,%rcx)
	movb	$-1, 4(%rax,%rcx)
.LBB18_73:                              # %if.end.i
                                        #   in Loop: Header=BB18_71 Depth=1
	movl	2524(%rsp), %edx                # 4-byte Reload
	movl	1284(%rsp), %eax                # 4-byte Reload
	movq	1288(%rsp), %rcx                # 8-byte Reload
	addq	$1, %rcx
	addl	$1, %eax
	cmpl	%edx, %eax
	movq	%rcx, 1360(%rsp)                # 8-byte Spill
	movl	%eax, 1372(%rsp)                # 4-byte Spill
	je	.LBB18_63
	jmp	.LBB18_71
.LBB18_74:                              # %for.body23.i
                                        # =>This Inner Loop Header: Depth=1
	movq	1296(%rsp), %rax                # 8-byte Reload
	movl	1304(%rsp), %ecx                # 4-byte Reload
	movl	%ecx, 1268(%rsp)                # 4-byte Spill
	movq	%rax, 1272(%rsp)                # 8-byte Spill
	cmpb	$8, (%rax)
	jae	.LBB18_76
# %bb.75:                               # %if.then27.i
                                        #   in Loop: Header=BB18_74 Depth=1
	movq	1384(%rsp), %rax                # 8-byte Reload
	movq	1376(%rsp), %rdx                # 8-byte Reload
	movq	1272(%rsp), %rcx                # 8-byte Reload
	subq	%rdx, %rcx
	movb	$0, (%rax,%rcx)
.LBB18_76:                              # %if.end32.i
                                        #   in Loop: Header=BB18_74 Depth=1
	movq	1272(%rsp), %rax                # 8-byte Reload
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 1256(%rsp)                # 8-byte Spill
	cmpb	$8, 1(%rax)
	jb	.LBB18_117
	jmp	.LBB18_118
.LBB18_77:                              # %sw.bb80
	movl	362916(%rsp), %ecx
	movl	%ecx, 1212(%rsp)                # 4-byte Spill
	movl	362912(%rsp), %eax
	movl	%eax, 1216(%rsp)                # 4-byte Spill
	imull	%ecx, %eax
	movl	%eax, 1220(%rsp)                # 4-byte Spill
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, 1224(%rsp)                # 8-byte Spill
	movl	$516, %edi                      # imm = 0x204
	callq	malloc@PLT
	movq	%rax, %rcx
	movl	2668(%rsp), %eax                # 4-byte Reload
	addq	$258, %rcx                      # imm = 0x102
	movq	%rcx, 1232(%rsp)                # 8-byte Spill
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, 1244(%rsp)               # 4-byte Spill
	movq	$-256, %rax
	movq	%rax, 1248(%rsp)                # 8-byte Spill
.LBB18_78:                              # %for.body.i210
                                        # =>This Inner Loop Header: Depth=1
	movq	1248(%rsp), %rax                # 8-byte Reload
	movss	1244(%rsp), %xmm1               # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, 1192(%rsp)                # 8-byte Spill
	cvtsi2ss	%eax, %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, 1156(%rsp)               # 4-byte Spill
	mulss	%xmm0, %xmm0
	movss	%xmm0, 1160(%rsp)               # 4-byte Spill
	movaps	%xmm0, %xmm1
	mulss	%xmm1, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, 1164(%rsp)               # 4-byte Spill
	movaps	.LCPI18_1(%rip), %xmm1          # xmm1 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	pxor	%xmm1, %xmm0
	movaps	%xmm0, 1168(%rsp)               # 16-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	exp@PLT
	movq	1232(%rsp), %rcx                # 8-byte Reload
	movq	1192(%rsp), %rax                # 8-byte Reload
	movsd	.LCPI18_2(%rip), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %edx
                                        # kill: def $dl killed $dl killed $edx
	movb	%dl, (%rcx,%rax)
	addq	$1, %rax
	movq	%rax, 1200(%rsp)                # 8-byte Spill
	cmpq	$257, %rax                      # imm = 0x101
	movq	%rax, 1248(%rsp)                # 8-byte Spill
	jne	.LBB18_78
# %bb.79:                               # %setup_brightness_lut.exit212
	movl	2672(%rsp), %eax                # 4-byte Reload
	movq	1224(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 1144(%rsp)                # 8-byte Spill
	cmpl	$0, %eax
	je	.LBB18_100
# %bb.80:                               # %if.then86
	movl	1212(%rsp), %r8d                # 4-byte Reload
	movl	1216(%rsp), %r9d                # 4-byte Reload
	movq	1144(%rsp), %rsi                # 8-byte Reload
	movq	1232(%rsp), %rdx                # 8-byte Reload
	movq	362920(%rsp), %rdi
	movq	%rdi, 1128(%rsp)                # 8-byte Spill
	movl	$1850, %ecx                     # imm = 0x73A
	callq	susan_principle@PLT
	movq	1144(%rsp), %rdi                # 8-byte Reload
	movl	1220(%rsp), %esi                # 4-byte Reload
	movl	1216(%rsp), %edx                # 4-byte Reload
	movl	1212(%rsp), %ecx                # 4-byte Reload
                                        # kill: def $r8d killed $eax
	movq	1128(%rsp), %rax                # 8-byte Reload
	movl	(%rdi), %edi
	movl	%edi, 1140(%rsp)                # 4-byte Spill
	cmpl	$0, %esi
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jle	.LBB18_116
# %bb.81:                               # %for.body.i224.preheader
	movq	1128(%rsp), %rax                # 8-byte Reload
	movl	1212(%rsp), %ecx                # 4-byte Reload
	movl	1216(%rsp), %edx                # 4-byte Reload
	movl	1220(%rsp), %esi                # 4-byte Reload
	cmpl	$1, %esi
	sete	%sil
	movb	%sil, 1127(%rsp)                # 1-byte Spill
	testb	$1, %sil
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jne	.LBB18_116
# %bb.82:                               # %for.body.for.body_crit_edge.i227.preheader
	movl	1140(%rsp), %eax                # 4-byte Reload
	movl	1212(%rsp), %edx                # 4-byte Reload
	movl	1216(%rsp), %ecx                # 4-byte Reload
	imull	%edx, %ecx
	addl	$-2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$1, %rdx
	movq	%rdx, 1096(%rsp)                # 8-byte Spill
	movl	$1, %ecx
	cmpq	$8, %rdx
	movq	%rcx, 1104(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 1116(%rsp)                # 4-byte Spill
	movl	%eax, 1120(%rsp)                # 4-byte Spill
	jb	.LBB18_91
# %bb.83:                               # %min.iters.checked
	movl	1140(%rsp), %eax                # 4-byte Reload
	movq	1096(%rsp), %rdx                # 8-byte Reload
	movabsq	$8589934584, %rcx               # imm = 0x1FFFFFFF8
	andq	%rcx, %rdx
	movq	%rdx, 1040(%rsp)                # 8-byte Spill
	movq	%rdx, %rcx
	orq	$1, %rcx
	movq	%rcx, 1048(%rsp)                # 8-byte Spill
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 1056(%rsp)               # 16-byte Spill
	movaps	%xmm0, 1072(%rsp)               # 16-byte Spill
	movl	$1, %ecx
	cmpq	$0, %rdx
	movq	%rcx, 1104(%rsp)                # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 1116(%rsp)                # 4-byte Spill
	movl	%eax, 1120(%rsp)                # 4-byte Spill
	je	.LBB18_91
# %bb.84:                               # %vector.body.preheader
	movaps	1072(%rsp), %xmm0               # 16-byte Reload
	movaps	1056(%rsp), %xmm1               # 16-byte Reload
	movl	1212(%rsp), %ecx                # 4-byte Reload
	movl	1216(%rsp), %eax                # 4-byte Reload
	imull	%ecx, %eax
	addl	$-2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	$1, %rcx
	movabsq	$8589934584, %rax               # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	addq	$-8, %rcx
	shrq	$3, %rcx
	movq	%rcx, 960(%rsp)                 # 8-byte Spill
	andq	$1, %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpq	$0, %rcx
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm2
	movq	%rax, 968(%rsp)                 # 8-byte Spill
	movaps	%xmm1, %xmm2
	movaps	%xmm2, 976(%rsp)                # 16-byte Spill
	movaps	%xmm1, 992(%rsp)                # 16-byte Spill
	movaps	%xmm0, %xmm1
	movaps	%xmm1, 1008(%rsp)               # 16-byte Spill
	movaps	%xmm0, 1024(%rsp)               # 16-byte Spill
	jne	.LBB18_86
# %bb.85:                               # %vector.body.prol
	movaps	1056(%rsp), %xmm6               # 16-byte Reload
	movaps	1072(%rsp), %xmm0               # 16-byte Reload
	movq	1224(%rsp), %rax                # 8-byte Reload
	movups	4(%rax), %xmm3
	movups	20(%rax), %xmm2
	movaps	%xmm3, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm0, %xmm4
	movaps	%xmm3, %xmm1
	pand	%xmm5, %xmm1
	por	%xmm4, %xmm1
	movaps	%xmm2, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	pand	%xmm5, %xmm0
	por	%xmm4, %xmm0
	movaps	%xmm6, %xmm5
	pcmpgtd	%xmm3, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm5, %xmm3
	por	%xmm4, %xmm3
	movaps	%xmm6, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movaps	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm5, %xmm2
	por	%xmm4, %xmm2
	movl	$8, %eax
	movaps	%xmm2, %xmm4
	movaps	%xmm4, 896(%rsp)                # 16-byte Spill
	movaps	%xmm3, %xmm4
	movaps	%xmm4, 912(%rsp)                # 16-byte Spill
	movaps	%xmm0, %xmm4
	movaps	%xmm4, 928(%rsp)                # 16-byte Spill
	movaps	%xmm1, %xmm4
	movaps	%xmm4, 944(%rsp)                # 16-byte Spill
	movq	%rax, 968(%rsp)                 # 8-byte Spill
	movaps	%xmm3, 976(%rsp)                # 16-byte Spill
	movaps	%xmm2, 992(%rsp)                # 16-byte Spill
	movaps	%xmm1, 1008(%rsp)               # 16-byte Spill
	movaps	%xmm0, 1024(%rsp)               # 16-byte Spill
.LBB18_86:                              # %vector.body.preheader.split
	movq	960(%rsp), %rax                 # 8-byte Reload
	movaps	896(%rsp), %xmm3                # 16-byte Reload
	movaps	912(%rsp), %xmm2                # 16-byte Reload
	movaps	928(%rsp), %xmm1                # 16-byte Reload
	movaps	944(%rsp), %xmm0                # 16-byte Reload
	movq	968(%rsp), %rcx                 # 8-byte Reload
	movaps	976(%rsp), %xmm4                # 16-byte Reload
	movaps	992(%rsp), %xmm5                # 16-byte Reload
	movaps	1008(%rsp), %xmm6               # 16-byte Reload
	movaps	1024(%rsp), %xmm7               # 16-byte Reload
	movaps	%xmm7, 752(%rsp)                # 16-byte Spill
	movaps	%xmm6, 768(%rsp)                # 16-byte Spill
	movaps	%xmm5, 784(%rsp)                # 16-byte Spill
	movaps	%xmm4, 800(%rsp)                # 16-byte Spill
	movq	%rcx, 824(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	movaps	%xmm3, 832(%rsp)                # 16-byte Spill
	movaps	%xmm2, 848(%rsp)                # 16-byte Spill
	movaps	%xmm1, 864(%rsp)                # 16-byte Spill
	movaps	%xmm0, 880(%rsp)                # 16-byte Spill
	je	.LBB18_90
# %bb.87:                               # %vector.body.preheader.split.split
	movaps	752(%rsp), %xmm0                # 16-byte Reload
	movaps	768(%rsp), %xmm1                # 16-byte Reload
	movaps	784(%rsp), %xmm2                # 16-byte Reload
	movaps	800(%rsp), %xmm3                # 16-byte Reload
	movq	824(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 680(%rsp)                 # 8-byte Spill
	movaps	%xmm3, 688(%rsp)                # 16-byte Spill
	movaps	%xmm2, 704(%rsp)                # 16-byte Spill
	movaps	%xmm1, 720(%rsp)                # 16-byte Spill
	movaps	%xmm0, 736(%rsp)                # 16-byte Spill
	jmp	.LBB18_88
.LBB18_88:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	736(%rsp), %xmm5                # 16-byte Reload
	movaps	720(%rsp), %xmm2                # 16-byte Reload
	movaps	704(%rsp), %xmm3                # 16-byte Reload
	movaps	688(%rsp), %xmm4                # 16-byte Reload
	movq	680(%rsp), %rax                 # 8-byte Reload
	movq	1040(%rsp), %rcx                # 8-byte Reload
	movq	1144(%rsp), %rdx                # 8-byte Reload
	movq	%rax, %rsi
	shlq	$2, %rsi
	movq	%rsi, 176(%rsp)                 # 8-byte Spill
	orq	$4, %rsi
	movq	%rsi, 184(%rsp)                 # 8-byte Spill
	movups	(%rdx,%rsi), %xmm7
	movups	16(%rdx,%rsi), %xmm6
	movaps	%xmm7, %xmm1
	pcmpgtd	%xmm2, %xmm1
	movaps	%xmm1, 192(%rsp)                # 16-byte Spill
	movaps	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	movaps	%xmm0, 208(%rsp)                # 16-byte Spill
	pandn	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)                # 16-byte Spill
	movaps	%xmm6, %xmm2
	pcmpgtd	%xmm5, %xmm2
	movaps	%xmm2, 240(%rsp)                # 16-byte Spill
	movaps	%xmm6, %xmm1
	pand	%xmm2, %xmm1
	movaps	%xmm1, 256(%rsp)                # 16-byte Spill
	pandn	%xmm5, %xmm2
	por	%xmm2, %xmm1
	movaps	%xmm1, 272(%rsp)                # 16-byte Spill
	movaps	%xmm4, %xmm2
	pcmpgtd	%xmm7, %xmm2
	movaps	%xmm2, 288(%rsp)                # 16-byte Spill
	pand	%xmm2, %xmm7
	movaps	%xmm7, 304(%rsp)                # 16-byte Spill
	pandn	%xmm4, %xmm2
	por	%xmm2, %xmm7
	movaps	%xmm7, 320(%rsp)                # 16-byte Spill
	movaps	%xmm3, %xmm2
	pcmpgtd	%xmm6, %xmm2
	movaps	%xmm2, 336(%rsp)                # 16-byte Spill
	pand	%xmm2, %xmm6
	movaps	%xmm6, 352(%rsp)                # 16-byte Spill
	pandn	%xmm3, %xmm2
	por	%xmm2, %xmm6
	movaps	%xmm6, 368(%rsp)                # 16-byte Spill
	leaq	32(,%rax,4), %rsi
	orq	$4, %rsi
	movq	%rsi, 392(%rsp)                 # 8-byte Spill
	movups	(%rdx,%rsi), %xmm2
	movups	16(%rdx,%rsi), %xmm3
	movaps	%xmm2, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movaps	%xmm5, 400(%rsp)                # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm0, %xmm4
	movaps	%xmm2, %xmm0
	pand	%xmm5, %xmm0
	movaps	%xmm0, 416(%rsp)                # 16-byte Spill
	por	%xmm4, %xmm0
	movaps	%xmm0, 432(%rsp)                # 16-byte Spill
	movaps	%xmm3, %xmm5
	pcmpgtd	%xmm1, %xmm5
	movaps	%xmm5, 448(%rsp)                # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm1, %xmm4
	movaps	%xmm3, %xmm1
	pand	%xmm5, %xmm1
	movaps	%xmm1, 464(%rsp)                # 16-byte Spill
	por	%xmm4, %xmm1
	movaps	%xmm1, 480(%rsp)                # 16-byte Spill
	movaps	%xmm7, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movaps	%xmm5, 496(%rsp)                # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm7, %xmm4
	pand	%xmm5, %xmm2
	movaps	%xmm2, 512(%rsp)                # 16-byte Spill
	por	%xmm4, %xmm2
	movaps	%xmm2, 528(%rsp)                # 16-byte Spill
	movaps	%xmm6, %xmm5
	pcmpgtd	%xmm3, %xmm5
	movaps	%xmm5, 544(%rsp)                # 16-byte Spill
	movaps	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm5, %xmm3
	movaps	%xmm3, 560(%rsp)                # 16-byte Spill
	por	%xmm4, %xmm3
	movaps	%xmm3, 576(%rsp)                # 16-byte Spill
	addq	$16, %rax
	movq	%rax, 600(%rsp)                 # 8-byte Spill
	cmpq	%rcx, %rax
	movq	%rax, 680(%rsp)                 # 8-byte Spill
	movaps	%xmm2, %xmm4
	movaps	%xmm4, 688(%rsp)                # 16-byte Spill
	movaps	%xmm3, %xmm4
	movaps	%xmm4, 704(%rsp)                # 16-byte Spill
	movaps	%xmm0, %xmm4
	movaps	%xmm4, 720(%rsp)                # 16-byte Spill
	movaps	%xmm1, %xmm4
	movaps	%xmm4, 736(%rsp)                # 16-byte Spill
	movaps	%xmm3, 608(%rsp)                # 16-byte Spill
	movaps	%xmm2, 624(%rsp)                # 16-byte Spill
	movaps	%xmm1, 640(%rsp)                # 16-byte Spill
	movaps	%xmm0, 656(%rsp)                # 16-byte Spill
	jne	.LBB18_88
# %bb.89:                               # %middle.block.unr-lcssa
	movaps	608(%rsp), %xmm3                # 16-byte Reload
	movaps	624(%rsp), %xmm2                # 16-byte Reload
	movaps	640(%rsp), %xmm1                # 16-byte Reload
	movaps	656(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm3, 832(%rsp)                # 16-byte Spill
	movaps	%xmm2, 848(%rsp)                # 16-byte Spill
	movaps	%xmm1, 864(%rsp)                # 16-byte Spill
	movaps	%xmm0, 880(%rsp)                # 16-byte Spill
.LBB18_90:                              # %middle.block
	movq	1048(%rsp), %rdx                # 8-byte Reload
	movq	1096(%rsp), %rsi                # 8-byte Reload
	movq	1040(%rsp), %rdi                # 8-byte Reload
	movaps	832(%rsp), %xmm3                # 16-byte Reload
	movaps	848(%rsp), %xmm1                # 16-byte Reload
	movaps	864(%rsp), %xmm5                # 16-byte Reload
	movaps	880(%rsp), %xmm2                # 16-byte Reload
	movaps	%xmm2, %xmm4
	pcmpgtd	%xmm5, %xmm4
	movaps	%xmm4, %xmm0
	pandn	%xmm5, %xmm0
	pand	%xmm4, %xmm2
	por	%xmm0, %xmm2
	pshufd	$238, %xmm2, %xmm5              # xmm5 = xmm2[2,3,2,3]
	movaps	%xmm2, %xmm4
	pcmpgtd	%xmm5, %xmm4
	movaps	%xmm4, %xmm0
	pandn	%xmm5, %xmm0
	pand	%xmm4, %xmm2
	por	%xmm0, %xmm2
	pshufd	$85, %xmm2, %xmm0               # xmm0 = xmm2[1,1,1,1]
	movaps	%xmm2, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movd	%xmm4, %eax
	movb	%al, %r8b
	movd	%xmm2, %ecx
	movd	%xmm0, %eax
	testb	$1, %r8b
	cmovnel	%ecx, %eax
	movaps	%xmm3, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	pandn	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm3              # xmm3 = xmm1[2,3,2,3]
	movaps	%xmm3, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	pandn	%xmm3, %xmm0
	pand	%xmm2, %xmm1
	por	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	movaps	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movd	%xmm2, %ecx
	movb	%cl, %r9b
	movd	%xmm1, %r8d
	movd	%xmm0, %ecx
	testb	$1, %r9b
	cmovnel	%r8d, %ecx
	cmpq	%rdi, %rsi
	movq	%rdx, 1104(%rsp)                # 8-byte Spill
	movl	%ecx, %edx
	movl	%edx, 1116(%rsp)                # 4-byte Spill
	movl	%eax, %edx
	movl	%edx, 1120(%rsp)                # 4-byte Spill
	movl	%ecx, 168(%rsp)                 # 4-byte Spill
	movl	%eax, 172(%rsp)                 # 4-byte Spill
	je	.LBB18_94
.LBB18_91:                              # %for.body.for.body_crit_edge.i227.preheader435
	movq	1104(%rsp), %rdx                # 8-byte Reload
	movl	1116(%rsp), %ecx                # 4-byte Reload
	movl	1120(%rsp), %eax                # 4-byte Reload
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movl	%ecx, 160(%rsp)                 # 4-byte Spill
	movl	%eax, 164(%rsp)                 # 4-byte Spill
.LBB18_92:                              # %for.body.for.body_crit_edge.i227
                                        # =>This Inner Loop Header: Depth=1
	movl	164(%rsp), %eax                 # 4-byte Reload
	movl	160(%rsp), %ecx                 # 4-byte Reload
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movl	1220(%rsp), %edi                # 4-byte Reload
	movq	1144(%rsp), %rsi                # 8-byte Reload
	movl	(%rsi,%rdx,4), %esi
	cmpl	%eax, %esi
	cmovgl	%esi, %eax
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	cmpl	%ecx, %esi
	cmovll	%esi, %ecx
	movl	%ecx, 132(%rsp)                 # 4-byte Spill
	addq	$1, %rdx
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	movl	%edx, %esi
	cmpl	%edi, %esi
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movl	%ecx, %edx
	movl	%edx, 160(%rsp)                 # 4-byte Spill
	movl	%eax, %edx
	movl	%edx, 164(%rsp)                 # 4-byte Spill
	movl	%ecx, 144(%rsp)                 # 4-byte Spill
	movl	%eax, 148(%rsp)                 # 4-byte Spill
	jne	.LBB18_92
# %bb.93:                               # %for.body15.i239.preheader.loopexit
	movl	144(%rsp), %ecx                 # 4-byte Reload
	movl	148(%rsp), %eax                 # 4-byte Reload
	movl	%ecx, 168(%rsp)                 # 4-byte Spill
	movl	%eax, 172(%rsp)                 # 4-byte Spill
.LBB18_94:                              # %for.body15.i239.preheader
	movl	1212(%rsp), %ecx                # 4-byte Reload
	movb	1127(%rsp), %sil                # 1-byte Reload
	movl	1140(%rsp), %eax                # 4-byte Reload
	movl	168(%rsp), %edx                 # 4-byte Reload
	movl	172(%rsp), %edi                 # 4-byte Reload
	movl	%edx, 120(%rsp)                 # 4-byte Spill
	subl	%edx, %edi
	movl	%edi, 124(%rsp)                 # 4-byte Spill
	subl	%edx, %eax
	imull	$255, %eax, %eax
	cltd
	idivl	%edi
	movl	1216(%rsp), %edx                # 4-byte Reload
	movl	%eax, %edi
	movq	1128(%rsp), %rax                # 8-byte Reload
                                        # kill: def $dil killed $dil killed $edi
	movb	%dil, (%rax)
	testb	$1, %sil
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jne	.LBB18_116
# %bb.95:                               # %for.body15.for.body15_crit_edge.i242.preheader
	movl	1212(%rsp), %eax                # 4-byte Reload
	movl	1216(%rsp), %ecx                # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 108(%rsp)                 # 4-byte Spill
	andl	$1, %ecx
	movl	$1, %eax
	cmpl	$0, %ecx
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jne	.LBB18_97
# %bb.96:                               # %for.body15.for.body15_crit_edge.i242.prol
	movl	124(%rsp), %ecx                 # 4-byte Reload
	movl	120(%rsp), %edx                 # 4-byte Reload
	movq	1224(%rsp), %rax                # 8-byte Reload
	movl	4(%rax), %eax
	subl	%edx, %eax
	imull	$255, %eax, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	1128(%rsp), %rax                # 8-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, 1(%rax)
	movl	$2, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
.LBB18_97:                              # %for.body15.for.body15_crit_edge.i242.preheader.split
	movl	108(%rsp), %eax                 # 4-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	cmpl	$2, %eax
	je	.LBB18_115
# %bb.98:                               # %for.body15.for.body15_crit_edge.i242.preheader.split.split
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB18_99
.LBB18_99:                              # %for.body15.for.body15_crit_edge.i242
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	1128(%rsp), %rcx                # 8-byte Reload
	movl	124(%rsp), %esi                 # 4-byte Reload
	movl	120(%rsp), %edx                 # 4-byte Reload
	movq	1144(%rsp), %rax                # 8-byte Reload
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	movl	(%rax,%rdi,4), %eax
	subl	%edx, %eax
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	imull	$255, %eax, %eax
	cltd
	idivl	%esi
	movl	120(%rsp), %edx                 # 4-byte Reload
	movl	%eax, %r8d
	movq	1144(%rsp), %rax                # 8-byte Reload
                                        # kill: def $r8b killed $r8b killed $r8d
	movb	%r8b, (%rcx,%rdi)
	movl	4(%rax,%rdi,4), %eax
	subl	%edx, %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	imull	$255, %eax, %eax
	cltd
	idivl	%esi
	movl	1220(%rsp), %edx                # 4-byte Reload
	movl	%eax, %esi
	movq	72(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $sil killed $sil killed $esi
	movb	%sil, 1(%rcx,%rax)
	addq	$2, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	je	.LBB18_114
	jmp	.LBB18_99
.LBB18_100:                             # %if.else90
	movl	2688(%rsp), %eax                # 4-byte Reload
	movq	362920(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	leaq	2912(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	cmpl	$0, %eax
	je	.LBB18_102
# %bb.101:                              # %if.then92
	movl	1216(%rsp), %eax                # 4-byte Reload
	movl	1212(%rsp), %r9d                # 4-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	1232(%rsp), %rdx                # 8-byte Reload
	movq	1144(%rsp), %rsi                # 8-byte Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	$1850, %ecx                     # imm = 0x73A
	movl	%eax, (%rsp)
	callq	susan_corners_quick@PLT
	jmp	.LBB18_103
.LBB18_102:                             # %if.else94
	movl	1216(%rsp), %eax                # 4-byte Reload
	movl	1212(%rsp), %r9d                # 4-byte Reload
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	1232(%rsp), %rdx                # 8-byte Reload
	movq	1144(%rsp), %rsi                # 8-byte Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	$1850, %ecx                     # imm = 0x73A
	movl	%eax, (%rsp)
	callq	susan_corners@PLT
.LBB18_103:                             # %if.end97
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	1212(%rsp), %ecx                # 4-byte Reload
	movl	1216(%rsp), %edx                # 4-byte Reload
	cmpl	$7, 2920(%rsp)
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	je	.LBB18_116
# %bb.104:                              # %while.body.lr.ph.i
	movl	1212(%rsp), %eax                # 4-byte Reload
	movl	2684(%rsp), %ecx                # 4-byte Reload
	cmpl	$0, %ecx
	sete	%cl
	movb	%cl, 31(%rsp)                   # 1-byte Spill
	addl	$-2, %eax
	cltq
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB18_105:                             # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	31(%rsp), %al                   # 1-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	leaq	2912(%rsp), %rcx
	imulq	$24, %rdx, %rsi
	addq	%rsi, %rcx
	addq	$4, %rcx
	movl	(%rcx), %ecx
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	leaq	2912(%rsp), %rcx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movl	(%rcx), %ecx
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	testb	$1, %al
	jne	.LBB18_106
	jmp	.LBB18_107
.LBB18_106:                             # %if.then.i
                                        #   in Loop: Header=BB18_105 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	24(%rsp), %eax                  # 4-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movl	1212(%rsp), %edi                # 4-byte Reload
	movl	20(%rsp), %edx                  # 4-byte Reload
	addl	$-1, %edx
	imull	%edi, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	movslq	%eax, %rdi
	movq	%rsi, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	addq	$-1, %rax
	addq	$1, %rax
	movb	$-1, -1(%rsi,%rdi)
	addq	$1, %rax
	movb	$-1, (%rsi,%rdi)
	movb	$-1, 1(%rsi,%rdi)
	addq	%rcx, %rax
	movb	$-1, 1(%rdx,%rcx)
	movb	$0, 2(%rdx,%rcx)
	movb	$-1, 3(%rdx,%rcx)
	movb	$-1, 2(%rax,%rcx)
	movb	$-1, 3(%rax,%rcx)
	movb	$-1, 4(%rax,%rcx)
	jmp	.LBB18_108
.LBB18_107:                             # %if.else.i
                                        #   in Loop: Header=BB18_105 Depth=1
	movl	24(%rsp), %ecx                  # 4-byte Reload
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	1212(%rsp), %esi                # 4-byte Reload
	movl	20(%rsp), %edx                  # 4-byte Reload
	imull	%esi, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	movslq	%ecx, %rcx
	movb	$0, (%rax,%rcx)
.LBB18_108:                             # %while.cond.backedge.i
                                        #   in Loop: Header=BB18_105 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$1, %rax
	leaq	2912(%rsp), %rcx
	imulq	$24, %rax, %rdx
	addq	%rdx, %rcx
	addq	$8, %rcx
	cmpl	$7, (%rcx)
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	je	.LBB18_113
	jmp	.LBB18_105
.LBB18_109:                             # %sw.epilog101.loopexit.unr-lcssa
	jmp	.LBB18_110
.LBB18_110:                             # %sw.epilog101.loopexit
	movq	1384(%rsp), %rax                # 8-byte Reload
	movl	2516(%rsp), %ecx                # 4-byte Reload
	movl	2520(%rsp), %edx                # 4-byte Reload
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jmp	.LBB18_116
.LBB18_111:                             # %sw.epilog101.loopexit431.unr-lcssa
	jmp	.LBB18_112
.LBB18_112:                             # %sw.epilog101.loopexit431
	movq	2448(%rsp), %rax                # 8-byte Reload
	movl	2516(%rsp), %ecx                # 4-byte Reload
	movl	2520(%rsp), %edx                # 4-byte Reload
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jmp	.LBB18_116
.LBB18_113:                             # %sw.epilog101.loopexit433
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	1212(%rsp), %ecx                # 4-byte Reload
	movl	1216(%rsp), %edx                # 4-byte Reload
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jmp	.LBB18_116
.LBB18_114:                             # %sw.epilog101.loopexit434.unr-lcssa
	jmp	.LBB18_115
.LBB18_115:                             # %sw.epilog101.loopexit434
	movq	1128(%rsp), %rax                # 8-byte Reload
	movl	1212(%rsp), %ecx                # 4-byte Reload
	movl	1216(%rsp), %edx                # 4-byte Reload
	movl	%edx, 2648(%rsp)                # 4-byte Spill
	movl	%ecx, 2652(%rsp)                # 4-byte Spill
	movq	%rax, 2656(%rsp)                # 8-byte Spill
	jmp	.LBB18_116
.LBB18_116:                             # %sw.epilog101
	movq	2904(%rsp), %rax                # 8-byte Reload
	movl	2648(%rsp), %ecx                # 4-byte Reload
	movl	2652(%rsp), %edx                # 4-byte Reload
	movq	2656(%rsp), %rsi                # 8-byte Reload
	movq	16(%rax), %rdi
	callq	put_image@PLT
	xorl	%eax, %eax
	addq	$362928, %rsp                   # imm = 0x589B0
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB18_117:                             # %if.then27.i.1
                                        #   in Loop: Header=BB18_74 Depth=1
	.cfi_def_cfa_offset 362944
	movq	1384(%rsp), %rax                # 8-byte Reload
	movq	1376(%rsp), %rdx                # 8-byte Reload
	movq	1256(%rsp), %rcx                # 8-byte Reload
	subq	%rdx, %rcx
	movb	$0, (%rax,%rcx)
.LBB18_118:                             # %if.end32.i.1
                                        #   in Loop: Header=BB18_74 Depth=1
	movl	2524(%rsp), %edx                # 4-byte Reload
	movl	1268(%rsp), %eax                # 4-byte Reload
	movq	1272(%rsp), %rcx                # 8-byte Reload
	addq	$2, %rcx
	addl	$2, %eax
	cmpl	%edx, %eax
	movq	%rcx, 1296(%rsp)                # 8-byte Spill
	movl	%eax, 1304(%rsp)                # 4-byte Spill
	je	.LBB18_109
	jmp	.LBB18_74
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_12
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_11
	.quad	.LBB18_8
	.quad	.LBB18_14
	.quad	.LBB18_7
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_10
	.quad	.LBB18_22
	.quad	.LBB18_9
	.quad	.LBB18_13
	.quad	.LBB18_22
	.quad	.LBB18_6
	.quad	.LBB18_18
                                        # -- End function
	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"Image %s not binary PGM.\n"
	.size	.L.str.13, 26

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"is"
	.size	.L.str.14, 3

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"r"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Can't input image %s.\n"
	.size	.L.str.16, 23

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Image %s does not have binary PGM header.\n"
	.size	.L.str.17, 43

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Image %s is wrong size.\n"
	.size	.L.str.18, 25

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"w"
	.size	.L.str.19, 2

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Can't output image%s.\n"
	.size	.L.str.20, 23

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"P5\n"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"%d %d\n"
	.size	.L.str.22, 7

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"255\n"
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Can't write image %s.\n"
	.size	.L.str.24, 23

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Distance_thresh (%f) too big for integer arithmetic.\n"
	.size	.L.str.25, 54

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\n"
	.size	.L.str.28, 65

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Too many corners.\n"
	.size	.L.str.29, 19

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"Usage: susan <in.pgm> <out.pgm> [options]\n"
	.size	.Lstr, 43

	.type	.Lstr.32,@object                # @str.32
	.p2align	4
.Lstr.32:
	.asciz	"-s : Smoothing mode (default)"
	.size	.Lstr.32, 30

	.type	.Lstr.33,@object                # @str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.33:
	.asciz	"-e : Edges mode"
	.size	.Lstr.33, 16

	.type	.Lstr.34,@object                # @str.34
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.34:
	.asciz	"-c : Corners mode\n"
	.size	.Lstr.34, 19

	.type	.Lstr.35,@object                # @str.35
	.p2align	4
.Lstr.35:
	.asciz	"See source code for more information about setting the thresholds"
	.size	.Lstr.35, 66

	.type	.Lstr.36,@object                # @str.36
	.p2align	4
.Lstr.36:
	.asciz	"-t <thresh> : Brightness threshold, all modes (default=20)"
	.size	.Lstr.36, 59

	.type	.Lstr.37,@object                # @str.37
	.p2align	4
.Lstr.37:
	.asciz	"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)"
	.size	.Lstr.37, 106

	.type	.Lstr.38,@object                # @str.38
	.p2align	4
.Lstr.38:
	.asciz	"-3 : Use flat 3x3 mask, edges or smoothing mode"
	.size	.Lstr.38, 48

	.type	.Lstr.39,@object                # @str.39
	.p2align	4
.Lstr.39:
	.asciz	"-n : No post-processing on the binary edge map (runs much faster); edges mode"
	.size	.Lstr.39, 78

	.type	.Lstr.40,@object                # @str.40
	.p2align	4
.Lstr.40:
	.asciz	"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode"
	.size	.Lstr.40, 110

	.type	.Lstr.41,@object                # @str.41
	.p2align	4
.Lstr.41:
	.asciz	"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode"
	.size	.Lstr.41, 107

	.type	.Lstr.42,@object                # @str.42
	.p2align	4
.Lstr.42:
	.asciz	"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)"
	.size	.Lstr.42, 90

	.type	.Lstr.43,@object                # @str.43
	.p2align	4
.Lstr.43:
	.asciz	"\nSUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk"
	.size	.Lstr.43, 76

	.type	.Lstr.44,@object                # @str.44
	.p2align	4
.Lstr.44:
	.asciz	"Either reduce it to <=15 or recompile with variable \"total\""
	.size	.Lstr.44, 60

	.type	.Lstr.45,@object                # @str.45
	.p2align	4
.Lstr.45:
	.asciz	"as a float: see top \"defines\" section."
	.size	.Lstr.45, 39

	.type	.Lstr.46,@object                # @str.46
	.p2align	4
.Lstr.46:
	.asciz	"No argument following -t"
	.size	.Lstr.46, 25

	.type	.Lstr.47,@object                # @str.47
	.p2align	4
.Lstr.47:
	.asciz	"No argument following -d"
	.size	.Lstr.47, 25

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usage
	.addrsig_sym printf
	.addrsig_sym exit
	.addrsig_sym getint
	.addrsig_sym _IO_getc
	.addrsig_sym fgets
	.addrsig_sym fprintf
	.addrsig_sym get_image
	.addrsig_sym fopen
	.addrsig_sym fgetc
	.addrsig_sym malloc
	.addrsig_sym fread
	.addrsig_sym fclose
	.addrsig_sym put_image
	.addrsig_sym fwrite
	.addrsig_sym exp
	.addrsig_sym susan_principle
	.addrsig_sym susan_principle_small
	.addrsig_sym median
	.addrsig_sym enlarge
	.addrsig_sym susan_smoothing
	.addrsig_sym susan_thin
	.addrsig_sym susan_edges
	.addrsig_sym susan_edges_small
	.addrsig_sym susan_corners
	.addrsig_sym free
	.addrsig_sym susan_corners_quick
	.addrsig_sym strtod
	.addrsig_sym strtol
	.addrsig_sym puts
	.addrsig_sym sqrtf
	.addrsig_sym stderr
