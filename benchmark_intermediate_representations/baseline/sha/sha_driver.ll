; ModuleID = 'sha_driver.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  %sha_info = alloca %struct.SHA_INFO, align 8
  %0 = bitcast %struct.SHA_INFO* %sha_info to i8*
  call void @llvm.lifetime.start(i64 184, i8* %0) #4
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %dec13 = add nsw i32 %argc, -1
  %tobool14 = icmp eq i32 %dec13, 0
  br i1 %tobool14, label %if.end6, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  br label %while.body

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !1
  call void @sha_stream(%struct.SHA_INFO* nonnull %sha_info, %struct._IO_FILE* %1) #4
  call void @sha_print(%struct.SHA_INFO* nonnull %sha_info) #4
  br label %if.end6

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  %dec16 = phi i32 [ %dec, %while.cond.backedge ], [ %dec13, %while.body.preheader ]
  %argv.addr.015 = phi i8** [ %incdec.ptr, %while.cond.backedge ], [ %argv, %while.body.preheader ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv.addr.015, i64 1
  %2 = load i8*, i8** %incdec.ptr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @fopen(i8* %2, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %while.body
  %3 = load i8*, i8** %incdec.ptr, align 8, !tbaa !1
  %call3 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  br label %while.cond.backedge

if.else4:                                         ; preds = %while.body
  call void @sha_stream(%struct.SHA_INFO* nonnull %sha_info, %struct._IO_FILE* nonnull %call) #4
  call void @sha_print(%struct.SHA_INFO* nonnull %sha_info) #4
  %call5 = call i32 @fclose(%struct._IO_FILE* nonnull %call)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else4, %if.then2
  %dec = add nsw i32 %dec16, -1
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %if.end6.loopexit, label %while.body, !llvm.loop !5

if.end6.loopexit:                                 ; preds = %while.cond.backedge
  br label %if.end6

if.end6:                                          ; preds = %if.end6.loopexit, %while.cond.preheader, %if.then
  call void @llvm.lifetime.end(i64 184, i8* %0) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @sha_stream(%struct.SHA_INFO*, %struct._IO_FILE*) #2

declare void @sha_print(%struct.SHA_INFO*) #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.loop2recursion.copy.enable"}