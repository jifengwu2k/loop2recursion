; ModuleID = 'bf_cfb64.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: nounwind uwtable
define void @BF_cfb64_encrypt(i8* nocapture readonly %in, i8* nocapture %out, i64 %length, %struct.bf_key_st* %schedule, i8* %ivec, i32* nocapture %num, i32 %encrypt) #0 {
entry:
  %ti = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %ti to [2 x i64]*
  %0 = load i32, i32* %num, align 4, !tbaa !1
  %1 = bitcast <2 x i64>* %ti to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #3
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
  br label %while.body

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
  br label %while.body70

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %dec258 = phi i64 [ %dec68247, %while.body.lr.ph ], [ %dec, %if.end ]
  %n.0257 = phi i32 [ %0, %while.body.lr.ph ], [ %and66, %if.end ]
  %in.addr.0256 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr58, %if.end ]
  %out.addr.0255 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr63, %if.end ]
  %cmp = icmp eq i32 %n.0257, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  %2 = load i8, i8* %ivec, align 1, !tbaa !5
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  %4 = load i8, i8* %incdec.ptr3, align 1, !tbaa !5
  %5 = load i8, i8* %incdec.ptr6, align 1, !tbaa !5
  %6 = load i8, i8* %incdec.ptr10, align 1, !tbaa !5
  %7 = insertelement <2 x i8> undef, i8 %2, i32 0
  %8 = insertelement <2 x i8> %7, i8 %6, i32 1
  %9 = zext <2 x i8> %8 to <2 x i64>
  %10 = shl nuw nsw <2 x i64> %9, <i64 24, i64 24>
  %11 = load i8, i8* %incdec.ptr13, align 1, !tbaa !5
  %12 = insertelement <2 x i8> undef, i8 %3, i32 0
  %13 = insertelement <2 x i8> %12, i8 %11, i32 1
  %14 = zext <2 x i8> %13 to <2 x i64>
  %15 = shl nuw nsw <2 x i64> %14, <i64 16, i64 16>
  %16 = or <2 x i64> %15, %10
  %17 = load i8, i8* %incdec.ptr16, align 1, !tbaa !5
  %18 = insertelement <2 x i8> undef, i8 %4, i32 0
  %19 = insertelement <2 x i8> %18, i8 %17, i32 1
  %20 = zext <2 x i8> %19 to <2 x i64>
  %21 = shl nuw nsw <2 x i64> %20, <i64 8, i64 8>
  %22 = or <2 x i64> %16, %21
  %23 = load i8, i8* %incdec.ptr20, align 1, !tbaa !5
  %24 = insertelement <2 x i8> undef, i8 %5, i32 0
  %25 = insertelement <2 x i8> %24, i8 %23, i32 1
  %26 = zext <2 x i8> %25 to <2 x i64>
  %27 = or <2 x i64> %22, %26
  store <2 x i64> %27, <2 x i64>* %ti, align 16, !tbaa !6
  call void @BF_encrypt(i64* %arrayidx, %struct.bf_key_st* %schedule, i32 1) #3
  %28 = load i64, i64* %arrayidx, align 16, !tbaa !6
  %shr = lshr i64 %28, 24
  %conv29 = trunc i64 %shr to i8
  store i8 %conv29, i8* %ivec, align 1, !tbaa !5
  %shr31 = lshr i64 %28, 16
  %conv33 = trunc i64 %shr31 to i8
  store i8 %conv33, i8* %incdec.ptr, align 1, !tbaa !5
  %shr35 = lshr i64 %28, 8
  %conv37 = trunc i64 %shr35 to i8
  store i8 %conv37, i8* %incdec.ptr3, align 1, !tbaa !5
  %conv40 = trunc i64 %28 to i8
  store i8 %conv40, i8* %incdec.ptr6, align 1, !tbaa !5
  %29 = load i64, i64* %arrayidx27, align 8, !tbaa !6
  %shr43 = lshr i64 %29, 24
  %conv45 = trunc i64 %shr43 to i8
  store i8 %conv45, i8* %incdec.ptr10, align 1, !tbaa !5
  %shr47 = lshr i64 %29, 16
  %conv49 = trunc i64 %shr47 to i8
  store i8 %conv49, i8* %incdec.ptr13, align 1, !tbaa !5
  %shr51 = lshr i64 %29, 8
  %conv53 = trunc i64 %shr51 to i8
  store i8 %conv53, i8* %incdec.ptr16, align 1, !tbaa !5
  %conv56 = trunc i64 %29 to i8
  store i8 %conv56, i8* %incdec.ptr20, align 1, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then2, %while.body
  %incdec.ptr58 = getelementptr inbounds i8, i8* %in.addr.0256, i64 1
  %30 = load i8, i8* %in.addr.0256, align 1, !tbaa !5
  %idxprom = sext i32 %n.0257 to i64
  %arrayidx60 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom
  %31 = load i8, i8* %arrayidx60, align 1, !tbaa !5
  %xor245 = xor i8 %31, %30
  %incdec.ptr63 = getelementptr inbounds i8, i8* %out.addr.0255, i64 1
  store i8 %xor245, i8* %out.addr.0255, align 1, !tbaa !5
  store i8 %xor245, i8* %arrayidx60, align 1, !tbaa !5
  %add = add nsw i32 %n.0257, 1
  %and66 = and i32 %add, 7
  %dec = add nsw i64 %dec258, -1
  %tobool1 = icmp eq i64 %dec258, 0
  br i1 %tobool1, label %if.end151.loopexit263, label %while.body

while.body70:                                     ; preds = %while.body70.lr.ph, %if.end137
  %dec68252 = phi i64 [ %dec68247, %while.body70.lr.ph ], [ %dec68, %if.end137 ]
  %n.1251 = phi i32 [ %0, %while.body70.lr.ph ], [ %and149, %if.end137 ]
  %in.addr.1250 = phi i8* [ %in, %while.body70.lr.ph ], [ %incdec.ptr138, %if.end137 ]
  %out.addr.1249 = phi i8* [ %out, %while.body70.lr.ph ], [ %incdec.ptr147, %if.end137 ]
  %cmp71 = icmp eq i32 %n.1251, 0
  br i1 %cmp71, label %if.then73, label %if.end137

if.then73:                                        ; preds = %while.body70
  %32 = load i8, i8* %ivec, align 1, !tbaa !5
  %33 = load i8, i8* %incdec.ptr74, align 1, !tbaa !5
  %34 = load i8, i8* %incdec.ptr77, align 1, !tbaa !5
  %35 = load i8, i8* %incdec.ptr81, align 1, !tbaa !5
  %36 = load i8, i8* %incdec.ptr85, align 1, !tbaa !5
  %37 = insertelement <2 x i8> undef, i8 %32, i32 0
  %38 = insertelement <2 x i8> %37, i8 %36, i32 1
  %39 = zext <2 x i8> %38 to <2 x i64>
  %40 = shl nuw nsw <2 x i64> %39, <i64 24, i64 24>
  %41 = load i8, i8* %incdec.ptr89, align 1, !tbaa !5
  %42 = insertelement <2 x i8> undef, i8 %33, i32 0
  %43 = insertelement <2 x i8> %42, i8 %41, i32 1
  %44 = zext <2 x i8> %43 to <2 x i64>
  %45 = shl nuw nsw <2 x i64> %44, <i64 16, i64 16>
  %46 = or <2 x i64> %45, %40
  %47 = load i8, i8* %incdec.ptr92, align 1, !tbaa !5
  %48 = insertelement <2 x i8> undef, i8 %34, i32 0
  %49 = insertelement <2 x i8> %48, i8 %47, i32 1
  %50 = zext <2 x i8> %49 to <2 x i64>
  %51 = shl nuw nsw <2 x i64> %50, <i64 8, i64 8>
  %52 = or <2 x i64> %46, %51
  %53 = load i8, i8* %incdec.ptr96, align 1, !tbaa !5
  %54 = insertelement <2 x i8> undef, i8 %35, i32 0
  %55 = insertelement <2 x i8> %54, i8 %53, i32 1
  %56 = zext <2 x i8> %55 to <2 x i64>
  %57 = or <2 x i64> %52, %56
  store <2 x i64> %57, <2 x i64>* %ti, align 16, !tbaa !6
  call void @BF_encrypt(i64* %arrayidx88, %struct.bf_key_st* %schedule, i32 1) #3
  %58 = load i64, i64* %arrayidx88, align 16, !tbaa !6
  %shr106 = lshr i64 %58, 24
  %conv108 = trunc i64 %shr106 to i8
  store i8 %conv108, i8* %ivec, align 1, !tbaa !5
  %shr110 = lshr i64 %58, 16
  %conv112 = trunc i64 %shr110 to i8
  store i8 %conv112, i8* %incdec.ptr74, align 1, !tbaa !5
  %shr114 = lshr i64 %58, 8
  %conv116 = trunc i64 %shr114 to i8
  store i8 %conv116, i8* %incdec.ptr77, align 1, !tbaa !5
  %conv119 = trunc i64 %58 to i8
  store i8 %conv119, i8* %incdec.ptr81, align 1, !tbaa !5
  %59 = load i64, i64* %arrayidx103, align 8, !tbaa !6
  %shr122 = lshr i64 %59, 24
  %conv124 = trunc i64 %shr122 to i8
  store i8 %conv124, i8* %incdec.ptr85, align 1, !tbaa !5
  %shr126 = lshr i64 %59, 16
  %conv128 = trunc i64 %shr126 to i8
  store i8 %conv128, i8* %incdec.ptr89, align 1, !tbaa !5
  %shr130 = lshr i64 %59, 8
  %conv132 = trunc i64 %shr130 to i8
  store i8 %conv132, i8* %incdec.ptr92, align 1, !tbaa !5
  %conv135 = trunc i64 %59 to i8
  store i8 %conv135, i8* %incdec.ptr96, align 1, !tbaa !5
  br label %if.end137

if.end137:                                        ; preds = %if.then73, %while.body70
  %incdec.ptr138 = getelementptr inbounds i8, i8* %in.addr.1250, i64 1
  %60 = load i8, i8* %in.addr.1250, align 1, !tbaa !5
  %idxprom139 = sext i32 %n.1251 to i64
  %arrayidx140 = getelementptr inbounds i8, i8* %ivec, i64 %idxprom139
  %61 = load i8, i8* %arrayidx140, align 1, !tbaa !5
  store i8 %60, i8* %arrayidx140, align 1, !tbaa !5
  %xor145244 = xor i8 %61, %60
  %incdec.ptr147 = getelementptr inbounds i8, i8* %out.addr.1249, i64 1
  store i8 %xor145244, i8* %out.addr.1249, align 1, !tbaa !5
  %add148 = add nsw i32 %n.1251, 1
  %and149 = and i32 %add148, 7
  %dec68 = add nsw i64 %dec68252, -1
  %tobool69 = icmp eq i64 %dec68252, 0
  br i1 %tobool69, label %if.end151.loopexit, label %while.body70

if.end151.loopexit:                               ; preds = %if.end137
  %and149.lcssa = phi i32 [ %and149, %if.end137 ]
  br label %if.end151

if.end151.loopexit263:                            ; preds = %if.end
  %and66.lcssa = phi i32 [ %and66, %if.end ]
  br label %if.end151

if.end151:                                        ; preds = %if.end151.loopexit263, %if.end151.loopexit, %while.cond.preheader, %while.cond67.preheader
  %n.2 = phi i32 [ %0, %while.cond67.preheader ], [ %0, %while.cond.preheader ], [ %and149.lcssa, %if.end151.loopexit ], [ %and66.lcssa, %if.end151.loopexit263 ]
  store i32 %n.2, i32* %num, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 16, i8* %1) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
