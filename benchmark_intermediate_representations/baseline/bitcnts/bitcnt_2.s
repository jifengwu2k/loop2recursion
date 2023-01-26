	.text
	.file	"bitcnt_2.ll"
	.globl	bitcount                        # -- Begin function bitcount
	.p2align	4, 0x90
	.type	bitcount,@function
bitcount:                               # @bitcount
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rax
	shrq	$1, %rax
	andq	$1431655765, %rax               # imm = 0x55555555
	andq	$1431655765, %rdi               # imm = 0x55555555
	addq	%rdi, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	andq	$858993459, %rcx                # imm = 0x33333333
	andq	$858993459, %rax                # imm = 0x33333333
	addq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	andq	$117901063, %rax                # imm = 0x7070707
	andq	$117901063, %rcx                # imm = 0x7070707
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$8, %rcx
	andq	$983055, %rcx                   # imm = 0xF000F
	andq	$983055, %rax                   # imm = 0xF000F
	addq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$16, %rax
	andq	$31, %rcx
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	bitcount, .Lfunc_end0-bitcount
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
