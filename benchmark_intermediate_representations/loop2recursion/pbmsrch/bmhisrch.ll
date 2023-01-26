; ModuleID = './benchmark_intermediate_representations/loop2recursion/pbmsrch/bmhisrch.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64 }
%1 = type { i8*, i8 }
%2 = type { i8 }

@patlen = internal unnamed_addr global i32 0, align 4
@pat = internal unnamed_addr global i8* null, align 8
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4
@"bmhi_init$3_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$0" = dso_local global i32** null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$1" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$2" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$3" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$4" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$5" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$6" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$7" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$8" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$9" = dso_local global i8 0
@"bmhi_search$0_return_value_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$10" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$11" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$12" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$13" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$14" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$15" = dso_local global i8* null
@"bmhi_search$0$0_return_value_struct" = dso_local global %2 zeroinitializer
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$16" = dso_local global i8* null

; Function Attrs: nounwind uwtable
define void @bmhi_init(i8* nocapture readonly %pattern) #0 {
entry:
  %call = tail call i64 @strlen(i8* %pattern) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @patlen, align 4, !tbaa !1
  %tmp = load i8*, i8** @pat, align 8, !tbaa !5
  %sext = shl i64 %call, 32
  %conv1 = ashr exact i64 %sext, 32
  %call2 = tail call i8* @realloc(i8* %tmp, i64 %conv1) #7
  store i8* %call2, i8** @pat, align 8, !tbaa !5
  %tobool = icmp eq i8* %call2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @exit(i32 1) #8
  unreachable

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @atexit(void ()* nonnull @bhmi_cleanup) #7
  %tmp1 = load i32, i32* @patlen, align 4, !tbaa !1
  %cmp108 = icmp sgt i32 %tmp1, 0
  br i1 %cmp108, label %for.body.lr.ph, label %vector.ph

vector.ph.loopexit.unr-lcssa:                     ; preds = %"bmhi_init$2_call_recursive_function"
  br label %vector.ph.loopexit

vector.ph.loopexit:                               ; preds = %for.body.lr.ph.split, %vector.ph.loopexit.unr-lcssa
  br label %vector.ph

vector.ph:                                        ; preds = %vector.ph.loopexit, %if.else
  %broadcast.splatinsert120 = insertelement <4 x i32> undef, i32 %tmp1, i32 0
  %broadcast.splat121 = shufflevector <4 x i32> %broadcast.splatinsert120, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast ([256 x i32]* @skip to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 4) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 8) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 12) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 16) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 20) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 24) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 28) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 32) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 36) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 40) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 44) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 48) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 52) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 56) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 60) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 64) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 68) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 72) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 76) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 80) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 84) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 88) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 92) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 96) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 100) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 104) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 108) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 112) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 116) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 120) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 124) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 128) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 132) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 136) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 140) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 144) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 148) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 152) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 156) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 160) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 164) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 168) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 172) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 176) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 180) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 184) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 188) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 192) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 196) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 200) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 204) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 208) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 212) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 216) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 220) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 224) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 228) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 232) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 236) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 240) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 244) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 248) to <4 x i32>*), align 16, !tbaa !1
  store <4 x i32> %broadcast.splat121, <4 x i32>* bitcast (i32* getelementptr inbounds ([256 x i32], [256 x i32]* @skip, i64 0, i64 252) to <4 x i32>*), align 16, !tbaa !1
  %sub103 = add nsw i32 %tmp1, -1
  %cmp22104 = icmp sgt i32 %tmp1, 1
  %tmp2 = load i8*, i8** @pat, align 8
  br i1 %cmp22104, label %for.body24.lr.ph, label %for.cond21.preheader.for.end46_crit_edge

for.body.lr.ph:                                   ; preds = %if.else
  %call7 = tail call i32** @__ctype_toupper_loc() #9
  %tmp3 = load i8*, i8** @pat, align 8
  %tmp4 = sext i32 %tmp1 to i64
  %tmp5 = sext i32 %tmp1 to i64
  %tmp6 = add nsw i64 %tmp5, -1
  %xtraiter = and i64 %tmp5, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.lr.ph.split, label %for.body.prol.preheader

for.body.prol.preheader:                          ; preds = %for.body.lr.ph
  br label %"bmhi_init$3_initialize_context"

"bmhi_init$3_initialize_context":                 ; preds = %for.body.prol.preheader
  store i32** %call7, i32*** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$0"
  store i8* %tmp3, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$1"
  store i8* %pattern, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$2"
  br label %"bmhi_init$3_call_recursive_function"

"bmhi_init$3_call_recursive_function":            ; preds = %"bmhi_init$3_initialize_context"
  call void @"bmhi_init$3"(i64 %xtraiter, i64 0)
  br label %"bmhi_init$3_extract_return_values$0"

"bmhi_init$3_extract_return_values$0":            ; preds = %"bmhi_init$3_call_recursive_function"
  %tmp7 = getelementptr %0, %0* @"bmhi_init$3_return_value_struct", i32 0, i32 0
  %tmp8 = load i64, i64* %tmp7
  br label %for.body.lr.ph.split.loopexit

for.body.lr.ph.split.loopexit:                    ; preds = %"bmhi_init$3_extract_return_values$0"
  br label %for.body.lr.ph.split

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph.split.loopexit, %for.body.lr.ph
  %indvars.iv116.unr = phi i64 [ 0, %for.body.lr.ph ], [ %tmp8, %for.body.lr.ph.split.loopexit ]
  %tmp9 = icmp ult i64 %tmp6, 3
  br i1 %tmp9, label %vector.ph.loopexit, label %for.body.lr.ph.split.split

for.body.lr.ph.split.split:                       ; preds = %for.body.lr.ph.split
  br label %"bmhi_init$2_initialize_context"

"bmhi_init$2_initialize_context":                 ; preds = %for.body.lr.ph.split.split
  store i64 %tmp4, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$3"
  store i32** %call7, i32*** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$0"
  store i8* %tmp3, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$1"
  store i8* %pattern, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$2"
  br label %"bmhi_init$2_call_recursive_function"

"bmhi_init$2_call_recursive_function":            ; preds = %"bmhi_init$2_initialize_context"
  call void @"bmhi_init$2"(i64 %indvars.iv116.unr)
  br label %vector.ph.loopexit.unr-lcssa

for.cond21.preheader.for.end46_crit_edge:         ; preds = %vector.body
  %.pre118 = sext i32 %sub103 to i64
  br label %for.end46

for.body24.lr.ph:                                 ; preds = %vector.body
  %call39 = tail call i32** @__ctype_tolower_loc() #9
  %tmp10 = load i32*, i32** %call39, align 8
  %tmp11 = sext i32 %sub103 to i64
  br label %"bmhi_init$1_initialize_context"

"bmhi_init$1_initialize_context":                 ; preds = %for.body24.lr.ph
  store i64 %tmp11, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$4"
  store i32* %tmp10, i32** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$5"
  store i8* %tmp2, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$6"
  store i32 %tmp1, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$7"
  br label %"bmhi_init$1_call_recursive_function"

"bmhi_init$1_call_recursive_function":            ; preds = %"bmhi_init$1_initialize_context"
  call void @"bmhi_init$1"(i32 0, i32 0, i64 0)
  br label %for.end46.loopexit

for.end46.loopexit:                               ; preds = %"bmhi_init$1_call_recursive_function"
  br label %for.end46

for.end46:                                        ; preds = %for.end46.loopexit, %for.cond21.preheader.for.end46_crit_edge
  %idxprom48.pre-phi = phi i64 [ %.pre118, %for.cond21.preheader.for.end46_crit_edge ], [ %tmp11, %for.end46.loopexit ]
  %arrayidx49 = getelementptr inbounds i8, i8* %tmp2, i64 %idxprom48.pre-phi
  %tmp12 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = zext i8 %tmp12 to i32
  %idxprom51 = zext i8 %tmp12 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom51
  store i32 32767, i32* %arrayidx52, align 4, !tbaa !1
  %__c.off.i = add nuw nsw i32 %conv50, 128
  %tmp13 = icmp ult i32 %__c.off.i, 384
  br i1 %tmp13, label %cond.true.i, label %tolower.exit

cond.true.i:                                      ; preds = %for.end46
  %call.i = tail call i32** @__ctype_tolower_loc() #9
  %tmp14 = load i32*, i32** %call.i, align 8, !tbaa !5
  %arrayidx.i = getelementptr inbounds i32, i32* %tmp14, i64 %idxprom51
  %tmp15 = load i32, i32* %arrayidx.i, align 4, !tbaa !1
  br label %tolower.exit

tolower.exit:                                     ; preds = %cond.true.i, %for.end46
  %cond.i = phi i32 [ %tmp15, %cond.true.i ], [ %conv50, %for.end46 ]
  %idxprom57 = sext i32 %cond.i to i64
  %arrayidx58 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom57
  store i32 32767, i32* %arrayidx58, align 4, !tbaa !1
  store i32 %tmp1, i32* @skip2, align 4, !tbaa !1
  br i1 %cmp22104, label %for.body63.preheader, label %for.end75

for.body63.preheader:                             ; preds = %tolower.exit
  br label %"bmhi_init$0_initialize_context"

"bmhi_init$0_initialize_context":                 ; preds = %for.body63.preheader
  store i32 %tmp1, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$7"
  store i64 %idxprom48.pre-phi, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$8"
  store i8 %tmp12, i8* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$9"
  store i8* %tmp2, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$6"
  br label %"bmhi_init$0_call_recursive_function"

"bmhi_init$0_call_recursive_function":            ; preds = %"bmhi_init$0_initialize_context"
  call void @"bmhi_init$0"(i64 0)
  br label %for.end75.loopexit

for.end75.loopexit:                               ; preds = %"bmhi_init$0_call_recursive_function"
  br label %for.end75

for.end75:                                        ; preds = %for.end75.loopexit, %tolower.exit
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: nounwind uwtable
define void @bhmi_cleanup() #0 {
entry:
  %tmp = load i8*, i8** @pat, align 8, !tbaa !5
  tail call void @free(i8* %tmp) #7
  ret void
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() #4

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #4

; Function Attrs: nounwind readonly uwtable
define i8* @bmhi_search(i8* readonly %string, i32 %stringlen) #5 {
entry:
  %tmp = load i32, i32* @patlen, align 4, !tbaa !1
  %sub = xor i32 %stringlen, -1
  %sub1 = add i32 %tmp, %sub
  %cmp = icmp sgt i32 %sub1, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %stringlen to i64
  %add.ptr = getelementptr inbounds i8, i8* %string, i64 %idx.ext
  %sub5 = sub nsw i32 32767, %stringlen
  %sub10 = add nsw i32 %tmp, -1
  %tmp1 = load i8*, i8** @pat, align 8
  %tmp2 = load i32, i32* @skip2, align 4
  %tmp3 = sext i32 %sub10 to i64
  br label %"bmhi_search$0_initialize_context"

"bmhi_search$0_initialize_context":               ; preds = %if.end
  store i32 %tmp2, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$10"
  store i64 %tmp3, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$11"
  store i32 %sub10, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$12"
  store i8* %tmp1, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$13"
  store i32 %sub5, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$14"
  store i8* %add.ptr, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$15"
  br label %"bmhi_search$0_call_recursive_function"

"bmhi_search$0_call_recursive_function":          ; preds = %"bmhi_search$0_initialize_context"
  call void @"bmhi_search$0"(i32 %sub1)
  br label %"bmhi_search$0_branch_to_exit"

"bmhi_search$0_branch_to_exit":                   ; preds = %"bmhi_search$0_call_recursive_function"
  %tmp4 = getelementptr %1, %1* @"bmhi_search$0_return_value_struct", i32 0, i32 1
  %tmp5 = load i8, i8* %tmp4
  switch i8 %tmp5, label %"bmhi_search$0_extract_return_values$0" [
    i8 1, label %"bmhi_search$0_extract_return_values$0"
    i8 2, label %"bmhi_search$0_extract_return_values$1"
  ]

"bmhi_search$0_extract_return_values$0":          ; preds = %"bmhi_search$0_branch_to_exit", %"bmhi_search$0_branch_to_exit"
  %tmp6 = getelementptr %1, %1* @"bmhi_search$0_return_value_struct", i32 0, i32 0
  %tmp7 = load i8*, i8** %tmp6
  br label %cleanup.loopexit

"bmhi_search$0_extract_return_values$1":          ; preds = %"bmhi_search$0_branch_to_exit"
  br label %cleanup.loopexit62

cleanup.loopexit:                                 ; preds = %"bmhi_search$0_extract_return_values$0"
  br label %cleanup

cleanup.loopexit62:                               ; preds = %"bmhi_search$0_extract_return_values$1"
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit62, %cleanup.loopexit, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %tmp7, %cleanup.loopexit ], [ null, %cleanup.loopexit62 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

define void @"bmhi_init$3"(i64 %arg, i64 %arg1) {
"bmhi_init$3_latch$0":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$2"
  %arrayidx.prol = getelementptr inbounds i8, i8* %tmp, i64 %arg1
  %tmp2 = load i8, i8* %arrayidx.prol, align 1, !tbaa !7
  %idxprom6.prol = sext i8 %tmp2 to i64
  %tmp3 = load i32**, i32*** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$0"
  %tmp4 = load i32*, i32** %tmp3, align 8, !tbaa !5
  %arrayidx8.prol = getelementptr inbounds i32, i32* %tmp4, i64 %idxprom6.prol
  %tmp5 = load i32, i32* %arrayidx8.prol, align 4, !tbaa !1
  %conv9.prol = trunc i32 %tmp5 to i8
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$1"
  %arrayidx11.prol = getelementptr inbounds i8, i8* %tmp6, i64 %arg1
  store i8 %conv9.prol, i8* %arrayidx11.prol, align 1, !tbaa !7
  %indvars.iv.next117.prol = add nuw nsw i64 %arg1, 1
  %prol.iter.sub = add i64 %arg, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %"bmhi_init$3_return_from_recursive_function$0", label %"bmhi_init$3_increment_depth_counter", !llvm.loop !8

"bmhi_init$3_increment_depth_counter":            ; preds = %"bmhi_init$3_latch$0"
  br label %"bmhi_init$3_recursively_call_function"

"bmhi_init$3_recursively_call_function":          ; preds = %"bmhi_init$3_increment_depth_counter"
  call void @"bmhi_init$3"(i64 %prol.iter.sub, i64 %indvars.iv.next117.prol)
  ret void

"bmhi_init$3_return_from_recursive_function$0":   ; preds = %"bmhi_init$3_latch$0"
  %tmp7 = getelementptr %0, %0* @"bmhi_init$3_return_value_struct", i32 0, i32 0
  store i64 %indvars.iv.next117.prol, i64* %tmp7
  ret void
}

define void @"bmhi_init$2"(i64 %arg) {
"bmhi_init$2_latch$0":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$2"
  %arrayidx = getelementptr inbounds i8, i8* %tmp, i64 %arg
  %tmp1 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom6 = sext i8 %tmp1 to i64
  %tmp2 = load i32**, i32*** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$0"
  %tmp3 = load i32*, i32** %tmp2, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i32, i32* %tmp3, i64 %idxprom6
  %tmp4 = load i32, i32* %arrayidx8, align 4, !tbaa !1
  %conv9 = trunc i32 %tmp4 to i8
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$1"
  %arrayidx11 = getelementptr inbounds i8, i8* %tmp5, i64 %arg
  store i8 %conv9, i8* %arrayidx11, align 1, !tbaa !7
  %indvars.iv.next117 = add nuw nsw i64 %arg, 1
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$2"
  %arrayidx.1 = getelementptr inbounds i8, i8* %tmp6, i64 %indvars.iv.next117
  %tmp7 = load i8, i8* %arrayidx.1, align 1, !tbaa !7
  %idxprom6.1 = sext i8 %tmp7 to i64
  %tmp8 = load i32**, i32*** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$0"
  %tmp9 = load i32*, i32** %tmp8, align 8, !tbaa !5
  %arrayidx8.1 = getelementptr inbounds i32, i32* %tmp9, i64 %idxprom6.1
  %tmp10 = load i32, i32* %arrayidx8.1, align 4, !tbaa !1
  %conv9.1 = trunc i32 %tmp10 to i8
  %tmp11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$1"
  %arrayidx11.1 = getelementptr inbounds i8, i8* %tmp11, i64 %indvars.iv.next117
  store i8 %conv9.1, i8* %arrayidx11.1, align 1, !tbaa !7
  %indvars.iv.next117.1 = add nsw i64 %arg, 2
  %tmp12 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$2"
  %arrayidx.2 = getelementptr inbounds i8, i8* %tmp12, i64 %indvars.iv.next117.1
  %tmp13 = load i8, i8* %arrayidx.2, align 1, !tbaa !7
  %idxprom6.2 = sext i8 %tmp13 to i64
  %tmp14 = load i32**, i32*** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$0"
  %tmp15 = load i32*, i32** %tmp14, align 8, !tbaa !5
  %arrayidx8.2 = getelementptr inbounds i32, i32* %tmp15, i64 %idxprom6.2
  %tmp16 = load i32, i32* %arrayidx8.2, align 4, !tbaa !1
  %conv9.2 = trunc i32 %tmp16 to i8
  %tmp17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$1"
  %arrayidx11.2 = getelementptr inbounds i8, i8* %tmp17, i64 %indvars.iv.next117.1
  store i8 %conv9.2, i8* %arrayidx11.2, align 1, !tbaa !7
  %indvars.iv.next117.2 = add nsw i64 %arg, 3
  %tmp18 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$2"
  %arrayidx.3 = getelementptr inbounds i8, i8* %tmp18, i64 %indvars.iv.next117.2
  %tmp19 = load i8, i8* %arrayidx.3, align 1, !tbaa !7
  %idxprom6.3 = sext i8 %tmp19 to i64
  %tmp20 = load i32**, i32*** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$0"
  %tmp21 = load i32*, i32** %tmp20, align 8, !tbaa !5
  %arrayidx8.3 = getelementptr inbounds i32, i32* %tmp21, i64 %idxprom6.3
  %tmp22 = load i32, i32* %arrayidx8.3, align 4, !tbaa !1
  %conv9.3 = trunc i32 %tmp22 to i8
  %tmp23 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$1"
  %arrayidx11.3 = getelementptr inbounds i8, i8* %tmp23, i64 %indvars.iv.next117.2
  store i8 %conv9.3, i8* %arrayidx11.3, align 1, !tbaa !7
  %indvars.iv.next117.3 = add nsw i64 %arg, 4
  %tmp24 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$3"
  %cmp.3 = icmp slt i64 %indvars.iv.next117.3, %tmp24
  br i1 %cmp.3, label %"bmhi_init$2_increment_depth_counter", label %"bmhi_init$2_return_from_recursive_function$0"

"bmhi_init$2_increment_depth_counter":            ; preds = %"bmhi_init$2_latch$0"
  br label %"bmhi_init$2_recursively_call_function"

"bmhi_init$2_recursively_call_function":          ; preds = %"bmhi_init$2_increment_depth_counter"
  call void @"bmhi_init$2"(i64 %indvars.iv.next117.3)
  ret void

"bmhi_init$2_return_from_recursive_function$0":   ; preds = %"bmhi_init$2_latch$0"
  ret void
}

define void @"bmhi_init$1"(i32 %arg, i32 %arg1, i64 %arg2) {
"bmhi_init$1_latch$0":
  %sub25 = add nsw i32 %arg1, -1
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$7"
  %sub26 = add i32 %sub25, %tmp
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$6"
  %arrayidx28 = getelementptr inbounds i8, i8* %tmp3, i64 %arg2
  %tmp4 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  %idxprom29 = zext i8 %tmp4 to i64
  %arrayidx30 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom29
  store i32 %sub26, i32* %arrayidx30, align 4, !tbaa !1
  %tmp5 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$5"
  %arrayidx40 = getelementptr inbounds i32, i32* %tmp5, i64 %idxprom29
  %tmp6 = load i32, i32* %arrayidx40, align 4, !tbaa !1
  %idxprom42 = sext i32 %tmp6 to i64
  %arrayidx43 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom42
  store i32 %sub26, i32* %arrayidx43, align 4, !tbaa !1
  %indvars.iv.next112 = add nuw nsw i64 %arg2, 1
  %inc45 = add nuw nsw i32 %arg, 1
  %i.2.neg = xor i32 %arg, -1
  %tmp7 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$4"
  %cmp22 = icmp slt i64 %indvars.iv.next112, %tmp7
  br i1 %cmp22, label %"bmhi_init$1_increment_depth_counter", label %"bmhi_init$1_return_from_recursive_function$0"

"bmhi_init$1_increment_depth_counter":            ; preds = %"bmhi_init$1_latch$0"
  br label %"bmhi_init$1_recursively_call_function"

"bmhi_init$1_recursively_call_function":          ; preds = %"bmhi_init$1_increment_depth_counter"
  call void @"bmhi_init$1"(i32 %inc45, i32 %i.2.neg, i64 %indvars.iv.next112)
  ret void

"bmhi_init$1_return_from_recursive_function$0":   ; preds = %"bmhi_init$1_latch$0"
  ret void
}

define void @"bmhi_init$0"(i64 %arg) {
"bmhi_init$0_header":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$6"
  %arrayidx65 = getelementptr inbounds i8, i8* %tmp, i64 %arg
  %tmp1 = load i8, i8* %arrayidx65, align 1, !tbaa !7
  %tmp2 = load i8, i8* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$9"
  %cmp67 = icmp eq i8 %tmp1, %tmp2
  br i1 %cmp67, label %if.then69, label %"bmhi_init$0_latch$0"

if.then69:                                        ; preds = %"bmhi_init$0_header"
  %tmp3 = xor i64 %arg, 4294967295
  %tmp4 = trunc i64 %tmp3 to i32
  %tmp5 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$7"
  %sub71 = add i32 %tmp5, %tmp4
  store i32 %sub71, i32* @skip2, align 4, !tbaa !1
  br label %"bmhi_init$0_latch$0"

"bmhi_init$0_latch$0":                            ; preds = %if.then69, %"bmhi_init$0_header"
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %tmp6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$8"
  %cmp61 = icmp slt i64 %indvars.iv.next, %tmp6
  br i1 %cmp61, label %"bmhi_init$0_increment_depth_counter", label %"bmhi_init$0_return_from_recursive_function$0"

"bmhi_init$0_increment_depth_counter":            ; preds = %"bmhi_init$0_latch$0"
  br label %"bmhi_init$0_recursively_call_function"

"bmhi_init$0_recursively_call_function":          ; preds = %"bmhi_init$0_increment_depth_counter"
  call void @"bmhi_init$0"(i64 %indvars.iv.next)
  ret void

"bmhi_init$0_return_from_recursive_function$0":   ; preds = %"bmhi_init$0_latch$0"
  ret void
}

define void @"bmhi_search$0"(i32 %arg) {
"bmhi_search$0_header":
  %idxprom = sext i32 %arg to i64
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$15"
  %arrayidx = getelementptr inbounds i8, i8* %tmp, i64 %idxprom
  %tmp1 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom2 = zext i8 %tmp1 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom2
  %tmp2 = load i32, i32* %arrayidx3, align 4, !tbaa !1
  %add = add nsw i32 %tmp2, %arg
  %cmp4 = icmp slt i32 %add, 0
  br i1 %cmp4, label %"bmhi_search$0_latch$0", label %"bmhi_search$0_exiting$2"

"bmhi_search$0_exiting$2":                        ; preds = %"bmhi_search$0_header"
  %tmp3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$14"
  %cmp6 = icmp slt i32 %add, %tmp3
  br i1 %cmp6, label %"bmhi_search$0_return_from_recursive_function$1", label %if.end8

if.end8:                                          ; preds = %"bmhi_search$0_exiting$2"
  %sub9 = add nsw i32 %add, -32767
  %tmp4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$12"
  %sub11 = sub nsw i32 %sub9, %tmp4
  %idx.ext12 = sext i32 %sub11 to i64
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$15"
  %add.ptr13 = getelementptr inbounds i8, i8* %tmp5, i64 %idx.ext12
  %tmp6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$11"
  %tmp7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$12"
  br label %"bmhi_search$0$0_initialize_context"

"bmhi_search$0$0_initialize_context":             ; preds = %if.end8
  store i8* %add.ptr13, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$16"
  br label %"bmhi_search$0$0_call_recursive_function"

"bmhi_search$0$0_call_recursive_function":        ; preds = %"bmhi_search$0$0_initialize_context"
  call void @"bmhi_search$0$0"(i32 %tmp7, i64 %tmp6)
  br label %"bmhi_search$0$0_branch_to_exit"

"bmhi_search$0$0_branch_to_exit":                 ; preds = %"bmhi_search$0$0_call_recursive_function"
  %tmp8 = getelementptr %2, %2* @"bmhi_search$0$0_return_value_struct", i32 0, i32 0
  %tmp9 = load i8, i8* %tmp8
  switch i8 %tmp9, label %"bmhi_search$0_exiting$0" [
    i8 1, label %"bmhi_search$0_exiting$0"
    i8 0, label %"bmhi_search$0_return_from_recursive_function$0"
  ]

"bmhi_search$0_exiting$0":                        ; preds = %"bmhi_search$0$0_branch_to_exit", %"bmhi_search$0$0_branch_to_exit"
  %tmp10 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$10"
  %add31 = add nsw i32 %tmp10, %sub9
  %cmp32 = icmp sgt i32 %add31, -1
  br i1 %cmp32, label %"bmhi_search$0_return_from_recursive_function$1", label %"bmhi_search$0_latch$0"

"bmhi_search$0_latch$0":                          ; preds = %"bmhi_search$0_exiting$0", %"bmhi_search$0_header"
  %i.0.be = phi i32 [ %add, %"bmhi_search$0_header" ], [ %add31, %"bmhi_search$0_exiting$0" ]
  br label %"bmhi_search$0_increment_depth_counter"

"bmhi_search$0_increment_depth_counter":          ; preds = %"bmhi_search$0_latch$0"
  br label %"bmhi_search$0_recursively_call_function"

"bmhi_search$0_recursively_call_function":        ; preds = %"bmhi_search$0_increment_depth_counter"
  call void @"bmhi_search$0"(i32 %i.0.be)
  ret void

"bmhi_search$0_return_from_recursive_function$0": ; preds = %"bmhi_search$0$0_branch_to_exit"
  %tmp11 = getelementptr %1, %1* @"bmhi_search$0_return_value_struct", i32 0, i32 0
  store i8* %add.ptr13, i8** %tmp11
  %tmp12 = getelementptr %1, %1* @"bmhi_search$0_return_value_struct", i32 0, i32 1
  store i8 1, i8* %tmp12
  ret void

"bmhi_search$0_return_from_recursive_function$1": ; preds = %"bmhi_search$0_exiting$0", %"bmhi_search$0_exiting$2"
  %tmp13 = getelementptr %1, %1* @"bmhi_search$0_return_value_struct", i32 0, i32 1
  store i8 2, i8* %tmp13
  ret void
}

define void @"bmhi_search$0$0"(i32 %arg, i64 %arg1) {
"bmhi_search$0$0_exiting$1":
  %dec = add nsw i32 %arg, -1
  %cmp15 = icmp sgt i64 %arg1, 0
  br i1 %cmp15, label %"bmhi_search$0$0_latch$0", label %"bmhi_search$0$0_return_from_recursive_function$1"

"bmhi_search$0$0_latch$0":                        ; preds = %"bmhi_search$0$0_exiting$1"
  %idxprom16 = sext i32 %dec to i64
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$16"
  %arrayidx17 = getelementptr inbounds i8, i8* %tmp, i64 %idxprom16
  %tmp2 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %idxprom18 = sext i8 %tmp2 to i64
  %call = tail call i32** @__ctype_toupper_loc() #9
  %tmp3 = load i32*, i32** %call, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds i32, i32* %tmp3, i64 %idxprom18
  %tmp4 = load i32, i32* %arrayidx19, align 4, !tbaa !1
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhisrch.ll_invariant_variable$13"
  %arrayidx21 = getelementptr inbounds i8, i8* %tmp5, i64 %idxprom16
  %tmp6 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %conv22 = zext i8 %tmp6 to i32
  %cmp23 = icmp eq i32 %tmp4, %conv22
  %indvars.iv.next = add nsw i64 %arg1, -1
  br i1 %cmp23, label %"bmhi_search$0$0_increment_depth_counter", label %"bmhi_search$0$0_return_from_recursive_function$0"

"bmhi_search$0$0_increment_depth_counter":        ; preds = %"bmhi_search$0$0_latch$0"
  br label %"bmhi_search$0$0_recursively_call_function"

"bmhi_search$0$0_recursively_call_function":      ; preds = %"bmhi_search$0$0_increment_depth_counter"
  call void @"bmhi_search$0$0"(i32 %dec, i64 %indvars.iv.next)
  ret void

"bmhi_search$0$0_return_from_recursive_function$0": ; preds = %"bmhi_search$0$0_latch$0"
  %tmp7 = getelementptr %2, %2* @"bmhi_search$0$0_return_value_struct", i32 0, i32 0
  store i8 1, i8* %tmp7
  ret void

"bmhi_search$0$0_return_from_recursive_function$1": ; preds = %"bmhi_search$0$0_exiting$1"
  %tmp8 = getelementptr %2, %2* @"bmhi_search$0$0_return_value_struct", i32 0, i32 0
  store i8 0, i8* %tmp8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
