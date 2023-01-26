; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-32/patricia/patricia_test.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/patricia/patricia_test.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8 }
%1 = type { i1 }
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
  %i = getelementptr inbounds [128 x i8], [128 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %i) #4
  %i1 = bitcast %struct.in_addr* %addr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %i1) #4
  %i2 = bitcast float* %time to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %i2) #4
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i3 = load i8*, i8** %argv, align 8, !tbaa !1
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %i3)
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1
  %i4 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %call2 = tail call %struct._IO_FILE* @fopen(i8* %i4, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %i5 = load i8*, i8** %arrayidx1, align 8, !tbaa !1
  %call6 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %i5)
  tail call void @exit(i32 0) #7
  unreachable

if.end7:                                          ; preds = %if.end
  %call8 = tail call noalias i8* @malloc(i64 40) #4
  %i6 = bitcast i8* %call8 to %struct.ptree*
  %tobool = icmp eq i8* %call8, null
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  tail call void @perror(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #8
  tail call void @exit(i32 0) #7
  unreachable

if.end10:                                         ; preds = %if.end7
  call void @llvm.memset.p0i8.i64(i8* align 8 %call8, i8 0, i64 40, i1 false)
  %call11 = tail call noalias i8* @malloc(i64 16) #4
  %p_m = getelementptr inbounds i8, i8* %call8, i64 8
  %i7 = bitcast i8* %p_m to i8**
  store i8* %call11, i8** %i7, align 8, !tbaa !5
  %tobool13 = icmp eq i8* %call11, null
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  tail call void @perror(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #8
  tail call void @exit(i32 0) #7
  unreachable

if.end15:                                         ; preds = %if.end10
  %i8 = bitcast i8* %call11 to i64*
  store i64 0, i64* %i8, align 8
  %call18 = tail call noalias i8* @malloc(i64 16) #4
  %pm_data = getelementptr inbounds i8, i8* %call11, i64 8
  %i9 = bitcast i8* %pm_data to i8**
  store i8* %call18, i8** %i9, align 8, !tbaa !8
  %tobool20 = icmp eq i8* %call18, null
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end15
  tail call void @perror(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #8
  tail call void @exit(i32 0) #7
  unreachable

if.end22:                                         ; preds = %if.end15
  store i8 0, i8* %call18, align 1
  %i10 = getelementptr inbounds i8, i8* %call8, i64 16
  store i8 1, i8* %i10, align 8, !tbaa !10
  %p_right = getelementptr inbounds i8, i8* %call8, i64 32
  %i11 = bitcast i8* %p_right to i8**
  store i8* %call8, i8** %i11, align 8, !tbaa !11
  %p_left = getelementptr inbounds i8, i8* %call8, i64 24
  %i12 = bitcast i8* %p_left to i8**
  store i8* %call8, i8** %i12, align 8, !tbaa !12
  %call2498 = call i8* @fgets(i8* %i, i32 128, %struct._IO_FILE* nonnull %call2)
  %tobool2599 = icmp eq i8* %call2498, null
  br i1 %tobool2599, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end22
  %i13 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %addr, i64 0, i32 0
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %while.body.lr.ph
  %i14 = alloca %0, align 8
  %i15 = alloca %1, align 8
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_extract_next_values", %"main$0_initialize_context"
  call void @"main$0"(%0* %i14, %struct.ptree* %i6, i32* %i13, i8* %i, %struct._IO_FILE* %call2, float* %time, %1* %i15, i8 0)
  %i16 = getelementptr %1, %1* %i15, i32 0, i32 0
  %i17 = load i1, i1* %i16, align 1
  br i1 %i17, label %"main$0_branch_to_exit", label %"main$0_extract_next_values"

"main$0_extract_next_values":                     ; preds = %"main$0_call_recursive_function"
  br label %"main$0_call_recursive_function"

"main$0_branch_to_exit":                          ; preds = %"main$0_call_recursive_function"
  %i18 = getelementptr %0, %0* %i14, i32 0, i32 0
  %i19 = load i8, i8* %i18, align 1
  switch i8 %i19, label %while.end.loopexit [
    i8 4, label %while.end.loopexit
    i8 3, label %if.then66
    i8 2, label %if.then44
    i8 0, label %if.then30
    i8 1, label %if.then36
  ]

if.then30:                                        ; preds = %"main$0_branch_to_exit"
  call void @perror(i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #8
  call void @exit(i32 0) #7
  unreachable

if.then36:                                        ; preds = %"main$0_branch_to_exit"
  call void @perror(i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #8
  call void @exit(i32 0) #7
  unreachable

if.then44:                                        ; preds = %"main$0_branch_to_exit"
  call void @perror(i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0)) #8
  call void @exit(i32 0) #7
  unreachable

if.then66:                                        ; preds = %"main$0_branch_to_exit"
  %i20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %i21 = call i64 @fwrite(i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %i20) #8
  call void @exit(i32 0) #7
  unreachable

while.end.loopexit:                               ; preds = %"main$0_branch_to_exit", %"main$0_branch_to_exit"
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end22
  call void @exit(i32 1) #7
  unreachable
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #1

declare %struct.ptree* @pat_search(i64, %struct.ptree*) #3

declare %struct.ptree* @pat_insert(%struct.ptree*, %struct.ptree*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

define void @"main$0"(%0* %arg, %struct.ptree* %arg1, i32* %arg2, i8* %arg3, %struct._IO_FILE* %arg4, float* %arg5, %1* %arg6, i8 %arg7) {
"main$0_exiting$3":
  %call27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arg3, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), float* nonnull %arg5, i32* %arg2) #4
  %call28 = call noalias i8* @malloc(i64 40) #4
  %i = bitcast i8* %call28 to %struct.ptree*
  %tobool29 = icmp eq i8* %call28, null
  br i1 %tobool29, label %"main$0_return_from_recursive_function$3", label %"main$0_exiting$4"

"main$0_exiting$4":                               ; preds = %"main$0_exiting$3"
  call void @llvm.memset.p0i8.i64(i8* align 8 %call28, i8 0, i64 40, i1 false)
  %call32 = call noalias i8* @malloc(i64 16) #4
  %p_m33 = getelementptr inbounds i8, i8* %call28, i64 8
  %i8 = bitcast i8* %p_m33 to i8**
  store i8* %call32, i8** %i8, align 8, !tbaa !5
  %tobool35 = icmp eq i8* %call32, null
  br i1 %tobool35, label %"main$0_return_from_recursive_function$4", label %"main$0_exiting$2"

"main$0_exiting$2":                               ; preds = %"main$0_exiting$4"
  %i9 = bitcast i8* %call32 to i64*
  store i64 0, i64* %i9, align 8
  %call40 = call noalias i8* @malloc(i64 16) #4
  %pm_data41 = getelementptr inbounds i8, i8* %call32, i64 8
  %i10 = bitcast i8* %pm_data41 to i8**
  store i8* %call40, i8** %i10, align 8, !tbaa !8
  %tobool43 = icmp eq i8* %call40, null
  br i1 %tobool43, label %"main$0_return_from_recursive_function$2", label %if.end45

if.end45:                                         ; preds = %"main$0_exiting$2"
  store i8 0, i8* %call40, align 1
  %i11 = load i32, i32* %arg2, align 4, !tbaa !13
  %conv = zext i32 %i11 to i64
  %p_key = bitcast i8* %call28 to i64*
  store i64 %conv, i64* %p_key, align 8, !tbaa !16
  %i12 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 -1) #9, !srcloc !17
  %conv48 = zext i32 %i12 to i64
  %pm_mask = bitcast i8* %call32 to i64*
  store i64 %conv48, i64* %pm_mask, align 8, !tbaa !18
  %call52 = call %struct.ptree* @pat_search(i64 %conv, %struct.ptree* %arg1) #4
  %p_key53 = getelementptr inbounds %struct.ptree, %struct.ptree* %call52, i64 0, i32 0
  %i13 = load i64, i64* %p_key53, align 8, !tbaa !16
  %i14 = load i32, i32* %arg2, align 4, !tbaa !13
  %conv55 = zext i32 %i14 to i64
  %cmp56 = icmp eq i64 %i13, %conv55
  br i1 %cmp56, label %if.end64.thread, label %"main$0_exiting$1"

"main$0_exiting$1":                               ; preds = %if.end45
  %call63 = call %struct.ptree* @pat_insert(%struct.ptree* nonnull %i, %struct.ptree* %arg1) #4
  %tobool65 = icmp eq %struct.ptree* %call63, null
  br i1 %tobool65, label %"main$0_return_from_recursive_function$1", label %"main$0_latch$0"

if.end64.thread:                                  ; preds = %if.end45
  %i15 = load float, float* %arg5, align 4, !tbaa !19
  %conv59 = fpext float %i15 to double
  %call61 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), double %conv59, i32 %i14)
  %puts = call i32 @puts(i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0))
  br label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %if.end64.thread, %"main$0_exiting$1"
  %call24 = call i8* @fgets(i8* %arg3, i32 128, %struct._IO_FILE* nonnull %arg4)
  %tobool25 = icmp eq i8* %call24, null
  br i1 %tobool25, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter", !llvm.loop !21

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  %i16 = add i8 %arg7, 1
  %i17 = icmp ult i8 %i16, 32
  br i1 %i17, label %"main$0_recursively_call_function", label %"main$0_save_recursive_state_and_return"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(%0* %arg, %struct.ptree* %arg1, i32* %arg2, i8* %arg3, %struct._IO_FILE* %arg4, float* %arg5, %1* %arg6, i8 %i16)
  ret void

"main$0_save_recursive_state_and_return":         ; preds = %"main$0_increment_depth_counter"
  %i18 = getelementptr %1, %1* %arg6, i32 0, i32 0
  store i1 false, i1* %i18, align 1
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  %i19 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i8 4, i8* %i19, align 1
  %i20 = getelementptr %1, %1* %arg6, i32 0, i32 0
  store i1 true, i1* %i20, align 1
  ret void

"main$0_return_from_recursive_function$1":        ; preds = %"main$0_exiting$1"
  %i21 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i8 3, i8* %i21, align 1
  %i22 = getelementptr %1, %1* %arg6, i32 0, i32 0
  store i1 true, i1* %i22, align 1
  ret void

"main$0_return_from_recursive_function$2":        ; preds = %"main$0_exiting$2"
  %i23 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i8 2, i8* %i23, align 1
  %i24 = getelementptr %1, %1* %arg6, i32 0, i32 0
  store i1 true, i1* %i24, align 1
  ret void

"main$0_return_from_recursive_function$3":        ; preds = %"main$0_exiting$3"
  %i25 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i8 0, i8* %i25, align 1
  %i26 = getelementptr %1, %1* %arg6, i32 0, i32 0
  store i1 true, i1* %i26, align 1
  ret void

"main$0_return_from_recursive_function$4":        ; preds = %"main$0_exiting$4"
  %i27 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i8 1, i8* %i27, align 1
  %i28 = getelementptr %1, %1* %arg6, i32 0, i32 0
  store i1 true, i1* %i28, align 1
  ret void
}

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind readnone }

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
