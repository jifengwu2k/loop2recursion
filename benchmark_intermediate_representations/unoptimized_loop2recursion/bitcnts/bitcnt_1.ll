; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion/bitcnts/bitcnt_1.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitcnt_1.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32 }

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @bit_count(i64 %x) #0 {
entry:
  %tobool = icmp eq i64 %x, 0
  br i1 %tobool, label %if.end, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  br label %"bit_count$0_initialize_context"

"bit_count$0_initialize_context":                 ; preds = %do.body.preheader
  %i = alloca %0, align 8
  br label %"bit_count$0_call_recursive_function"

"bit_count$0_call_recursive_function":            ; preds = %"bit_count$0_initialize_context"
  call void @"bit_count$0"(%0* %i, i32 0, i64 %x)
  br label %"bit_count$0_extract_return_values$0"

"bit_count$0_extract_return_values$0":            ; preds = %"bit_count$0_call_recursive_function"
  %i1 = getelementptr %0, %0* %i, i32 0, i32 0
  %i2 = load i32, i32* %i1, align 4
  br label %if.end.loopexit

if.end.loopexit:                                  ; preds = %"bit_count$0_extract_return_values$0"
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %entry
  %n.1 = phi i32 [ 0, %entry ], [ %i2, %if.end.loopexit ]
  ret i32 %n.1
}

define void @"bit_count$0"(%0* %arg, i32 %arg1, i64 %arg2) {
"bit_count$0_latch$0":
  %inc = add nuw nsw i32 %arg1, 1
  %sub = add nsw i64 %arg2, -1
  %and = and i64 %sub, %arg2
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %"bit_count$0_return_from_recursive_function$0", label %"bit_count$0_increment_depth_counter"

"bit_count$0_increment_depth_counter":            ; preds = %"bit_count$0_latch$0"
  br label %"bit_count$0_recursively_call_function"

"bit_count$0_recursively_call_function":          ; preds = %"bit_count$0_increment_depth_counter"
  call void @"bit_count$0"(%0* %arg, i32 %inc, i64 %and)
  ret void

"bit_count$0_return_from_recursive_function$0":   ; preds = %"bit_count$0_latch$0"
  %i = getelementptr %0, %0* %arg, i32 0, i32 0
  store i32 %inc, i32* %i, align 4
  ret void
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
