; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-8/pbmsrch/bmhsrch.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64 }
%1 = type { i8*, i8 }
%2 = type { i8*, i8 }

@pat = internal unnamed_addr global i8* null, align 8
@patlen = internal unnamed_addr global i32 0, align 4
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4
@"bmh_init$2_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$2" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$3" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$4" = dso_local global i8 0
@"bmh_search$0_return_value_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$5" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$6" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$7" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$8" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$9" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$10" = dso_local global i32 0
@"bmh_search$0$0_return_value_struct" = dso_local global %2 zeroinitializer
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$11" = dso_local global i8* null

; Function Attrs: nounwind uwtable
define void @bmh_init(i8* %pattern) #0 {
entry:
  store i8* %pattern, i8** @pat, align 8, !tbaa !1
  %call = tail call i64 @strlen(i8* %pattern) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @patlen, align 4, !tbaa !5
  %broadcast.splatinsert63 = insertelement <4 x i32> undef, i32 %conv, i32 0
  %broadcast.splat64 = shufflevector <4 x i32> %broadcast.splatinsert63, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %entry
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast ([256 x i32]* @skip to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 4) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 8) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 12) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 16) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 20) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 24) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 28) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 32) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 36) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 40) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 44) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 48) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 52) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 56) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 60) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 64) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 68) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 72) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 76) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 80) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 84) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 88) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 92) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 96) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 100) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 104) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 108) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 112) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 116) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 120) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 124) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 128) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 132) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 136) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 140) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 144) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 148) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 152) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 156) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 160) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 164) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 168) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 172) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 176) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 180) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 184) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 188) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 192) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 196) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 200) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 204) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 208) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 212) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 216) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 220) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 224) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 228) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 232) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 236) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 240) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 244) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 248) to <4 x i32>*), align 16, !tbaa !5
  store <4 x i32> %broadcast.splat64, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 252) to <4 x i32>*), align 16, !tbaa !5
  %cmp352 = icmp sgt i32 %conv, 0
  br i1 %cmp352, label %for.body5.lr.ph, label %for.end13

for.body5.lr.ph:                                  ; preds = %vector.body
  %sext61 = shl i64 %call, 32
  %i = ashr exact i64 %sext61, 32
  %sext65 = shl i64 %call, 32
  %i1 = ashr exact i64 %sext65, 32
  %i2 = add nsw i64 %i1, -1
  %xtraiter = and i64 %i1, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body5.lr.ph.split, label %for.body5.prol.preheader

for.body5.prol.preheader:                         ; preds = %for.body5.lr.ph
  br label %"bmh_init$2_initialize_context"

"bmh_init$2_initialize_context":                  ; preds = %for.body5.prol.preheader
  store i8* %pattern, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0", align 8
  store i32 %conv, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1", align 4
  br label %"bmh_init$2_call_recursive_function"

"bmh_init$2_call_recursive_function":             ; preds = %"bmh_init$2_initialize_context"
  call void @"bmh_init$2"(i64 %xtraiter, i64 0)
  br label %"bmh_init$2_extract_return_values$0"

"bmh_init$2_extract_return_values$0":             ; preds = %"bmh_init$2_call_recursive_function"
  %i3 = getelementptr %0, %0* @"bmh_init$2_return_value_struct", i32 0, i32 0
  %i4 = load i64, i64* %i3, align 8
  br label %for.body5.lr.ph.split.loopexit

for.body5.lr.ph.split.loopexit:                   ; preds = %"bmh_init$2_extract_return_values$0"
  br label %for.body5.lr.ph.split

for.body5.lr.ph.split:                            ; preds = %for.body5.lr.ph.split.loopexit, %for.body5.lr.ph
  %indvars.iv56.unr = phi i64 [ 0, %for.body5.lr.ph ], [ %i4, %for.body5.lr.ph.split.loopexit ]
  %i5 = icmp ult i64 %i2, 3
  br i1 %i5, label %for.end13.loopexit, label %for.body5.lr.ph.split.split

for.body5.lr.ph.split.split:                      ; preds = %for.body5.lr.ph.split
  br label %"bmh_init$1_initialize_context"

"bmh_init$1_initialize_context":                  ; preds = %for.body5.lr.ph.split.split
  store i64 %i, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$2", align 8
  store i32 %conv, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1", align 4
  store i8* %pattern, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0", align 8
  br label %"bmh_init$1_call_recursive_function"

"bmh_init$1_call_recursive_function":             ; preds = %"bmh_init$1_initialize_context"
  call void @"bmh_init$1"(i64 %indvars.iv56.unr)
  br label %for.end13.loopexit.unr-lcssa

for.end13.loopexit.unr-lcssa:                     ; preds = %"bmh_init$1_call_recursive_function"
  br label %for.end13.loopexit

for.end13.loopexit:                               ; preds = %for.end13.loopexit.unr-lcssa, %for.body5.lr.ph.split
  br label %for.end13

for.end13:                                        ; preds = %for.end13.loopexit, %vector.body
  %sub14 = shl i64 %call, 32
  %sext = add i64 %sub14, -4294967296
  %idxprom15 = ashr exact i64 %sext, 32
  %arrayidx16 = getelementptr inbounds i8, i8* %pattern, i64 %idxprom15
  %i6 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %idxprom18 = zext i8 %i6 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom18
  store i32 32767, i32* %arrayidx19, align 4, !tbaa !5
  store i32 %conv, i32* @skip2, align 4, !tbaa !5
  %cmp2250 = icmp sgt i32 %conv, 1
  br i1 %cmp2250, label %for.body24.preheader, label %for.end34

for.body24.preheader:                             ; preds = %for.end13
  br label %"bmh_init$0_initialize_context"

"bmh_init$0_initialize_context":                  ; preds = %for.body24.preheader
  store i64 %idxprom15, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$3", align 8
  store i32 %conv, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1", align 4
  store i8* %pattern, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0", align 8
  store i8 %i6, i8* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$4", align 1
  br label %"bmh_init$0_call_recursive_function"

"bmh_init$0_call_recursive_function":             ; preds = %"bmh_init$0_initialize_context"
  call void @"bmh_init$0"(i64 0)
  br label %for.end34.loopexit

for.end34.loopexit:                               ; preds = %"bmh_init$0_call_recursive_function"
  br label %for.end34

for.end34:                                        ; preds = %for.end34.loopexit, %for.end13
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @bmh_search(i8* readonly %string, i32 %stringlen) #2 {
entry:
  %i = load i32, i32* @patlen, align 4, !tbaa !5
  %sub = xor i32 %stringlen, -1
  %sub1 = add i32 %i, %sub
  %cmp = icmp sgt i32 %sub1, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %stringlen to i64
  %add.ptr = getelementptr inbounds i8, i8* %string, i64 %idx.ext
  %sub5 = sub nsw i32 32767, %stringlen
  %sub10 = add nsw i32 %i, -1
  %i1 = load i8*, i8** @pat, align 8
  %i2 = load i32, i32* @skip2, align 4
  %i3 = sext i32 %sub10 to i64
  br label %"bmh_search$0_initialize_context"

"bmh_search$0_initialize_context":                ; preds = %if.end
  store i32 %i2, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$5", align 4
  store i8* %i1, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$6", align 8
  store i64 %i3, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$7", align 8
  store i32 %sub10, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$8", align 4
  store i8* %add.ptr, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$9", align 8
  store i32 %sub5, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$10", align 4
  br label %"bmh_search$0_call_recursive_function"

"bmh_search$0_call_recursive_function":           ; preds = %"bmh_search$0_initialize_context"
  call void @"bmh_search$0"(i32 %sub1)
  br label %"bmh_search$0_branch_to_exit"

"bmh_search$0_branch_to_exit":                    ; preds = %"bmh_search$0_call_recursive_function"
  %i4 = getelementptr %1, %1* @"bmh_search$0_return_value_struct", i32 0, i32 1
  %i5 = load i8, i8* %i4, align 1
  switch i8 %i5, label %"bmh_search$0_extract_return_values$0" [
    i8 1, label %"bmh_search$0_extract_return_values$0"
    i8 2, label %"bmh_search$0_extract_return_values$1"
  ]

"bmh_search$0_extract_return_values$0":           ; preds = %"bmh_search$0_branch_to_exit", %"bmh_search$0_branch_to_exit"
  %i6 = getelementptr %1, %1* @"bmh_search$0_return_value_struct", i32 0, i32 0
  %i7 = load i8*, i8** %i6, align 8
  br label %cleanup.loopexit

"bmh_search$0_extract_return_values$1":           ; preds = %"bmh_search$0_branch_to_exit"
  br label %cleanup.loopexit59

cleanup.loopexit:                                 ; preds = %"bmh_search$0_extract_return_values$0"
  br label %cleanup

cleanup.loopexit59:                               ; preds = %"bmh_search$0_extract_return_values$1"
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit59, %cleanup.loopexit, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %i7, %cleanup.loopexit ], [ null, %cleanup.loopexit59 ]
  ret i8* %retval.0
}

define void @"bmh_init$2"(i64 %arg, i64 %arg1) {
"bmh_init$2_preheader_in_recursion":
  br label %"bmh_init$2_latch$0"

"bmh_init$2_latch$0":                             ; preds = %"bmh_init$2_increment_loop_counter$0", %"bmh_init$2_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"bmh_init$2_preheader_in_recursion" ], [ %i6, %"bmh_init$2_increment_loop_counter$0" ]
  %indvars.iv56.prol = phi i64 [ %indvars.iv.next57.prol, %"bmh_init$2_increment_loop_counter$0" ], [ %arg1, %"bmh_init$2_preheader_in_recursion" ]
  %prol.iter = phi i64 [ %prol.iter.sub, %"bmh_init$2_increment_loop_counter$0" ], [ %arg, %"bmh_init$2_preheader_in_recursion" ]
  %i = xor i64 %indvars.iv56.prol, 4294967295
  %i2 = trunc i64 %i to i32
  %i3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1", align 4
  %sub6.prol = add i32 %i3, %i2
  %i4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0", align 8
  %arrayidx8.prol = getelementptr inbounds i8, i8* %i4, i64 %indvars.iv56.prol
  %i5 = load i8, i8* %arrayidx8.prol, align 1, !tbaa !7
  %idxprom9.prol = zext i8 %i5 to i64
  %arrayidx10.prol = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.prol
  store i32 %sub6.prol, i32* %arrayidx10.prol, align 4, !tbaa !5
  %indvars.iv.next57.prol = add nuw nsw i64 %indvars.iv56.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %"bmh_init$2_return_from_recursive_function$0", label %"bmh_init$2_increment_loop_counter$0", !llvm.loop !8

"bmh_init$2_increment_loop_counter$0":            ; preds = %"bmh_init$2_latch$0"
  %i6 = add i8 %loop_counter, 1
  %i7 = icmp ult i8 %i6, 8
  br i1 %i7, label %"bmh_init$2_latch$0", label %"bmh_init$2_increment_depth_counter"

"bmh_init$2_increment_depth_counter":             ; preds = %"bmh_init$2_increment_loop_counter$0"
  %indvars.iv.next57.prol.lcssa2 = phi i64 [ %indvars.iv.next57.prol, %"bmh_init$2_increment_loop_counter$0" ]
  %prol.iter.sub.lcssa1 = phi i64 [ %prol.iter.sub, %"bmh_init$2_increment_loop_counter$0" ]
  br label %"bmh_init$2_recursively_call_function"

"bmh_init$2_recursively_call_function":           ; preds = %"bmh_init$2_increment_depth_counter"
  call void @"bmh_init$2"(i64 %prol.iter.sub.lcssa1, i64 %indvars.iv.next57.prol.lcssa2)
  ret void

"bmh_init$2_return_from_recursive_function$0":    ; preds = %"bmh_init$2_latch$0"
  %indvars.iv.next57.prol.lcssa = phi i64 [ %indvars.iv.next57.prol, %"bmh_init$2_latch$0" ]
  %i8 = getelementptr %0, %0* @"bmh_init$2_return_value_struct", i32 0, i32 0
  store i64 %indvars.iv.next57.prol.lcssa, i64* %i8, align 8
  ret void
}

define void @"bmh_init$1"(i64 %arg) {
"bmh_init$1_preheader_in_recursion":
  br label %"bmh_init$1_latch$0"

"bmh_init$1_latch$0":                             ; preds = %"bmh_init$1_increment_loop_counter$0", %"bmh_init$1_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"bmh_init$1_preheader_in_recursion" ], [ %i21, %"bmh_init$1_increment_loop_counter$0" ]
  %indvars.iv56 = phi i64 [ %arg, %"bmh_init$1_preheader_in_recursion" ], [ %indvars.iv.next57.3, %"bmh_init$1_increment_loop_counter$0" ]
  %i = xor i64 %indvars.iv56, 4294967295
  %i1 = trunc i64 %i to i32
  %i2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1", align 4
  %sub6 = add i32 %i2, %i1
  %i3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0", align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %i3, i64 %indvars.iv56
  %i4 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %idxprom9 = zext i8 %i4 to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9
  store i32 %sub6, i32* %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %i5 = xor i64 %indvars.iv.next57, 4294967295
  %i6 = trunc i64 %i5 to i32
  %i7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1", align 4
  %sub6.1 = add i32 %i7, %i6
  %i8 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0", align 8
  %arrayidx8.1 = getelementptr inbounds i8, i8* %i8, i64 %indvars.iv.next57
  %i9 = load i8, i8* %arrayidx8.1, align 1, !tbaa !7
  %idxprom9.1 = zext i8 %i9 to i64
  %arrayidx10.1 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.1
  store i32 %sub6.1, i32* %arrayidx10.1, align 4, !tbaa !5
  %indvars.iv.next57.1 = add nsw i64 %indvars.iv56, 2
  %i10 = xor i64 %indvars.iv.next57.1, 4294967295
  %i11 = trunc i64 %i10 to i32
  %i12 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1", align 4
  %sub6.2 = add i32 %i12, %i11
  %i13 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0", align 8
  %arrayidx8.2 = getelementptr inbounds i8, i8* %i13, i64 %indvars.iv.next57.1
  %i14 = load i8, i8* %arrayidx8.2, align 1, !tbaa !7
  %idxprom9.2 = zext i8 %i14 to i64
  %arrayidx10.2 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.2
  store i32 %sub6.2, i32* %arrayidx10.2, align 4, !tbaa !5
  %indvars.iv.next57.2 = add nsw i64 %indvars.iv56, 3
  %i15 = xor i64 %indvars.iv.next57.2, 4294967295
  %i16 = trunc i64 %i15 to i32
  %i17 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1", align 4
  %sub6.3 = add i32 %i17, %i16
  %i18 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0", align 8
  %arrayidx8.3 = getelementptr inbounds i8, i8* %i18, i64 %indvars.iv.next57.2
  %i19 = load i8, i8* %arrayidx8.3, align 1, !tbaa !7
  %idxprom9.3 = zext i8 %i19 to i64
  %arrayidx10.3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.3
  store i32 %sub6.3, i32* %arrayidx10.3, align 4, !tbaa !5
  %indvars.iv.next57.3 = add nsw i64 %indvars.iv56, 4
  %i20 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$2", align 8
  %cmp3.3 = icmp sgt i64 %i20, %indvars.iv.next57.3
  br i1 %cmp3.3, label %"bmh_init$1_increment_loop_counter$0", label %"bmh_init$1_return_from_recursive_function$0"

"bmh_init$1_increment_loop_counter$0":            ; preds = %"bmh_init$1_latch$0"
  %i21 = add i8 %loop_counter, 1
  %i22 = icmp ult i8 %i21, 8
  br i1 %i22, label %"bmh_init$1_latch$0", label %"bmh_init$1_increment_depth_counter"

"bmh_init$1_increment_depth_counter":             ; preds = %"bmh_init$1_increment_loop_counter$0"
  %indvars.iv.next57.3.lcssa1 = phi i64 [ %indvars.iv.next57.3, %"bmh_init$1_increment_loop_counter$0" ]
  br label %"bmh_init$1_recursively_call_function"

"bmh_init$1_recursively_call_function":           ; preds = %"bmh_init$1_increment_depth_counter"
  call void @"bmh_init$1"(i64 %indvars.iv.next57.3.lcssa1)
  ret void

"bmh_init$1_return_from_recursive_function$0":    ; preds = %"bmh_init$1_latch$0"
  ret void
}

define void @"bmh_init$0"(i64 %arg) {
"bmh_init$0_preheader_in_recursion":
  br label %"bmh_init$0_header"

"bmh_init$0_header":                              ; preds = %"bmh_init$0_increment_loop_counter$0", %"bmh_init$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"bmh_init$0_preheader_in_recursion" ], [ %i7, %"bmh_init$0_increment_loop_counter$0" ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %"bmh_init$0_increment_loop_counter$0" ], [ %arg, %"bmh_init$0_preheader_in_recursion" ]
  %i = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$0", align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %i, i64 %indvars.iv
  %i1 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %i2 = load i8, i8* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$4", align 1
  %cmp28 = icmp eq i8 %i1, %i2
  br i1 %cmp28, label %if.then, label %"bmh_init$0_latch$0"

if.then:                                          ; preds = %"bmh_init$0_header"
  %i3 = xor i64 %indvars.iv, 4294967295
  %i4 = trunc i64 %i3 to i32
  %i5 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$1", align 4
  %sub31 = add i32 %i5, %i4
  store i32 %sub31, i32* @skip2, align 4, !tbaa !5
  br label %"bmh_init$0_latch$0"

"bmh_init$0_latch$0":                             ; preds = %if.then, %"bmh_init$0_header"
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$3", align 8
  %cmp22 = icmp slt i64 %indvars.iv.next, %i6
  br i1 %cmp22, label %"bmh_init$0_increment_loop_counter$0", label %"bmh_init$0_return_from_recursive_function$0"

"bmh_init$0_increment_loop_counter$0":            ; preds = %"bmh_init$0_latch$0"
  %i7 = add i8 %loop_counter, 1
  %i8 = icmp ult i8 %i7, 8
  br i1 %i8, label %"bmh_init$0_header", label %"bmh_init$0_increment_depth_counter"

"bmh_init$0_increment_depth_counter":             ; preds = %"bmh_init$0_increment_loop_counter$0"
  %indvars.iv.next.lcssa1 = phi i64 [ %indvars.iv.next, %"bmh_init$0_increment_loop_counter$0" ]
  br label %"bmh_init$0_recursively_call_function"

"bmh_init$0_recursively_call_function":           ; preds = %"bmh_init$0_increment_depth_counter"
  call void @"bmh_init$0"(i64 %indvars.iv.next.lcssa1)
  ret void

"bmh_init$0_return_from_recursive_function$0":    ; preds = %"bmh_init$0_latch$0"
  ret void
}

define void @"bmh_search$0"(i32 %arg) {
"bmh_search$0_preheader_in_recursion":
  br label %"bmh_search$0_header"

"bmh_search$0_header":                            ; preds = %"bmh_search$0_increment_loop_counter$0", %"bmh_search$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"bmh_search$0_preheader_in_recursion" ], [ %i13, %"bmh_search$0_increment_loop_counter$0" ]
  %i.0 = phi i32 [ %arg, %"bmh_search$0_preheader_in_recursion" ], [ %i.0.be, %"bmh_search$0_increment_loop_counter$0" ]
  %idxprom = sext i32 %i.0 to i64
  %i = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$9", align 8
  %arrayidx = getelementptr inbounds i8, i8* %i, i64 %idxprom
  %i1 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom2 = zext i8 %i1 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom2
  %i2 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %add = add nsw i32 %i2, %i.0
  %cmp4 = icmp slt i32 %add, 0
  br i1 %cmp4, label %"bmh_search$0_latch$0", label %"bmh_search$0_exiting$1"

"bmh_search$0_exiting$1":                         ; preds = %"bmh_search$0_header"
  %i3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$10", align 4
  %cmp6 = icmp slt i32 %add, %i3
  br i1 %cmp6, label %"bmh_search$0_return_from_recursive_function$1", label %if.end8

if.end8:                                          ; preds = %"bmh_search$0_exiting$1"
  %sub9 = add nsw i32 %add, -32767
  %i4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$8", align 4
  %sub11 = sub nsw i32 %sub9, %i4
  %idx.ext12 = sext i32 %sub11 to i64
  %i5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$9", align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %i5, i64 %idx.ext12
  %i6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$7", align 8
  %i7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$8", align 4
  br label %"bmh_search$0$0_initialize_context"

"bmh_search$0$0_initialize_context":              ; preds = %if.end8
  store i8* %add.ptr13, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$11", align 8
  br label %"bmh_search$0$0_call_recursive_function"

"bmh_search$0$0_call_recursive_function":         ; preds = %"bmh_search$0$0_initialize_context"
  call void @"bmh_search$0$0"(i32 %i7, i64 %i6)
  br label %"bmh_search$0$0_branch_to_exit"

"bmh_search$0$0_branch_to_exit":                  ; preds = %"bmh_search$0$0_call_recursive_function"
  %i8 = getelementptr %2, %2* @"bmh_search$0$0_return_value_struct", i32 0, i32 1
  %i9 = load i8, i8* %i8, align 1
  switch i8 %i9, label %"bmh_search$0$0_extract_return_values$0" [
    i8 1, label %"bmh_search$0$0_extract_return_values$0"
    i8 0, label %"bmh_search$0$0_extract_return_values$1"
  ]

"bmh_search$0$0_extract_return_values$0":         ; preds = %"bmh_search$0$0_branch_to_exit", %"bmh_search$0$0_branch_to_exit"
  br label %"bmh_search$0_exiting$0"

"bmh_search$0$0_extract_return_values$1":         ; preds = %"bmh_search$0$0_branch_to_exit"
  %i10 = getelementptr %2, %2* @"bmh_search$0$0_return_value_struct", i32 0, i32 0
  %i11 = load i8*, i8** %i10, align 8
  br label %"bmh_search$0_return_from_recursive_function$0"

"bmh_search$0_exiting$0":                         ; preds = %"bmh_search$0$0_extract_return_values$0"
  %i12 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$5", align 4
  %add29 = add nsw i32 %i12, %sub9
  %cmp30 = icmp sgt i32 %add29, -1
  br i1 %cmp30, label %"bmh_search$0_return_from_recursive_function$1", label %"bmh_search$0_latch$0"

"bmh_search$0_latch$0":                           ; preds = %"bmh_search$0_exiting$0", %"bmh_search$0_header"
  %i.0.be = phi i32 [ %add, %"bmh_search$0_header" ], [ %add29, %"bmh_search$0_exiting$0" ]
  br label %"bmh_search$0_increment_loop_counter$0"

"bmh_search$0_increment_loop_counter$0":          ; preds = %"bmh_search$0_latch$0"
  %i13 = add i8 %loop_counter, 1
  %i14 = icmp ult i8 %i13, 8
  br i1 %i14, label %"bmh_search$0_header", label %"bmh_search$0_increment_depth_counter"

"bmh_search$0_increment_depth_counter":           ; preds = %"bmh_search$0_increment_loop_counter$0"
  %i.0.be.lcssa = phi i32 [ %i.0.be, %"bmh_search$0_increment_loop_counter$0" ]
  br label %"bmh_search$0_recursively_call_function"

"bmh_search$0_recursively_call_function":         ; preds = %"bmh_search$0_increment_depth_counter"
  call void @"bmh_search$0"(i32 %i.0.be.lcssa)
  ret void

"bmh_search$0_return_from_recursive_function$0":  ; preds = %"bmh_search$0$0_extract_return_values$1"
  %i15 = getelementptr %1, %1* @"bmh_search$0_return_value_struct", i32 0, i32 0
  store i8* %i11, i8** %i15, align 8
  %i16 = getelementptr %1, %1* @"bmh_search$0_return_value_struct", i32 0, i32 1
  store i8 1, i8* %i16, align 1
  ret void

"bmh_search$0_return_from_recursive_function$1":  ; preds = %"bmh_search$0_exiting$0", %"bmh_search$0_exiting$1"
  %i17 = getelementptr %1, %1* @"bmh_search$0_return_value_struct", i32 0, i32 1
  store i8 2, i8* %i17, align 1
  ret void
}

define void @"bmh_search$0$0"(i32 %arg, i64 %arg1) {
"bmh_search$0$0_preheader_in_recursion":
  br label %"bmh_search$0$0_exiting$1"

"bmh_search$0$0_exiting$1":                       ; preds = %"bmh_search$0$0_increment_loop_counter$0", %"bmh_search$0$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"bmh_search$0$0_preheader_in_recursion" ], [ %i5, %"bmh_search$0$0_increment_loop_counter$0" ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %"bmh_search$0$0_increment_loop_counter$0" ], [ %arg1, %"bmh_search$0$0_preheader_in_recursion" ]
  %j.0 = phi i32 [ %dec, %"bmh_search$0$0_increment_loop_counter$0" ], [ %arg, %"bmh_search$0$0_preheader_in_recursion" ]
  %dec = add nsw i32 %j.0, -1
  %cmp15 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp15, label %"bmh_search$0$0_latch$0", label %"bmh_search$0$0_return_from_recursive_function$1"

"bmh_search$0$0_latch$0":                         ; preds = %"bmh_search$0$0_exiting$1"
  %idxprom16 = sext i32 %dec to i64
  %i = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$11", align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %i, i64 %idxprom16
  %i2 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv = sext i8 %i2 to i32
  %i3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$6", align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %i3, i64 %idxprom16
  %i4 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %i4 to i32
  %cmp21 = icmp eq i32 %conv, %conv20
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp21, label %"bmh_search$0$0_increment_loop_counter$0", label %"bmh_search$0$0_return_from_recursive_function$0"

"bmh_search$0$0_increment_loop_counter$0":        ; preds = %"bmh_search$0$0_latch$0"
  %i5 = add i8 %loop_counter, 1
  %i6 = icmp ult i8 %i5, 8
  br i1 %i6, label %"bmh_search$0$0_exiting$1", label %"bmh_search$0$0_increment_depth_counter"

"bmh_search$0$0_increment_depth_counter":         ; preds = %"bmh_search$0$0_increment_loop_counter$0"
  %indvars.iv.next.lcssa3 = phi i64 [ %indvars.iv.next, %"bmh_search$0$0_increment_loop_counter$0" ]
  %dec.lcssa2 = phi i32 [ %dec, %"bmh_search$0$0_increment_loop_counter$0" ]
  br label %"bmh_search$0$0_recursively_call_function"

"bmh_search$0$0_recursively_call_function":       ; preds = %"bmh_search$0$0_increment_depth_counter"
  call void @"bmh_search$0$0"(i32 %dec.lcssa2, i64 %indvars.iv.next.lcssa3)
  ret void

"bmh_search$0$0_return_from_recursive_function$0": ; preds = %"bmh_search$0$0_latch$0"
  %i7 = getelementptr %2, %2* @"bmh_search$0$0_return_value_struct", i32 0, i32 1
  store i8 1, i8* %i7, align 1
  ret void

"bmh_search$0$0_return_from_recursive_function$1": ; preds = %"bmh_search$0$0_exiting$1"
  %i8 = getelementptr %2, %2* @"bmh_search$0$0_return_value_struct", i32 0, i32 0
  %i9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll_invariant_variable$11", align 8
  store i8* %i9, i8** %i8, align 8
  %i10 = getelementptr %2, %2* @"bmh_search$0$0_return_value_struct", i32 0, i32 1
  store i8 0, i8* %i10, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
