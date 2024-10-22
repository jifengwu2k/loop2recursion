; ModuleID = './benchmark_intermediate_representations/baseline/sha/sha.ll'
source_filename = "./benchmark_intermediate_representations/baseline/sha/sha.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, i32, i1 }
%1 = type { i32, i1 }
%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1
@"sha_update$0_recursion_state_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$0" = dso_local global %struct.SHA_INFO* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$1" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$2" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$3" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$4" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$5" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$6" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$7" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$8" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$9" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$10" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$11" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$12" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$13" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$14" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$15" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$17" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$18" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$19" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$20" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$21" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$22" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$23" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$24" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32" = dso_local global i8* null
@"sha_stream$0_recursion_state_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33" = dso_local global %struct._IO_FILE* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$34" = dso_local global %struct.SHA_INFO* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35" = dso_local global i8* null

; Function Attrs: norecurse nounwind uwtable
define void @sha_init(%struct.SHA_INFO* nocapture %sha_info) #0 {
entry:
  %0 = bitcast %struct.SHA_INFO* %sha_info to <2 x i64>*
  store <2 x i64> <i64 1732584193, i64 4023233417>, <2 x i64>* %0, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %1 = bitcast i64* %arrayidx4 to <2 x i64>*
  store <2 x i64> <i64 2562383102, i64 271733878>, <2 x i64>* %1, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %arrayidx8, align 8, !tbaa !1
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %2 = bitcast i64* %count_lo to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @sha_update(%struct.SHA_INFO* nocapture %sha_info, i8* nocapture readonly %buffer, i32 %count) #0 {
entry:
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %0 = load i64, i64* %count_lo, align 8, !tbaa !5
  %conv = sext i32 %count to i64
  %shl = shl nsw i64 %conv, 3
  %add = add i64 %0, %shl
  %cmp = icmp ult i64 %add, %0
  %count_hi = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 2
  %1 = load i64, i64* %count_hi, align 8, !tbaa !7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add i64 %1, 1
  store i64 %inc, i64* %count_hi, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = phi i64 [ %inc, %if.then ], [ %1, %entry ]
  store i64 %add, i64* %count_lo, align 8, !tbaa !5
  %shr = lshr i64 %conv, 29
  %add9 = add i64 %2, %shr
  store i64 %add9, i64* %count_hi, align 8, !tbaa !7
  %cmp1030 = icmp sgt i32 %count, 63
  %arraydecay = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 0
  %3 = bitcast i64* %arraydecay to i8*
  br i1 %cmp1030, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %arrayidx4.i = getelementptr inbounds i8, i8* %3, i64 1
  %arrayidx6.i = getelementptr inbounds i8, i8* %3, i64 2
  %arrayidx8.i = getelementptr inbounds i8, i8* %3, i64 3
  %add.ptr3.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 1
  %add.ptr.i = bitcast i64* %add.ptr3.i to i8*
  %arrayidx4.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 1
  %arrayidx6.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 2
  %arrayidx8.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 3
  %add.ptr.14.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 2
  %add.ptr.1.i = bitcast i64* %add.ptr.14.i to i8*
  %arrayidx4.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 1
  %arrayidx6.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 2
  %arrayidx8.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 3
  %add.ptr.25.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 3
  %add.ptr.2.i = bitcast i64* %add.ptr.25.i to i8*
  %arrayidx4.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 1
  %arrayidx6.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 2
  %arrayidx8.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 3
  %add.ptr.36.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 4
  %add.ptr.3.i = bitcast i64* %add.ptr.36.i to i8*
  %arrayidx4.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 1
  %arrayidx6.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 2
  %arrayidx8.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 3
  %add.ptr.47.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 5
  %add.ptr.4.i = bitcast i64* %add.ptr.47.i to i8*
  %arrayidx4.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 1
  %arrayidx6.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 2
  %arrayidx8.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 3
  %add.ptr.58.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 6
  %add.ptr.5.i = bitcast i64* %add.ptr.58.i to i8*
  %arrayidx4.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 1
  %arrayidx6.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 2
  %arrayidx8.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 3
  %add.ptr.69.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 7
  %add.ptr.6.i = bitcast i64* %add.ptr.69.i to i8*
  %arrayidx4.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 1
  %arrayidx6.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 2
  %arrayidx8.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 3
  %4 = add i32 %count, -64
  %5 = lshr i32 %4, 6
  %6 = shl nuw i32 %5, 6
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 6
  %9 = add nuw nsw i64 %8, 64
  br label %"sha_update$0_initialize_context"

"sha_update$0_initialize_context":                ; preds = %while.body.lr.ph
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$0", align 8
  store i8* %arrayidx6.7.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$1", align 8
  store i8* %add.ptr.6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$2", align 8
  store i8* %arrayidx4.6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$3", align 8
  store i8* %arrayidx8.5.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$4", align 8
  store i8* %arrayidx6.5.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$5", align 8
  store i8* %add.ptr.4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$6", align 8
  store i8* %arrayidx8.4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$7", align 8
  store i8* %arrayidx6.4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$8", align 8
  store i8* %add.ptr.1.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$9", align 8
  store i8* %arrayidx8.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$10", align 8
  store i8* %arrayidx4.7.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$11", align 8
  store i8* %arrayidx8.1.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$12", align 8
  store i8* %arrayidx6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$13", align 8
  store i8* %arrayidx6.1.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$14", align 8
  store i8* %arrayidx4.4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$15", align 8
  store i8* %3, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16", align 8
  store i8* %add.ptr.5.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$17", align 8
  store i8* %add.ptr.2.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$18", align 8
  store i8* %add.ptr.3.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$19", align 8
  store i8* %arrayidx4.1.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$20", align 8
  store i8* %arrayidx8.7.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$21", align 8
  store i8* %arrayidx4.2.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$22", align 8
  store i8* %arrayidx4.5.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$23", align 8
  store i8* %add.ptr.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$24", align 8
  store i8* %arrayidx4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25", align 8
  store i8* %arrayidx6.2.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26", align 8
  store i8* %arrayidx8.2.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27", align 8
  store i8* %arrayidx6.6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28", align 8
  store i8* %arrayidx4.3.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29", align 8
  store i8* %arrayidx8.6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30", align 8
  store i8* %arrayidx6.3.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31", align 8
  store i8* %arrayidx8.3.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32", align 8
  br label %"sha_update$0_call_recursive_function"

"sha_update$0_call_recursive_function":           ; preds = %"sha_update$0_extract_next_values", %"sha_update$0_initialize_context"
  %10 = phi i8* [ %buffer, %"sha_update$0_initialize_context" ], [ %15, %"sha_update$0_extract_next_values" ]
  %11 = phi i32 [ %count, %"sha_update$0_initialize_context" ], [ %17, %"sha_update$0_extract_next_values" ]
  call void @"sha_update$0"(i8* %10, i32 %11, i8 0)
  %12 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 2
  %13 = load i1, i1* %12, align 1
  br i1 %13, label %while.end.loopexit, label %"sha_update$0_extract_next_values"

"sha_update$0_extract_next_values":               ; preds = %"sha_update$0_call_recursive_function"
  %14 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  br label %"sha_update$0_call_recursive_function"

while.end.loopexit:                               ; preds = %"sha_update$0_call_recursive_function"
  %18 = sub i32 %4, %6
  %scevgep = getelementptr i8, i8* %buffer, i64 %9
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %count.addr.0.lcssa = phi i32 [ %count, %if.end ], [ %18, %while.end.loopexit ]
  %buffer.addr.0.lcssa = phi i8* [ %buffer, %if.end ], [ %scevgep, %while.end.loopexit ]
  %conv16 = sext i32 %count.addr.0.lcssa to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %buffer.addr.0.lcssa, i64 %conv16, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @sha_transform(%struct.SHA_INFO* nocapture %sha_info) unnamed_addr #0 {
entry:
  %W = alloca [80 x i64], align 16
  %0 = bitcast [80 x i64]* %W to i8*
  call void @llvm.lifetime.start.p0i8(i64 640, i8* %0) #6
  %scevgep = getelementptr %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 0
  %scevgep262 = bitcast i64* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %scevgep262, i64 128, i1 false)
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %entry
  %indvars.iv252 = phi i64 [ 16, %entry ], [ %indvars.iv.next253.1, %for.body5 ]
  %1 = add nsw i64 %indvars.iv252, -3
  %arrayidx7 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %1
  %2 = load i64, i64* %arrayidx7, align 8, !tbaa !1
  %3 = add nsw i64 %indvars.iv252, -8
  %arrayidx10 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %3
  %4 = load i64, i64* %arrayidx10, align 16, !tbaa !1
  %xor = xor i64 %4, %2
  %5 = add nsw i64 %indvars.iv252, -14
  %arrayidx13 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %5
  %6 = load i64, i64* %arrayidx13, align 16, !tbaa !1
  %xor14 = xor i64 %xor, %6
  %7 = add nsw i64 %indvars.iv252, -16
  %arrayidx17 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %7
  %8 = load i64, i64* %arrayidx17, align 16, !tbaa !1
  %xor18 = xor i64 %xor14, %8
  %arrayidx20 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %indvars.iv252
  store i64 %xor18, i64* %arrayidx20, align 16, !tbaa !1
  %indvars.iv.next253 = or i64 %indvars.iv252, 1
  %9 = add nsw i64 %indvars.iv252, -2
  %arrayidx7.1 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %9
  %10 = load i64, i64* %arrayidx7.1, align 16, !tbaa !1
  %11 = add nsw i64 %indvars.iv252, -7
  %arrayidx10.1 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %11
  %12 = load i64, i64* %arrayidx10.1, align 8, !tbaa !1
  %xor.1 = xor i64 %12, %10
  %13 = add nsw i64 %indvars.iv252, -13
  %arrayidx13.1 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %13
  %14 = load i64, i64* %arrayidx13.1, align 8, !tbaa !1
  %xor14.1 = xor i64 %xor.1, %14
  %15 = add nsw i64 %indvars.iv252, -15
  %arrayidx17.1 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %15
  %16 = load i64, i64* %arrayidx17.1, align 8, !tbaa !1
  %xor18.1 = xor i64 %xor14.1, %16
  %arrayidx20.1 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %indvars.iv.next253
  store i64 %xor18.1, i64* %arrayidx20.1, align 8, !tbaa !1
  %indvars.iv.next253.1 = add nsw i64 %indvars.iv252, 2
  %exitcond258.1 = icmp eq i64 %indvars.iv.next253.1, 80
  br i1 %exitcond258.1, label %for.end23, label %for.body5

for.end23:                                        ; preds = %for.body5
  %arrayidx24 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 0
  %17 = load i64, i64* %arrayidx24, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 1
  %18 = load i64, i64* %arrayidx26, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %19 = load i64, i64* %arrayidx28, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 3
  %20 = load i64, i64* %arrayidx30, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  %21 = load i64, i64* %arrayidx32, align 8, !tbaa !1
  br label %for.body35

for.body35:                                       ; preds = %for.body35, %for.end23
  %indvars.iv249 = phi i64 [ 0, %for.end23 ], [ %indvars.iv.next250, %for.body35 ]
  %E.0240 = phi i64 [ %21, %for.end23 ], [ %D.0239, %for.body35 ]
  %D.0239 = phi i64 [ %20, %for.end23 ], [ %C.0238, %for.body35 ]
  %C.0238 = phi i64 [ %19, %for.end23 ], [ %or45, %for.body35 ]
  %B.0237 = phi i64 [ %18, %for.end23 ], [ %A.0236, %for.body35 ]
  %A.0236 = phi i64 [ %17, %for.end23 ], [ %add42, %for.body35 ]
  %shl = shl i64 %A.0236, 5
  %shr = lshr i64 %A.0236, 27
  %or = or i64 %shl, %shr
  %and = and i64 %C.0238, %B.0237
  %neg = xor i64 %B.0237, -1
  %and36 = and i64 %D.0239, %neg
  %or37 = or i64 %and36, %and
  %arrayidx40 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %indvars.iv249
  %22 = load i64, i64* %arrayidx40, align 8, !tbaa !1
  %add = add i64 %or, 1518500249
  %add38 = add i64 %add, %E.0240
  %add41 = add i64 %add38, %or37
  %add42 = add i64 %add41, %22
  %shl43 = shl i64 %B.0237, 30
  %shr44 = lshr i64 %B.0237, 2
  %or45 = or i64 %shl43, %shr44
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1
  %exitcond251 = icmp eq i64 %indvars.iv.next250, 20
  br i1 %exitcond251, label %for.body51.preheader, label %for.body35

for.body51.preheader:                             ; preds = %for.body35
  %or45.lcssa = phi i64 [ %or45, %for.body35 ]
  %add42.lcssa = phi i64 [ %add42, %for.body35 ]
  %A.0236.lcssa = phi i64 [ %A.0236, %for.body35 ]
  %C.0238.lcssa = phi i64 [ %C.0238, %for.body35 ]
  %D.0239.lcssa = phi i64 [ %D.0239, %for.body35 ]
  br label %for.body51

for.body51:                                       ; preds = %for.body51, %for.body51.preheader
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %for.body51 ], [ 20, %for.body51.preheader ]
  %E.1234 = phi i64 [ %D.1233, %for.body51 ], [ %D.0239.lcssa, %for.body51.preheader ]
  %D.1233 = phi i64 [ %C.1232, %for.body51 ], [ %C.0238.lcssa, %for.body51.preheader ]
  %C.1232 = phi i64 [ %or65, %for.body51 ], [ %or45.lcssa, %for.body51.preheader ]
  %B.1231 = phi i64 [ %A.1230, %for.body51 ], [ %A.0236.lcssa, %for.body51.preheader ]
  %A.1230 = phi i64 [ %add62, %for.body51 ], [ %add42.lcssa, %for.body51.preheader ]
  %shl52 = shl i64 %A.1230, 5
  %shr53 = lshr i64 %A.1230, 27
  %or54 = or i64 %shl52, %shr53
  %xor55 = xor i64 %C.1232, %B.1231
  %xor56 = xor i64 %xor55, %D.1233
  %arrayidx60 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %indvars.iv246
  %23 = load i64, i64* %arrayidx60, align 8, !tbaa !1
  %add57 = add i64 %or54, 1859775393
  %add58 = add i64 %add57, %xor56
  %add61 = add i64 %add58, %E.1234
  %add62 = add i64 %add61, %23
  %shl63 = shl i64 %B.1231, 30
  %shr64 = lshr i64 %B.1231, 2
  %or65 = or i64 %shl63, %shr64
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1
  %exitcond248 = icmp eq i64 %indvars.iv.next247, 40
  br i1 %exitcond248, label %for.body71.preheader, label %for.body51

for.body71.preheader:                             ; preds = %for.body51
  %or65.lcssa = phi i64 [ %or65, %for.body51 ]
  %add62.lcssa = phi i64 [ %add62, %for.body51 ]
  %A.1230.lcssa = phi i64 [ %A.1230, %for.body51 ]
  %C.1232.lcssa = phi i64 [ %C.1232, %for.body51 ]
  %D.1233.lcssa = phi i64 [ %D.1233, %for.body51 ]
  br label %for.body71

for.body71:                                       ; preds = %for.body71, %for.body71.preheader
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %for.body71 ], [ 40, %for.body71.preheader ]
  %E.2228 = phi i64 [ %D.2227, %for.body71 ], [ %D.1233.lcssa, %for.body71.preheader ]
  %D.2227 = phi i64 [ %C.2226, %for.body71 ], [ %C.1232.lcssa, %for.body71.preheader ]
  %C.2226 = phi i64 [ %or88, %for.body71 ], [ %or65.lcssa, %for.body71.preheader ]
  %B.2225 = phi i64 [ %A.2224, %for.body71 ], [ %A.1230.lcssa, %for.body71.preheader ]
  %A.2224 = phi i64 [ %add85, %for.body71 ], [ %add62.lcssa, %for.body71.preheader ]
  %shl72 = shl i64 %A.2224, 5
  %shr73 = lshr i64 %A.2224, 27
  %or74 = or i64 %shl72, %shr73
  %and76216 = or i64 %D.2227, %C.2226
  %or77 = and i64 %and76216, %B.2225
  %and78 = and i64 %D.2227, %C.2226
  %or79 = or i64 %or77, %and78
  %arrayidx83 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %indvars.iv243
  %24 = load i64, i64* %arrayidx83, align 8, !tbaa !1
  %add80 = add i64 %or74, 2400959708
  %add81 = add i64 %add80, %E.2228
  %add84 = add i64 %add81, %or79
  %add85 = add i64 %add84, %24
  %shl86 = shl i64 %B.2225, 30
  %shr87 = lshr i64 %B.2225, 2
  %or88 = or i64 %shl86, %shr87
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1
  %exitcond245 = icmp eq i64 %indvars.iv.next244, 60
  br i1 %exitcond245, label %for.body94.preheader, label %for.body71

for.body94.preheader:                             ; preds = %for.body71
  %or88.lcssa = phi i64 [ %or88, %for.body71 ]
  %add85.lcssa = phi i64 [ %add85, %for.body71 ]
  %A.2224.lcssa = phi i64 [ %A.2224, %for.body71 ]
  %C.2226.lcssa = phi i64 [ %C.2226, %for.body71 ]
  %D.2227.lcssa = phi i64 [ %D.2227, %for.body71 ]
  br label %for.body94

for.body94:                                       ; preds = %for.body94, %for.body94.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body94 ], [ 60, %for.body94.preheader ]
  %E.3222 = phi i64 [ %D.3221, %for.body94 ], [ %D.2227.lcssa, %for.body94.preheader ]
  %D.3221 = phi i64 [ %C.3220, %for.body94 ], [ %C.2226.lcssa, %for.body94.preheader ]
  %C.3220 = phi i64 [ %or108, %for.body94 ], [ %or88.lcssa, %for.body94.preheader ]
  %B.3219 = phi i64 [ %A.3218, %for.body94 ], [ %A.2224.lcssa, %for.body94.preheader ]
  %A.3218 = phi i64 [ %add105, %for.body94 ], [ %add85.lcssa, %for.body94.preheader ]
  %shl95 = shl i64 %A.3218, 5
  %shr96 = lshr i64 %A.3218, 27
  %or97 = or i64 %shl95, %shr96
  %xor98 = xor i64 %C.3220, %B.3219
  %xor99 = xor i64 %xor98, %D.3221
  %arrayidx103 = getelementptr inbounds [80 x i64], [80 x i64]* %W, i64 0, i64 %indvars.iv
  %25 = load i64, i64* %arrayidx103, align 8, !tbaa !1
  %add100 = add i64 %or97, 3395469782
  %add101 = add i64 %add100, %xor99
  %add104 = add i64 %add101, %E.3222
  %add105 = add i64 %add104, %25
  %shl106 = shl i64 %B.3219, 30
  %shr107 = lshr i64 %B.3219, 2
  %or108 = or i64 %shl106, %shr107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond, label %for.end111, label %for.body94

for.end111:                                       ; preds = %for.body94
  %or108.lcssa = phi i64 [ %or108, %for.body94 ]
  %add105.lcssa = phi i64 [ %add105, %for.body94 ]
  %A.3218.lcssa = phi i64 [ %A.3218, %for.body94 ]
  %C.3220.lcssa = phi i64 [ %C.3220, %for.body94 ]
  %D.3221.lcssa = phi i64 [ %D.3221, %for.body94 ]
  %add114 = add i64 %17, %add105.lcssa
  store i64 %add114, i64* %arrayidx24, align 8, !tbaa !1
  %add117 = add i64 %18, %A.3218.lcssa
  store i64 %add117, i64* %arrayidx26, align 8, !tbaa !1
  %add120 = add i64 %19, %or108.lcssa
  store i64 %add120, i64* %arrayidx28, align 8, !tbaa !1
  %add123 = add i64 %20, %C.3220.lcssa
  store i64 %add123, i64* %arrayidx30, align 8, !tbaa !1
  %add126 = add i64 %21, %D.3221.lcssa
  store i64 %add126, i64* %arrayidx32, align 8, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %0) #6
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @sha_final(%struct.SHA_INFO* nocapture %sha_info) #0 {
entry:
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %0 = load i64, i64* %count_lo, align 8, !tbaa !5
  %count_hi = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 2
  %1 = load i64, i64* %count_hi, align 8, !tbaa !7
  %shr = lshr i64 %0, 3
  %shr.tr = trunc i64 %shr to i32
  %conv = and i32 %shr.tr, 63
  %inc = add nuw nsw i32 %conv, 1
  %idxprom35 = zext i32 %conv to i64
  %data = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3
  %2 = bitcast [16 x i64]* %data to i8*
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom35
  store i8 -128, i8* %arrayidx, align 1, !tbaa !8
  %cmp = icmp ugt i32 %inc, 56
  %idx.ext36 = zext i32 %inc to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext36
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = xor i32 %conv, 63
  %conv337 = zext i32 %sub to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr, i8 0, i64 %conv337, i1 false)
  %3 = load i8, i8* %2, align 1, !tbaa !8
  %arrayidx4.i = getelementptr inbounds i8, i8* %2, i64 1
  %4 = load i8, i8* %arrayidx4.i, align 1, !tbaa !8
  %arrayidx6.i = getelementptr inbounds i8, i8* %2, i64 2
  %5 = load i8, i8* %arrayidx6.i, align 1, !tbaa !8
  %arrayidx8.i = getelementptr inbounds i8, i8* %2, i64 3
  %6 = load i8, i8* %arrayidx8.i, align 1, !tbaa !8
  store i8 %6, i8* %2, align 1, !tbaa !8
  store i8 %5, i8* %arrayidx4.i, align 1, !tbaa !8
  store i8 %4, i8* %arrayidx6.i, align 1, !tbaa !8
  store i8 %3, i8* %arrayidx8.i, align 1, !tbaa !8
  %add.ptr3.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 1
  %add.ptr.i = bitcast i64* %add.ptr3.i to i8*
  %7 = load i8, i8* %add.ptr.i, align 1, !tbaa !8
  %arrayidx4.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 1
  %8 = load i8, i8* %arrayidx4.1.i, align 1, !tbaa !8
  %arrayidx6.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 2
  %9 = load i8, i8* %arrayidx6.1.i, align 1, !tbaa !8
  %arrayidx8.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 3
  %10 = load i8, i8* %arrayidx8.1.i, align 1, !tbaa !8
  store i8 %10, i8* %add.ptr.i, align 1, !tbaa !8
  store i8 %9, i8* %arrayidx4.1.i, align 1, !tbaa !8
  store i8 %8, i8* %arrayidx6.1.i, align 1, !tbaa !8
  store i8 %7, i8* %arrayidx8.1.i, align 1, !tbaa !8
  %add.ptr.14.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 2
  %add.ptr.1.i = bitcast i64* %add.ptr.14.i to i8*
  %11 = load i8, i8* %add.ptr.1.i, align 1, !tbaa !8
  %arrayidx4.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 1
  %12 = load i8, i8* %arrayidx4.2.i, align 1, !tbaa !8
  %arrayidx6.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 2
  %13 = load i8, i8* %arrayidx6.2.i, align 1, !tbaa !8
  %arrayidx8.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 3
  %14 = load i8, i8* %arrayidx8.2.i, align 1, !tbaa !8
  store i8 %14, i8* %add.ptr.1.i, align 1, !tbaa !8
  store i8 %13, i8* %arrayidx4.2.i, align 1, !tbaa !8
  store i8 %12, i8* %arrayidx6.2.i, align 1, !tbaa !8
  store i8 %11, i8* %arrayidx8.2.i, align 1, !tbaa !8
  %add.ptr.25.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 3
  %add.ptr.2.i = bitcast i64* %add.ptr.25.i to i8*
  %15 = load i8, i8* %add.ptr.2.i, align 1, !tbaa !8
  %arrayidx4.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 1
  %16 = load i8, i8* %arrayidx4.3.i, align 1, !tbaa !8
  %arrayidx6.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 2
  %17 = load i8, i8* %arrayidx6.3.i, align 1, !tbaa !8
  %arrayidx8.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 3
  %18 = load i8, i8* %arrayidx8.3.i, align 1, !tbaa !8
  store i8 %18, i8* %add.ptr.2.i, align 1, !tbaa !8
  store i8 %17, i8* %arrayidx4.3.i, align 1, !tbaa !8
  store i8 %16, i8* %arrayidx6.3.i, align 1, !tbaa !8
  store i8 %15, i8* %arrayidx8.3.i, align 1, !tbaa !8
  %add.ptr.36.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 4
  %add.ptr.3.i = bitcast i64* %add.ptr.36.i to i8*
  %19 = load i8, i8* %add.ptr.3.i, align 1, !tbaa !8
  %arrayidx4.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 1
  %20 = load i8, i8* %arrayidx4.4.i, align 1, !tbaa !8
  %arrayidx6.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 2
  %21 = load i8, i8* %arrayidx6.4.i, align 1, !tbaa !8
  %arrayidx8.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 3
  %22 = load i8, i8* %arrayidx8.4.i, align 1, !tbaa !8
  store i8 %22, i8* %add.ptr.3.i, align 1, !tbaa !8
  store i8 %21, i8* %arrayidx4.4.i, align 1, !tbaa !8
  store i8 %20, i8* %arrayidx6.4.i, align 1, !tbaa !8
  store i8 %19, i8* %arrayidx8.4.i, align 1, !tbaa !8
  %add.ptr.47.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 5
  %add.ptr.4.i = bitcast i64* %add.ptr.47.i to i8*
  %23 = load i8, i8* %add.ptr.4.i, align 1, !tbaa !8
  %arrayidx4.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 1
  %24 = load i8, i8* %arrayidx4.5.i, align 1, !tbaa !8
  %arrayidx6.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 2
  %25 = load i8, i8* %arrayidx6.5.i, align 1, !tbaa !8
  %arrayidx8.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 3
  %26 = load i8, i8* %arrayidx8.5.i, align 1, !tbaa !8
  store i8 %26, i8* %add.ptr.4.i, align 1, !tbaa !8
  store i8 %25, i8* %arrayidx4.5.i, align 1, !tbaa !8
  store i8 %24, i8* %arrayidx6.5.i, align 1, !tbaa !8
  store i8 %23, i8* %arrayidx8.5.i, align 1, !tbaa !8
  %add.ptr.58.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 6
  %add.ptr.5.i = bitcast i64* %add.ptr.58.i to i8*
  %27 = load i8, i8* %add.ptr.5.i, align 1, !tbaa !8
  %arrayidx4.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 1
  %28 = load i8, i8* %arrayidx4.6.i, align 1, !tbaa !8
  %arrayidx6.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 2
  %29 = load i8, i8* %arrayidx6.6.i, align 1, !tbaa !8
  %arrayidx8.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 3
  %30 = load i8, i8* %arrayidx8.6.i, align 1, !tbaa !8
  store i8 %30, i8* %add.ptr.5.i, align 1, !tbaa !8
  store i8 %29, i8* %arrayidx4.6.i, align 1, !tbaa !8
  store i8 %28, i8* %arrayidx6.6.i, align 1, !tbaa !8
  store i8 %27, i8* %arrayidx8.6.i, align 1, !tbaa !8
  %add.ptr.69.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 7
  %add.ptr.6.i = bitcast i64* %add.ptr.69.i to i8*
  %31 = load i8, i8* %add.ptr.6.i, align 1, !tbaa !8
  %arrayidx4.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 1
  %32 = load i8, i8* %arrayidx4.7.i, align 1, !tbaa !8
  %arrayidx6.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 2
  %33 = load i8, i8* %arrayidx6.7.i, align 1, !tbaa !8
  %arrayidx8.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 3
  %34 = load i8, i8* %arrayidx8.7.i, align 1, !tbaa !8
  store i8 %34, i8* %add.ptr.6.i, align 1, !tbaa !8
  store i8 %33, i8* %arrayidx4.7.i, align 1, !tbaa !8
  store i8 %32, i8* %arrayidx6.7.i, align 1, !tbaa !8
  store i8 %31, i8* %arrayidx8.7.i, align 1, !tbaa !8
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %sha_info)
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 56, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %sub10 = sub nsw i32 55, %conv
  %conv11 = sext i32 %sub10 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr, i8 0, i64 %conv11, i1 false)
  %.pre = load i8, i8* %2, align 1, !tbaa !8
  %arrayidx4.i38.phi.trans.insert = getelementptr inbounds i8, i8* %2, i64 1
  %.pre76 = load i8, i8* %arrayidx4.i38.phi.trans.insert, align 1, !tbaa !8
  %arrayidx6.i39.phi.trans.insert = getelementptr inbounds i8, i8* %2, i64 2
  %.pre77 = load i8, i8* %arrayidx6.i39.phi.trans.insert, align 1, !tbaa !8
  %arrayidx8.i40.phi.trans.insert = getelementptr inbounds i8, i8* %2, i64 3
  %.pre78 = load i8, i8* %arrayidx8.i40.phi.trans.insert, align 1, !tbaa !8
  %add.ptr3.i41.phi.trans.insert = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 1
  %add.ptr.i42.phi.trans.insert = bitcast i64* %add.ptr3.i41.phi.trans.insert to i8*
  %.pre79 = load i8, i8* %add.ptr.i42.phi.trans.insert, align 1, !tbaa !8
  %arrayidx4.1.i43.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.i42.phi.trans.insert, i64 1
  %.pre82 = load i8, i8* %arrayidx4.1.i43.phi.trans.insert, align 1, !tbaa !8
  %arrayidx6.1.i44.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.i42.phi.trans.insert, i64 2
  %.pre85 = load i8, i8* %arrayidx6.1.i44.phi.trans.insert, align 1, !tbaa !8
  %arrayidx8.1.i45.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.i42.phi.trans.insert, i64 3
  %.pre88 = load i8, i8* %arrayidx8.1.i45.phi.trans.insert, align 1, !tbaa !8
  %add.ptr.14.i46.phi.trans.insert = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 2
  %add.ptr.1.i47.phi.trans.insert = bitcast i64* %add.ptr.14.i46.phi.trans.insert to i8*
  %.pre89 = load i8, i8* %add.ptr.1.i47.phi.trans.insert, align 1, !tbaa !8
  %arrayidx4.2.i48.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.1.i47.phi.trans.insert, i64 1
  %.pre92 = load i8, i8* %arrayidx4.2.i48.phi.trans.insert, align 1, !tbaa !8
  %arrayidx6.2.i49.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.1.i47.phi.trans.insert, i64 2
  %.pre95 = load i8, i8* %arrayidx6.2.i49.phi.trans.insert, align 1, !tbaa !8
  %arrayidx8.2.i50.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.1.i47.phi.trans.insert, i64 3
  %.pre98 = load i8, i8* %arrayidx8.2.i50.phi.trans.insert, align 1, !tbaa !8
  %add.ptr.25.i51.phi.trans.insert = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 3
  %add.ptr.2.i52.phi.trans.insert = bitcast i64* %add.ptr.25.i51.phi.trans.insert to i8*
  %.pre99 = load i8, i8* %add.ptr.2.i52.phi.trans.insert, align 1, !tbaa !8
  %arrayidx4.3.i53.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.2.i52.phi.trans.insert, i64 1
  %.pre102 = load i8, i8* %arrayidx4.3.i53.phi.trans.insert, align 1, !tbaa !8
  %arrayidx6.3.i54.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.2.i52.phi.trans.insert, i64 2
  %.pre105 = load i8, i8* %arrayidx6.3.i54.phi.trans.insert, align 1, !tbaa !8
  %arrayidx8.3.i55.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.2.i52.phi.trans.insert, i64 3
  %.pre108 = load i8, i8* %arrayidx8.3.i55.phi.trans.insert, align 1, !tbaa !8
  %add.ptr.36.i56.phi.trans.insert = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 4
  %add.ptr.3.i57.phi.trans.insert = bitcast i64* %add.ptr.36.i56.phi.trans.insert to i8*
  %.pre109 = load i8, i8* %add.ptr.3.i57.phi.trans.insert, align 1, !tbaa !8
  %arrayidx4.4.i58.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.3.i57.phi.trans.insert, i64 1
  %.pre112 = load i8, i8* %arrayidx4.4.i58.phi.trans.insert, align 1, !tbaa !8
  %arrayidx6.4.i59.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.3.i57.phi.trans.insert, i64 2
  %.pre115 = load i8, i8* %arrayidx6.4.i59.phi.trans.insert, align 1, !tbaa !8
  %arrayidx8.4.i60.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.3.i57.phi.trans.insert, i64 3
  %.pre118 = load i8, i8* %arrayidx8.4.i60.phi.trans.insert, align 1, !tbaa !8
  %add.ptr.47.i61.phi.trans.insert = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 5
  %add.ptr.4.i62.phi.trans.insert = bitcast i64* %add.ptr.47.i61.phi.trans.insert to i8*
  %.pre119 = load i8, i8* %add.ptr.4.i62.phi.trans.insert, align 1, !tbaa !8
  %arrayidx4.5.i63.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.4.i62.phi.trans.insert, i64 1
  %.pre122 = load i8, i8* %arrayidx4.5.i63.phi.trans.insert, align 1, !tbaa !8
  %arrayidx6.5.i64.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.4.i62.phi.trans.insert, i64 2
  %.pre125 = load i8, i8* %arrayidx6.5.i64.phi.trans.insert, align 1, !tbaa !8
  %arrayidx8.5.i65.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.4.i62.phi.trans.insert, i64 3
  %.pre128 = load i8, i8* %arrayidx8.5.i65.phi.trans.insert, align 1, !tbaa !8
  %add.ptr.58.i66.phi.trans.insert = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 6
  %add.ptr.5.i67.phi.trans.insert = bitcast i64* %add.ptr.58.i66.phi.trans.insert to i8*
  %.pre129 = load i8, i8* %add.ptr.5.i67.phi.trans.insert, align 1, !tbaa !8
  %arrayidx4.6.i68.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.5.i67.phi.trans.insert, i64 1
  %.pre132 = load i8, i8* %arrayidx4.6.i68.phi.trans.insert, align 1, !tbaa !8
  %arrayidx6.6.i69.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.5.i67.phi.trans.insert, i64 2
  %.pre135 = load i8, i8* %arrayidx6.6.i69.phi.trans.insert, align 1, !tbaa !8
  %arrayidx8.6.i70.phi.trans.insert = getelementptr inbounds i8, i8* %add.ptr.5.i67.phi.trans.insert, i64 3
  %.pre138 = load i8, i8* %arrayidx8.6.i70.phi.trans.insert, align 1, !tbaa !8
  %.pre139 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 7
  %.pre140 = bitcast i64* %.pre139 to i8*
  %.pre141 = getelementptr inbounds i8, i8* %.pre140, i64 1
  %.pre142 = getelementptr inbounds i8, i8* %.pre140, i64 2
  %.pre143 = getelementptr inbounds i8, i8* %.pre140, i64 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx8.7.i75.pre-phi = phi i8* [ %.pre143, %if.else ], [ %arrayidx8.7.i, %if.then ]
  %arrayidx6.7.i74.pre-phi = phi i8* [ %.pre142, %if.else ], [ %arrayidx6.7.i, %if.then ]
  %arrayidx4.7.i73.pre-phi = phi i8* [ %.pre141, %if.else ], [ %arrayidx4.7.i, %if.then ]
  %add.ptr.6.i72.pre-phi = phi i8* [ %.pre140, %if.else ], [ %add.ptr.6.i, %if.then ]
  %arrayidx8.6.i70.pre-phi = phi i8* [ %arrayidx8.6.i70.phi.trans.insert, %if.else ], [ %arrayidx8.6.i, %if.then ]
  %arrayidx6.6.i69.pre-phi = phi i8* [ %arrayidx6.6.i69.phi.trans.insert, %if.else ], [ %arrayidx6.6.i, %if.then ]
  %arrayidx4.6.i68.pre-phi = phi i8* [ %arrayidx4.6.i68.phi.trans.insert, %if.else ], [ %arrayidx4.6.i, %if.then ]
  %add.ptr.5.i67.pre-phi = phi i8* [ %add.ptr.5.i67.phi.trans.insert, %if.else ], [ %add.ptr.5.i, %if.then ]
  %arrayidx8.5.i65.pre-phi = phi i8* [ %arrayidx8.5.i65.phi.trans.insert, %if.else ], [ %arrayidx8.5.i, %if.then ]
  %arrayidx6.5.i64.pre-phi = phi i8* [ %arrayidx6.5.i64.phi.trans.insert, %if.else ], [ %arrayidx6.5.i, %if.then ]
  %arrayidx4.5.i63.pre-phi = phi i8* [ %arrayidx4.5.i63.phi.trans.insert, %if.else ], [ %arrayidx4.5.i, %if.then ]
  %add.ptr.4.i62.pre-phi = phi i8* [ %add.ptr.4.i62.phi.trans.insert, %if.else ], [ %add.ptr.4.i, %if.then ]
  %arrayidx8.4.i60.pre-phi = phi i8* [ %arrayidx8.4.i60.phi.trans.insert, %if.else ], [ %arrayidx8.4.i, %if.then ]
  %arrayidx6.4.i59.pre-phi = phi i8* [ %arrayidx6.4.i59.phi.trans.insert, %if.else ], [ %arrayidx6.4.i, %if.then ]
  %arrayidx4.4.i58.pre-phi = phi i8* [ %arrayidx4.4.i58.phi.trans.insert, %if.else ], [ %arrayidx4.4.i, %if.then ]
  %add.ptr.3.i57.pre-phi = phi i8* [ %add.ptr.3.i57.phi.trans.insert, %if.else ], [ %add.ptr.3.i, %if.then ]
  %arrayidx8.3.i55.pre-phi = phi i8* [ %arrayidx8.3.i55.phi.trans.insert, %if.else ], [ %arrayidx8.3.i, %if.then ]
  %arrayidx6.3.i54.pre-phi = phi i8* [ %arrayidx6.3.i54.phi.trans.insert, %if.else ], [ %arrayidx6.3.i, %if.then ]
  %arrayidx4.3.i53.pre-phi = phi i8* [ %arrayidx4.3.i53.phi.trans.insert, %if.else ], [ %arrayidx4.3.i, %if.then ]
  %add.ptr.2.i52.pre-phi = phi i8* [ %add.ptr.2.i52.phi.trans.insert, %if.else ], [ %add.ptr.2.i, %if.then ]
  %arrayidx8.2.i50.pre-phi = phi i8* [ %arrayidx8.2.i50.phi.trans.insert, %if.else ], [ %arrayidx8.2.i, %if.then ]
  %arrayidx6.2.i49.pre-phi = phi i8* [ %arrayidx6.2.i49.phi.trans.insert, %if.else ], [ %arrayidx6.2.i, %if.then ]
  %arrayidx4.2.i48.pre-phi = phi i8* [ %arrayidx4.2.i48.phi.trans.insert, %if.else ], [ %arrayidx4.2.i, %if.then ]
  %add.ptr.1.i47.pre-phi = phi i8* [ %add.ptr.1.i47.phi.trans.insert, %if.else ], [ %add.ptr.1.i, %if.then ]
  %arrayidx8.1.i45.pre-phi = phi i8* [ %arrayidx8.1.i45.phi.trans.insert, %if.else ], [ %arrayidx8.1.i, %if.then ]
  %arrayidx6.1.i44.pre-phi = phi i8* [ %arrayidx6.1.i44.phi.trans.insert, %if.else ], [ %arrayidx6.1.i, %if.then ]
  %arrayidx4.1.i43.pre-phi = phi i8* [ %arrayidx4.1.i43.phi.trans.insert, %if.else ], [ %arrayidx4.1.i, %if.then ]
  %add.ptr.i42.pre-phi = phi i8* [ %add.ptr.i42.phi.trans.insert, %if.else ], [ %add.ptr.i, %if.then ]
  %arrayidx8.i40.pre-phi = phi i8* [ %arrayidx8.i40.phi.trans.insert, %if.else ], [ %arrayidx8.i, %if.then ]
  %arrayidx6.i39.pre-phi = phi i8* [ %arrayidx6.i39.phi.trans.insert, %if.else ], [ %arrayidx6.i, %if.then ]
  %arrayidx4.i38.pre-phi = phi i8* [ %arrayidx4.i38.phi.trans.insert, %if.else ], [ %arrayidx4.i, %if.then ]
  %35 = phi i8 [ %.pre138, %if.else ], [ 0, %if.then ]
  %36 = phi i8 [ %.pre135, %if.else ], [ 0, %if.then ]
  %37 = phi i8 [ %.pre132, %if.else ], [ 0, %if.then ]
  %38 = phi i8 [ %.pre129, %if.else ], [ 0, %if.then ]
  %39 = phi i8 [ %.pre128, %if.else ], [ 0, %if.then ]
  %40 = phi i8 [ %.pre125, %if.else ], [ 0, %if.then ]
  %41 = phi i8 [ %.pre122, %if.else ], [ 0, %if.then ]
  %42 = phi i8 [ %.pre119, %if.else ], [ 0, %if.then ]
  %43 = phi i8 [ %.pre118, %if.else ], [ 0, %if.then ]
  %44 = phi i8 [ %.pre115, %if.else ], [ 0, %if.then ]
  %45 = phi i8 [ %.pre112, %if.else ], [ 0, %if.then ]
  %46 = phi i8 [ %.pre109, %if.else ], [ 0, %if.then ]
  %47 = phi i8 [ %.pre108, %if.else ], [ 0, %if.then ]
  %48 = phi i8 [ %.pre105, %if.else ], [ 0, %if.then ]
  %49 = phi i8 [ %.pre102, %if.else ], [ 0, %if.then ]
  %50 = phi i8 [ %.pre99, %if.else ], [ 0, %if.then ]
  %51 = phi i8 [ %.pre98, %if.else ], [ 0, %if.then ]
  %52 = phi i8 [ %.pre95, %if.else ], [ 0, %if.then ]
  %53 = phi i8 [ %.pre92, %if.else ], [ 0, %if.then ]
  %54 = phi i8 [ %.pre89, %if.else ], [ 0, %if.then ]
  %55 = phi i8 [ %.pre88, %if.else ], [ 0, %if.then ]
  %56 = phi i8 [ %.pre85, %if.else ], [ 0, %if.then ]
  %57 = phi i8 [ %.pre82, %if.else ], [ 0, %if.then ]
  %58 = phi i8 [ %.pre79, %if.else ], [ 0, %if.then ]
  %59 = phi i8 [ %.pre78, %if.else ], [ 0, %if.then ]
  %60 = phi i8 [ %.pre77, %if.else ], [ 0, %if.then ]
  %61 = phi i8 [ %.pre76, %if.else ], [ 0, %if.then ]
  %62 = phi i8 [ %.pre, %if.else ], [ 0, %if.then ]
  store i8 %59, i8* %2, align 1, !tbaa !8
  store i8 %60, i8* %arrayidx4.i38.pre-phi, align 1, !tbaa !8
  store i8 %61, i8* %arrayidx6.i39.pre-phi, align 1, !tbaa !8
  store i8 %62, i8* %arrayidx8.i40.pre-phi, align 1, !tbaa !8
  store i8 %55, i8* %add.ptr.i42.pre-phi, align 1, !tbaa !8
  store i8 %56, i8* %arrayidx4.1.i43.pre-phi, align 1, !tbaa !8
  store i8 %57, i8* %arrayidx6.1.i44.pre-phi, align 1, !tbaa !8
  store i8 %58, i8* %arrayidx8.1.i45.pre-phi, align 1, !tbaa !8
  store i8 %51, i8* %add.ptr.1.i47.pre-phi, align 1, !tbaa !8
  store i8 %52, i8* %arrayidx4.2.i48.pre-phi, align 1, !tbaa !8
  store i8 %53, i8* %arrayidx6.2.i49.pre-phi, align 1, !tbaa !8
  store i8 %54, i8* %arrayidx8.2.i50.pre-phi, align 1, !tbaa !8
  store i8 %47, i8* %add.ptr.2.i52.pre-phi, align 1, !tbaa !8
  store i8 %48, i8* %arrayidx4.3.i53.pre-phi, align 1, !tbaa !8
  store i8 %49, i8* %arrayidx6.3.i54.pre-phi, align 1, !tbaa !8
  store i8 %50, i8* %arrayidx8.3.i55.pre-phi, align 1, !tbaa !8
  store i8 %43, i8* %add.ptr.3.i57.pre-phi, align 1, !tbaa !8
  store i8 %44, i8* %arrayidx4.4.i58.pre-phi, align 1, !tbaa !8
  store i8 %45, i8* %arrayidx6.4.i59.pre-phi, align 1, !tbaa !8
  store i8 %46, i8* %arrayidx8.4.i60.pre-phi, align 1, !tbaa !8
  store i8 %39, i8* %add.ptr.4.i62.pre-phi, align 1, !tbaa !8
  store i8 %40, i8* %arrayidx4.5.i63.pre-phi, align 1, !tbaa !8
  store i8 %41, i8* %arrayidx6.5.i64.pre-phi, align 1, !tbaa !8
  store i8 %42, i8* %arrayidx8.5.i65.pre-phi, align 1, !tbaa !8
  store i8 %35, i8* %add.ptr.5.i67.pre-phi, align 1, !tbaa !8
  store i8 %36, i8* %arrayidx4.6.i68.pre-phi, align 1, !tbaa !8
  store i8 %37, i8* %arrayidx6.6.i69.pre-phi, align 1, !tbaa !8
  store i8 %38, i8* %arrayidx8.6.i70.pre-phi, align 1, !tbaa !8
  %63 = load i8, i8* %add.ptr.6.i72.pre-phi, align 1, !tbaa !8
  %64 = load i8, i8* %arrayidx4.7.i73.pre-phi, align 1, !tbaa !8
  %65 = load i8, i8* %arrayidx6.7.i74.pre-phi, align 1, !tbaa !8
  %66 = load i8, i8* %arrayidx8.7.i75.pre-phi, align 1, !tbaa !8
  store i8 %66, i8* %add.ptr.6.i72.pre-phi, align 1, !tbaa !8
  store i8 %65, i8* %arrayidx4.7.i73.pre-phi, align 1, !tbaa !8
  store i8 %64, i8* %arrayidx6.7.i74.pre-phi, align 1, !tbaa !8
  store i8 %63, i8* %arrayidx8.7.i75.pre-phi, align 1, !tbaa !8
  %arrayidx15 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 14
  store i64 %1, i64* %arrayidx15, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 15
  store i64 %0, i64* %arrayidx17, align 8, !tbaa !1
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %sha_info)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha_stream(%struct.SHA_INFO* nocapture %sha_info, %struct._IO_FILE* nocapture %fin) #1 {
entry:
  %data = alloca [8192 x i8], align 16
  %0 = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %0) #6
  %1 = bitcast %struct.SHA_INFO* %sha_info to <2 x i64>*
  store <2 x i64> <i64 1732584193, i64 4023233417>, <2 x i64>* %1, align 8, !tbaa !1
  %arrayidx4.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %2 = bitcast i64* %arrayidx4.i to <2 x i64>*
  store <2 x i64> <i64 2562383102, i64 271733878>, <2 x i64>* %2, align 8, !tbaa !1
  %arrayidx8.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %arrayidx8.i, align 8, !tbaa !1
  %count_lo.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %3 = bitcast i64* %count_lo.i to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 16, i1 false)
  %call5 = call i64 @fread(i8* %0, i64 1, i64 8192, %struct._IO_FILE* %fin)
  %conv6 = trunc i64 %call5 to i32
  %cmp7 = icmp sgt i32 %conv6, 0
  br i1 %cmp7, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  br label %"sha_stream$0_initialize_context"

"sha_stream$0_initialize_context":                ; preds = %while.body.preheader
  store %struct._IO_FILE* %fin, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$34", align 8
  store i8* %0, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35", align 8
  br label %"sha_stream$0_call_recursive_function"

"sha_stream$0_call_recursive_function":           ; preds = %"sha_stream$0_extract_next_values", %"sha_stream$0_initialize_context"
  %4 = phi i32 [ %conv6, %"sha_stream$0_initialize_context" ], [ %8, %"sha_stream$0_extract_next_values" ]
  call void @"sha_stream$0"(i32 %4, i8 0)
  %5 = getelementptr %1, %1* @"sha_stream$0_recursion_state_struct", i32 0, i32 1
  %6 = load i1, i1* %5, align 1
  br i1 %6, label %while.end.loopexit, label %"sha_stream$0_extract_next_values"

"sha_stream$0_extract_next_values":               ; preds = %"sha_stream$0_call_recursive_function"
  %7 = getelementptr %1, %1* @"sha_stream$0_recursion_state_struct", i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  br label %"sha_stream$0_call_recursive_function"

while.end.loopexit:                               ; preds = %"sha_stream$0_call_recursive_function"
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  tail call void @sha_final(%struct.SHA_INFO* %sha_info)
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %0) #6
  ret void
}

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind uwtable
define void @sha_print(%struct.SHA_INFO* nocapture readonly %sha_info) #1 {
entry:
  %arrayidx = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 0
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 1
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 3
  %3 = load i64, i64* %arrayidx6, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  %4 = load i64, i64* %arrayidx8, align 8, !tbaa !1
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %0, i64 %1, i64 %2, i64 %3, i64 %4)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

define void @"sha_update$0"(i8* %0, i32 %1, i8 %2) {
"sha_update$0_latch$0":
  %3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16", align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 64, i1 false)
  %4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16", align 8
  %5 = load i8, i8* %4, align 1, !tbaa !8
  %6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25", align 8
  %7 = load i8, i8* %6, align 1, !tbaa !8
  %8 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$13", align 8
  %9 = load i8, i8* %8, align 1, !tbaa !8
  %10 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$10", align 8
  %11 = load i8, i8* %10, align 1, !tbaa !8
  %12 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16", align 8
  store i8 %11, i8* %12, align 1, !tbaa !8
  %13 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25", align 8
  store i8 %9, i8* %13, align 1, !tbaa !8
  %14 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$13", align 8
  store i8 %7, i8* %14, align 1, !tbaa !8
  %15 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$10", align 8
  store i8 %5, i8* %15, align 1, !tbaa !8
  %16 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$24", align 8
  %17 = load i8, i8* %16, align 1, !tbaa !8
  %18 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$20", align 8
  %19 = load i8, i8* %18, align 1, !tbaa !8
  %20 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$14", align 8
  %21 = load i8, i8* %20, align 1, !tbaa !8
  %22 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$12", align 8
  %23 = load i8, i8* %22, align 1, !tbaa !8
  %24 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$24", align 8
  store i8 %23, i8* %24, align 1, !tbaa !8
  %25 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$20", align 8
  store i8 %21, i8* %25, align 1, !tbaa !8
  %26 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$14", align 8
  store i8 %19, i8* %26, align 1, !tbaa !8
  %27 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$12", align 8
  store i8 %17, i8* %27, align 1, !tbaa !8
  %28 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$9", align 8
  %29 = load i8, i8* %28, align 1, !tbaa !8
  %30 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$22", align 8
  %31 = load i8, i8* %30, align 1, !tbaa !8
  %32 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26", align 8
  %33 = load i8, i8* %32, align 1, !tbaa !8
  %34 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27", align 8
  %35 = load i8, i8* %34, align 1, !tbaa !8
  %36 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$9", align 8
  store i8 %35, i8* %36, align 1, !tbaa !8
  %37 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$22", align 8
  store i8 %33, i8* %37, align 1, !tbaa !8
  %38 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26", align 8
  store i8 %31, i8* %38, align 1, !tbaa !8
  %39 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27", align 8
  store i8 %29, i8* %39, align 1, !tbaa !8
  %40 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$18", align 8
  %41 = load i8, i8* %40, align 1, !tbaa !8
  %42 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29", align 8
  %43 = load i8, i8* %42, align 1, !tbaa !8
  %44 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31", align 8
  %45 = load i8, i8* %44, align 1, !tbaa !8
  %46 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32", align 8
  %47 = load i8, i8* %46, align 1, !tbaa !8
  %48 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$18", align 8
  store i8 %47, i8* %48, align 1, !tbaa !8
  %49 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29", align 8
  store i8 %45, i8* %49, align 1, !tbaa !8
  %50 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31", align 8
  store i8 %43, i8* %50, align 1, !tbaa !8
  %51 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32", align 8
  store i8 %41, i8* %51, align 1, !tbaa !8
  %52 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$19", align 8
  %53 = load i8, i8* %52, align 1, !tbaa !8
  %54 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$15", align 8
  %55 = load i8, i8* %54, align 1, !tbaa !8
  %56 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$8", align 8
  %57 = load i8, i8* %56, align 1, !tbaa !8
  %58 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$7", align 8
  %59 = load i8, i8* %58, align 1, !tbaa !8
  %60 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$19", align 8
  store i8 %59, i8* %60, align 1, !tbaa !8
  %61 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$15", align 8
  store i8 %57, i8* %61, align 1, !tbaa !8
  %62 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$8", align 8
  store i8 %55, i8* %62, align 1, !tbaa !8
  %63 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$7", align 8
  store i8 %53, i8* %63, align 1, !tbaa !8
  %64 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$6", align 8
  %65 = load i8, i8* %64, align 1, !tbaa !8
  %66 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$23", align 8
  %67 = load i8, i8* %66, align 1, !tbaa !8
  %68 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$5", align 8
  %69 = load i8, i8* %68, align 1, !tbaa !8
  %70 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$4", align 8
  %71 = load i8, i8* %70, align 1, !tbaa !8
  %72 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$6", align 8
  store i8 %71, i8* %72, align 1, !tbaa !8
  %73 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$23", align 8
  store i8 %69, i8* %73, align 1, !tbaa !8
  %74 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$5", align 8
  store i8 %67, i8* %74, align 1, !tbaa !8
  %75 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$4", align 8
  store i8 %65, i8* %75, align 1, !tbaa !8
  %76 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$17", align 8
  %77 = load i8, i8* %76, align 1, !tbaa !8
  %78 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$3", align 8
  %79 = load i8, i8* %78, align 1, !tbaa !8
  %80 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28", align 8
  %81 = load i8, i8* %80, align 1, !tbaa !8
  %82 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30", align 8
  %83 = load i8, i8* %82, align 1, !tbaa !8
  %84 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$17", align 8
  store i8 %83, i8* %84, align 1, !tbaa !8
  %85 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$3", align 8
  store i8 %81, i8* %85, align 1, !tbaa !8
  %86 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28", align 8
  store i8 %79, i8* %86, align 1, !tbaa !8
  %87 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30", align 8
  store i8 %77, i8* %87, align 1, !tbaa !8
  %88 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$2", align 8
  %89 = load i8, i8* %88, align 1, !tbaa !8
  %90 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$11", align 8
  %91 = load i8, i8* %90, align 1, !tbaa !8
  %92 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$1", align 8
  %93 = load i8, i8* %92, align 1, !tbaa !8
  %94 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$21", align 8
  %95 = load i8, i8* %94, align 1, !tbaa !8
  %96 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$2", align 8
  store i8 %95, i8* %96, align 1, !tbaa !8
  %97 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$11", align 8
  store i8 %93, i8* %97, align 1, !tbaa !8
  %98 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$1", align 8
  store i8 %91, i8* %98, align 1, !tbaa !8
  %99 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$21", align 8
  store i8 %89, i8* %99, align 1, !tbaa !8
  %100 = load %struct.SHA_INFO*, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$0", align 8
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %100)
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 64
  %sub = add nsw i32 %1, -64
  %cmp10 = icmp sgt i32 %sub, 63
  br i1 %cmp10, label %"sha_update$0_increment_depth_counter", label %"sha_update$0_return_from_recursive_function$0", !llvm.loop !9

"sha_update$0_increment_depth_counter":           ; preds = %"sha_update$0_latch$0"
  %101 = add i8 %2, 1
  %102 = icmp ult i8 %101, 64
  br i1 %102, label %"sha_update$0_recursively_call_function", label %"sha_update$0_save_recursive_state_and_return"

"sha_update$0_recursively_call_function":         ; preds = %"sha_update$0_increment_depth_counter"
  call void @"sha_update$0"(i8* %add.ptr, i32 %sub, i8 %101)
  ret void

"sha_update$0_save_recursive_state_and_return":   ; preds = %"sha_update$0_increment_depth_counter"
  %103 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 0
  store i8* %add.ptr, i8** %103, align 8
  %104 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 1
  store i32 %sub, i32* %104, align 4
  %105 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 2
  store i1 false, i1* %105, align 1
  ret void

"sha_update$0_return_from_recursive_function$0":  ; preds = %"sha_update$0_latch$0"
  %106 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 2
  store i1 true, i1* %106, align 1
  ret void
}

define void @"sha_stream$0"(i32 %0, i8 %1) {
"sha_stream$0_latch$0":
  %2 = load %struct.SHA_INFO*, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$34", align 8
  %3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35", align 8
  call void @sha_update(%struct.SHA_INFO* %2, i8* %3, i32 %0)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35", align 8
  %call = call i64 @fread(i8* %5, i64 1, i64 8192, %struct._IO_FILE* %4)
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %"sha_stream$0_increment_depth_counter", label %"sha_stream$0_return_from_recursive_function$0", !llvm.loop !9

"sha_stream$0_increment_depth_counter":           ; preds = %"sha_stream$0_latch$0"
  %6 = add i8 %1, 1
  %7 = icmp ult i8 %6, 64
  br i1 %7, label %"sha_stream$0_recursively_call_function", label %"sha_stream$0_save_recursive_state_and_return"

"sha_stream$0_recursively_call_function":         ; preds = %"sha_stream$0_increment_depth_counter"
  call void @"sha_stream$0"(i32 %conv, i8 %6)
  ret void

"sha_stream$0_save_recursive_state_and_return":   ; preds = %"sha_stream$0_increment_depth_counter"
  %8 = getelementptr %1, %1* @"sha_stream$0_recursion_state_struct", i32 0, i32 0
  store i32 %conv, i32* %8, align 4
  %9 = getelementptr %1, %1* @"sha_stream$0_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %9, align 1
  ret void

"sha_stream$0_return_from_recursive_function$0":  ; preds = %"sha_stream$0_latch$0"
  %10 = getelementptr %1, %1* @"sha_stream$0_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %10, align 1
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 40}
!6 = !{!"", !3, i64 0, !2, i64 40, !2, i64 48, !3, i64 56}
!7 = !{!6, !2, i64 48}
!8 = !{!3, !3, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.loop2recursion.copy.enable"}
