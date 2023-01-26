	.text
	.file	"bitcnt_4.ll"
	.globl	ntbl_bitcnt                     # -- Begin function ntbl_bitcnt
	.p2align	4, 0x90
	.type	ntbl_bitcnt,@function
ntbl_bitcnt:                            # @ntbl_bitcnt
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	andq	$15, %rax
	movsbl	bits(,%rax), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	sarq	$4, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	cmpq	$0, %rdi
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	ntbl_bitcnt@PLT
	movl	12(%rsp), %ecx                  # 4-byte Reload
	addl	%ecx, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:                                # %if.end
	.cfi_def_cfa_offset 32
	movl	12(%rsp), %eax                  # 4-byte Reload
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	ntbl_bitcnt, .Lfunc_end0-ntbl_bitcnt
	.cfi_endproc
                                        # -- End function
	.globl	btbl_bitcnt                     # -- Begin function btbl_bitcnt
	.p2align	4, 0x90
	.type	btbl_bitcnt,@function
btbl_bitcnt:                            # @btbl_bitcnt
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	andq	$255, %rax
	movsbl	bits(,%rax), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	sarq	$8, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	cmpq	$0, %rdi
	je	.LBB1_2
# %bb.1:                                # %if.then
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	btbl_bitcnt@PLT
	movl	12(%rsp), %ecx                  # 4-byte Reload
	addl	%ecx, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_2:                                # %if.end
	.cfi_def_cfa_offset 32
	movl	12(%rsp), %eax                  # 4-byte Reload
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	btbl_bitcnt, .Lfunc_end1-btbl_bitcnt
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
	.addrsig_sym ntbl_bitcnt
	.addrsig_sym btbl_bitcnt
