; ModuleID = 'bmhsrch.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  %0 = ashr exact i64 %sext61, 32
  %sext65 = shl i64 %call, 32
  %1 = ashr exact i64 %sext65, 32
  %2 = add nsw i64 %1, -1
  %xtraiter = and i64 %1, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body5.lr.ph.split, label %for.body5.prol.preheader

for.body5.prol.preheader:                         ; preds = %for.body5.lr.ph
  br label %for.body5.prol

for.body5.prol:                                   ; preds = %for.body5.prol.preheader, %for.body5.prol
  %indvars.iv56.prol = phi i64 [ %indvars.iv.next57.prol, %for.body5.prol ], [ 0, %for.body5.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body5.prol ], [ %xtraiter, %for.body5.prol.preheader ]
  %3 = xor i64 %indvars.iv56.prol, 4294967295
  %4 = trunc i64 %3 to i32
  %sub6.prol = add i32 %conv, %4
  %arrayidx8.prol = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv56.prol
  %5 = load i8, i8* %arrayidx8.prol, align 1, !tbaa !7
  %idxprom9.prol = zext i8 %5 to i64
  %arrayidx10.prol = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.prol
  store i32 %sub6.prol, i32* %arrayidx10.prol, align 4, !tbaa !5
  %indvars.iv.next57.prol = add nuw nsw i64 %indvars.iv56.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body5.lr.ph.split.loopexit, label %for.body5.prol, !llvm.loop !8

for.body5.lr.ph.split.loopexit:                   ; preds = %for.body5.prol
  %indvars.iv.next57.prol.lcssa = phi i64 [ %indvars.iv.next57.prol, %for.body5.prol ]
  br label %for.body5.lr.ph.split

for.body5.lr.ph.split:                            ; preds = %for.body5.lr.ph.split.loopexit, %for.body5.lr.ph
  %indvars.iv56.unr = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next57.prol.lcssa, %for.body5.lr.ph.split.loopexit ]
  %6 = icmp ult i64 %2, 3
  br i1 %6, label %for.end13.loopexit, label %for.body5.lr.ph.split.split

for.body5.lr.ph.split.split:                      ; preds = %for.body5.lr.ph.split
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.body5.lr.ph.split.split
  %indvars.iv56 = phi i64 [ %indvars.iv56.unr, %for.body5.lr.ph.split.split ], [ %indvars.iv.next57.3, %for.body5 ]
  %7 = xor i64 %indvars.iv56, 4294967295
  %8 = trunc i64 %7 to i32
  %sub6 = add i32 %conv, %8
  %arrayidx8 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv56
  %9 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %idxprom9 = zext i8 %9 to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9
  store i32 %sub6, i32* %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %10 = xor i64 %indvars.iv.next57, 4294967295
  %11 = trunc i64 %10 to i32
  %sub6.1 = add i32 %conv, %11
  %arrayidx8.1 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv.next57
  %12 = load i8, i8* %arrayidx8.1, align 1, !tbaa !7
  %idxprom9.1 = zext i8 %12 to i64
  %arrayidx10.1 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.1
  store i32 %sub6.1, i32* %arrayidx10.1, align 4, !tbaa !5
  %indvars.iv.next57.1 = add nsw i64 %indvars.iv56, 2
  %13 = xor i64 %indvars.iv.next57.1, 4294967295
  %14 = trunc i64 %13 to i32
  %sub6.2 = add i32 %conv, %14
  %arrayidx8.2 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv.next57.1
  %15 = load i8, i8* %arrayidx8.2, align 1, !tbaa !7
  %idxprom9.2 = zext i8 %15 to i64
  %arrayidx10.2 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.2
  store i32 %sub6.2, i32* %arrayidx10.2, align 4, !tbaa !5
  %indvars.iv.next57.2 = add nsw i64 %indvars.iv56, 3
  %16 = xor i64 %indvars.iv.next57.2, 4294967295
  %17 = trunc i64 %16 to i32
  %sub6.3 = add i32 %conv, %17
  %arrayidx8.3 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv.next57.2
  %18 = load i8, i8* %arrayidx8.3, align 1, !tbaa !7
  %idxprom9.3 = zext i8 %18 to i64
  %arrayidx10.3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom9.3
  store i32 %sub6.3, i32* %arrayidx10.3, align 4, !tbaa !5
  %indvars.iv.next57.3 = add nsw i64 %indvars.iv56, 4
  %cmp3.3 = icmp sgt i64 %0, %indvars.iv.next57.3
  br i1 %cmp3.3, label %for.body5, label %for.end13.loopexit.unr-lcssa

for.end13.loopexit.unr-lcssa:                     ; preds = %for.body5
  br label %for.end13.loopexit

for.end13.loopexit:                               ; preds = %for.body5.lr.ph.split, %for.end13.loopexit.unr-lcssa
  br label %for.end13

for.end13:                                        ; preds = %for.end13.loopexit, %vector.body
  %sub14 = shl i64 %call, 32
  %sext = add i64 %sub14, -4294967296
  %idxprom15 = ashr exact i64 %sext, 32
  %arrayidx16 = getelementptr inbounds i8, i8* %pattern, i64 %idxprom15
  %19 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %idxprom18 = zext i8 %19 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom18
  store i32 32767, i32* %arrayidx19, align 4, !tbaa !5
  store i32 %conv, i32* @skip2, align 4, !tbaa !5
  %cmp2250 = icmp sgt i32 %conv, 1
  br i1 %cmp2250, label %for.body24.preheader, label %for.end34

for.body24.preheader:                             ; preds = %for.end13
  br label %for.body24

for.body24:                                       ; preds = %for.body24.preheader, %for.inc32
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc32 ], [ 0, %for.body24.preheader ]
  %arrayidx26 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv
  %20 = load i8, i8* %arrayidx26, align 1, !tbaa !7
  %cmp28 = icmp eq i8 %20, %19
  br i1 %cmp28, label %if.then, label %for.inc32

if.then:                                          ; preds = %for.body24
  %21 = xor i64 %indvars.iv, 4294967295
  %22 = trunc i64 %21 to i32
  %sub31 = add i32 %conv, %22
  store i32 %sub31, i32* @skip2, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body24, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp22 = icmp slt i64 %indvars.iv.next, %idxprom15
  br i1 %cmp22, label %for.body24, label %for.end34.loopexit

for.end34.loopexit:                               ; preds = %for.inc32
  br label %for.end34

for.end34:                                        ; preds = %for.end34.loopexit, %for.end13
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @bmh_search(i8* readonly %string, i32 %stringlen) #2 {
entry:
  %0 = load i32, i32* @patlen, align 4, !tbaa !5
  %sub = xor i32 %stringlen, -1
  %sub1 = add i32 %0, %sub
  %cmp = icmp sgt i32 %sub1, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %stringlen to i64
  %add.ptr = getelementptr inbounds i8, i8* %string, i64 %idx.ext
  %sub5 = sub nsw i32 32767, %stringlen
  %sub10 = add nsw i32 %0, -1
  %1 = load i8*, i8** @pat, align 8
  %2 = load i32, i32* @skip2, align 4
  %3 = sext i32 %sub10 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %i.0 = phi i32 [ %sub1, %if.end ], [ %i.0.be, %while.cond.backedge ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom2 = zext i8 %4 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %add = add nsw i32 %5, %i.0
  %cmp4 = icmp slt i32 %add, 0
  br i1 %cmp4, label %while.cond.backedge, label %while.end

while.cond.backedge:                              ; preds = %while.cond, %if.end28
  %i.0.be = phi i32 [ %add, %while.cond ], [ %add29, %if.end28 ]
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp6 = icmp slt i32 %add, %sub5
  br i1 %cmp6, label %cleanup.loopexit59, label %if.end8

if.end8:                                          ; preds = %while.end
  %sub9 = add nsw i32 %add, -32767
  %sub11 = sub nsw i32 %sub9, %sub10
  %idx.ext12 = sext i32 %sub11 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext12
  br label %while.cond14

while.cond14:                                     ; preds = %land.rhs, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.rhs ], [ %3, %if.end8 ]
  %j.0 = phi i32 [ %dec, %land.rhs ], [ %sub10, %if.end8 ]
  %dec = add nsw i32 %j.0, -1
  %cmp15 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp15, label %land.rhs, label %cleanup.loopexit

land.rhs:                                         ; preds = %while.cond14
  %idxprom16 = sext i32 %dec to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idxprom16
  %6 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %conv = sext i8 %6 to i32
  %arrayidx19 = getelementptr inbounds i8, i8* %1, i64 %idxprom16
  %7 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %conv20 = zext i8 %7 to i32
  %cmp21 = icmp eq i32 %conv, %conv20
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp21, label %while.cond14, label %if.end28

if.end28:                                         ; preds = %land.rhs
  %add29 = add nsw i32 %2, %sub9
  %cmp30 = icmp sgt i32 %add29, -1
  br i1 %cmp30, label %cleanup.loopexit59, label %while.cond.backedge

cleanup.loopexit:                                 ; preds = %while.cond14
  %add.ptr13.lcssa = phi i8* [ %add.ptr13, %while.cond14 ]
  br label %cleanup

cleanup.loopexit59:                               ; preds = %while.end, %if.end28
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit59, %cleanup.loopexit, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %add.ptr13.lcssa, %cleanup.loopexit ], [ null, %cleanup.loopexit59 ]
  ret i8* %retval.0
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
