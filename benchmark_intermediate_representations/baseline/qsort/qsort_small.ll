; ModuleID = 'qsort_small.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.myStringStruct = type { [128 x i8] }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"Usage: qsort_small <file>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\0ASorting %d elements.\0A\0A\00", align 1

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

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #3 {
entry:
  %array = alloca [60000 x %struct.myStringStruct], align 16
  %0 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %array, i64 0, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start(i64 7680000, i8* %0) #7
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %1) #9
  tail call void @exit(i32 -1) #10
  unreachable

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call1 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.else
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %while.cond ], [ 0, %if.else ]
  %qstring = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %array, i64 0, i64 %indvars.iv26, i32 0
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %call1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), [128 x i8]* %qstring) #7
  %cmp4 = icmp eq i32 %call3, 1
  %cmp5 = icmp slt i64 %indvars.iv26, 60000
  %4 = and i1 %cmp5, %cmp4
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br i1 %4, label %while.cond, label %if.end

if.end:                                           ; preds = %while.cond
  %indvars.iv26.lcssa = phi i64 [ %indvars.iv26, %while.cond ]
  %5 = trunc i64 %indvars.iv26.lcssa to i32
  %call6 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %5)
  call void @qsort(i8* %0, i64 %indvars.iv26.lcssa, i64 128, i32 (i8*, i8*)* nonnull @compare) #7
  %cmp724 = icmp sgt i32 %5, 0
  br i1 %cmp724, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  %arraydecay12 = getelementptr inbounds [60000 x %struct.myStringStruct], [60000 x %struct.myStringStruct]* %array, i64 0, i64 %indvars.iv, i32 0, i64 0
  %puts = call i32 @puts(i8* %arraydecay12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end
  call void @llvm.lifetime.end(i64 7680000, i8* %0) #7
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #5

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #6

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #5

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #6

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #7

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #7

attributes #0 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
