; ModuleID = 'patricia_test.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.in_addr = type { i32 }
%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Failed on pat_insert\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"Found.\00"

; Function Attrs: noreturn nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  %line = alloca [128 x i8], align 16
  %addr = alloca %struct.in_addr, align 4
  %time = alloca float, align 4
  %0 = getelementptr inbounds [128 x i8], [128 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %0) #5
  %1 = bitcast %struct.in_addr* %addr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast float* %time to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #5
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %argv, align 8, !tbaa !1
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %3)
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %call2 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %5 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %call6 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %5)
  tail call void @exit(i32 0) #6
  unreachable

if.end7:                                          ; preds = %if.end
  %call8 = tail call noalias i8* @malloc(i64 40) #5
  %6 = bitcast i8* %call8 to %struct.ptree*
  %tobool = icmp eq i8* %call8, null
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  tail call void @perror(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #7
  tail call void @exit(i32 0) #6
  unreachable

if.end10:                                         ; preds = %if.end7
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %call8, i8 0, i64 40, i32 8, i1 false)
  %call11 = tail call noalias i8* @malloc(i64 16) #5
  %p_m = getelementptr inbounds i8, i8* %call8, i64 8
  %7 = bitcast i8* %p_m to i8**
  store i8* %call11, i8** %7, align 8, !tbaa !5
  %tobool13 = icmp eq i8* %call11, null
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  tail call void @perror(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #7
  tail call void @exit(i32 0) #6
  unreachable

if.end15:                                         ; preds = %if.end10
  %8 = bitcast i8* %call11 to i64*
  store i64 0, i64* %8, align 8
  %call18 = tail call noalias i8* @malloc(i64 16) #5
  %pm_data = getelementptr inbounds i8, i8* %call11, i64 8
  %9 = bitcast i8* %pm_data to i8**
  store i8* %call18, i8** %9, align 8, !tbaa !8
  %tobool20 = icmp eq i8* %call18, null
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end15
  tail call void @perror(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #7
  tail call void @exit(i32 0) #6
  unreachable

if.end22:                                         ; preds = %if.end15
  store i8 0, i8* %call18, align 1
  %10 = getelementptr inbounds i8, i8* %call8, i64 16
  store i8 1, i8* %10, align 8, !tbaa !10
  %p_right = getelementptr inbounds i8, i8* %call8, i64 32
  %11 = bitcast i8* %p_right to i8**
  store i8* %call8, i8** %11, align 8, !tbaa !11
  %p_left = getelementptr inbounds i8, i8* %call8, i64 24
  %12 = bitcast i8* %p_left to i8**
  store i8* %call8, i8** %12, align 8, !tbaa !12
  %call2498 = call i8* @fgets(i8* %0, i32 128, %struct._IO_FILE* nonnull %call2)
  %tobool2599 = icmp eq i8* %call2498, null
  br i1 %tobool2599, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end22
  %13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %addr, i64 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), float* nonnull %time, i32* %13) #5
  %call28 = call noalias i8* @malloc(i64 40) #5
  %14 = bitcast i8* %call28 to %struct.ptree*
  %tobool29 = icmp eq i8* %call28, null
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %while.body
  call void @perror(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #7
  call void @exit(i32 0) #6
  unreachable

if.end31:                                         ; preds = %while.body
  call void @llvm.memset.p0i8.i64(i8* nonnull %call28, i8 0, i64 40, i32 8, i1 false)
  %call32 = call noalias i8* @malloc(i64 16) #5
  %p_m33 = getelementptr inbounds i8, i8* %call28, i64 8
  %15 = bitcast i8* %p_m33 to i8**
  store i8* %call32, i8** %15, align 8, !tbaa !5
  %tobool35 = icmp eq i8* %call32, null
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  call void @perror(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #7
  call void @exit(i32 0) #6
  unreachable

if.end37:                                         ; preds = %if.end31
  %16 = bitcast i8* %call32 to i64*
  store i64 0, i64* %16, align 8
  %call40 = call noalias i8* @malloc(i64 16) #5
  %pm_data41 = getelementptr inbounds i8, i8* %call32, i64 8
  %17 = bitcast i8* %pm_data41 to i8**
  store i8* %call40, i8** %17, align 8, !tbaa !8
  %tobool43 = icmp eq i8* %call40, null
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end37
  call void @perror(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #7
  call void @exit(i32 0) #6
  unreachable

if.end45:                                         ; preds = %if.end37
  store i8 0, i8* %call40, align 1
  %18 = load i32, i32* %13, align 4, !tbaa !13
  %conv = zext i32 %18 to i64
  %p_key = bitcast i8* %call28 to i64*
  store i64 %conv, i64* %p_key, align 8, !tbaa !16
  %19 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 -1) #8, !srcloc !17
  %conv48 = zext i32 %19 to i64
  %pm_mask = bitcast i8* %call32 to i64*
  store i64 %conv48, i64* %pm_mask, align 8, !tbaa !18
  %call52 = call %struct.ptree* @pat_search(i64 %conv, %struct.ptree* %6) #5
  %p_key53 = getelementptr inbounds %struct.ptree, %struct.ptree* %call52, i64 0, i32 0
  %20 = load i64, i64* %p_key53, align 8, !tbaa !16
  %21 = load i32, i32* %13, align 4, !tbaa !13
  %conv55 = zext i32 %21 to i64
  %cmp56 = icmp eq i64 %20, %conv55
  br i1 %cmp56, label %if.end64.thread, label %if.end64

if.end64.thread:                                  ; preds = %if.end45
  %22 = load float, float* %time, align 4, !tbaa !19
  %conv59 = fpext float %22 to double
  %call61 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), double %conv59, i32 %21)
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0))
  br label %while.cond.backedge

if.end64:                                         ; preds = %if.end45
  %call63 = call %struct.ptree* @pat_insert(%struct.ptree* nonnull %14, %struct.ptree* %6) #5
  %tobool65 = icmp eq %struct.ptree* %call63, null
  br i1 %tobool65, label %if.then66, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end64, %if.end64.thread
  %call24 = call i8* @fgets(i8* %0, i32 128, %struct._IO_FILE* nonnull %call2)
  %tobool25 = icmp eq i8* %call24, null
  br i1 %tobool25, label %while.end.loopexit, label %while.body, !llvm.loop !21

if.then66:                                        ; preds = %if.end64
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %24 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %23) #7
  call void @exit(i32 0) #6
  unreachable

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end22
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #2

declare %struct.ptree* @pat_search(i64, %struct.ptree*) #4

declare %struct.ptree* @pat_insert(%struct.ptree*, %struct.ptree*) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { cold }
attributes #8 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 8}
!6 = !{!"ptree", !7, i64 0, !2, i64 8, !3, i64 16, !3, i64 17, !2, i64 24, !2, i64 32}
!7 = !{!"long", !3, i64 0}
!8 = !{!9, !2, i64 8}
!9 = !{!"ptree_mask", !7, i64 0, !2, i64 8}
!10 = !{!6, !3, i64 16}
!11 = !{!6, !2, i64 32}
!12 = !{!6, !2, i64 24}
!13 = !{!14, !15, i64 0}
!14 = !{!"in_addr", !15, i64 0}
!15 = !{!"int", !3, i64 0}
!16 = !{!6, !7, i64 0}
!17 = !{i32 -2146730840}
!18 = !{!9, !7, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"float", !3, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.loop2recursion.copy.enable"}
