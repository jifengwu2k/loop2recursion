; ModuleID = 'bmhisrch.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@patlen = internal unnamed_addr global i32 0, align 4
@pat = internal unnamed_addr global i8* null, align 8
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @bmhi_init(i8* nocapture readonly %pattern) #0 {
entry:
  %call = tail call i64 @strlen(i8* %pattern) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @patlen, align 4, !tbaa !1
  %0 = load i8*, i8** @pat, align 8, !tbaa !5
  %sext = shl i64 %call, 32
  %conv1 = ashr exact i64 %sext, 32
  %call2 = tail call i8* @realloc(i8* %0, i64 %conv1) #7
  store i8* %call2, i8** @pat, align 8, !tbaa !5
  %tobool = icmp eq i8* %call2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @exit(i32 1) #8
  unreachable

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @atexit(void ()* nonnull @bhmi_cleanup) #7
  %1 = load i32, i32* @patlen, align 4, !tbaa !1
  %cmp108 = icmp sgt i32 %1, 0
  br i1 %cmp108, label %for.body.lr.ph, label %vector.ph

vector.ph.loopexit.unr-lcssa:                     ; preds = %for.body
  br label %vector.ph.loopexit

vector.ph.loopexit:                               ; preds = %for.body.lr.ph.split, %vector.ph.loopexit.unr-lcssa
  br label %vector.ph

vector.ph:                                        ; preds = %vector.ph.loopexit, %if.else
  %broadcast.splatinsert120 = insertelement <4 x i32> undef, i32 %1, i32 0
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
  %sub103 = add nsw i32 %1, -1
  %cmp22104 = icmp sgt i32 %1, 1
  %2 = load i8*, i8** @pat, align 8
  br i1 %cmp22104, label %for.body24.lr.ph, label %for.cond21.preheader.for.end46_crit_edge

for.body.lr.ph:                                   ; preds = %if.else
  %call7 = tail call i32** @__ctype_toupper_loc() #9
  %3 = load i8*, i8** @pat, align 8
  %4 = sext i32 %1 to i64
  %5 = sext i32 %1 to i64
  %6 = add nsw i64 %5, -1
  %xtraiter = and i64 %5, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.lr.ph.split, label %for.body.prol.preheader

for.body.prol.preheader:                          ; preds = %for.body.lr.ph
  br label %for.body.prol

for.body.prol:                                    ; preds = %for.body.prol.preheader, %for.body.prol
  %indvars.iv116.prol = phi i64 [ %indvars.iv.next117.prol, %for.body.prol ], [ 0, %for.body.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body.prol ], [ %xtraiter, %for.body.prol.preheader ]
  %arrayidx.prol = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv116.prol
  %7 = load i8, i8* %arrayidx.prol, align 1, !tbaa !7
  %idxprom6.prol = sext i8 %7 to i64
  %8 = load i32*, i32** %call7, align 8, !tbaa !5
  %arrayidx8.prol = getelementptr inbounds i32, i32* %8, i64 %idxprom6.prol
  %9 = load i32, i32* %arrayidx8.prol, align 4, !tbaa !1
  %conv9.prol = trunc i32 %9 to i8
  %arrayidx11.prol = getelementptr inbounds i8, i8* %3, i64 %indvars.iv116.prol
  store i8 %conv9.prol, i8* %arrayidx11.prol, align 1, !tbaa !7
  %indvars.iv.next117.prol = add nuw nsw i64 %indvars.iv116.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.lr.ph.split.loopexit, label %for.body.prol, !llvm.loop !8

for.body.lr.ph.split.loopexit:                    ; preds = %for.body.prol
  %indvars.iv.next117.prol.lcssa = phi i64 [ %indvars.iv.next117.prol, %for.body.prol ]
  br label %for.body.lr.ph.split

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph.split.loopexit, %for.body.lr.ph
  %indvars.iv116.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next117.prol.lcssa, %for.body.lr.ph.split.loopexit ]
  %10 = icmp ult i64 %6, 3
  br i1 %10, label %vector.ph.loopexit, label %for.body.lr.ph.split.split

for.body.lr.ph.split.split:                       ; preds = %for.body.lr.ph.split
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.split.split
  %indvars.iv116 = phi i64 [ %indvars.iv116.unr, %for.body.lr.ph.split.split ], [ %indvars.iv.next117.3, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv116
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom6 = sext i8 %11 to i64
  %12 = load i32*, i32** %call7, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %13 = load i32, i32* %arrayidx8, align 4, !tbaa !1
  %conv9 = trunc i32 %13 to i8
  %arrayidx11 = getelementptr inbounds i8, i8* %3, i64 %indvars.iv116
  store i8 %conv9, i8* %arrayidx11, align 1, !tbaa !7
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv.next117
  %14 = load i8, i8* %arrayidx.1, align 1, !tbaa !7
  %idxprom6.1 = sext i8 %14 to i64
  %15 = load i32*, i32** %call7, align 8, !tbaa !5
  %arrayidx8.1 = getelementptr inbounds i32, i32* %15, i64 %idxprom6.1
  %16 = load i32, i32* %arrayidx8.1, align 4, !tbaa !1
  %conv9.1 = trunc i32 %16 to i8
  %arrayidx11.1 = getelementptr inbounds i8, i8* %3, i64 %indvars.iv.next117
  store i8 %conv9.1, i8* %arrayidx11.1, align 1, !tbaa !7
  %indvars.iv.next117.1 = add nsw i64 %indvars.iv116, 2
  %arrayidx.2 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv.next117.1
  %17 = load i8, i8* %arrayidx.2, align 1, !tbaa !7
  %idxprom6.2 = sext i8 %17 to i64
  %18 = load i32*, i32** %call7, align 8, !tbaa !5
  %arrayidx8.2 = getelementptr inbounds i32, i32* %18, i64 %idxprom6.2
  %19 = load i32, i32* %arrayidx8.2, align 4, !tbaa !1
  %conv9.2 = trunc i32 %19 to i8
  %arrayidx11.2 = getelementptr inbounds i8, i8* %3, i64 %indvars.iv.next117.1
  store i8 %conv9.2, i8* %arrayidx11.2, align 1, !tbaa !7
  %indvars.iv.next117.2 = add nsw i64 %indvars.iv116, 3
  %arrayidx.3 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv.next117.2
  %20 = load i8, i8* %arrayidx.3, align 1, !tbaa !7
  %idxprom6.3 = sext i8 %20 to i64
  %21 = load i32*, i32** %call7, align 8, !tbaa !5
  %arrayidx8.3 = getelementptr inbounds i32, i32* %21, i64 %idxprom6.3
  %22 = load i32, i32* %arrayidx8.3, align 4, !tbaa !1
  %conv9.3 = trunc i32 %22 to i8
  %arrayidx11.3 = getelementptr inbounds i8, i8* %3, i64 %indvars.iv.next117.2
  store i8 %conv9.3, i8* %arrayidx11.3, align 1, !tbaa !7
  %indvars.iv.next117.3 = add nsw i64 %indvars.iv116, 4
  %cmp.3 = icmp slt i64 %indvars.iv.next117.3, %4
  br i1 %cmp.3, label %for.body, label %vector.ph.loopexit.unr-lcssa

for.cond21.preheader.for.end46_crit_edge:         ; preds = %vector.body
  %.pre118 = sext i32 %sub103 to i64
  br label %for.end46

for.body24.lr.ph:                                 ; preds = %vector.body
  %call39 = tail call i32** @__ctype_tolower_loc() #9
  %23 = load i32*, i32** %call39, align 8
  %24 = sext i32 %sub103 to i64
  br label %for.body24

for.body24:                                       ; preds = %for.body24.lr.ph, %for.body24
  %indvars.iv111 = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next112, %for.body24 ]
  %i.2.neg106 = phi i32 [ 0, %for.body24.lr.ph ], [ %i.2.neg, %for.body24 ]
  %i.2105 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc45, %for.body24 ]
  %sub25 = add nsw i32 %i.2.neg106, -1
  %sub26 = add i32 %sub25, %1
  %arrayidx28 = getelementptr inbounds i8, i8* %2, i64 %indvars.iv111
  %25 = load i8, i8* %arrayidx28, align 1, !tbaa !7
  %idxprom29 = zext i8 %25 to i64
  %arrayidx30 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom29
  store i32 %sub26, i32* %arrayidx30, align 4, !tbaa !1
  %arrayidx40 = getelementptr inbounds i32, i32* %23, i64 %idxprom29
  %26 = load i32, i32* %arrayidx40, align 4, !tbaa !1
  %idxprom42 = sext i32 %26 to i64
  %arrayidx43 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom42
  store i32 %sub26, i32* %arrayidx43, align 4, !tbaa !1
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %inc45 = add nuw nsw i32 %i.2105, 1
  %i.2.neg = xor i32 %i.2105, -1
  %cmp22 = icmp slt i64 %indvars.iv.next112, %24
  br i1 %cmp22, label %for.body24, label %for.end46.loopexit

for.end46.loopexit:                               ; preds = %for.body24
  br label %for.end46

for.end46:                                        ; preds = %for.end46.loopexit, %for.cond21.preheader.for.end46_crit_edge
  %idxprom48.pre-phi = phi i64 [ %.pre118, %for.cond21.preheader.for.end46_crit_edge ], [ %24, %for.end46.loopexit ]
  %arrayidx49 = getelementptr inbounds i8, i8* %2, i64 %idxprom48.pre-phi
  %27 = load i8, i8* %arrayidx49, align 1, !tbaa !7
  %conv50 = zext i8 %27 to i32
  %idxprom51 = zext i8 %27 to i64
  %arrayidx52 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom51
  store i32 32767, i32* %arrayidx52, align 4, !tbaa !1
  %__c.off.i = add nuw nsw i32 %conv50, 128
  %28 = icmp ult i32 %__c.off.i, 384
  br i1 %28, label %cond.true.i, label %tolower.exit

cond.true.i:                                      ; preds = %for.end46
  %call.i = tail call i32** @__ctype_tolower_loc() #9
  %29 = load i32*, i32** %call.i, align 8, !tbaa !5
  %arrayidx.i = getelementptr inbounds i32, i32* %29, i64 %idxprom51
  %30 = load i32, i32* %arrayidx.i, align 4, !tbaa !1
  br label %tolower.exit

tolower.exit:                                     ; preds = %for.end46, %cond.true.i
  %cond.i = phi i32 [ %30, %cond.true.i ], [ %conv50, %for.end46 ]
  %idxprom57 = sext i32 %cond.i to i64
  %arrayidx58 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom57
  store i32 32767, i32* %arrayidx58, align 4, !tbaa !1
  store i32 %1, i32* @skip2, align 4, !tbaa !1
  br i1 %cmp22104, label %for.body63.preheader, label %for.end75

for.body63.preheader:                             ; preds = %tolower.exit
  br label %for.body63

for.body63:                                       ; preds = %for.body63.preheader, %for.inc73
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc73 ], [ 0, %for.body63.preheader ]
  %arrayidx65 = getelementptr inbounds i8, i8* %2, i64 %indvars.iv
  %31 = load i8, i8* %arrayidx65, align 1, !tbaa !7
  %cmp67 = icmp eq i8 %31, %27
  br i1 %cmp67, label %if.then69, label %for.inc73

if.then69:                                        ; preds = %for.body63
  %32 = xor i64 %indvars.iv, 4294967295
  %33 = trunc i64 %32 to i32
  %sub71 = add i32 %1, %33
  store i32 %sub71, i32* @skip2, align 4, !tbaa !1
  br label %for.inc73

for.inc73:                                        ; preds = %for.body63, %if.then69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp61 = icmp slt i64 %indvars.iv.next, %idxprom48.pre-phi
  br i1 %cmp61, label %for.body63, label %for.end75.loopexit

for.end75.loopexit:                               ; preds = %for.inc73
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
  %0 = load i8*, i8** @pat, align 8, !tbaa !5
  tail call void @free(i8* %0) #7
  ret void
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() #4

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #4

; Function Attrs: nounwind readonly uwtable
define i8* @bmhi_search(i8* readonly %string, i32 %stringlen) #5 {
entry:
  %0 = load i32, i32* @patlen, align 4, !tbaa !1
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
  %5 = load i32, i32* %arrayidx3, align 4, !tbaa !1
  %add = add nsw i32 %5, %i.0
  %cmp4 = icmp slt i32 %add, 0
  br i1 %cmp4, label %while.cond.backedge, label %while.end

while.cond.backedge:                              ; preds = %while.cond, %if.end30
  %i.0.be = phi i32 [ %add, %while.cond ], [ %add31, %if.end30 ]
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp6 = icmp slt i32 %add, %sub5
  br i1 %cmp6, label %cleanup.loopexit62, label %if.end8

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
  %idxprom18 = sext i8 %6 to i64
  %call = tail call i32** @__ctype_toupper_loc() #9
  %7 = load i32*, i32** %call, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds i32, i32* %7, i64 %idxprom18
  %8 = load i32, i32* %arrayidx19, align 4, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8, i8* %1, i64 %idxprom16
  %9 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %conv22 = zext i8 %9 to i32
  %cmp23 = icmp eq i32 %8, %conv22
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp23, label %while.cond14, label %if.end30

if.end30:                                         ; preds = %land.rhs
  %add31 = add nsw i32 %2, %sub9
  %cmp32 = icmp sgt i32 %add31, -1
  br i1 %cmp32, label %cleanup.loopexit62, label %while.cond.backedge

cleanup.loopexit:                                 ; preds = %while.cond14
  %add.ptr13.lcssa = phi i8* [ %add.ptr13, %while.cond14 ]
  br label %cleanup

cleanup.loopexit62:                               ; preds = %while.end, %if.end30
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit62, %cleanup.loopexit, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %add.ptr13.lcssa, %cleanup.loopexit ], [ null, %cleanup.loopexit62 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

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
