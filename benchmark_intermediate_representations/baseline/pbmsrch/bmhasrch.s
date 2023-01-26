	.text
	.file	"bmhasrch.ll"
	.globl	bmha_init                       # -- Begin function bmha_init
	.p2align	4, 0x90
	.type	bmha_init,@function
bmha_init:                              # @bmha_init
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	movq	%rdi, pat
	callq	strlen@PLT
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movl	%ecx, 132(%rsp)                 # 4-byte Spill
	movl	%ecx, patlen
	shlq	$32, %rax
	sarq	$32, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	movl	132(%rsp), %eax                 # 4-byte Reload
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	144(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movq	%rsi, %rdx
	shlq	$32, %rdx
	sarq	$32, %rdx
	movabsq	$skip, %rdi
	movq	%rdx, %r8
	shlq	$2, %r8
	addq	%r8, %rdi
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	movl	%eax, skip(,%rdx,4)
	movq	lowervec@GOTPCREL(%rip), %rdx
	addq	%rsi, %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movl	%eax, 108(%rsp)                 # 4-byte Spill
.LBB0_2:                                # %for.cond2
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	108(%rsp), %ecx                 # 4-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	addl	$-1, %ecx
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	cmpq	$0, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jle	.LBB0_5
# %bb.3:                                # %for.body5
                                        #   in Loop: Header=BB0_2 Depth=2
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	60(%rsp), %ecx                  # 4-byte Reload
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movb	(%rsi), %sil
	movslq	%ecx, %rdi
	movzbl	(%rdx,%rdi), %edx
	movl	%edx, %edi
	movq	lowervec@GOTPCREL(%rip), %rdx
	movb	(%rdx,%rdi), %dil
	movq	%rax, %rdx
	addq	$-1, %rdx
	cmpb	%dil, %sil
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movl	%ecx, 108(%rsp)                 # 4-byte Spill
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jne	.LBB0_2
# %bb.4:                                # %if.then19
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	132(%rsp), %esi                 # 4-byte Reload
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	$1, %edx
	subl	%eax, %edx
	addl	$-1, %edx
	addl	%esi, %edx
	movl	%edx, (%rcx)
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %if.end24.loopexit
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
.LBB0_6:                                # %if.end24
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	132(%rsp), %ecx                 # 4-byte Reload
	movl	36(%rsp), %eax                  # 4-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB0_8
# %bb.7:                                # %if.then28
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	$32767, (%rax)                  # imm = 0x7FFF
.LBB0_8:                                # %for.inc32
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax                      # imm = 0x100
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	jne	.LBB0_1
# %bb.9:                                # %for.end33
	movl	132(%rsp), %eax                 # 4-byte Reload
	movl	%eax, skip2
	cmpl	$1, %eax
	jle	.LBB0_15
# %bb.10:                               # %for.body38.lr.ph
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	120(%rsp), %rcx                 # 8-byte Reload
	shlq	$32, %rcx
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	addq	%rdx, %rcx
	sarq	$32, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %ecx
	movq	lowervec@GOTPCREL(%rip), %rax
	movb	(%rax,%rcx), %al
	movb	%al, 23(%rsp)                   # 1-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.LBB0_11:                               # %for.body38
                                        # =>This Inner Loop Header: Depth=1
	movb	23(%rsp), %dl                   # 1-byte Reload
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %ecx
	movq	lowervec@GOTPCREL(%rip), %rax
	cmpb	%dl, (%rax,%rcx)
	jne	.LBB0_13
# %bb.12:                               # %if.then52
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	132(%rsp), %eax                 # 4-byte Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	movabsq	$4294967295, %rdx               # imm = 0xFFFFFFFF
	xorq	%rdx, %rcx
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%ecx, %eax
	movl	%eax, skip2
.LBB0_13:                               # %for.inc56
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	$1, %rax
	cmpq	%rcx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jl	.LBB0_11
# %bb.14:                               # %for.end58.loopexit
	jmp	.LBB0_15
.LBB0_15:                               # %for.end58
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bmha_init, .Lfunc_end0-bmha_init
	.cfi_endproc
                                        # -- End function
	.globl	bmha_search                     # -- Begin function bmha_search
	.p2align	4, 0x90
	.type	bmha_search,@function
bmha_search:                            # @bmha_search
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	movl	%esi, -4(%rsp)                  # 4-byte Spill
	movl	patlen, %ecx
	movl	%ecx, (%rsp)                    # 4-byte Spill
	xorl	$-1, %esi
	addl	%esi, %ecx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	cmpl	$-1, %ecx
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jg	.LBB1_11
# %bb.1:                                # %if.end
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	(%rsp), %ecx                    # 4-byte Reload
	movl	-4(%rsp), %esi                  # 4-byte Reload
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movslq	%esi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movl	$32767, %edx                    # imm = 0x7FFF
	subl	%esi, %edx
	movl	%edx, -56(%rsp)                 # 4-byte Spill
	addl	$-1, %ecx
	movl	%ecx, -52(%rsp)                 # 4-byte Spill
	movq	pat, %rdx
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movl	skip2, %edx
	movl	%edx, -36(%rsp)                 # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	%eax, -20(%rsp)                 # 4-byte Spill
.LBB1_2:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	movl	-20(%rsp), %eax                 # 4-byte Reload
	movslq	%eax, %rdx
	movzbl	(%rcx,%rdx), %ecx
                                        # kill: def $rcx killed $ecx
	addl	skip(,%rcx,4), %eax
	movl	%eax, -72(%rsp)                 # 4-byte Spill
	cmpl	$0, %eax
	movl	%eax, -68(%rsp)                 # 4-byte Spill
	jge	.LBB1_4
.LBB1_3:                                # %while.cond.backedge
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-68(%rsp), %eax                 # 4-byte Reload
	movl	%eax, -20(%rsp)                 # 4-byte Spill
	jmp	.LBB1_2
.LBB1_4:                                # %while.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-72(%rsp), %eax                 # 4-byte Reload
	movl	-56(%rsp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB1_10
# %bb.5:                                # %if.end8
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-52(%rsp), %eax                 # 4-byte Reload
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movl	-72(%rsp), %esi                 # 4-byte Reload
	addl	$-32767, %esi                   # imm = 0x8001
	movl	%esi, -100(%rsp)                # 4-byte Spill
	subl	%eax, %esi
	movslq	%esi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movl	%eax, -76(%rsp)                 # 4-byte Spill
.LBB1_6:                                # %while.cond14
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movq	-88(%rsp), %rcx                 # 8-byte Reload
	movl	-76(%rsp), %edx                 # 4-byte Reload
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	addl	$-1, %edx
	movl	%edx, -116(%rsp)                # 4-byte Spill
	cmpq	$0, %rcx
	movq	%rax, -112(%rsp)                # 8-byte Spill
	jle	.LBB1_9
# %bb.7:                                # %land.rhs
                                        #   in Loop: Header=BB1_6 Depth=2
	movl	-116(%rsp), %eax                # 4-byte Reload
	movq	-128(%rsp), %rcx                # 8-byte Reload
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movslq	%eax, %rdi
	movzbl	(%rdx,%rdi), %edx
	movl	%edx, %r8d
	movq	lowervec@GOTPCREL(%rip), %rdx
	movb	(%rdx,%r8), %dl
	movzbl	(%rsi,%rdi), %esi
	movl	%esi, %edi
	movq	lowervec@GOTPCREL(%rip), %rsi
	movb	(%rsi,%rdi), %sil
	addq	$-1, %rcx
	cmpb	%sil, %dl
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movl	%eax, -76(%rsp)                 # 4-byte Spill
	je	.LBB1_6
# %bb.8:                                # %if.end32
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-100(%rsp), %ecx                # 4-byte Reload
	movl	-36(%rsp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	cmpl	$-1, %eax
	movl	%eax, -68(%rsp)                 # 4-byte Spill
	jg	.LBB1_10
	jmp	.LBB1_3
.LBB1_9:                                # %cleanup.loopexit
	movq	-112(%rsp), %rax                # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %cleanup.loopexit63
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jmp	.LBB1_11
.LBB1_11:                               # %cleanup
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	bmha_search, .Lfunc_end1-bmha_search
	.cfi_endproc
                                        # -- End function
	.type	lowervec,@object                # @lowervec
	.data
	.globl	lowervec
	.p2align	4
lowervec:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\177cueaaaaceeeiiiaae\221\222ooouuyou\233\234\235\236\237aiounn\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\305\306\307\310\311\312\313\314\315\316\317\320\321\322\323\324\325\326\327\330\331\332\333\334\335\336\337\340\341\342\343\344\345\346\347\350\351\352\353\354\355\356\357\360\361\362\363\364\365\366\367\370\371\372\373\374\375\376\377"
	.size	lowervec, 256

	.type	pat,@object                     # @pat
	.local	pat
	.comm	pat,8,8
	.type	patlen,@object                  # @patlen
	.local	patlen
	.comm	patlen,4,4
	.type	skip,@object                    # @skip
	.local	skip
	.comm	skip,1024,16
	.type	skip2,@object                   # @skip2
	.local	skip2
	.comm	skip2,4,4
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym lowervec
