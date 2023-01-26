	.text
	.file	"adpcm.ll"
	.globl	adpcm_coder                     # -- Begin function adpcm_coder
	.p2align	4, 0x90
	.type	adpcm_coder,@function
adpcm_coder:                            # @adpcm_coder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rax
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movl	%edx, 92(%rsp)                  # 4-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movswl	(%rax), %ecx
	movl	%ecx, 108(%rsp)                 # 4-byte Spill
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	movb	2(%rax), %al
	movb	%al, 123(%rsp)                  # 1-byte Spill
	movsbl	%al, %eax
	movl	%eax, 124(%rsp)                 # 4-byte Spill
	cmpl	$0, %edx
	movl	%ecx, 128(%rsp)                 # 4-byte Spill
	movl	%eax, 132(%rsp)                 # 4-byte Spill
	jle	.LBB0_10
# %bb.1:                                # %for.body.preheader
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movl	92(%rsp), %edx                  # 4-byte Reload
	movl	108(%rsp), %edi                 # 4-byte Reload
	movl	124(%rsp), %r8d                 # 4-byte Reload
	movb	123(%rsp), %sil                 # 1-byte Reload
	movsbq	%sil, %rsi
	movl	stepsizeTable(,%rsi,4), %esi
	movl	$1, %r9d
	movl	%r9d, 36(%rsp)                  # 4-byte Spill
                                        # implicit-def: $r9d
	movl	%r8d, 40(%rsp)                  # 4-byte Spill
	movl	%edi, 44(%rsp)                  # 4-byte Spill
	movl	%esi, 48(%rsp)                  # 4-byte Spill
	movl	%edx, 52(%rsp)                  # 4-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 64(%rsp)                  # 8-byte Spill
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	36(%rsp), %edx                  # 4-byte Reload
	movl	-44(%rsp), %edi                 # 4-byte Reload
	movl	40(%rsp), %r8d                  # 4-byte Reload
	movl	44(%rsp), %eax                  # 4-byte Reload
	movl	48(%rsp), %esi                  # 4-byte Reload
	movl	52(%rsp), %r9d                  # 4-byte Reload
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %r10                  # 8-byte Reload
	movq	%r10, -40(%rsp)                 # 8-byte Spill
	movl	%r9d, -32(%rsp)                 # 4-byte Spill
	movl	%esi, -28(%rsp)                 # 4-byte Spill
	movl	%eax, -24(%rsp)                 # 4-byte Spill
	movl	%r8d, -20(%rsp)                 # 4-byte Spill
	movl	%edi, -16(%rsp)                 # 4-byte Spill
	movl	%edx, -12(%rsp)                 # 4-byte Spill
	movq	%rcx, %rdx
	addq	$2, %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movswl	(%rcx), %ecx
	subl	%eax, %ecx
	cmpl	$0, %ecx
	setl	%al
	movb	%al, 3(%rsp)                    # 1-byte Spill
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	$8, %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	xorl	%eax, %eax
	subl	%ecx, %eax
	cmpl	$0, %ecx
	cmovll	%eax, %ecx
	movl	%esi, %edi
	sarl	$3, %edi
	movl	$4, %edx
	xorl	%eax, %eax
	cmpl	%esi, %ecx
	cmovll	%eax, %edx
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	xorl	%r8d, %r8d
	cmpl	%esi, %ecx
	movl	%esi, %eax
	cmovll	%r8d, %eax
	subl	%eax, %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	addl	%edi, %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	sarl	$1, %esi
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	cmpl	%esi, %ecx
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	jl	.LBB0_4
# %bb.3:                                # %if.then16
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	16(%rsp), %eax                  # 4-byte Reload
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	8(%rsp), %edx                   # 4-byte Reload
	orl	$2, %edx
	subl	%esi, %ecx
	addl	%esi, %eax
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	movl	%eax, 32(%rsp)                  # 4-byte Spill
.LBB0_4:                                # %if.end19
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-12(%rsp), %eax                 # 4-byte Reload
	movl	-20(%rsp), %ecx                 # 4-byte Reload
	movl	4(%rsp), %edi                   # 4-byte Reload
	movl	-24(%rsp), %r8d                 # 4-byte Reload
	movb	3(%rsp), %r11b                  # 1-byte Reload
	movl	-28(%rsp), %r10d                # 4-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	28(%rsp), %ebp                  # 4-byte Reload
	movl	32(%rsp), %r9d                  # 4-byte Reload
	sarl	$2, %r10d
	cmpl	%r10d, %ebp
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	xorl	$1, %esi
	xorl	%ebx, %ebx
	cmpl	%r10d, %ebp
	cmovll	%ebx, %r10d
	addl	%r9d, %r10d
	xorl	%r9d, %r9d
	subl	%r10d, %r9d
	testb	$1, %r11b
	cmovnel	%r9d, %r10d
	addl	%r8d, %r10d
	movl	$4294934528, %r9d               # imm = 0xFFFF8000
	cmpl	$-32768, %r10d                  # imm = 0x8000
	movl	%r10d, %r8d
	cmovll	%r9d, %r8d
	movl	$32767, %r9d                    # imm = 0x7FFF
	cmpl	$32767, %r10d                   # imm = 0x7FFF
	cmovgl	%r9d, %r8d
	movl	%r8d, -64(%rsp)                 # 4-byte Spill
	orl	%edi, %edx
	orl	%esi, %edx
	movl	%edx, -60(%rsp)                 # 4-byte Spill
	movslq	%edx, %rdx
	addl	indexTable(,%rdx,4), %ecx
	xorl	%edx, %edx
	cmpl	$0, %ecx
	cmovll	%edx, %ecx
	movl	$88, %edx
	cmpl	$88, %ecx
	cmovgl	%edx, %ecx
	movl	%ecx, -56(%rsp)                 # 4-byte Spill
	movslq	%ecx, %rcx
	movl	stepsizeTable(,%rcx,4), %ecx
	movl	%ecx, -52(%rsp)                 # 4-byte Spill
	cmpl	$0, %eax
	setne	%al
	movb	%al, -45(%rsp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:                                # %if.then56
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movl	-60(%rsp), %eax                 # 4-byte Reload
	shll	$4, %eax
	andl	$240, %eax
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movl	%eax, -68(%rsp)                 # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:                                # %if.else57
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-16(%rsp), %eax                 # 4-byte Reload
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movl	-60(%rsp), %ecx                 # 4-byte Reload
	andl	$15, %ecx
	orl	%eax, %ecx
	movb	%cl, %sil
	movq	%rdx, %rcx
	addq	$1, %rcx
	movb	%sil, (%rdx)
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movl	%eax, -68(%rsp)                 # 4-byte Spill
.LBB0_7:                                # %if.end62
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-64(%rsp), %eax                 # 4-byte Reload
	movl	-56(%rsp), %ecx                 # 4-byte Reload
	movb	-45(%rsp), %dl                  # 1-byte Reload
	movq	-8(%rsp), %r8                   # 8-byte Reload
	movl	-52(%rsp), %r10d                # 4-byte Reload
	movl	-32(%rsp), %ebx                 # 4-byte Reload
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movl	-68(%rsp), %edi                 # 4-byte Reload
	movb	%dl, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r11d
	xorl	$1, %r11d
	movl	%ebx, %r9d
	addl	$-1, %r9d
	cmpl	$1, %ebx
	movl	%r11d, 36(%rsp)                 # 4-byte Spill
	movl	%edi, %r11d
	movl	%r11d, -44(%rsp)                # 4-byte Spill
	movl	%ecx, %r11d
	movl	%r11d, 40(%rsp)                 # 4-byte Spill
	movl	%eax, %r11d
	movl	%r11d, 44(%rsp)                 # 4-byte Spill
	movl	%r10d, 48(%rsp)                 # 4-byte Spill
	movl	%r9d, 52(%rsp)                  # 4-byte Spill
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rsi, %r8
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movl	%edi, -108(%rsp)                # 4-byte Spill
	movq	%rsi, -104(%rsp)                # 8-byte Spill
	movb	%dl, -89(%rsp)                  # 1-byte Spill
	movl	%ecx, -88(%rsp)                 # 4-byte Spill
	movl	%eax, -84(%rsp)                 # 4-byte Spill
	jg	.LBB0_2
# %bb.8:                                # %for.end
	movl	-108(%rsp), %esi                # 4-byte Reload
	movq	-104(%rsp), %rdi                # 8-byte Reload
	movb	-89(%rsp), %dl                  # 1-byte Reload
	movl	-88(%rsp), %eax                 # 4-byte Reload
	movl	-84(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, -128(%rsp)                # 4-byte Spill
	movl	%eax, -124(%rsp)                # 4-byte Spill
	movq	%rdi, -120(%rsp)                # 8-byte Spill
	movl	%esi, -112(%rsp)                # 4-byte Spill
	testb	$1, %dl
	movl	%ecx, 128(%rsp)                 # 4-byte Spill
	movl	%eax, 132(%rsp)                 # 4-byte Spill
	jne	.LBB0_9
	jmp	.LBB0_10
.LBB0_9:                                # %if.then65
	movl	-124(%rsp), %eax                # 4-byte Reload
	movl	-128(%rsp), %ecx                # 4-byte Reload
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movl	-112(%rsp), %esi                # 4-byte Reload
	movb	%sil, (%rdx)
	movl	%ecx, 128(%rsp)                 # 4-byte Spill
	movl	%eax, 132(%rsp)                 # 4-byte Spill
.LBB0_10:                               # %if.end68
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movl	128(%rsp), %esi                 # 4-byte Reload
	movl	132(%rsp), %ecx                 # 4-byte Reload
                                        # kill: def $si killed $si killed $esi
	movw	%si, (%rdx)
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	addq	$136, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	adpcm_coder, .Lfunc_end0-adpcm_coder
	.cfi_endproc
                                        # -- End function
	.globl	adpcm_decoder                   # -- Begin function adpcm_decoder
	.p2align	4, 0x90
	.type	adpcm_decoder,@function
adpcm_decoder:                          # @adpcm_decoder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movswl	(%rcx), %eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movq	%rcx, %rsi
	addq	$2, %rsi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movb	2(%rcx), %cl
	movb	%cl, 35(%rsp)                   # 1-byte Spill
	movsbl	%cl, %ecx
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	cmpl	$0, %edx
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	jle	.LBB1_6
# %bb.1:                                # %for.body.preheader
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movl	4(%rsp), %edx                   # 4-byte Reload
	movl	20(%rsp), %edi                  # 4-byte Reload
	movl	36(%rsp), %r8d                  # 4-byte Reload
	movb	35(%rsp), %sil                  # 1-byte Reload
	movsbq	%sil, %rsi
	movl	stepsizeTable(,%rsi,4), %esi
	xorl	%r9d, %r9d
	movl	%r9d, -52(%rsp)                 # 4-byte Spill
                                        # implicit-def: $r9d
	movl	%r8d, -48(%rsp)                 # 4-byte Spill
	movl	%edi, -44(%rsp)                 # 4-byte Spill
	movl	%esi, -40(%rsp)                 # 4-byte Spill
	movl	%edx, -36(%rsp)                 # 4-byte Spill
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, -24(%rsp)                 # 8-byte Spill
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rsp), %edx                 # 4-byte Reload
	movl	-116(%rsp), %eax                # 4-byte Reload
	movl	-48(%rsp), %esi                 # 4-byte Reload
	movl	-44(%rsp), %edi                 # 4-byte Reload
	movl	-40(%rsp), %r8d                 # 4-byte Reload
	movl	-36(%rsp), %r9d                 # 4-byte Reload
	movq	-32(%rsp), %r10                 # 8-byte Reload
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, -112(%rsp)                # 8-byte Spill
	movq	%r10, -104(%rsp)                # 8-byte Spill
	movl	%r9d, -92(%rsp)                 # 4-byte Spill
	movl	%r8d, -88(%rsp)                 # 4-byte Spill
	movl	%edi, -84(%rsp)                 # 4-byte Spill
	movl	%esi, -80(%rsp)                 # 4-byte Spill
	cmpl	$0, %edx
	setne	%dl
	movb	%dl, -73(%rsp)                  # 1-byte Spill
	testb	$1, %dl
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, -60(%rsp)                 # 4-byte Spill
	movl	%eax, -56(%rsp)                 # 4-byte Spill
	jne	.LBB1_4
# %bb.3:                                # %if.else
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rsp), %rax                # 8-byte Reload
	movq	%rax, %rdx
	addq	$1, %rdx
	movsbl	(%rax), %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movl	%ecx, -60(%rsp)                 # 4-byte Spill
	movl	%eax, -56(%rsp)                 # 4-byte Spill
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-92(%rsp), %r11d                # 4-byte Reload
	movq	-104(%rsp), %rdi                # 8-byte Reload
	movl	-84(%rsp), %ecx                 # 4-byte Reload
	movl	-88(%rsp), %r8d                 # 4-byte Reload
	movl	-80(%rsp), %eax                 # 4-byte Reload
	movb	-73(%rsp), %r10b                # 1-byte Reload
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movl	-60(%rsp), %r14d                # 4-byte Reload
	movl	-56(%rsp), %r9d                 # 4-byte Reload
	movl	%r14d, %esi
	andl	$15, %esi
	andb	$1, %r10b
	movzbl	%r10b, %r10d
	xorl	$1, %r10d
	movl	%esi, %esi
                                        # kill: def $rsi killed $esi
	addl	indexTable(,%rsi,4), %eax
	xorl	%esi, %esi
	cmpl	$0, %eax
	cmovll	%esi, %eax
	movl	$88, %esi
	cmpl	$88, %eax
	cmovgl	%esi, %eax
	movl	%r14d, %ebx
	andl	$8, %ebx
	movl	%r8d, %ebp
	sarl	$3, %ebp
	movl	%r14d, %esi
	andl	$4, %esi
	xorl	%r15d, %r15d
	cmpl	$0, %esi
	movl	%r8d, %esi
	cmovel	%r15d, %esi
	addl	%ebp, %esi
	movl	%r14d, %r12d
	andl	$2, %r12d
	movl	%r8d, %ebp
	sarl	$1, %ebp
	xorl	%r15d, %r15d
	cmpl	$0, %r12d
	cmovel	%r15d, %ebp
	addl	%ebp, %esi
	andl	$1, %r14d
	sarl	$2, %r8d
	xorl	%ebp, %ebp
	cmpl	$0, %r14d
	cmovel	%ebp, %r8d
	addl	%r8d, %esi
	xorl	%r8d, %r8d
	subl	%esi, %r8d
	cmpl	$0, %ebx
	cmovel	%esi, %r8d
	addl	%ecx, %r8d
	movl	$4294934528, %esi               # imm = 0xFFFF8000
	cmpl	$-32768, %r8d                   # imm = 0x8000
	movl	%r8d, %ecx
	cmovll	%esi, %ecx
	movl	$32767, %esi                    # imm = 0x7FFF
	cmpl	$32767, %r8d                    # imm = 0x7FFF
	cmovgl	%esi, %ecx
	movslq	%eax, %rsi
	movl	stepsizeTable(,%rsi,4), %r8d
	movw	%cx, %bx
	movq	%rdi, %rsi
	addq	$2, %rsi
	movw	%bx, (%rdi)
	movl	%r11d, %edi
	addl	$-1, %edi
	cmpl	$1, %r11d
	movl	%r10d, -52(%rsp)                # 4-byte Spill
	movl	%r9d, -116(%rsp)                # 4-byte Spill
	movl	%eax, %r9d
	movl	%r9d, -48(%rsp)                 # 4-byte Spill
	movl	%ecx, %r9d
	movl	%r9d, -44(%rsp)                 # 4-byte Spill
	movl	%r8d, -40(%rsp)                 # 4-byte Spill
	movl	%edi, -36(%rsp)                 # 4-byte Spill
	movq	%rsi, -32(%rsp)                 # 8-byte Spill
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movl	%ecx, -124(%rsp)                # 4-byte Spill
	movl	%eax, -120(%rsp)                # 4-byte Spill
	jg	.LBB1_2
# %bb.5:                                # %for.end.loopexit
	movl	-124(%rsp), %eax                # 4-byte Reload
	movl	-120(%rsp), %ecx                # 4-byte Reload
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
	movl	%eax, 44(%rsp)                  # 4-byte Spill
.LBB1_6:                                # %for.end
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	40(%rsp), %ecx                  # 4-byte Reload
	movl	44(%rsp), %esi                  # 4-byte Reload
                                        # kill: def $si killed $si killed $esi
	movw	%si, (%rdx)
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	addq	$48, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	adpcm_decoder, .Lfunc_end1-adpcm_decoder
	.cfi_endproc
                                        # -- End function
	.type	stepsizeTable,@object           # @stepsizeTable
	.section	.rodata,"a",@progbits
	.p2align	4
stepsizeTable:
	.long	7                               # 0x7
	.long	8                               # 0x8
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	14                              # 0xe
	.long	16                              # 0x10
	.long	17                              # 0x11
	.long	19                              # 0x13
	.long	21                              # 0x15
	.long	23                              # 0x17
	.long	25                              # 0x19
	.long	28                              # 0x1c
	.long	31                              # 0x1f
	.long	34                              # 0x22
	.long	37                              # 0x25
	.long	41                              # 0x29
	.long	45                              # 0x2d
	.long	50                              # 0x32
	.long	55                              # 0x37
	.long	60                              # 0x3c
	.long	66                              # 0x42
	.long	73                              # 0x49
	.long	80                              # 0x50
	.long	88                              # 0x58
	.long	97                              # 0x61
	.long	107                             # 0x6b
	.long	118                             # 0x76
	.long	130                             # 0x82
	.long	143                             # 0x8f
	.long	157                             # 0x9d
	.long	173                             # 0xad
	.long	190                             # 0xbe
	.long	209                             # 0xd1
	.long	230                             # 0xe6
	.long	253                             # 0xfd
	.long	279                             # 0x117
	.long	307                             # 0x133
	.long	337                             # 0x151
	.long	371                             # 0x173
	.long	408                             # 0x198
	.long	449                             # 0x1c1
	.long	494                             # 0x1ee
	.long	544                             # 0x220
	.long	598                             # 0x256
	.long	658                             # 0x292
	.long	724                             # 0x2d4
	.long	796                             # 0x31c
	.long	876                             # 0x36c
	.long	963                             # 0x3c3
	.long	1060                            # 0x424
	.long	1166                            # 0x48e
	.long	1282                            # 0x502
	.long	1411                            # 0x583
	.long	1552                            # 0x610
	.long	1707                            # 0x6ab
	.long	1878                            # 0x756
	.long	2066                            # 0x812
	.long	2272                            # 0x8e0
	.long	2499                            # 0x9c3
	.long	2749                            # 0xabd
	.long	3024                            # 0xbd0
	.long	3327                            # 0xcff
	.long	3660                            # 0xe4c
	.long	4026                            # 0xfba
	.long	4428                            # 0x114c
	.long	4871                            # 0x1307
	.long	5358                            # 0x14ee
	.long	5894                            # 0x1706
	.long	6484                            # 0x1954
	.long	7132                            # 0x1bdc
	.long	7845                            # 0x1ea5
	.long	8630                            # 0x21b6
	.long	9493                            # 0x2515
	.long	10442                           # 0x28ca
	.long	11487                           # 0x2cdf
	.long	12635                           # 0x315b
	.long	13899                           # 0x364b
	.long	15289                           # 0x3bb9
	.long	16818                           # 0x41b2
	.long	18500                           # 0x4844
	.long	20350                           # 0x4f7e
	.long	22385                           # 0x5771
	.long	24623                           # 0x602f
	.long	27086                           # 0x69ce
	.long	29794                           # 0x7462
	.long	32767                           # 0x7fff
	.size	stepsizeTable, 356

	.type	indexTable,@object              # @indexTable
	.p2align	4
indexTable:
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	2                               # 0x2
	.long	4                               # 0x4
	.long	6                               # 0x6
	.long	8                               # 0x8
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	4294967295                      # 0xffffffff
	.long	2                               # 0x2
	.long	4                               # 0x4
	.long	6                               # 0x6
	.long	8                               # 0x8
	.size	indexTable, 64

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
