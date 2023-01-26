; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-256/pbmsrch/bmhsrch.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/pbmsrch/bmhsrch.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64 }
%1 = type { i64, i64, i1 }
%2 = type { i64, i1 }
%3 = type { i64, i1 }
%4 = type { i8*, i8 }
%5 = type { i32, i1 }
%6 = type { i8 }
%7 = type { i32, i64, i1 }

@pat = internal unnamed_addr global i8* null, align 8
@patlen = internal unnamed_addr global i32 0, align 4
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4

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
  %i3 = alloca %0, align 8
  %i4 = alloca %1, align 8
  br label %"bmh_init$2_call_recursive_function"

"bmh_init$2_call_recursive_function":             ; preds = %"bmh_init$2_extract_next_values", %"bmh_init$2_initialize_context"
  %i5 = phi i64 [ %xtraiter, %"bmh_init$2_initialize_context" ], [ %i10, %"bmh_init$2_extract_next_values" ]
  %i6 = phi i64 [ 0, %"bmh_init$2_initialize_context" ], [ %i12, %"bmh_init$2_extract_next_values" ]
  call void @"bmh_init$2"(%0* %i3, i64 %i5, i64 %i6, i8* %pattern, i32 %conv, %1* %i4, i16 0)
  %i7 = getelementptr %1, %1* %i4, i32 0, i32 2
  %i8 = load i1, i1* %i7, align 1
  br i1 %i8, label %"bmh_init$2_extract_return_values$0", label %"bmh_init$2_extract_next_values"

"bmh_init$2_extract_next_values":                 ; preds = %"bmh_init$2_call_recursive_function"
  %i9 = getelementptr %1, %1* %i4, i32 0, i32 0
  %i10 = load i64, i64* %i9, align 8
  %i11 = getelementptr %1, %1* %i4, i32 0, i32 1
  %i12 = load i64, i64* %i11, align 8
  br label %"bmh_init$2_call_recursive_function"

"bmh_init$2_extract_return_values$0":             ; preds = %"bmh_init$2_call_recursive_function"
  %i13 = getelementptr %0, %0* %i3, i32 0, i32 0
  %i14 = load i64, i64* %i13, align 8
  br label %for.body5.lr.ph.split.loopexit

for.body5.lr.ph.split.loopexit:                   ; preds = %"bmh_init$2_extract_return_values$0"
  br label %for.body5.lr.ph.split

for.body5.lr.ph.split:                            ; preds = %for.body5.lr.ph.split.loopexit, %for.body5.lr.ph
  %indvars.iv56.unr = phi i64 [ 0, %for.body5.lr.ph ], [ %i14, %for.body5.lr.ph.split.loopexit ]
  %i15 = icmp ult i64 %i2, 3
  br i1 %i15, label %for.end13.loopexit, label %for.body5.lr.ph.split.split

for.body5.lr.ph.split.split:                      ; preds = %for.body5.lr.ph.split
  br label %"bmh_init$1_initialize_context"

"bmh_init$1_initialize_context":                  ; preds = %for.body5.lr.ph.split.split
  %i16 = alloca %2, align 8
  br label %"bmh_init$1_call_recursive_function"

"bmh_init$1_call_recursive_function":             ; preds = %"bmh_init$1_extract_next_values", %"bmh_init$1_initialize_context"
  %i17 = phi i64 [ %indvars.iv56.unr, %"bmh_init$1_initialize_context" ], [ %i21, %"bmh_init$1_extract_next_values" ]
  call void @"bmh_init$1"(i64 %i17, i64 %i, i32 %conv, i8* %pattern, %2* %i16, i16 0)
  %i18 = getelementptr %2, %2* %i16, i32 0, i32 1
  %i19 = load i1, i1* %i18, align 1
  br i1 %i19, label %for.end13.loopexit.unr-lcssa, label %"bmh_init$1_extract_next_values"

"bmh_init$1_extract_next_values":                 ; preds = %"bmh_init$1_call_recursive_function"
  %i20 = getelementptr %2, %2* %i16, i32 0, i32 0
  %i21 = load i64, i64* %i20, align 8
  br label %"bmh_init$1_call_recursive_function"

for.end13.loopexit.unr-lcssa:                     ; preds = %"bmh_init$1_call_recursive_function"
  br label %for.end13.loopexit

for.end13.loopexit:                               ; preds = %for.end13.loopexit.unr-lcssa, %for.body5.lr.ph.split
  br label %for.end13

for.end13:                                        ; preds = %for.end13.loopexit, %vector.body
  %sub14 = shl i64 %call, 32
  %sext = add i64 %sub14, -4294967296
  %idxprom15 = ashr exact i64 %sext, 32
  %arrayidx16 = getelementptr inbounds i8, i8* %pattern, i64 %idxprom15
  %i22 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %idxprom18 = zext i8 %i22 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom18
  store i32 32767, i32* %arrayidx19, align 4, !tbaa !5
  store i32 %conv, i32* @skip2, align 4, !tbaa !5
  %cmp2250 = icmp sgt i32 %conv, 1
  br i1 %cmp2250, label %for.body24.preheader, label %for.end34

for.body24.preheader:                             ; preds = %for.end13
  br label %"bmh_init$0_initialize_context"

"bmh_init$0_initialize_context":                  ; preds = %for.body24.preheader
  %i23 = alloca %3, align 8
  br label %"bmh_init$0_call_recursive_function"

"bmh_init$0_call_recursive_function":             ; preds = %"bmh_init$0_extract_next_values", %"bmh_init$0_initialize_context"
  %i24 = phi i64 [ 0, %"bmh_init$0_initialize_context" ], [ %i28, %"bmh_init$0_extract_next_values" ]
  call void @"bmh_init$0"(i64 %i24, i64 %idxprom15, i32 %conv, i8* %pattern, i8 %i22, %3* %i23, i16 0)
  %i25 = getelementptr %3, %3* %i23, i32 0, i32 1
  %i26 = load i1, i1* %i25, align 1
  br i1 %i26, label %for.end34.loopexit, label %"bmh_init$0_extract_next_values"

"bmh_init$0_extract_next_values":                 ; preds = %"bmh_init$0_call_recursive_function"
  %i27 = getelementptr %3, %3* %i23, i32 0, i32 0
  %i28 = load i64, i64* %i27, align 8
  br label %"bmh_init$0_call_recursive_function"

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
  %i4 = alloca %4, align 8
  %i5 = alloca %5, align 8
  br label %"bmh_search$0_call_recursive_function"

"bmh_search$0_call_recursive_function":           ; preds = %"bmh_search$0_extract_next_values", %"bmh_search$0_initialize_context"
  %i6 = phi i32 [ %sub1, %"bmh_search$0_initialize_context" ], [ %i10, %"bmh_search$0_extract_next_values" ]
  call void @"bmh_search$0"(%4* %i4, i32 %i6, i32 %i2, i8* %i1, i64 %i3, i32 %sub10, i8* %add.ptr, i32 %sub5, %5* %i5, i16 0)
  %i7 = getelementptr %5, %5* %i5, i32 0, i32 1
  %i8 = load i1, i1* %i7, align 1
  br i1 %i8, label %"bmh_search$0_branch_to_exit", label %"bmh_search$0_extract_next_values"

"bmh_search$0_extract_next_values":               ; preds = %"bmh_search$0_call_recursive_function"
  %i9 = getelementptr %5, %5* %i5, i32 0, i32 0
  %i10 = load i32, i32* %i9, align 4
  br label %"bmh_search$0_call_recursive_function"

"bmh_search$0_branch_to_exit":                    ; preds = %"bmh_search$0_call_recursive_function"
  %i11 = getelementptr %4, %4* %i4, i32 0, i32 1
  %i12 = load i8, i8* %i11, align 1
  switch i8 %i12, label %"bmh_search$0_extract_return_values$0" [
    i8 1, label %"bmh_search$0_extract_return_values$0"
    i8 2, label %"bmh_search$0_extract_return_values$1"
  ]

"bmh_search$0_extract_return_values$0":           ; preds = %"bmh_search$0_branch_to_exit", %"bmh_search$0_branch_to_exit"
  %i13 = getelementptr %4, %4* %i4, i32 0, i32 0
  %i14 = load i8*, i8** %i13, align 8
  br label %cleanup.loopexit

"bmh_search$0_extract_return_values$1":           ; preds = %"bmh_search$0_branch_to_exit"
  br label %cleanup.loopexit59

cleanup.loopexit:                                 ; preds = %"bmh_search$0_extract_return_values$0"
  br label %cleanup

cleanup.loopexit59:                               ; preds = %"bmh_search$0_extract_return_values$1"
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit59, %cleanup.loopexit, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %i14, %cleanup.loopexit ], [ null, %cleanup.loopexit59 ]
  ret i8* %retval.0
}

define void @"bmh_init$0"(i64 %arg, i64 %arg1, i32 %arg2, i8* %arg3, i8 %arg4, %3* %arg5, i16 %arg6) {
"bmh_init$0_header":
  %arrayidx26 = getelementptr inbounds i8, i8* %arg3, i64 %arg
  %i = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %cmp28 = icmp eq i8 %i, %arg4
  br i1 %cmp28, label %if.then, label %"bmh_init$0_latch$0"

if.then:                                          ; preds = %"bmh_init$0_header"
  %i7 = xor i64 %arg, 4294967295
  %i8 = trunc i64 %i7 to i32
  %sub31 = add i32 %arg2, %i8
  store i32 %sub31, i32* @skip2, align 4, !tbaa !5
  br label %"bmh_init$0_latch$0"

"bmh_init$0_latch$0":                             ; preds = %if.then, %"bmh_init$0_header"
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %cmp22 = icmp slt i64 %indvars.iv.next, %arg1
  br i1 %cmp22, label %"bmh_init$0_increment_depth_counter", label %"bmh_init$0_return_from_recursive_function$0"

"bmh_init$0_increment_depth_counter":             ; preds = %"bmh_init$0_latch$0"
  %i9 = add i16 %arg6, 1
  %i10 = icmp ult i16 %i9, 256
  br i1 %i10, label %"bmh_init$0_recursively_call_function", label %"bmh_init$0_save_recursive_state_and_return"

"bmh_init$0_recursively_call_function":           ; preds = %"bmh_init$0_increment_depth_counter"
  call void @"bmh_init$0"(i64 %indvars.iv.next, i64 %arg1, i32 %arg2, i8* %arg3, i8 %arg4, %3* %arg5, i16 %i9)
  ret void

"bmh_init$0_save_recursive_state_and_return":     ; preds = %"bmh_init$0_increment_depth_counter"
  %i11 = getelementptr %3, %3* %arg5, i32 0, i32 0
  store i64 %indvars.iv.next, i64* %i11, align 8
  %i12 = getelementptr %3, %3* %arg5, i32 0, i32 1
  store i1 false, i1* %i12, align 1
  ret void

"bmh_init$0_return_from_recursive_function$0":    ; preds = %"bmh_init$0_latch$0"
  %i13 = getelementptr %3, %3* %arg5, i32 0, i32 1
  store i1 true, i1* %i13, align 1
  ret void
}

define void @"bmh_init$1"(i64 %arg, i64 %arg1, i32 %arg2, i8* %arg3, %2* %arg4, i16 %arg5) {
"bmh_init$1_latch$0":
  %i = xor i64 %arg, 4294967295
  %i6 = trunc i64 %i to i32
  %sub6 = add i32 %arg2, %i6
  %arrayidx8 = getelementptr inbounds i8, i8* %arg3, i64 %arg
  %i7 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %idxprom9 = zext i8 %i7 to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9
  store i32 %sub6, i32* %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next57 = add nuw nsw i64 %arg, 1
  %i8 = xor i64 %indvars.iv.next57, 4294967295
  %i9 = trunc i64 %i8 to i32
  %sub6.1 = add i32 %arg2, %i9
  %arrayidx8.1 = getelementptr inbounds i8, i8* %arg3, i64 %indvars.iv.next57
  %i10 = load i8, i8* %arrayidx8.1, align 1, !tbaa !7
  %idxprom9.1 = zext i8 %i10 to i64
  %arrayidx10.1 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.1
  store i32 %sub6.1, i32* %arrayidx10.1, align 4, !tbaa !5
  %indvars.iv.next57.1 = add nsw i64 %arg, 2
  %i11 = xor i64 %indvars.iv.next57.1, 4294967295
  %i12 = trunc i64 %i11 to i32
  %sub6.2 = add i32 %arg2, %i12
  %arrayidx8.2 = getelementptr inbounds i8, i8* %arg3, i64 %indvars.iv.next57.1
  %i13 = load i8, i8* %arrayidx8.2, align 1, !tbaa !7
  %idxprom9.2 = zext i8 %i13 to i64
  %arrayidx10.2 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.2
  store i32 %sub6.2, i32* %arrayidx10.2, align 4, !tbaa !5
  %indvars.iv.next57.2 = add nsw i64 %arg, 3
  %i14 = xor i64 %indvars.iv.next57.2, 4294967295
  %i15 = trunc i64 %i14 to i32
  %sub6.3 = add i32 %arg2, %i15
  %arrayidx8.3 = getelementptr inbounds i8, i8* %arg3, i64 %indvars.iv.next57.2
  %i16 = load i8, i8* %arrayidx8.3, align 1, !tbaa !7
  %idxprom9.3 = zext i8 %i16 to i64
  %arrayidx10.3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.3
  store i32 %sub6.3, i32* %arrayidx10.3, align 4, !tbaa !5
  %indvars.iv.next57.3 = add nsw i64 %arg, 4
  %cmp3.3 = icmp sgt i64 %arg1, %indvars.iv.next57.3
  br i1 %cmp3.3, label %"bmh_init$1_increment_depth_counter", label %"bmh_init$1_return_from_recursive_function$0"

"bmh_init$1_increment_depth_counter":             ; preds = %"bmh_init$1_latch$0"
  %i17 = add i16 %arg5, 1
  %i18 = icmp ult i16 %i17, 256
  br i1 %i18, label %"bmh_init$1_recursively_call_function", label %"bmh_init$1_save_recursive_state_and_return"

"bmh_init$1_recursively_call_function":           ; preds = %"bmh_init$1_increment_depth_counter"
  call void @"bmh_init$1"(i64 %indvars.iv.next57.3, i64 %arg1, i32 %arg2, i8* %arg3, %2* %arg4, i16 %i17)
  ret void

"bmh_init$1_save_recursive_state_and_return":     ; preds = %"bmh_init$1_increment_depth_counter"
  %i19 = getelementptr %2, %2* %arg4, i32 0, i32 0
  store i64 %indvars.iv.next57.3, i64* %i19, align 8
  %i20 = getelementptr %2, %2* %arg4, i32 0, i32 1
  store i1 false, i1* %i20, align 1
  ret void

"bmh_init$1_return_from_recursive_function$0":    ; preds = %"bmh_init$1_latch$0"
  %i21 = getelementptr %2, %2* %arg4, i32 0, i32 1
  store i1 true, i1* %i21, align 1
  ret void
}

define void @"bmh_init$2"(%0* %arg, i64 %arg1, i64 %arg2, i8* %arg3, i32 %arg4, %1* %arg5, i16 %arg6) {
"bmh_init$2_latch$0":
  %i = xor i64 %arg2, 4294967295
  %i7 = trunc i64 %i to i32
  %sub6.prol = add i32 %arg4, %i7
  %arrayidx8.prol = getelementptr inbounds i8, i8* %arg3, i64 %arg2
  %i8 = load i8, i8* %arrayidx8.prol, align 1, !tbaa !7
  %idxprom9.prol = zext i8 %i8 to i64
  %arrayidx10.prol = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.prol
  store i32 %sub6.prol, i32* %arrayidx10.prol, align 4, !tbaa !5
  %indvars.iv.next57.prol = add nuw nsw i64 %arg2, 1
  %prol.iter.sub = add i64 %arg1, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %"bmh_init$2_return_from_recursive_function$0", label %"bmh_init$2_increment_depth_counter", !llvm.loop !8

"bmh_init$2_increment_depth_counter":             ; preds = %"bmh_init$2_latch$0"
  %i9 = add i16 %arg6, 1
  %i10 = icmp ult i16 %i9, 256
  br i1 %i10, label %"bmh_init$2_recursively_call_function", label %"bmh_init$2_save_recursive_state_and_return"

"bmh_init$2_recursively_call_function":           ; preds = %"bmh_init$2_increment_depth_counter"
  call void @"bmh_init$2"(%0* %arg, i64 %prol.iter.sub, i64 %indvars.iv.next57.prol, i8* %arg3, i32 %arg4, %1* %arg5, i16 %i9)
  ret void

"bmh_init$2_save_recursive_state_and_return":     ; preds = %"bmh_init$2_increment_depth_counter"
  %i11 = getelementptr %1, %1* %arg5, i32 0, i32 0
  store i64 %prol.iter.sub, i64* %i11, align 8
  %i12 = getelementptr %1, %1* %arg5, i32 0, i32 1
  store i64 %indvars.iv.next57.prol, i64* %i12, align 8
  %i13 = getelementptr %1, %1* %arg5, i32 0, i32 2
  store i1 false, i1* %i13, align 1
  ret void

"bmh_init$2_return_from_recursive_function$0":    ; preds = %"bmh_init$2_latch$0"
  %i14 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i64 %indvars.iv.next57.prol, i64* %i14, align 8
  %i15 = getelementptr %1, %1* %arg5, i32 0, i32 2
  store i1 true, i1* %i15, align 1
  ret void
}

define void @"bmh_search$0"(%4* %arg, i32 %arg1, i32 %arg2, i8* %arg3, i64 %arg4, i32 %arg5, i8* %arg6, i32 %arg7, %5* %arg8, i16 %arg9) {
"bmh_search$0_header":
  %idxprom = sext i32 %arg1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %arg6, i64 %idxprom
  %i = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom2 = zext i8 %i to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom2
  %i10 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %add = add nsw i32 %i10, %arg1
  %cmp4 = icmp slt i32 %add, 0
  br i1 %cmp4, label %"bmh_search$0_latch$0", label %"bmh_search$0_exiting$1"

"bmh_search$0_exiting$1":                         ; preds = %"bmh_search$0_header"
  %cmp6 = icmp slt i32 %add, %arg7
  br i1 %cmp6, label %"bmh_search$0_return_from_recursive_function$1", label %if.end8

if.end8:                                          ; preds = %"bmh_search$0_exiting$1"
  %sub9 = add nsw i32 %add, -32767
  %sub11 = sub nsw i32 %sub9, %arg5
  %idx.ext12 = sext i32 %sub11 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %arg6, i64 %idx.ext12
  br label %"bmh_search$0$0_initialize_context"

"bmh_search$0$0_initialize_context":              ; preds = %if.end8
  %i11 = alloca %6, align 8
  %i12 = alloca %7, align 8
  br label %"bmh_search$0$0_call_recursive_function"

"bmh_search$0$0_call_recursive_function":         ; preds = %"bmh_search$0$0_extract_next_values", %"bmh_search$0$0_initialize_context"
  %i13 = phi i32 [ %arg5, %"bmh_search$0$0_initialize_context" ], [ %i18, %"bmh_search$0$0_extract_next_values" ]
  %i14 = phi i64 [ %arg4, %"bmh_search$0$0_initialize_context" ], [ %i20, %"bmh_search$0$0_extract_next_values" ]
  call void @"bmh_search$0$0"(%6* %i11, i32 %i13, i64 %i14, i8* %arg3, i8* %add.ptr13, %7* %i12, i16 0)
  %i15 = getelementptr %7, %7* %i12, i32 0, i32 2
  %i16 = load i1, i1* %i15, align 1
  br i1 %i16, label %"bmh_search$0$0_branch_to_exit", label %"bmh_search$0$0_extract_next_values"

"bmh_search$0$0_extract_next_values":             ; preds = %"bmh_search$0$0_call_recursive_function"
  %i17 = getelementptr %7, %7* %i12, i32 0, i32 0
  %i18 = load i32, i32* %i17, align 4
  %i19 = getelementptr %7, %7* %i12, i32 0, i32 1
  %i20 = load i64, i64* %i19, align 8
  br label %"bmh_search$0$0_call_recursive_function"

"bmh_search$0$0_branch_to_exit":                  ; preds = %"bmh_search$0$0_call_recursive_function"
  %i21 = getelementptr %6, %6* %i11, i32 0, i32 0
  %i22 = load i8, i8* %i21, align 1
  switch i8 %i22, label %"bmh_search$0_exiting$0" [
    i8 1, label %"bmh_search$0_exiting$0"
    i8 0, label %"bmh_search$0_return_from_recursive_function$0"
  ]

"bmh_search$0_exiting$0":                         ; preds = %"bmh_search$0$0_branch_to_exit", %"bmh_search$0$0_branch_to_exit"
  %add29 = add nsw i32 %arg2, %sub9
  %cmp30 = icmp sgt i32 %add29, -1
  br i1 %cmp30, label %"bmh_search$0_return_from_recursive_function$1", label %"bmh_search$0_latch$0"

"bmh_search$0_latch$0":                           ; preds = %"bmh_search$0_exiting$0", %"bmh_search$0_header"
  %i.0.be = phi i32 [ %add, %"bmh_search$0_header" ], [ %add29, %"bmh_search$0_exiting$0" ]
  br label %"bmh_search$0_increment_depth_counter"

"bmh_search$0_increment_depth_counter":           ; preds = %"bmh_search$0_latch$0"
  %i23 = add i16 %arg9, 1
  %i24 = icmp ult i16 %i23, 256
  br i1 %i24, label %"bmh_search$0_recursively_call_function", label %"bmh_search$0_save_recursive_state_and_return"

"bmh_search$0_recursively_call_function":         ; preds = %"bmh_search$0_increment_depth_counter"
  call void @"bmh_search$0"(%4* %arg, i32 %i.0.be, i32 %arg2, i8* %arg3, i64 %arg4, i32 %arg5, i8* %arg6, i32 %arg7, %5* %arg8, i16 %i23)
  ret void

"bmh_search$0_save_recursive_state_and_return":   ; preds = %"bmh_search$0_increment_depth_counter"
  %i25 = getelementptr %5, %5* %arg8, i32 0, i32 0
  store i32 %i.0.be, i32* %i25, align 4
  %i26 = getelementptr %5, %5* %arg8, i32 0, i32 1
  store i1 false, i1* %i26, align 1
  ret void

"bmh_search$0_return_from_recursive_function$0":  ; preds = %"bmh_search$0$0_branch_to_exit"
  %i27 = getelementptr %4, %4* %arg, i32 0, i32 0
  store i8* %add.ptr13, i8** %i27, align 8
  %i28 = getelementptr %4, %4* %arg, i32 0, i32 1
  store i8 1, i8* %i28, align 1
  %i29 = getelementptr %5, %5* %arg8, i32 0, i32 1
  store i1 true, i1* %i29, align 1
  ret void

"bmh_search$0_return_from_recursive_function$1":  ; preds = %"bmh_search$0_exiting$0", %"bmh_search$0_exiting$1"
  %i30 = getelementptr %4, %4* %arg, i32 0, i32 1
  store i8 2, i8* %i30, align 1
  %i31 = getelementptr %5, %5* %arg8, i32 0, i32 1
  store i1 true, i1* %i31, align 1
  ret void
}

define void @"bmh_search$0$0"(%6* %arg, i32 %arg1, i64 %arg2, i8* %arg3, i8* %arg4, %7* %arg5, i16 %arg6) {
"bmh_search$0$0_exiting$1":
  %dec = add nsw i32 %arg1, -1
  %cmp15 = icmp sgt i64 %arg2, 0
  br i1 %cmp15, label %"bmh_search$0$0_latch$0", label %"bmh_search$0$0_return_from_recursive_function$1"

"bmh_search$0$0_latch$0":                         ; preds = %"bmh_search$0$0_exiting$1"
  %idxprom16 = sext i32 %dec to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %arg4, i64 %idxprom16
  %i = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv = sext i8 %i to i32
  %arrayidx19 = getelementptr inbounds i8, i8* %arg3, i64 %idxprom16
  %i7 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %i7 to i32
  %cmp21 = icmp eq i32 %conv, %conv20
  %indvars.iv.next = add nsw i64 %arg2, -1
  br i1 %cmp21, label %"bmh_search$0$0_increment_depth_counter", label %"bmh_search$0$0_return_from_recursive_function$0"

"bmh_search$0$0_increment_depth_counter":         ; preds = %"bmh_search$0$0_latch$0"
  %i8 = add i16 %arg6, 1
  %i9 = icmp ult i16 %i8, 256
  br i1 %i9, label %"bmh_search$0$0_recursively_call_function", label %"bmh_search$0$0_save_recursive_state_and_return"

"bmh_search$0$0_recursively_call_function":       ; preds = %"bmh_search$0$0_increment_depth_counter"
  call void @"bmh_search$0$0"(%6* %arg, i32 %dec, i64 %indvars.iv.next, i8* %arg3, i8* %arg4, %7* %arg5, i16 %i8)
  ret void

"bmh_search$0$0_save_recursive_state_and_return": ; preds = %"bmh_search$0$0_increment_depth_counter"
  %i10 = getelementptr %7, %7* %arg5, i32 0, i32 0
  store i32 %dec, i32* %i10, align 4
  %i11 = getelementptr %7, %7* %arg5, i32 0, i32 1
  store i64 %indvars.iv.next, i64* %i11, align 8
  %i12 = getelementptr %7, %7* %arg5, i32 0, i32 2
  store i1 false, i1* %i12, align 1
  ret void

"bmh_search$0$0_return_from_recursive_function$0": ; preds = %"bmh_search$0$0_latch$0"
  %i13 = getelementptr %6, %6* %arg, i32 0, i32 0
  store i8 1, i8* %i13, align 1
  %i14 = getelementptr %7, %7* %arg5, i32 0, i32 2
  store i1 true, i1* %i14, align 1
  ret void

"bmh_search$0$0_return_from_recursive_function$1": ; preds = %"bmh_search$0$0_exiting$1"
  %i15 = getelementptr %6, %6* %arg, i32 0, i32 0
  store i8 0, i8* %i15, align 1
  %i16 = getelementptr %7, %7* %arg5, i32 0, i32 2
  store i1 true, i1* %i16, align 1
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
