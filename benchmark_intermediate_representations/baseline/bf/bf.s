	.text
	.file	"bf.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$8712, %rsp                     # imm = 0x2208
	.cfi_def_cfa_offset 8720
	movq	%rsi, 216(%rsp)                 # 8-byte Spill
	leaq	368(%rsp), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	leaq	320(%rsp), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	leaq	272(%rsp), %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	leaq	264(%rsp), %rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	cmpl	$3, %edi
	jge	.LBB0_2
# %bb.1:                                # %if.then
	movabsq	$.Lstr.9, %rdi
	callq	puts@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB0_2:                                # %if.end
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movb	(%rax), %al
	movl	$1, %ecx
	movl	%ecx, 204(%rsp)                 # 4-byte Spill
	addb	$-68, %al
	movzbl	%al, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	subb	$33, %al
	ja	.LBB0_4
# %bb.34:                               # %if.end
	movl	204(%rsp), %ecx                 # 4-byte Reload
	movq	208(%rsp), %rax                 # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rax
	movl	%ecx, 200(%rsp)                 # 4-byte Spill
	jmpq	*%rax
.LBB0_3:                                # %if.then17
	xorl	%eax, %eax
	movl	%eax, 200(%rsp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %if.else18
	movabsq	$.Lstr.9, %rdi
	callq	puts@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB0_5:                                # %if.end21
	movq	216(%rsp), %rax                 # 8-byte Reload
	movl	200(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, 180(%rsp)                 # 4-byte Spill
	movq	32(%rax), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%edx, 184(%rsp)                 # 4-byte Spill
	movl	%ecx, 188(%rsp)                 # 4-byte Spill
	movq	%rax, 192(%rsp)                 # 8-byte Spill
.LBB0_6:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movl	184(%rsp), %ecx                 # 4-byte Reload
	movl	188(%rsp), %edx                 # 4-byte Reload
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movl	%edx, 156(%rsp)                 # 4-byte Spill
	movl	%ecx, 160(%rsp)                 # 4-byte Spill
	movb	(%rax), %cl
	movb	%cl, 167(%rsp)                  # 1-byte Spill
	cmpb	$0, %cl
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	je	.LBB0_15
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	144(%rsp), %rax                 # 8-byte Reload
	movb	167(%rsp), %cl                  # 1-byte Reload
	movsbl	%cl, %edi
	addq	$1, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movb	$0, %al
	callq	toupper@PLT
	shll	$24, %eax
	movl	%eax, 136(%rsp)                 # 4-byte Spill
	movl	%eax, %ecx
	sarl	$24, %ecx
	movl	%ecx, 140(%rsp)                 # 4-byte Spill
	addl	$-788529153, %eax               # imm = 0xD0FFFFFF
	cmpl	$184549375, %eax                # imm = 0xAFFFFFF
	jae	.LBB0_9
# %bb.8:                                # %if.then35
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	160(%rsp), %eax                 # 4-byte Reload
	shll	$4, %eax
	addl	$-48, %eax
	movl	%eax, 124(%rsp)                 # 4-byte Spill
	jmp	.LBB0_12
.LBB0_9:                                # %if.else37
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	136(%rsp), %eax                 # 4-byte Reload
	addl	$-1073741825, %eax              # imm = 0xBFFFFFFF
	cmpl	$117440511, %eax                # imm = 0x6FFFFFF
	jae	.LBB0_11
# %bb.10:                               # %if.then45
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	160(%rsp), %eax                 # 4-byte Reload
	shll	$4, %eax
	addl	$-55, %eax
	movl	%eax, 124(%rsp)                 # 4-byte Spill
	jmp	.LBB0_12
.LBB0_11:                               # %if.else51
	movabsq	$.Lstr.8, %rdi
	callq	puts@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB0_12:                               # %if.end54
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	156(%rsp), %eax                 # 4-byte Reload
	movl	140(%rsp), %edx                 # 4-byte Reload
	movl	124(%rsp), %ecx                 # 4-byte Reload
	addl	%edx, %ecx
	movl	%ecx, 116(%rsp)                 # 4-byte Spill
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 120(%rsp)                 # 4-byte Spill
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_14
# %bb.13:                               # %if.then56
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	120(%rsp), %eax                 # 4-byte Reload
	movl	116(%rsp), %ecx                 # 4-byte Reload
	movl	$2, %esi
	cltd
	idivl	%esi
	addl	$-1, %eax
	cltq
	movb	%cl, 368(%rsp,%rax)
.LBB0_14:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	128(%rsp), %rax                 # 8-byte Reload
	movl	120(%rsp), %ecx                 # 4-byte Reload
	movl	116(%rsp), %edx                 # 4-byte Reload
	cmpl	$64, %ecx
	movl	%edx, 184(%rsp)                 # 4-byte Spill
	movl	%ecx, 188(%rsp)                 # 4-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	jl	.LBB0_6
.LBB0_15:                               # %while.end
	movq	224(%rsp), %rdx                 # 8-byte Reload
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	376(%rsp), %rdi
	movl	$8, %esi
	callq	BF_set_key@PLT
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmpb	$0, (%rax)
	je	.LBB0_17
# %bb.16:                               # %if.then63
	movabsq	$.Lstr.7, %rdi
	callq	puts@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB0_17:                               # %if.end65
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rdi
	movabsq	$.L.str.3, %rsi
	callq	fopen@PLT
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	jne	.LBB0_19
# %bb.18:                               # %if.then70
	movabsq	$.Lstr.9, %rdi
	callq	puts@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB0_19:                               # %if.end72
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	24(%rax), %rdi
	movabsq	$.L.str.4, %rsi
	callq	fopen@PLT
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_22
# %bb.20:                               # %while.cond80.preheader
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	feof@PLT
	cmpl	$0, %eax
	jne	.LBB0_33
# %bb.21:                               # %while.cond84.preheader.preheader
	jmp	.LBB0_25
.LBB0_22:                               # %if.then77
	movabsq	$.Lstr.9, %rdi
	callq	puts@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB0_23:                               # %while.cond80.loopexit.loopexit
                                        #   in Loop: Header=BB0_25 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               # %while.cond80.loopexit
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	feof@PLT
	cmpl	$0, %eax
	jne	.LBB0_32
.LBB0_25:                               # %while.cond84.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_31 Depth 2
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	feof@PLT
	cmpl	$0, %eax
	jne	.LBB0_27
# %bb.26:                               # %while.body91.preheader
                                        #   in Loop: Header=BB0_25 Depth=1
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB0_28
.LBB0_27:                               # %while.end97.thread
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	180(%rsp), %eax                 # 4-byte Reload
	movq	248(%rsp), %r8                  # 8-byte Reload
	movq	240(%rsp), %rsi                 # 8-byte Reload
	movq	232(%rsp), %rdi                 # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	376(%rsp), %rcx
	leaq	260(%rsp), %r9
	movl	%eax, (%rsp)
	callq	BF_cfb64_encrypt@PLT
	jmp	.LBB0_24
.LBB0_28:                               # %while.body91
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	callq	_IO_getc@PLT
	movq	96(%rsp), %rdi                  # 8-byte Reload
	movl	%eax, %ecx
	movq	48(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movb	%cl, 320(%rsp,%rax)
	callq	feof@PLT
	movl	%eax, %edx
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpq	$40, %rax
	setl	%cl
	cmpl	$0, %edx
	sete	%dl
	andb	%dl, %cl
	movb	%cl, 71(%rsp)                   # 1-byte Spill
	testb	$1, %cl
	movq	%rax, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jne	.LBB0_28
# %bb.29:                               # %while.end97
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	180(%rsp), %eax                 # 4-byte Reload
	movq	248(%rsp), %r8                  # 8-byte Reload
	movq	240(%rsp), %rsi                 # 8-byte Reload
	movq	232(%rsp), %rdi                 # 8-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movl	%edx, %ecx
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	shlq	$32, %rdx
	sarq	$32, %rdx
	leaq	376(%rsp), %rcx
	leaq	260(%rsp), %r9
	movl	%eax, (%rsp)
	callq	BF_cfb64_encrypt@PLT
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$0, %eax
	jle	.LBB0_24
# %bb.30:                               # %for.body.preheader
                                        #   in Loop: Header=BB0_25 Depth=1
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_31
.LBB0_31:                               # %for.body
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movzbl	272(%rsp,%rax), %edi
	callq	fputc@PLT
	movl	44(%rsp), %edx                  # 4-byte Reload
                                        # kill: def $ecx killed $eax
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	je	.LBB0_23
	jmp	.LBB0_31
.LBB0_32:                               # %while.end109.loopexit
	jmp	.LBB0_33
.LBB0_33:                               # %while.end109
	movq	96(%rsp), %rdi                  # 8-byte Reload
	movb	$0, %al
	callq	close@PLT
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movb	$0, %al
	callq	close@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_3
	.quad	.LBB0_5
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_3
	.quad	.LBB0_5
                                        # -- End function
	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"w"
	.size	.L.str.4, 2

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"Bad key value."
	.size	.Lstr.7, 15

	.type	.Lstr.8,@object                 # @str.8
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.8:
	.asciz	"key must be in hexadecimal notation"
	.size	.Lstr.8, 36

	.type	.Lstr.9,@object                 # @str.9
	.p2align	4
.Lstr.9:
	.asciz	"Usage: blowfish {e|d} <intput> <output> key"
	.size	.Lstr.9, 44

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exit
	.addrsig_sym toupper
	.addrsig_sym BF_set_key
	.addrsig_sym fopen
	.addrsig_sym feof
	.addrsig_sym _IO_getc
	.addrsig_sym BF_cfb64_encrypt
	.addrsig_sym fputc
	.addrsig_sym close
	.addrsig_sym puts
