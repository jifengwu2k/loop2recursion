; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-recursion_depth_limit-8/fft/fftmisc.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/fft/fftmisc.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32 }
%1 = type { i32, i1 }
%2 = type { i32, i32, i32 }
%3 = type { i32, i32, i32, i32, i1 }
%4 = type { i32 }
%5 = type { i32, i32, i32, i1 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@"NumberOfBitsNeeded$0_return_value_struct" = dso_local global %0 zeroinitializer
@"NumberOfBitsNeeded$0_recursion_state_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/fft/fftmisc.ll_invariant_variable$0" = dso_local global i32 0
@"ReverseBits$1_return_value_struct" = dso_local global %2 zeroinitializer
@"ReverseBits$1_recursion_state_struct" = dso_local global %3 zeroinitializer
@"ReverseBits$0_return_value_struct" = dso_local global %4 zeroinitializer
@"ReverseBits$0_recursion_state_struct" = dso_local global %5 zeroinitializer
@"./benchmark_intermediate_representations/baseline/fft/fftmisc.ll_invariant_variable$1" = dso_local global i32 0

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @IsPowerOfTwo(i32 %x) #0 {
entry:
  %cmp = icmp ult i32 %x, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i32 %x, -1
  %and = and i32 %sub, %x
  %tobool = icmp eq i32 %and, 0
  %. = zext i1 %tobool to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @NumberOfBitsNeeded(i32 %PowerOfTwo) #1 {
entry:
  %cmp = icmp ult i32 %PowerOfTwo, 2
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br label %"NumberOfBitsNeeded$0_initialize_context"

"NumberOfBitsNeeded$0_initialize_context":        ; preds = %for.cond.preheader
  store i32 %PowerOfTwo, i32* @"./benchmark_intermediate_representations/baseline/fft/fftmisc.ll_invariant_variable$0", align 4
  br label %"NumberOfBitsNeeded$0_call_recursive_function"

"NumberOfBitsNeeded$0_call_recursive_function":   ; preds = %"NumberOfBitsNeeded$0_extract_next_values", %"NumberOfBitsNeeded$0_initialize_context"
  %i = phi i32 [ 0, %"NumberOfBitsNeeded$0_initialize_context" ], [ %i4, %"NumberOfBitsNeeded$0_extract_next_values" ]
  call void @"NumberOfBitsNeeded$0"(i32 %i, i8 0)
  %i1 = getelementptr %1, %1* @"NumberOfBitsNeeded$0_recursion_state_struct", i32 0, i32 1
  %i2 = load i1, i1* %i1, align 1
  br i1 %i2, label %"NumberOfBitsNeeded$0_extract_return_values$0", label %"NumberOfBitsNeeded$0_extract_next_values"

"NumberOfBitsNeeded$0_extract_next_values":       ; preds = %"NumberOfBitsNeeded$0_call_recursive_function"
  %i3 = getelementptr %1, %1* @"NumberOfBitsNeeded$0_recursion_state_struct", i32 0, i32 0
  %i4 = load i32, i32* %i3, align 4
  br label %"NumberOfBitsNeeded$0_call_recursive_function"

"NumberOfBitsNeeded$0_extract_return_values$0":   ; preds = %"NumberOfBitsNeeded$0_call_recursive_function"
  %i5 = getelementptr %0, %0* @"NumberOfBitsNeeded$0_return_value_struct", i32 0, i32 0
  %i6 = load i32, i32* %i5, align 4
  br label %if.then1

if.then:                                          ; preds = %entry
  %i7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %i7, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %PowerOfTwo) #4
  tail call void @exit(i32 1) #5
  unreachable

if.then1:                                         ; preds = %"NumberOfBitsNeeded$0_extract_return_values$0"
  ret i32 %i6
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @ReverseBits(i32 %index, i32 %NumBits) #0 {
entry:
  %cmp5 = icmp eq i32 %NumBits, 0
  br i1 %cmp5, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %i = add i32 %NumBits, -1
  %xtraiter = and i32 %NumBits, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.preheader.split, label %for.body.prol.preheader

for.body.prol.preheader:                          ; preds = %for.body.preheader
  br label %"ReverseBits$1_initialize_context"

"ReverseBits$1_initialize_context":               ; preds = %for.body.prol.preheader
  br label %"ReverseBits$1_call_recursive_function"

"ReverseBits$1_call_recursive_function":          ; preds = %"ReverseBits$1_extract_next_values", %"ReverseBits$1_initialize_context"
  %i1 = phi i32 [ %index, %"ReverseBits$1_initialize_context" ], [ %i8, %"ReverseBits$1_extract_next_values" ]
  %i2 = phi i32 [ 0, %"ReverseBits$1_initialize_context" ], [ %i10, %"ReverseBits$1_extract_next_values" ]
  %i3 = phi i32 [ %xtraiter, %"ReverseBits$1_initialize_context" ], [ %i12, %"ReverseBits$1_extract_next_values" ]
  %i4 = phi i32 [ 0, %"ReverseBits$1_initialize_context" ], [ %i14, %"ReverseBits$1_extract_next_values" ]
  call void @"ReverseBits$1"(i32 %i1, i32 %i2, i32 %i3, i32 %i4, i8 0)
  %i5 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 4
  %i6 = load i1, i1* %i5, align 1
  br i1 %i6, label %"ReverseBits$1_extract_return_values$0", label %"ReverseBits$1_extract_next_values"

"ReverseBits$1_extract_next_values":              ; preds = %"ReverseBits$1_call_recursive_function"
  %i7 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 0
  %i8 = load i32, i32* %i7, align 4
  %i9 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 1
  %i10 = load i32, i32* %i9, align 4
  %i11 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 2
  %i12 = load i32, i32* %i11, align 4
  %i13 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 3
  %i14 = load i32, i32* %i13, align 4
  br label %"ReverseBits$1_call_recursive_function"

"ReverseBits$1_extract_return_values$0":          ; preds = %"ReverseBits$1_call_recursive_function"
  %i15 = getelementptr %2, %2* @"ReverseBits$1_return_value_struct", i32 0, i32 0
  %i16 = load i32, i32* %i15, align 4
  %i17 = getelementptr %2, %2* @"ReverseBits$1_return_value_struct", i32 0, i32 1
  %i18 = load i32, i32* %i17, align 4
  %i19 = getelementptr %2, %2* @"ReverseBits$1_return_value_struct", i32 0, i32 2
  %i20 = load i32, i32* %i19, align 4
  br label %for.body.preheader.split.loopexit

for.body.preheader.split.loopexit:                ; preds = %"ReverseBits$1_extract_return_values$0"
  br label %for.body.preheader.split

for.body.preheader.split:                         ; preds = %for.body.preheader.split.loopexit, %for.body.preheader
  %or.lcssa.unr = phi i32 [ undef, %for.body.preheader ], [ %i16, %for.body.preheader.split.loopexit ]
  %rev.08.unr = phi i32 [ 0, %for.body.preheader ], [ %i16, %for.body.preheader.split.loopexit ]
  %i.07.unr = phi i32 [ 0, %for.body.preheader ], [ %i18, %for.body.preheader.split.loopexit ]
  %index.addr.06.unr = phi i32 [ %index, %for.body.preheader ], [ %i20, %for.body.preheader.split.loopexit ]
  %i21 = icmp ult i32 %i, 3
  br i1 %i21, label %for.end.loopexit, label %for.body.preheader.split.split

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  br label %"ReverseBits$0_initialize_context"

"ReverseBits$0_initialize_context":               ; preds = %for.body.preheader.split.split
  store i32 %NumBits, i32* @"./benchmark_intermediate_representations/baseline/fft/fftmisc.ll_invariant_variable$1", align 4
  br label %"ReverseBits$0_call_recursive_function"

"ReverseBits$0_call_recursive_function":          ; preds = %"ReverseBits$0_extract_next_values", %"ReverseBits$0_initialize_context"
  %i22 = phi i32 [ %index.addr.06.unr, %"ReverseBits$0_initialize_context" ], [ %i28, %"ReverseBits$0_extract_next_values" ]
  %i23 = phi i32 [ %rev.08.unr, %"ReverseBits$0_initialize_context" ], [ %i30, %"ReverseBits$0_extract_next_values" ]
  %i24 = phi i32 [ %i.07.unr, %"ReverseBits$0_initialize_context" ], [ %i32, %"ReverseBits$0_extract_next_values" ]
  call void @"ReverseBits$0"(i32 %i22, i32 %i23, i32 %i24, i8 0)
  %i25 = getelementptr %5, %5* @"ReverseBits$0_recursion_state_struct", i32 0, i32 3
  %i26 = load i1, i1* %i25, align 1
  br i1 %i26, label %"ReverseBits$0_extract_return_values$0", label %"ReverseBits$0_extract_next_values"

"ReverseBits$0_extract_next_values":              ; preds = %"ReverseBits$0_call_recursive_function"
  %i27 = getelementptr %5, %5* @"ReverseBits$0_recursion_state_struct", i32 0, i32 0
  %i28 = load i32, i32* %i27, align 4
  %i29 = getelementptr %5, %5* @"ReverseBits$0_recursion_state_struct", i32 0, i32 1
  %i30 = load i32, i32* %i29, align 4
  %i31 = getelementptr %5, %5* @"ReverseBits$0_recursion_state_struct", i32 0, i32 2
  %i32 = load i32, i32* %i31, align 4
  br label %"ReverseBits$0_call_recursive_function"

"ReverseBits$0_extract_return_values$0":          ; preds = %"ReverseBits$0_call_recursive_function"
  %i33 = getelementptr %4, %4* @"ReverseBits$0_return_value_struct", i32 0, i32 0
  %i34 = load i32, i32* %i33, align 4
  br label %for.end.loopexit.unr-lcssa

for.end.loopexit.unr-lcssa:                       ; preds = %"ReverseBits$0_extract_return_values$0"
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.end.loopexit.unr-lcssa, %for.body.preheader.split
  %or.lcssa = phi i32 [ %or.lcssa.unr, %for.body.preheader.split ], [ %i34, %for.end.loopexit.unr-lcssa ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %rev.0.lcssa = phi i32 [ 0, %entry ], [ %or.lcssa, %for.end.loopexit ]
  ret i32 %rev.0.lcssa
}

; Function Attrs: norecurse nounwind readnone uwtable
define double @Index_to_frequency(i32 %NumSamples, i32 %Index) #0 {
entry:
  %cmp = icmp ugt i32 %NumSamples, %Index
  br i1 %cmp, label %if.else, label %return

if.else:                                          ; preds = %entry
  %div = lshr i32 %NumSamples, 1
  %cmp1 = icmp ult i32 %div, %Index
  br i1 %cmp1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.else
  %conv = uitofp i32 %Index to double
  %conv3 = uitofp i32 %NumSamples to double
  %div4 = fdiv double %conv, %conv3
  br label %return

if.end5:                                          ; preds = %if.else
  %sub = sub i32 %NumSamples, %Index
  %conv6 = uitofp i32 %sub to double
  %sub7 = fsub double -0.000000e+00, %conv6
  %conv8 = uitofp i32 %NumSamples to double
  %div9 = fdiv double %sub7, %conv8
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %entry
  %retval.0 = phi double [ %div4, %if.then2 ], [ %div9, %if.end5 ], [ 0.000000e+00, %entry ]
  ret double %retval.0
}

define void @"NumberOfBitsNeeded$0"(i32 %arg, i8 %arg1) {
"NumberOfBitsNeeded$0_latch$0":
  %shl = shl i32 1, %arg
  %i = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fftmisc.ll_invariant_variable$0", align 4
  %and = and i32 %shl, %i
  %tobool = icmp eq i32 %and, 0
  %inc = add i32 %arg, 1
  br i1 %tobool, label %"NumberOfBitsNeeded$0_increment_depth_counter", label %"NumberOfBitsNeeded$0_return_from_recursive_function$0"

"NumberOfBitsNeeded$0_increment_depth_counter":   ; preds = %"NumberOfBitsNeeded$0_latch$0"
  %i2 = add i8 %arg1, 1
  %i3 = icmp ult i8 %i2, 8
  br i1 %i3, label %"NumberOfBitsNeeded$0_recursively_call_function", label %"NumberOfBitsNeeded$0_save_recursive_state_and_return"

"NumberOfBitsNeeded$0_recursively_call_function": ; preds = %"NumberOfBitsNeeded$0_increment_depth_counter"
  call void @"NumberOfBitsNeeded$0"(i32 %inc, i8 %i2)
  ret void

"NumberOfBitsNeeded$0_save_recursive_state_and_return": ; preds = %"NumberOfBitsNeeded$0_increment_depth_counter"
  %i4 = getelementptr %1, %1* @"NumberOfBitsNeeded$0_recursion_state_struct", i32 0, i32 0
  store i32 %inc, i32* %i4, align 4
  %i5 = getelementptr %1, %1* @"NumberOfBitsNeeded$0_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %i5, align 1
  ret void

"NumberOfBitsNeeded$0_return_from_recursive_function$0": ; preds = %"NumberOfBitsNeeded$0_latch$0"
  %i6 = getelementptr %0, %0* @"NumberOfBitsNeeded$0_return_value_struct", i32 0, i32 0
  store i32 %arg, i32* %i6, align 4
  %i7 = getelementptr %1, %1* @"NumberOfBitsNeeded$0_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %i7, align 1
  ret void
}

define void @"ReverseBits$1"(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3, i8 %arg4) {
"ReverseBits$1_latch$0":
  %shl.prol = shl i32 %arg1, 1
  %and.prol = and i32 %arg, 1
  %or.prol = or i32 %shl.prol, %and.prol
  %shr.prol = lshr i32 %arg, 1
  %inc.prol = add nuw i32 %arg3, 1
  %prol.iter.sub = add i32 %arg2, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %"ReverseBits$1_return_from_recursive_function$0", label %"ReverseBits$1_increment_depth_counter", !llvm.loop !5

"ReverseBits$1_increment_depth_counter":          ; preds = %"ReverseBits$1_latch$0"
  %i = add i8 %arg4, 1
  %i5 = icmp ult i8 %i, 8
  br i1 %i5, label %"ReverseBits$1_recursively_call_function", label %"ReverseBits$1_save_recursive_state_and_return"

"ReverseBits$1_recursively_call_function":        ; preds = %"ReverseBits$1_increment_depth_counter"
  call void @"ReverseBits$1"(i32 %shr.prol, i32 %or.prol, i32 %prol.iter.sub, i32 %inc.prol, i8 %i)
  ret void

"ReverseBits$1_save_recursive_state_and_return":  ; preds = %"ReverseBits$1_increment_depth_counter"
  %i6 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 0
  store i32 %shr.prol, i32* %i6, align 4
  %i7 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 1
  store i32 %or.prol, i32* %i7, align 4
  %i8 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 2
  store i32 %prol.iter.sub, i32* %i8, align 4
  %i9 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 3
  store i32 %inc.prol, i32* %i9, align 4
  %i10 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 4
  store i1 false, i1* %i10, align 1
  ret void

"ReverseBits$1_return_from_recursive_function$0": ; preds = %"ReverseBits$1_latch$0"
  %i11 = getelementptr %2, %2* @"ReverseBits$1_return_value_struct", i32 0, i32 0
  store i32 %or.prol, i32* %i11, align 4
  %i12 = getelementptr %2, %2* @"ReverseBits$1_return_value_struct", i32 0, i32 1
  store i32 %inc.prol, i32* %i12, align 4
  %i13 = getelementptr %2, %2* @"ReverseBits$1_return_value_struct", i32 0, i32 2
  store i32 %shr.prol, i32* %i13, align 4
  %i14 = getelementptr %3, %3* @"ReverseBits$1_recursion_state_struct", i32 0, i32 4
  store i1 true, i1* %i14, align 1
  ret void
}

define void @"ReverseBits$0"(i32 %arg, i32 %arg1, i32 %arg2, i8 %arg3) {
"ReverseBits$0_latch$0":
  %shl = shl i32 %arg1, 1
  %and = and i32 %arg, 1
  %or = or i32 %shl, %and
  %shl.1 = shl i32 %or, 2
  %and.1 = and i32 %arg, 2
  %or.1 = or i32 %shl.1, %and.1
  %shr.1 = lshr i32 %arg, 2
  %and.2 = and i32 %shr.1, 1
  %or.2 = or i32 %or.1, %and.2
  %shr.2 = lshr i32 %arg, 3
  %shl.3 = shl i32 %or.2, 1
  %and.3 = and i32 %shr.2, 1
  %or.3 = or i32 %shl.3, %and.3
  %shr.3 = lshr i32 %arg, 4
  %inc.3 = add i32 %arg2, 4
  %i = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fftmisc.ll_invariant_variable$1", align 4
  %exitcond.3 = icmp eq i32 %inc.3, %i
  br i1 %exitcond.3, label %"ReverseBits$0_return_from_recursive_function$0", label %"ReverseBits$0_increment_depth_counter"

"ReverseBits$0_increment_depth_counter":          ; preds = %"ReverseBits$0_latch$0"
  %i4 = add i8 %arg3, 1
  %i5 = icmp ult i8 %i4, 8
  br i1 %i5, label %"ReverseBits$0_recursively_call_function", label %"ReverseBits$0_save_recursive_state_and_return"

"ReverseBits$0_recursively_call_function":        ; preds = %"ReverseBits$0_increment_depth_counter"
  call void @"ReverseBits$0"(i32 %shr.3, i32 %or.3, i32 %inc.3, i8 %i4)
  ret void

"ReverseBits$0_save_recursive_state_and_return":  ; preds = %"ReverseBits$0_increment_depth_counter"
  %i6 = getelementptr %5, %5* @"ReverseBits$0_recursion_state_struct", i32 0, i32 0
  store i32 %shr.3, i32* %i6, align 4
  %i7 = getelementptr %5, %5* @"ReverseBits$0_recursion_state_struct", i32 0, i32 1
  store i32 %or.3, i32* %i7, align 4
  %i8 = getelementptr %5, %5* @"ReverseBits$0_recursion_state_struct", i32 0, i32 2
  store i32 %inc.3, i32* %i8, align 4
  %i9 = getelementptr %5, %5* @"ReverseBits$0_recursion_state_struct", i32 0, i32 3
  store i1 false, i1* %i9, align 1
  ret void

"ReverseBits$0_return_from_recursive_function$0": ; preds = %"ReverseBits$0_latch$0"
  %i10 = getelementptr %4, %4* @"ReverseBits$0_return_value_struct", i32 0, i32 0
  store i32 %or.3, i32* %i10, align 4
  %i11 = getelementptr %5, %5* @"ReverseBits$0_recursion_state_struct", i32 0, i32 3
  store i1 true, i1* %i11, align 1
  ret void
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
