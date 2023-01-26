	.text
	.file	"bitcnt_3.ll"
	.globl	ntbl_bitcount                   # -- Begin function ntbl_bitcount
	.p2align	4, 0x90
	.type	ntbl_bitcount,@function
ntbl_bitcount:                          # @ntbl_bitcount
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdi
	andq	$15, %rdi
	movsbl	bits(,%rdi), %edx
	movq	%rcx, %rax
	shrq	$4, %rax
	andq	$15, %rax
	movsbl	bits(,%rax), %eax
	addl	%edx, %eax
	movq	%rcx, %rdx
	shrq	$8, %rdx
	andq	$15, %rdx
	movsbl	bits(,%rdx), %edx
	addl	%edx, %eax
	movq	%rcx, %rdx
	shrq	$12, %rdx
	andq	$15, %rdx
	movsbl	bits(,%rdx), %edx
	addl	%edx, %eax
	movq	%rcx, %rdx
	shrq	$16, %rdx
	andq	$15, %rdx
	movsbl	bits(,%rdx), %edx
	addl	%edx, %eax
	movq	%rcx, %rdx
	shrq	$20, %rdx
	andq	$15, %rdx
	movsbl	bits(,%rdx), %edx
	addl	%edx, %eax
	movq	%rcx, %rdx
	shrq	$24, %rdx
	andq	$15, %rdx
	movsbl	bits(,%rdx), %edx
	addl	%edx, %eax
	shrq	$28, %rcx
	andq	$15, %rcx
	movsbl	bits(,%rcx), %ecx
	addl	%ecx, %eax
	retq
.Lfunc_end0:
	.size	ntbl_bitcount, .Lfunc_end0-ntbl_bitcount
	.cfi_endproc
                                        # -- End function
	.globl	BW_btbl_bitcount                # -- Begin function BW_btbl_bitcount
	.p2align	4, 0x90
	.type	BW_btbl_bitcount,@function
BW_btbl_bitcount:                       # @BW_btbl_bitcount
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rax
	shrq	$8, %rax
	movq	%rdi, %rcx
	shrq	$16, %rcx
	movq	%rdi, %rdx
	shrq	$24, %rdx
	andq	$255, %rdi
	movsbl	bits(,%rdi), %esi
	andq	$255, %rax
	movsbl	bits(,%rax), %eax
	addl	%esi, %eax
	andq	$255, %rdx
	movsbl	bits(,%rdx), %edx
	addl	%edx, %eax
	andq	$255, %rcx
	movsbl	bits(,%rcx), %ecx
	addl	%ecx, %eax
	retq
.Lfunc_end1:
	.size	BW_btbl_bitcount, .Lfunc_end1-BW_btbl_bitcount
	.cfi_endproc
                                        # -- End function
	.globl	AR_btbl_bitcount                # -- Begin function AR_btbl_bitcount
	.p2align	4, 0x90
	.type	AR_btbl_bitcount,@function
AR_btbl_bitcount:                       # @AR_btbl_bitcount
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rax
	shrq	$8, %rax
	movq	%rdi, %rdx
	shrq	$16, %rdx
	movq	%rdi, %rcx
	shrq	$24, %rcx
	andq	$255, %rdi
	movsbl	bits(,%rdi), %esi
	andq	$255, %rax
	movsbl	bits(,%rax), %eax
	addl	%esi, %eax
	andq	$255, %rdx
	movsbl	bits(,%rdx), %edx
	addl	%edx, %eax
	andq	$255, %rcx
	movsbl	bits(,%rcx), %ecx
	addl	%ecx, %eax
	retq
.Lfunc_end2:
	.size	AR_btbl_bitcount, .Lfunc_end2-AR_btbl_bitcount
	.cfi_endproc
                                        # -- End function
	.type	bits,@object                    # @bits
	.section	.rodata,"a",@progbits
	.p2align	4
bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits, 256

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
