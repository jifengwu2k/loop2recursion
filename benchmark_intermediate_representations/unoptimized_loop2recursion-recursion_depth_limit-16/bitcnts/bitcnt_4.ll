; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-16/bitcnts/bitcnt_4.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitcnt_4.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bits = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: nounwind readnone uwtable
define i32 @ntbl_bitcnt(i64 %x) #0 {
entry:
  %conv = and i64 %x, 15
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv
  %i = load i8, i8* %arrayidx, align 1, !tbaa !1
  %conv1 = sext i8 %i to i32
  %shr = ashr i64 %x, 4
  %cmp = icmp eq i64 %shr, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @ntbl_bitcnt(i64 %shr)
  %add = add nsw i32 %call, %conv1
  ret i32 %add

if.end:                                           ; preds = %entry
  ret i32 %conv1
}

; Function Attrs: nounwind readnone uwtable
define i32 @btbl_bitcnt(i64 %x) #0 {
entry:
  %conv23 = and i64 %x, 255
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv23
  %i = load i8, i8* %arrayidx1, align 1, !tbaa !1
  %conv2 = sext i8 %i to i32
  %shr = ashr i64 %x, 8
  %cmp = icmp eq i64 %shr, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @btbl_bitcnt(i64 %shr)
  %add = add nsw i32 %call, %conv2
  ret i32 %add

if.end:                                           ; preds = %entry
  ret i32 %conv2
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
