; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-recursion_depth_limit-16/rawcaudio/rawcaudio.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/rawcaudio/rawcaudio.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8 }
%1 = type { i32, i1 }
%struct.adpcm_state = type { i16, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@sbuf = common global [1000 x i16] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"input file\00", align 1
@abuf = common global [500 x i8] zeroinitializer, align 16
@state = common global %struct.adpcm_state zeroinitializer, align 2
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Final valprev=%d, index=%d\0A\00", align 1
@"main$0_return_value_struct" = dso_local global %0 zeroinitializer
@"main$0_recursion_state_struct" = dso_local global %1 zeroinitializer

; Function Attrs: noreturn nounwind uwtable
define i32 @main() #0 {
entry:
  %call11 = tail call i32 (i32, i16*, i32, ...) bitcast (i32 (...)* @read to i32 (i32, i16*, i32, ...)*)(i32 0, i16* nonnull getelementptr inbounds ([1000 x i16], [1000 x i16]* @sbuf, i64 0, i64 0), i32 2000) #4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end.preheader

if.end.preheader:                                 ; preds = %entry
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %if.end.preheader
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_extract_next_values", %"main$0_initialize_context"
  %i = phi i32 [ %call11, %"main$0_initialize_context" ], [ %i4, %"main$0_extract_next_values" ]
  call void @"main$0"(i32 %i, i8 0)
  %i1 = getelementptr %1, %1* @"main$0_recursion_state_struct", i32 0, i32 1
  %i2 = load i1, i1* %i1, align 1
  br i1 %i2, label %"main$0_branch_to_exit", label %"main$0_extract_next_values"

"main$0_extract_next_values":                     ; preds = %"main$0_call_recursive_function"
  %i3 = getelementptr %1, %1* @"main$0_recursion_state_struct", i32 0, i32 0
  %i4 = load i32, i32* %i3, align 4
  br label %"main$0_call_recursive_function"

"main$0_branch_to_exit":                          ; preds = %"main$0_call_recursive_function"
  %i5 = getelementptr %0, %0* @"main$0_return_value_struct", i32 0, i32 0
  %i6 = load i8, i8* %i5, align 1
  switch i8 %i6, label %if.then.loopexit [
    i8 1, label %if.then.loopexit
    i8 0, label %while.end
  ]

if.then.loopexit:                                 ; preds = %"main$0_branch_to_exit", %"main$0_branch_to_exit"
  br label %if.then

if.then:                                          ; preds = %if.then.loopexit, %entry
  tail call void @perror(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #5
  tail call void @exit(i32 1) #6
  unreachable

while.end:                                        ; preds = %"main$0_branch_to_exit"
  %i7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %i8 = load i16, i16* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i64 0, i32 0), align 2, !tbaa !5
  %conv = sext i16 %i8 to i32
  %i9 = load i8, i8* getelementptr inbounds (%struct.adpcm_state, %struct.adpcm_state* @state, i64 0, i32 1), align 2, !tbaa !8
  %conv6 = sext i8 %i9 to i32
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %i7, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %conv, i32 %conv6) #5
  tail call void @exit(i32 0) #6
  unreachable
}

declare i32 @read(...) #1

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare void @adpcm_coder(i16*, i8*, i32, %struct.adpcm_state*) #1

declare i32 @write(...) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

define void @"main$0"(i32 %arg, i8 %arg1) {
"main$0_exiting$1":
  %cmp1 = icmp eq i32 %arg, 0
  br i1 %cmp1, label %"main$0_return_from_recursive_function$1", label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %"main$0_exiting$1"
  %div = sdiv i32 %arg, 2
  tail call void @adpcm_coder(i16* nonnull getelementptr inbounds ([1000 x i16], [1000 x i16]* @sbuf, i64 0, i64 0), i8* nonnull getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i64 0, i64 0), i32 %div, %struct.adpcm_state* nonnull @state) #4
  %div4 = sdiv i32 %arg, 4
  %call5 = tail call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 1, i8* nonnull getelementptr inbounds ([500 x i8], [500 x i8]* @abuf, i64 0, i64 0), i32 %div4) #4
  %call = tail call i32 (i32, i16*, i32, ...) bitcast (i32 (...)* @read to i32 (i32, i16*, i32, ...)*)(i32 0, i16* nonnull getelementptr inbounds ([1000 x i16], [1000 x i16]* @sbuf, i64 0, i64 0), i32 2000) #4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  %i = add i8 %arg1, 1
  %i2 = icmp ult i8 %i, 16
  br i1 %i2, label %"main$0_recursively_call_function", label %"main$0_save_recursive_state_and_return"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(i32 %call, i8 %i)
  ret void

"main$0_save_recursive_state_and_return":         ; preds = %"main$0_increment_depth_counter"
  %i3 = getelementptr %1, %1* @"main$0_recursion_state_struct", i32 0, i32 0
  store i32 %call, i32* %i3, align 4
  %i4 = getelementptr %1, %1* @"main$0_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %i4, align 1
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  %i5 = getelementptr %0, %0* @"main$0_return_value_struct", i32 0, i32 0
  store i8 1, i8* %i5, align 1
  %i6 = getelementptr %1, %1* @"main$0_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %i6, align 1
  ret void

"main$0_return_from_recursive_function$1":        ; preds = %"main$0_exiting$1"
  %i7 = getelementptr %0, %0* @"main$0_return_value_struct", i32 0, i32 0
  store i8 0, i8* %i7, align 1
  %i8 = getelementptr %1, %1* @"main$0_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %i8, align 1
  ret void
}

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { cold }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 0}
!6 = !{!"adpcm_state", !7, i64 0, !3, i64 2}
!7 = !{!"short", !3, i64 0}
!8 = !{!6, !3, i64 2}
