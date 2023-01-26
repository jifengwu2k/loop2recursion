; ModuleID = './benchmark_intermediate_representations/loop2recursion/bf/bf_cfb64.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32 }
%1 = type { i32 }
%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@"BF_cfb64_encrypt$1_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2" = dso_local global <2 x i64>* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5" = dso_local global %struct.bf_key_st* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11" = dso_local global i8* null
@"BF_cfb64_encrypt$0_return_value_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20" = dso_local global i8* null

; Function Attrs: nounwind uwtable
define void @BF_cfb64_encrypt(i8* nocapture readonly %in, i8* nocapture %out, i64 %length, %struct.bf_key_st* %schedule, i8* %ivec, i32* nocapture %num, i32 %encrypt) #0 {
entry:
  %ti = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %ti to [2 x i64]*
  %tmp = load i32, i32* %num, align 4, !tbaa !1
  %tmp1 = bitcast <2 x i64>* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %tmp1) #3
  %tobool = icmp eq i32 %encrypt, 0
  %dec68247 = add nsw i64 %length, -1
  %tobool69248 = icmp eq i64 %length, 0
  br i1 %tobool, label %while.cond67.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool69248, label %if.end151, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr6 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr10 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx = getelementptr inbounds <2 x i64>, <2 x i64>* %ti, i64 0, i64 0
  %incdec.ptr13 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr16 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr20 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx27 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  br label %"BF_cfb64_encrypt$1_initialize_context"

"BF_cfb64_encrypt$1_initialize_context":          ; preds = %while.body.lr.ph
  store i64* %arrayidx, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0"
  store i64* %arrayidx27, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1"
  store <2 x i64>* %ti, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2"
  store i8* %incdec.ptr20, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3"
  store i8* %incdec.ptr16, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4"
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5"
  store i8* %incdec.ptr13, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6"
  store i8* %incdec.ptr10, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7"
  store i8* %incdec.ptr6, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8"
  store i8* %incdec.ptr3, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9"
  store i8* %incdec.ptr, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10"
  store i8* %ivec, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11"
  br label %"BF_cfb64_encrypt$1_call_recursive_function"

"BF_cfb64_encrypt$1_call_recursive_function":     ; preds = %"BF_cfb64_encrypt$1_initialize_context"
  call void @"BF_cfb64_encrypt$1"(i8* %out, i8* %in, i32 %tmp, i64 %dec68247)
  br label %"BF_cfb64_encrypt$1_extract_return_values$0"

"BF_cfb64_encrypt$1_extract_return_values$0":     ; preds = %"BF_cfb64_encrypt$1_call_recursive_function"
  %tmp2 = getelementptr %0, %0* @"BF_cfb64_encrypt$1_return_value_struct", i32 0, i32 0
  %tmp3 = load i32, i32* %tmp2
  br label %if.end151.loopexit263

while.cond67.preheader:                           ; preds = %entry
  br i1 %tobool69248, label %if.end151, label %while.body70.lr.ph

while.body70.lr.ph:                               ; preds = %while.cond67.preheader
  %incdec.ptr74 = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr77 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr81 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr85 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx88 = getelementptr inbounds <2 x i64>, <2 x i64>* %ti, i64 0, i64 0
  %incdec.ptr89 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr92 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr96 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx103 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  br label %"BF_cfb64_encrypt$0_initialize_context"

"BF_cfb64_encrypt$0_initialize_context":          ; preds = %while.body70.lr.ph
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5"
  store i64* %arrayidx88, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12"
  store <2 x i64>* %ti, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2"
  store i8* %incdec.ptr96, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13"
  store i8* %incdec.ptr89, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14"
  store i64* %arrayidx103, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15"
  store i8* %incdec.ptr85, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16"
  store i8* %incdec.ptr81, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17"
  store i8* %incdec.ptr77, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18"
  store i8* %incdec.ptr92, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19"
  store i8* %incdec.ptr74, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20"
  store i8* %ivec, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11"
  br label %"BF_cfb64_encrypt$0_call_recursive_function"

"BF_cfb64_encrypt$0_call_recursive_function":     ; preds = %"BF_cfb64_encrypt$0_initialize_context"
  call void @"BF_cfb64_encrypt$0"(i8* %out, i8* %in, i32 %tmp, i64 %dec68247)
  br label %"BF_cfb64_encrypt$0_extract_return_values$0"

"BF_cfb64_encrypt$0_extract_return_values$0":     ; preds = %"BF_cfb64_encrypt$0_call_recursive_function"
  %tmp4 = getelementptr %1, %1* @"BF_cfb64_encrypt$0_return_value_struct", i32 0, i32 0
  %tmp5 = load i32, i32* %tmp4
  br label %if.end151.loopexit

if.end151.loopexit:                               ; preds = %"BF_cfb64_encrypt$0_extract_return_values$0"
  br label %if.end151

if.end151.loopexit263:                            ; preds = %"BF_cfb64_encrypt$1_extract_return_values$0"
  br label %if.end151

if.end151:                                        ; preds = %if.end151.loopexit263, %if.end151.loopexit, %while.cond67.preheader, %while.cond.preheader
  %n.2 = phi i32 [ %tmp, %while.cond67.preheader ], [ %tmp, %while.cond.preheader ], [ %tmp5, %if.end151.loopexit ], [ %tmp3, %if.end151.loopexit263 ]
  store i32 %n.2, i32* %num, align 4, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %tmp1) #3
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

define void @"BF_cfb64_encrypt$1"(i8* %arg, i8* %arg1, i32 %arg2, i64 %arg3) {
"BF_cfb64_encrypt$1_header":
  %cmp = icmp eq i32 %arg2, 0
  br i1 %cmp, label %if.then2, label %"BF_cfb64_encrypt$1_latch$0"

if.then2:                                         ; preds = %"BF_cfb64_encrypt$1_header"
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11"
  %tmp4 = load i8, i8* %tmp, align 1, !tbaa !5
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10"
  %tmp6 = load i8, i8* %tmp5, align 1, !tbaa !5
  %tmp7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9"
  %tmp8 = load i8, i8* %tmp7, align 1, !tbaa !5
  %tmp9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8"
  %tmp10 = load i8, i8* %tmp9, align 1, !tbaa !5
  %tmp11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7"
  %tmp12 = load i8, i8* %tmp11, align 1, !tbaa !5
  %tmp13 = insertelement <2 x i8> undef, i8 %tmp4, i32 0
  %tmp14 = insertelement <2 x i8> %tmp13, i8 %tmp12, i32 1
  %tmp15 = zext <2 x i8> %tmp14 to <2 x i64>
  %tmp16 = shl nuw nsw <2 x i64> %tmp15, <i64 24, i64 24>
  %tmp17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6"
  %tmp18 = load i8, i8* %tmp17, align 1, !tbaa !5
  %tmp19 = insertelement <2 x i8> undef, i8 %tmp6, i32 0
  %tmp20 = insertelement <2 x i8> %tmp19, i8 %tmp18, i32 1
  %tmp21 = zext <2 x i8> %tmp20 to <2 x i64>
  %tmp22 = shl nuw nsw <2 x i64> %tmp21, <i64 16, i64 16>
  %tmp23 = or <2 x i64> %tmp22, %tmp16
  %tmp24 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4"
  %tmp25 = load i8, i8* %tmp24, align 1, !tbaa !5
  %tmp26 = insertelement <2 x i8> undef, i8 %tmp8, i32 0
  %tmp27 = insertelement <2 x i8> %tmp26, i8 %tmp25, i32 1
  %tmp28 = zext <2 x i8> %tmp27 to <2 x i64>
  %tmp29 = shl nuw nsw <2 x i64> %tmp28, <i64 8, i64 8>
  %tmp30 = or <2 x i64> %tmp23, %tmp29
  %tmp31 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3"
  %tmp32 = load i8, i8* %tmp31, align 1, !tbaa !5
  %tmp33 = insertelement <2 x i8> undef, i8 %tmp10, i32 0
  %tmp34 = insertelement <2 x i8> %tmp33, i8 %tmp32, i32 1
  %tmp35 = zext <2 x i8> %tmp34 to <2 x i64>
  %tmp36 = or <2 x i64> %tmp30, %tmp35
  %tmp37 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2"
  store <2 x i64> %tmp36, <2 x i64>* %tmp37, align 16, !tbaa !6
  %tmp38 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0"
  %tmp39 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5"
  call void @BF_encrypt(i64* %tmp38, %struct.bf_key_st* %tmp39, i32 1) #3
  %tmp40 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0"
  %tmp41 = load i64, i64* %tmp40, align 16, !tbaa !6
  %shr = lshr i64 %tmp41, 24
  %conv29 = trunc i64 %shr to i8
  %tmp42 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11"
  store i8 %conv29, i8* %tmp42, align 1, !tbaa !5
  %shr31 = lshr i64 %tmp41, 16
  %conv33 = trunc i64 %shr31 to i8
  %tmp43 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10"
  store i8 %conv33, i8* %tmp43, align 1, !tbaa !5
  %shr35 = lshr i64 %tmp41, 8
  %conv37 = trunc i64 %shr35 to i8
  %tmp44 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9"
  store i8 %conv37, i8* %tmp44, align 1, !tbaa !5
  %conv40 = trunc i64 %tmp41 to i8
  %tmp45 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8"
  store i8 %conv40, i8* %tmp45, align 1, !tbaa !5
  %tmp46 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1"
  %tmp47 = load i64, i64* %tmp46, align 8, !tbaa !6
  %shr43 = lshr i64 %tmp47, 24
  %conv45 = trunc i64 %shr43 to i8
  %tmp48 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7"
  store i8 %conv45, i8* %tmp48, align 1, !tbaa !5
  %shr47 = lshr i64 %tmp47, 16
  %conv49 = trunc i64 %shr47 to i8
  %tmp49 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6"
  store i8 %conv49, i8* %tmp49, align 1, !tbaa !5
  %shr51 = lshr i64 %tmp47, 8
  %conv53 = trunc i64 %shr51 to i8
  %tmp50 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4"
  store i8 %conv53, i8* %tmp50, align 1, !tbaa !5
  %conv56 = trunc i64 %tmp47 to i8
  %tmp51 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3"
  store i8 %conv56, i8* %tmp51, align 1, !tbaa !5
  br label %"BF_cfb64_encrypt$1_latch$0"

"BF_cfb64_encrypt$1_latch$0":                     ; preds = %if.then2, %"BF_cfb64_encrypt$1_header"
  %incdec.ptr58 = getelementptr inbounds i8, i8* %arg1, i64 1
  %tmp52 = load i8, i8* %arg1, align 1, !tbaa !5
  %idxprom = sext i32 %arg2 to i64
  %tmp53 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11"
  %arrayidx60 = getelementptr inbounds i8, i8* %tmp53, i64 %idxprom
  %tmp54 = load i8, i8* %arrayidx60, align 1, !tbaa !5
  %xor245 = xor i8 %tmp54, %tmp52
  %incdec.ptr63 = getelementptr inbounds i8, i8* %arg, i64 1
  store i8 %xor245, i8* %arg, align 1, !tbaa !5
  store i8 %xor245, i8* %arrayidx60, align 1, !tbaa !5
  %add = add nsw i32 %arg2, 1
  %and66 = and i32 %add, 7
  %dec = add nsw i64 %arg3, -1
  %tobool1 = icmp eq i64 %arg3, 0
  br i1 %tobool1, label %"BF_cfb64_encrypt$1_return_from_recursive_function$0", label %"BF_cfb64_encrypt$1_increment_depth_counter"

"BF_cfb64_encrypt$1_increment_depth_counter":     ; preds = %"BF_cfb64_encrypt$1_latch$0"
  br label %"BF_cfb64_encrypt$1_recursively_call_function"

"BF_cfb64_encrypt$1_recursively_call_function":   ; preds = %"BF_cfb64_encrypt$1_increment_depth_counter"
  call void @"BF_cfb64_encrypt$1"(i8* %incdec.ptr63, i8* %incdec.ptr58, i32 %and66, i64 %dec)
  ret void

"BF_cfb64_encrypt$1_return_from_recursive_function$0": ; preds = %"BF_cfb64_encrypt$1_latch$0"
  %tmp55 = getelementptr %0, %0* @"BF_cfb64_encrypt$1_return_value_struct", i32 0, i32 0
  store i32 %and66, i32* %tmp55
  ret void
}

define void @"BF_cfb64_encrypt$0"(i8* %arg, i8* %arg1, i32 %arg2, i64 %arg3) {
"BF_cfb64_encrypt$0_header":
  %cmp71 = icmp eq i32 %arg2, 0
  br i1 %cmp71, label %if.then73, label %"BF_cfb64_encrypt$0_latch$0"

if.then73:                                        ; preds = %"BF_cfb64_encrypt$0_header"
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11"
  %tmp4 = load i8, i8* %tmp, align 1, !tbaa !5
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20"
  %tmp6 = load i8, i8* %tmp5, align 1, !tbaa !5
  %tmp7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18"
  %tmp8 = load i8, i8* %tmp7, align 1, !tbaa !5
  %tmp9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17"
  %tmp10 = load i8, i8* %tmp9, align 1, !tbaa !5
  %tmp11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16"
  %tmp12 = load i8, i8* %tmp11, align 1, !tbaa !5
  %tmp13 = insertelement <2 x i8> undef, i8 %tmp4, i32 0
  %tmp14 = insertelement <2 x i8> %tmp13, i8 %tmp12, i32 1
  %tmp15 = zext <2 x i8> %tmp14 to <2 x i64>
  %tmp16 = shl nuw nsw <2 x i64> %tmp15, <i64 24, i64 24>
  %tmp17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14"
  %tmp18 = load i8, i8* %tmp17, align 1, !tbaa !5
  %tmp19 = insertelement <2 x i8> undef, i8 %tmp6, i32 0
  %tmp20 = insertelement <2 x i8> %tmp19, i8 %tmp18, i32 1
  %tmp21 = zext <2 x i8> %tmp20 to <2 x i64>
  %tmp22 = shl nuw nsw <2 x i64> %tmp21, <i64 16, i64 16>
  %tmp23 = or <2 x i64> %tmp22, %tmp16
  %tmp24 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19"
  %tmp25 = load i8, i8* %tmp24, align 1, !tbaa !5
  %tmp26 = insertelement <2 x i8> undef, i8 %tmp8, i32 0
  %tmp27 = insertelement <2 x i8> %tmp26, i8 %tmp25, i32 1
  %tmp28 = zext <2 x i8> %tmp27 to <2 x i64>
  %tmp29 = shl nuw nsw <2 x i64> %tmp28, <i64 8, i64 8>
  %tmp30 = or <2 x i64> %tmp23, %tmp29
  %tmp31 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13"
  %tmp32 = load i8, i8* %tmp31, align 1, !tbaa !5
  %tmp33 = insertelement <2 x i8> undef, i8 %tmp10, i32 0
  %tmp34 = insertelement <2 x i8> %tmp33, i8 %tmp32, i32 1
  %tmp35 = zext <2 x i8> %tmp34 to <2 x i64>
  %tmp36 = or <2 x i64> %tmp30, %tmp35
  %tmp37 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2"
  store <2 x i64> %tmp36, <2 x i64>* %tmp37, align 16, !tbaa !6
  %tmp38 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5"
  %tmp39 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12"
  call void @BF_encrypt(i64* %tmp39, %struct.bf_key_st* %tmp38, i32 1) #3
  %tmp40 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12"
  %tmp41 = load i64, i64* %tmp40, align 16, !tbaa !6
  %shr106 = lshr i64 %tmp41, 24
  %conv108 = trunc i64 %shr106 to i8
  %tmp42 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11"
  store i8 %conv108, i8* %tmp42, align 1, !tbaa !5
  %shr110 = lshr i64 %tmp41, 16
  %conv112 = trunc i64 %shr110 to i8
  %tmp43 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20"
  store i8 %conv112, i8* %tmp43, align 1, !tbaa !5
  %shr114 = lshr i64 %tmp41, 8
  %conv116 = trunc i64 %shr114 to i8
  %tmp44 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18"
  store i8 %conv116, i8* %tmp44, align 1, !tbaa !5
  %conv119 = trunc i64 %tmp41 to i8
  %tmp45 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17"
  store i8 %conv119, i8* %tmp45, align 1, !tbaa !5
  %tmp46 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15"
  %tmp47 = load i64, i64* %tmp46, align 8, !tbaa !6
  %shr122 = lshr i64 %tmp47, 24
  %conv124 = trunc i64 %shr122 to i8
  %tmp48 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16"
  store i8 %conv124, i8* %tmp48, align 1, !tbaa !5
  %shr126 = lshr i64 %tmp47, 16
  %conv128 = trunc i64 %shr126 to i8
  %tmp49 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14"
  store i8 %conv128, i8* %tmp49, align 1, !tbaa !5
  %shr130 = lshr i64 %tmp47, 8
  %conv132 = trunc i64 %shr130 to i8
  %tmp50 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19"
  store i8 %conv132, i8* %tmp50, align 1, !tbaa !5
  %conv135 = trunc i64 %tmp47 to i8
  %tmp51 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13"
  store i8 %conv135, i8* %tmp51, align 1, !tbaa !5
  br label %"BF_cfb64_encrypt$0_latch$0"

"BF_cfb64_encrypt$0_latch$0":                     ; preds = %if.then73, %"BF_cfb64_encrypt$0_header"
  %incdec.ptr138 = getelementptr inbounds i8, i8* %arg1, i64 1
  %tmp52 = load i8, i8* %arg1, align 1, !tbaa !5
  %idxprom139 = sext i32 %arg2 to i64
  %tmp53 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11"
  %arrayidx140 = getelementptr inbounds i8, i8* %tmp53, i64 %idxprom139
  %tmp54 = load i8, i8* %arrayidx140, align 1, !tbaa !5
  store i8 %tmp52, i8* %arrayidx140, align 1, !tbaa !5
  %xor145244 = xor i8 %tmp54, %tmp52
  %incdec.ptr147 = getelementptr inbounds i8, i8* %arg, i64 1
  store i8 %xor145244, i8* %arg, align 1, !tbaa !5
  %add148 = add nsw i32 %arg2, 1
  %and149 = and i32 %add148, 7
  %dec68 = add nsw i64 %arg3, -1
  %tobool69 = icmp eq i64 %arg3, 0
  br i1 %tobool69, label %"BF_cfb64_encrypt$0_return_from_recursive_function$0", label %"BF_cfb64_encrypt$0_increment_depth_counter"

"BF_cfb64_encrypt$0_increment_depth_counter":     ; preds = %"BF_cfb64_encrypt$0_latch$0"
  br label %"BF_cfb64_encrypt$0_recursively_call_function"

"BF_cfb64_encrypt$0_recursively_call_function":   ; preds = %"BF_cfb64_encrypt$0_increment_depth_counter"
  call void @"BF_cfb64_encrypt$0"(i8* %incdec.ptr147, i8* %incdec.ptr138, i32 %and149, i64 %dec68)
  ret void

"BF_cfb64_encrypt$0_return_from_recursive_function$0": ; preds = %"BF_cfb64_encrypt$0_latch$0"
  %tmp55 = getelementptr %1, %1* @"BF_cfb64_encrypt$0_return_value_struct", i32 0, i32 0
  store i32 %and149, i32* %tmp55
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !3, i64 0}
