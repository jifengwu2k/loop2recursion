	.text
	.file	"bf_cbc.ll"
	.globl	BF_cbc_encrypt                  # -- Begin function BF_cbc_encrypt
	.p2align	4, 0x90
	.type	BF_cbc_encrypt,@function
BF_cbc_encrypt:                         # @BF_cbc_encrypt
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$1664, %rsp                     # imm = 0x680
	.cfi_def_cfa_offset 1696
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, 1480(%rsp)                # 8-byte Spill
	movq	%rsi, 1488(%rsp)                # 8-byte Spill
	movq	%rdx, 1496(%rsp)                # 8-byte Spill
	movq	%rcx, 1504(%rsp)                # 8-byte Spill
	movq	%r8, 1512(%rsp)                 # 8-byte Spill
	leaq	1648(%rsp), %rax
	movq	%rax, 1520(%rsp)                # 8-byte Spill
	movq	%r8, %rax
	addq	$1, %rax
	movq	%rax, 1528(%rsp)                # 8-byte Spill
	movzbl	(%r8), %r10d
	movq	%r8, %rax
	addq	$2, %rax
	movq	%rax, 1536(%rsp)                # 8-byte Spill
	movzbl	1(%r8), %edi
	movq	%r8, %rax
	addq	$3, %rax
	movq	%rax, 1544(%rsp)                # 8-byte Spill
	movzbl	2(%r8), %esi
	movq	%r8, %rax
	addq	$4, %rax
	movq	%rax, 1552(%rsp)                # 8-byte Spill
	movzbl	3(%r8), %ecx
	movq	%r8, %rax
	addq	$5, %rax
	movq	%rax, 1560(%rsp)                # 8-byte Spill
	movzbl	4(%r8), %eax
	shll	$8, %eax
	orl	%r10d, %eax
	movd	%eax, %xmm1
	xorps	%xmm2, %xmm2
	movaps	%xmm2, 1568(%rsp)               # 16-byte Spill
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$24, %xmm1
	movq	%r8, %rax
	addq	$6, %rax
	movq	%rax, 1584(%rsp)                # 8-byte Spill
	movzbl	5(%r8), %eax
	shll	$8, %eax
	orl	%edi, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	psllq	$16, %xmm0
	por	%xmm1, %xmm0
	movq	%r8, %rax
	addq	$7, %rax
	movq	%rax, 1592(%rsp)                # 8-byte Spill
	movzbl	6(%r8), %eax
	shll	$8, %eax
	orl	%esi, %eax
	movd	%eax, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$8, %xmm1
	por	%xmm1, %xmm0
	movzbl	7(%r8), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movd	%eax, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	por	%xmm1, %xmm0
	movaps	%xmm0, 1600(%rsp)               # 16-byte Spill
	addq	$-8, %rdx
	movq	%rdx, 1616(%rsp)                # 8-byte Spill
	setns	%al
	movb	%al, 1631(%rsp)                 # 1-byte Spill
	movq	%xmm0, %rax
	movq	%rax, 1632(%rsp)                # 8-byte Spill
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movq	%xmm0, %rax
	movq	%rax, 1640(%rsp)                # 8-byte Spill
	cmpl	$0, %r9d
	je	.LBB0_3
# %bb.1:                                # %for.cond.preheader
	movq	1488(%rsp), %rax                # 8-byte Reload
	movq	1480(%rsp), %rcx                # 8-byte Reload
	movq	1632(%rsp), %rdx                # 8-byte Reload
	movq	1640(%rsp), %rsi                # 8-byte Reload
	movq	1496(%rsp), %rdi                # 8-byte Reload
	movb	1631(%rsp), %r8b                # 1-byte Reload
	testb	$1, %r8b
	movq	%rdi, 1440(%rsp)                # 8-byte Spill
	movq	%rsi, 1448(%rsp)                # 8-byte Spill
	movq	%rdx, 1456(%rsp)                # 8-byte Spill
	movq	%rcx, 1464(%rsp)                # 8-byte Spill
	movq	%rax, 1472(%rsp)                # 8-byte Spill
	jne	.LBB0_2
	jmp	.LBB0_7
.LBB0_2:                                # %for.body.lr.ph
	movaps	1600(%rsp), %xmm0               # 16-byte Reload
	movq	1488(%rsp), %rax                # 8-byte Reload
	movq	1480(%rsp), %rcx                # 8-byte Reload
	movq	1616(%rsp), %rdx                # 8-byte Reload
	leaq	1648(%rsp), %rsi
	movq	%rsi, 1368(%rsp)                # 8-byte Spill
	movq	%rdx, %rdi
	andq	$-8, %rdi
	movq	%rdi, 1376(%rsp)                # 8-byte Spill
	addq	$8, %rdi
	movq	%rdi, 1384(%rsp)                # 8-byte Spill
	movq	%rcx, %rsi
	addq	%rdi, %rsi
	movq	%rsi, 1392(%rsp)                # 8-byte Spill
	movq	%rdx, 1400(%rsp)                # 8-byte Spill
	movq	%rcx, 1408(%rsp)                # 8-byte Spill
	movq	%rax, 1416(%rsp)                # 8-byte Spill
	movaps	%xmm0, 1424(%rsp)               # 16-byte Spill
	jmp	.LBB0_5
.LBB0_3:                                # %for.cond224.preheader
	movq	1488(%rsp), %rax                # 8-byte Reload
	movq	1480(%rsp), %rcx                # 8-byte Reload
	movq	1632(%rsp), %rdx                # 8-byte Reload
	movq	1640(%rsp), %rsi                # 8-byte Reload
	movq	1496(%rsp), %rdi                # 8-byte Reload
	movb	1631(%rsp), %r8b                # 1-byte Reload
	testb	$1, %r8b
	movq	%rdi, 1328(%rsp)                # 8-byte Spill
	movq	%rsi, 1336(%rsp)                # 8-byte Spill
	movq	%rdx, 1344(%rsp)                # 8-byte Spill
	movq	%rcx, 1352(%rsp)                # 8-byte Spill
	movq	%rax, 1360(%rsp)                # 8-byte Spill
	jne	.LBB0_4
	jmp	.LBB0_20
.LBB0_4:                                # %for.body227.lr.ph
	movq	1488(%rsp), %rax                # 8-byte Reload
	movq	1480(%rsp), %rcx                # 8-byte Reload
	movq	1632(%rsp), %rdx                # 8-byte Reload
	movq	1640(%rsp), %rsi                # 8-byte Reload
	movq	1616(%rsp), %rdi                # 8-byte Reload
	movq	1520(%rsp), %r8                 # 8-byte Reload
	leaq	1648(%rsp), %r9
	movq	%r9, 1248(%rsp)                 # 8-byte Spill
	addq	$8, %r8
	movq	%r8, 1256(%rsp)                 # 8-byte Spill
	movq	%rdi, %r9
	andq	$-8, %r9
	movq	%r9, 1264(%rsp)                 # 8-byte Spill
	addq	$8, %r9
	movq	%r9, 1272(%rsp)                 # 8-byte Spill
	movq	%rcx, %r8
	addq	%r9, %r8
	movq	%r8, 1280(%rsp)                 # 8-byte Spill
	movq	%rdi, 1288(%rsp)                # 8-byte Spill
	movq	%rsi, 1296(%rsp)                # 8-byte Spill
	movq	%rdx, 1304(%rsp)                # 8-byte Spill
	movq	%rcx, 1312(%rsp)                # 8-byte Spill
	movq	%rax, 1320(%rsp)                # 8-byte Spill
	jmp	.LBB0_18
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	1424(%rsp), %xmm1               # 16-byte Reload
	movq	1416(%rsp), %rdx                # 8-byte Reload
	movq	1408(%rsp), %rax                # 8-byte Reload
	movq	1400(%rsp), %rcx                # 8-byte Reload
	movq	1504(%rsp), %rsi                # 8-byte Reload
	movq	1368(%rsp), %rdi                # 8-byte Reload
	movq	%rdx, 1168(%rsp)                # 8-byte Spill
	movq	%rax, 848(%rsp)                 # 8-byte Spill
	movq	%rcx, 1176(%rsp)                # 8-byte Spill
	movzbl	(%rax), %r10d
	movzbl	1(%rax), %r9d
	movzbl	2(%rax), %r8d
	movzbl	3(%rax), %ecx
	movzbl	4(%rax), %edx
	shll	$8, %edx
	movl	%edx, 860(%rsp)                 # 4-byte Spill
	orl	%r10d, %edx
	movd	%edx, %xmm2
	xorps	%xmm3, %xmm3
	movaps	%xmm3, 864(%rsp)                # 16-byte Spill
	punpcklbw	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movaps	%xmm2, 880(%rsp)                # 16-byte Spill
	punpcklwd	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movaps	%xmm2, 896(%rsp)                # 16-byte Spill
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movaps	%xmm2, 912(%rsp)                # 16-byte Spill
	psllq	$24, %xmm2
	movzbl	5(%rax), %edx
	shll	$8, %edx
	movl	%edx, 940(%rsp)                 # 4-byte Spill
	orl	%r9d, %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3],xmm0[4],xmm3[4],xmm0[5],xmm3[5],xmm0[6],xmm3[6],xmm0[7],xmm3[7]
	movaps	%xmm0, 944(%rsp)                # 16-byte Spill
	punpcklwd	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	movaps	%xmm0, 960(%rsp)                # 16-byte Spill
	punpckldq	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	movaps	%xmm0, 976(%rsp)                # 16-byte Spill
	psllq	$16, %xmm0
	movaps	%xmm0, 992(%rsp)                # 16-byte Spill
	por	%xmm2, %xmm0
	movaps	%xmm0, 1008(%rsp)               # 16-byte Spill
	movzbl	6(%rax), %edx
	shll	$8, %edx
	movl	%edx, 1036(%rsp)                # 4-byte Spill
	orl	%r8d, %edx
	movd	%edx, %xmm2
	punpcklbw	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movaps	%xmm2, 1040(%rsp)               # 16-byte Spill
	punpcklwd	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movaps	%xmm2, 1056(%rsp)               # 16-byte Spill
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movaps	%xmm2, 1072(%rsp)               # 16-byte Spill
	psllq	$8, %xmm2
	por	%xmm2, %xmm0
	movaps	%xmm0, 1088(%rsp)               # 16-byte Spill
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, 1184(%rsp)                # 8-byte Spill
	movzbl	7(%rax), %eax
	shll	$8, %eax
	movl	%eax, 1116(%rsp)                # 4-byte Spill
	orl	%ecx, %eax
	movd	%eax, %xmm2
	punpcklbw	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3],xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	movaps	%xmm2, 1120(%rsp)               # 16-byte Spill
	punpcklwd	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1],xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	movaps	%xmm2, 1136(%rsp)               # 16-byte Spill
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	por	%xmm2, %xmm0
	movaps	%xmm0, 1152(%rsp)               # 16-byte Spill
	pxor	%xmm1, %xmm0
	movaps	%xmm0, 1648(%rsp)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	1168(%rsp), %r8                 # 8-byte Reload
	movq	1176(%rsp), %rdi                # 8-byte Reload
	movq	1184(%rsp), %rsi                # 8-byte Reload
	movaps	1648(%rsp), %xmm0
	movq	%xmm0, %rax
	movl	%eax, %ecx
	bswapl	%ecx
	movl	%ecx, (%r8)
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	movq	%xmm1, %rcx
	movq	%rcx, %rdx
	shrq	$24, %rdx
	movq	%rdx, 1192(%rsp)                # 8-byte Spill
	movb	%dl, 4(%r8)
	movq	%rcx, %rdx
	shrq	$16, %rdx
	movq	%rdx, 1200(%rsp)                # 8-byte Spill
	movb	%dl, 5(%r8)
	movq	%rcx, %rdx
	shrq	$8, %rdx
	movq	%rdx, 1208(%rsp)                # 8-byte Spill
	movb	%dl, 6(%r8)
	movb	%cl, %r9b
	movq	%r8, %rdx
	addq	$8, %rdx
	movq	%rdx, 1216(%rsp)                # 8-byte Spill
	movb	%r9b, 7(%r8)
	addq	$-8, %rdi
	movq	%rdi, 1224(%rsp)                # 8-byte Spill
	cmpq	$-1, %rdi
	movq	%rdi, 1400(%rsp)                # 8-byte Spill
	movq	%rsi, 1408(%rsp)                # 8-byte Spill
	movq	%rdx, 1416(%rsp)                # 8-byte Spill
	movaps	%xmm0, 1424(%rsp)               # 16-byte Spill
	movq	%rcx, 1232(%rsp)                # 8-byte Spill
	movq	%rax, 1240(%rsp)                # 8-byte Spill
	jg	.LBB0_5
# %bb.6:                                # %for.end.loopexit
	movq	1392(%rsp), %rcx                # 8-byte Reload
	movq	1376(%rsp), %r8                 # 8-byte Reload
	movq	1616(%rsp), %rdi                # 8-byte Reload
	movq	1384(%rsp), %r9                 # 8-byte Reload
	movq	1488(%rsp), %rax                # 8-byte Reload
	movq	1232(%rsp), %rsi                # 8-byte Reload
	movq	1240(%rsp), %rdx                # 8-byte Reload
	addq	%r9, %rax
	subq	%r8, %rdi
	movq	%rdi, 1440(%rsp)                # 8-byte Spill
	movq	%rsi, 1448(%rsp)                # 8-byte Spill
	movq	%rdx, 1456(%rsp)                # 8-byte Spill
	movq	%rcx, 1464(%rsp)                # 8-byte Spill
	movq	%rax, 1472(%rsp)                # 8-byte Spill
.LBB0_7:                                # %for.end
	movq	1440(%rsp), %rdx                # 8-byte Reload
	movq	1448(%rsp), %rax                # 8-byte Reload
	movq	1456(%rsp), %rcx                # 8-byte Reload
	movq	1464(%rsp), %rsi                # 8-byte Reload
	movq	1472(%rsp), %rdi                # 8-byte Reload
	movq	%rdi, 792(%rsp)                 # 8-byte Spill
	movq	%rsi, 800(%rsp)                 # 8-byte Spill
	movq	%rcx, 808(%rsp)                 # 8-byte Spill
	movq	%rax, 816(%rsp)                 # 8-byte Spill
	movq	%rdx, 824(%rsp)                 # 8-byte Spill
	cmpq	$0, %rdx
	movq	%rcx, 832(%rsp)                 # 8-byte Spill
	movq	%rax, 840(%rsp)                 # 8-byte Spill
	je	.LBB0_30
# %bb.8:                                # %if.then89
	movq	824(%rsp), %rcx                 # 8-byte Reload
	movq	800(%rsp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 752(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 760(%rsp)                 # 8-byte Spill
	addq	$-1, %rcx
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	subq	$7, %rcx
	movq	%rax, %rcx
	movq	%rcx, 776(%rsp)                 # 8-byte Spill
	movq	%rax, 784(%rsp)                 # 8-byte Spill
	ja	.LBB0_17
# %bb.31:                               # %if.then89
	movq	760(%rsp), %rcx                 # 8-byte Reload
	movq	752(%rsp), %rdx                 # 8-byte Reload
	movq	768(%rsp), %rax                 # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rax
	movq	%rdx, %rsi
	movq	%rsi, 616(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rsi, 624(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rsi, 632(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rsi, 640(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rsi, 648(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rsi, 656(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rsi, 664(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rsi, 672(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rsi, 680(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rsi, 688(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rsi, 696(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rsi, 704(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rsi, 712(%rsp)                 # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rsi, 720(%rsp)                 # 8-byte Spill
	movq	%rdx, 728(%rsp)                 # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rdx, 736(%rsp)                 # 8-byte Spill
	movq	%rcx, 744(%rsp)                 # 8-byte Spill
	jmpq	*%rax
.LBB0_9:                                # %sw.bb
	movq	752(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	addq	$-1, %rcx
	movzbl	-1(%rax), %eax
                                        # kill: def $rax killed $eax
	movq	%rcx, 616(%rsp)                 # 8-byte Spill
	movq	%rax, 624(%rsp)                 # 8-byte Spill
.LBB0_10:                               # %sw.bb94
	movq	616(%rsp), %rax                 # 8-byte Reload
	movq	624(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	addq	$-1, %rcx
	movzbl	-1(%rax), %eax
                                        # kill: def $rax killed $eax
	shlq	$8, %rax
	orq	%rdx, %rax
	movq	%rcx, 632(%rsp)                 # 8-byte Spill
	movq	%rax, 640(%rsp)                 # 8-byte Spill
.LBB0_11:                               # %sw.bb99
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	640(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	addq	$-1, %rcx
	movzbl	-1(%rax), %eax
                                        # kill: def $rax killed $eax
	shlq	$16, %rax
	orq	%rdx, %rax
	movq	%rcx, 648(%rsp)                 # 8-byte Spill
	movq	%rax, 656(%rsp)                 # 8-byte Spill
.LBB0_12:                               # %sw.bb104
	movq	648(%rsp), %rax                 # 8-byte Reload
	movq	656(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	addq	$-1, %rcx
	movzbl	-1(%rax), %eax
                                        # kill: def $rax killed $eax
	shlq	$24, %rax
	orq	%rdx, %rax
	movq	%rcx, 664(%rsp)                 # 8-byte Spill
	movq	%rax, 672(%rsp)                 # 8-byte Spill
.LBB0_13:                               # %sw.bb109
	movq	664(%rsp), %rcx                 # 8-byte Reload
	movq	672(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, %rdx
	addq	$-1, %rdx
	movzbl	-1(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rdx, 680(%rsp)                 # 8-byte Spill
	movq	%rcx, 688(%rsp)                 # 8-byte Spill
	movq	%rax, 696(%rsp)                 # 8-byte Spill
.LBB0_14:                               # %sw.bb112
	movq	680(%rsp), %rcx                 # 8-byte Reload
	movq	688(%rsp), %rsi                 # 8-byte Reload
	movq	696(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, %rdx
	addq	$-1, %rdx
	movzbl	-1(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$8, %rcx
	orq	%rsi, %rcx
	movq	%rdx, 704(%rsp)                 # 8-byte Spill
	movq	%rcx, 712(%rsp)                 # 8-byte Spill
	movq	%rax, 720(%rsp)                 # 8-byte Spill
.LBB0_15:                               # %sw.bb117
	movq	704(%rsp), %rcx                 # 8-byte Reload
	movq	712(%rsp), %rsi                 # 8-byte Reload
	movq	720(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, %rdx
	addq	$-1, %rdx
	movzbl	-1(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$16, %rcx
	orq	%rsi, %rcx
	movq	%rdx, 728(%rsp)                 # 8-byte Spill
	movq	%rcx, 736(%rsp)                 # 8-byte Spill
	movq	%rax, 744(%rsp)                 # 8-byte Spill
.LBB0_16:                               # %sw.bb122
	movq	728(%rsp), %rcx                 # 8-byte Reload
	movq	736(%rsp), %rdx                 # 8-byte Reload
	movq	744(%rsp), %rax                 # 8-byte Reload
	movzbl	-1(%rcx), %ecx
                                        # kill: def $rcx killed $ecx
	shlq	$24, %rcx
	orq	%rdx, %rcx
	movq	%rcx, 776(%rsp)                 # 8-byte Spill
	movq	%rax, 784(%rsp)                 # 8-byte Spill
.LBB0_17:                               # %sw.epilog
	movq	1520(%rsp), %rax                # 8-byte Reload
	movq	1504(%rsp), %rsi                # 8-byte Reload
	movq	816(%rsp), %rdi                 # 8-byte Reload
	movq	808(%rsp), %r8                  # 8-byte Reload
	movq	776(%rsp), %rdx                 # 8-byte Reload
	movq	784(%rsp), %rcx                 # 8-byte Reload
	xorq	%r8, %rdx
	xorq	%rdi, %rcx
	leaq	1648(%rsp), %rdi
	movq	%rdx, 1648(%rsp)
	movq	%rcx, 8(%rax)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	1520(%rsp), %rax                # 8-byte Reload
	movq	792(%rsp), %rdx                 # 8-byte Reload
	movq	1648(%rsp), %rcx
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	shrq	$24, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, (%rdx)
	movq	%rcx, %rsi
	shrq	$16, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, 1(%rdx)
	movq	%rcx, %rsi
	shrq	$8, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, 2(%rdx)
	movb	%cl, %sil
	movb	%sil, 3(%rdx)
	movq	%rax, %rsi
	shrq	$24, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, 4(%rdx)
	movq	%rax, %rsi
	shrq	$16, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, 5(%rdx)
	movq	%rax, %rsi
	shrq	$8, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, 6(%rdx)
	movb	%al, %sil
	movb	%sil, 7(%rdx)
	movq	%rcx, 832(%rsp)                 # 8-byte Spill
	movq	%rax, 840(%rsp)                 # 8-byte Spill
	jmp	.LBB0_30
.LBB0_18:                               # %for.body227
                                        # =>This Inner Loop Header: Depth=1
	movq	1320(%rsp), %rbx                # 8-byte Reload
	movq	1312(%rsp), %rax                # 8-byte Reload
	movq	1304(%rsp), %r8                 # 8-byte Reload
	movq	1296(%rsp), %rdx                # 8-byte Reload
	movq	1288(%rsp), %rcx                # 8-byte Reload
	movq	1248(%rsp), %rdi                # 8-byte Reload
	movq	1504(%rsp), %rsi                # 8-byte Reload
	movq	%rbx, 512(%rsp)                 # 8-byte Spill
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movq	%r8, 496(%rsp)                  # 8-byte Spill
	movq	%rdx, 504(%rsp)                 # 8-byte Spill
	movq	%rcx, 520(%rsp)                 # 8-byte Spill
	movzbl	(%rax), %r10d
	movzbl	1(%rax), %r9d
	movzbl	2(%rax), %r8d
	movzbl	3(%rax), %ecx
	movzbl	4(%rax), %edx
	shll	$8, %edx
	movl	%edx, 204(%rsp)                 # 4-byte Spill
	orl	%r10d, %edx
	movd	%edx, %xmm1
	xorps	%xmm2, %xmm2
	movaps	%xmm2, 208(%rsp)                # 16-byte Spill
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, 224(%rsp)                # 16-byte Spill
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, 240(%rsp)                # 16-byte Spill
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movaps	%xmm1, 256(%rsp)                # 16-byte Spill
	psllq	$24, %xmm1
	movzbl	5(%rax), %edx
	shll	$8, %edx
	movl	%edx, 284(%rsp)                 # 4-byte Spill
	orl	%r9d, %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	movaps	%xmm0, 288(%rsp)                # 16-byte Spill
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	movaps	%xmm0, 304(%rsp)                # 16-byte Spill
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movaps	%xmm0, 320(%rsp)                # 16-byte Spill
	psllq	$16, %xmm0
	movaps	%xmm0, 336(%rsp)                # 16-byte Spill
	por	%xmm1, %xmm0
	movaps	%xmm0, 352(%rsp)                # 16-byte Spill
	movzbl	6(%rax), %edx
	shll	$8, %edx
	movl	%edx, 380(%rsp)                 # 4-byte Spill
	orl	%r8d, %edx
	movd	%edx, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, 384(%rsp)                # 16-byte Spill
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, 400(%rsp)                # 16-byte Spill
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movaps	%xmm1, 416(%rsp)                # 16-byte Spill
	psllq	$8, %xmm1
	por	%xmm1, %xmm0
	movaps	%xmm0, 432(%rsp)                # 16-byte Spill
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, 544(%rsp)                 # 8-byte Spill
	movzbl	7(%rax), %eax
	shll	$8, %eax
	movl	%eax, 460(%rsp)                 # 4-byte Spill
	orl	%ecx, %eax
	movd	%eax, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	movaps	%xmm1, 464(%rsp)                # 16-byte Spill
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movaps	%xmm1, 480(%rsp)                # 16-byte Spill
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	por	%xmm1, %xmm0
	movaps	%xmm0, 528(%rsp)                # 16-byte Spill
	movaps	%xmm0, 1648(%rsp)
	xorl	%edx, %edx
	callq	BF_encrypt@PLT
	movq	1248(%rsp), %rdx                # 8-byte Reload
	movq	496(%rsp), %r9                  # 8-byte Reload
	movq	1256(%rsp), %rcx                # 8-byte Reload
	movq	504(%rsp), %r8                  # 8-byte Reload
	movq	512(%rsp), %rax                 # 8-byte Reload
	movq	520(%rsp), %rdi                 # 8-byte Reload
	movaps	528(%rsp), %xmm0                # 16-byte Reload
	movq	544(%rsp), %rsi                 # 8-byte Reload
	movl	(%rdx), %edx
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%r9d, %edx
	movl	%edx, 556(%rsp)                 # 4-byte Spill
	movq	(%rcx), %rcx
	xorq	%r8, %rcx
	movq	%rcx, 560(%rsp)                 # 8-byte Spill
	bswapl	%edx
	movl	%edx, (%rax)
	movq	%rcx, %rdx
	shrq	$24, %rdx
	movq	%rdx, 568(%rsp)                 # 8-byte Spill
	movb	%dl, 4(%rax)
	movq	%rcx, %rdx
	shrq	$16, %rdx
	movq	%rdx, 576(%rsp)                 # 8-byte Spill
	movb	%dl, 5(%rax)
	movb	%ch, %dl
	movb	%dl, 6(%rax)
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, 584(%rsp)                 # 8-byte Spill
	movb	%cl, 7(%rax)
	addq	$-8, %rdi
	movq	%rdi, 592(%rsp)                 # 8-byte Spill
	movq	%xmm0, %rax
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movq	%xmm0, %rcx
	cmpq	$-1, %rdi
	movq	%rdi, 1288(%rsp)                # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdi, 1296(%rsp)                # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdi, 1304(%rsp)                # 8-byte Spill
	movq	%rsi, 1312(%rsp)                # 8-byte Spill
	movq	%rdx, 1320(%rsp)                # 8-byte Spill
	movq	%rcx, 600(%rsp)                 # 8-byte Spill
	movq	%rax, 608(%rsp)                 # 8-byte Spill
	jg	.LBB0_18
# %bb.19:                               # %for.end295.loopexit
	movq	1280(%rsp), %rcx                # 8-byte Reload
	movq	1264(%rsp), %r8                 # 8-byte Reload
	movq	1616(%rsp), %rdi                # 8-byte Reload
	movq	1272(%rsp), %r9                 # 8-byte Reload
	movq	1488(%rsp), %rax                # 8-byte Reload
	movq	600(%rsp), %rsi                 # 8-byte Reload
	movq	608(%rsp), %rdx                 # 8-byte Reload
	addq	%r9, %rax
	subq	%r8, %rdi
	movq	%rdi, 1328(%rsp)                # 8-byte Spill
	movq	%rsi, 1336(%rsp)                # 8-byte Spill
	movq	%rdx, 1344(%rsp)                # 8-byte Spill
	movq	%rcx, 1352(%rsp)                # 8-byte Spill
	movq	%rax, 1360(%rsp)                # 8-byte Spill
.LBB0_20:                               # %for.end295
	movq	1328(%rsp), %rdx                # 8-byte Reload
	movq	1336(%rsp), %rax                # 8-byte Reload
	movq	1344(%rsp), %rcx                # 8-byte Reload
	movq	1352(%rsp), %rsi                # 8-byte Reload
	movq	1360(%rsp), %rdi                # 8-byte Reload
	movq	%rdi, 152(%rsp)                 # 8-byte Spill
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	cmpq	$0, %rdx
	movq	%rcx, 832(%rsp)                 # 8-byte Spill
	movq	%rax, 840(%rsp)                 # 8-byte Spill
	je	.LBB0_30
# %bb.21:                               # %if.then298
	movq	1504(%rsp), %rsi                # 8-byte Reload
	movq	160(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax), %r9d
	movzbl	1(%rax), %r8d
	movzbl	2(%rax), %edi
	movzbl	3(%rax), %ecx
	movzbl	4(%rax), %edx
	shll	$8, %edx
	orl	%r9d, %edx
	movd	%edx, %xmm1
	xorps	%xmm2, %xmm2
	movaps	%xmm2, 64(%rsp)                 # 16-byte Spill
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$24, %xmm1
	movzbl	5(%rax), %edx
	shll	$8, %edx
	orl	%r8d, %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	psllq	$16, %xmm0
	por	%xmm1, %xmm0
	movzbl	6(%rax), %edx
	shll	$8, %edx
	orl	%edi, %edx
	movd	%edx, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psllq	$8, %xmm1
	por	%xmm1, %xmm0
	movzbl	7(%rax), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movd	%eax, %xmm1
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	por	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)                 # 16-byte Spill
	movaps	%xmm0, 1648(%rsp)
	leaq	1648(%rsp), %rdi
	xorl	%edx, %edx
	callq	BF_encrypt@PLT
	movq	168(%rsp), %r8                  # 8-byte Reload
	movq	1520(%rsp), %rcx                # 8-byte Reload
	movq	176(%rsp), %rsi                 # 8-byte Reload
	movq	152(%rsp), %rax                 # 8-byte Reload
	movaps	80(%rsp), %xmm0                 # 16-byte Reload
	movq	184(%rsp), %rdx                 # 8-byte Reload
	movq	1648(%rsp), %rdi
	xorq	%r8, %rdi
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	movq	8(%rcx), %rcx
	xorq	%rsi, %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	addq	%rdx, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%xmm0, %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	pshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	movq	%xmm0, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	addq	$-1, %rdx
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	subq	$7, %rdx
	movq	%rcx, 832(%rsp)                 # 8-byte Spill
	movq	%rax, 840(%rsp)                 # 8-byte Spill
	ja	.LBB0_30
# %bb.32:                               # %if.then298
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	.LJTI0_1(,%rax,8), %rax
	movq	%rcx, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	jmpq	*%rax
.LBB0_22:                               # %sw.bb337
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	112(%rsp), %rax                 # 8-byte Reload
	movb	%al, %dl
	movq	%rcx, %rax
	addq	$-1, %rax
	movb	%dl, -1(%rcx)
	movq	%rax, 8(%rsp)                   # 8-byte Spill
.LBB0_23:                               # %sw.bb341
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	shrq	$8, %rax
	movb	%al, %dl
	movq	%rcx, %rax
	addq	$-1, %rax
	movb	%dl, -1(%rcx)
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.LBB0_24:                               # %sw.bb346
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	shrq	$16, %rax
	movb	%al, %dl
	movq	%rcx, %rax
	addq	$-1, %rax
	movb	%dl, -1(%rcx)
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.LBB0_25:                               # %sw.bb351
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	shrq	$24, %rax
	movb	%al, %dl
	movq	%rcx, %rax
	addq	$-1, %rax
	movb	%dl, -1(%rcx)
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB0_26:                               # %sw.bb356
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movb	%al, %dl
	movq	%rcx, %rax
	addq	$-1, %rax
	movb	%dl, -1(%rcx)
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.LBB0_27:                               # %sw.bb360
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	40(%rsp), %rcx                  # 8-byte Reload
	shrq	$8, %rax
	movb	%al, %dl
	movq	%rcx, %rax
	addq	$-1, %rax
	movb	%dl, -1(%rcx)
	movq	%rax, 48(%rsp)                  # 8-byte Spill
.LBB0_28:                               # %sw.bb365
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	shrq	$16, %rax
	movb	%al, %dl
	movq	%rcx, %rax
	addq	$-1, %rax
	movb	%dl, -1(%rcx)
	movq	%rax, 56(%rsp)                  # 8-byte Spill
.LBB0_29:                               # %sw.bb370
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	104(%rsp), %rsi                 # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	shrq	$24, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, -1(%rdx)
	movq	%rcx, 832(%rsp)                 # 8-byte Spill
	movq	%rax, 840(%rsp)                 # 8-byte Spill
.LBB0_30:                               # %if.end407
	movq	1592(%rsp), %rax                # 8-byte Reload
	movq	1584(%rsp), %rdx                # 8-byte Reload
	movq	1560(%rsp), %rsi                # 8-byte Reload
	movq	1552(%rsp), %rdi                # 8-byte Reload
	movq	1544(%rsp), %r8                 # 8-byte Reload
	movq	1536(%rsp), %r10                # 8-byte Reload
	movq	1528(%rsp), %r11                # 8-byte Reload
	movq	1512(%rsp), %rbx                # 8-byte Reload
	movq	832(%rsp), %r9                  # 8-byte Reload
	movq	840(%rsp), %rcx                 # 8-byte Reload
	movq	%r9, %r14
	shrq	$24, %r14
	movb	%r14b, %bpl
	movb	%bpl, (%rbx)
	movq	%r9, %rbx
	shrq	$16, %rbx
                                        # kill: def $bl killed $bl killed $rbx
	movb	%bl, (%r11)
	movq	%r9, %r11
	shrq	$8, %r11
                                        # kill: def $r11b killed $r11b killed $r11
	movb	%r11b, (%r10)
                                        # kill: def $r9b killed $r9b killed $r9
	movb	%r9b, (%r8)
	movq	%rcx, %r8
	shrq	$24, %r8
                                        # kill: def $r8b killed $r8b killed $r8
	movb	%r8b, (%rdi)
	movq	%rcx, %rdi
	shrq	$16, %rdi
                                        # kill: def $dil killed $dil killed $rdi
	movb	%dil, (%rsi)
	movq	%rcx, %rsi
	shrq	$8, %rsi
                                        # kill: def $sil killed $sil killed $rsi
	movb	%sil, (%rdx)
                                        # kill: def $cl killed $cl killed $rcx
	movb	%cl, (%rax)
	addq	$1664, %rsp                     # imm = 0x680
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	BF_cbc_encrypt, .Lfunc_end0-BF_cbc_encrypt
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_16
	.quad	.LBB0_15
	.quad	.LBB0_14
	.quad	.LBB0_13
	.quad	.LBB0_12
	.quad	.LBB0_11
	.quad	.LBB0_10
	.quad	.LBB0_9
.LJTI0_1:
	.quad	.LBB0_29
	.quad	.LBB0_28
	.quad	.LBB0_27
	.quad	.LBB0_26
	.quad	.LBB0_25
	.quad	.LBB0_24
	.quad	.LBB0_23
	.quad	.LBB0_22
                                        # -- End function
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BF_encrypt
