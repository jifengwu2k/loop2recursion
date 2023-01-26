; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-64/bitcnts/bitcnt_1.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitcnt_1.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32 }
%1 = type { i32, i64, i1 }

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @bit_count(i64 %x) #0 {
entry:
  %tobool = icmp eq i64 %x, 0
  br i1 %tobool, label %if.end, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  br label %"bit_count$0_initialize_context"

"bit_count$0_initialize_context":                 ; preds = %do.body.preheader
  %i = alloca %0, align 8
  %i1 = alloca %1, align 8
  br label %"bit_count$0_call_recursive_function"

"bit_count$0_call_recursive_function":            ; preds = %"bit_count$0_extract_next_values", %"bit_count$0_initialize_context"
  %i2 = phi i32 [ 0, %"bit_count$0_initialize_context" ], [ %i7, %"bit_count$0_extract_next_values" ]
  %i3 = phi i64 [ %x, %"bit_count$0_initialize_context" ], [ %i9, %"bit_count$0_extract_next_values" ]
  call void @"bit_count$0"(%0* %i, i32 %i2, i64 %i3, %1* %i1, i8 0)
  %i4 = getelementptr %1, %1* %i1, i32 0, i32 2
  %i5 = load i1, i1* %i4, align 1
  br i1 %i5, label %"bit_count$0_extract_return_values$0", label %"bit_count$0_extract_next_values"

"bit_count$0_extract_next_values":                ; preds = %"bit_count$0_call_recursive_function"
  %i6 = getelementptr %1, %1* %i1, i32 0, i32 0
  %i7 = load i32, i32* %i6, align 4
  %i8 = getelementptr %1, %1* %i1, i32 0, i32 1
  %i9 = load i64, i64* %i8, align 8
  br label %"bit_count$0_call_recursive_function"

"bit_count$0_extract_return_values$0":            ; preds = %"bit_count$0_call_recursive_function"
  %i10 = getelementptr %0, %0* %i, i32 0, i32 0
  %i11 = load i32, i32* %i10, align 4
  br label %if.end.loopexit

if.end.loopexit:                                  ; preds = %"bit_count$0_extract_return_values$0"
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %entry
  %n.1 = phi i32 [ 0, %entry ], [ %i11, %if.end.loopexit ]
  ret i32 %n.1
}

define void @"bit_count$0"(%0* %arg, i32 %arg1, i64 %arg2, %1* %arg3, i8 %arg4) {
"bit_count$0_latch$0":
  %inc = add nuw nsw i32 %arg1, 1
  %sub = add nsw i64 %arg2, -1
  %and = and i64 %sub, %arg2
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %"bit_count$0_return_from_recursive_function$0", label %"bit_count$0_increment_depth_counter"

"bit_count$0_increment_depth_counter":            ; preds = %"bit_count$0_latch$0"
  %i = add i8 %arg4, 1
  %i5 = icmp ult i8 %i, 64
  br i1 %i5, label %"bit_count$0_recursively_call_function", label %"bit_count$0_save_recursive_state_and_return"

"bit_count$0_recursively_call_function":          ; preds = %"bit_count$0_increment_depth_counter"
  call void @"bit_count$0"(%0* %arg, i32 %inc, i64 %and, %1* %arg3, i8 %i)
  ret void

"bit_count$0_save_recursive_state_and_return":    ; preds = %"bit_count$0_increment_depth_counter"
  %i6 = getelementptr %1, %1* %arg3, i32 0, i32 0
  store i32 %inc, i32* %i6, align 4
  %i7 = getelementptr %1, %1* %arg3, i32 0, i32 1
  store i64 %and, i64* %i7, align 8
  %i8 = getelementptr %1, %1* %arg3, i32 0, i32 2
  store i1 false, i1* %i8, align 1
  ret void

"bit_count$0_return_from_recursive_function$0":   ; preds = %"bit_count$0_latch$0"
  %i9 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i32 %inc, i32* %i9, align 4
  %i10 = getelementptr %1, %1* %arg3, i32 0, i32 2
  store i1 true, i1* %i10, align 1
  ret void
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
