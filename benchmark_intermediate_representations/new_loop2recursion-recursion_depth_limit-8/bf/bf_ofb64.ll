; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-recursion_depth_limit-8/bf/bf_ofb64.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i32 }
%1 = type { i8*, i8*, i32, i64, i32, i1 }
%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@"BF_ofb64_encrypt$0_return_value_struct" = dso_local global %0 zeroinitializer
@"BF_ofb64_encrypt$0_recursion_state_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$0" = dso_local global [8 x i8]* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$1" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$2" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$3" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$4" = dso_local global %struct.bf_key_st* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$5" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$6" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$9" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$10" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11" = dso_local global i8* null

; Function Attrs: nounwind uwtable
define void @BF_ofb64_encrypt(i8* nocapture readonly %in, i8* nocapture %out, i64 %length, %struct.bf_key_st* %schedule, i8* nocapture %ivec, i32* nocapture %num) #0 {
entry:
  %d = alloca [8 x i8], align 1
  %ti = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %ti to [2 x i64]*
  %i = load i32, i32* %num, align 4, !tbaa !1
  %i1 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %i1) #3
  %i2 = bitcast <2 x i64>* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %i2) #3
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %i3 = load i8, i8* %ivec, align 1, !tbaa !5
  %incdec.ptr1 = getelementptr inbounds i8, i8* %ivec, i64 2
  %i4 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds i8, i8* %ivec, i64 3
  %i5 = load i8, i8* %incdec.ptr1, align 1, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds i8, i8* %ivec, i64 4
  %i6 = load i8, i8* %incdec.ptr4, align 1, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds i8, i8* %ivec, i64 5
  %i7 = load i8, i8* %incdec.ptr8, align 1, !tbaa !5
  %i8 = insertelement <2 x i8> undef, i8 %i3, i32 0
  %i9 = insertelement <2 x i8> %i8, i8 %i7, i32 1
  %i10 = zext <2 x i8> %i9 to <2 x i64>
  %i11 = shl nuw nsw <2 x i64> %i10, <i64 24, i64 24>
  %incdec.ptr14 = getelementptr inbounds i8, i8* %ivec, i64 6
  %i12 = load i8, i8* %incdec.ptr11, align 1, !tbaa !5
  %i13 = insertelement <2 x i8> undef, i8 %i4, i32 0
  %i14 = insertelement <2 x i8> %i13, i8 %i12, i32 1
  %i15 = zext <2 x i8> %i14 to <2 x i64>
  %i16 = shl nuw nsw <2 x i64> %i15, <i64 16, i64 16>
  %i17 = or <2 x i64> %i16, %i11
  %incdec.ptr18 = getelementptr inbounds i8, i8* %ivec, i64 7
  %i18 = load i8, i8* %incdec.ptr14, align 1, !tbaa !5
  %i19 = insertelement <2 x i8> undef, i8 %i5, i32 0
  %i20 = insertelement <2 x i8> %i19, i8 %i18, i32 1
  %i21 = zext <2 x i8> %i20 to <2 x i64>
  %i22 = shl nuw nsw <2 x i64> %i21, <i64 8, i64 8>
  %i23 = or <2 x i64> %i17, %i22
  %i24 = load i8, i8* %incdec.ptr18, align 1, !tbaa !5
  %i25 = insertelement <2 x i8> undef, i8 %i6, i32 0
  %i26 = insertelement <2 x i8> %i25, i8 %i24, i32 1
  %i27 = zext <2 x i8> %i26 to <2 x i64>
  %i28 = or <2 x i64> %i23, %i27
  %arrayidx = getelementptr inbounds <2 x i64>, <2 x i64>* %ti, i64 0, i64 0
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  store <2 x i64> %i28, <2 x i64>* %ti, align 16, !tbaa !6
  %incdec.ptr27 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 1
  store i8 %i3, i8* %i1, align 1, !tbaa !5
  %incdec.ptr31 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 2
  store i8 %i4, i8* %incdec.ptr27, align 1, !tbaa !5
  %incdec.ptr35 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 3
  store i8 %i5, i8* %incdec.ptr31, align 1, !tbaa !5
  %incdec.ptr38 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 4
  store i8 %i6, i8* %incdec.ptr35, align 1, !tbaa !5
  %incdec.ptr42 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 5
  store i8 %i7, i8* %incdec.ptr38, align 1, !tbaa !5
  %incdec.ptr46 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 6
  store i8 %i12, i8* %incdec.ptr42, align 1, !tbaa !5
  %incdec.ptr50 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 7
  store i8 %i18, i8* %incdec.ptr46, align 1, !tbaa !5
  store i8 %i24, i8* %incdec.ptr50, align 1, !tbaa !5
  %tobool208 = icmp eq i64 %length, 0
  br i1 %tobool208, label %if.end130, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %"BF_ofb64_encrypt$0_initialize_context"

"BF_ofb64_encrypt$0_initialize_context":          ; preds = %while.body.preheader
  store [8 x i8]* %d, [8 x i8]** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$0", align 8
  store i8* %incdec.ptr46, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$1", align 8
  store i8* %incdec.ptr38, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$2", align 8
  store i64* %arrayidx25, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$3", align 8
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$4", align 8
  store i8* %incdec.ptr50, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$5", align 8
  store i8* %incdec.ptr31, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$6", align 8
  store i8* %incdec.ptr42, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7", align 8
  store i64* %arrayidx, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8", align 8
  store i8* %incdec.ptr35, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$9", align 8
  store i8* %i1, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$10", align 8
  store i8* %incdec.ptr27, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11", align 8
  br label %"BF_ofb64_encrypt$0_call_recursive_function"

"BF_ofb64_encrypt$0_call_recursive_function":     ; preds = %"BF_ofb64_encrypt$0_extract_next_values", %"BF_ofb64_encrypt$0_initialize_context"
  %i29 = phi i8* [ %out, %"BF_ofb64_encrypt$0_initialize_context" ], [ %i37, %"BF_ofb64_encrypt$0_extract_next_values" ]
  %i30 = phi i8* [ %in, %"BF_ofb64_encrypt$0_initialize_context" ], [ %i39, %"BF_ofb64_encrypt$0_extract_next_values" ]
  %i31 = phi i32 [ %i, %"BF_ofb64_encrypt$0_initialize_context" ], [ %i41, %"BF_ofb64_encrypt$0_extract_next_values" ]
  %i32 = phi i64 [ %length, %"BF_ofb64_encrypt$0_initialize_context" ], [ %i43, %"BF_ofb64_encrypt$0_extract_next_values" ]
  %i33 = phi i32 [ 0, %"BF_ofb64_encrypt$0_initialize_context" ], [ %i45, %"BF_ofb64_encrypt$0_extract_next_values" ]
  call void @"BF_ofb64_encrypt$0"(i8* %i29, i8* %i30, i32 %i31, i64 %i32, i32 %i33, i8 0)
  %i34 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 5
  %i35 = load i1, i1* %i34, align 1
  br i1 %i35, label %"BF_ofb64_encrypt$0_extract_return_values$0", label %"BF_ofb64_encrypt$0_extract_next_values"

"BF_ofb64_encrypt$0_extract_next_values":         ; preds = %"BF_ofb64_encrypt$0_call_recursive_function"
  %i36 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 0
  %i37 = load i8*, i8** %i36, align 8
  %i38 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 1
  %i39 = load i8*, i8** %i38, align 8
  %i40 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 2
  %i41 = load i32, i32* %i40, align 4
  %i42 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 3
  %i43 = load i64, i64* %i42, align 8
  %i44 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 4
  %i45 = load i32, i32* %i44, align 4
  br label %"BF_ofb64_encrypt$0_call_recursive_function"

"BF_ofb64_encrypt$0_extract_return_values$0":     ; preds = %"BF_ofb64_encrypt$0_call_recursive_function"
  %i46 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 0
  %i47 = load i32, i32* %i46, align 4
  %i48 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 1
  %i49 = load i32, i32* %i48, align 4
  br label %while.end

while.end:                                        ; preds = %"BF_ofb64_encrypt$0_extract_return_values$0"
  %tobool96 = icmp eq i32 %i47, 0
  br i1 %tobool96, label %if.end130, label %if.then97

if.then97:                                        ; preds = %while.end
  %i50 = load i64, i64* %arrayidx, align 16, !tbaa !6
  %i51 = load i64, i64* %arrayidx25, align 8, !tbaa !6
  %shr100 = lshr i64 %i50, 24
  %conv102 = trunc i64 %shr100 to i8
  store i8 %conv102, i8* %ivec, align 1, !tbaa !5
  %shr104 = lshr i64 %i50, 16
  %conv106 = trunc i64 %shr104 to i8
  store i8 %conv106, i8* %incdec.ptr, align 1, !tbaa !5
  %shr108 = lshr i64 %i50, 8
  %conv110 = trunc i64 %shr108 to i8
  store i8 %conv110, i8* %incdec.ptr1, align 1, !tbaa !5
  %conv113 = trunc i64 %i50 to i8
  store i8 %conv113, i8* %incdec.ptr4, align 1, !tbaa !5
  %shr115 = lshr i64 %i51, 24
  %conv117 = trunc i64 %shr115 to i8
  store i8 %conv117, i8* %incdec.ptr8, align 1, !tbaa !5
  %shr119 = lshr i64 %i51, 16
  %conv121 = trunc i64 %shr119 to i8
  store i8 %conv121, i8* %incdec.ptr11, align 1, !tbaa !5
  %shr123 = lshr i64 %i51, 8
  %conv125 = trunc i64 %shr123 to i8
  store i8 %conv125, i8* %incdec.ptr14, align 1, !tbaa !5
  %conv128 = trunc i64 %i51 to i8
  store i8 %conv128, i8* %incdec.ptr18, align 1, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %if.then97, %while.end, %entry
  %n.0.lcssa216 = phi i32 [ %i49, %while.end ], [ %i49, %if.then97 ], [ %i, %entry ]
  store i32 %n.0.lcssa216, i32* %num, align 4, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %i2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %i1) #3
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

define void @"BF_ofb64_encrypt$0"(i8* %arg, i8* %arg1, i32 %arg2, i64 %arg3, i32 %arg4, i8 %arg5) {
"BF_ofb64_encrypt$0_header":
  %dec213 = add nsw i64 %arg3, -1
  %cmp = icmp eq i32 %arg2, 0
  br i1 %cmp, label %if.then, label %"BF_ofb64_encrypt$0_latch$0"

if.then:                                          ; preds = %"BF_ofb64_encrypt$0_header"
  %i = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$4", align 8
  %i6 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8", align 8
  call void @BF_encrypt(i64* %i6, %struct.bf_key_st* %i, i32 1) #3
  %i7 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8", align 8
  %i8 = load i64, i64* %i7, align 16, !tbaa !6
  %shr58 = lshr i64 %i8, 24
  %conv60 = trunc i64 %shr58 to i8
  %i9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$10", align 8
  store i8 %conv60, i8* %i9, align 1, !tbaa !5
  %shr62 = lshr i64 %i8, 16
  %conv64 = trunc i64 %shr62 to i8
  %i10 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11", align 8
  store i8 %conv64, i8* %i10, align 1, !tbaa !5
  %shr66 = lshr i64 %i8, 8
  %conv68 = trunc i64 %shr66 to i8
  %i11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$6", align 8
  store i8 %conv68, i8* %i11, align 1, !tbaa !5
  %conv71 = trunc i64 %i8 to i8
  %i12 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$9", align 8
  store i8 %conv71, i8* %i12, align 1, !tbaa !5
  %i13 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$3", align 8
  %i14 = load i64, i64* %i13, align 8, !tbaa !6
  %shr74 = lshr i64 %i14, 24
  %conv76 = trunc i64 %shr74 to i8
  %i15 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$2", align 8
  store i8 %conv76, i8* %i15, align 1, !tbaa !5
  %shr78 = lshr i64 %i14, 16
  %conv80 = trunc i64 %shr78 to i8
  %i16 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7", align 8
  store i8 %conv80, i8* %i16, align 1, !tbaa !5
  %shr82 = lshr i64 %i14, 8
  %conv84 = trunc i64 %shr82 to i8
  %i17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$1", align 8
  store i8 %conv84, i8* %i17, align 1, !tbaa !5
  %conv87 = trunc i64 %i14 to i8
  %i18 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$5", align 8
  store i8 %conv87, i8* %i18, align 1, !tbaa !5
  %inc = add nsw i32 %arg4, 1
  br label %"BF_ofb64_encrypt$0_latch$0"

"BF_ofb64_encrypt$0_latch$0":                     ; preds = %if.then, %"BF_ofb64_encrypt$0_header"
  %save.1 = phi i32 [ %inc, %if.then ], [ %arg4, %"BF_ofb64_encrypt$0_header" ]
  %incdec.ptr89 = getelementptr inbounds i8, i8* %arg1, i64 1
  %i19 = load i8, i8* %arg1, align 1, !tbaa !5
  %idxprom = sext i32 %arg2 to i64
  %i20 = load [8 x i8]*, [8 x i8]** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$0", align 8
  %arrayidx91 = getelementptr inbounds [8 x i8], [8 x i8]* %i20, i64 0, i64 %idxprom
  %i21 = load i8, i8* %arrayidx91, align 1, !tbaa !5
  %xor206 = xor i8 %i21, %i19
  %incdec.ptr94 = getelementptr inbounds i8, i8* %arg, i64 1
  store i8 %xor206, i8* %arg, align 1, !tbaa !5
  %add = add nsw i32 %arg2, 1
  %and95 = and i32 %add, 7
  %tobool = icmp eq i64 %dec213, 0
  br i1 %tobool, label %"BF_ofb64_encrypt$0_return_from_recursive_function$0", label %"BF_ofb64_encrypt$0_increment_depth_counter"

"BF_ofb64_encrypt$0_increment_depth_counter":     ; preds = %"BF_ofb64_encrypt$0_latch$0"
  %i22 = add i8 %arg5, 1
  %i23 = icmp ult i8 %i22, 8
  br i1 %i23, label %"BF_ofb64_encrypt$0_recursively_call_function", label %"BF_ofb64_encrypt$0_save_recursive_state_and_return"

"BF_ofb64_encrypt$0_recursively_call_function":   ; preds = %"BF_ofb64_encrypt$0_increment_depth_counter"
  call void @"BF_ofb64_encrypt$0"(i8* %incdec.ptr94, i8* %incdec.ptr89, i32 %and95, i64 %dec213, i32 %save.1, i8 %i22)
  ret void

"BF_ofb64_encrypt$0_save_recursive_state_and_return": ; preds = %"BF_ofb64_encrypt$0_increment_depth_counter"
  %i24 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 0
  store i8* %incdec.ptr94, i8** %i24, align 8
  %i25 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 1
  store i8* %incdec.ptr89, i8** %i25, align 8
  %i26 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 2
  store i32 %and95, i32* %i26, align 4
  %i27 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 3
  store i64 %dec213, i64* %i27, align 8
  %i28 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 4
  store i32 %save.1, i32* %i28, align 4
  %i29 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 5
  store i1 false, i1* %i29, align 1
  ret void

"BF_ofb64_encrypt$0_return_from_recursive_function$0": ; preds = %"BF_ofb64_encrypt$0_latch$0"
  %i30 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 0
  store i32 %save.1, i32* %i30, align 4
  %i31 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 1
  store i32 %and95, i32* %i31, align 4
  %i32 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 5
  store i1 true, i1* %i32, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
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
