; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-8/bitcnts/bitcnt_1.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitcnt_1.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32 }

@"bit_count$0_return_value_struct" = dso_local global %0 zeroinitializer

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @bit_count(i64 %x) #0 {
entry:
  %tobool = icmp eq i64 %x, 0
  br i1 %tobool, label %if.end, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  br label %"bit_count$0_initialize_context"

"bit_count$0_initialize_context":                 ; preds = %do.body.preheader
  br label %"bit_count$0_call_recursive_function"

"bit_count$0_call_recursive_function":            ; preds = %"bit_count$0_initialize_context"
  call void @"bit_count$0"(i32 0, i64 %x)
  br label %"bit_count$0_extract_return_values$0"

"bit_count$0_extract_return_values$0":            ; preds = %"bit_count$0_call_recursive_function"
  %i = getelementptr %0, %0* @"bit_count$0_return_value_struct", i32 0, i32 0
  %i1 = load i32, i32* %i, align 4
  br label %if.end.loopexit

if.end.loopexit:                                  ; preds = %"bit_count$0_extract_return_values$0"
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %entry
  %n.1 = phi i32 [ 0, %entry ], [ %i1, %if.end.loopexit ]
  ret i32 %n.1
}

define void @"bit_count$0"(i32 %arg, i64 %arg1) {
"bit_count$0_preheader_in_recursion":
  br label %"bit_count$0_latch$0"

"bit_count$0_latch$0":                            ; preds = %"bit_count$0_increment_loop_counter$0", %"bit_count$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"bit_count$0_preheader_in_recursion" ], [ %i, %"bit_count$0_increment_loop_counter$0" ]
  %x.addr.0 = phi i64 [ %and, %"bit_count$0_increment_loop_counter$0" ], [ %arg1, %"bit_count$0_preheader_in_recursion" ]
  %n.0 = phi i32 [ %inc, %"bit_count$0_increment_loop_counter$0" ], [ %arg, %"bit_count$0_preheader_in_recursion" ]
  %inc = add nuw nsw i32 %n.0, 1
  %sub = add nsw i64 %x.addr.0, -1
  %and = and i64 %sub, %x.addr.0
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %"bit_count$0_return_from_recursive_function$0", label %"bit_count$0_increment_loop_counter$0"

"bit_count$0_increment_loop_counter$0":           ; preds = %"bit_count$0_latch$0"
  %i = add i8 %loop_counter, 1
  %i2 = icmp ult i8 %i, 8
  br i1 %i2, label %"bit_count$0_latch$0", label %"bit_count$0_increment_depth_counter"

"bit_count$0_increment_depth_counter":            ; preds = %"bit_count$0_increment_loop_counter$0"
  %inc.lcssa2 = phi i32 [ %inc, %"bit_count$0_increment_loop_counter$0" ]
  %and.lcssa1 = phi i64 [ %and, %"bit_count$0_increment_loop_counter$0" ]
  br label %"bit_count$0_recursively_call_function"

"bit_count$0_recursively_call_function":          ; preds = %"bit_count$0_increment_depth_counter"
  call void @"bit_count$0"(i32 %inc.lcssa2, i64 %and.lcssa1)
  ret void

"bit_count$0_return_from_recursive_function$0":   ; preds = %"bit_count$0_latch$0"
  %inc.lcssa = phi i32 [ %inc, %"bit_count$0_latch$0" ]
  %i3 = getelementptr %0, %0* @"bit_count$0_return_value_struct", i32 0, i32 0
  store i32 %inc.lcssa, i32* %i3, align 4
  ret void
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
