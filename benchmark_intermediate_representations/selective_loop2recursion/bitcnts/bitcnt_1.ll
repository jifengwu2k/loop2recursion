; ModuleID = './benchmark_intermediate_representations/baseline/bitcnts/bitcnt_1.ll'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitcnt_1.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @bit_count(i64 %x) #0 {
entry:
  %tobool = icmp eq i64 %x, 0
  br i1 %tobool, label %if.end, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.preheader
  %x.addr.0 = phi i64 [ %and, %do.body ], [ %x, %do.body.preheader ]
  %n.0 = phi i32 [ %inc, %do.body ], [ 0, %do.body.preheader ]
  %inc = add nuw nsw i32 %n.0, 1
  %sub = add nsw i64 %x.addr.0, -1
  %and = and i64 %sub, %x.addr.0
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.end.loopexit, label %do.body

if.end.loopexit:                                  ; preds = %do.body
  %inc.lcssa = phi i32 [ %inc, %do.body ]
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %entry
  %n.1 = phi i32 [ 0, %entry ], [ %inc.lcssa, %if.end.loopexit ]
  ret i32 %n.1
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
