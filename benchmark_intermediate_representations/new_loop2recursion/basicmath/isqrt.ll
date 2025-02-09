; ModuleID = './benchmark_intermediate_representations/new_loop2recursion/basicmath/isqrt.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/basicmath/isqrt.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64 }
%struct.int_sqrt = type { i32, i32 }

@"usqrt$0_return_value_struct" = dso_local global %0 zeroinitializer

; Function Attrs: norecurse nounwind uwtable
define void @usqrt(i64 %x, %struct.int_sqrt* nocapture %q) #0 {
entry:
  br label %"usqrt$0_initialize_context"

"usqrt$0_initialize_context":                     ; preds = %entry
  br label %"usqrt$0_call_recursive_function"

"usqrt$0_call_recursive_function":                ; preds = %"usqrt$0_initialize_context"
  call void @"usqrt$0"(i64 %x, i64 0, i32 0, i64 0)
  br label %"usqrt$0_extract_return_values$0"

"usqrt$0_extract_return_values$0":                ; preds = %"usqrt$0_call_recursive_function"
  %i = getelementptr %0, %0* @"usqrt$0_return_value_struct", i32 0, i32 0
  %i1 = load i64, i64* %i, align 8
  br label %for.end

for.end:                                          ; preds = %"usqrt$0_extract_return_values$0"
  %a.0..sroa_cast16 = bitcast %struct.int_sqrt* %q to i64*
  store i64 %i1, i64* %a.0..sroa_cast16, align 4
  ret void
}

define void @"usqrt$0"(i64 %arg, i64 %arg1, i32 %arg2, i64 %arg3) {
"usqrt$0_latch$0":
  %shl = shl i64 %arg3, 2
  %and = lshr i64 %arg, 30
  %shr = and i64 %and, 3
  %add = or i64 %shl, %shr
  %shl1 = shl i64 %arg, 2
  %i = shl i64 %arg1, 1
  %shl3 = shl i64 %arg1, 2
  %add4 = or i64 %shl3, 1
  %cmp5 = icmp ult i64 %add, %add4
  %i4 = zext i1 %cmp5 to i64
  %shl2 = or i64 %i4, %i
  %a.1 = xor i64 %shl2, 1
  %sub = select i1 %cmp5, i64 0, i64 %add4
  %r.1 = sub i64 %add, %sub
  %inc6 = add nuw nsw i32 %arg2, 1
  %exitcond = icmp eq i32 %inc6, 32
  br i1 %exitcond, label %"usqrt$0_return_from_recursive_function$0", label %"usqrt$0_increment_depth_counter"

"usqrt$0_increment_depth_counter":                ; preds = %"usqrt$0_latch$0"
  br label %"usqrt$0_recursively_call_function"

"usqrt$0_recursively_call_function":              ; preds = %"usqrt$0_increment_depth_counter"
  call void @"usqrt$0"(i64 %shl1, i64 %a.1, i32 %inc6, i64 %r.1)
  ret void

"usqrt$0_return_from_recursive_function$0":       ; preds = %"usqrt$0_latch$0"
  %i5 = getelementptr %0, %0* @"usqrt$0_return_value_struct", i32 0, i32 0
  store i64 %a.1, i64* %i5, align 8
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
