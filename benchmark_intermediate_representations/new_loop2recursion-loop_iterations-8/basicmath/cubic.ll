; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-8/basicmath/cubic.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/basicmath/cubic.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @SolveCubic(double %a, double %b, double %c, double %d, i32* nocapture %solutions, double* nocapture %x) #0 {
entry:
  %div = fdiv double %b, %a
  %conv = fpext double %div to x86_fp80
  %div1 = fdiv double %c, %a
  %conv2 = fpext double %div1 to x86_fp80
  %div3 = fdiv double %d, %a
  %conv4 = fpext double %div3 to x86_fp80
  %mul = fmul x86_fp80 %conv, %conv
  %mul5 = fmul x86_fp80 %conv2, 0xK4000C000000000000000
  %sub = fsub x86_fp80 %mul, %mul5
  %div6 = fdiv x86_fp80 %sub, 0xK40029000000000000000
  %mul7 = fmul x86_fp80 %conv, 0xK40008000000000000000
  %mul8 = fmul x86_fp80 %conv, %mul7
  %mul9 = fmul x86_fp80 %conv, %mul8
  %mul10 = fmul x86_fp80 %conv, 0xK40029000000000000000
  %mul11 = fmul x86_fp80 %mul10, %conv2
  %sub12 = fsub x86_fp80 %mul9, %mul11
  %mul13 = fmul x86_fp80 %conv4, 0xK4003D800000000000000
  %add = fadd x86_fp80 %mul13, %sub12
  %div14 = fdiv x86_fp80 %add, 0xK4004D800000000000000
  %mul15 = fmul x86_fp80 %div14, %div14
  %mul16 = fmul x86_fp80 %div6, %div6
  %mul17 = fmul x86_fp80 %div6, %mul16
  %sub18 = fsub x86_fp80 %mul15, %mul17
  %conv19 = fptrunc x86_fp80 %sub18 to double
  %cmp = fcmp ugt double %conv19, 0.000000e+00
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 3, i32* %solutions, align 4, !tbaa !1
  %conv23 = fptrunc x86_fp80 %mul17 to double
  %call = tail call double @sqrt(double %conv23) #3
  %conv24 = fpext double %call to x86_fp80
  %div25 = fdiv x86_fp80 %div14, %conv24
  %conv26 = fptrunc x86_fp80 %div25 to double
  %call27 = tail call double @acos(double %conv26) #3
  %conv28 = fptrunc x86_fp80 %div6 to double
  %call29 = tail call double @sqrt(double %conv28) #3
  %mul30 = fmul double %call29, -2.000000e+00
  %div31 = fdiv double %call27, 3.000000e+00
  %call32 = tail call double @cos(double %div31) #3
  %mul33 = fmul double %mul30, %call32
  %conv34 = fpext double %mul33 to x86_fp80
  %div35 = fdiv x86_fp80 %conv, 0xK4000C000000000000000
  %sub36 = fsub x86_fp80 %conv34, %div35
  %conv37 = fptrunc x86_fp80 %sub36 to double
  store double %conv37, double* %x, align 8, !tbaa !5
  %call39 = tail call double @sqrt(double %conv28) #3
  %mul40 = fmul double %call39, -2.000000e+00
  %add44 = fadd double %call27, 0x401921FB54442D18
  %div45 = fdiv double %add44, 3.000000e+00
  %call46 = tail call double @cos(double %div45) #3
  %mul47 = fmul double %mul40, %call46
  %conv48 = fpext double %mul47 to x86_fp80
  %sub50 = fsub x86_fp80 %conv48, %div35
  %conv51 = fptrunc x86_fp80 %sub50 to double
  %arrayidx52 = getelementptr inbounds double, double* %x, i64 1
  store double %conv51, double* %arrayidx52, align 8, !tbaa !5
  %call54 = tail call double @sqrt(double %conv28) #3
  %mul55 = fmul double %call54, -2.000000e+00
  %add59 = fadd double %call27, 0x402921FB54442D18
  %div60 = fdiv double %add59, 3.000000e+00
  %call61 = tail call double @cos(double %div60) #3
  %mul62 = fmul double %mul55, %call61
  %conv63 = fpext double %mul62 to x86_fp80
  %sub65 = fsub x86_fp80 %conv63, %div35
  %conv66 = fptrunc x86_fp80 %sub65 to double
  %arrayidx67 = getelementptr inbounds double, double* %x, i64 2
  store double %conv66, double* %arrayidx67, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %solutions, align 4, !tbaa !1
  %call68 = tail call double @sqrt(double %conv19) #3
  %conv69 = fptrunc x86_fp80 %div14 to double
  %call70 = tail call double @fabs(double %conv69) #4
  %add71 = fadd double %call68, %call70
  %call72 = tail call double @pow(double %add71, double 0x3FD5555555555555) #3
  %conv75 = fpext double %call72 to x86_fp80
  %div76 = fdiv x86_fp80 %div6, %conv75
  %add79 = fadd x86_fp80 %conv75, %div76
  %conv80 = fptrunc x86_fp80 %add79 to double
  %cmp81 = fcmp olt x86_fp80 %div14, 0xK00000000000000000000
  %conv83 = select i1 %cmp81, double 1.000000e+00, double -1.000000e+00
  %mul85 = fmul double %conv83, %conv80
  %div86 = fdiv x86_fp80 %conv, 0xK4000C000000000000000
  %conv88 = fpext double %mul85 to x86_fp80
  %sub89 = fsub x86_fp80 %conv88, %div86
  %conv90 = fptrunc x86_fp80 %sub89 to double
  store double %conv90, double* %x, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare double @acos(double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
