; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-recursion_depth_limit-16/bitcnts/bitstrng.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitstrng.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8* }
%1 = type { i8*, i64, i1 }

@"bitstring$0_return_value_struct" = dso_local global %0 zeroinitializer
@"bitstring$0_recursion_state_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bitcnts/bitstrng.ll_invariant_variable$0" = dso_local global i64 0

; Function Attrs: norecurse nounwind uwtable
define void @bitstring(i8* nocapture %str, i64 %byze, i32 %biz, i32 %strwid) #0 {
entry:
  %shr = ashr i32 %biz, 2
  %rem22 = and i32 %biz, 3
  %not.tobool = icmp eq i32 %rem22, 0
  %cond = zext i1 %not.tobool to i32
  %sum = add i32 %shr, %biz
  %sub23 = sub i32 %strwid, %sum
  %sub1 = add i32 %sub23, %cond
  %cmp30 = icmp sgt i32 %sub1, 0
  br i1 %cmp30, label %for.body.preheader, label %while.cond.preheader

for.body.preheader:                               ; preds = %entry
  %i = add i32 %cond, %strwid
  %i1 = add i32 %i, -1
  %i2 = sub i32 %i1, %sum
  %i3 = zext i32 %i2 to i64
  %i4 = add nuw nsw i64 %i3, 1
  call void @llvm.memset.p0i8.i64(i8* align 1 %str, i8 32, i64 %i4, i1 false)
  %scevgep = getelementptr i8, i8* %str, i64 %i4
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body.preheader, %entry
  %str.addr.0.lcssa = phi i8* [ %str, %entry ], [ %scevgep, %for.body.preheader ]
  %cmp227 = icmp sgt i32 %biz, 0
  br i1 %cmp227, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %i5 = zext i32 %biz to i64
  br label %"bitstring$0_initialize_context"

"bitstring$0_initialize_context":                 ; preds = %while.body.preheader
  store i64 %byze, i64* @"./benchmark_intermediate_representations/baseline/bitcnts/bitstrng.ll_invariant_variable$0", align 8
  br label %"bitstring$0_call_recursive_function"

"bitstring$0_call_recursive_function":            ; preds = %"bitstring$0_extract_next_values", %"bitstring$0_initialize_context"
  %i6 = phi i8* [ %str.addr.0.lcssa, %"bitstring$0_initialize_context" ], [ %i11, %"bitstring$0_extract_next_values" ]
  %i7 = phi i64 [ %i5, %"bitstring$0_initialize_context" ], [ %i13, %"bitstring$0_extract_next_values" ]
  call void @"bitstring$0"(i8* %i6, i64 %i7, i8 0)
  %i8 = getelementptr %1, %1* @"bitstring$0_recursion_state_struct", i32 0, i32 2
  %i9 = load i1, i1* %i8, align 1
  br i1 %i9, label %"bitstring$0_extract_return_values$0", label %"bitstring$0_extract_next_values"

"bitstring$0_extract_next_values":                ; preds = %"bitstring$0_call_recursive_function"
  %i10 = getelementptr %1, %1* @"bitstring$0_recursion_state_struct", i32 0, i32 0
  %i11 = load i8*, i8** %i10, align 8
  %i12 = getelementptr %1, %1* @"bitstring$0_recursion_state_struct", i32 0, i32 1
  %i13 = load i64, i64* %i12, align 8
  br label %"bitstring$0_call_recursive_function"

"bitstring$0_extract_return_values$0":            ; preds = %"bitstring$0_call_recursive_function"
  %i14 = getelementptr %0, %0* @"bitstring$0_return_value_struct", i32 0, i32 0
  %i15 = load i8*, i8** %i14, align 8
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %"bitstring$0_extract_return_values$0"
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %str.addr.1.lcssa = phi i8* [ %str.addr.0.lcssa, %while.cond.preheader ], [ %i15, %while.end.loopexit ]
  store i8 0, i8* %str.addr.1.lcssa, align 1, !tbaa !1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

define void @"bitstring$0"(i8* %arg, i64 %arg1, i8 %arg2) {
"bitstring$0_header":
  %i = trunc i64 %arg1 to i32
  %dec29 = add nsw i32 %i, -1
  %sh_prom = zext i32 %dec29 to i64
  %i3 = load i64, i64* @"./benchmark_intermediate_representations/baseline/bitcnts/bitstrng.ll_invariant_variable$0", align 8
  %shr324 = lshr i64 %i3, %sh_prom
  %and = and i64 %shr324, 1
  %add4 = or i64 %and, 48
  %conv = trunc i64 %add4 to i8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %arg, i64 1
  store i8 %conv, i8* %arg, align 1, !tbaa !1
  %rem625 = and i32 %dec29, 3
  %tobool7 = icmp eq i32 %rem625, 0
  %tobool8 = icmp ne i32 %dec29, 0
  %or.cond = and i1 %tobool8, %tobool7
  br i1 %or.cond, label %if.then, label %"bitstring$0_latch$0"

if.then:                                          ; preds = %"bitstring$0_header"
  %incdec.ptr9 = getelementptr inbounds i8, i8* %arg, i64 2
  store i8 32, i8* %incdec.ptr5, align 1, !tbaa !1
  br label %"bitstring$0_latch$0"

"bitstring$0_latch$0":                            ; preds = %if.then, %"bitstring$0_header"
  %str.addr.1.be = phi i8* [ %incdec.ptr9, %if.then ], [ %incdec.ptr5, %"bitstring$0_header" ]
  %cmp2 = icmp sgt i32 %i, 1
  %indvars.iv.next = add nsw i64 %arg1, -1
  br i1 %cmp2, label %"bitstring$0_increment_depth_counter", label %"bitstring$0_return_from_recursive_function$0"

"bitstring$0_increment_depth_counter":            ; preds = %"bitstring$0_latch$0"
  %i4 = add i8 %arg2, 1
  %i5 = icmp ult i8 %i4, 16
  br i1 %i5, label %"bitstring$0_recursively_call_function", label %"bitstring$0_save_recursive_state_and_return"

"bitstring$0_recursively_call_function":          ; preds = %"bitstring$0_increment_depth_counter"
  call void @"bitstring$0"(i8* %str.addr.1.be, i64 %indvars.iv.next, i8 %i4)
  ret void

"bitstring$0_save_recursive_state_and_return":    ; preds = %"bitstring$0_increment_depth_counter"
  %i6 = getelementptr %1, %1* @"bitstring$0_recursion_state_struct", i32 0, i32 0
  store i8* %str.addr.1.be, i8** %i6, align 8
  %i7 = getelementptr %1, %1* @"bitstring$0_recursion_state_struct", i32 0, i32 1
  store i64 %indvars.iv.next, i64* %i7, align 8
  %i8 = getelementptr %1, %1* @"bitstring$0_recursion_state_struct", i32 0, i32 2
  store i1 false, i1* %i8, align 1
  ret void

"bitstring$0_return_from_recursive_function$0":   ; preds = %"bitstring$0_latch$0"
  %i9 = getelementptr %0, %0* @"bitstring$0_return_value_struct", i32 0, i32 0
  store i8* %str.addr.1.be, i8** %i9, align 8
  %i10 = getelementptr %1, %1* @"bitstring$0_recursion_state_struct", i32 0, i32 2
  store i1 true, i1* %i10, align 1
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
