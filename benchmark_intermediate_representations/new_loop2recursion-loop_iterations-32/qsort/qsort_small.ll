; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-32/qsort/qsort_small.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.myStringStruct = type { [128 x i8] }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_small <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\0ASorting %d elements.\0A\0A\00", align 1
@"main$1_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$0" = dso_local global %struct._IO_FILE* null
@"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$1" = dso_local global [60000 x %struct.myStringStruct]* null
@"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$2" = dso_local global i32 0

; Function Attrs: nounwind readonly uwtable
define i32 @compare(i8* nocapture readonly %elem1, i8* nocapture readonly %elem2) #0 {
entry:
  %call = tail call i32 @strcmp(i8* %elem1, i8* %elem2) #8
  %cmp = icmp slt i32 %call, 0
  %not.cmp3 = icmp ne i32 %call, 0
  %cond = sext i1 %not.cmp3 to i32
  %cond4 = select i1 %cmp, i32 1, i32 %cond
  ret i32 %cond4
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #2 {
entry:
  %array = alloca [60000 x %struct.myStringStruct], align 16
  %i = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %array, i64 0, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 7680000, i8* %i) #6
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %i1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %i2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %i1) #9
  tail call void @exit(i32 -1) #10
  unreachable

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %i3 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call1 = tail call %struct._IO_FILE* @fopen(i8* %i3, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %"main$1_initialize_context"

"main$1_initialize_context":                      ; preds = %if.else
  store %struct._IO_FILE* %call1, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$0", align 8
  store [60000 x %struct.myStringStruct]* %array, [60000 x %struct.myStringStruct]** @"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$1", align 8
  br label %"main$1_call_recursive_function"

"main$1_call_recursive_function":                 ; preds = %"main$1_initialize_context"
  call void @"main$1"(i64 0)
  br label %"main$1_extract_return_values$0"

"main$1_extract_return_values$0":                 ; preds = %"main$1_call_recursive_function"
  %i4 = getelementptr %0, %0* @"main$1_return_value_struct", i32 0, i32 0
  %i5 = load i64, i64* %i4, align 8
  br label %if.end

if.end:                                           ; preds = %"main$1_extract_return_values$0"
  %i6 = trunc i64 %i5 to i32
  %call6 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %i6)
  call void @qsort(i8* %i, i64 %i5, i64 128, i32 (i8*, i8*)* nonnull @compare) #6
  %cmp724 = icmp sgt i32 %i6, 0
  br i1 %cmp724, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %for.body.preheader
  store i32 %i6, i32* @"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$2", align 4
  store [60000 x %struct.myStringStruct]* %array, [60000 x %struct.myStringStruct]** @"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$1", align 8
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_initialize_context"
  call void @"main$0"(i64 0)
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %"main$0_call_recursive_function"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  call void @llvm.lifetime.end.p0i8(i64 7680000, i8* %i) #6
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #4

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #4

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

define void @"main$1"(i64 %arg) {
"main$1_preheader_in_recursion":
  br label %"main$1_latch$0"

"main$1_latch$0":                                 ; preds = %"main$1_increment_loop_counter$0", %"main$1_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"main$1_preheader_in_recursion" ], [ %i3, %"main$1_increment_loop_counter$0" ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %"main$1_increment_loop_counter$0" ], [ %arg, %"main$1_preheader_in_recursion" ]
  %i = load [60000 x %struct.myStringStruct]*, [60000 x %struct.myStringStruct]** @"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$1", align 8
  %qstring = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %i, i64 0, i64 %indvars.iv26, i32 0
  %i1 = load %struct._IO_FILE*, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$0", align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %i1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), [128 x i8]* %qstring) #6
  %cmp4 = icmp eq i32 %call3, 1
  %cmp5 = icmp slt i64 %indvars.iv26, 60000
  %i2 = and i1 %cmp5, %cmp4
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br i1 %i2, label %"main$1_increment_loop_counter$0", label %"main$1_return_from_recursive_function$0"

"main$1_increment_loop_counter$0":                ; preds = %"main$1_latch$0"
  %i3 = add i8 %loop_counter, 1
  %i4 = icmp ult i8 %i3, 32
  br i1 %i4, label %"main$1_latch$0", label %"main$1_increment_depth_counter"

"main$1_increment_depth_counter":                 ; preds = %"main$1_increment_loop_counter$0"
  %indvars.iv.next27.lcssa1 = phi i64 [ %indvars.iv.next27, %"main$1_increment_loop_counter$0" ]
  br label %"main$1_recursively_call_function"

"main$1_recursively_call_function":               ; preds = %"main$1_increment_depth_counter"
  call void @"main$1"(i64 %indvars.iv.next27.lcssa1)
  ret void

"main$1_return_from_recursive_function$0":        ; preds = %"main$1_latch$0"
  %indvars.iv26.lcssa = phi i64 [ %indvars.iv26, %"main$1_latch$0" ]
  %i5 = getelementptr %0, %0* @"main$1_return_value_struct", i32 0, i32 0
  store i64 %indvars.iv26.lcssa, i64* %i5, align 8
  ret void
}

define void @"main$0"(i64 %arg) {
"main$0_preheader_in_recursion":
  br label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %"main$0_increment_loop_counter$0", %"main$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"main$0_preheader_in_recursion" ], [ %i2, %"main$0_increment_loop_counter$0" ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %"main$0_increment_loop_counter$0" ], [ %arg, %"main$0_preheader_in_recursion" ]
  %i = load [60000 x %struct.myStringStruct]*, [60000 x %struct.myStringStruct]** @"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$1", align 8
  %arraydecay12 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %i, i64 0, i64 %indvars.iv, i32 0, i64 0
  %puts = call i32 @puts(i8* %arraydecay12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %i1 = load i32, i32* @"./benchmark_intermediate_representations/baseline/qsort/qsort_small.ll_invariant_variable$2", align 4
  %exitcond = icmp eq i32 %lftr.wideiv, %i1
  br i1 %exitcond, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_loop_counter$0"

"main$0_increment_loop_counter$0":                ; preds = %"main$0_latch$0"
  %i2 = add i8 %loop_counter, 1
  %i3 = icmp ult i8 %i2, 32
  br i1 %i3, label %"main$0_latch$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_increment_loop_counter$0"
  %indvars.iv.next.lcssa1 = phi i64 [ %indvars.iv.next, %"main$0_increment_loop_counter$0" ]
  br label %"main$0_recursively_call_function"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(i64 %indvars.iv.next.lcssa1)
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  ret void
}

attributes #0 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
