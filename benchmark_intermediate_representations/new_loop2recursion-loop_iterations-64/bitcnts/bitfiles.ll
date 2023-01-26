; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-64/bitcnts/bitfiles.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitfiles.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfile = type { %struct._IO_FILE*, i8, i8, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind uwtable
define noalias %struct.bfile* @bfopen(i8* nocapture readonly %name, i8* nocapture readonly %mode) #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #2
  %i = bitcast i8* %call to %struct.bfile*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._IO_FILE* @fopen(i8* %name, i8* %mode)
  %file = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %file, align 8, !tbaa !1
  %cmp3 = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @free(i8* nonnull %call) #2
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i1 = getelementptr inbounds i8, i8* %call, i64 9
  store i8 0, i8* %i1, align 1, !tbaa !6
  %i2 = getelementptr inbounds i8, i8* %call, i64 11
  store i8 0, i8* %i2, align 1, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry
  %retval.0 = phi %struct.bfile* [ null, %if.then4 ], [ %i, %if.end5 ], [ null, %entry ]
  ret %struct.bfile* %retval.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @bfread(%struct.bfile* nocapture %bf) #0 {
entry:
  %rcnt = getelementptr inbounds %struct.bfile, %struct.bfile* %bf, i64 0, i32 2
  %i = load i8, i8* %rcnt, align 1, !tbaa !6
  %cmp = icmp eq i8 %i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %rbuf5.phi.trans.insert = getelementptr inbounds %struct.bfile, %struct.bfile* %bf, i64 0, i32 1
  %.pre = load i8, i8* %rbuf5.phi.trans.insert, align 8, !tbaa !8
  %phitmp = add i8 %i, -1
  br label %if.end

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.bfile, %struct.bfile* %bf, i64 0, i32 0
  %i1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = tail call i32 @fgetc(%struct._IO_FILE* %i1)
  %conv2 = trunc i32 %call to i8
  %rbuf = getelementptr inbounds %struct.bfile, %struct.bfile* %bf, i64 0, i32 1
  store i8 %conv2, i8* %rbuf, align 8, !tbaa !8
  store i8 8, i8* %rcnt, align 1, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2 = phi i8 [ %conv2, %if.then ], [ %.pre, %entry.if.end_crit_edge ]
  %i3 = phi i8 [ 7, %if.then ], [ %phitmp, %entry.if.end_crit_edge ]
  store i8 %i3, i8* %rcnt, align 1, !tbaa !6
  %conv6 = sext i8 %i2 to i32
  %conv8 = sext i8 %i3 to i32
  %shl = shl i32 1, %conv8
  %and = and i32 %conv6, %shl
  %cmp9 = icmp ne i32 %and, 0
  %conv10 = zext i1 %cmp9 to i32
  ret i32 %conv10
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define void @bfwrite(i32 %bit, %struct.bfile* nocapture %bf) #0 {
entry:
  %wcnt = getelementptr inbounds %struct.bfile, %struct.bfile* %bf, i64 0, i32 4
  %i = load i8, i8* %wcnt, align 1, !tbaa !7
  %cmp = icmp eq i8 %i, 8
  %wbuf = getelementptr inbounds %struct.bfile, %struct.bfile* %bf, i64 0, i32 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %phitmp = add i8 %i, 1
  br label %if.end

if.then:                                          ; preds = %entry
  %i1 = load i8, i8* %wbuf, align 2, !tbaa !9
  %conv2 = sext i8 %i1 to i32
  %file = getelementptr inbounds %struct.bfile, %struct.bfile* %bf, i64 0, i32 0
  %i2 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = tail call i32 @fputc(i32 %conv2, %struct._IO_FILE* %i2)
  store i8 0, i8* %wcnt, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i3 = phi i8 [ %phitmp, %entry.if.end_crit_edge ], [ 1, %if.then ]
  store i8 %i3, i8* %wcnt, align 1, !tbaa !7
  %i4 = load i8, i8* %wbuf, align 2, !tbaa !9
  %shl = shl i8 %i4, 1
  %and = and i32 %bit, 1
  %conv917 = zext i8 %shl to i32
  %or = or i32 %conv917, %and
  %conv10 = trunc i32 %or to i8
  store i8 %conv10, i8* %wbuf, align 2, !tbaa !9
  ret void
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define void @bfclose(%struct.bfile* nocapture %bf) #0 {
entry:
  %file = getelementptr inbounds %struct.bfile, %struct.bfile* %bf, i64 0, i32 0
  %i = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !1
  %call = tail call i32 @fclose(%struct._IO_FILE* %i)
  %i1 = bitcast %struct.bfile* %bf to i8*
  tail call void @free(i8* %i1) #2
  ret void
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !3, i64 0}
!2 = !{!"", !3, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!2, !4, i64 9}
!7 = !{!2, !4, i64 11}
!8 = !{!2, !4, i64 8}
!9 = !{!2, !4, i64 10}
