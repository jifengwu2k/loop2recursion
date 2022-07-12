; ModuleID = 'bitstrng.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind uwtable
define void @bitstring(i8* nocapture %str, i64 %byze, i32 %biz, i32 %strwid) #0 {
entry:
  %shr = ashr i32 %biz, 2
  %rem22 = and i32 %biz, 3
  %not.tobool = icmp eq i32 %rem22, 0
  %cond = zext i1 %not.tobool to i32
  %sum = add i32 %shr, %biz
  %sub23 = sub i32 %strwid, %sum
  %sub1 = add i32 %sub23, %cond
  %cmp30 = icmp sgt i32 %sub1, 0
  br i1 %cmp30, label %for.body.preheader, label %while.cond.preheader

for.body.preheader:                               ; preds = %entry
  %0 = add i32 %cond, %strwid
  %1 = add i32 %0, -1
  %2 = sub i32 %1, %sum
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1
  call void @llvm.memset.p0i8.i64(i8* %str, i8 32, i64 %4, i32 1, i1 false)
  %scevgep = getelementptr i8, i8* %str, i64 %4
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body.preheader, %entry
  %str.addr.0.lcssa = phi i8* [ %str, %entry ], [ %scevgep, %for.body.preheader ]
  %cmp227 = icmp sgt i32 %biz, 0
  br i1 %cmp227, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %5 = zext i32 %biz to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  %indvars.iv = phi i64 [ %5, %while.body.preheader ], [ %indvars.iv.next, %while.cond.backedge ]
  %str.addr.128 = phi i8* [ %str.addr.0.lcssa, %while.body.preheader ], [ %str.addr.1.be, %while.cond.backedge ]
  %6 = trunc i64 %indvars.iv to i32
  %dec29 = add nsw i32 %6, -1
  %sh_prom = zext i32 %dec29 to i64
  %shr324 = lshr i64 %byze, %sh_prom
  %and = and i64 %shr324, 1
  %add4 = or i64 %and, 48
  %conv = trunc i64 %add4 to i8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %str.addr.128, i64 1
  store i8 %conv, i8* %str.addr.128, align 1, !tbaa !1
  %rem625 = and i32 %dec29, 3
  %tobool7 = icmp eq i32 %rem625, 0
  %tobool8 = icmp ne i32 %dec29, 0
  %or.cond = and i1 %tobool8, %tobool7
  br i1 %or.cond, label %if.then, label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body, %if.then
  %str.addr.1.be = phi i8* [ %incdec.ptr9, %if.then ], [ %incdec.ptr5, %while.body ]
  %cmp2 = icmp sgt i32 %6, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp2, label %while.body, label %while.end.loopexit

if.then:                                          ; preds = %while.body
  %incdec.ptr9 = getelementptr inbounds i8, i8* %str.addr.128, i64 2
  store i8 32, i8* %incdec.ptr5, align 1, !tbaa !1
  br label %while.cond.backedge

while.end.loopexit:                               ; preds = %while.cond.backedge
  %str.addr.1.be.lcssa = phi i8* [ %str.addr.1.be, %while.cond.backedge ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %str.addr.1.lcssa = phi i8* [ %str.addr.0.lcssa, %while.cond.preheader ], [ %str.addr.1.be.lcssa, %while.end.loopexit ]
  store i8 0, i8* %str.addr.1.lcssa, align 1, !tbaa !1
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
