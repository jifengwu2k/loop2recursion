; ModuleID = './benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32 }
%1 = type { i8*, i8*, i64, i32, i1 }
%2 = type { i32 }
%3 = type { i8*, i64, i8*, i32, i1 }
%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@"BF_cfb64_encrypt$1_return_value_struct" = dso_local global %0 zeroinitializer
@"BF_cfb64_encrypt$1_recursion_state_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1" = dso_local global %struct.bf_key_st* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3" = dso_local global <2 x i64>* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11" = dso_local global i8* null
@"BF_cfb64_encrypt$0_return_value_struct" = dso_local global %2 zeroinitializer
@"BF_cfb64_encrypt$0_recursion_state_struct" = dso_local global %3 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15" = dso_local global i8* null
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
  %0 = load i32, i32* %num, align 4, !tbaa !1
  %1 = bitcast <2 x i64>* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %1) #3
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
  store i64* %arrayidx27, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0", align 8
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1", align 8
  store i64* %arrayidx, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2", align 8
  store <2 x i64>* %ti, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3", align 8
  store i8* %incdec.ptr20, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4", align 8
  store i8* %incdec.ptr16, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5", align 8
  store i8* %incdec.ptr, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  store i8* %incdec.ptr6, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7", align 8
  store i8* %incdec.ptr3, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8", align 8
  store i8* %incdec.ptr13, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9", align 8
  store i8* %ivec, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  store i8* %incdec.ptr10, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11", align 8
  br label %"BF_cfb64_encrypt$1_call_recursive_function"

"BF_cfb64_encrypt$1_call_recursive_function":     ; preds = %"BF_cfb64_encrypt$1_extract_next_values", %"BF_cfb64_encrypt$1_initialize_context"
  %2 = phi i8* [ %out, %"BF_cfb64_encrypt$1_initialize_context" ], [ %9, %"BF_cfb64_encrypt$1_extract_next_values" ]
  %3 = phi i8* [ %in, %"BF_cfb64_encrypt$1_initialize_context" ], [ %11, %"BF_cfb64_encrypt$1_extract_next_values" ]
  %4 = phi i64 [ %dec68247, %"BF_cfb64_encrypt$1_initialize_context" ], [ %13, %"BF_cfb64_encrypt$1_extract_next_values" ]
  %5 = phi i32 [ %0, %"BF_cfb64_encrypt$1_initialize_context" ], [ %15, %"BF_cfb64_encrypt$1_extract_next_values" ]
  call void @"BF_cfb64_encrypt$1"(i8* %2, i8* %3, i64 %4, i32 %5, i8 0)
  %6 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 4
  %7 = load i1, i1* %6, align 1
  br i1 %7, label %"BF_cfb64_encrypt$1_extract_return_values$0", label %"BF_cfb64_encrypt$1_extract_next_values"

"BF_cfb64_encrypt$1_extract_next_values":         ; preds = %"BF_cfb64_encrypt$1_call_recursive_function"
  %8 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  br label %"BF_cfb64_encrypt$1_call_recursive_function"

"BF_cfb64_encrypt$1_extract_return_values$0":     ; preds = %"BF_cfb64_encrypt$1_call_recursive_function"
  %16 = getelementptr %0, %0* @"BF_cfb64_encrypt$1_return_value_struct", i32 0, i32 0
  %17 = load i32, i32* %16, align 4
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
  store i64* %arrayidx103, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12", align 8
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1", align 8
  store <2 x i64>* %ti, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3", align 8
  store i8* %incdec.ptr96, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13", align 8
  store i64* %arrayidx88, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14", align 8
  store i8* %incdec.ptr74, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15", align 8
  store i8* %incdec.ptr92, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16", align 8
  store i8* %ivec, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  store i8* %incdec.ptr81, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17", align 8
  store i8* %incdec.ptr77, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18", align 8
  store i8* %incdec.ptr85, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19", align 8
  store i8* %incdec.ptr89, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20", align 8
  br label %"BF_cfb64_encrypt$0_call_recursive_function"

"BF_cfb64_encrypt$0_call_recursive_function":     ; preds = %"BF_cfb64_encrypt$0_extract_next_values", %"BF_cfb64_encrypt$0_initialize_context"
  %18 = phi i8* [ %in, %"BF_cfb64_encrypt$0_initialize_context" ], [ %25, %"BF_cfb64_encrypt$0_extract_next_values" ]
  %19 = phi i64 [ %dec68247, %"BF_cfb64_encrypt$0_initialize_context" ], [ %27, %"BF_cfb64_encrypt$0_extract_next_values" ]
  %20 = phi i8* [ %out, %"BF_cfb64_encrypt$0_initialize_context" ], [ %29, %"BF_cfb64_encrypt$0_extract_next_values" ]
  %21 = phi i32 [ %0, %"BF_cfb64_encrypt$0_initialize_context" ], [ %31, %"BF_cfb64_encrypt$0_extract_next_values" ]
  call void @"BF_cfb64_encrypt$0"(i8* %18, i64 %19, i8* %20, i32 %21, i8 0)
  %22 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 4
  %23 = load i1, i1* %22, align 1
  br i1 %23, label %"BF_cfb64_encrypt$0_extract_return_values$0", label %"BF_cfb64_encrypt$0_extract_next_values"

"BF_cfb64_encrypt$0_extract_next_values":         ; preds = %"BF_cfb64_encrypt$0_call_recursive_function"
  %24 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  br label %"BF_cfb64_encrypt$0_call_recursive_function"

"BF_cfb64_encrypt$0_extract_return_values$0":     ; preds = %"BF_cfb64_encrypt$0_call_recursive_function"
  %32 = getelementptr %2, %2* @"BF_cfb64_encrypt$0_return_value_struct", i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %if.end151.loopexit

if.end151.loopexit:                               ; preds = %"BF_cfb64_encrypt$0_extract_return_values$0"
  br label %if.end151

if.end151.loopexit263:                            ; preds = %"BF_cfb64_encrypt$1_extract_return_values$0"
  br label %if.end151

if.end151:                                        ; preds = %if.end151.loopexit263, %if.end151.loopexit, %while.cond67.preheader, %while.cond.preheader
  %n.2 = phi i32 [ %0, %while.cond67.preheader ], [ %0, %while.cond.preheader ], [ %33, %if.end151.loopexit ], [ %17, %if.end151.loopexit263 ]
  store i32 %n.2, i32* %num, align 4, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %1) #3
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

define void @"BF_cfb64_encrypt$1"(i8* %0, i8* %1, i64 %2, i32 %3, i8 %4) {
"BF_cfb64_encrypt$1_header":
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %"BF_cfb64_encrypt$1_latch$0"

if.then2:                                         ; preds = %"BF_cfb64_encrypt$1_header"
  %5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  %6 = load i8, i8* %5, align 1, !tbaa !5
  %7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  %8 = load i8, i8* %7, align 1, !tbaa !5
  %9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8", align 8
  %10 = load i8, i8* %9, align 1, !tbaa !5
  %11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7", align 8
  %12 = load i8, i8* %11, align 1, !tbaa !5
  %13 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11", align 8
  %14 = load i8, i8* %13, align 1, !tbaa !5
  %15 = insertelement <2 x i8> undef, i8 %6, i32 0
  %16 = insertelement <2 x i8> %15, i8 %14, i32 1
  %17 = zext <2 x i8> %16 to <2 x i64>
  %18 = shl nuw nsw <2 x i64> %17, <i64 24, i64 24>
  %19 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9", align 8
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %21 = insertelement <2 x i8> undef, i8 %8, i32 0
  %22 = insertelement <2 x i8> %21, i8 %20, i32 1
  %23 = zext <2 x i8> %22 to <2 x i64>
  %24 = shl nuw nsw <2 x i64> %23, <i64 16, i64 16>
  %25 = or <2 x i64> %24, %18
  %26 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5", align 8
  %27 = load i8, i8* %26, align 1, !tbaa !5
  %28 = insertelement <2 x i8> undef, i8 %10, i32 0
  %29 = insertelement <2 x i8> %28, i8 %27, i32 1
  %30 = zext <2 x i8> %29 to <2 x i64>
  %31 = shl nuw nsw <2 x i64> %30, <i64 8, i64 8>
  %32 = or <2 x i64> %25, %31
  %33 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4", align 8
  %34 = load i8, i8* %33, align 1, !tbaa !5
  %35 = insertelement <2 x i8> undef, i8 %12, i32 0
  %36 = insertelement <2 x i8> %35, i8 %34, i32 1
  %37 = zext <2 x i8> %36 to <2 x i64>
  %38 = or <2 x i64> %32, %37
  %39 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3", align 8
  store <2 x i64> %38, <2 x i64>* %39, align 16, !tbaa !6
  %40 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1", align 8
  %41 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2", align 8
  call void @BF_encrypt(i64* %41, %struct.bf_key_st* %40, i32 1) #3
  %42 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2", align 8
  %43 = load i64, i64* %42, align 16, !tbaa !6
  %shr = lshr i64 %43, 24
  %conv29 = trunc i64 %shr to i8
  %44 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  store i8 %conv29, i8* %44, align 1, !tbaa !5
  %shr31 = lshr i64 %43, 16
  %conv33 = trunc i64 %shr31 to i8
  %45 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  store i8 %conv33, i8* %45, align 1, !tbaa !5
  %shr35 = lshr i64 %43, 8
  %conv37 = trunc i64 %shr35 to i8
  %46 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8", align 8
  store i8 %conv37, i8* %46, align 1, !tbaa !5
  %conv40 = trunc i64 %43 to i8
  %47 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7", align 8
  store i8 %conv40, i8* %47, align 1, !tbaa !5
  %48 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0", align 8
  %49 = load i64, i64* %48, align 8, !tbaa !6
  %shr43 = lshr i64 %49, 24
  %conv45 = trunc i64 %shr43 to i8
  %50 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11", align 8
  store i8 %conv45, i8* %50, align 1, !tbaa !5
  %shr47 = lshr i64 %49, 16
  %conv49 = trunc i64 %shr47 to i8
  %51 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9", align 8
  store i8 %conv49, i8* %51, align 1, !tbaa !5
  %shr51 = lshr i64 %49, 8
  %conv53 = trunc i64 %shr51 to i8
  %52 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5", align 8
  store i8 %conv53, i8* %52, align 1, !tbaa !5
  %conv56 = trunc i64 %49 to i8
  %53 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4", align 8
  store i8 %conv56, i8* %53, align 1, !tbaa !5
  br label %"BF_cfb64_encrypt$1_latch$0"

"BF_cfb64_encrypt$1_latch$0":                     ; preds = %if.then2, %"BF_cfb64_encrypt$1_header"
  %incdec.ptr58 = getelementptr inbounds i8, i8* %1, i64 1
  %54 = load i8, i8* %1, align 1, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %55 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %55, i64 %idxprom
  %56 = load i8, i8* %arrayidx60, align 1, !tbaa !5
  %xor245 = xor i8 %56, %54
  %incdec.ptr63 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %xor245, i8* %0, align 1, !tbaa !5
  store i8 %xor245, i8* %arrayidx60, align 1, !tbaa !5
  %add = add nsw i32 %3, 1
  %and66 = and i32 %add, 7
  %dec = add nsw i64 %2, -1
  %tobool1 = icmp eq i64 %2, 0
  br i1 %tobool1, label %"BF_cfb64_encrypt$1_return_from_recursive_function$0", label %"BF_cfb64_encrypt$1_increment_depth_counter"

"BF_cfb64_encrypt$1_increment_depth_counter":     ; preds = %"BF_cfb64_encrypt$1_latch$0"
  %57 = add i8 %4, 1
  %58 = icmp ult i8 %57, 64
  br i1 %58, label %"BF_cfb64_encrypt$1_recursively_call_function", label %"BF_cfb64_encrypt$1_save_recursive_state_and_return"

"BF_cfb64_encrypt$1_recursively_call_function":   ; preds = %"BF_cfb64_encrypt$1_increment_depth_counter"
  call void @"BF_cfb64_encrypt$1"(i8* %incdec.ptr63, i8* %incdec.ptr58, i64 %dec, i32 %and66, i8 %57)
  ret void

"BF_cfb64_encrypt$1_save_recursive_state_and_return": ; preds = %"BF_cfb64_encrypt$1_increment_depth_counter"
  %59 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 0
  store i8* %incdec.ptr63, i8** %59, align 8
  %60 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 1
  store i8* %incdec.ptr58, i8** %60, align 8
  %61 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 2
  store i64 %dec, i64* %61, align 8
  %62 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 3
  store i32 %and66, i32* %62, align 4
  %63 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 4
  store i1 false, i1* %63, align 1
  ret void

"BF_cfb64_encrypt$1_return_from_recursive_function$0": ; preds = %"BF_cfb64_encrypt$1_latch$0"
  %64 = getelementptr %0, %0* @"BF_cfb64_encrypt$1_return_value_struct", i32 0, i32 0
  store i32 %and66, i32* %64, align 4
  %65 = getelementptr %1, %1* @"BF_cfb64_encrypt$1_recursion_state_struct", i32 0, i32 4
  store i1 true, i1* %65, align 1
  ret void
}

define void @"BF_cfb64_encrypt$0"(i8* %0, i64 %1, i8* %2, i32 %3, i8 %4) {
"BF_cfb64_encrypt$0_header":
  %cmp71 = icmp eq i32 %3, 0
  br i1 %cmp71, label %if.then73, label %"BF_cfb64_encrypt$0_latch$0"

if.then73:                                        ; preds = %"BF_cfb64_encrypt$0_header"
  %5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  %6 = load i8, i8* %5, align 1, !tbaa !5
  %7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15", align 8
  %8 = load i8, i8* %7, align 1, !tbaa !5
  %9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18", align 8
  %10 = load i8, i8* %9, align 1, !tbaa !5
  %11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17", align 8
  %12 = load i8, i8* %11, align 1, !tbaa !5
  %13 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19", align 8
  %14 = load i8, i8* %13, align 1, !tbaa !5
  %15 = insertelement <2 x i8> undef, i8 %6, i32 0
  %16 = insertelement <2 x i8> %15, i8 %14, i32 1
  %17 = zext <2 x i8> %16 to <2 x i64>
  %18 = shl nuw nsw <2 x i64> %17, <i64 24, i64 24>
  %19 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20", align 8
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %21 = insertelement <2 x i8> undef, i8 %8, i32 0
  %22 = insertelement <2 x i8> %21, i8 %20, i32 1
  %23 = zext <2 x i8> %22 to <2 x i64>
  %24 = shl nuw nsw <2 x i64> %23, <i64 16, i64 16>
  %25 = or <2 x i64> %24, %18
  %26 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16", align 8
  %27 = load i8, i8* %26, align 1, !tbaa !5
  %28 = insertelement <2 x i8> undef, i8 %10, i32 0
  %29 = insertelement <2 x i8> %28, i8 %27, i32 1
  %30 = zext <2 x i8> %29 to <2 x i64>
  %31 = shl nuw nsw <2 x i64> %30, <i64 8, i64 8>
  %32 = or <2 x i64> %25, %31
  %33 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13", align 8
  %34 = load i8, i8* %33, align 1, !tbaa !5
  %35 = insertelement <2 x i8> undef, i8 %12, i32 0
  %36 = insertelement <2 x i8> %35, i8 %34, i32 1
  %37 = zext <2 x i8> %36 to <2 x i64>
  %38 = or <2 x i64> %32, %37
  %39 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3", align 8
  store <2 x i64> %38, <2 x i64>* %39, align 16, !tbaa !6
  %40 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1", align 8
  %41 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14", align 8
  call void @BF_encrypt(i64* %41, %struct.bf_key_st* %40, i32 1) #3
  %42 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14", align 8
  %43 = load i64, i64* %42, align 16, !tbaa !6
  %shr106 = lshr i64 %43, 24
  %conv108 = trunc i64 %shr106 to i8
  %44 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  store i8 %conv108, i8* %44, align 1, !tbaa !5
  %shr110 = lshr i64 %43, 16
  %conv112 = trunc i64 %shr110 to i8
  %45 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15", align 8
  store i8 %conv112, i8* %45, align 1, !tbaa !5
  %shr114 = lshr i64 %43, 8
  %conv116 = trunc i64 %shr114 to i8
  %46 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18", align 8
  store i8 %conv116, i8* %46, align 1, !tbaa !5
  %conv119 = trunc i64 %43 to i8
  %47 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17", align 8
  store i8 %conv119, i8* %47, align 1, !tbaa !5
  %48 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12", align 8
  %49 = load i64, i64* %48, align 8, !tbaa !6
  %shr122 = lshr i64 %49, 24
  %conv124 = trunc i64 %shr122 to i8
  %50 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19", align 8
  store i8 %conv124, i8* %50, align 1, !tbaa !5
  %shr126 = lshr i64 %49, 16
  %conv128 = trunc i64 %shr126 to i8
  %51 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20", align 8
  store i8 %conv128, i8* %51, align 1, !tbaa !5
  %shr130 = lshr i64 %49, 8
  %conv132 = trunc i64 %shr130 to i8
  %52 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16", align 8
  store i8 %conv132, i8* %52, align 1, !tbaa !5
  %conv135 = trunc i64 %49 to i8
  %53 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13", align 8
  store i8 %conv135, i8* %53, align 1, !tbaa !5
  br label %"BF_cfb64_encrypt$0_latch$0"

"BF_cfb64_encrypt$0_latch$0":                     ; preds = %if.then73, %"BF_cfb64_encrypt$0_header"
  %incdec.ptr138 = getelementptr inbounds i8, i8* %0, i64 1
  %54 = load i8, i8* %0, align 1, !tbaa !5
  %idxprom139 = sext i32 %3 to i64
  %55 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %55, i64 %idxprom139
  %56 = load i8, i8* %arrayidx140, align 1, !tbaa !5
  store i8 %54, i8* %arrayidx140, align 1, !tbaa !5
  %xor145244 = xor i8 %56, %54
  %incdec.ptr147 = getelementptr inbounds i8, i8* %2, i64 1
  store i8 %xor145244, i8* %2, align 1, !tbaa !5
  %add148 = add nsw i32 %3, 1
  %and149 = and i32 %add148, 7
  %dec68 = add nsw i64 %1, -1
  %tobool69 = icmp eq i64 %1, 0
  br i1 %tobool69, label %"BF_cfb64_encrypt$0_return_from_recursive_function$0", label %"BF_cfb64_encrypt$0_increment_depth_counter"

"BF_cfb64_encrypt$0_increment_depth_counter":     ; preds = %"BF_cfb64_encrypt$0_latch$0"
  %57 = add i8 %4, 1
  %58 = icmp ult i8 %57, 64
  br i1 %58, label %"BF_cfb64_encrypt$0_recursively_call_function", label %"BF_cfb64_encrypt$0_save_recursive_state_and_return"

"BF_cfb64_encrypt$0_recursively_call_function":   ; preds = %"BF_cfb64_encrypt$0_increment_depth_counter"
  call void @"BF_cfb64_encrypt$0"(i8* %incdec.ptr138, i64 %dec68, i8* %incdec.ptr147, i32 %and149, i8 %57)
  ret void

"BF_cfb64_encrypt$0_save_recursive_state_and_return": ; preds = %"BF_cfb64_encrypt$0_increment_depth_counter"
  %59 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 0
  store i8* %incdec.ptr138, i8** %59, align 8
  %60 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 1
  store i64 %dec68, i64* %60, align 8
  %61 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 2
  store i8* %incdec.ptr147, i8** %61, align 8
  %62 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 3
  store i32 %and149, i32* %62, align 4
  %63 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 4
  store i1 false, i1* %63, align 1
  ret void

"BF_cfb64_encrypt$0_return_from_recursive_function$0": ; preds = %"BF_cfb64_encrypt$0_latch$0"
  %64 = getelementptr %2, %2* @"BF_cfb64_encrypt$0_return_value_struct", i32 0, i32 0
  store i32 %and149, i32* %64, align 4
  %65 = getelementptr %3, %3* @"BF_cfb64_encrypt$0_recursion_state_struct", i32 0, i32 4
  store i1 true, i1* %65, align 1
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
