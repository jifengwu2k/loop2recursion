; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-8/sha/sha_driver.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/sha/sha_driver.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1
@"./benchmark_intermediate_representations/baseline/sha/sha_driver.ll_invariant_variable$0" = dso_local global %struct.SHA_INFO* null

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  %sha_info = alloca %struct.SHA_INFO, align 8
  %i = bitcast %struct.SHA_INFO* %sha_info to i8*
  call void @llvm.lifetime.start.p0i8(i64 184, i8* %i) #4
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %dec13 = add nsw i32 %argc, -1
  %tobool14 = icmp eq i32 %dec13, 0
  br i1 %tobool14, label %if.end6, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %while.body.preheader
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha_driver.ll_invariant_variable$0", align 8
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_initialize_context"
  call void @"main$0"(i8** %argv, i32 %dec13)
  br label %if.end6.loopexit

if.then:                                          ; preds = %entry
  %i1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  call void @sha_stream(%struct.SHA_INFO* nonnull %sha_info, %struct._IO_FILE* %i1) #4
  call void @sha_print(%struct.SHA_INFO* nonnull %sha_info) #4
  br label %if.end6

if.end6.loopexit:                                 ; preds = %"main$0_call_recursive_function"
  br label %if.end6

if.end6:                                          ; preds = %if.end6.loopexit, %if.then, %while.cond.preheader
  call void @llvm.lifetime.end.p0i8(i64 184, i8* %i) #4
  ret i32 0
}

declare void @sha_stream(%struct.SHA_INFO*, %struct._IO_FILE*) #1

declare void @sha_print(%struct.SHA_INFO*) #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

define void @"main$0"(i8** %arg, i32 %arg1) {
"main$0_preheader_in_recursion":
  br label %"main$0_header"

"main$0_header":                                  ; preds = %"main$0_increment_loop_counter$0", %"main$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"main$0_preheader_in_recursion" ], [ %i5, %"main$0_increment_loop_counter$0" ]
  %dec16 = phi i32 [ %dec, %"main$0_increment_loop_counter$0" ], [ %arg1, %"main$0_preheader_in_recursion" ]
  %argv.addr.015 = phi i8** [ %incdec.ptr, %"main$0_increment_loop_counter$0" ], [ %arg, %"main$0_preheader_in_recursion" ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv.addr.015, i64 1
  %i = load i8*, i8** %incdec.ptr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @fopen(i8* %i, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then2, label %if.else4

if.else4:                                         ; preds = %"main$0_header"
  %i2 = load %struct.SHA_INFO*, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha_driver.ll_invariant_variable$0", align 8
  call void @sha_stream(%struct.SHA_INFO* nonnull %i2, %struct._IO_FILE* nonnull %call) #4
  %i3 = load %struct.SHA_INFO*, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha_driver.ll_invariant_variable$0", align 8
  call void @sha_print(%struct.SHA_INFO* nonnull %i3) #4
  %call5 = call i32 @fclose(%struct._IO_FILE* nonnull %call)
  br label %"main$0_latch$0"

if.then2:                                         ; preds = %"main$0_header"
  %i4 = load i8*, i8** %incdec.ptr, align 8, !tbaa !1
  %call3 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %i4)
  br label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %if.then2, %if.else4
  %dec = add nsw i32 %dec16, -1
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_loop_counter$0", !llvm.loop !5

"main$0_increment_loop_counter$0":                ; preds = %"main$0_latch$0"
  %i5 = add i8 %loop_counter, 1
  %i6 = icmp ult i8 %i5, 8
  br i1 %i6, label %"main$0_header", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_increment_loop_counter$0"
  %dec.lcssa2 = phi i32 [ %dec, %"main$0_increment_loop_counter$0" ]
  %incdec.ptr.lcssa1 = phi i8** [ %incdec.ptr, %"main$0_increment_loop_counter$0" ]
  br label %"main$0_recursively_call_function"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(i8** %incdec.ptr.lcssa1, i32 %dec.lcssa2)
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.loop2recursion.copy.enable"}
