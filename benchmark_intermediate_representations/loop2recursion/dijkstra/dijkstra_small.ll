; ModuleID = './benchmark_intermediate_representations/loop2recursion/dijkstra/dijkstra_small.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { %struct._QITEM** }
%1 = type { %struct._QITEM** }
%2 = type { i8 }
%3 = type { i32, i8 }
%4 = type { %struct._QITEM** }
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
@"enqueue$0_return_value_struct" = dso_local global %0 zeroinitializer
@"dijkstra$1_return_value_struct" = dso_local global %1 zeroinitializer
@"dijkstra$0_return_value_struct" = dso_local global %2 zeroinitializer
@"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$0" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$1" = dso_local global %struct._IO_FILE* null
@"dijkstra$0$0_return_value_struct" = dso_local global %3 zeroinitializer
@"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$2" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$3" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$4" = dso_local global i64 0
@"dijkstra$0$0$0_return_value_struct" = dso_local global %4 zeroinitializer

; Function Attrs: nounwind uwtable
define void @print_path(%struct._NODE* nocapture readonly %rgnNodes, i32 %chNode) #0 {
entry:
  %idxprom = sext i32 %chNode to i64
  %iPrev = getelementptr inbounds %struct._NODE, %struct._NODE* %rgnNodes, i64 %idxprom, i32 1
  %tmp = load i32, i32* %iPrev, align 4, !tbaa !1
  %cmp = icmp eq i32 %tmp, 9999
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @print_path(%struct._NODE* nonnull %rgnNodes, i32 %tmp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %chNode)
  %tmp1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call4 = tail call i32 @fflush(%struct._IO_FILE* %tmp1)
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
  %tmp = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %tmp2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %tmp1) #8
  tail call void @exit(i32 1) #9
  unreachable

if.end:                                           ; preds = %entry
  %iNode2 = bitcast i8* %call to i32*
  store i32 %iNode, i32* %iNode2, align 8, !tbaa !8
  %iDist3 = getelementptr inbounds i8, i8* %call, i64 4
  %tmp3 = bitcast i8* %iDist3 to i32*
  store i32 %iDist, i32* %tmp3, align 4, !tbaa !10
  %iPrev4 = getelementptr inbounds i8, i8* %call, i64 8
  %tmp4 = bitcast i8* %iPrev4 to i32*
  store i32 %iPrev, i32* %tmp4, align 8, !tbaa !11
  %qNext = getelementptr inbounds i8, i8* %call, i64 16
  %tmp5 = bitcast i8* %qNext to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %tmp5, align 8, !tbaa !12
  %tobool5 = icmp eq %struct._QITEM* %tmp, null
  br i1 %tobool5, label %if.then6, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br label %"enqueue$0_initialize_context"

"enqueue$0_initialize_context":                   ; preds = %while.cond.preheader
  br label %"enqueue$0_call_recursive_function"

"enqueue$0_call_recursive_function":              ; preds = %"enqueue$0_initialize_context"
  call void @"enqueue$0"(%struct._QITEM* %tmp)
  br label %"enqueue$0_extract_return_values$0"

"enqueue$0_extract_return_values$0":              ; preds = %"enqueue$0_call_recursive_function"
  %tmp6 = getelementptr %0, %0* @"enqueue$0_return_value_struct", i32 0, i32 0
  %tmp7 = load %struct._QITEM**, %struct._QITEM*** %tmp6
  br label %while.end

if.then6:                                         ; preds = %if.end
  store i8* %call, i8** bitcast (%struct._QITEM** @qHead to i8**), align 8, !tbaa !6
  br label %if.end11

while.end:                                        ; preds = %"enqueue$0_extract_return_values$0"
  %tmp8 = bitcast %struct._QITEM** %tmp7 to i8**
  store i8* %call, i8** %tmp8, align 8, !tbaa !12
  br label %if.end11

if.end11:                                         ; preds = %while.end, %if.then6
  %tmp9 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %inc = add nsw i32 %tmp9, 1
  store i32 %inc, i32* @g_qCount, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @dequeue(i32* nocapture %piNode, i32* nocapture %piDist, i32* nocapture %piPrev) #0 {
entry:
  %tmp = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool = icmp eq %struct._QITEM* %tmp, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %iNode = getelementptr inbounds %struct._QITEM, %struct._QITEM* %tmp, i64 0, i32 0
  %tmp1 = load i32, i32* %iNode, align 8, !tbaa !8
  store i32 %tmp1, i32* %piNode, align 4, !tbaa !13
  %iDist = getelementptr inbounds %struct._QITEM, %struct._QITEM* %tmp, i64 0, i32 1
  %tmp2 = load i32, i32* %iDist, align 4, !tbaa !10
  store i32 %tmp2, i32* %piDist, align 4, !tbaa !13
  %iPrev = getelementptr inbounds %struct._QITEM, %struct._QITEM* %tmp, i64 0, i32 2
  %tmp3 = load i32, i32* %iPrev, align 8, !tbaa !11
  store i32 %tmp3, i32* %piPrev, align 4, !tbaa !13
  %qNext = getelementptr inbounds %struct._QITEM, %struct._QITEM* %tmp, i64 0, i32 3
  %tmp4 = bitcast %struct._QITEM** %qNext to i64*
  %tmp5 = load i64, i64* %tmp4, align 8, !tbaa !12
  store i64 %tmp5, i64* bitcast (%struct._QITEM** @qHead to i64*), align 8, !tbaa !6
  %call = tail call i32 (%struct._QITEM*, ...) bitcast (i32 (...)* @free to i32 (%struct._QITEM*, ...)*)(%struct._QITEM* nonnull %tmp) #6
  %tmp6 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %dec = add nsw i32 %tmp6, -1
  store i32 %dec, i32* @g_qCount, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @free(...) #3

; Function Attrs: norecurse nounwind readonly uwtable
define i32 @qcount() #4 {
entry:
  %tmp = load i32, i32* @g_qCount, align 4, !tbaa !13
  ret i32 %tmp
}

; Function Attrs: nounwind uwtable
define i32 @dijkstra(i32 %chStart, i32 %chEnd) #0 {
entry:
  store i32 0, i32* @ch, align 4, !tbaa !13
  br label %"dijkstra$2_call_recursive_function"

"dijkstra$2_call_recursive_function":             ; preds = %entry
  call void @"dijkstra$2"(i64 0)
  br label %for.end

for.end:                                          ; preds = %"dijkstra$2_call_recursive_function"
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
  %call.i = tail call i8* @malloc(i64 24) #6
  %tmp = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  %tmp1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %tmp2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %tmp1) #10
  tail call void @exit(i32 1) #9
  unreachable

if.end.i:                                         ; preds = %if.else
  %iNode2.i = bitcast i8* %call.i to i32*
  store i32 %chStart, i32* %iNode2.i, align 8, !tbaa !8
  %iDist3.i = getelementptr inbounds i8, i8* %call.i, i64 4
  %tmp3 = bitcast i8* %iDist3.i to i32*
  store i32 0, i32* %tmp3, align 4, !tbaa !10
  %iPrev4.i = getelementptr inbounds i8, i8* %call.i, i64 8
  %tmp4 = bitcast i8* %iPrev4.i to i32*
  store i32 9999, i32* %tmp4, align 8, !tbaa !11
  %qNext.i = getelementptr inbounds i8, i8* %call.i, i64 16
  %tmp5 = bitcast i8* %qNext.i to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %tmp5, align 8, !tbaa !12
  %tobool5.i = icmp eq %struct._QITEM* %tmp, null
  br i1 %tobool5.i, label %if.then6.i, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end.i
  br label %"dijkstra$1_initialize_context"

"dijkstra$1_initialize_context":                  ; preds = %while.cond.i.preheader
  br label %"dijkstra$1_call_recursive_function"

"dijkstra$1_call_recursive_function":             ; preds = %"dijkstra$1_initialize_context"
  call void @"dijkstra$1"(%struct._QITEM* %tmp)
  br label %"dijkstra$1_extract_return_values$0"

"dijkstra$1_extract_return_values$0":             ; preds = %"dijkstra$1_call_recursive_function"
  %tmp6 = getelementptr %1, %1* @"dijkstra$1_return_value_struct", i32 0, i32 0
  %tmp7 = load %struct._QITEM**, %struct._QITEM*** %tmp6
  br label %while.end.i

if.then6.i:                                       ; preds = %if.end.i
  store i8* %call.i, i8** bitcast (%struct._QITEM** @qHead to i8**), align 8, !tbaa !6
  br label %enqueue.exit

while.end.i:                                      ; preds = %"dijkstra$1_extract_return_values$0"
  %tmp8 = bitcast %struct._QITEM** %tmp7 to i8**
  store i8* %call.i, i8** %tmp8, align 8, !tbaa !12
  br label %enqueue.exit

enqueue.exit:                                     ; preds = %while.end.i, %if.then6.i
  %tmp9 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %inc.i = add nsw i32 %tmp9, 1
  store i32 %inc.i, i32* @g_qCount, align 4, !tbaa !13
  %cmp1178 = icmp sgt i32 %tmp9, -1
  br i1 %cmp1178, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %enqueue.exit
  br label %"dijkstra$0_initialize_context"

"dijkstra$0_initialize_context":                  ; preds = %while.body.preheader
  br label %"dijkstra$0_call_recursive_function"

"dijkstra$0_call_recursive_function":             ; preds = %"dijkstra$0_initialize_context"
  call void @"dijkstra$0"(i32 %inc.i)
  br label %"dijkstra$0_branch_to_exit"

"dijkstra$0_branch_to_exit":                      ; preds = %"dijkstra$0_call_recursive_function"
  %tmp10 = getelementptr %2, %2* @"dijkstra$0_return_value_struct", i32 0, i32 0
  %tmp11 = load i8, i8* %tmp10
  switch i8 %tmp11, label %while.end.loopexit [
    i8 1, label %while.end.loopexit
    i8 0, label %if.then.i62
  ]

if.then.i62:                                      ; preds = %"dijkstra$0_branch_to_exit"
  %tmp12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %tmp13 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %tmp12) #10
  tail call void @exit(i32 1) #9
  unreachable

while.end.loopexit:                               ; preds = %"dijkstra$0_branch_to_exit", %"dijkstra$0_branch_to_exit"
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %enqueue.exit
  %idxprom42 = sext i32 %chEnd to i64
  %iDist44 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %idxprom42, i32 0
  %tmp14 = load i32, i32* %iDist44, align 8, !tbaa !14
  %call45 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %tmp14)
  %call46 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  tail call void @print_path(%struct._NODE* nonnull getelementptr inbounds ([100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 0), i32 %chEnd)
  %putchar = tail call i32 @putchar(i32 10) #6
  br label %if.end48

if.end48:                                         ; preds = %while.end, %if.then
  ret i32 undef
}

; Function Attrs: noreturn nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #5 {
entry:
  %k = alloca i32, align 4
  %tmp = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %tmp) #6
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %tmp2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %tmp1) #8
  %tmp3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %tmp4 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %tmp3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %tmp5 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call2 = tail call %struct._IO_FILE* @fopen(i8* %tmp5, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %"main$1_initialize_context"

"main$1_initialize_context":                      ; preds = %if.end
  store i32* %k, i32** @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$0"
  store %struct._IO_FILE* %call2, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$1"
  br label %"main$1_call_recursive_function"

"main$1_call_recursive_function":                 ; preds = %"main$1_initialize_context"
  call void @"main$1"(i64 0)
  br label %for.body16.preheader

for.body16.preheader:                             ; preds = %"main$1_call_recursive_function"
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %for.body16.preheader
  call void @"main$0"(i32 50, i32 0)
  br label %for.end21

for.end21:                                        ; preds = %"main$0_call_recursive_function"
  call void @exit(i32 0) #9
  unreachable
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

declare i32 @putchar(i32)

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

define void @"enqueue$0"(%struct._QITEM* %arg) {
"enqueue$0_latch$0":
  %qNext7 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %arg, i64 0, i32 3
  %tmp = load %struct._QITEM*, %struct._QITEM** %qNext7, align 8, !tbaa !12
  %tobool8 = icmp eq %struct._QITEM* %tmp, null
  br i1 %tobool8, label %"enqueue$0_return_from_recursive_function$0", label %"enqueue$0_increment_depth_counter", !llvm.loop !15

"enqueue$0_increment_depth_counter":              ; preds = %"enqueue$0_latch$0"
  br label %"enqueue$0_recursively_call_function"

"enqueue$0_recursively_call_function":            ; preds = %"enqueue$0_increment_depth_counter"
  call void @"enqueue$0"(%struct._QITEM* %tmp)
  ret void

"enqueue$0_return_from_recursive_function$0":     ; preds = %"enqueue$0_latch$0"
  %tmp1 = getelementptr %0, %0* @"enqueue$0_return_value_struct", i32 0, i32 0
  store %struct._QITEM** %qNext7, %struct._QITEM*** %tmp1
  ret void
}

define void @"dijkstra$2"(i64 %arg) {
"dijkstra$2_latch$0":
  %iDist = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %arg, i32 0
  store i32 9999, i32* %iDist, align 8, !tbaa !14
  %iPrev = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %arg, i32 1
  store i32 9999, i32* %iPrev, align 4, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %iDist.1 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next, i32 0
  store i32 9999, i32* %iDist.1, align 8, !tbaa !14
  %iPrev.1 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next, i32 1
  store i32 9999, i32* %iPrev.1, align 4, !tbaa !1
  %indvars.iv.next.1 = add nsw i64 %arg, 2
  %iDist.2 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.1, i32 0
  store i32 9999, i32* %iDist.2, align 8, !tbaa !14
  %iPrev.2 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.1, i32 1
  store i32 9999, i32* %iPrev.2, align 4, !tbaa !1
  %indvars.iv.next.2 = add nsw i64 %arg, 3
  %iDist.3 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.2, i32 0
  store i32 9999, i32* %iDist.3, align 8, !tbaa !14
  %iPrev.3 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.2, i32 1
  store i32 9999, i32* %iPrev.3, align 4, !tbaa !1
  %indvars.iv.next.3 = add nsw i64 %arg, 4
  %iDist.4 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.3, i32 0
  store i32 9999, i32* %iDist.4, align 8, !tbaa !14
  %iPrev.4 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %indvars.iv.next.3, i32 1
  store i32 9999, i32* %iPrev.4, align 4, !tbaa !1
  %indvars.iv.next.4 = add nsw i64 %arg, 5
  %exitcond.4 = icmp eq i64 %indvars.iv.next.4, 100
  br i1 %exitcond.4, label %"dijkstra$2_return_from_recursive_function$0", label %"dijkstra$2_increment_depth_counter", !llvm.loop !15

"dijkstra$2_increment_depth_counter":             ; preds = %"dijkstra$2_latch$0"
  br label %"dijkstra$2_recursively_call_function"

"dijkstra$2_recursively_call_function":           ; preds = %"dijkstra$2_increment_depth_counter"
  call void @"dijkstra$2"(i64 %indvars.iv.next.4)
  ret void

"dijkstra$2_return_from_recursive_function$0":    ; preds = %"dijkstra$2_latch$0"
  ret void
}

define void @"dijkstra$1"(%struct._QITEM* %arg) {
"dijkstra$1_latch$0":
  %qNext7.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %arg, i64 0, i32 3
  %tmp = load %struct._QITEM*, %struct._QITEM** %qNext7.i, align 8, !tbaa !12
  %tobool8.i = icmp eq %struct._QITEM* %tmp, null
  br i1 %tobool8.i, label %"dijkstra$1_return_from_recursive_function$0", label %"dijkstra$1_increment_depth_counter", !llvm.loop !15

"dijkstra$1_increment_depth_counter":             ; preds = %"dijkstra$1_latch$0"
  br label %"dijkstra$1_recursively_call_function"

"dijkstra$1_recursively_call_function":           ; preds = %"dijkstra$1_increment_depth_counter"
  call void @"dijkstra$1"(%struct._QITEM* %tmp)
  ret void

"dijkstra$1_return_from_recursive_function$0":    ; preds = %"dijkstra$1_latch$0"
  %tmp1 = getelementptr %1, %1* @"dijkstra$1_return_value_struct", i32 0, i32 0
  store %struct._QITEM** %qNext7.i, %struct._QITEM*** %tmp1
  ret void
}

define void @"dijkstra$0"(i32 %arg) {
"dijkstra$0_header":
  %tmp = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool.i55 = icmp eq %struct._QITEM* %tmp, null
  br i1 %tobool.i55, label %for.cond12.preheader, label %if.then.i58

if.then.i58:                                      ; preds = %"dijkstra$0_header"
  %iNode.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %tmp, i64 0, i32 0
  %tmp1 = load i32, i32* %iNode.i, align 8, !tbaa !8
  store i32 %tmp1, i32* @iNode, align 4, !tbaa !13
  %iDist.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %tmp, i64 0, i32 1
  %tmp2 = load i32, i32* %iDist.i, align 4, !tbaa !10
  store i32 %tmp2, i32* @iDist, align 4, !tbaa !13
  %iPrev.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %tmp, i64 0, i32 2
  %tmp3 = load i32, i32* %iPrev.i, align 8, !tbaa !11
  store i32 %tmp3, i32* @iPrev, align 4, !tbaa !13
  %qNext.i56 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %tmp, i64 0, i32 3
  %tmp4 = bitcast %struct._QITEM** %qNext.i56 to i64*
  %tmp5 = load i64, i64* %tmp4, align 8, !tbaa !12
  store i64 %tmp5, i64* bitcast (%struct._QITEM** @qHead to i64*), align 8, !tbaa !6
  %call.i57 = tail call i32 (%struct._QITEM*, ...) bitcast (i32 (...)* @free to i32 (%struct._QITEM*, ...)*)(%struct._QITEM* nonnull %tmp) #6
  %tmp6 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %dec.i = add nsw i32 %tmp6, -1
  store i32 %dec.i, i32* @g_qCount, align 4, !tbaa !13
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %if.then.i58, %"dijkstra$0_header"
  %tmp7 = phi i32 [ %arg, %"dijkstra$0_header" ], [ %dec.i, %if.then.i58 ]
  store i32 0, i32* @i, align 4, !tbaa !13
  %.pre = load i32, i32* @iNode, align 4, !tbaa !13
  %idxprom16 = sext i32 %.pre to i64
  br label %"dijkstra$0$0_initialize_context"

"dijkstra$0$0_initialize_context":                ; preds = %for.cond12.preheader
  store i32 %.pre, i32* @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$2"
  store i64 %idxprom16, i64* @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$3"
  br label %"dijkstra$0$0_call_recursive_function"

"dijkstra$0$0_call_recursive_function":           ; preds = %"dijkstra$0$0_initialize_context"
  call void @"dijkstra$0$0"(i32 0, i32 %tmp7)
  br label %"dijkstra$0$0_branch_to_exit"

"dijkstra$0$0_branch_to_exit":                    ; preds = %"dijkstra$0$0_call_recursive_function"
  %tmp8 = getelementptr %3, %3* @"dijkstra$0$0_return_value_struct", i32 0, i32 1
  %tmp9 = load i8, i8* %tmp8
  switch i8 %tmp9, label %"dijkstra$0$0_extract_return_values$0" [
    i8 1, label %"dijkstra$0$0_extract_return_values$0"
    i8 0, label %"dijkstra$0$0_extract_return_values$1"
  ]

"dijkstra$0$0_extract_return_values$0":           ; preds = %"dijkstra$0$0_branch_to_exit", %"dijkstra$0$0_branch_to_exit"
  %tmp10 = getelementptr %3, %3* @"dijkstra$0$0_return_value_struct", i32 0, i32 0
  %tmp11 = load i32, i32* %tmp10
  br label %"dijkstra$0_latch$0"

"dijkstra$0$0_extract_return_values$1":           ; preds = %"dijkstra$0$0_branch_to_exit"
  br label %"dijkstra$0_return_from_recursive_function$1"

"dijkstra$0_latch$0":                             ; preds = %"dijkstra$0$0_extract_return_values$0"
  %cmp11 = icmp sgt i32 %tmp11, 0
  br i1 %cmp11, label %"dijkstra$0_increment_depth_counter", label %"dijkstra$0_return_from_recursive_function$0"

"dijkstra$0_increment_depth_counter":             ; preds = %"dijkstra$0_latch$0"
  br label %"dijkstra$0_recursively_call_function"

"dijkstra$0_recursively_call_function":           ; preds = %"dijkstra$0_increment_depth_counter"
  call void @"dijkstra$0"(i32 %tmp11)
  ret void

"dijkstra$0_return_from_recursive_function$0":    ; preds = %"dijkstra$0_latch$0"
  %tmp12 = getelementptr %2, %2* @"dijkstra$0_return_value_struct", i32 0, i32 0
  store i8 1, i8* %tmp12
  ret void

"dijkstra$0_return_from_recursive_function$1":    ; preds = %"dijkstra$0$0_extract_return_values$1"
  %tmp13 = getelementptr %2, %2* @"dijkstra$0_return_value_struct", i32 0, i32 0
  store i8 0, i8* %tmp13
  ret void
}

define void @"main$1"(i64 %arg) {
"main$1_header":
  br label %"main$1$0_initialize_context"

"main$1$0_initialize_context":                    ; preds = %"main$1_header"
  store i64 %arg, i64* @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$4"
  br label %"main$1$0_call_recursive_function"

"main$1$0_call_recursive_function":               ; preds = %"main$1$0_initialize_context"
  call void @"main$1$0"(i64 0)
  br label %"main$1_latch$0"

"main$1_latch$0":                                 ; preds = %"main$1$0_call_recursive_function"
  %indvars.iv.next38 = add nuw nsw i64 %arg, 1
  %exitcond39 = icmp eq i64 %indvars.iv.next38, 100
  br i1 %exitcond39, label %"main$1_return_from_recursive_function$0", label %"main$1_increment_depth_counter", !llvm.loop !17

"main$1_increment_depth_counter":                 ; preds = %"main$1_latch$0"
  br label %"main$1_recursively_call_function"

"main$1_recursively_call_function":               ; preds = %"main$1_increment_depth_counter"
  call void @"main$1"(i64 %indvars.iv.next38)
  ret void

"main$1_return_from_recursive_function$0":        ; preds = %"main$1_latch$0"
  ret void
}

define void @"main$0"(i32 %arg, i32 %arg1) {
"main$0_latch$0":
  %rem = srem i32 %arg, 100
  %call17 = call i32 @dijkstra(i32 %arg1, i32 %rem)
  %inc19 = add nuw nsw i32 %arg1, 1
  %inc20 = add nsw i32 %rem, 1
  %exitcond = icmp eq i32 %inc19, 20
  br i1 %exitcond, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  br label %"main$0_recursively_call_function"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(i32 %inc20, i32 %inc19)
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  ret void
}

define void @"dijkstra$0$0"(i32 %arg, i32 %arg1) {
"dijkstra$0$0_header":
  %idxprom15 = sext i32 %arg to i64
  %tmp = load i64, i64* @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$3"
  %arrayidx18 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %tmp, i64 %idxprom15
  %tmp2 = load i32, i32* %arrayidx18, align 4, !tbaa !13
  store i32 %tmp2, i32* @iCost, align 4, !tbaa !13
  %cmp19 = icmp eq i32 %tmp2, 9999
  br i1 %cmp19, label %"dijkstra$0$0_latch$0", label %if.then20

if.then20:                                        ; preds = %"dijkstra$0$0_header"
  %iDist23 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %idxprom15, i32 0
  %tmp3 = load i32, i32* %iDist23, align 8, !tbaa !14
  %cmp24 = icmp eq i32 %tmp3, 9999
  %.pre81 = load i32, i32* @iDist, align 4, !tbaa !13
  %add = add nsw i32 %.pre81, %tmp2
  %cmp28 = icmp sgt i32 %tmp3, %add
  %or.cond = or i1 %cmp24, %cmp28
  br i1 %or.cond, label %"dijkstra$0$0_exiting$1", label %"dijkstra$0$0_latch$0"

"dijkstra$0$0_exiting$1":                         ; preds = %if.then20
  %add30 = add nsw i32 %tmp2, %.pre81
  store i32 %add30, i32* %iDist23, align 8, !tbaa !14
  %iPrev36 = getelementptr inbounds [100 x %struct._NODE], [100 x %struct._NODE]* @rgnNodes, i64 0, i64 %idxprom15, i32 1
  %tmp4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$2"
  store i32 %tmp4, i32* %iPrev36, align 4, !tbaa !1
  %call.i60 = tail call i8* @malloc(i64 24) #6
  %tmp5 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8, !tbaa !6
  %tobool.i61 = icmp eq i8* %call.i60, null
  br i1 %tobool.i61, label %"dijkstra$0$0_return_from_recursive_function$1", label %if.end.i68

if.end.i68:                                       ; preds = %"dijkstra$0$0_exiting$1"
  %iNode2.i63 = bitcast i8* %call.i60 to i32*
  store i32 %arg, i32* %iNode2.i63, align 8, !tbaa !8
  %iDist3.i64 = getelementptr inbounds i8, i8* %call.i60, i64 4
  %tmp6 = bitcast i8* %iDist3.i64 to i32*
  store i32 %add30, i32* %tmp6, align 4, !tbaa !10
  %iPrev4.i65 = getelementptr inbounds i8, i8* %call.i60, i64 8
  %tmp7 = bitcast i8* %iPrev4.i65 to i32*
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$2"
  store i32 %tmp8, i32* %tmp7, align 8, !tbaa !11
  %qNext.i66 = getelementptr inbounds i8, i8* %call.i60, i64 16
  %tmp9 = bitcast i8* %qNext.i66 to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %tmp9, align 8, !tbaa !12
  %tobool5.i67 = icmp eq %struct._QITEM* %tmp5, null
  br i1 %tobool5.i67, label %if.then6.i69, label %while.cond.i73.preheader

while.cond.i73.preheader:                         ; preds = %if.end.i68
  br label %"dijkstra$0$0$0_initialize_context"

"dijkstra$0$0$0_initialize_context":              ; preds = %while.cond.i73.preheader
  br label %"dijkstra$0$0$0_call_recursive_function"

"dijkstra$0$0$0_call_recursive_function":         ; preds = %"dijkstra$0$0$0_initialize_context"
  call void @"dijkstra$0$0$0"(%struct._QITEM* %tmp5)
  br label %"dijkstra$0$0$0_extract_return_values$0"

"dijkstra$0$0$0_extract_return_values$0":         ; preds = %"dijkstra$0$0$0_call_recursive_function"
  %tmp10 = getelementptr %4, %4* @"dijkstra$0$0$0_return_value_struct", i32 0, i32 0
  %tmp11 = load %struct._QITEM**, %struct._QITEM*** %tmp10
  br label %while.end.i74

while.end.i74:                                    ; preds = %"dijkstra$0$0$0_extract_return_values$0"
  %tmp12 = bitcast %struct._QITEM** %tmp11 to i8**
  store i8* %call.i60, i8** %tmp12, align 8, !tbaa !12
  br label %enqueue.exit76

if.then6.i69:                                     ; preds = %if.end.i68
  store i8* %call.i60, i8** bitcast (%struct._QITEM** @qHead to i8**), align 8, !tbaa !6
  br label %enqueue.exit76

enqueue.exit76:                                   ; preds = %if.then6.i69, %while.end.i74
  %inc.i75 = add nsw i32 %arg1, 1
  store i32 %inc.i75, i32* @g_qCount, align 4, !tbaa !13
  br label %"dijkstra$0$0_latch$0"

"dijkstra$0$0_latch$0":                           ; preds = %enqueue.exit76, %if.then20, %"dijkstra$0$0_header"
  %.pr = phi i32 [ %arg1, %"dijkstra$0$0_header" ], [ %inc.i75, %enqueue.exit76 ], [ %arg1, %if.then20 ]
  %inc40 = add nsw i32 %arg, 1
  store i32 %inc40, i32* @i, align 4, !tbaa !13
  %cmp13 = icmp slt i32 %inc40, 100
  br i1 %cmp13, label %"dijkstra$0$0_increment_depth_counter", label %"dijkstra$0$0_return_from_recursive_function$0", !llvm.loop !15

"dijkstra$0$0_increment_depth_counter":           ; preds = %"dijkstra$0$0_latch$0"
  br label %"dijkstra$0$0_recursively_call_function"

"dijkstra$0$0_recursively_call_function":         ; preds = %"dijkstra$0$0_increment_depth_counter"
  call void @"dijkstra$0$0"(i32 %inc40, i32 %.pr)
  ret void

"dijkstra$0$0_return_from_recursive_function$0":  ; preds = %"dijkstra$0$0_latch$0"
  %tmp13 = getelementptr %3, %3* @"dijkstra$0$0_return_value_struct", i32 0, i32 0
  store i32 %.pr, i32* %tmp13
  %tmp14 = getelementptr %3, %3* @"dijkstra$0$0_return_value_struct", i32 0, i32 1
  store i8 1, i8* %tmp14
  ret void

"dijkstra$0$0_return_from_recursive_function$1":  ; preds = %"dijkstra$0$0_exiting$1"
  %tmp15 = getelementptr %3, %3* @"dijkstra$0$0_return_value_struct", i32 0, i32 1
  store i8 0, i8* %tmp15
  ret void
}

define void @"main$1$0"(i64 %arg) {
"main$1$0_latch$0":
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$0"
  %tmp1 = load %struct._IO_FILE*, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$1"
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %tmp1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* nonnull %tmp) #6
  %tmp2 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$0"
  %tmp3 = load i32, i32* %tmp2, align 4, !tbaa !13
  %tmp4 = load i64, i64* @"./benchmark_intermediate_representations/baseline/dijkstra/dijkstra_small.ll_invariant_variable$4"
  %arrayidx10 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @AdjMatrix, i64 0, i64 %tmp4, i64 %arg
  store i32 %tmp3, i32* %arrayidx10, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond36, label %"main$1$0_return_from_recursive_function$0", label %"main$1$0_increment_depth_counter", !llvm.loop !17

"main$1$0_increment_depth_counter":               ; preds = %"main$1$0_latch$0"
  br label %"main$1$0_recursively_call_function"

"main$1$0_recursively_call_function":             ; preds = %"main$1$0_increment_depth_counter"
  call void @"main$1$0"(i64 %indvars.iv.next)
  ret void

"main$1$0_return_from_recursive_function$0":      ; preds = %"main$1$0_latch$0"
  ret void
}

define void @"dijkstra$0$0$0"(%struct._QITEM* %arg) {
"dijkstra$0$0$0_latch$0":
  %qNext7.i71 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %arg, i64 0, i32 3
  %tmp = load %struct._QITEM*, %struct._QITEM** %qNext7.i71, align 8, !tbaa !12
  %tobool8.i72 = icmp eq %struct._QITEM* %tmp, null
  br i1 %tobool8.i72, label %"dijkstra$0$0$0_return_from_recursive_function$0", label %"dijkstra$0$0$0_increment_depth_counter", !llvm.loop !15

"dijkstra$0$0$0_increment_depth_counter":         ; preds = %"dijkstra$0$0$0_latch$0"
  br label %"dijkstra$0$0$0_recursively_call_function"

"dijkstra$0$0$0_recursively_call_function":       ; preds = %"dijkstra$0$0$0_increment_depth_counter"
  call void @"dijkstra$0$0$0"(%struct._QITEM* %tmp)
  ret void

"dijkstra$0$0$0_return_from_recursive_function$0": ; preds = %"dijkstra$0$0$0_latch$0"
  %tmp1 = getelementptr %4, %4* @"dijkstra$0$0$0_return_value_struct", i32 0, i32 0
  store %struct._QITEM** %qNext7.i71, %struct._QITEM*** %tmp1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind willreturn }
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
!16 = !{!"llvm.loop.loop2recursion.disable"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.loop2recursion.copy.enable"}
