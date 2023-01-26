; ModuleID = './benchmark_intermediate_representations/loop2recursion/bf/bf_ofb64.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i32 }
%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@"BF_ofb64_encrypt$0_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$0" = dso_local global [8 x i8]* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$1" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$2" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$3" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$4" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$5" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$6" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8" = dso_local global %struct.bf_key_st* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$9" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$10" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11" = dso_local global i64* null

; Function Attrs: nounwind uwtable
define void @BF_ofb64_encrypt(i8* nocapture readonly %in, i8* nocapture %out, i64 %length, %struct.bf_key_st* %schedule, i8* nocapture %ivec, i32* nocapture %num) #0 {
entry:
  %d = alloca [8 x i8], align 1
  %ti = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %ti to [2 x i64]*
  %tmp = load i32, i32* %num, align 4, !tbaa !1
  %tmp1 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %tmp1) #3
  %tmp2 = bitcast <2 x i64>* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %tmp2) #3
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %tmp3 = load i8, i8* %ivec, align 1, !tbaa !5
  %incdec.ptr1 = getelementptr inbounds i8, i8* %ivec, i64 2
  %tmp4 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds i8, i8* %ivec, i64 3
  %tmp5 = load i8, i8* %incdec.ptr1, align 1, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds i8, i8* %ivec, i64 4
  %tmp6 = load i8, i8* %incdec.ptr4, align 1, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds i8, i8* %ivec, i64 5
  %tmp7 = load i8, i8* %incdec.ptr8, align 1, !tbaa !5
  %tmp8 = insertelement <2 x i8> undef, i8 %tmp3, i32 0
  %tmp9 = insertelement <2 x i8> %tmp8, i8 %tmp7, i32 1
  %tmp10 = zext <2 x i8> %tmp9 to <2 x i64>
  %tmp11 = shl nuw nsw <2 x i64> %tmp10, <i64 24, i64 24>
  %incdec.ptr14 = getelementptr inbounds i8, i8* %ivec, i64 6
  %tmp12 = load i8, i8* %incdec.ptr11, align 1, !tbaa !5
  %tmp13 = insertelement <2 x i8> undef, i8 %tmp4, i32 0
  %tmp14 = insertelement <2 x i8> %tmp13, i8 %tmp12, i32 1
  %tmp15 = zext <2 x i8> %tmp14 to <2 x i64>
  %tmp16 = shl nuw nsw <2 x i64> %tmp15, <i64 16, i64 16>
  %tmp17 = or <2 x i64> %tmp16, %tmp11
  %incdec.ptr18 = getelementptr inbounds i8, i8* %ivec, i64 7
  %tmp18 = load i8, i8* %incdec.ptr14, align 1, !tbaa !5
  %tmp19 = insertelement <2 x i8> undef, i8 %tmp5, i32 0
  %tmp20 = insertelement <2 x i8> %tmp19, i8 %tmp18, i32 1
  %tmp21 = zext <2 x i8> %tmp20 to <2 x i64>
  %tmp22 = shl nuw nsw <2 x i64> %tmp21, <i64 8, i64 8>
  %tmp23 = or <2 x i64> %tmp17, %tmp22
  %tmp24 = load i8, i8* %incdec.ptr18, align 1, !tbaa !5
  %tmp25 = insertelement <2 x i8> undef, i8 %tmp6, i32 0
  %tmp26 = insertelement <2 x i8> %tmp25, i8 %tmp24, i32 1
  %tmp27 = zext <2 x i8> %tmp26 to <2 x i64>
  %tmp28 = or <2 x i64> %tmp23, %tmp27
  %arrayidx = getelementptr inbounds <2 x i64>, <2 x i64>* %ti, i64 0, i64 0
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  store <2 x i64> %tmp28, <2 x i64>* %ti, align 16, !tbaa !6
  %incdec.ptr27 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 1
  store i8 %tmp3, i8* %tmp1, align 1, !tbaa !5
  %incdec.ptr31 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 2
  store i8 %tmp4, i8* %incdec.ptr27, align 1, !tbaa !5
  %incdec.ptr35 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 3
  store i8 %tmp5, i8* %incdec.ptr31, align 1, !tbaa !5
  %incdec.ptr38 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 4
  store i8 %tmp6, i8* %incdec.ptr35, align 1, !tbaa !5
  %incdec.ptr42 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 5
  store i8 %tmp7, i8* %incdec.ptr38, align 1, !tbaa !5
  %incdec.ptr46 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 6
  store i8 %tmp12, i8* %incdec.ptr42, align 1, !tbaa !5
  %incdec.ptr50 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 7
  store i8 %tmp18, i8* %incdec.ptr46, align 1, !tbaa !5
  store i8 %tmp24, i8* %incdec.ptr50, align 1, !tbaa !5
  %tobool208 = icmp eq i64 %length, 0
  br i1 %tobool208, label %if.end130, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %"BF_ofb64_encrypt$0_initialize_context"

"BF_ofb64_encrypt$0_initialize_context":          ; preds = %while.body.preheader
  store [8 x i8]* %d, [8 x i8]** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$0"
  store i8* %incdec.ptr50, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$1"
  store i8* %incdec.ptr46, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$2"
  store i8* %incdec.ptr42, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$3"
  store i8* %incdec.ptr35, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$4"
  store i8* %incdec.ptr31, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$5"
  store i8* %tmp1, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$6"
  store i8* %incdec.ptr38, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7"
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8"
  store i64* %arrayidx25, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$9"
  store i8* %incdec.ptr27, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$10"
  store i64* %arrayidx, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11"
  br label %"BF_ofb64_encrypt$0_call_recursive_function"

"BF_ofb64_encrypt$0_call_recursive_function":     ; preds = %"BF_ofb64_encrypt$0_initialize_context"
  call void @"BF_ofb64_encrypt$0"(i8* %out, i8* %in, i32 %tmp, i32 0, i64 %length)
  br label %"BF_ofb64_encrypt$0_extract_return_values$0"

"BF_ofb64_encrypt$0_extract_return_values$0":     ; preds = %"BF_ofb64_encrypt$0_call_recursive_function"
  %tmp29 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 0
  %tmp30 = load i32, i32* %tmp29
  %tmp31 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 1
  %tmp32 = load i32, i32* %tmp31
  br label %while.end

while.end:                                        ; preds = %"BF_ofb64_encrypt$0_extract_return_values$0"
  %tobool96 = icmp eq i32 %tmp30, 0
  br i1 %tobool96, label %if.end130, label %if.then97

if.then97:                                        ; preds = %while.end
  %tmp33 = load i64, i64* %arrayidx, align 16, !tbaa !6
  %tmp34 = load i64, i64* %arrayidx25, align 8, !tbaa !6
  %shr100 = lshr i64 %tmp33, 24
  %conv102 = trunc i64 %shr100 to i8
  store i8 %conv102, i8* %ivec, align 1, !tbaa !5
  %shr104 = lshr i64 %tmp33, 16
  %conv106 = trunc i64 %shr104 to i8
  store i8 %conv106, i8* %incdec.ptr, align 1, !tbaa !5
  %shr108 = lshr i64 %tmp33, 8
  %conv110 = trunc i64 %shr108 to i8
  store i8 %conv110, i8* %incdec.ptr1, align 1, !tbaa !5
  %conv113 = trunc i64 %tmp33 to i8
  store i8 %conv113, i8* %incdec.ptr4, align 1, !tbaa !5
  %shr115 = lshr i64 %tmp34, 24
  %conv117 = trunc i64 %shr115 to i8
  store i8 %conv117, i8* %incdec.ptr8, align 1, !tbaa !5
  %shr119 = lshr i64 %tmp34, 16
  %conv121 = trunc i64 %shr119 to i8
  store i8 %conv121, i8* %incdec.ptr11, align 1, !tbaa !5
  %shr123 = lshr i64 %tmp34, 8
  %conv125 = trunc i64 %shr123 to i8
  store i8 %conv125, i8* %incdec.ptr14, align 1, !tbaa !5
  %conv128 = trunc i64 %tmp34 to i8
  store i8 %conv128, i8* %incdec.ptr18, align 1, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %if.then97, %while.end, %entry
  %n.0.lcssa216 = phi i32 [ %tmp32, %while.end ], [ %tmp32, %if.then97 ], [ %tmp, %entry ]
  store i32 %n.0.lcssa216, i32* %num, align 4, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %tmp2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %tmp1) #3
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

define void @"BF_ofb64_encrypt$0"(i8* %arg, i8* %arg1, i32 %arg2, i32 %arg3, i64 %arg4) {
"BF_ofb64_encrypt$0_header":
  %dec213 = add nsw i64 %arg4, -1
  %cmp = icmp eq i32 %arg2, 0
  br i1 %cmp, label %if.then, label %"BF_ofb64_encrypt$0_latch$0"

if.then:                                          ; preds = %"BF_ofb64_encrypt$0_header"
  %tmp = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8"
  %tmp5 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11"
  call void @BF_encrypt(i64* %tmp5, %struct.bf_key_st* %tmp, i32 1) #3
  %tmp6 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11"
  %tmp7 = load i64, i64* %tmp6, align 16, !tbaa !6
  %shr58 = lshr i64 %tmp7, 24
  %conv60 = trunc i64 %shr58 to i8
  %tmp8 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$6"
  store i8 %conv60, i8* %tmp8, align 1, !tbaa !5
  %shr62 = lshr i64 %tmp7, 16
  %conv64 = trunc i64 %shr62 to i8
  %tmp9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$10"
  store i8 %conv64, i8* %tmp9, align 1, !tbaa !5
  %shr66 = lshr i64 %tmp7, 8
  %conv68 = trunc i64 %shr66 to i8
  %tmp10 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$5"
  store i8 %conv68, i8* %tmp10, align 1, !tbaa !5
  %conv71 = trunc i64 %tmp7 to i8
  %tmp11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$4"
  store i8 %conv71, i8* %tmp11, align 1, !tbaa !5
  %tmp12 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$9"
  %tmp13 = load i64, i64* %tmp12, align 8, !tbaa !6
  %shr74 = lshr i64 %tmp13, 24
  %conv76 = trunc i64 %shr74 to i8
  %tmp14 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7"
  store i8 %conv76, i8* %tmp14, align 1, !tbaa !5
  %shr78 = lshr i64 %tmp13, 16
  %conv80 = trunc i64 %shr78 to i8
  %tmp15 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$3"
  store i8 %conv80, i8* %tmp15, align 1, !tbaa !5
  %shr82 = lshr i64 %tmp13, 8
  %conv84 = trunc i64 %shr82 to i8
  %tmp16 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$2"
  store i8 %conv84, i8* %tmp16, align 1, !tbaa !5
  %conv87 = trunc i64 %tmp13 to i8
  %tmp17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$1"
  store i8 %conv87, i8* %tmp17, align 1, !tbaa !5
  %inc = add nsw i32 %arg3, 1
  br label %"BF_ofb64_encrypt$0_latch$0"

"BF_ofb64_encrypt$0_latch$0":                     ; preds = %if.then, %"BF_ofb64_encrypt$0_header"
  %save.1 = phi i32 [ %inc, %if.then ], [ %arg3, %"BF_ofb64_encrypt$0_header" ]
  %incdec.ptr89 = getelementptr inbounds i8, i8* %arg1, i64 1
  %tmp18 = load i8, i8* %arg1, align 1, !tbaa !5
  %idxprom = sext i32 %arg2 to i64
  %tmp19 = load [8 x i8]*, [8 x i8]** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$0"
  %arrayidx91 = getelementptr inbounds [8 x i8], [8 x i8]* %tmp19, i64 0, i64 %idxprom
  %tmp20 = load i8, i8* %arrayidx91, align 1, !tbaa !5
  %xor206 = xor i8 %tmp20, %tmp18
  %incdec.ptr94 = getelementptr inbounds i8, i8* %arg, i64 1
  store i8 %xor206, i8* %arg, align 1, !tbaa !5
  %add = add nsw i32 %arg2, 1
  %and95 = and i32 %add, 7
  %tobool = icmp eq i64 %dec213, 0
  br i1 %tobool, label %"BF_ofb64_encrypt$0_return_from_recursive_function$0", label %"BF_ofb64_encrypt$0_increment_depth_counter"

"BF_ofb64_encrypt$0_increment_depth_counter":     ; preds = %"BF_ofb64_encrypt$0_latch$0"
  br label %"BF_ofb64_encrypt$0_recursively_call_function"

"BF_ofb64_encrypt$0_recursively_call_function":   ; preds = %"BF_ofb64_encrypt$0_increment_depth_counter"
  call void @"BF_ofb64_encrypt$0"(i8* %incdec.ptr94, i8* %incdec.ptr89, i32 %and95, i32 %save.1, i64 %dec213)
  ret void

"BF_ofb64_encrypt$0_return_from_recursive_function$0": ; preds = %"BF_ofb64_encrypt$0_latch$0"
  %tmp21 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 0
  store i32 %save.1, i32* %tmp21
  %tmp22 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 1
  store i32 %and95, i32* %tmp22
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
