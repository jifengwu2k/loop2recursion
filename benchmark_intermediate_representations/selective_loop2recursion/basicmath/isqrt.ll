; ModuleID = './benchmark_intermediate_representations/baseline/basicmath/isqrt.ll'
source_filename = "./benchmark_intermediate_representations/baseline/basicmath/isqrt.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

; Function Attrs: norecurse nounwind uwtable
define void @usqrt(i64 %x, %struct.int_sqrt* nocapture %q) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc6, %for.body ]
  %r.021 = phi i64 [ 0, %entry ], [ %r.1, %for.body ]
  %a.020 = phi i64 [ 0, %entry ], [ %a.1, %for.body ]
  %x.addr.019 = phi i64 [ %x, %entry ], [ %shl1, %for.body ]
  %shl = shl i64 %r.021, 2
  %and = lshr i64 %x.addr.019, 30
  %shr = and i64 %and, 3
  %add = or i64 %shl, %shr
  %shl1 = shl i64 %x.addr.019, 2
  %0 = shl i64 %a.020, 1
  %shl3 = shl i64 %a.020, 2
  %add4 = or i64 %shl3, 1
  %cmp5 = icmp ult i64 %add, %add4
  %1 = zext i1 %cmp5 to i64
  %shl2 = or i64 %1, %0
  %a.1 = xor i64 %shl2, 1
  %sub = select i1 %cmp5, i64 0, i64 %add4
  %r.1 = sub i64 %add, %sub
  %inc6 = add nuw nsw i32 %i.022, 1
  %exitcond = icmp eq i32 %inc6, 32
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %a.1.lcssa = phi i64 [ %a.1, %for.body ]
  %a.0..sroa_cast16 = bitcast %struct.int_sqrt* %q to i64*
  store i64 %a.1.lcssa, i64* %a.0..sroa_cast16, align 4
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
