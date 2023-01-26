; ModuleID = './benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll'
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
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$9" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$10" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11" = dso_local global i8* null

; Function Attrs: nounwind uwtable
define void @BF_ofb64_encrypt(i8* nocapture readonly %in, i8* nocapture %out, i64 %length, %struct.bf_key_st* %schedule, i8* nocapture %ivec, i32* nocapture %num) #0 {
entry:
  %d = alloca [8 x i8], align 1
  %ti = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %ti to [2 x i64]*
  %0 = load i32, i32* %num, align 4, !tbaa !1
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #3
  %2 = bitcast <2 x i64>* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #3
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %3 = load i8, i8* %ivec, align 1, !tbaa !5
  %incdec.ptr1 = getelementptr inbounds i8, i8* %ivec, i64 2
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds i8, i8* %ivec, i64 3
  %5 = load i8, i8* %incdec.ptr1, align 1, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds i8, i8* %ivec, i64 4
  %6 = load i8, i8* %incdec.ptr4, align 1, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds i8, i8* %ivec, i64 5
  %7 = load i8, i8* %incdec.ptr8, align 1, !tbaa !5
  %8 = insertelement <2 x i8> undef, i8 %3, i32 0
  %9 = insertelement <2 x i8> %8, i8 %7, i32 1
  %10 = zext <2 x i8> %9 to <2 x i64>
  %11 = shl nuw nsw <2 x i64> %10, <i64 24, i64 24>
  %incdec.ptr14 = getelementptr inbounds i8, i8* %ivec, i64 6
  %12 = load i8, i8* %incdec.ptr11, align 1, !tbaa !5
  %13 = insertelement <2 x i8> undef, i8 %4, i32 0
  %14 = insertelement <2 x i8> %13, i8 %12, i32 1
  %15 = zext <2 x i8> %14 to <2 x i64>
  %16 = shl nuw nsw <2 x i64> %15, <i64 16, i64 16>
  %17 = or <2 x i64> %16, %11
  %incdec.ptr18 = getelementptr inbounds i8, i8* %ivec, i64 7
  %18 = load i8, i8* %incdec.ptr14, align 1, !tbaa !5
  %19 = insertelement <2 x i8> undef, i8 %5, i32 0
  %20 = insertelement <2 x i8> %19, i8 %18, i32 1
  %21 = zext <2 x i8> %20 to <2 x i64>
  %22 = shl nuw nsw <2 x i64> %21, <i64 8, i64 8>
  %23 = or <2 x i64> %17, %22
  %24 = load i8, i8* %incdec.ptr18, align 1, !tbaa !5
  %25 = insertelement <2 x i8> undef, i8 %6, i32 0
  %26 = insertelement <2 x i8> %25, i8 %24, i32 1
  %27 = zext <2 x i8> %26 to <2 x i64>
  %28 = or <2 x i64> %23, %27
  %arrayidx = getelementptr inbounds <2 x i64>, <2 x i64>* %ti, i64 0, i64 0
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  store <2 x i64> %28, <2 x i64>* %ti, align 16, !tbaa !6
  %incdec.ptr27 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 1
  store i8 %3, i8* %1, align 1, !tbaa !5
  %incdec.ptr31 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 2
  store i8 %4, i8* %incdec.ptr27, align 1, !tbaa !5
  %incdec.ptr35 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 3
  store i8 %5, i8* %incdec.ptr31, align 1, !tbaa !5
  %incdec.ptr38 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 4
  store i8 %6, i8* %incdec.ptr35, align 1, !tbaa !5
  %incdec.ptr42 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 5
  store i8 %7, i8* %incdec.ptr38, align 1, !tbaa !5
  %incdec.ptr46 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 6
  store i8 %12, i8* %incdec.ptr42, align 1, !tbaa !5
  %incdec.ptr50 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 7
  store i8 %18, i8* %incdec.ptr46, align 1, !tbaa !5
  store i8 %24, i8* %incdec.ptr50, align 1, !tbaa !5
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
  store i8* %1, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$5", align 8
  store i8* %incdec.ptr42, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$6", align 8
  store i64* %arrayidx, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7", align 8
  store i8* %incdec.ptr35, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8", align 8
  store i8* %incdec.ptr27, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$9", align 8
  store i8* %incdec.ptr50, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$10", align 8
  store i8* %incdec.ptr31, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11", align 8
  br label %"BF_ofb64_encrypt$0_call_recursive_function"

"BF_ofb64_encrypt$0_call_recursive_function":     ; preds = %"BF_ofb64_encrypt$0_extract_next_values", %"BF_ofb64_encrypt$0_initialize_context"
  %29 = phi i8* [ %out, %"BF_ofb64_encrypt$0_initialize_context" ], [ %37, %"BF_ofb64_encrypt$0_extract_next_values" ]
  %30 = phi i8* [ %in, %"BF_ofb64_encrypt$0_initialize_context" ], [ %39, %"BF_ofb64_encrypt$0_extract_next_values" ]
  %31 = phi i32 [ %0, %"BF_ofb64_encrypt$0_initialize_context" ], [ %41, %"BF_ofb64_encrypt$0_extract_next_values" ]
  %32 = phi i64 [ %length, %"BF_ofb64_encrypt$0_initialize_context" ], [ %43, %"BF_ofb64_encrypt$0_extract_next_values" ]
  %33 = phi i32 [ 0, %"BF_ofb64_encrypt$0_initialize_context" ], [ %45, %"BF_ofb64_encrypt$0_extract_next_values" ]
  call void @"BF_ofb64_encrypt$0"(i8* %29, i8* %30, i32 %31, i64 %32, i32 %33, i8 0)
  %34 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 5
  %35 = load i1, i1* %34, align 1
  br i1 %35, label %"BF_ofb64_encrypt$0_extract_return_values$0", label %"BF_ofb64_encrypt$0_extract_next_values"

"BF_ofb64_encrypt$0_extract_next_values":         ; preds = %"BF_ofb64_encrypt$0_call_recursive_function"
  %36 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  br label %"BF_ofb64_encrypt$0_call_recursive_function"

"BF_ofb64_encrypt$0_extract_return_values$0":     ; preds = %"BF_ofb64_encrypt$0_call_recursive_function"
  %46 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %while.end

while.end:                                        ; preds = %"BF_ofb64_encrypt$0_extract_return_values$0"
  %tobool96 = icmp eq i32 %47, 0
  br i1 %tobool96, label %if.end130, label %if.then97

if.then97:                                        ; preds = %while.end
  %50 = load i64, i64* %arrayidx, align 16, !tbaa !6
  %51 = load i64, i64* %arrayidx25, align 8, !tbaa !6
  %shr100 = lshr i64 %50, 24
  %conv102 = trunc i64 %shr100 to i8
  store i8 %conv102, i8* %ivec, align 1, !tbaa !5
  %shr104 = lshr i64 %50, 16
  %conv106 = trunc i64 %shr104 to i8
  store i8 %conv106, i8* %incdec.ptr, align 1, !tbaa !5
  %shr108 = lshr i64 %50, 8
  %conv110 = trunc i64 %shr108 to i8
  store i8 %conv110, i8* %incdec.ptr1, align 1, !tbaa !5
  %conv113 = trunc i64 %50 to i8
  store i8 %conv113, i8* %incdec.ptr4, align 1, !tbaa !5
  %shr115 = lshr i64 %51, 24
  %conv117 = trunc i64 %shr115 to i8
  store i8 %conv117, i8* %incdec.ptr8, align 1, !tbaa !5
  %shr119 = lshr i64 %51, 16
  %conv121 = trunc i64 %shr119 to i8
  store i8 %conv121, i8* %incdec.ptr11, align 1, !tbaa !5
  %shr123 = lshr i64 %51, 8
  %conv125 = trunc i64 %shr123 to i8
  store i8 %conv125, i8* %incdec.ptr14, align 1, !tbaa !5
  %conv128 = trunc i64 %51 to i8
  store i8 %conv128, i8* %incdec.ptr18, align 1, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %if.then97, %while.end, %entry
  %n.0.lcssa216 = phi i32 [ %49, %while.end ], [ %49, %if.then97 ], [ %0, %entry ]
  store i32 %n.0.lcssa216, i32* %num, align 4, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #3
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

define void @"BF_ofb64_encrypt$0"(i8* %0, i8* %1, i32 %2, i64 %3, i32 %4, i8 %5) {
"BF_ofb64_encrypt$0_header":
  %dec213 = add nsw i64 %3, -1
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %"BF_ofb64_encrypt$0_latch$0"

if.then:                                          ; preds = %"BF_ofb64_encrypt$0_header"
  %6 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$4", align 8
  %7 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7", align 8
  call void @BF_encrypt(i64* %7, %struct.bf_key_st* %6, i32 1) #3
  %8 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$7", align 8
  %9 = load i64, i64* %8, align 16, !tbaa !6
  %shr58 = lshr i64 %9, 24
  %conv60 = trunc i64 %shr58 to i8
  %10 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$5", align 8
  store i8 %conv60, i8* %10, align 1, !tbaa !5
  %shr62 = lshr i64 %9, 16
  %conv64 = trunc i64 %shr62 to i8
  %11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$9", align 8
  store i8 %conv64, i8* %11, align 1, !tbaa !5
  %shr66 = lshr i64 %9, 8
  %conv68 = trunc i64 %shr66 to i8
  %12 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$11", align 8
  store i8 %conv68, i8* %12, align 1, !tbaa !5
  %conv71 = trunc i64 %9 to i8
  %13 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$8", align 8
  store i8 %conv71, i8* %13, align 1, !tbaa !5
  %14 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$3", align 8
  %15 = load i64, i64* %14, align 8, !tbaa !6
  %shr74 = lshr i64 %15, 24
  %conv76 = trunc i64 %shr74 to i8
  %16 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$2", align 8
  store i8 %conv76, i8* %16, align 1, !tbaa !5
  %shr78 = lshr i64 %15, 16
  %conv80 = trunc i64 %shr78 to i8
  %17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$6", align 8
  store i8 %conv80, i8* %17, align 1, !tbaa !5
  %shr82 = lshr i64 %15, 8
  %conv84 = trunc i64 %shr82 to i8
  %18 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$1", align 8
  store i8 %conv84, i8* %18, align 1, !tbaa !5
  %conv87 = trunc i64 %15 to i8
  %19 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$10", align 8
  store i8 %conv87, i8* %19, align 1, !tbaa !5
  %inc = add nsw i32 %4, 1
  br label %"BF_ofb64_encrypt$0_latch$0"

"BF_ofb64_encrypt$0_latch$0":                     ; preds = %if.then, %"BF_ofb64_encrypt$0_header"
  %save.1 = phi i32 [ %inc, %if.then ], [ %4, %"BF_ofb64_encrypt$0_header" ]
  %incdec.ptr89 = getelementptr inbounds i8, i8* %1, i64 1
  %20 = load i8, i8* %1, align 1, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %21 = load [8 x i8]*, [8 x i8]** @"./benchmark_intermediate_representations/baseline/bf/bf_ofb64.ll_invariant_variable$0", align 8
  %arrayidx91 = getelementptr inbounds [8 x i8], [8 x i8]* %21, i64 0, i64 %idxprom
  %22 = load i8, i8* %arrayidx91, align 1, !tbaa !5
  %xor206 = xor i8 %22, %20
  %incdec.ptr94 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %xor206, i8* %0, align 1, !tbaa !5
  %add = add nsw i32 %2, 1
  %and95 = and i32 %add, 7
  %tobool = icmp eq i64 %dec213, 0
  br i1 %tobool, label %"BF_ofb64_encrypt$0_return_from_recursive_function$0", label %"BF_ofb64_encrypt$0_increment_depth_counter"

"BF_ofb64_encrypt$0_increment_depth_counter":     ; preds = %"BF_ofb64_encrypt$0_latch$0"
  %23 = add i8 %5, 1
  %24 = icmp ult i8 %23, 64
  br i1 %24, label %"BF_ofb64_encrypt$0_recursively_call_function", label %"BF_ofb64_encrypt$0_save_recursive_state_and_return"

"BF_ofb64_encrypt$0_recursively_call_function":   ; preds = %"BF_ofb64_encrypt$0_increment_depth_counter"
  call void @"BF_ofb64_encrypt$0"(i8* %incdec.ptr94, i8* %incdec.ptr89, i32 %and95, i64 %dec213, i32 %save.1, i8 %23)
  ret void

"BF_ofb64_encrypt$0_save_recursive_state_and_return": ; preds = %"BF_ofb64_encrypt$0_increment_depth_counter"
  %25 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 0
  store i8* %incdec.ptr94, i8** %25, align 8
  %26 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 1
  store i8* %incdec.ptr89, i8** %26, align 8
  %27 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 2
  store i32 %and95, i32* %27, align 4
  %28 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 3
  store i64 %dec213, i64* %28, align 8
  %29 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 4
  store i32 %save.1, i32* %29, align 4
  %30 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 5
  store i1 false, i1* %30, align 1
  ret void

"BF_ofb64_encrypt$0_return_from_recursive_function$0": ; preds = %"BF_ofb64_encrypt$0_latch$0"
  %31 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 0
  store i32 %save.1, i32* %31, align 4
  %32 = getelementptr %0, %0* @"BF_ofb64_encrypt$0_return_value_struct", i32 0, i32 1
  store i32 %and95, i32* %32, align 4
  %33 = getelementptr %1, %1* @"BF_ofb64_encrypt$0_recursion_state_struct", i32 0, i32 5
  store i1 true, i1* %33, align 1
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
