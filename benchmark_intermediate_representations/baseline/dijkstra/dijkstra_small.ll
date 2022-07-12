; ModuleID = 'dijkstra_small.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._QITEM = type { i32, i32, i32, %struct._QITEM* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._NODE = type { i32, i32 }

@qHead = global %struct._QITEM* null, align 8
@g_qCount = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@ch = common global i32 0, align 4
@rgnNodes = common global [100 x %struct._NODE] zeroinitializer, align 16
@iNode = common global i32 0, align 4
@iDist = common global i32 0, align 4
@iPrev = common global i32 0, align 4
@i = common global i32 0, align 4
@AdjMatrix = common global [100 x [100 x i32]] zeroinitializer, align 16
@iCost = common global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Shortest path is 0 in cost. Just stay where you are.\00"

; Function Attrs: nounwind uwtable
define void @print_path(%struct._NODE* nocapture readonly %rgnNodes, i32 %chNode) #0 {
entry:
  %idxprom = sext i32 %chNode to i64
  %iPrev = getelementptr inbounds %struct._NODE, %struct._NODE* %rgnNodes, i64 %idxprom, i32 1
  %0 = load i32, i32* %iPrev, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 9999
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @print_path(%struct._NODE* nonnull %rgnNodes, i32 %0)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %chNode)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call4 = tail call i32 @fflush(%struct._IO_FILE* %1)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define void @enqueue(i32 %iNode, i32 %iDist, i32 %iPrev) #0 {
entry:
  %call = tail call i8* @malloc(i64 24)
  %0 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %1) #8
  tail call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %iNode2 = bitcast i8* %call to i32*
  store i32 %iNode, i32* %iNode2, align 8, !tbaa !8
  %iDist3 = getelementptr inbounds i8, i8* %call, i64 4
  %3 = bitcast i8* %iDist3 to i32*
  store i32 %iDist, i32* %3, align 4, !tbaa !10
  %iPrev4 = getelementptr inbounds i8, i8* %call, i64 8
  %4 = bitcast i8* %iPrev4 to i32*
  store i32 %iPrev, i32* %4, align 8, !tbaa !11
  %qNext = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %qNext to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %5, align 8, !tbaa !12
  %tobool5 = icmp eq %struct._QITEM* %0, null
  br i1 %tobool5, label %if.then6, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond

if.then6:                                         ; preds = %if.end
  store i8* %call, i8** bitcast (%struct._QITEM** @qHead to i8**), align 8, !tbaa !6
  br label %if.end11

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %qLast.0 = phi %struct._QITEM* [ %6, %while.cond ], [ %0, %while.cond.preheader ]
  %qNext7 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %qLast.0, i64 0, i32 3
  %6 = load %struct._QITEM*, %struct._QITEM** %qNext7, align 8, !tbaa !12
  %tobool8 = icmp eq %struct._QITEM* %6, null
  br i1 %tobool8, label %while.end, label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %qNext7.lcssa = phi %struct._QITEM** [ %qNext7, %while.cond ]
  %7 = bitcast %struct._QITEM** %qNext7.lcssa to i8**
  store i8* %call, i8** %7, align 8, !tbaa !12
  br label %if.end11

if.end11:                                         ; preds = %while.end, %if.then6
  %8 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @g_qCount, align 4, !tbaa !13
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @dequeue(i32* nocapture %piNode, i32* nocapture %piDist, i32* nocapture %piPrev) #0 {
entry:
  %0 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool = icmp eq %struct._QITEM* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %iNode = getelementptr inbounds %struct._QITEM, %struct._QITEM* %0, i64 0, i32 0
  %1 = load i32, i32* %iNode, align 8, !tbaa !8
  store i32 %1, i32* %piNode, align 4, !tbaa !13
  %iDist = getelementptr inbounds %struct._QITEM, %struct._QITEM* %0, i64 0, i32 1
  %2 = load i32, i32* %iDist, align 4, !tbaa !10
  store i32 %2, i32* %piDist, align 4, !tbaa !13
  %iPrev = getelementptr inbounds %struct._QITEM, %struct._QITEM* %0, i64 0, i32 2
  %3 = load i32, i32* %iPrev, align 8, !tbaa !11
  store i32 %3, i32* %piPrev, align 4, !tbaa !13
  %qNext = getelementptr inbounds %struct._QITEM, %struct._QITEM* %0, i64 0, i32 3
  %4 = bitcast %struct._QITEM** %qNext to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !12
  store i64 %5, i64* bitcast (%struct._QITEM** @qHead to i64*), align 8, !tbaa !6
  %call = tail call i32 (%struct._QITEM*, ...) bitcast (i32 (...)* @free to i32 (%struct._QITEM*, ...)*)(%struct._QITEM* nonnull %0) #7
  %6 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @g_qCount, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

declare i32 @free(...) #4

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @qcount() #5 {
entry:
  %0 = load i32, i32* @g_qCount, align 4, !tbaa !13
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @dijkstra(i32 %chStart, i32 %chEnd) #0 {
entry:
  store i32 0, i32* @ch, align 4, !tbaa !13
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.4, %for.body ]
  %iDist = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv, i32 0
  store i32 9999, i32* %iDist, align 8, !tbaa !14
  %iPrev = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv, i32 1
  store i32 9999, i32* %iPrev, align 4, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %iDist.1 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next, i32 0
  store i32 9999, i32* %iDist.1, align 8, !tbaa !14
  %iPrev.1 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next, i32 1
  store i32 9999, i32* %iPrev.1, align 4, !tbaa !1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %iDist.2 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.1, i32 0
  store i32 9999, i32* %iDist.2, align 8, !tbaa !14
  %iPrev.2 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.1, i32 1
  store i32 9999, i32* %iPrev.2, align 4, !tbaa !1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %iDist.3 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.2, i32 0
  store i32 9999, i32* %iDist.3, align 8, !tbaa !14
  %iPrev.3 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.2, i32 1
  store i32 9999, i32* %iPrev.3, align 4, !tbaa !1
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %iDist.4 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.3, i32 0
  store i32 9999, i32* %iDist.4, align 8, !tbaa !14
  %iPrev.4 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.3, i32 1
  store i32 9999, i32* %iPrev.4, align 4, !tbaa !1
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, 5
  %exitcond.4 = icmp eq i64 %indvars.iv.next.4, 100
  br i1 %exitcond.4, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %for.body
  store i32 100, i32* @ch, align 4, !tbaa !13
  %cmp3 = icmp eq i32 %chStart, %chEnd
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([53 x i8], [53 x i8]* @str, i64 0, i64 0))
  br label %if.end48

if.else:                                          ; preds = %for.end
  %idxprom4 = sext i32 %chStart to i64
  %iDist6 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %idxprom4, i32 0
  store i32 0, i32* %iDist6, align 8, !tbaa !14
  %iPrev9 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %idxprom4, i32 1
  store i32 9999, i32* %iPrev9, align 4, !tbaa !1
  %call.i = tail call i8* @malloc(i64 24) #7
  %0 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %1) #10
  tail call void @exit(i32 1) #9
  unreachable

if.end.i:                                         ; preds = %if.else
  %iNode2.i = bitcast i8* %call.i to i32*
  store i32 %chStart, i32* %iNode2.i, align 8, !tbaa !8
  %iDist3.i = getelementptr inbounds i8, i8* %call.i, i64 4
  %3 = bitcast i8* %iDist3.i to i32*
  store i32 0, i32* %3, align 4, !tbaa !10
  %iPrev4.i = getelementptr inbounds i8, i8* %call.i, i64 8
  %4 = bitcast i8* %iPrev4.i to i32*
  store i32 9999, i32* %4, align 8, !tbaa !11
  %qNext.i = getelementptr inbounds i8, i8* %call.i, i64 16
  %5 = bitcast i8* %qNext.i to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %5, align 8, !tbaa !12
  %tobool5.i = icmp eq %struct._QITEM* %0, null
  br i1 %tobool5.i, label %if.then6.i, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end.i
  br label %while.cond.i

if.then6.i:                                       ; preds = %if.end.i
  store i8* %call.i, i8** bitcast (%struct._QITEM** @qHead to i8**), align 8, !tbaa !6
  br label %enqueue.exit

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %qLast.0.i = phi %struct._QITEM* [ %6, %while.cond.i ], [ %0, %while.cond.i.preheader ]
  %qNext7.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %qLast.0.i, i64 0, i32 3
  %6 = load %struct._QITEM*, %struct._QITEM** %qNext7.i, align 8, !tbaa !12
  %tobool8.i = icmp eq %struct._QITEM* %6, null
  br i1 %tobool8.i, label %while.end.i, label %while.cond.i, !llvm.loop !17

while.end.i:                                      ; preds = %while.cond.i
  %qNext7.i.lcssa = phi %struct._QITEM** [ %qNext7.i, %while.cond.i ]
  %7 = bitcast %struct._QITEM** %qNext7.i.lcssa to i8**
  store i8* %call.i, i8** %7, align 8, !tbaa !12
  br label %enqueue.exit

enqueue.exit:                                     ; preds = %if.then6.i, %while.end.i
  %8 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %inc.i = add nsw i32 %8, 1
  store i32 %inc.i, i32* @g_qCount, align 4, !tbaa !13
  %cmp1178 = icmp sgt i32 %8, -1
  br i1 %cmp1178, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %enqueue.exit
  br label %while.body

while.condthread-pre-split:                       ; preds = %for.inc39
  %.pr.lcssa = phi i32 [ %.pr, %for.inc39 ]
  %cmp11 = icmp sgt i32 %.pr.lcssa, 0
  br i1 %cmp11, label %while.body, label %while.end.loopexit

while.body:                                       ; preds = %while.body.preheader, %while.condthread-pre-split
  %9 = phi i32 [ %.pr.lcssa, %while.condthread-pre-split ], [ %inc.i, %while.body.preheader ]
  %10 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool.i55 = icmp eq %struct._QITEM* %10, null
  br i1 %tobool.i55, label %for.cond12.preheader, label %if.then.i58

if.then.i58:                                      ; preds = %while.body
  %iNode.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i64 0, i32 0
  %11 = load i32, i32* %iNode.i, align 8, !tbaa !8
  store i32 %11, i32* @iNode, align 4, !tbaa !13
  %iDist.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i64 0, i32 1
  %12 = load i32, i32* %iDist.i, align 4, !tbaa !10
  store i32 %12, i32* @iDist, align 4, !tbaa !13
  %iPrev.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i64 0, i32 2
  %13 = load i32, i32* %iPrev.i, align 8, !tbaa !11
  store i32 %13, i32* @iPrev, align 4, !tbaa !13
  %qNext.i56 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i64 0, i32 3
  %14 = bitcast %struct._QITEM** %qNext.i56 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !12
  store i64 %15, i64* bitcast (%struct._QITEM** @qHead to i64*), align 8, !tbaa !6
  %call.i57 = tail call i32 (%struct._QITEM*, ...) bitcast (i32 (...)* @free to i32 (%struct._QITEM*, ...)*)(%struct._QITEM* nonnull %10) #7
  %16 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %dec.i = add nsw i32 %16, -1
  store i32 %dec.i, i32* @g_qCount, align 4, !tbaa !13
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %while.body, %if.then.i58
  %17 = phi i32 [ %9, %while.body ], [ %dec.i, %if.then.i58 ]
  store i32 0, i32* @i, align 4, !tbaa !13
  %.pre = load i32, i32* @iNode, align 4, !tbaa !13
  %idxprom16 = sext i32 %.pre to i64
  br label %for.body14

for.body14:                                       ; preds = %for.cond12.preheader, %for.inc39
  %18 = phi i32 [ %17, %for.cond12.preheader ], [ %.pr, %for.inc39 ]
  %19 = phi i32 [ 0, %for.cond12.preheader ], [ %inc40, %for.inc39 ]
  %idxprom15 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %idxprom16, i64 %idxprom15
  %20 = load i32, i32* %arrayidx18, align 4, !tbaa !13
  store i32 %20, i32* @iCost, align 4, !tbaa !13
  %cmp19 = icmp eq i32 %20, 9999
  br i1 %cmp19, label %for.inc39, label %if.then20

if.then20:                                        ; preds = %for.body14
  %iDist23 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %idxprom15, i32 0
  %21 = load i32, i32* %iDist23, align 8, !tbaa !14
  %cmp24 = icmp eq i32 %21, 9999
  %.pre81 = load i32, i32* @iDist, align 4, !tbaa !13
  %add = add nsw i32 %.pre81, %20
  %cmp28 = icmp sgt i32 %21, %add
  %or.cond = or i1 %cmp24, %cmp28
  br i1 %or.cond, label %if.then29, label %for.inc39

if.then29:                                        ; preds = %if.then20
  %add30 = add nsw i32 %20, %.pre81
  store i32 %add30, i32* %iDist23, align 8, !tbaa !14
  %iPrev36 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %idxprom15, i32 1
  store i32 %.pre, i32* %iPrev36, align 4, !tbaa !1
  %call.i60 = tail call i8* @malloc(i64 24) #7
  %22 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool.i61 = icmp eq i8* %call.i60, null
  br i1 %tobool.i61, label %if.then.i62, label %if.end.i68

if.then.i62:                                      ; preds = %if.then29
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %24 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %23) #10
  tail call void @exit(i32 1) #9
  unreachable

if.end.i68:                                       ; preds = %if.then29
  %iNode2.i63 = bitcast i8* %call.i60 to i32*
  store i32 %19, i32* %iNode2.i63, align 8, !tbaa !8
  %iDist3.i64 = getelementptr inbounds i8, i8* %call.i60, i64 4
  %25 = bitcast i8* %iDist3.i64 to i32*
  store i32 %add30, i32* %25, align 4, !tbaa !10
  %iPrev4.i65 = getelementptr inbounds i8, i8* %call.i60, i64 8
  %26 = bitcast i8* %iPrev4.i65 to i32*
  store i32 %.pre, i32* %26, align 8, !tbaa !11
  %qNext.i66 = getelementptr inbounds i8, i8* %call.i60, i64 16
  %27 = bitcast i8* %qNext.i66 to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %27, align 8, !tbaa !12
  %tobool5.i67 = icmp eq %struct._QITEM* %22, null
  br i1 %tobool5.i67, label %if.then6.i69, label %while.cond.i73.preheader

while.cond.i73.preheader:                         ; preds = %if.end.i68
  br label %while.cond.i73

if.then6.i69:                                     ; preds = %if.end.i68
  store i8* %call.i60, i8** bitcast (%struct._QITEM** @qHead to i8**), align 8, !tbaa !6
  br label %enqueue.exit76

while.cond.i73:                                   ; preds = %while.cond.i73.preheader, %while.cond.i73
  %qLast.0.i70 = phi %struct._QITEM* [ %28, %while.cond.i73 ], [ %22, %while.cond.i73.preheader ]
  %qNext7.i71 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %qLast.0.i70, i64 0, i32 3
  %28 = load %struct._QITEM*, %struct._QITEM** %qNext7.i71, align 8, !tbaa !12
  %tobool8.i72 = icmp eq %struct._QITEM* %28, null
  br i1 %tobool8.i72, label %while.end.i74, label %while.cond.i73, !llvm.loop !17

while.end.i74:                                    ; preds = %while.cond.i73
  %qNext7.i71.lcssa = phi %struct._QITEM** [ %qNext7.i71, %while.cond.i73 ]
  %29 = bitcast %struct._QITEM** %qNext7.i71.lcssa to i8**
  store i8* %call.i60, i8** %29, align 8, !tbaa !12
  br label %enqueue.exit76

enqueue.exit76:                                   ; preds = %if.then6.i69, %while.end.i74
  %inc.i75 = add nsw i32 %18, 1
  store i32 %inc.i75, i32* @g_qCount, align 4, !tbaa !13
  br label %for.inc39

for.inc39:                                        ; preds = %if.then20, %for.body14, %enqueue.exit76
  %.pr = phi i32 [ %18, %for.body14 ], [ %inc.i75, %enqueue.exit76 ], [ %18, %if.then20 ]
  %inc40 = add nsw i32 %19, 1
  store i32 %inc40, i32* @i, align 4, !tbaa !13
  %cmp13 = icmp slt i32 %inc40, 100
  br i1 %cmp13, label %for.body14, label %while.condthread-pre-split, !llvm.loop !17

while.end.loopexit:                               ; preds = %while.condthread-pre-split
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %enqueue.exit
  %idxprom42 = sext i32 %chEnd to i64
  %iDist44 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %idxprom42, i32 0
  %30 = load i32, i32* %iDist44, align 8, !tbaa !14
  %call45 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %call46 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  tail call void @print_path(%struct._NODE* nonnull getelementptr inbounds ([100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 0), i32 %chEnd)
  %putchar = tail call i32 @putchar(i32 10) #7
  br label %if.end48

if.end48:                                         ; preds = %while.end, %if.then
  ret i32 undef
}

; Function Attrs: noreturn nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #6 {
entry:
  %k = alloca i32, align 4
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #7
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %1) #8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %4 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %5 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call2 = tail call %struct._IO_FILE* @fopen(i8* %5, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc11, %if.end
  %indvars.iv37 = phi i64 [ 0, %if.end ], [ %indvars.iv.next38, %for.inc11 ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %call2, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* nonnull %k) #7
  %6 = load i32, i32* %k, align 4, !tbaa !13
  %arrayidx10 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %indvars.iv37, i64 %indvars.iv
  store i32 %6, i32* %arrayidx10, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond36, label %for.inc11, label %for.body6, !llvm.loop !15

for.inc11:                                        ; preds = %for.body6
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond39 = icmp eq i64 %indvars.iv.next38, 100
  br i1 %exitcond39, label %for.body16.preheader, label %for.cond4.preheader, !llvm.loop !15

for.body16.preheader:                             ; preds = %for.inc11
  br label %for.body16

for.body16:                                       ; preds = %for.body16.preheader, %for.body16
  %i.133 = phi i32 [ %inc19, %for.body16 ], [ 0, %for.body16.preheader ]
  %j.132 = phi i32 [ %inc20, %for.body16 ], [ 50, %for.body16.preheader ]
  %rem = srem i32 %j.132, 100
  %call17 = call i32 @dijkstra(i32 %i.133, i32 %rem)
  %inc19 = add nuw nsw i32 %i.133, 1
  %inc20 = add nsw i32 %rem, 1
  %exitcond = icmp eq i32 %inc19, 20
  br i1 %exitcond, label %for.end21, label %for.body16

for.end21:                                        ; preds = %for.body16
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #7

declare i32 @putchar(i32)

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #7

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !3, i64 4}
!2 = !{!"_NODE", !3, i64 0, !3, i64 4}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !3, i64 0}
!9 = !{!"_QITEM", !3, i64 0, !3, i64 4, !3, i64 8, !7, i64 16}
!10 = !{!9, !3, i64 4}
!11 = !{!9, !3, i64 8}
!12 = !{!9, !7, i64 16}
!13 = !{!3, !3, i64 0}
!14 = !{!2, !3, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.loop2recursion.copy.enable"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.loop2recursion.disable"}
