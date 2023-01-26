	.text
	.file	"bf_skey.ll"
	.globl	BF_set_key                      # -- Begin function BF_set_key
	.p2align	4, 0x90
	.type	BF_set_key,@function
BF_set_key:                             # @BF_set_key
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movl	%esi, 68(%rsp)                  # 4-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	leaq	112(%rsp), %rax
	movabsq	$bf_init, %rsi
	movl	$8336, %edx                     # imm = 0x2090
	callq	memcpy@PLT
	movl	68(%rsp), %esi                  # 4-byte Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movl	$72, %eax
	cmpl	$72, %esi
	cmovgl	%eax, %esi
	movslq	%esi, %rcx
	movq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	$608135816, %ecx                # imm = 0x243F6A88
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rdi                  # 8-byte Reload
	movq	80(%rsp), %r9                   # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	104(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %r8
	addq	$1, %r8
	movzbl	(%rdx), %edx
                                        # kill: def $rdx killed $edx
	cmpq	%r9, %r8
	movq	%rdi, %r10
	cmovbq	%r8, %r10
	shlq	$8, %rdx
	movq	%r10, %r8
	addq	$1, %r8
	movzbl	(%r10), %r10d
                                        # kill: def $r10 killed $r10d
	orq	%r10, %rdx
	cmpq	%r9, %r8
	movq	%rdi, %r10
	cmovbq	%r8, %r10
	shlq	$8, %rdx
	movq	%r10, %r8
	addq	$1, %r8
	movzbl	(%r10), %r10d
                                        # kill: def $r10 killed $r10d
	orq	%r10, %rdx
	cmpq	%r9, %r8
	cmovbq	%r8, %rdi
	shlq	$8, %rdx
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movzbl	(%rdi), %edi
                                        # kill: def $rdi killed $edi
	orq	%rdi, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, (%rcx,%rax,8)
	addq	$1, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	cmpq	$18, %rax
	je	.LBB0_3
# %bb.2:                                # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	80(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rdi, %rsi
	cmovbq	%rsi, %rax
	movq	(%rdx,%rcx,8), %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB0_1
.LBB0_3:                                # %for.end
	leaq	112(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	112(%rsp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, (%rsi)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, 16(%rsi)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, 32(%rsi)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, 48(%rsi)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, 64(%rsi)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, 80(%rsi)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, 96(%rsi)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, 112(%rsi)
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	56(%rsp), %rax                  # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, 128(%rax)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB0_4:                                # %for.body50
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	$1, %edx
	callq	BF_encrypt@PLT
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	movdqa	112(%rsp), %xmm0
	movdqu	%xmm0, 144(%rcx,%rax,8)
	addq	$2, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	cmpq	$1024, %rax                     # imm = 0x400
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jl	.LBB0_4
# %bb.5:                                # %for.end61
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	BF_set_key, .Lfunc_end0-BF_set_key
	.cfi_endproc
                                        # -- End function
	.type	bf_init,@object                 # @bf_init
	.section	.rodata,"a",@progbits
	.p2align	3
bf_init:
	.quad	608135816                       # 0x243f6a88
	.quad	2242054355                      # 0x85a308d3
	.quad	320440878                       # 0x13198a2e
	.quad	57701188                        # 0x3707344
	.quad	2752067618                      # 0xa4093822
	.quad	698298832                       # 0x299f31d0
	.quad	137296536                       # 0x82efa98
	.quad	3964562569                      # 0xec4e6c89
	.quad	1160258022                      # 0x452821e6
	.quad	953160567                       # 0x38d01377
	.quad	3193202383                      # 0xbe5466cf
	.quad	887688300                       # 0x34e90c6c
	.quad	3232508343                      # 0xc0ac29b7
	.quad	3380367581                      # 0xc97c50dd
	.quad	1065670069                      # 0x3f84d5b5
	.quad	3041331479                      # 0xb5470917
	.quad	2450970073                      # 0x9216d5d9
	.quad	2306472731                      # 0x8979fb1b
	.quad	3509652390                      # 0xd1310ba6
	.quad	2564797868                      # 0x98dfb5ac
	.quad	805139163                       # 0x2ffd72db
	.quad	3491422135                      # 0xd01adfb7
	.quad	3101798381                      # 0xb8e1afed
	.quad	1780907670                      # 0x6a267e96
	.quad	3128725573                      # 0xba7c9045
	.quad	4046225305                      # 0xf12c7f99
	.quad	614570311                       # 0x24a19947
	.quad	3012652279                      # 0xb3916cf7
	.quad	134345442                       # 0x801f2e2
	.quad	2240740374                      # 0x858efc16
	.quad	1667834072                      # 0x636920d8
	.quad	1901547113                      # 0x71574e69
	.quad	2757295779                      # 0xa458fea3
	.quad	4103290238                      # 0xf4933d7e
	.quad	227898511                       # 0xd95748f
	.quad	1921955416                      # 0x728eb658
	.quad	1904987480                      # 0x718bcd58
	.quad	2182433518                      # 0x82154aee
	.quad	2069144605                      # 0x7b54a41d
	.quad	3260701109                      # 0xc25a59b5
	.quad	2620446009                      # 0x9c30d539
	.quad	720527379                       # 0x2af26013
	.quad	3318853667                      # 0xc5d1b023
	.quad	677414384                       # 0x286085f0
	.quad	3393288472                      # 0xca417918
	.quad	3101374703                      # 0xb8db38ef
	.quad	2390351024                      # 0x8e79dcb0
	.quad	1614419982                      # 0x603a180e
	.quad	1822297739                      # 0x6c9e0e8b
	.quad	2954791486                      # 0xb01e8a3e
	.quad	3608508353                      # 0xd71577c1
	.quad	3174124327                      # 0xbd314b27
	.quad	2024746970                      # 0x78af2fda
	.quad	1432378464                      # 0x55605c60
	.quad	3864339955                      # 0xe65525f3
	.quad	2857741204                      # 0xaa55ab94
	.quad	1464375394                      # 0x57489862
	.quad	1676153920                      # 0x63e81440
	.quad	1439316330                      # 0x55ca396a
	.quad	715854006                       # 0x2aab10b6
	.quad	3033291828                      # 0xb4cc5c34
	.quad	289532110                       # 0x1141e8ce
	.quad	2706671279                      # 0xa15486af
	.quad	2087905683                      # 0x7c72e993
	.quad	3018724369                      # 0xb3ee1411
	.quad	1668267050                      # 0x636fbc2a
	.quad	732546397                       # 0x2ba9c55d
	.quad	1947742710                      # 0x741831f6
	.quad	3462151702                      # 0xce5c3e16
	.quad	2609353502                      # 0x9b87931e
	.quad	2950085171                      # 0xafd6ba33
	.quad	1814351708                      # 0x6c24cf5c
	.quad	2050118529                      # 0x7a325381
	.quad	680887927                       # 0x28958677
	.quad	999245976                       # 0x3b8f4898
	.quad	1800124847                      # 0x6b4bb9af
	.quad	3300911131                      # 0xc4bfe81b
	.quad	1713906067                      # 0x66282193
	.quad	1641548236                      # 0x61d809cc
	.quad	4213287313                      # 0xfb21a991
	.quad	1216130144                      # 0x487cac60
	.quad	1575780402                      # 0x5dec8032
	.quad	4018429277                      # 0xef845d5d
	.quad	3917837745                      # 0xe98575b1
	.quad	3693486850                      # 0xdc262302
	.quad	3949271944                      # 0xeb651b88
	.quad	596196993                       # 0x23893e81
	.quad	3549867205                      # 0xd396acc5
	.quad	258830323                       # 0xf6d6ff3
	.quad	2213823033                      # 0x83f44239
	.quad	772490370                       # 0x2e0b4482
	.quad	2760122372                      # 0xa4842004
	.quad	1774776394                      # 0x69c8f04a
	.quad	2652871518                      # 0x9e1f9b5e
	.quad	566650946                       # 0x21c66842
	.quad	4142492826                      # 0xf6e96c9a
	.quad	1728879713                      # 0x670c9c61
	.quad	2882767088                      # 0xabd388f0
	.quad	1783734482                      # 0x6a51a0d2
	.quad	3629395816                      # 0xd8542f68
	.quad	2517608232                      # 0x960fa728
	.quad	2874225571                      # 0xab5133a3
	.quad	1861159788                      # 0x6eef0b6c
	.quad	326777828                       # 0x137a3be4
	.quad	3124490320                      # 0xba3bf050
	.quad	2130389656                      # 0x7efb2a98
	.quad	2716951837                      # 0xa1f1651d
	.quad	967770486                       # 0x39af0176
	.quad	1724537150                      # 0x66ca593e
	.quad	2185432712                      # 0x82430e88
	.quad	2364442137                      # 0x8cee8619
	.quad	1164943284                      # 0x456f9fb4
	.quad	2105845187                      # 0x7d84a5c3
	.quad	998989502                       # 0x3b8b5ebe
	.quad	3765401048                      # 0xe06f75d8
	.quad	2244026483                      # 0x85c12073
	.quad	1075463327                      # 0x401a449f
	.quad	1455516326                      # 0x56c16aa6
	.quad	1322494562                      # 0x4ed3aa62
	.quad	910128902                       # 0x363f7706
	.quad	469688178                       # 0x1bfedf72
	.quad	1117454909                      # 0x429b023d
	.quad	936433444                       # 0x37d0d724
	.quad	3490320968                      # 0xd00a1248
	.quad	3675253459                      # 0xdb0fead3
	.quad	1240580251                      # 0x49f1c09b
	.quad	122909385                       # 0x75372c9
	.quad	2157517691                      # 0x80991b7b
	.quad	634681816                       # 0x25d479d8
	.quad	4142456567                      # 0xf6e8def7
	.quad	3825094682                      # 0xe3fe501a
	.quad	3061402683                      # 0xb6794c3b
	.quad	2540495037                      # 0x976ce0bd
	.quad	79693498                        # 0x4c006ba
	.quad	3249098678                      # 0xc1a94fb6
	.quad	1084186820                      # 0x409f60c4
	.quad	1583128258                      # 0x5e5c9ec2
	.quad	426386531                       # 0x196a2463
	.quad	1761308591                      # 0x68fb6faf
	.quad	1047286709                      # 0x3e6c53b5
	.quad	322548459                       # 0x1339b2eb
	.quad	995290223                       # 0x3b52ec6f
	.quad	1845252383                      # 0x6dfc511f
	.quad	2603652396                      # 0x9b30952c
	.quad	3431023940                      # 0xcc814544
	.quad	2942221577                      # 0xaf5ebd09
	.quad	3202600964                      # 0xbee3d004
	.quad	3727903485                      # 0xde334afd
	.quad	1712269319                      # 0x660f2807
	.quad	422464435                       # 0x192e4bb3
	.quad	3234572375                      # 0xc0cba857
	.quad	1170764815                      # 0x45c8740f
	.quad	3523960633                      # 0xd20b5f39
	.quad	3117677531                      # 0xb9d3fbdb
	.quad	1434042557                      # 0x5579c0bd
	.quad	442511882                       # 0x1a60320a
	.quad	3600875718                      # 0xd6a100c6
	.quad	1076654713                      # 0x402c7279
	.quad	1738483198                      # 0x679f25fe
	.quad	4213154764                      # 0xfb1fa3cc
	.quad	2393238008                      # 0x8ea5e9f8
	.quad	3677496056                      # 0xdb3222f8
	.quad	1014306527                      # 0x3c7516df
	.quad	4251020053                      # 0xfd616b15
	.quad	793779912                       # 0x2f501ec8
	.quad	2902807211                      # 0xad0552ab
	.quad	842905082                       # 0x323db5fa
	.quad	4246964064                      # 0xfd238760
	.quad	1395751752                      # 0x53317b48
	.quad	1040244610                      # 0x3e00df82
	.quad	2656851899                      # 0x9e5c57bb
	.quad	3396308128                      # 0xca6f8ca0
	.quad	445077038                       # 0x1a87562e
	.quad	3742853595                      # 0xdf1769db
	.quad	3577915638                      # 0xd542a8f6
	.quad	679411651                       # 0x287effc3
	.quad	2892444358                      # 0xac6732c6
	.quad	2354009459                      # 0x8c4f5573
	.quad	1767581616                      # 0x695b27b0
	.quad	3150600392                      # 0xbbca58c8
	.quad	3791627101                      # 0xe1ffa35d
	.quad	3102740896                      # 0xb8f011a0
	.quad	284835224                       # 0x10fa3d98
	.quad	4246832056                      # 0xfd2183b8
	.quad	1258075500                      # 0x4afcb56c
	.quad	768725851                       # 0x2dd1d35b
	.quad	2589189241                      # 0x9a53e479
	.quad	3069724005                      # 0xb6f84565
	.quad	3532540348                      # 0xd28e49bc
	.quad	1274779536                      # 0x4bfb9790
	.quad	3789419226                      # 0xe1ddf2da
	.quad	2764799539                      # 0xa4cb7e33
	.quad	1660621633                      # 0x62fb1341
	.quad	3471099624                      # 0xcee4c6e8
	.quad	4011903706                      # 0xef20cada
	.quad	913787905                       # 0x36774c01
	.quad	3497959166                      # 0xd07e9efe
	.quad	737222580                       # 0x2bf11fb4
	.quad	2514213453                      # 0x95dbda4d
	.quad	2928710040                      # 0xae909198
	.quad	3937242737                      # 0xeaad8e71
	.quad	1804850592                      # 0x6b93d5a0
	.quad	3499020752                      # 0xd08ed1d0
	.quad	2949064160                      # 0xafc725e0
	.quad	2386320175                      # 0x8e3c5b2f
	.quad	2390070455                      # 0x8e7594b7
	.quad	2415321851                      # 0x8ff6e2fb
	.quad	4061277028                      # 0xf2122b64
	.quad	2290661394                      # 0x8888b812
	.quad	2416832540                      # 0x900df01c
	.quad	1336762016                      # 0x4fad5ea0
	.quad	1754252060                      # 0x688fc31c
	.quad	3520065937                      # 0xd1cff191
	.quad	3014181293                      # 0xb3a8c1ad
	.quad	791618072                       # 0x2f2f2218
	.quad	3188594551                      # 0xbe0e1777
	.quad	3933548030                      # 0xea752dfe
	.quad	2332172193                      # 0x8b021fa1
	.quad	3852520463                      # 0xe5a0cc0f
	.quad	3043980520                      # 0xb56f74e8
	.quad	413987798                       # 0x18acf3d6
	.quad	3465142937                      # 0xce89e299
	.quad	3030929376                      # 0xb4a84fe0
	.quad	4245938359                      # 0xfd13e0b7
	.quad	2093235073                      # 0x7cc43b81
	.quad	3534596313                      # 0xd2ada8d9
	.quad	375366246                       # 0x165fa266
	.quad	2157278981                      # 0x80957705
	.quad	2479649556                      # 0x93cc7314
	.quad	555357303                       # 0x211a1477
	.quad	3870105701                      # 0xe6ad2065
	.quad	2008414854                      # 0x77b5fa86
	.quad	3344188149                      # 0xc75442f5
	.quad	4221384143                      # 0xfb9d35cf
	.quad	3956125452                      # 0xebcdaf0c
	.quad	2067696032                      # 0x7b3e89a0
	.quad	3594591187                      # 0xd6411bd3
	.quad	2921233993                      # 0xae1e7e49
	.quad	2428461                         # 0x250e2d
	.quad	544322398                       # 0x2071b35e
	.quad	577241275                       # 0x226800bb
	.quad	1471733935                      # 0x57b8e0af
	.quad	610547355                       # 0x2464369b
	.quad	4027169054                      # 0xf009b91e
	.quad	1432588573                      # 0x5563911d
	.quad	1507829418                      # 0x59dfa6aa
	.quad	2025931657                      # 0x78c14389
	.quad	3646575487                      # 0xd95a537f
	.quad	545086370                       # 0x207d5ba2
	.quad	48609733                        # 0x2e5b9c5
	.quad	2200306550                      # 0x83260376
	.quad	1653985193                      # 0x6295cfa9
	.quad	298326376                       # 0x11c81968
	.quad	1316178497                      # 0x4e734a41
	.quad	3007786442                      # 0xb3472dca
	.quad	2064951626                      # 0x7b14a94a
	.quad	458293330                       # 0x1b510052
	.quad	2589141269                      # 0x9a532915
	.quad	3591329599                      # 0xd60f573f
	.quad	3164325604                      # 0xbc9bc6e4
	.quad	727753846                       # 0x2b60a476
	.quad	2179363840                      # 0x81e67400
	.quad	146436021                       # 0x8ba6fb5
	.quad	1461446943                      # 0x571be91f
	.quad	4069977195                      # 0xf296ec6b
	.quad	705550613                       # 0x2a0dd915
	.quad	3059967265                      # 0xb6636521
	.quad	3887724982                      # 0xe7b9f9b6
	.quad	4281599278                      # 0xff34052e
	.quad	3313849956                      # 0xc5855664
	.quad	1404054877                      # 0x53b02d5d
	.quad	2845806497                      # 0xa99f8fa1
	.quad	146425753                       # 0x8ba4799
	.quad	1854211946                      # 0x6e85076a
	.quad	1266315497                      # 0x4b7a70e9
	.quad	3048417604                      # 0xb5b32944
	.quad	3681880366                      # 0xdb75092e
	.quad	3289982499                      # 0xc4192623
	.quad	2909710000                      # 0xad6ea6b0
	.quad	1235738493                      # 0x49a7df7d
	.quad	2632868024                      # 0x9cee60b8
	.quad	2414719590                      # 0x8fedb266
	.quad	3970600049                      # 0xecaa8c71
	.quad	1771706367                      # 0x699a17ff
	.quad	1449415276                      # 0x5664526c
	.quad	3266420449                      # 0xc2b19ee1
	.quad	422970021                       # 0x193602a5
	.quad	1963543593                      # 0x75094c29
	.quad	2690192192                      # 0xa0591340
	.quad	3826793022                      # 0xe4183a3e
	.quad	1062508698                      # 0x3f54989a
	.quad	1531092325                      # 0x5b429d65
	.quad	1804592342                      # 0x6b8fe4d6
	.quad	2583117782                      # 0x99f73fd6
	.quad	2714934279                      # 0xa1d29c07
	.quad	4024971509                      # 0xefe830f5
	.quad	1294809318                      # 0x4d2d38e6
	.quad	4028980673                      # 0xf0255dc1
	.quad	1289560198                      # 0x4cdd2086
	.quad	2221992742                      # 0x8470eb26
	.quad	1669523910                      # 0x6382e9c6
	.quad	35572830                        # 0x21ecc5e
	.quad	157838143                       # 0x9686b3f
	.quad	1052438473                      # 0x3ebaefc9
	.quad	1016535060                      # 0x3c971814
	.quad	1802137761                      # 0x6b6a70a1
	.quad	1753167236                      # 0x687f3584
	.quad	1386275462                      # 0x52a0e286
	.quad	3080475397                      # 0xb79c5305
	.quad	2857371447                      # 0xaa500737
	.quad	1040679964                      # 0x3e07841c
	.quad	2145300060                      # 0x7fdeae5c
	.quad	2390574316                      # 0x8e7d44ec
	.quad	1461121720                      # 0x5716f2b8
	.quad	2956646967                      # 0xb03ada37
	.quad	4031777805                      # 0xf0500c0d
	.quad	4028374788                      # 0xf01c1f04
	.quad	33600511                        # 0x200b3ff
	.quad	2920084762                      # 0xae0cf51a
	.quad	1018524850                      # 0x3cb574b2
	.quad	629373528                       # 0x25837a58
	.quad	3691585981                      # 0xdc0921bd
	.quad	3515945977                      # 0xd19113f9
	.quad	2091462646                      # 0x7ca92ff6
	.quad	2486323059                      # 0x94324773
	.quad	586499841                       # 0x22f54701
	.quad	988145025                       # 0x3ae5e581
	.quad	935516892                       # 0x37c2dadc
	.quad	3367335476                      # 0xc8b57634
	.quad	2599673255                      # 0x9af3dda7
	.quad	2839830854                      # 0xa9446146
	.quad	265290510                       # 0xfd0030e
	.quad	3972581182                      # 0xecc8c73e
	.quad	2759138881                      # 0xa4751e41
	.quad	3795373465                      # 0xe238cd99
	.quad	1005194799                      # 0x3bea0e2f
	.quad	847297441                       # 0x3280bba1
	.quad	406762289                       # 0x183eb331
	.quad	1314163512                      # 0x4e548b38
	.quad	1332590856                      # 0x4f6db908
	.quad	1866599683                      # 0x6f420d03
	.quad	4127851711                      # 0xf60a04bf
	.quad	750260880                       # 0x2cb81290
	.quad	613907577                       # 0x24977c79
	.quad	1450815602                      # 0x5679b072
	.quad	3165620655                      # 0xbcaf89af
	.quad	3734664991                      # 0xde9a771f
	.quad	3650291728                      # 0xd9930810
	.quad	3012275730                      # 0xb38bae12
	.quad	3704569646                      # 0xdccf3f2e
	.quad	1427272223                      # 0x5512721f
	.quad	778793252                       # 0x2e6b7124
	.quad	1343938022                      # 0x501adde6
	.quad	2676280711                      # 0x9f84cd87
	.quad	2052605720                      # 0x7a584718
	.quad	1946737175                      # 0x7408da17
	.quad	3164576444                      # 0xbc9f9abc
	.quad	3914038668                      # 0xe94b7d8c
	.quad	3967478842                      # 0xec7aec3a
	.quad	3682934266                      # 0xdb851dfa
	.quad	1661551462                      # 0x63094366
	.quad	3294938066                      # 0xc464c3d2
	.quad	4011595847                      # 0xef1c1847
	.quad	840292616                       # 0x3215d908
	.quad	3712170807                      # 0xdd433b37
	.quad	616741398                       # 0x24c2ba16
	.quad	312560963                       # 0x12a14d43
	.quad	711312465                       # 0x2a65c451
	.quad	1351876610                      # 0x50940002
	.quad	322626781                       # 0x133ae4dd
	.quad	1910503582                      # 0x71dff89e
	.quad	271666773                       # 0x10314e55
	.quad	2175563734                      # 0x81ac77d6
	.quad	1594956187                      # 0x5f11199b
	.quad	70604529                        # 0x43556f1
	.quad	3617834859                      # 0xd7a3c76b
	.quad	1007753275                      # 0x3c11183b
	.quad	1495573769                      # 0x5924a509
	.quad	4069517037                      # 0xf28fe6ed
	.quad	2549218298                      # 0x97f1fbfa
	.quad	2663038764                      # 0x9ebabf2c
	.quad	504708206                       # 0x1e153c6e
	.quad	2263041392                      # 0x86e34570
	.quad	3941167025                      # 0xeae96fb1
	.quad	2249088522                      # 0x860e5e0a
	.quad	1514023603                      # 0x5a3e2ab3
	.quad	1998579484                      # 0x771fe71c
	.quad	1312622330                      # 0x4e3d06fa
	.quad	694541497                       # 0x2965dcb9
	.quad	2582060303                      # 0x99e71d0f
	.quad	2151582166                      # 0x803e89d6
	.quad	1382467621                      # 0x5266c825
	.quad	776784248                       # 0x2e4cc978
	.quad	2618340202                      # 0x9c10b36a
	.quad	3323268794                      # 0xc6150eba
	.quad	2497899128                      # 0x94e2ea78
	.quad	2784771155                      # 0xa5fc3c53
	.quad	503983604                       # 0x1e0a2df4
	.quad	4076293799                      # 0xf2f74ea7
	.quad	907881277                       # 0x361d2b3d
	.quad	423175695                       # 0x1939260f
	.quad	432175456                       # 0x19c27960
	.quad	1378068232                      # 0x5223a708
	.quad	4145222326                      # 0xf71312b6
	.quad	3954048622                      # 0xebadfe6e
	.quad	3938656102                      # 0xeac31f66
	.quad	3820766613                      # 0xe3bc4595
	.quad	2793130115                      # 0xa67bc883
	.quad	2977904593                      # 0xb17f37d1
	.quad	26017576                        # 0x18cff28
	.quad	3274890735                      # 0xc332ddef
	.quad	3194772133                      # 0xbe6c5aa5
	.quad	1700274565                      # 0x65582185
	.quad	1756076034                      # 0x68ab9802
	.quad	4006520079                      # 0xeecea50f
	.quad	3677328699                      # 0xdb2f953b
	.quad	720338349                       # 0x2aef7dad
	.quad	1533947780                      # 0x5b6e2f84
	.quad	354530856                       # 0x1521b628
	.quad	688349552                       # 0x29076170
	.quad	3973924725                      # 0xecdd4775
	.quad	1637815568                      # 0x619f1510
	.quad	332179504                       # 0x13cca830
	.quad	3949051286                      # 0xeb61bd96
	.quad	53804574                        # 0x334fe1e
	.quad	2852348879                      # 0xaa0363cf
	.quad	3044236432                      # 0xb5735c90
	.quad	1282449977                      # 0x4c70a239
	.quad	3583942155                      # 0xd59e9e0b
	.quad	3416972820                      # 0xcbaade14
	.quad	4006381244                      # 0xeecc86bc
	.quad	1617046695                      # 0x60622ca7
	.quad	2628476075                      # 0x9cab5cab
	.quad	3002303598                      # 0xb2f3846e
	.quad	1686838959                      # 0x648b1eaf
	.quad	431878346                       # 0x19bdf0ca
	.quad	2686675385                      # 0xa02369b9
	.quad	1700445008                      # 0x655abb50
	.quad	1080580658                      # 0x40685a32
	.quad	1009431731                      # 0x3c2ab4b3
	.quad	832498133                       # 0x319ee9d5
	.quad	3223435511                      # 0xc021b8f7
	.quad	2605976345                      # 0x9b540b19
	.quad	2271191193                      # 0x875fa099
	.quad	2516031870                      # 0x95f7997e
	.quad	1648197032                      # 0x623d7da8
	.quad	4164389018                      # 0xf837889a
	.quad	2548247927                      # 0x97e32d77
	.quad	300782431                       # 0x11ed935f
	.quad	375919233                       # 0x16681281
	.quad	238389289                       # 0xe358829
	.quad	3353747414                      # 0xc7e61fd6
	.quad	2531188641                      # 0x96dedfa1
	.quad	2019080857                      # 0x7858ba99
	.quad	1475708069                      # 0x57f584a5
	.quad	455242339                       # 0x1b227263
	.quad	2609103871                      # 0x9b83c3ff
	.quad	448939670                       # 0x1ac24696
	.quad	3451063019                      # 0xcdb30aeb
	.quad	1395535956                      # 0x532e3054
	.quad	2413381860                      # 0x8fd948e4
	.quad	1841049896                      # 0x6dbc3128
	.quad	1491858159                      # 0x58ebf2ef
	.quad	885456874                       # 0x34c6ffea
	.quad	4264095073                      # 0xfe28ed61
	.quad	4001119347                      # 0xee7c3c73
	.quad	1565136089                      # 0x5d4a14d9
	.quad	3898914787                      # 0xe864b7e3
	.quad	1108368660                      # 0x42105d14
	.quad	540939232                       # 0x203e13e0
	.quad	1173283510                      # 0x45eee2b6
	.quad	2745871338                      # 0xa3aaabea
	.quad	3681308437                      # 0xdb6c4f15
	.quad	4207628240                      # 0xfacb4fd0
	.quad	3343053890                      # 0xc742f442
	.quad	4016749493                      # 0xef6abbb5
	.quad	1699691293                      # 0x654f3b1d
	.quad	1103962373                      # 0x41cd2105
	.quad	3625875870                      # 0xd81e799e
	.quad	2256883143                      # 0x86854dc7
	.quad	3830138730                      # 0xe44b476a
	.quad	1031889488                      # 0x3d816250
	.quad	3479347698                      # 0xcf62a1f2
	.quad	1535977030                      # 0x5b8d2646
	.quad	4236805024                      # 0xfc8883a0
	.quad	3251091107                      # 0xc1c7b6a3
	.quad	2132092099                      # 0x7f1524c3
	.quad	1774941330                      # 0x69cb7492
	.quad	1199868427                      # 0x47848a0b
	.quad	1452454533                      # 0x5692b285
	.quad	157007616                       # 0x95bbf00
	.quad	2904115357                      # 0xad19489d
	.quad	342012276                       # 0x1462b174
	.quad	595725824                       # 0x23820e00
	.quad	1480756522                      # 0x58428d2a
	.quad	206960106                       # 0xc55f5ea
	.quad	497939518                       # 0x1dadf43e
	.quad	591360097                       # 0x233f7061
	.quad	863170706                       # 0x3372f092
	.quad	2375253569                      # 0x8d937e41
	.quad	3596610801                      # 0xd65fecf1
	.quad	1814182875                      # 0x6c223bdb
	.quad	2094937945                      # 0x7cde3759
	.quad	3421402208                      # 0xcbee7460
	.quad	1082520231                      # 0x4085f2a7
	.quad	3463918190                      # 0xce77326e
	.quad	2785509508                      # 0xa6078084
	.quad	435703966                       # 0x19f8509e
	.quad	3908032597                      # 0xe8efd855
	.quad	1641649973                      # 0x61d99735
	.quad	2842273706                      # 0xa969a7aa
	.quad	3305899714                      # 0xc50c06c2
	.quad	1510255612                      # 0x5a04abfc
	.quad	2148256476                      # 0x800bcadc
	.quad	2655287854                      # 0x9e447a2e
	.quad	3276092548                      # 0xc3453484
	.quad	4258621189                      # 0xfdd56705
	.quad	236887753                       # 0xe1e9ec9
	.quad	3681803219                      # 0xdb73dbd3
	.quad	274041037                       # 0x105588cd
	.quad	1734335097                      # 0x675fda79
	.quad	3815195456                      # 0xe3674340
	.quad	3317970021                      # 0xc5c43465
	.quad	1899903192                      # 0x713e38d8
	.quad	1026095262                      # 0x3d28f89e
	.quad	4050517792                      # 0xf16dff20
	.quad	356393447                       # 0x153e21e7
	.quad	2410691914                      # 0x8fb03d4a
	.quad	3873677099                      # 0xe6e39f2b
	.quad	3682840055                      # 0xdb83adf7
	.quad	3913112168                      # 0xe93d5a68
	.quad	2491498743                      # 0x948140f7
	.quad	4132185628                      # 0xf64c261c
	.quad	2489919796                      # 0x94692934
	.quad	1091903735                      # 0x411520f7
	.quad	1979897079                      # 0x7602d4f7
	.quad	3170134830                      # 0xbcf46b2e
	.quad	3567386728                      # 0xd4a20068
	.quad	3557303409                      # 0xd4082471
	.quad	857797738                       # 0x3320f46a
	.quad	1136121015                      # 0x43b7d4b7
	.quad	1342202287                      # 0x500061af
	.quad	507115054                       # 0x1e39f62e
	.quad	2535736646                      # 0x97244546
	.quad	337727348                       # 0x14214f74
	.quad	3213592640                      # 0xbf8b8840
	.quad	1301675037                      # 0x4d95fc1d
	.quad	2528481711                      # 0x96b591af
	.quad	1895095763                      # 0x70f4ddd3
	.quad	1721773893                      # 0x66a02f45
	.quad	3216771564                      # 0xbfbc09ec
	.quad	62756741                        # 0x3bd9785
	.quad	2142006736                      # 0x7fac6dd0
	.quad	835421444                       # 0x31cb8504
	.quad	2531993523                      # 0x96eb27b3
	.quad	1442658625                      # 0x55fd3941
	.quad	3659876326                      # 0xda2547e6
	.quad	2882144922                      # 0xabca0a9a
	.quad	676362277                       # 0x28507825
	.quad	1392781812                      # 0x530429f4
	.quad	170690266                       # 0xa2c86da
	.quad	3921047035                      # 0xe9b66dfb
	.quad	1759253602                      # 0x68dc1462
	.quad	3611846912                      # 0xd7486900
	.quad	1745797284                      # 0x680ec0a4
	.quad	664899054                       # 0x27a18dee
	.quad	1329594018                      # 0x4f3ffea2
	.quad	3901205900                      # 0xe887ad8c
	.quad	3045908486                      # 0xb58ce006
	.quad	2062866102                      # 0x7af4d6b6
	.quad	2865634940                      # 0xaace1e7c
	.quad	3543621612                      # 0xd3375fec
	.quad	3464012697                      # 0xce78a399
	.quad	1080764994                      # 0x406b2a42
	.quad	553557557                       # 0x20fe9e35
	.quad	3656615353                      # 0xd9f385b9
	.quad	3996768171                      # 0xee39d7ab
	.quad	991055499                       # 0x3b124e8b
	.quad	499776247                       # 0x1dc9faf7
	.quad	1265440854                      # 0x4b6d1856
	.quad	648242737                       # 0x26a36631
	.quad	3940784050                      # 0xeae397b2
	.quad	980351604                       # 0x3a6efa74
	.quad	3713745714                      # 0xdd5b4332
	.quad	1749149687                      # 0x6841e7f7
	.quad	3396870395                      # 0xca7820fb
	.quad	4211799374                      # 0xfb0af54e
	.quad	3640570775                      # 0xd8feb397
	.quad	1161844396                      # 0x454056ac
	.quad	3125318951                      # 0xba489527
	.quad	1431517754                      # 0x55533a3a
	.quad	545492359                       # 0x20838d87
	.quad	4268468663                      # 0xfe6ba9b7
	.quad	3499529547                      # 0xd096954b
	.quad	1437099964                      # 0x55a867bc
	.quad	2702547544                      # 0xa1159a58
	.quad	3433638243                      # 0xcca92963
	.quad	2581715763                      # 0x99e1db33
	.quad	2787789398                      # 0xa62a4a56
	.quad	1060185593                      # 0x3f3125f9
	.quad	1593081372                      # 0x5ef47e1c
	.quad	2418618748                      # 0x9029317c
	.quad	4260947970                      # 0xfdf8e802
	.quad	69676912                        # 0x4272f70
	.quad	2159744348                      # 0x80bb155c
	.quad	86519011                        # 0x5282ce3
	.quad	2512459080                      # 0x95c11548
	.quad	3838209314                      # 0xe4c66d22
	.quad	1220612927                      # 0x48c1133f
	.quad	3339683548                      # 0xc70f86dc
	.quad	133810670                       # 0x7f9c9ee
	.quad	1090789135                      # 0x41041f0f
	.quad	1078426020                      # 0x404779a4
	.quad	1569222167                      # 0x5d886e17
	.quad	845107691                       # 0x325f51eb
	.quad	3583754449                      # 0xd59bc0d1
	.quad	4072456591                      # 0xf2bcc18f
	.quad	1091646820                      # 0x41113564
	.quad	628848692                       # 0x257b7834
	.quad	1613405280                      # 0x602a9c60
	.quad	3757631651                      # 0xdff8e8a3
	.quad	526609435                       # 0x1f636c1b
	.quad	236106946                       # 0xe12b4c2
	.quad	48312990                        # 0x2e1329e
	.quad	2942717905                      # 0xaf664fd1
	.quad	3402727701                      # 0xcad18115
	.quad	1797494240                      # 0x6b2395e0
	.quad	859738849                       # 0x333e92e1
	.quad	992217954                       # 0x3b240b62
	.quad	4005476642                      # 0xeebeb922
	.quad	2243076622                      # 0x85b2a20e
	.quad	3870952857                      # 0xe6ba0d99
	.quad	3732016268                      # 0xde720c8c
	.quad	765654824                       # 0x2da2f728
	.quad	3490871365                      # 0xd0127845
	.quad	2511836413                      # 0x95b794fd
	.quad	1685915746                      # 0x647d0862
	.quad	3888969200                      # 0xe7ccf5f0
	.quad	1414112111                      # 0x5449a36f
	.quad	2273134842                      # 0x877d48fa
	.quad	3281911079                      # 0xc39dfd27
	.quad	4080962846                      # 0xf33e8d1e
	.quad	172450625                       # 0xa476341
	.quad	2569994100                      # 0x992eff74
	.quad	980381355                       # 0x3a6f6eab
	.quad	4109958455                      # 0xf4f8fd37
	.quad	2819808352                      # 0xa812dc60
	.quad	2716589560                      # 0xa1ebddf8
	.quad	2568741196                      # 0x991be14c
	.quad	3681446669                      # 0xdb6e6b0d
	.quad	3329971472                      # 0xc67b5510
	.quad	1835478071                      # 0x6d672c37
	.quad	660984891                       # 0x2765d43b
	.quad	3704678404                      # 0xdcd0e804
	.quad	4045999559                      # 0xf1290dc7
	.quad	3422617507                      # 0xcc00ffa3
	.quad	3040415634                      # 0xb5390f92
	.quad	1762651403                      # 0x690fed0b
	.quad	1719377915                      # 0x667b9ffb
	.quad	3470491036                      # 0xcedb7d9c
	.quad	2693910283                      # 0xa091cf0b
	.quad	3642056355                      # 0xd9155ea3
	.quad	3138596744                      # 0xbb132f88
	.quad	1364962596                      # 0x515bad24
	.quad	2073328063                      # 0x7b9479bf
	.quad	1983633131                      # 0x763bd6eb
	.quad	926494387                       # 0x37392eb3
	.quad	3423689081                      # 0xcc115979
	.quad	2150032023                      # 0x8026e297
	.quad	4096667949                      # 0xf42e312d
	.quad	1749200295                      # 0x6842ada7
	.quad	3328846651                      # 0xc66a2b3b
	.quad	309677260                       # 0x12754ccc
	.quad	2016342300                      # 0x782ef11c
	.quad	1779581495                      # 0x6a124237
	.quad	3079819751                      # 0xb79251e7
	.quad	111262694                       # 0x6a1bbe6
	.quad	1274766160                      # 0x4bfb6350
	.quad	443224088                       # 0x1a6b1018
	.quad	298511866                       # 0x11caedfa
	.quad	1025883608                      # 0x3d25bdd8
	.quad	3806446537                      # 0xe2e1c3c9
	.quad	1145181785                      # 0x44421659
	.quad	168956806                       # 0xa121386
	.quad	3641502830                      # 0xd90cec6e
	.quad	3584813610                      # 0xd5abea2a
	.quad	1689216846                      # 0x64af674e
	.quad	3666258015                      # 0xda86a85f
	.quad	3200248200                      # 0xbebfe988
	.quad	1692713982                      # 0x64e4c3fe
	.quad	2646376535                      # 0x9dbc8057
	.quad	4042768518                      # 0xf0f7c086
	.quad	1618508792                      # 0x60787bf8
	.quad	1610833997                      # 0x6003604d
	.quad	3523052358                      # 0xd1fd8346
	.quad	4130873264                      # 0xf6381fb0
	.quad	2001055236                      # 0x7745ae04
	.quad	3610705100                      # 0xd736fccc
	.quad	2202168115                      # 0x83426b33
	.quad	4028541809                      # 0xf01eab71
	.quad	2961195399                      # 0xb0804187
	.quad	1006657119                      # 0x3c005e5f
	.quad	2006996926                      # 0x77a057be
	.quad	3186142756                      # 0xbde8ae24
	.quad	1430667929                      # 0x55464299
	.quad	3210227297                      # 0xbf582e61
	.quad	1314452623                      # 0x4e58f48f
	.quad	4074634658                      # 0xf2ddfda2
	.quad	4101304120                      # 0xf474ef38
	.quad	2273951170                      # 0x8789bdc2
	.quad	1399257539                      # 0x5366f9c3
	.quad	3367210612                      # 0xc8b38e74
	.quad	3027628629                      # 0xb475f255
	.quad	1190975929                      # 0x46fcd9b9
	.quad	2062231137                      # 0x7aeb2661
	.quad	2333990788                      # 0x8b1ddf84
	.quad	2221543033                      # 0x846a0e79
	.quad	2438960610                      # 0x915f95e2
	.quad	1181637006                      # 0x466e598e
	.quad	548689776                       # 0x20b45770
	.quad	2362791313                      # 0x8cd55591
	.quad	3372408396                      # 0xc902de4c
	.quad	3104550113                      # 0xb90bace1
	.quad	3145860560                      # 0xbb8205d0
	.quad	296247880                       # 0x11a86248
	.quad	1970579870                      # 0x7574a99e
	.quad	3078560182                      # 0xb77f19b6
	.quad	3769228297                      # 0xe0a9dc09
	.quad	1714227617                      # 0x662d09a1
	.quad	3291629107                      # 0xc4324633
	.quad	3898220290                      # 0xe85a1f02
	.quad	166772364                       # 0x9f0be8c
	.quad	1251581989                      # 0x4a99a025
	.quad	493813264                       # 0x1d6efe10
	.quad	448347421                       # 0x1ab93d1d
	.quad	195405023                       # 0xba5a4df
	.quad	2709975567                      # 0xa186f20f
	.quad	677966185                       # 0x2868f169
	.quad	3703036547                      # 0xdcb7da83
	.quad	1463355134                      # 0x573906fe
	.quad	2715995803                      # 0xa1e2ce9b
	.quad	1338867538                      # 0x4fcd7f52
	.quad	1343315457                      # 0x50115e01
	.quad	2802222074                      # 0xa70683fa
	.quad	2684532164                      # 0xa002b5c4
	.quad	233230375                       # 0xde6d027
	.quad	2599980071                      # 0x9af88c27
	.quad	2000651841                      # 0x773f8641
	.quad	3277868038                      # 0xc3604c06
	.quad	1638401717                      # 0x61a806b5
	.quad	4028070440                      # 0xf0177a28
	.quad	3237316320                      # 0xc0f586e0
	.quad	6314154                         # 0x6058aa
	.quad	819756386                       # 0x30dc7d62
	.quad	300326615                       # 0x11e69ed7
	.quad	590932579                       # 0x2338ea63
	.quad	1405279636                      # 0x53c2dd94
	.quad	3267499572                      # 0xc2c21634
	.quad	3150704214                      # 0xbbcbee56
	.quad	2428286686                      # 0x90bcb6de
	.quad	3959192993                      # 0xebfc7da1
	.quad	3461946742                      # 0xce591d76
	.quad	1862657033                      # 0x6f05e409
	.quad	1266418056                      # 0x4b7c0188
	.quad	963775037                       # 0x39720a3d
	.quad	2089974820                      # 0x7c927c24
	.quad	2263052895                      # 0x86e3725f
	.quad	1917689273                      # 0x724d9db9
	.quad	448879540                       # 0x1ac15bb4
	.quad	3550394620                      # 0xd39eb8fc
	.quad	3981727096                      # 0xed545578
	.quad	150775221                       # 0x8fca5b5
	.quad	3627908307                      # 0xd83d7cd3
	.quad	1303187396                      # 0x4dad0fc4
	.quad	508620638                       # 0x1e50ef5e
	.quad	2975983352                      # 0xb161e6f8
	.quad	2726630617                      # 0xa28514d9
	.quad	1817252668                      # 0x6c51133c
	.quad	1876281319                      # 0x6fd5c7e7
	.quad	1457606340                      # 0x56e14ec4
	.quad	908771278                       # 0x362abfce
	.quad	3720792119                      # 0xddc6c837
	.quad	3617206836                      # 0xd79a3234
	.quad	2455994898                      # 0x92638212
	.quad	1729034894                      # 0x670efa8e
	.quad	1080033504                      # 0x406000e0
	.quad	976866871                       # 0x3a39ce37
	.quad	3556439503                      # 0xd3faf5cf
	.quad	2881648439                      # 0xabc27737
	.quad	1522871579                      # 0x5ac52d1b
	.quad	1555064734                      # 0x5cb0679e
	.quad	1336096578                      # 0x4fa33742
	.quad	3548522304                      # 0xd3822740
	.quad	2579274686                      # 0x99bc9bbe
	.quad	3574697629                      # 0xd5118e9d
	.quad	3205460757                      # 0xbf0f7315
	.quad	3593280638                      # 0xd62d1c7e
	.quad	3338716283                      # 0xc700c47b
	.quad	3079412587                      # 0xb78c1b6b
	.quad	564236357                       # 0x21a19045
	.quad	2993598910                      # 0xb26eb1be
	.quad	1781952180                      # 0x6a366eb4
	.quad	1464380207                      # 0x5748ab2f
	.quad	3163844217                      # 0xbc946e79
	.quad	3332601554                      # 0xc6a376d2
	.quad	1699332808                      # 0x6549c2c8
	.quad	1393555694                      # 0x530ff8ee
	.quad	1183702653                      # 0x468dde7d
	.quad	3581086237                      # 0xd5730a1d
	.quad	1288719814                      # 0x4cd04dc6
	.quad	691649499                       # 0x2939bbdb
	.quad	2847557200                      # 0xa9ba4650
	.quad	2895455976                      # 0xac9526e8
	.quad	3193889540                      # 0xbe5ee304
	.quad	2717570544                      # 0xa1fad5f0
	.quad	1781354906                      # 0x6a2d519a
	.quad	1676643554                      # 0x63ef8ce2
	.quad	2592534050                      # 0x9a86ee22
	.quad	3230253752                      # 0xc089c2b8
	.quad	1126444790                      # 0x43242ef6
	.quad	2770207658                      # 0xa51e03aa
	.quad	2633158820                      # 0x9cf2d0a4
	.quad	2210423226                      # 0x83c061ba
	.quad	2615765581                      # 0x9be96a4d
	.quad	2414155088                      # 0x8fe51550
	.quad	3127139286                      # 0xba645bd6
	.quad	673620729                       # 0x2826a2f9
	.quad	2805611233                      # 0xa73a3ae1
	.quad	1269405062                      # 0x4ba99586
	.quad	4015350505                      # 0xef5562e9
	.quad	3341807571                      # 0xc72fefd3
	.quad	4149409754                      # 0xf752f7da
	.quad	1057255273                      # 0x3f046f69
	.quad	2012875353                      # 0x77fa0a59
	.quad	2162469141                      # 0x80e4a915
	.quad	2276492801                      # 0x87b08601
	.quad	2601117357                      # 0x9b09e6ad
	.quad	993977747                       # 0x3b3ee593
	.quad	3918593370                      # 0xe990fd5a
	.quad	2654263191                      # 0x9e34d797
	.quad	753973209                       # 0x2cf0b7d9
	.quad	36408145                        # 0x22b8b51
	.quad	2530585658                      # 0x96d5ac3a
	.quad	25011837                        # 0x17da67d
	.quad	3520020182                      # 0xd1cf3ed6
	.quad	2088578344                      # 0x7c7d2d28
	.quad	530523599                       # 0x1f9f25cf
	.quad	2918365339                      # 0xadf2b89b
	.quad	1524020338                      # 0x5ad6b472
	.quad	1518925132                      # 0x5a88f54c
	.quad	3760827505                      # 0xe029ac71
	.quad	3759777254                      # 0xe019a5e6
	.quad	1202760957                      # 0x47b0acfd
	.quad	3985898139                      # 0xed93fa9b
	.quad	3906192525                      # 0xe8d3c48d
	.quad	674977740                       # 0x283b57cc
	.quad	4174734889                      # 0xf8d56629
	.quad	2031300136                      # 0x79132e28
	.quad	2019492241                      # 0x785f0191
	.quad	3983892565                      # 0xed756055
	.quad	4153806404                      # 0xf7960e44
	.quad	3822280332                      # 0xe3d35e8c
	.quad	352677332                       # 0x15056dd4
	.quad	2297720250                      # 0x88f46dba
	.quad	60907813                        # 0x3a16125
	.quad	90501309                        # 0x564f0bd
	.quad	3286998549                      # 0xc3eb9e15
	.quad	1016092578                      # 0x3c9057a2
	.quad	2535922412                      # 0x97271aec
	.quad	2839152426                      # 0xa93a072a
	.quad	457141659                       # 0x1b3f6d9b
	.quad	509813237                       # 0x1e6321f5
	.quad	4120667899                      # 0xf59c66fb
	.quad	652014361                       # 0x26dcf319
	.quad	1966332200                      # 0x7533d928
	.quad	2975202805                      # 0xb155fdf5
	.quad	55981186                        # 0x3563482
	.quad	2327461051                      # 0x8aba3cbb
	.quad	676427537                       # 0x28517711
	.quad	3255491064                      # 0xc20ad9f8
	.quad	2882294119                      # 0xabcc5167
	.quad	3433927263                      # 0xccad925f
	.quad	1307055953                      # 0x4de81751
	.quad	942726286                       # 0x3830dc8e
	.quad	933058658                       # 0x379d5862
	.quad	2468411793                      # 0x9320f991
	.quad	3933900994                      # 0xea7a90c2
	.quad	4215176142                      # 0xfb3e7bce
	.quad	1361170020                      # 0x5121ce64
	.quad	2001714738                      # 0x774fbe32
	.quad	2830558078                      # 0xa8b6e37e
	.quad	3274259782                      # 0xc3293d46
	.quad	1222529897                      # 0x48de5369
	.quad	1679025792                      # 0x6413e680
	.quad	2729314320                      # 0xa2ae0810
	.quad	3714953764                      # 0xdd6db224
	.quad	1770335741                      # 0x69852dfd
	.quad	151462246                       # 0x9072166
	.quad	3013232138                      # 0xb39a460a
	.quad	1682292957                      # 0x6445c0dd
	.quad	1483529935                      # 0x586cdecf
	.quad	471910574                       # 0x1c20c8ae
	.quad	1539241949                      # 0x5bbef7dd
	.quad	458788160                       # 0x1b588d40
	.quad	3436315007                      # 0xccd2017f
	.quad	1807016891                      # 0x6bb4e3bb
	.quad	3718408830                      # 0xdda26a7e
	.quad	978976581                       # 0x3a59ff45
	.quad	1043663428                      # 0x3e350a44
	.quad	3165965781                      # 0xbcb4cdd5
	.quad	1927990952                      # 0x72eacea8
	.quad	4200891579                      # 0xfa6484bb
	.quad	2372276910                      # 0x8d6612ae
	.quad	3208408903                      # 0xbf3c6f47
	.quad	3533431907                      # 0xd29be463
	.quad	1412390302                      # 0x542f5d9e
	.quad	2931980059                      # 0xaec2771b
	.quad	4132332400                      # 0xf64e6370
	.quad	1947078029                      # 0x740e0d8d
	.quad	3881505623                      # 0xe75b1357
	.quad	4168226417                      # 0xf8721671
	.quad	2941484381                      # 0xaf537d5d
	.quad	1077988104                      # 0x4040cb08
	.quad	1320477388                      # 0x4eb4e2cc
	.quad	886195818                       # 0x34d2466a
	.quad	18198404                        # 0x115af84
	.quad	3786409000                      # 0xe1b00428
	.quad	2509781533                      # 0x95983a1d
	.quad	112762804                       # 0x6b89fb4
	.quad	3463356488                      # 0xce6ea048
	.quad	1866414978                      # 0x6f3f3b82
	.quad	891333506                       # 0x3520ab82
	.quad	18488651                        # 0x11a1d4b
	.quad	661792760                       # 0x277227f8
	.quad	1628790961                      # 0x611560b1
	.quad	3885187036                      # 0xe7933fdc
	.quad	3141171499                      # 0xbb3a792b
	.quad	876946877                       # 0x344525bd
	.quad	2693282273                      # 0xa08839e1
	.quad	1372485963                      # 0x51ce794b
	.quad	791857591                       # 0x2f32c9b7
	.quad	2686433993                      # 0xa01fbac9
	.quad	3759982718                      # 0xe01cc87e
	.quad	3167212022                      # 0xbcc7d1f6
	.quad	3472953795                      # 0xcf0111c3
	.quad	2716379847                      # 0xa1e8aac7
	.quad	445679433                       # 0x1a908749
	.quad	3561995674                      # 0xd44fbd9a
	.quad	3504004811                      # 0xd0dadecb
	.quad	3574258232                      # 0xd50ada38
	.quad	54117162                        # 0x339c32a
	.quad	3331405415                      # 0xc6913667
	.quad	2381918588                      # 0x8df9317c
	.quad	3769707343                      # 0xe0b12b4f
	.quad	4154350007                      # 0xf79e59b7
	.quad	1140177722                      # 0x43f5bb3a
	.quad	4074052095                      # 0xf2d519ff
	.quad	668550556                       # 0x27d9459c
	.quad	3214352940                      # 0xbf97222c
	.quad	367459370                       # 0x15e6fc2a
	.quad	261225585                       # 0xf91fc71
	.quad	2610173221                      # 0x9b941525
	.quad	4209349473                      # 0xfae59361
	.quad	3468074219                      # 0xceb69ceb
	.quad	3265815641                      # 0xc2a86459
	.quad	314222801                       # 0x12baa8d1
	.quad	3066103646                      # 0xb6c1075e
	.quad	3808782860                      # 0xe3056a0c
	.quad	282218597                       # 0x10d25065
	.quad	3406013506                      # 0xcb03a442
	.quad	3773591054                      # 0xe0ec6e0e
	.quad	379116347                       # 0x1698db3b
	.quad	1285071038                      # 0x4c98a0be
	.quad	846784868                       # 0x3278e964
	.quad	2669647154                      # 0x9f1f9532
	.quad	3771962079                      # 0xe0d392df
	.quad	3550491691                      # 0xd3a0342b
	.quad	2305946142                      # 0x8971f21e
	.quad	453669953                       # 0x1b0a7441
	.quad	1268987020                      # 0x4ba3348c
	.quad	3317592352                      # 0xc5be7120
	.quad	3279303384                      # 0xc37632d8
	.quad	3744833421                      # 0xdf359f8d
	.quad	2610507566                      # 0x9b992f2e
	.quad	3859509063                      # 0xe60b6f47
	.quad	266596637                       # 0xfe3f11d
	.quad	3847019092                      # 0xe54cda54
	.quad	517658769                       # 0x1edad891
	.quad	3462560207                      # 0xce6279cf
	.quad	3443424879                      # 0xcd3e7e6f
	.quad	370717030                       # 0x1618b166
	.quad	4247526661                      # 0xfd2c1d05
	.quad	2224018117                      # 0x848fd2c5
	.quad	4143653529                      # 0xf6fb2299
	.quad	4112773975                      # 0xf523f357
	.quad	2788324899                      # 0xa6327623
	.quad	2477274417                      # 0x93a83531
	.quad	1456262402                      # 0x56cccd02
	.quad	2901442914                      # 0xacf08162
	.quad	1517677493                      # 0x5a75ebb5
	.quad	1846949527                      # 0x6e163697
	.quad	2295493580                      # 0x88d273cc
	.quad	3734397586                      # 0xde966292
	.quad	2176403920                      # 0x81b949d0
	.quad	1280348187                      # 0x4c50901b
	.quad	1908823572                      # 0x71c65614
	.quad	3871786941                      # 0xe6c6c7bd
	.quad	846861322                       # 0x327a140a
	.quad	1172426758                      # 0x45e1d006
	.quad	3287448474                      # 0xc3f27b9a
	.quad	3383383037                      # 0xc9aa53fd
	.quad	1655181056                      # 0x62a80f00
	.quad	3139813346                      # 0xbb25bfe2
	.quad	901632758                       # 0x35bdd2f6
	.quad	1897031941                      # 0x71126905
	.quad	2986607138                      # 0xb2040222
	.quad	3066810236                      # 0xb6cbcf7c
	.quad	3447102507                      # 0xcd769c2b
	.quad	1393639104                      # 0x53113ec0
	.quad	373351379                       # 0x1640e3d3
	.quad	950779232                       # 0x38abbd60
	.quad	625454576                       # 0x2547adf0
	.quad	3124240540                      # 0xba38209c
	.quad	4148612726                      # 0xf746ce76
	.quad	2007998917                      # 0x77afa1c5
	.quad	544563296                       # 0x20756060
	.quad	2244738638                      # 0x85cbfe4e
	.quad	2330496472                      # 0x8ae88dd8
	.quad	2058025392                      # 0x7aaaf9b0
	.quad	1291430526                      # 0x4cf9aa7e
	.quad	424198748                       # 0x1948c25c
	.quad	50039436                        # 0x2fb8a8c
	.quad	29584100                        # 0x1c36ae4
	.quad	3605783033                      # 0xd6ebe1f9
	.quad	2429876329                      # 0x90d4f869
	.quad	2791104160                      # 0xa65cdea0
	.quad	1057563949                      # 0x3f09252d
	.quad	3255363231                      # 0xc208e69f
	.quad	3075367218                      # 0xb74e6132
	.quad	3463963227                      # 0xce77e25b
	.quad	1469046755                      # 0x578fdfe3
	.quad	985887462                       # 0x3ac372e6
	.size	bf_init, 8336

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym BF_encrypt
