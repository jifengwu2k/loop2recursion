	.text
	.file	"bitcnts.ll"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function main
.LCPI0_0:
	.quad	0x7fefffffffffffff              # double 1.7976931348623157E+308
.LCPI0_1:
	.quad	0x412e848000000000              # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$312, %rsp                      # imm = 0x138
	.cfi_def_cfa_offset 320
	movq	%rsi, 304(%rsp)                 # 8-byte Spill
	cmpl	$2, %edi
	jge	.LBB0_2
# %bb.1:                                # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movabsq	$.L.str.7, %rdi
	movl	$28, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$4294967295, %edi               # imm = 0xFFFFFFFF
	callq	exit@PLT
.LBB0_2:                                # %if.end
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movabsq	$.L.str.8, %rdi
	callq	puts@PLT
                                        # kill: def $ecx killed $eax
	movq	240(%rsp), %rax                 # 8-byte Reload
	shlq	$32, %rax
	movq	%rax, %rcx
	sarq	$32, %rcx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	cmpq	$0, %rax
	setg	%al
	movb	%al, 263(%rsp)                  # 1-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movaps	%xmm1, 272(%rsp)                # 16-byte Spill
                                        # implicit-def: $eax
                                        # implicit-def: $eax
	movaps	%xmm0, 288(%rsp)                # 16-byte Spill
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	264(%rsp), %rax                 # 8-byte Reload
	movaps	272(%rsp), %xmm0                # 16-byte Reload
	movl	156(%rsp), %ecx                 # 4-byte Reload
	movl	152(%rsp), %edx                 # 4-byte Reload
	movaps	288(%rsp), %xmm1                # 16-byte Reload
	movaps	%xmm1, 160(%rsp)                # 16-byte Spill
	movl	%edx, 184(%rsp)                 # 4-byte Spill
	movl	%ecx, 188(%rsp)                 # 4-byte Spill
	movaps	%xmm0, 192(%rsp)                # 16-byte Spill
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	callq	clock@PLT
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	callq	rand@PLT
	movb	263(%rsp), %cl                  # 1-byte Reload
	movl	%eax, 228(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	testb	$1, %cl
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	jne	.LBB0_4
	jmp	.LBB0_7
.LBB0_4:                                # %for.body10.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	208(%rsp), %rax                 # 8-byte Reload
	movl	228(%rsp), %ecx                 # 4-byte Reload
	movslq	%ecx, %rcx
	movq	main.pBitCntFunc(,%rax,8), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movq	%rax, 144(%rsp)                 # 8-byte Spill
.LBB0_5:                                # %for.body10
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	128(%rsp), %rdi                 # 8-byte Reload
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	callq	*%rax
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movq	248(%rsp), %rsi                 # 8-byte Reload
	cltq
	addq	%rdi, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	addq	$1, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	addq	$13, %rdx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	cmpq	%rsi, %rcx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	movq	%rax, %rdx
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jl	.LBB0_5
# %bb.6:                                # %for.end.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 232(%rsp)                 # 8-byte Spill
.LBB0_7:                                # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	232(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	callq	clock@PLT
	movq	216(%rsp), %r8                  # 8-byte Reload
	movl	184(%rsp), %edi                 # 4-byte Reload
	movaps	192(%rsp), %xmm4                # 16-byte Reload
	movaps	160(%rsp), %xmm1                # 16-byte Reload
	movl	188(%rsp), %ecx                 # 4-byte Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rax, %rsi
	movq	208(%rsp), %rax                 # 8-byte Reload
	subq	%r8, %rsi
	cvtsi2sd	%rsi, %xmm0
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	movl	%eax, %esi
	ucomisd	%xmm0, %xmm4
	cmoval	%esi, %edi
	movl	%edi, 52(%rsp)                  # 4-byte Spill
	movaps	%xmm0, %xmm2
	cmpltsd	%xmm4, %xmm2
	movaps	%xmm2, %xmm3
	andpd	%xmm0, %xmm3
	andnpd	%xmm4, %xmm2
	orpd	%xmm3, %xmm2
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	movaps	%xmm1, %xmm2
	cmpltsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm3
	andpd	%xmm0, %xmm3
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movsd	%xmm2, 40(%rsp)                 # 8-byte Spill
	ucomisd	%xmm1, %xmm0
	cmoval	%esi, %ecx
	movl	%ecx, 48(%rsp)                  # 4-byte Spill
	movq	main.text(,%rax,8), %rsi
	movabsq	$.L.str.9, %rdi
	movb	$1, %al
	callq	printf@PLT
	movq	208(%rsp), %rdx                 # 8-byte Reload
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	48(%rsp), %ecx                  # 4-byte Reload
                                        # kill: def $esi killed $eax
	movl	52(%rsp), %eax                  # 4-byte Reload
	addq	$1, %rdx
	cmpq	$7, %rdx
	movq	%rdx, 264(%rsp)                 # 8-byte Spill
	movaps	%xmm1, 272(%rsp)                # 16-byte Spill
	movl	%ecx, %edx
	movl	%edx, 156(%rsp)                 # 4-byte Spill
	movl	%eax, %edx
	movl	%edx, 152(%rsp)                 # 4-byte Spill
	movaps	%xmm0, 288(%rsp)                # 16-byte Spill
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	jne	.LBB0_3
# %bb.8:                                # %for.end30
	movl	56(%rsp), %ecx                  # 4-byte Reload
	movl	60(%rsp), %eax                  # 4-byte Reload
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	cltq
	movq	main.text(,%rax,8), %rsi
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movl	4(%rsp), %eax                   # 4-byte Reload
	cltq
	movq	main.text(,%rax,8), %rsi
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$312, %rsp                      # imm = 0x138
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function bit_shifter
	.type	bit_shifter,@function
bit_shifter:                            # @bit_shifter
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	cmpq	$0, %rdi
	movl	%eax, -4(%rsp)                  # 4-byte Spill
	je	.LBB1_4
# %bb.1:                                # %for.body.preheader
	movq	-16(%rsp), %rax                 # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%edx, -32(%rsp)                 # 4-byte Spill
	movl	%ecx, -28(%rsp)                 # 4-byte Spill
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movl	-28(%rsp), %edx                 # 4-byte Reload
	movl	-32(%rsp), %eax                 # 4-byte Reload
	movl	%ecx, %esi
	andl	$1, %esi
	movl	%esi, -60(%rsp)                 # 4-byte Spill
	addl	%esi, %eax
	movl	%eax, -56(%rsp)                 # 4-byte Spill
	addl	$1, %edx
	movl	%edx, -52(%rsp)                 # 4-byte Spill
	sarq	$1, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	cmpq	$0, %rcx
	setne	%sil
	cmpl	$64, %edx
	setb	%dil
	andb	%dil, %sil
	movb	%sil, -37(%rsp)                 # 1-byte Spill
	testb	$1, %sil
	movl	%eax, %esi
	movl	%esi, -32(%rsp)                 # 4-byte Spill
	movl	%edx, -28(%rsp)                 # 4-byte Spill
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movl	%eax, -36(%rsp)                 # 4-byte Spill
	jne	.LBB1_2
# %bb.3:                                # %for.end.loopexit
	movl	-36(%rsp), %eax                 # 4-byte Reload
	movl	%eax, -4(%rsp)                  # 4-byte Spill
.LBB1_4:                                # %for.end
	movl	-4(%rsp), %eax                  # 4-byte Reload
	retq
.Lfunc_end1:
	.size	bit_shifter, .Lfunc_end1-bit_shifter
	.cfi_endproc
                                        # -- End function
	.type	main.pBitCntFunc,@object        # @main.pBitCntFunc
	.section	.rodata,"a",@progbits
	.p2align	4
main.pBitCntFunc:
	.quad	bit_count
	.quad	bitcount
	.quad	ntbl_bitcnt
	.quad	ntbl_bitcount
	.quad	BW_btbl_bitcount
	.quad	AR_btbl_bitcount
	.quad	bit_shifter
	.size	main.pBitCntFunc, 56

	.type	main.text,@object               # @main.text
	.p2align	4
main.text:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	main.text, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Optimized 1 bit/loop counter"
	.size	.L.str, 29

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Ratko's mystery algorithm"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Recursive bit count by nybbles"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Non-recursive bit count by nybbles"
	.size	.L.str.3, 35

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Non-recursive bit count by bytes (BW)"
	.size	.L.str.4, 38

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Non-recursive bit count by bytes (AR)"
	.size	.L.str.5, 38

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Shift and count bits"
	.size	.L.str.6, 21

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Usage: bitcnts <iterations>\n"
	.size	.L.str.7, 29

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Bit counter algorithm benchmark\n"
	.size	.L.str.8, 33

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%-38s> Time: %7.3f sec.; Bits: %ld\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\nBest  > %s\n"
	.size	.L.str.10, 13

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Worst > %s\n"
	.size	.L.str.11, 12

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bit_count
	.addrsig_sym bitcount
	.addrsig_sym ntbl_bitcnt
	.addrsig_sym ntbl_bitcount
	.addrsig_sym BW_btbl_bitcount
	.addrsig_sym AR_btbl_bitcount
	.addrsig_sym bit_shifter
	.addrsig_sym exit
	.addrsig_sym puts
	.addrsig_sym clock
	.addrsig_sym rand
	.addrsig_sym printf
	.addrsig_sym strtol
	.addrsig_sym fwrite
	.addrsig_sym stderr
