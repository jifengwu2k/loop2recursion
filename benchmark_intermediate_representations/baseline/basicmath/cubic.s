	.text
	.file	"cubic.ll"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function SolveCubic
.LCPI0_0:
	.long	0xc0400000                      # float -3
.LCPI0_1:
	.long	0x41100000                      # float 9
.LCPI0_2:
	.long	0x41d80000                      # float 27
.LCPI0_3:
	.long	0x42580000                      # float 54
.LCPI0_6:
	.long	0x40400000                      # float 3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_4:
	.quad	0xc000000000000000              # double -2
.LCPI0_5:
	.quad	0x4008000000000000              # double 3
.LCPI0_7:
	.quad	0x401921fb54442d18              # double 6.2831853071795862
.LCPI0_8:
	.quad	0x402921fb54442d18              # double 12.566370614359172
.LCPI0_10:
	.quad	0x3fd5555555555555              # double 0.33333333333333331
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_9:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
.LCPI0_11:
	.quad	0xbff0000000000000              # double -1
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	SolveCubic
	.p2align	4, 0x90
	.type	SolveCubic,@function
SolveCubic:                             # @SolveCubic
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 304
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 288(%rsp)
	fldl	288(%rsp)
	fld	%st(0)
	fstpt	104(%rsp)                       # 10-byte Folded Spill
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 280(%rsp)
	fldl	280(%rsp)
	divsd	%xmm0, %xmm3
	movsd	%xmm3, 272(%rsp)
	fldl	272(%rsp)
	fld	%st(2)
	fmul	%st(3), %st
	flds	.LCPI0_0(%rip)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	flds	.LCPI0_1(%rip)
	fdivr	%st, %st(1)
	fld	%st(1)
	fstpt	116(%rsp)                       # 10-byte Folded Spill
	fld	%st(4)
	fadd	%st(5), %st
	fmul	%st(5), %st
	fmul	%st(5), %st
	fxch	%st(5)
	fmulp	%st, %st(1)
	fmulp	%st, %st(3)
	fxch	%st(3)
	fsubp	%st, %st(2)
	flds	.LCPI0_2(%rip)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	flds	.LCPI0_3(%rip)
	fdivrp	%st, %st(1)
	fld	%st(0)
	fstpt	128(%rsp)                       # 10-byte Folded Spill
	fmul	%st, %st(0)
	fld	%st(1)
	fmul	%st(2), %st
	fmulp	%st, %st(2)
	fld	%st(1)
	fstpt	140(%rsp)                       # 10-byte Folded Spill
	fsubp	%st, %st(1)
	fstpl	264(%rsp)
	movsd	264(%rsp), %xmm1                # xmm1 = mem[0],zero
	movsd	%xmm1, 152(%rsp)                # 8-byte Spill
	xorps	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.LBB0_2
# %bb.1:                                # %if.then
	fldt	140(%rsp)                       # 10-byte Folded Reload
	movq	88(%rsp), %rax                  # 8-byte Reload
	movl	$3, (%rax)
	fstpl	256(%rsp)
	movsd	256(%rsp), %xmm0                # xmm0 = mem[0],zero
	callq	sqrt@PLT
	fldt	128(%rsp)                       # 10-byte Folded Reload
	movsd	%xmm0, 240(%rsp)
	fldl	240(%rsp)
	fdivrp	%st, %st(1)
	fstpl	232(%rsp)
	movsd	232(%rsp), %xmm0                # xmm0 = mem[0],zero
	callq	acos@PLT
	fldt	116(%rsp)                       # 10-byte Folded Reload
	movsd	%xmm0, 56(%rsp)                 # 8-byte Spill
	fstpl	248(%rsp)
	movsd	248(%rsp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	callq	sqrt@PLT
	movaps	%xmm0, %xmm1
	movsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm2           # xmm2 = mem[0],zero
	movsd	%xmm2, 40(%rsp)                 # 8-byte Spill
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	movsd	.LCPI0_5(%rip), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, 48(%rsp)                 # 8-byte Spill
	divsd	%xmm1, %xmm0
	callq	cos@PLT
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	fldt	104(%rsp)                       # 10-byte Folded Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	movaps	%xmm0, %xmm2
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 224(%rsp)
	fldl	224(%rsp)
	flds	.LCPI0_6(%rip)
	fdivrp	%st, %st(2)
	fld	%st(1)
	fstpt	68(%rsp)                        # 10-byte Folded Spill
	fsubp	%st, %st(1)
	fstpl	(%rax)
	callq	sqrt@PLT
	movsd	40(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	movsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, 24(%rsp)                 # 8-byte Spill
	movsd	.LCPI0_7(%rip), %xmm2           # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	callq	cos@PLT
	movsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	fldt	68(%rsp)                        # 10-byte Folded Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	movaps	%xmm0, %xmm2
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, 216(%rsp)
	fldl	216(%rsp)
	fsubp	%st, %st(1)
	fstpl	8(%rax)
	callq	sqrt@PLT
	movsd	40(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	movsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, 80(%rsp)                 # 8-byte Spill
	movsd	.LCPI0_8(%rip), %xmm2           # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	callq	cos@PLT
	fldt	68(%rsp)                        # 10-byte Folded Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	movaps	%xmm0, %xmm1
	movsd	80(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 208(%rsp)
	fldl	208(%rsp)
	fsubp	%st, %st(1)
	fstpl	200(%rsp)
	movsd	200(%rsp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rax)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movsd	152(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	88(%rsp), %rax                  # 8-byte Reload
	movl	$1, (%rax)
	callq	sqrt@PLT
	fldt	128(%rsp)                       # 10-byte Folded Reload
	fstl	192(%rsp)
	fldz
	fucompi	%st(1), %st
	fstp	%st(0)
	seta	%al
	movb	%al, 15(%rsp)                   # 1-byte Spill
	movaps	.LCPI0_9(%rip), %xmm2           # xmm2 = [NaN,NaN]
	movsd	192(%rsp), %xmm1                # xmm1 = mem[0],zero
	pand	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_10(%rip), %xmm1          # xmm1 = mem[0],zero
	callq	pow@PLT
	fldt	116(%rsp)                       # 10-byte Folded Reload
	movb	15(%rsp), %cl                   # 1-byte Reload
	fldt	104(%rsp)                       # 10-byte Folded Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	movsd	%xmm0, 184(%rsp)
	fldl	184(%rsp)
	fdivr	%st, %st(2)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstpl	176(%rsp)
	movsd	176(%rsp), %xmm1                # xmm1 = mem[0],zero
	movzbl	%cl, %ecx
                                        # kill: def $rcx killed $ecx
	movsd	.LCPI0_11(,%rcx,8), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	flds	.LCPI0_0(%rip)
	fdivrp	%st, %st(1)
	movsd	%xmm0, 168(%rsp)
	fldl	168(%rsp)
	faddp	%st, %st(1)
	fstpl	160(%rsp)
	movsd	160(%rsp), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
.LBB0_3:                                # %if.end
	addq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	SolveCubic, .Lfunc_end0-SolveCubic
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym acos
	.addrsig_sym sqrt
	.addrsig_sym cos
	.addrsig_sym pow
	.addrsig_sym fabs
