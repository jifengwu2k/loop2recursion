; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-64/bitcnts/bstr_i.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bstr_i.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32 }

@"bstr_i$0_return_value_struct" = dso_local global %0 zeroinitializer

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @bstr_i(i8* readonly %cptr) #0 {
entry:
  %tobool14 = icmp eq i8* %cptr, null
  br i1 %tobool14, label %while.end, label %land.lhs.true.preheader

land.lhs.true.preheader:                          ; preds = %entry
  %i = load i8, i8* %cptr, align 1, !tbaa !1
  %tobool120 = icmp eq i8 %i, 0
  br i1 %tobool120, label %while.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %land.lhs.true.preheader
  br label %"bstr_i$0_initialize_context"

"bstr_i$0_initialize_context":                    ; preds = %land.rhs.preheader
  br label %"bstr_i$0_call_recursive_function"

"bstr_i$0_call_recursive_function":               ; preds = %"bstr_i$0_initialize_context"
  call void @"bstr_i$0"(i32 0, i8 %i, i8* %cptr)
  br label %"bstr_i$0_extract_return_values$0"

"bstr_i$0_extract_return_values$0":               ; preds = %"bstr_i$0_call_recursive_function"
  %i1 = getelementptr %0, %0* @"bstr_i$0_return_value_struct", i32 0, i32 0
  %i2 = load i32, i32* %i1, align 4
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %"bstr_i$0_extract_return_values$0"
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %land.lhs.true.preheader, %entry
  %j.0.lcssa = phi i32 [ 0, %entry ], [ 0, %land.lhs.true.preheader ], [ %i2, %while.end.loopexit ]
  ret i32 %j.0.lcssa
}

define void @"bstr_i$0"(i32 %arg, i8 %arg1, i8* %arg2) {
"bstr_i$0_preheader_in_recursion":
  br label %"bstr_i$0_exiting$1"

"bstr_i$0_exiting$1":                             ; preds = %"bstr_i$0_increment_loop_counter$0", %"bstr_i$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"bstr_i$0_preheader_in_recursion" ], [ %i6, %"bstr_i$0_increment_loop_counter$0" ]
  %conv23.in = phi i8 [ %i5, %"bstr_i$0_increment_loop_counter$0" ], [ %arg1, %"bstr_i$0_preheader_in_recursion" ]
  %cptr.addr.01522 = phi i8* [ %incdec.ptr, %"bstr_i$0_increment_loop_counter$0" ], [ %arg2, %"bstr_i$0_preheader_in_recursion" ]
  %j.01621 = phi i32 [ %or, %"bstr_i$0_increment_loop_counter$0" ], [ %arg, %"bstr_i$0_preheader_in_recursion" ]
  %conv23 = sext i8 %conv23.in to i32
  %i = zext i32 %conv23 to i64
  %memchr.bounds = icmp ult i8 %conv23.in, 64
  %i3 = shl i64 1, %i
  %i4 = and i64 %i3, 844424930131969
  %memchr.bits = icmp ne i64 %i4, 0
  %tobool3.demorgan = and i1 %memchr.bounds, %memchr.bits
  br i1 %tobool3.demorgan, label %"bstr_i$0_latch$0", label %"bstr_i$0_return_from_recursive_function$0"

"bstr_i$0_latch$0":                               ; preds = %"bstr_i$0_exiting$1"
  %incdec.ptr = getelementptr inbounds i8, i8* %cptr.addr.01522, i64 1
  %shl = shl i32 %j.01621, 1
  %and = and i32 %conv23, 1
  %or = or i32 %and, %shl
  %i5 = load i8, i8* %incdec.ptr, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %i5, 0
  br i1 %tobool1, label %"bstr_i$0_return_from_recursive_function$0", label %"bstr_i$0_increment_loop_counter$0"

"bstr_i$0_increment_loop_counter$0":              ; preds = %"bstr_i$0_latch$0"
  %i6 = add i8 %loop_counter, 1
  %i7 = icmp ult i8 %i6, 64
  br i1 %i7, label %"bstr_i$0_exiting$1", label %"bstr_i$0_increment_depth_counter"

"bstr_i$0_increment_depth_counter":               ; preds = %"bstr_i$0_increment_loop_counter$0"
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %"bstr_i$0_increment_loop_counter$0" ]
  %or.lcssa = phi i32 [ %or, %"bstr_i$0_increment_loop_counter$0" ]
  %.lcssa = phi i8 [ %i5, %"bstr_i$0_increment_loop_counter$0" ]
  br label %"bstr_i$0_recursively_call_function"

"bstr_i$0_recursively_call_function":             ; preds = %"bstr_i$0_increment_depth_counter"
  call void @"bstr_i$0"(i32 %or.lcssa, i8 %.lcssa, i8* %incdec.ptr.lcssa)
  ret void

"bstr_i$0_return_from_recursive_function$0":      ; preds = %"bstr_i$0_latch$0", %"bstr_i$0_exiting$1"
  %i8 = phi i32 [ %or, %"bstr_i$0_latch$0" ], [ %j.01621, %"bstr_i$0_exiting$1" ]
  %i9 = getelementptr %0, %0* @"bstr_i$0_return_value_struct", i32 0, i32 0
  store i32 %i8, i32* %i9, align 4
  ret void
}

attributes #0 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
