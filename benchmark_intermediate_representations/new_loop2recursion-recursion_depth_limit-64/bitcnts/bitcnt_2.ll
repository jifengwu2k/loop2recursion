; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-recursion_depth_limit-64/bitcnts/bitcnt_2.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitcnt_2.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @bitcount(i64 %i) #0 {
entry:
  %and = lshr i64 %i, 1
  %shr28 = and i64 %and, 1431655765
  %and1 = and i64 %i, 1431655765
  %add = add nuw nsw i64 %shr28, %and1
  %and2 = lshr i64 %add, 2
  %shr329 = and i64 %and2, 858993459
  %and4 = and i64 %add, 858993459
  %add5 = add nuw nsw i64 %shr329, %and4
  %and6 = lshr i64 %add5, 4
  %shr730 = and i64 %and6, 117901063
  %and8 = and i64 %add5, 117901063
  %add9 = add nuw nsw i64 %shr730, %and8
  %and10 = lshr i64 %add9, 8
  %shr1131 = and i64 %and10, 983055
  %and12 = and i64 %add9, 983055
  %add13 = add nuw nsw i64 %shr1131, %and12
  %shr1532 = lshr i64 %add13, 16
  %and16 = and i64 %add13, 31
  %add17 = add nuw nsw i64 %shr1532, %and16
  %conv = trunc i64 %add17 to i32
  ret i32 %conv
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
