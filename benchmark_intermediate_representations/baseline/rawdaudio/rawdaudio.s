	.text
	.file	"rawdaudio.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
	movq	abuf@GOTPCREL(%rip), %rsi
	movl	$500, %edx                      # imm = 0x1F4
	movb	$0, %al
	callq	read@PLT
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	cmpl	$0, %eax
	jl	.LBB0_3
# %bb.1:                                # %if.end.preheader
	movl	20(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	jmp	.LBB0_4
.LBB0_2:                                # %if.then.loopexit
	jmp	.LBB0_3
.LBB0_3:                                # %if.then
	movabsq	$.L.str, %rdi
	callq	perror@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_4:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movl	16(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:                                # %if.end3
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	12(%rsp), %edx                  # 4-byte Reload
	shll	$1, %edx
	movq	abuf@GOTPCREL(%rip), %rdi
	movq	sbuf@GOTPCREL(%rip), %rsi
	movq	state@GOTPCREL(%rip), %rcx
	callq	adpcm_decoder@PLT
	movl	12(%rsp), %edx                  # 4-byte Reload
	shll	$2, %edx
	movl	$1, %edi
	movq	sbuf@GOTPCREL(%rip), %rsi
	movb	$0, %al
	callq	write@PLT
	xorl	%edi, %edi
	movq	abuf@GOTPCREL(%rip), %rsi
	movl	$500, %edx                      # imm = 0x1F4
	movb	$0, %al
	callq	read@PLT
	cmpl	$0, %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	jl	.LBB0_2
	jmp	.LBB0_4
.LBB0_6:                                # %while.end
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	state@GOTPCREL(%rip), %rax
	movswl	(%rax), %edx
	movq	state@GOTPCREL(%rip), %rax
	movsbl	2(%rax), %ecx
	movabsq	$.L.str.1, %rsi
	movb	$0, %al
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	abuf,@object                    # @abuf
	.comm	abuf,500,16
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"input file"
	.size	.L.str, 11

	.type	sbuf,@object                    # @sbuf
	.comm	sbuf,2000,16
	.type	state,@object                   # @state
	.comm	state,4,2
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Final valprev=%d, index=%d\n"
	.size	.L.str.1, 28

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read
	.addrsig_sym perror
	.addrsig_sym exit
	.addrsig_sym adpcm_decoder
	.addrsig_sym write
	.addrsig_sym fprintf
	.addrsig_sym abuf
	.addrsig_sym sbuf
	.addrsig_sym state
	.addrsig_sym stderr
