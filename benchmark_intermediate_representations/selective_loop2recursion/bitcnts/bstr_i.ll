; ModuleID = './benchmark_intermediate_representations/baseline/bitcnts/bstr_i.ll'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bstr_i.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @bstr_i(i8* readonly %cptr) #0 {
entry:
  %tobool14 = icmp eq i8* %cptr, null
  br i1 %tobool14, label %while.end, label %land.lhs.true.preheader

land.lhs.true.preheader:                          ; preds = %entry
  %0 = load i8, i8* %cptr, align 1, !tbaa !1
  %tobool120 = icmp eq i8 %0, 0
  br i1 %tobool120, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %land.lhs.true.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %while.body, %land.rhs.preheader
  %conv23.in = phi i8 [ %4, %while.body ], [ %0, %land.rhs.preheader ]
  %cptr.addr.01522 = phi i8* [ %incdec.ptr, %while.body ], [ %cptr, %land.rhs.preheader ]
  %j.01621 = phi i32 [ %or, %while.body ], [ 0, %land.rhs.preheader ]
  %conv23 = sext i8 %conv23.in to i32
  %1 = zext i32 %conv23 to i64
  %memchr.bounds = icmp ult i8 %conv23.in, 64
  %2 = shl i64 1, %1
  %3 = and i64 %2, 844424930131969
  %memchr.bits = icmp ne i64 %3, 0
  %tobool3.demorgan = and i1 %memchr.bounds, %memchr.bits
  br i1 %tobool3.demorgan, label %while.body, label %while.end.loopexit

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %cptr.addr.01522, i64 1
  %shl = shl i32 %j.01621, 1
  %and = and i32 %conv23, 1
  %or = or i32 %and, %shl
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %4, 0
  br i1 %tobool1, label %while.end.loopexit, label %land.rhs

while.end.loopexit:                               ; preds = %while.body, %land.rhs
  %j.0.lcssa.ph = phi i32 [ %or, %while.body ], [ %j.01621, %land.rhs ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %land.lhs.true.preheader, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ 0, %land.lhs.true.preheader ], [ %j.0.lcssa.ph, %while.end.loopexit ]
  ret i32 %j.0.lcssa
}

attributes #0 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
