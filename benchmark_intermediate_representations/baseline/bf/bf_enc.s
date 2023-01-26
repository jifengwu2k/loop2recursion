	.text
	.file	"bf_enc.ll"
	.globl	BF_encrypt                      # -- Begin function BF_encrypt
	.p2align	4, 0x90
	.type	BF_encrypt,@function
BF_encrypt:                             # @BF_encrypt
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	movq	%rsi, -32(%rsp)                 # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	addq	$8, %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	8(%rdi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	cmpl	$0, %edx
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	-24(%rsp), %rax                 # 8-byte Reload
	xorq	(%rdx), %rax
	xorq	8(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	16(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	24(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	32(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	40(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	48(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	56(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	64(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	72(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	80(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	88(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	96(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	104(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	112(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	120(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	128(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	136(%rdx), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	-24(%rsp), %rax                 # 8-byte Reload
	xorq	136(%rdx), %rax
	xorq	128(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	120(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	112(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	104(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	96(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	88(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	80(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	72(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	64(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	56(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	48(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	40(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	32(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	24(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	16(%rdx), %rcx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rax, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rax, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rcx
	xorq	8(%rdx), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
	movq	144(%rdx,%rsi,8), %rsi
	movq	%rcx, %rdi
	shrq	$16, %rdi
	andq	$255, %rdi
	orq	$256, %rdi                      # imm = 0x100
	addq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	shrq	$8, %rdi
	andq	$255, %rdi
	orq	$512, %rdi                      # imm = 0x200
	xorq	144(%rdx,%rdi,8), %rsi
	movq	%rcx, %rdi
	andq	$255, %rdi
	orq	$768, %rdi                      # imm = 0x300
	addq	144(%rdx,%rdi,8), %rsi
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	xorq	%rsi, %rax
	xorq	(%rdx), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, -48(%rsp)                 # 8-byte Spill
.LBB0_3:                                # %if.end
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movabsq	$4294967295, %rdi               # imm = 0xFFFFFFFF
	andq	%rdi, %rsi
	movq	%rsi, (%rdx)
	movabsq	$4294967295, %rdx               # imm = 0xFFFFFFFF
	andq	%rdx, %rcx
	movq	%rcx, (%rax)
	retq
.Lfunc_end0:
	.size	BF_encrypt, .Lfunc_end0-BF_encrypt
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
