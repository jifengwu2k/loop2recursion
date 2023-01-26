; ModuleID = './benchmark_intermediate_representations/new_loop2recursion/basicmath/rad2deg.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/basicmath/rad2deg.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: norecurse nounwind readnone uwtable
define double @rad2deg(double %rad) #0 {
entry:
  %mul = fmul double %rad, 1.800000e+02
  %div = fdiv double %mul, 0x400921FB54442D18
  ret double %div
}

; Function Attrs: norecurse nounwind readnone uwtable
define double @deg2rad(double %deg) #0 {
entry:
  %mul1 = fmul double %deg, 0x400921FB54442D18
  %div = fdiv double %mul1, 1.800000e+02
  ret double %div
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
