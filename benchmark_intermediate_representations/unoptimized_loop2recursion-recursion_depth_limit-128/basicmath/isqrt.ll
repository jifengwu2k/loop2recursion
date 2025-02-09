; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-128/basicmath/isqrt.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/basicmath/isqrt.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64 }
%1 = type { i64, i64, i32, i64, i1 }
%struct.int_sqrt = type { i32, i32 }

; Function Attrs: norecurse nounwind uwtable
define void @usqrt(i64 %x, %struct.int_sqrt* nocapture %q) #0 {
entry:
  br label %"usqrt$0_initialize_context"

"usqrt$0_initialize_context":                     ; preds = %entry
  %i = alloca %0, align 8
  %i1 = alloca %1, align 8
  br label %"usqrt$0_call_recursive_function"

"usqrt$0_call_recursive_function":                ; preds = %"usqrt$0_extract_next_values", %"usqrt$0_initialize_context"
  %i2 = phi i64 [ %x, %"usqrt$0_initialize_context" ], [ %i9, %"usqrt$0_extract_next_values" ]
  %i3 = phi i64 [ 0, %"usqrt$0_initialize_context" ], [ %i11, %"usqrt$0_extract_next_values" ]
  %i4 = phi i32 [ 0, %"usqrt$0_initialize_context" ], [ %i13, %"usqrt$0_extract_next_values" ]
  %i5 = phi i64 [ 0, %"usqrt$0_initialize_context" ], [ %i15, %"usqrt$0_extract_next_values" ]
  call void @"usqrt$0"(%0* %i, i64 %i2, i64 %i3, i32 %i4, i64 %i5, %1* %i1, i8 0)
  %i6 = getelementptr %1, %1* %i1, i32 0, i32 4
  %i7 = load i1, i1* %i6, align 1
  br i1 %i7, label %"usqrt$0_extract_return_values$0", label %"usqrt$0_extract_next_values"

"usqrt$0_extract_next_values":                    ; preds = %"usqrt$0_call_recursive_function"
  %i8 = getelementptr %1, %1* %i1, i32 0, i32 0
  %i9 = load i64, i64* %i8, align 8
  %i10 = getelementptr %1, %1* %i1, i32 0, i32 1
  %i11 = load i64, i64* %i10, align 8
  %i12 = getelementptr %1, %1* %i1, i32 0, i32 2
  %i13 = load i32, i32* %i12, align 4
  %i14 = getelementptr %1, %1* %i1, i32 0, i32 3
  %i15 = load i64, i64* %i14, align 8
  br label %"usqrt$0_call_recursive_function"

"usqrt$0_extract_return_values$0":                ; preds = %"usqrt$0_call_recursive_function"
  %i16 = getelementptr %0, %0* %i, i32 0, i32 0
  %i17 = load i64, i64* %i16, align 8
  br label %for.end

for.end:                                          ; preds = %"usqrt$0_extract_return_values$0"
  %a.0..sroa_cast16 = bitcast %struct.int_sqrt* %q to i64*
  store i64 %i17, i64* %a.0..sroa_cast16, align 4
  ret void
}

define void @"usqrt$0"(%0* %arg, i64 %arg1, i64 %arg2, i32 %arg3, i64 %arg4, %1* %arg5, i8 %arg6) {
"usqrt$0_latch$0":
  %shl = shl i64 %arg4, 2
  %and = lshr i64 %arg1, 30
  %shr = and i64 %and, 3
  %add = or i64 %shl, %shr
  %shl1 = shl i64 %arg1, 2
  %i = shl i64 %arg2, 1
  %shl3 = shl i64 %arg2, 2
  %add4 = or i64 %shl3, 1
  %cmp5 = icmp ult i64 %add, %add4
  %i7 = zext i1 %cmp5 to i64
  %shl2 = or i64 %i7, %i
  %a.1 = xor i64 %shl2, 1
  %sub = select i1 %cmp5, i64 0, i64 %add4
  %r.1 = sub i64 %add, %sub
  %inc6 = add nuw nsw i32 %arg3, 1
  %exitcond = icmp eq i32 %inc6, 32
  br i1 %exitcond, label %"usqrt$0_return_from_recursive_function$0", label %"usqrt$0_increment_depth_counter"

"usqrt$0_increment_depth_counter":                ; preds = %"usqrt$0_latch$0"
  %i8 = add i8 %arg6, 1
  %i9 = icmp ult i8 %i8, -128
  br i1 %i9, label %"usqrt$0_recursively_call_function", label %"usqrt$0_save_recursive_state_and_return"

"usqrt$0_recursively_call_function":              ; preds = %"usqrt$0_increment_depth_counter"
  call void @"usqrt$0"(%0* %arg, i64 %shl1, i64 %a.1, i32 %inc6, i64 %r.1, %1* %arg5, i8 %i8)
  ret void

"usqrt$0_save_recursive_state_and_return":        ; preds = %"usqrt$0_increment_depth_counter"
  %i10 = getelementptr %1, %1* %arg5, i32 0, i32 0
  store i64 %shl1, i64* %i10, align 8
  %i11 = getelementptr %1, %1* %arg5, i32 0, i32 1
  store i64 %a.1, i64* %i11, align 8
  %i12 = getelementptr %1, %1* %arg5, i32 0, i32 2
  store i32 %inc6, i32* %i12, align 4
  %i13 = getelementptr %1, %1* %arg5, i32 0, i32 3
  store i64 %r.1, i64* %i13, align 8
  %i14 = getelementptr %1, %1* %arg5, i32 0, i32 4
  store i1 false, i1* %i14, align 1
  ret void

"usqrt$0_return_from_recursive_function$0":       ; preds = %"usqrt$0_latch$0"
  %i15 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i64 %a.1, i64* %i15, align 8
  %i16 = getelementptr %1, %1* %arg5, i32 0, i32 4
  store i1 true, i1* %i16, align 1
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
