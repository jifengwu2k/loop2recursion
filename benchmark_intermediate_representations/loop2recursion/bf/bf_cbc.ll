; ModuleID = './benchmark_intermediate_representations/loop2recursion/bf/bf_cbc.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64, i64 }
%1 = type { i64, i64 }
%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@"BF_cbc_encrypt$1_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$0" = dso_local global %struct.bf_key_st* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$1" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$2" = dso_local global <2 x i64>* null
@"BF_cbc_encrypt$0_return_value_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$3" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$4" = dso_local global i64* null

; Function Attrs: nounwind uwtable
define void @BF_cbc_encrypt(i8* nocapture readonly %in, i8* nocapture %out, i64 %length, %struct.bf_key_st* %ks, i8* %iv, i32 %encrypt) #0 {
entry:
  %tin = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %tin to [2 x i64]*
  %tmp = bitcast <2 x i64>* %tin to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %tmp) #3
  %tobool = icmp eq i32 %encrypt, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %iv, i64 1
  %tmp1 = load i8, i8* %iv, align 1, !tbaa !1
  %incdec.ptr197 = getelementptr inbounds i8, i8* %iv, i64 2
  %tmp2 = load i8, i8* %incdec.ptr, align 1, !tbaa !1
  %incdec.ptr201 = getelementptr inbounds i8, i8* %iv, i64 3
  %tmp3 = load i8, i8* %incdec.ptr197, align 1, !tbaa !1
  %incdec.ptr205 = getelementptr inbounds i8, i8* %iv, i64 4
  %tmp4 = load i8, i8* %incdec.ptr201, align 1, !tbaa !1
  %incdec.ptr208 = getelementptr inbounds i8, i8* %iv, i64 5
  %tmp5 = load i8, i8* %incdec.ptr205, align 1, !tbaa !1
  %tmp6 = insertelement <2 x i8> undef, i8 %tmp1, i32 0
  %tmp7 = insertelement <2 x i8> %tmp6, i8 %tmp5, i32 1
  %tmp8 = zext <2 x i8> %tmp7 to <2 x i64>
  %tmp9 = shl nuw nsw <2 x i64> %tmp8, <i64 24, i64 24>
  %incdec.ptr211 = getelementptr inbounds i8, i8* %iv, i64 6
  %tmp10 = load i8, i8* %incdec.ptr208, align 1, !tbaa !1
  %tmp11 = insertelement <2 x i8> undef, i8 %tmp2, i32 0
  %tmp12 = insertelement <2 x i8> %tmp11, i8 %tmp10, i32 1
  %tmp13 = zext <2 x i8> %tmp12 to <2 x i64>
  %tmp14 = shl nuw nsw <2 x i64> %tmp13, <i64 16, i64 16>
  %tmp15 = or <2 x i64> %tmp14, %tmp9
  %incdec.ptr215 = getelementptr inbounds i8, i8* %iv, i64 7
  %tmp16 = load i8, i8* %incdec.ptr211, align 1, !tbaa !1
  %tmp17 = insertelement <2 x i8> undef, i8 %tmp3, i32 0
  %tmp18 = insertelement <2 x i8> %tmp17, i8 %tmp16, i32 1
  %tmp19 = zext <2 x i8> %tmp18 to <2 x i64>
  %tmp20 = shl nuw nsw <2 x i64> %tmp19, <i64 8, i64 8>
  %tmp21 = or <2 x i64> %tmp15, %tmp20
  %tmp22 = load i8, i8* %incdec.ptr215, align 1, !tbaa !1
  %tmp23 = insertelement <2 x i8> undef, i8 %tmp4, i32 0
  %tmp24 = insertelement <2 x i8> %tmp23, i8 %tmp22, i32 1
  %tmp25 = zext <2 x i8> %tmp24 to <2 x i64>
  %tmp26 = or <2 x i64> %tmp21, %tmp25
  %l.1636 = add i64 %length, -8
  %cmp225637 = icmp sgt i64 %l.1636, -1
  %tmp27 = extractelement <2 x i64> %tmp26, i32 0
  %tmp28 = extractelement <2 x i64> %tmp26, i32 1
  br i1 %tobool, label %for.cond224.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp225637, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx = getelementptr inbounds <2 x i64>, <2 x i64>* %tin, i64 0, i64 0
  %tmp29 = and i64 %l.1636, -8
  %tmp30 = add i64 %tmp29, 8
  %scevgep662 = getelementptr i8, i8* %in, i64 %tmp30
  br label %"BF_cbc_encrypt$1_initialize_context"

"BF_cbc_encrypt$1_initialize_context":            ; preds = %for.body.lr.ph
  store %struct.bf_key_st* %ks, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$0"
  store i64* %arrayidx, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$1"
  store <2 x i64>* %tin, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$2"
  br label %"BF_cbc_encrypt$1_call_recursive_function"

"BF_cbc_encrypt$1_call_recursive_function":       ; preds = %"BF_cbc_encrypt$1_initialize_context"
  call void @"BF_cbc_encrypt$1"(<2 x i64> %tmp26, i8* %out, i8* %in, i64 %l.1636)
  br label %"BF_cbc_encrypt$1_extract_return_values$0"

"BF_cbc_encrypt$1_extract_return_values$0":       ; preds = %"BF_cbc_encrypt$1_call_recursive_function"
  %tmp31 = getelementptr %0, %0* @"BF_cbc_encrypt$1_return_value_struct", i32 0, i32 0
  %tmp32 = load i64, i64* %tmp31
  %tmp33 = getelementptr %0, %0* @"BF_cbc_encrypt$1_return_value_struct", i32 0, i32 1
  %tmp34 = load i64, i64* %tmp33
  br label %for.end.loopexit

for.cond224.preheader:                            ; preds = %entry
  br i1 %cmp225637, label %for.body227.lr.ph, label %for.end295

for.body227.lr.ph:                                ; preds = %for.cond224.preheader
  %arrayidx256 = getelementptr inbounds <2 x i64>, <2 x i64>* %tin, i64 0, i64 0
  %arrayidx257 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  %tmp35 = and i64 %l.1636, -8
  %tmp36 = add i64 %tmp35, 8
  %scevgep660 = getelementptr i8, i8* %in, i64 %tmp36
  br label %"BF_cbc_encrypt$0_initialize_context"

"BF_cbc_encrypt$0_initialize_context":            ; preds = %for.body227.lr.ph
  store i64* %arrayidx257, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$3"
  store %struct.bf_key_st* %ks, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$0"
  store i64* %arrayidx256, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$4"
  store <2 x i64>* %tin, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$2"
  br label %"BF_cbc_encrypt$0_call_recursive_function"

"BF_cbc_encrypt$0_call_recursive_function":       ; preds = %"BF_cbc_encrypt$0_initialize_context"
  call void @"BF_cbc_encrypt$0"(i8* %out, i8* %in, i64 %tmp27, i64 %tmp28, i64 %l.1636)
  br label %"BF_cbc_encrypt$0_extract_return_values$0"

"BF_cbc_encrypt$0_extract_return_values$0":       ; preds = %"BF_cbc_encrypt$0_call_recursive_function"
  %tmp37 = getelementptr %1, %1* @"BF_cbc_encrypt$0_return_value_struct", i32 0, i32 0
  %tmp38 = load i64, i64* %tmp37
  %tmp39 = getelementptr %1, %1* @"BF_cbc_encrypt$0_return_value_struct", i32 0, i32 1
  %tmp40 = load i64, i64* %tmp39
  br label %for.end295.loopexit

for.end.loopexit:                                 ; preds = %"BF_cbc_encrypt$1_extract_return_values$0"
  %scevgep661 = getelementptr i8, i8* %out, i64 %tmp30
  %tmp41 = sub i64 %l.1636, %tmp29
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %l.0.in.lcssa = phi i64 [ %length, %for.cond.preheader ], [ %tmp41, %for.end.loopexit ]
  %tout1.0.lcssa = phi i64 [ %tmp28, %for.cond.preheader ], [ %tmp34, %for.end.loopexit ]
  %tout0.0.lcssa = phi i64 [ %tmp27, %for.cond.preheader ], [ %tmp32, %for.end.loopexit ]
  %in.addr.0.lcssa = phi i8* [ %in, %for.cond.preheader ], [ %scevgep662, %for.end.loopexit ]
  %out.addr.0.lcssa = phi i8* [ %out, %for.cond.preheader ], [ %scevgep661, %for.end.loopexit ]
  %cmp87 = icmp eq i64 %l.0.in.lcssa, 0
  br i1 %cmp87, label %if.end407, label %if.then89

if.then89:                                        ; preds = %for.end
  %add.ptr90 = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %l.0.in.lcssa
  switch i64 %l.0.in.lcssa, label %sw.epilog [
    i64 8, label %sw.bb
    i64 7, label %sw.bb94
    i64 6, label %sw.bb99
    i64 5, label %sw.bb104
    i64 4, label %sw.bb109
    i64 3, label %sw.bb112
    i64 2, label %sw.bb117
    i64 1, label %sw.bb122
  ]

sw.bb:                                            ; preds = %if.then89
  %incdec.ptr92 = getelementptr inbounds i8, i8* %add.ptr90, i64 -1
  %tmp42 = load i8, i8* %incdec.ptr92, align 1, !tbaa !1
  %conv93 = zext i8 %tmp42 to i64
  br label %sw.bb94

sw.bb94:                                          ; preds = %sw.bb, %if.then89
  %in.addr.1 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr92, %sw.bb ]
  %tin1.0 = phi i64 [ 0, %if.then89 ], [ %conv93, %sw.bb ]
  %incdec.ptr95 = getelementptr inbounds i8, i8* %in.addr.1, i64 -1
  %tmp43 = load i8, i8* %incdec.ptr95, align 1, !tbaa !1
  %conv96 = zext i8 %tmp43 to i64
  %shl97 = shl nuw nsw i64 %conv96, 8
  %or98 = or i64 %shl97, %tin1.0
  br label %sw.bb99

sw.bb99:                                          ; preds = %sw.bb94, %if.then89
  %in.addr.2 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr95, %sw.bb94 ]
  %tin1.1 = phi i64 [ 0, %if.then89 ], [ %or98, %sw.bb94 ]
  %incdec.ptr100 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %tmp44 = load i8, i8* %incdec.ptr100, align 1, !tbaa !1
  %conv101 = zext i8 %tmp44 to i64
  %shl102 = shl nuw nsw i64 %conv101, 16
  %or103 = or i64 %shl102, %tin1.1
  br label %sw.bb104

sw.bb104:                                         ; preds = %sw.bb99, %if.then89
  %in.addr.3 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr100, %sw.bb99 ]
  %tin1.2 = phi i64 [ 0, %if.then89 ], [ %or103, %sw.bb99 ]
  %incdec.ptr105 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %tmp45 = load i8, i8* %incdec.ptr105, align 1, !tbaa !1
  %conv106 = zext i8 %tmp45 to i64
  %shl107 = shl nuw nsw i64 %conv106, 24
  %or108 = or i64 %shl107, %tin1.2
  br label %sw.bb109

sw.bb109:                                         ; preds = %sw.bb104, %if.then89
  %in.addr.4 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr105, %sw.bb104 ]
  %tin1.3 = phi i64 [ 0, %if.then89 ], [ %or108, %sw.bb104 ]
  %incdec.ptr110 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %tmp46 = load i8, i8* %incdec.ptr110, align 1, !tbaa !1
  %conv111 = zext i8 %tmp46 to i64
  br label %sw.bb112

sw.bb112:                                         ; preds = %sw.bb109, %if.then89
  %in.addr.5 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr110, %sw.bb109 ]
  %tin0.0 = phi i64 [ 0, %if.then89 ], [ %conv111, %sw.bb109 ]
  %tin1.4 = phi i64 [ 0, %if.then89 ], [ %tin1.3, %sw.bb109 ]
  %incdec.ptr113 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %tmp47 = load i8, i8* %incdec.ptr113, align 1, !tbaa !1
  %conv114 = zext i8 %tmp47 to i64
  %shl115 = shl nuw nsw i64 %conv114, 8
  %or116 = or i64 %shl115, %tin0.0
  br label %sw.bb117

sw.bb117:                                         ; preds = %sw.bb112, %if.then89
  %in.addr.6 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr113, %sw.bb112 ]
  %tin0.1 = phi i64 [ 0, %if.then89 ], [ %or116, %sw.bb112 ]
  %tin1.5 = phi i64 [ 0, %if.then89 ], [ %tin1.4, %sw.bb112 ]
  %incdec.ptr118 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %tmp48 = load i8, i8* %incdec.ptr118, align 1, !tbaa !1
  %conv119 = zext i8 %tmp48 to i64
  %shl120 = shl nuw nsw i64 %conv119, 16
  %or121 = or i64 %shl120, %tin0.1
  br label %sw.bb122

sw.bb122:                                         ; preds = %sw.bb117, %if.then89
  %in.addr.7 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr118, %sw.bb117 ]
  %tin0.2 = phi i64 [ 0, %if.then89 ], [ %or121, %sw.bb117 ]
  %tin1.6 = phi i64 [ 0, %if.then89 ], [ %tin1.5, %sw.bb117 ]
  %incdec.ptr123 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %tmp49 = load i8, i8* %incdec.ptr123, align 1, !tbaa !1
  %conv124 = zext i8 %tmp49 to i64
  %shl125 = shl nuw nsw i64 %conv124, 24
  %or126 = or i64 %shl125, %tin0.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb122, %if.then89
  %tin0.3 = phi i64 [ 0, %if.then89 ], [ %or126, %sw.bb122 ]
  %tin1.7 = phi i64 [ 0, %if.then89 ], [ %tin1.6, %sw.bb122 ]
  %xor127 = xor i64 %tin0.3, %tout0.0.lcssa
  %xor128 = xor i64 %tin1.7, %tout1.0.lcssa
  %arrayidx129 = getelementptr inbounds <2 x i64>, <2 x i64>* %tin, i64 0, i64 0
  store i64 %xor127, i64* %arrayidx129, align 16, !tbaa !4
  %arrayidx130 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  store i64 %xor128, i64* %arrayidx130, align 8, !tbaa !4
  call void @BF_encrypt(i64* %arrayidx129, %struct.bf_key_st* %ks, i32 1) #3
  %tmp50 = load i64, i64* %arrayidx129, align 16, !tbaa !4
  %tmp51 = load i64, i64* %arrayidx130, align 8, !tbaa !4
  %shr134 = lshr i64 %tmp50, 24
  %conv136 = trunc i64 %shr134 to i8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 1
  store i8 %conv136, i8* %out.addr.0.lcssa, align 1, !tbaa !1
  %shr138 = lshr i64 %tmp50, 16
  %conv140 = trunc i64 %shr138 to i8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 2
  store i8 %conv140, i8* %incdec.ptr137, align 1, !tbaa !1
  %shr142 = lshr i64 %tmp50, 8
  %conv144 = trunc i64 %shr142 to i8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 3
  store i8 %conv144, i8* %incdec.ptr141, align 1, !tbaa !1
  %conv147 = trunc i64 %tmp50 to i8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 4
  store i8 %conv147, i8* %incdec.ptr145, align 1, !tbaa !1
  %shr149 = lshr i64 %tmp51, 24
  %conv151 = trunc i64 %shr149 to i8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 5
  store i8 %conv151, i8* %incdec.ptr148, align 1, !tbaa !1
  %shr153 = lshr i64 %tmp51, 16
  %conv155 = trunc i64 %shr153 to i8
  %incdec.ptr156 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 6
  store i8 %conv155, i8* %incdec.ptr152, align 1, !tbaa !1
  %shr157 = lshr i64 %tmp51, 8
  %conv159 = trunc i64 %shr157 to i8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 7
  store i8 %conv159, i8* %incdec.ptr156, align 1, !tbaa !1
  %conv162 = trunc i64 %tmp51 to i8
  store i8 %conv162, i8* %incdec.ptr160, align 1, !tbaa !1
  br label %if.end407

for.end295.loopexit:                              ; preds = %"BF_cbc_encrypt$0_extract_return_values$0"
  %scevgep = getelementptr i8, i8* %out, i64 %tmp36
  %tmp52 = sub i64 %l.1636, %tmp35
  br label %for.end295

for.end295:                                       ; preds = %for.end295.loopexit, %for.cond224.preheader
  %l.1.in.lcssa = phi i64 [ %length, %for.cond224.preheader ], [ %tmp52, %for.end295.loopexit ]
  %xor1.0.lcssa = phi i64 [ %tmp28, %for.cond224.preheader ], [ %tmp40, %for.end295.loopexit ]
  %xor0.0.lcssa = phi i64 [ %tmp27, %for.cond224.preheader ], [ %tmp38, %for.end295.loopexit ]
  %in.addr.8.lcssa = phi i8* [ %in, %for.cond224.preheader ], [ %scevgep660, %for.end295.loopexit ]
  %out.addr.1.lcssa = phi i8* [ %out, %for.cond224.preheader ], [ %scevgep, %for.end295.loopexit ]
  %cmp296 = icmp eq i64 %l.1.in.lcssa, 0
  br i1 %cmp296, label %if.end407, label %if.then298

if.then298:                                       ; preds = %for.end295
  %incdec.ptr299 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 1
  %tmp53 = load i8, i8* %in.addr.8.lcssa, align 1, !tbaa !1
  %incdec.ptr302 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 2
  %tmp54 = load i8, i8* %incdec.ptr299, align 1, !tbaa !1
  %incdec.ptr306 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 3
  %tmp55 = load i8, i8* %incdec.ptr302, align 1, !tbaa !1
  %incdec.ptr310 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 4
  %tmp56 = load i8, i8* %incdec.ptr306, align 1, !tbaa !1
  %incdec.ptr313 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 5
  %tmp57 = load i8, i8* %incdec.ptr310, align 1, !tbaa !1
  %tmp58 = insertelement <2 x i8> undef, i8 %tmp53, i32 0
  %tmp59 = insertelement <2 x i8> %tmp58, i8 %tmp57, i32 1
  %tmp60 = zext <2 x i8> %tmp59 to <2 x i64>
  %tmp61 = shl nuw nsw <2 x i64> %tmp60, <i64 24, i64 24>
  %incdec.ptr316 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 6
  %tmp62 = load i8, i8* %incdec.ptr313, align 1, !tbaa !1
  %tmp63 = insertelement <2 x i8> undef, i8 %tmp54, i32 0
  %tmp64 = insertelement <2 x i8> %tmp63, i8 %tmp62, i32 1
  %tmp65 = zext <2 x i8> %tmp64 to <2 x i64>
  %tmp66 = shl nuw nsw <2 x i64> %tmp65, <i64 16, i64 16>
  %tmp67 = or <2 x i64> %tmp66, %tmp61
  %incdec.ptr320 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 7
  %tmp68 = load i8, i8* %incdec.ptr316, align 1, !tbaa !1
  %tmp69 = insertelement <2 x i8> undef, i8 %tmp55, i32 0
  %tmp70 = insertelement <2 x i8> %tmp69, i8 %tmp68, i32 1
  %tmp71 = zext <2 x i8> %tmp70 to <2 x i64>
  %tmp72 = shl nuw nsw <2 x i64> %tmp71, <i64 8, i64 8>
  %tmp73 = or <2 x i64> %tmp67, %tmp72
  %tmp74 = load i8, i8* %incdec.ptr320, align 1, !tbaa !1
  %tmp75 = insertelement <2 x i8> undef, i8 %tmp56, i32 0
  %tmp76 = insertelement <2 x i8> %tmp75, i8 %tmp74, i32 1
  %tmp77 = zext <2 x i8> %tmp76 to <2 x i64>
  %tmp78 = or <2 x i64> %tmp73, %tmp77
  %arrayidx327 = getelementptr inbounds <2 x i64>, <2 x i64>* %tin, i64 0, i64 0
  %arrayidx328 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  store <2 x i64> %tmp78, <2 x i64>* %tin, align 16, !tbaa !4
  call void @BF_encrypt(i64* %arrayidx327, %struct.bf_key_st* %ks, i32 0) #3
  %tmp79 = load i64, i64* %arrayidx327, align 16, !tbaa !4
  %xor331 = xor i64 %tmp79, %xor0.0.lcssa
  %tmp80 = load i64, i64* %arrayidx328, align 8, !tbaa !4
  %xor333 = xor i64 %tmp80, %xor1.0.lcssa
  %add.ptr335 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %l.1.in.lcssa
  %tmp81 = extractelement <2 x i64> %tmp78, i32 0
  %tmp82 = extractelement <2 x i64> %tmp78, i32 1
  switch i64 %l.1.in.lcssa, label %if.end407 [
    i64 8, label %sw.bb337
    i64 7, label %sw.bb341
    i64 6, label %sw.bb346
    i64 5, label %sw.bb351
    i64 4, label %sw.bb356
    i64 3, label %sw.bb360
    i64 2, label %sw.bb365
    i64 1, label %sw.bb370
  ]

sw.bb337:                                         ; preds = %if.then298
  %conv339 = trunc i64 %xor333 to i8
  %incdec.ptr340 = getelementptr inbounds i8, i8* %add.ptr335, i64 -1
  store i8 %conv339, i8* %incdec.ptr340, align 1, !tbaa !1
  br label %sw.bb341

sw.bb341:                                         ; preds = %sw.bb337, %if.then298
  %out.addr.2 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr340, %sw.bb337 ]
  %shr342 = lshr i64 %xor333, 8
  %conv344 = trunc i64 %shr342 to i8
  %incdec.ptr345 = getelementptr inbounds i8, i8* %out.addr.2, i64 -1
  store i8 %conv344, i8* %incdec.ptr345, align 1, !tbaa !1
  br label %sw.bb346

sw.bb346:                                         ; preds = %sw.bb341, %if.then298
  %out.addr.3 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr345, %sw.bb341 ]
  %shr347 = lshr i64 %xor333, 16
  %conv349 = trunc i64 %shr347 to i8
  %incdec.ptr350 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv349, i8* %incdec.ptr350, align 1, !tbaa !1
  br label %sw.bb351

sw.bb351:                                         ; preds = %sw.bb346, %if.then298
  %out.addr.4 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr350, %sw.bb346 ]
  %shr352 = lshr i64 %xor333, 24
  %conv354 = trunc i64 %shr352 to i8
  %incdec.ptr355 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv354, i8* %incdec.ptr355, align 1, !tbaa !1
  br label %sw.bb356

sw.bb356:                                         ; preds = %sw.bb351, %if.then298
  %out.addr.5 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr355, %sw.bb351 ]
  %conv358 = trunc i64 %xor331 to i8
  %incdec.ptr359 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv358, i8* %incdec.ptr359, align 1, !tbaa !1
  br label %sw.bb360

sw.bb360:                                         ; preds = %sw.bb356, %if.then298
  %out.addr.6 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr359, %sw.bb356 ]
  %shr361 = lshr i64 %xor331, 8
  %conv363 = trunc i64 %shr361 to i8
  %incdec.ptr364 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv363, i8* %incdec.ptr364, align 1, !tbaa !1
  br label %sw.bb365

sw.bb365:                                         ; preds = %sw.bb360, %if.then298
  %out.addr.7 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr364, %sw.bb360 ]
  %shr366 = lshr i64 %xor331, 16
  %conv368 = trunc i64 %shr366 to i8
  %incdec.ptr369 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv368, i8* %incdec.ptr369, align 1, !tbaa !1
  br label %sw.bb370

sw.bb370:                                         ; preds = %sw.bb365, %if.then298
  %out.addr.8 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr369, %sw.bb365 ]
  %shr371 = lshr i64 %xor331, 24
  %conv373 = trunc i64 %shr371 to i8
  %incdec.ptr374 = getelementptr inbounds i8, i8* %out.addr.8, i64 -1
  store i8 %conv373, i8* %incdec.ptr374, align 1, !tbaa !1
  br label %if.end407

if.end407:                                        ; preds = %sw.bb370, %if.then298, %for.end295, %sw.epilog, %for.end
  %storemerge635.in.in = phi i64 [ %tmp50, %sw.epilog ], [ %tout0.0.lcssa, %for.end ], [ %xor0.0.lcssa, %for.end295 ], [ %tmp81, %sw.bb370 ], [ %tmp81, %if.then298 ]
  %storemerge631.in.in = phi i64 [ %tmp51, %sw.epilog ], [ %tout1.0.lcssa, %for.end ], [ %xor1.0.lcssa, %for.end295 ], [ %tmp82, %sw.bb370 ], [ %tmp82, %if.then298 ]
  %storemerge635.in = lshr i64 %storemerge635.in.in, 24
  %storemerge635 = trunc i64 %storemerge635.in to i8
  store i8 %storemerge635, i8* %iv, align 1, !tbaa !1
  %storemerge634.in = lshr i64 %storemerge635.in.in, 16
  %storemerge634 = trunc i64 %storemerge634.in to i8
  store i8 %storemerge634, i8* %incdec.ptr, align 1, !tbaa !1
  %storemerge633.in = lshr i64 %storemerge635.in.in, 8
  %storemerge633 = trunc i64 %storemerge633.in to i8
  store i8 %storemerge633, i8* %incdec.ptr197, align 1, !tbaa !1
  %storemerge632 = trunc i64 %storemerge635.in.in to i8
  store i8 %storemerge632, i8* %incdec.ptr201, align 1, !tbaa !1
  %storemerge631.in = lshr i64 %storemerge631.in.in, 24
  %storemerge631 = trunc i64 %storemerge631.in to i8
  store i8 %storemerge631, i8* %incdec.ptr205, align 1, !tbaa !1
  %storemerge630.in = lshr i64 %storemerge631.in.in, 16
  %storemerge630 = trunc i64 %storemerge630.in to i8
  store i8 %storemerge630, i8* %incdec.ptr208, align 1, !tbaa !1
  %storemerge629.in = lshr i64 %storemerge631.in.in, 8
  %storemerge629 = trunc i64 %storemerge629.in to i8
  store i8 %storemerge629, i8* %incdec.ptr211, align 1, !tbaa !1
  %storemerge = trunc i64 %storemerge631.in.in to i8
  store i8 %storemerge, i8* %incdec.ptr215, align 1, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %tmp) #3
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

define void @"BF_cbc_encrypt$1"(<2 x i64> %arg, i8* %arg1, i8* %arg2, i64 %arg3) {
"BF_cbc_encrypt$1_latch$0":
  %incdec.ptr26 = getelementptr inbounds i8, i8* %arg2, i64 1
  %tmp = load i8, i8* %arg2, align 1, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8, i8* %arg2, i64 2
  %tmp4 = load i8, i8* %incdec.ptr26, align 1, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %arg2, i64 3
  %tmp5 = load i8, i8* %incdec.ptr29, align 1, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %arg2, i64 4
  %tmp6 = load i8, i8* %incdec.ptr33, align 1, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i8, i8* %arg2, i64 5
  %tmp7 = load i8, i8* %incdec.ptr37, align 1, !tbaa !1
  %tmp8 = insertelement <2 x i8> undef, i8 %tmp, i32 0
  %tmp9 = insertelement <2 x i8> %tmp8, i8 %tmp7, i32 1
  %tmp10 = zext <2 x i8> %tmp9 to <2 x i64>
  %tmp11 = shl nuw nsw <2 x i64> %tmp10, <i64 24, i64 24>
  %incdec.ptr43 = getelementptr inbounds i8, i8* %arg2, i64 6
  %tmp12 = load i8, i8* %incdec.ptr40, align 1, !tbaa !1
  %tmp13 = insertelement <2 x i8> undef, i8 %tmp4, i32 0
  %tmp14 = insertelement <2 x i8> %tmp13, i8 %tmp12, i32 1
  %tmp15 = zext <2 x i8> %tmp14 to <2 x i64>
  %tmp16 = shl nuw nsw <2 x i64> %tmp15, <i64 16, i64 16>
  %tmp17 = or <2 x i64> %tmp16, %tmp11
  %incdec.ptr47 = getelementptr inbounds i8, i8* %arg2, i64 7
  %tmp18 = load i8, i8* %incdec.ptr43, align 1, !tbaa !1
  %tmp19 = insertelement <2 x i8> undef, i8 %tmp5, i32 0
  %tmp20 = insertelement <2 x i8> %tmp19, i8 %tmp18, i32 1
  %tmp21 = zext <2 x i8> %tmp20 to <2 x i64>
  %tmp22 = shl nuw nsw <2 x i64> %tmp21, <i64 8, i64 8>
  %tmp23 = or <2 x i64> %tmp17, %tmp22
  %incdec.ptr51 = getelementptr inbounds i8, i8* %arg2, i64 8
  %tmp24 = load i8, i8* %incdec.ptr47, align 1, !tbaa !1
  %tmp25 = insertelement <2 x i8> undef, i8 %tmp6, i32 0
  %tmp26 = insertelement <2 x i8> %tmp25, i8 %tmp24, i32 1
  %tmp27 = zext <2 x i8> %tmp26 to <2 x i64>
  %tmp28 = or <2 x i64> %tmp23, %tmp27
  %tmp29 = xor <2 x i64> %tmp28, %arg
  %tmp30 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$2"
  store <2 x i64> %tmp29, <2 x i64>* %tmp30, align 16, !tbaa !4
  %tmp31 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$0"
  %tmp32 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$1"
  call void @BF_encrypt(i64* %tmp32, %struct.bf_key_st* %tmp31, i32 1) #3
  %tmp33 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$2"
  %tmp34 = load <2 x i64>, <2 x i64>* %tmp33, align 16, !tbaa !4
  %tmp35 = extractelement <2 x i64> %tmp34, i32 0
  %shr = lshr i64 %tmp35, 24
  %conv58 = trunc i64 %shr to i8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %arg1, i64 1
  store i8 %conv58, i8* %arg1, align 1, !tbaa !1
  %shr60 = lshr i64 %tmp35, 16
  %conv62 = trunc i64 %shr60 to i8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %arg1, i64 2
  store i8 %conv62, i8* %incdec.ptr59, align 1, !tbaa !1
  %shr64 = lshr i64 %tmp35, 8
  %conv66 = trunc i64 %shr64 to i8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %arg1, i64 3
  store i8 %conv66, i8* %incdec.ptr63, align 1, !tbaa !1
  %conv69 = trunc i64 %tmp35 to i8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %arg1, i64 4
  store i8 %conv69, i8* %incdec.ptr67, align 1, !tbaa !1
  %tmp36 = extractelement <2 x i64> %tmp34, i32 1
  %shr71 = lshr i64 %tmp36, 24
  %conv73 = trunc i64 %shr71 to i8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %arg1, i64 5
  store i8 %conv73, i8* %incdec.ptr70, align 1, !tbaa !1
  %shr75 = lshr i64 %tmp36, 16
  %conv77 = trunc i64 %shr75 to i8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %arg1, i64 6
  store i8 %conv77, i8* %incdec.ptr74, align 1, !tbaa !1
  %shr79 = lshr i64 %tmp36, 8
  %conv81 = trunc i64 %shr79 to i8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %arg1, i64 7
  store i8 %conv81, i8* %incdec.ptr78, align 1, !tbaa !1
  %conv84 = trunc i64 %tmp36 to i8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %arg1, i64 8
  store i8 %conv84, i8* %incdec.ptr82, align 1, !tbaa !1
  %l.0 = add nsw i64 %arg3, -8
  %cmp = icmp sgt i64 %l.0, -1
  br i1 %cmp, label %"BF_cbc_encrypt$1_increment_depth_counter", label %"BF_cbc_encrypt$1_return_from_recursive_function$0"

"BF_cbc_encrypt$1_increment_depth_counter":       ; preds = %"BF_cbc_encrypt$1_latch$0"
  br label %"BF_cbc_encrypt$1_recursively_call_function"

"BF_cbc_encrypt$1_recursively_call_function":     ; preds = %"BF_cbc_encrypt$1_increment_depth_counter"
  call void @"BF_cbc_encrypt$1"(<2 x i64> %tmp34, i8* %incdec.ptr85, i8* %incdec.ptr51, i64 %l.0)
  ret void

"BF_cbc_encrypt$1_return_from_recursive_function$0": ; preds = %"BF_cbc_encrypt$1_latch$0"
  %tmp37 = getelementptr %0, %0* @"BF_cbc_encrypt$1_return_value_struct", i32 0, i32 0
  store i64 %tmp35, i64* %tmp37
  %tmp38 = getelementptr %0, %0* @"BF_cbc_encrypt$1_return_value_struct", i32 0, i32 1
  store i64 %tmp36, i64* %tmp38
  ret void
}

define void @"BF_cbc_encrypt$0"(i8* %arg, i8* %arg1, i64 %arg2, i64 %arg3, i64 %arg4) {
"BF_cbc_encrypt$0_latch$0":
  %incdec.ptr228 = getelementptr inbounds i8, i8* %arg1, i64 1
  %tmp = load i8, i8* %arg1, align 1, !tbaa !1
  %incdec.ptr231 = getelementptr inbounds i8, i8* %arg1, i64 2
  %tmp5 = load i8, i8* %incdec.ptr228, align 1, !tbaa !1
  %incdec.ptr235 = getelementptr inbounds i8, i8* %arg1, i64 3
  %tmp6 = load i8, i8* %incdec.ptr231, align 1, !tbaa !1
  %incdec.ptr239 = getelementptr inbounds i8, i8* %arg1, i64 4
  %tmp7 = load i8, i8* %incdec.ptr235, align 1, !tbaa !1
  %incdec.ptr242 = getelementptr inbounds i8, i8* %arg1, i64 5
  %tmp8 = load i8, i8* %incdec.ptr239, align 1, !tbaa !1
  %tmp9 = insertelement <2 x i8> undef, i8 %tmp, i32 0
  %tmp10 = insertelement <2 x i8> %tmp9, i8 %tmp8, i32 1
  %tmp11 = zext <2 x i8> %tmp10 to <2 x i64>
  %tmp12 = shl nuw nsw <2 x i64> %tmp11, <i64 24, i64 24>
  %incdec.ptr245 = getelementptr inbounds i8, i8* %arg1, i64 6
  %tmp13 = load i8, i8* %incdec.ptr242, align 1, !tbaa !1
  %tmp14 = insertelement <2 x i8> undef, i8 %tmp5, i32 0
  %tmp15 = insertelement <2 x i8> %tmp14, i8 %tmp13, i32 1
  %tmp16 = zext <2 x i8> %tmp15 to <2 x i64>
  %tmp17 = shl nuw nsw <2 x i64> %tmp16, <i64 16, i64 16>
  %tmp18 = or <2 x i64> %tmp17, %tmp12
  %incdec.ptr249 = getelementptr inbounds i8, i8* %arg1, i64 7
  %tmp19 = load i8, i8* %incdec.ptr245, align 1, !tbaa !1
  %tmp20 = insertelement <2 x i8> undef, i8 %tmp6, i32 0
  %tmp21 = insertelement <2 x i8> %tmp20, i8 %tmp19, i32 1
  %tmp22 = zext <2 x i8> %tmp21 to <2 x i64>
  %tmp23 = shl nuw nsw <2 x i64> %tmp22, <i64 8, i64 8>
  %tmp24 = or <2 x i64> %tmp18, %tmp23
  %incdec.ptr253 = getelementptr inbounds i8, i8* %arg1, i64 8
  %tmp25 = load i8, i8* %incdec.ptr249, align 1, !tbaa !1
  %tmp26 = insertelement <2 x i8> undef, i8 %tmp7, i32 0
  %tmp27 = insertelement <2 x i8> %tmp26, i8 %tmp25, i32 1
  %tmp28 = zext <2 x i8> %tmp27 to <2 x i64>
  %tmp29 = or <2 x i64> %tmp24, %tmp28
  %tmp30 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$2"
  store <2 x i64> %tmp29, <2 x i64>* %tmp30, align 16, !tbaa !4
  %tmp31 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$0"
  %tmp32 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$4"
  call void @BF_encrypt(i64* %tmp32, %struct.bf_key_st* %tmp31, i32 0) #3
  %tmp33 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$4"
  %tmp34 = load i64, i64* %tmp33, align 16, !tbaa !4
  %xor260 = xor i64 %tmp34, %arg2
  %tmp35 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cbc.ll_invariant_variable$3"
  %tmp36 = load i64, i64* %tmp35, align 8, !tbaa !4
  %xor262 = xor i64 %tmp36, %arg3
  %shr263 = lshr i64 %xor260, 24
  %conv265 = trunc i64 %shr263 to i8
  %incdec.ptr266 = getelementptr inbounds i8, i8* %arg, i64 1
  store i8 %conv265, i8* %arg, align 1, !tbaa !1
  %shr267 = lshr i64 %xor260, 16
  %conv269 = trunc i64 %shr267 to i8
  %incdec.ptr270 = getelementptr inbounds i8, i8* %arg, i64 2
  store i8 %conv269, i8* %incdec.ptr266, align 1, !tbaa !1
  %shr271 = lshr i64 %xor260, 8
  %conv273 = trunc i64 %shr271 to i8
  %incdec.ptr274 = getelementptr inbounds i8, i8* %arg, i64 3
  store i8 %conv273, i8* %incdec.ptr270, align 1, !tbaa !1
  %conv276 = trunc i64 %xor260 to i8
  %incdec.ptr277 = getelementptr inbounds i8, i8* %arg, i64 4
  store i8 %conv276, i8* %incdec.ptr274, align 1, !tbaa !1
  %shr278 = lshr i64 %xor262, 24
  %conv280 = trunc i64 %shr278 to i8
  %incdec.ptr281 = getelementptr inbounds i8, i8* %arg, i64 5
  store i8 %conv280, i8* %incdec.ptr277, align 1, !tbaa !1
  %shr282 = lshr i64 %xor262, 16
  %conv284 = trunc i64 %shr282 to i8
  %incdec.ptr285 = getelementptr inbounds i8, i8* %arg, i64 6
  store i8 %conv284, i8* %incdec.ptr281, align 1, !tbaa !1
  %shr286 = lshr i64 %xor262, 8
  %conv288 = trunc i64 %shr286 to i8
  %incdec.ptr289 = getelementptr inbounds i8, i8* %arg, i64 7
  store i8 %conv288, i8* %incdec.ptr285, align 1, !tbaa !1
  %conv291 = trunc i64 %xor262 to i8
  %incdec.ptr292 = getelementptr inbounds i8, i8* %arg, i64 8
  store i8 %conv291, i8* %incdec.ptr289, align 1, !tbaa !1
  %l.1 = add nsw i64 %arg4, -8
  %cmp225 = icmp sgt i64 %l.1, -1
  %tmp37 = extractelement <2 x i64> %tmp29, i32 0
  %tmp38 = extractelement <2 x i64> %tmp29, i32 1
  br i1 %cmp225, label %"BF_cbc_encrypt$0_increment_depth_counter", label %"BF_cbc_encrypt$0_return_from_recursive_function$0"

"BF_cbc_encrypt$0_increment_depth_counter":       ; preds = %"BF_cbc_encrypt$0_latch$0"
  br label %"BF_cbc_encrypt$0_recursively_call_function"

"BF_cbc_encrypt$0_recursively_call_function":     ; preds = %"BF_cbc_encrypt$0_increment_depth_counter"
  call void @"BF_cbc_encrypt$0"(i8* %incdec.ptr292, i8* %incdec.ptr253, i64 %tmp37, i64 %tmp38, i64 %l.1)
  ret void

"BF_cbc_encrypt$0_return_from_recursive_function$0": ; preds = %"BF_cbc_encrypt$0_latch$0"
  %tmp39 = getelementptr %1, %1* @"BF_cbc_encrypt$0_return_value_struct", i32 0, i32 0
  store i64 %tmp37, i64* %tmp39
  %tmp40 = getelementptr %1, %1* @"BF_cbc_encrypt$0_return_value_struct", i32 0, i32 1
  store i64 %tmp38, i64* %tmp40
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !2, i64 0}
