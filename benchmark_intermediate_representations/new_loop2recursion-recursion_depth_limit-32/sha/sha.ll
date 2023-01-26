; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-recursion_depth_limit-32/sha/sha.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/sha/sha.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, i32, i1 }
%1 = type { i64, i1 }
%2 = type { i64, i64, i64, i64, i64 }
%3 = type { i64, i64, i64, i64, i64, i64, i1 }
%4 = type { i64, i64, i64, i64, i64 }
%5 = type { i64, i64, i64, i64, i64, i64, i1 }
%6 = type { i64, i64, i64, i64, i64 }
%7 = type { i64, i64, i64, i64, i64, i64, i1 }
%8 = type { i64, i64, i64, i64, i64 }
%9 = type { i64, i64, i64, i64, i64, i64, i1 }
%10 = type { i32, i1 }
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
@"sha_transform$4_recursion_state_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33" = dso_local global [80 x i64]* null
@"sha_transform$3_return_value_struct" = dso_local global %2 zeroinitializer
@"sha_transform$3_recursion_state_struct" = dso_local global %3 zeroinitializer
@"sha_transform$2_return_value_struct" = dso_local global %4 zeroinitializer
@"sha_transform$2_recursion_state_struct" = dso_local global %5 zeroinitializer
@"sha_transform$1_return_value_struct" = dso_local global %6 zeroinitializer
@"sha_transform$1_recursion_state_struct" = dso_local global %7 zeroinitializer
@"sha_transform$0_return_value_struct" = dso_local global %8 zeroinitializer
@"sha_transform$0_recursion_state_struct" = dso_local global %9 zeroinitializer
@"sha_stream$0_recursion_state_struct" = dso_local global %10 zeroinitializer
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$34" = dso_local global %struct._IO_FILE* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35" = dso_local global %struct.SHA_INFO* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$36" = dso_local global i8* null

; Function Attrs: norecurse nounwind uwtable
define void @sha_init(%struct.SHA_INFO* nocapture %sha_info) #0 {
entry:
  %i = bitcast %struct.SHA_INFO* %sha_info to <2 x i64>*
  store <2 x i64> <i64 1732584193, i64 4023233417>, <2 x i64>* %i, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %i1 = bitcast i64* %arrayidx4 to <2 x i64>*
  store <2 x i64> <i64 2562383102, i64 271733878>, <2 x i64>* %i1, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %arrayidx8, align 8, !tbaa !1
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %i2 = bitcast i64* %count_lo to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %i2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @sha_update(%struct.SHA_INFO* nocapture %sha_info, i8* nocapture readonly %buffer, i32 %count) #0 {
entry:
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %i = load i64, i64* %count_lo, align 8, !tbaa !5
  %conv = sext i32 %count to i64
  %shl = shl nsw i64 %conv, 3
  %add = add i64 %i, %shl
  %cmp = icmp ult i64 %add, %i
  %count_hi = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 2
  %i1 = load i64, i64* %count_hi, align 8, !tbaa !7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add i64 %i1, 1
  store i64 %inc, i64* %count_hi, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %i2 = phi i64 [ %inc, %if.then ], [ %i1, %entry ]
  store i64 %add, i64* %count_lo, align 8, !tbaa !5
  %shr = lshr i64 %conv, 29
  %add9 = add i64 %i2, %shr
  store i64 %add9, i64* %count_hi, align 8, !tbaa !7
  %cmp1030 = icmp sgt i32 %count, 63
  %arraydecay = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 0
  %i3 = bitcast i64* %arraydecay to i8*
  br i1 %cmp1030, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %arrayidx4.i = getelementptr inbounds i8, i8* %i3, i64 1
  %arrayidx6.i = getelementptr inbounds i8, i8* %i3, i64 2
  %arrayidx8.i = getelementptr inbounds i8, i8* %i3, i64 3
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
  %i4 = add i32 %count, -64
  %i5 = lshr i32 %i4, 6
  %i6 = shl nuw i32 %i5, 6
  %i7 = zext i32 %i5 to i64
  %i8 = shl nuw nsw i64 %i7, 6
  %i9 = add nuw nsw i64 %i8, 64
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
  store i8* %i3, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16", align 8
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
  %i10 = phi i8* [ %buffer, %"sha_update$0_initialize_context" ], [ %i15, %"sha_update$0_extract_next_values" ]
  %i11 = phi i32 [ %count, %"sha_update$0_initialize_context" ], [ %i17, %"sha_update$0_extract_next_values" ]
  call void @"sha_update$0"(i8* %i10, i32 %i11, i8 0)
  %i12 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 2
  %i13 = load i1, i1* %i12, align 1
  br i1 %i13, label %while.end.loopexit, label %"sha_update$0_extract_next_values"

"sha_update$0_extract_next_values":               ; preds = %"sha_update$0_call_recursive_function"
  %i14 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 0
  %i15 = load i8*, i8** %i14, align 8
  %i16 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 1
  %i17 = load i32, i32* %i16, align 4
  br label %"sha_update$0_call_recursive_function"

while.end.loopexit:                               ; preds = %"sha_update$0_call_recursive_function"
  %i18 = sub i32 %i4, %i6
  %scevgep = getelementptr i8, i8* %buffer, i64 %i9
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %count.addr.0.lcssa = phi i32 [ %count, %if.end ], [ %i18, %while.end.loopexit ]
  %buffer.addr.0.lcssa = phi i8* [ %buffer, %if.end ], [ %scevgep, %while.end.loopexit ]
  %conv16 = sext i32 %count.addr.0.lcssa to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %i3, i8* align 1 %buffer.addr.0.lcssa, i64 %conv16, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @sha_transform(%struct.SHA_INFO* nocapture %sha_info) unnamed_addr #0 {
entry:
  %W = alloca [80 x i64], align 16
  %i = bitcast [80 x i64]* %W to i8*
  call void @llvm.lifetime.start.p0i8(i64 640, i8* %i) #6
  %scevgep = getelementptr %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 0
  %scevgep262 = bitcast i64* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %i, i8* align 8 %scevgep262, i64 128, i1 false)
  br label %"sha_transform$4_initialize_context"

"sha_transform$4_initialize_context":             ; preds = %entry
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  br label %"sha_transform$4_call_recursive_function"

"sha_transform$4_call_recursive_function":        ; preds = %"sha_transform$4_extract_next_values", %"sha_transform$4_initialize_context"
  %i1 = phi i64 [ 16, %"sha_transform$4_initialize_context" ], [ %i5, %"sha_transform$4_extract_next_values" ]
  call void @"sha_transform$4"(i64 %i1, i8 0)
  %i2 = getelementptr %1, %1* @"sha_transform$4_recursion_state_struct", i32 0, i32 1
  %i3 = load i1, i1* %i2, align 1
  br i1 %i3, label %for.end23, label %"sha_transform$4_extract_next_values"

"sha_transform$4_extract_next_values":            ; preds = %"sha_transform$4_call_recursive_function"
  %i4 = getelementptr %1, %1* @"sha_transform$4_recursion_state_struct", i32 0, i32 0
  %i5 = load i64, i64* %i4, align 8
  br label %"sha_transform$4_call_recursive_function"

for.end23:                                        ; preds = %"sha_transform$4_call_recursive_function"
  %arrayidx24 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 0
  %i6 = load i64, i64* %arrayidx24, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 1
  %i7 = load i64, i64* %arrayidx26, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %i8 = load i64, i64* %arrayidx28, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 3
  %i9 = load i64, i64* %arrayidx30, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  %i10 = load i64, i64* %arrayidx32, align 8, !tbaa !1
  br label %"sha_transform$3_initialize_context"

"sha_transform$3_initialize_context":             ; preds = %for.end23
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  br label %"sha_transform$3_call_recursive_function"

"sha_transform$3_call_recursive_function":        ; preds = %"sha_transform$3_extract_next_values", %"sha_transform$3_initialize_context"
  %i11 = phi i64 [ %i6, %"sha_transform$3_initialize_context" ], [ %i20, %"sha_transform$3_extract_next_values" ]
  %i12 = phi i64 [ %i7, %"sha_transform$3_initialize_context" ], [ %i22, %"sha_transform$3_extract_next_values" ]
  %i13 = phi i64 [ %i8, %"sha_transform$3_initialize_context" ], [ %i24, %"sha_transform$3_extract_next_values" ]
  %i14 = phi i64 [ %i9, %"sha_transform$3_initialize_context" ], [ %i26, %"sha_transform$3_extract_next_values" ]
  %i15 = phi i64 [ 0, %"sha_transform$3_initialize_context" ], [ %i28, %"sha_transform$3_extract_next_values" ]
  %i16 = phi i64 [ %i10, %"sha_transform$3_initialize_context" ], [ %i30, %"sha_transform$3_extract_next_values" ]
  call void @"sha_transform$3"(i64 %i11, i64 %i12, i64 %i13, i64 %i14, i64 %i15, i64 %i16, i8 0)
  %i17 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 6
  %i18 = load i1, i1* %i17, align 1
  br i1 %i18, label %"sha_transform$3_extract_return_values$0", label %"sha_transform$3_extract_next_values"

"sha_transform$3_extract_next_values":            ; preds = %"sha_transform$3_call_recursive_function"
  %i19 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 0
  %i20 = load i64, i64* %i19, align 8
  %i21 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 1
  %i22 = load i64, i64* %i21, align 8
  %i23 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 2
  %i24 = load i64, i64* %i23, align 8
  %i25 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 3
  %i26 = load i64, i64* %i25, align 8
  %i27 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 4
  %i28 = load i64, i64* %i27, align 8
  %i29 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 5
  %i30 = load i64, i64* %i29, align 8
  br label %"sha_transform$3_call_recursive_function"

"sha_transform$3_extract_return_values$0":        ; preds = %"sha_transform$3_call_recursive_function"
  %i31 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 0
  %i32 = load i64, i64* %i31, align 8
  %i33 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 1
  %i34 = load i64, i64* %i33, align 8
  %i35 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 2
  %i36 = load i64, i64* %i35, align 8
  %i37 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 3
  %i38 = load i64, i64* %i37, align 8
  %i39 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 4
  %i40 = load i64, i64* %i39, align 8
  br label %for.body51.preheader

for.body51.preheader:                             ; preds = %"sha_transform$3_extract_return_values$0"
  br label %"sha_transform$2_initialize_context"

"sha_transform$2_initialize_context":             ; preds = %for.body51.preheader
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  br label %"sha_transform$2_call_recursive_function"

"sha_transform$2_call_recursive_function":        ; preds = %"sha_transform$2_extract_next_values", %"sha_transform$2_initialize_context"
  %i41 = phi i64 [ %i40, %"sha_transform$2_initialize_context" ], [ %i50, %"sha_transform$2_extract_next_values" ]
  %i42 = phi i64 [ %i36, %"sha_transform$2_initialize_context" ], [ %i52, %"sha_transform$2_extract_next_values" ]
  %i43 = phi i64 [ %i38, %"sha_transform$2_initialize_context" ], [ %i54, %"sha_transform$2_extract_next_values" ]
  %i44 = phi i64 [ %i34, %"sha_transform$2_initialize_context" ], [ %i56, %"sha_transform$2_extract_next_values" ]
  %i45 = phi i64 [ 20, %"sha_transform$2_initialize_context" ], [ %i58, %"sha_transform$2_extract_next_values" ]
  %i46 = phi i64 [ %i32, %"sha_transform$2_initialize_context" ], [ %i60, %"sha_transform$2_extract_next_values" ]
  call void @"sha_transform$2"(i64 %i41, i64 %i42, i64 %i43, i64 %i44, i64 %i45, i64 %i46, i8 0)
  %i47 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 6
  %i48 = load i1, i1* %i47, align 1
  br i1 %i48, label %"sha_transform$2_extract_return_values$0", label %"sha_transform$2_extract_next_values"

"sha_transform$2_extract_next_values":            ; preds = %"sha_transform$2_call_recursive_function"
  %i49 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 0
  %i50 = load i64, i64* %i49, align 8
  %i51 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 1
  %i52 = load i64, i64* %i51, align 8
  %i53 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 2
  %i54 = load i64, i64* %i53, align 8
  %i55 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 3
  %i56 = load i64, i64* %i55, align 8
  %i57 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 4
  %i58 = load i64, i64* %i57, align 8
  %i59 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 5
  %i60 = load i64, i64* %i59, align 8
  br label %"sha_transform$2_call_recursive_function"

"sha_transform$2_extract_return_values$0":        ; preds = %"sha_transform$2_call_recursive_function"
  %i61 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 0
  %i62 = load i64, i64* %i61, align 8
  %i63 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 1
  %i64 = load i64, i64* %i63, align 8
  %i65 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 2
  %i66 = load i64, i64* %i65, align 8
  %i67 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 3
  %i68 = load i64, i64* %i67, align 8
  %i69 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 4
  %i70 = load i64, i64* %i69, align 8
  br label %for.body71.preheader

for.body71.preheader:                             ; preds = %"sha_transform$2_extract_return_values$0"
  br label %"sha_transform$1_initialize_context"

"sha_transform$1_initialize_context":             ; preds = %for.body71.preheader
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  br label %"sha_transform$1_call_recursive_function"

"sha_transform$1_call_recursive_function":        ; preds = %"sha_transform$1_extract_next_values", %"sha_transform$1_initialize_context"
  %i71 = phi i64 [ %i70, %"sha_transform$1_initialize_context" ], [ %i80, %"sha_transform$1_extract_next_values" ]
  %i72 = phi i64 [ %i66, %"sha_transform$1_initialize_context" ], [ %i82, %"sha_transform$1_extract_next_values" ]
  %i73 = phi i64 [ %i68, %"sha_transform$1_initialize_context" ], [ %i84, %"sha_transform$1_extract_next_values" ]
  %i74 = phi i64 [ %i64, %"sha_transform$1_initialize_context" ], [ %i86, %"sha_transform$1_extract_next_values" ]
  %i75 = phi i64 [ 40, %"sha_transform$1_initialize_context" ], [ %i88, %"sha_transform$1_extract_next_values" ]
  %i76 = phi i64 [ %i62, %"sha_transform$1_initialize_context" ], [ %i90, %"sha_transform$1_extract_next_values" ]
  call void @"sha_transform$1"(i64 %i71, i64 %i72, i64 %i73, i64 %i74, i64 %i75, i64 %i76, i8 0)
  %i77 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 6
  %i78 = load i1, i1* %i77, align 1
  br i1 %i78, label %"sha_transform$1_extract_return_values$0", label %"sha_transform$1_extract_next_values"

"sha_transform$1_extract_next_values":            ; preds = %"sha_transform$1_call_recursive_function"
  %i79 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 0
  %i80 = load i64, i64* %i79, align 8
  %i81 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 1
  %i82 = load i64, i64* %i81, align 8
  %i83 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 2
  %i84 = load i64, i64* %i83, align 8
  %i85 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 3
  %i86 = load i64, i64* %i85, align 8
  %i87 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 4
  %i88 = load i64, i64* %i87, align 8
  %i89 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 5
  %i90 = load i64, i64* %i89, align 8
  br label %"sha_transform$1_call_recursive_function"

"sha_transform$1_extract_return_values$0":        ; preds = %"sha_transform$1_call_recursive_function"
  %i91 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 0
  %i92 = load i64, i64* %i91, align 8
  %i93 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 1
  %i94 = load i64, i64* %i93, align 8
  %i95 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 2
  %i96 = load i64, i64* %i95, align 8
  %i97 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 3
  %i98 = load i64, i64* %i97, align 8
  %i99 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 4
  %i100 = load i64, i64* %i99, align 8
  br label %for.body94.preheader

for.body94.preheader:                             ; preds = %"sha_transform$1_extract_return_values$0"
  br label %"sha_transform$0_initialize_context"

"sha_transform$0_initialize_context":             ; preds = %for.body94.preheader
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  br label %"sha_transform$0_call_recursive_function"

"sha_transform$0_call_recursive_function":        ; preds = %"sha_transform$0_extract_next_values", %"sha_transform$0_initialize_context"
  %i101 = phi i64 [ %i100, %"sha_transform$0_initialize_context" ], [ %i110, %"sha_transform$0_extract_next_values" ]
  %i102 = phi i64 [ %i96, %"sha_transform$0_initialize_context" ], [ %i112, %"sha_transform$0_extract_next_values" ]
  %i103 = phi i64 [ %i94, %"sha_transform$0_initialize_context" ], [ %i114, %"sha_transform$0_extract_next_values" ]
  %i104 = phi i64 [ %i98, %"sha_transform$0_initialize_context" ], [ %i116, %"sha_transform$0_extract_next_values" ]
  %i105 = phi i64 [ 60, %"sha_transform$0_initialize_context" ], [ %i118, %"sha_transform$0_extract_next_values" ]
  %i106 = phi i64 [ %i92, %"sha_transform$0_initialize_context" ], [ %i120, %"sha_transform$0_extract_next_values" ]
  call void @"sha_transform$0"(i64 %i101, i64 %i102, i64 %i103, i64 %i104, i64 %i105, i64 %i106, i8 0)
  %i107 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 6
  %i108 = load i1, i1* %i107, align 1
  br i1 %i108, label %"sha_transform$0_extract_return_values$0", label %"sha_transform$0_extract_next_values"

"sha_transform$0_extract_next_values":            ; preds = %"sha_transform$0_call_recursive_function"
  %i109 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 0
  %i110 = load i64, i64* %i109, align 8
  %i111 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 1
  %i112 = load i64, i64* %i111, align 8
  %i113 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 2
  %i114 = load i64, i64* %i113, align 8
  %i115 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 3
  %i116 = load i64, i64* %i115, align 8
  %i117 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 4
  %i118 = load i64, i64* %i117, align 8
  %i119 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 5
  %i120 = load i64, i64* %i119, align 8
  br label %"sha_transform$0_call_recursive_function"

"sha_transform$0_extract_return_values$0":        ; preds = %"sha_transform$0_call_recursive_function"
  %i121 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 0
  %i122 = load i64, i64* %i121, align 8
  %i123 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 1
  %i124 = load i64, i64* %i123, align 8
  %i125 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 2
  %i126 = load i64, i64* %i125, align 8
  %i127 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 3
  %i128 = load i64, i64* %i127, align 8
  %i129 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 4
  %i130 = load i64, i64* %i129, align 8
  br label %for.end111

for.end111:                                       ; preds = %"sha_transform$0_extract_return_values$0"
  %add114 = add i64 %i6, %i130
  store i64 %add114, i64* %arrayidx24, align 8, !tbaa !1
  %add117 = add i64 %i7, %i126
  store i64 %add117, i64* %arrayidx26, align 8, !tbaa !1
  %add120 = add i64 %i8, %i128
  store i64 %add120, i64* %arrayidx28, align 8, !tbaa !1
  %add123 = add i64 %i9, %i124
  store i64 %add123, i64* %arrayidx30, align 8, !tbaa !1
  %add126 = add i64 %i10, %i122
  store i64 %add126, i64* %arrayidx32, align 8, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %i) #6
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @sha_final(%struct.SHA_INFO* nocapture %sha_info) #0 {
entry:
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %i = load i64, i64* %count_lo, align 8, !tbaa !5
  %count_hi = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 2
  %i1 = load i64, i64* %count_hi, align 8, !tbaa !7
  %shr = lshr i64 %i, 3
  %shr.tr = trunc i64 %shr to i32
  %conv = and i32 %shr.tr, 63
  %inc = add nuw nsw i32 %conv, 1
  %idxprom35 = zext i32 %conv to i64
  %data = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3
  %i2 = bitcast [16 x i64]* %data to i8*
  %arrayidx = getelementptr inbounds i8, i8* %i2, i64 %idxprom35
  store i8 -128, i8* %arrayidx, align 1, !tbaa !8
  %cmp = icmp ugt i32 %inc, 56
  %idx.ext36 = zext i32 %inc to i64
  %add.ptr = getelementptr inbounds i8, i8* %i2, i64 %idx.ext36
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = xor i32 %conv, 63
  %conv337 = zext i32 %sub to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr, i8 0, i64 %conv337, i1 false)
  %i3 = load i8, i8* %i2, align 1, !tbaa !8
  %arrayidx4.i = getelementptr inbounds i8, i8* %i2, i64 1
  %i4 = load i8, i8* %arrayidx4.i, align 1, !tbaa !8
  %arrayidx6.i = getelementptr inbounds i8, i8* %i2, i64 2
  %i5 = load i8, i8* %arrayidx6.i, align 1, !tbaa !8
  %arrayidx8.i = getelementptr inbounds i8, i8* %i2, i64 3
  %i6 = load i8, i8* %arrayidx8.i, align 1, !tbaa !8
  store i8 %i6, i8* %i2, align 1, !tbaa !8
  store i8 %i5, i8* %arrayidx4.i, align 1, !tbaa !8
  store i8 %i4, i8* %arrayidx6.i, align 1, !tbaa !8
  store i8 %i3, i8* %arrayidx8.i, align 1, !tbaa !8
  %add.ptr3.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 1
  %add.ptr.i = bitcast i64* %add.ptr3.i to i8*
  %i7 = load i8, i8* %add.ptr.i, align 1, !tbaa !8
  %arrayidx4.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 1
  %i8 = load i8, i8* %arrayidx4.1.i, align 1, !tbaa !8
  %arrayidx6.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 2
  %i9 = load i8, i8* %arrayidx6.1.i, align 1, !tbaa !8
  %arrayidx8.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 3
  %i10 = load i8, i8* %arrayidx8.1.i, align 1, !tbaa !8
  store i8 %i10, i8* %add.ptr.i, align 1, !tbaa !8
  store i8 %i9, i8* %arrayidx4.1.i, align 1, !tbaa !8
  store i8 %i8, i8* %arrayidx6.1.i, align 1, !tbaa !8
  store i8 %i7, i8* %arrayidx8.1.i, align 1, !tbaa !8
  %add.ptr.14.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 2
  %add.ptr.1.i = bitcast i64* %add.ptr.14.i to i8*
  %i11 = load i8, i8* %add.ptr.1.i, align 1, !tbaa !8
  %arrayidx4.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 1
  %i12 = load i8, i8* %arrayidx4.2.i, align 1, !tbaa !8
  %arrayidx6.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 2
  %i13 = load i8, i8* %arrayidx6.2.i, align 1, !tbaa !8
  %arrayidx8.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 3
  %i14 = load i8, i8* %arrayidx8.2.i, align 1, !tbaa !8
  store i8 %i14, i8* %add.ptr.1.i, align 1, !tbaa !8
  store i8 %i13, i8* %arrayidx4.2.i, align 1, !tbaa !8
  store i8 %i12, i8* %arrayidx6.2.i, align 1, !tbaa !8
  store i8 %i11, i8* %arrayidx8.2.i, align 1, !tbaa !8
  %add.ptr.25.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 3
  %add.ptr.2.i = bitcast i64* %add.ptr.25.i to i8*
  %i15 = load i8, i8* %add.ptr.2.i, align 1, !tbaa !8
  %arrayidx4.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 1
  %i16 = load i8, i8* %arrayidx4.3.i, align 1, !tbaa !8
  %arrayidx6.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 2
  %i17 = load i8, i8* %arrayidx6.3.i, align 1, !tbaa !8
  %arrayidx8.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 3
  %i18 = load i8, i8* %arrayidx8.3.i, align 1, !tbaa !8
  store i8 %i18, i8* %add.ptr.2.i, align 1, !tbaa !8
  store i8 %i17, i8* %arrayidx4.3.i, align 1, !tbaa !8
  store i8 %i16, i8* %arrayidx6.3.i, align 1, !tbaa !8
  store i8 %i15, i8* %arrayidx8.3.i, align 1, !tbaa !8
  %add.ptr.36.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 4
  %add.ptr.3.i = bitcast i64* %add.ptr.36.i to i8*
  %i19 = load i8, i8* %add.ptr.3.i, align 1, !tbaa !8
  %arrayidx4.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 1
  %i20 = load i8, i8* %arrayidx4.4.i, align 1, !tbaa !8
  %arrayidx6.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 2
  %i21 = load i8, i8* %arrayidx6.4.i, align 1, !tbaa !8
  %arrayidx8.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 3
  %i22 = load i8, i8* %arrayidx8.4.i, align 1, !tbaa !8
  store i8 %i22, i8* %add.ptr.3.i, align 1, !tbaa !8
  store i8 %i21, i8* %arrayidx4.4.i, align 1, !tbaa !8
  store i8 %i20, i8* %arrayidx6.4.i, align 1, !tbaa !8
  store i8 %i19, i8* %arrayidx8.4.i, align 1, !tbaa !8
  %add.ptr.47.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 5
  %add.ptr.4.i = bitcast i64* %add.ptr.47.i to i8*
  %i23 = load i8, i8* %add.ptr.4.i, align 1, !tbaa !8
  %arrayidx4.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 1
  %i24 = load i8, i8* %arrayidx4.5.i, align 1, !tbaa !8
  %arrayidx6.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 2
  %i25 = load i8, i8* %arrayidx6.5.i, align 1, !tbaa !8
  %arrayidx8.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 3
  %i26 = load i8, i8* %arrayidx8.5.i, align 1, !tbaa !8
  store i8 %i26, i8* %add.ptr.4.i, align 1, !tbaa !8
  store i8 %i25, i8* %arrayidx4.5.i, align 1, !tbaa !8
  store i8 %i24, i8* %arrayidx6.5.i, align 1, !tbaa !8
  store i8 %i23, i8* %arrayidx8.5.i, align 1, !tbaa !8
  %add.ptr.58.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 6
  %add.ptr.5.i = bitcast i64* %add.ptr.58.i to i8*
  %i27 = load i8, i8* %add.ptr.5.i, align 1, !tbaa !8
  %arrayidx4.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 1
  %i28 = load i8, i8* %arrayidx4.6.i, align 1, !tbaa !8
  %arrayidx6.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 2
  %i29 = load i8, i8* %arrayidx6.6.i, align 1, !tbaa !8
  %arrayidx8.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 3
  %i30 = load i8, i8* %arrayidx8.6.i, align 1, !tbaa !8
  store i8 %i30, i8* %add.ptr.5.i, align 1, !tbaa !8
  store i8 %i29, i8* %arrayidx4.6.i, align 1, !tbaa !8
  store i8 %i28, i8* %arrayidx6.6.i, align 1, !tbaa !8
  store i8 %i27, i8* %arrayidx8.6.i, align 1, !tbaa !8
  %add.ptr.69.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 7
  %add.ptr.6.i = bitcast i64* %add.ptr.69.i to i8*
  %i31 = load i8, i8* %add.ptr.6.i, align 1, !tbaa !8
  %arrayidx4.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 1
  %i32 = load i8, i8* %arrayidx4.7.i, align 1, !tbaa !8
  %arrayidx6.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 2
  %i33 = load i8, i8* %arrayidx6.7.i, align 1, !tbaa !8
  %arrayidx8.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 3
  %i34 = load i8, i8* %arrayidx8.7.i, align 1, !tbaa !8
  store i8 %i34, i8* %add.ptr.6.i, align 1, !tbaa !8
  store i8 %i33, i8* %arrayidx4.7.i, align 1, !tbaa !8
  store i8 %i32, i8* %arrayidx6.7.i, align 1, !tbaa !8
  store i8 %i31, i8* %arrayidx8.7.i, align 1, !tbaa !8
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %sha_info)
  call void @llvm.memset.p0i8.i64(i8* align 8 %i2, i8 0, i64 56, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %sub10 = sub nsw i32 55, %conv
  %conv11 = sext i32 %sub10 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr, i8 0, i64 %conv11, i1 false)
  %.pre = load i8, i8* %i2, align 1, !tbaa !8
  %arrayidx4.i38.phi.trans.insert = getelementptr inbounds i8, i8* %i2, i64 1
  %.pre76 = load i8, i8* %arrayidx4.i38.phi.trans.insert, align 1, !tbaa !8
  %arrayidx6.i39.phi.trans.insert = getelementptr inbounds i8, i8* %i2, i64 2
  %.pre77 = load i8, i8* %arrayidx6.i39.phi.trans.insert, align 1, !tbaa !8
  %arrayidx8.i40.phi.trans.insert = getelementptr inbounds i8, i8* %i2, i64 3
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
  %i35 = phi i8 [ %.pre138, %if.else ], [ 0, %if.then ]
  %i36 = phi i8 [ %.pre135, %if.else ], [ 0, %if.then ]
  %i37 = phi i8 [ %.pre132, %if.else ], [ 0, %if.then ]
  %i38 = phi i8 [ %.pre129, %if.else ], [ 0, %if.then ]
  %i39 = phi i8 [ %.pre128, %if.else ], [ 0, %if.then ]
  %i40 = phi i8 [ %.pre125, %if.else ], [ 0, %if.then ]
  %i41 = phi i8 [ %.pre122, %if.else ], [ 0, %if.then ]
  %i42 = phi i8 [ %.pre119, %if.else ], [ 0, %if.then ]
  %i43 = phi i8 [ %.pre118, %if.else ], [ 0, %if.then ]
  %i44 = phi i8 [ %.pre115, %if.else ], [ 0, %if.then ]
  %i45 = phi i8 [ %.pre112, %if.else ], [ 0, %if.then ]
  %i46 = phi i8 [ %.pre109, %if.else ], [ 0, %if.then ]
  %i47 = phi i8 [ %.pre108, %if.else ], [ 0, %if.then ]
  %i48 = phi i8 [ %.pre105, %if.else ], [ 0, %if.then ]
  %i49 = phi i8 [ %.pre102, %if.else ], [ 0, %if.then ]
  %i50 = phi i8 [ %.pre99, %if.else ], [ 0, %if.then ]
  %i51 = phi i8 [ %.pre98, %if.else ], [ 0, %if.then ]
  %i52 = phi i8 [ %.pre95, %if.else ], [ 0, %if.then ]
  %i53 = phi i8 [ %.pre92, %if.else ], [ 0, %if.then ]
  %i54 = phi i8 [ %.pre89, %if.else ], [ 0, %if.then ]
  %i55 = phi i8 [ %.pre88, %if.else ], [ 0, %if.then ]
  %i56 = phi i8 [ %.pre85, %if.else ], [ 0, %if.then ]
  %i57 = phi i8 [ %.pre82, %if.else ], [ 0, %if.then ]
  %i58 = phi i8 [ %.pre79, %if.else ], [ 0, %if.then ]
  %i59 = phi i8 [ %.pre78, %if.else ], [ 0, %if.then ]
  %i60 = phi i8 [ %.pre77, %if.else ], [ 0, %if.then ]
  %i61 = phi i8 [ %.pre76, %if.else ], [ 0, %if.then ]
  %i62 = phi i8 [ %.pre, %if.else ], [ 0, %if.then ]
  store i8 %i59, i8* %i2, align 1, !tbaa !8
  store i8 %i60, i8* %arrayidx4.i38.pre-phi, align 1, !tbaa !8
  store i8 %i61, i8* %arrayidx6.i39.pre-phi, align 1, !tbaa !8
  store i8 %i62, i8* %arrayidx8.i40.pre-phi, align 1, !tbaa !8
  store i8 %i55, i8* %add.ptr.i42.pre-phi, align 1, !tbaa !8
  store i8 %i56, i8* %arrayidx4.1.i43.pre-phi, align 1, !tbaa !8
  store i8 %i57, i8* %arrayidx6.1.i44.pre-phi, align 1, !tbaa !8
  store i8 %i58, i8* %arrayidx8.1.i45.pre-phi, align 1, !tbaa !8
  store i8 %i51, i8* %add.ptr.1.i47.pre-phi, align 1, !tbaa !8
  store i8 %i52, i8* %arrayidx4.2.i48.pre-phi, align 1, !tbaa !8
  store i8 %i53, i8* %arrayidx6.2.i49.pre-phi, align 1, !tbaa !8
  store i8 %i54, i8* %arrayidx8.2.i50.pre-phi, align 1, !tbaa !8
  store i8 %i47, i8* %add.ptr.2.i52.pre-phi, align 1, !tbaa !8
  store i8 %i48, i8* %arrayidx4.3.i53.pre-phi, align 1, !tbaa !8
  store i8 %i49, i8* %arrayidx6.3.i54.pre-phi, align 1, !tbaa !8
  store i8 %i50, i8* %arrayidx8.3.i55.pre-phi, align 1, !tbaa !8
  store i8 %i43, i8* %add.ptr.3.i57.pre-phi, align 1, !tbaa !8
  store i8 %i44, i8* %arrayidx4.4.i58.pre-phi, align 1, !tbaa !8
  store i8 %i45, i8* %arrayidx6.4.i59.pre-phi, align 1, !tbaa !8
  store i8 %i46, i8* %arrayidx8.4.i60.pre-phi, align 1, !tbaa !8
  store i8 %i39, i8* %add.ptr.4.i62.pre-phi, align 1, !tbaa !8
  store i8 %i40, i8* %arrayidx4.5.i63.pre-phi, align 1, !tbaa !8
  store i8 %i41, i8* %arrayidx6.5.i64.pre-phi, align 1, !tbaa !8
  store i8 %i42, i8* %arrayidx8.5.i65.pre-phi, align 1, !tbaa !8
  store i8 %i35, i8* %add.ptr.5.i67.pre-phi, align 1, !tbaa !8
  store i8 %i36, i8* %arrayidx4.6.i68.pre-phi, align 1, !tbaa !8
  store i8 %i37, i8* %arrayidx6.6.i69.pre-phi, align 1, !tbaa !8
  store i8 %i38, i8* %arrayidx8.6.i70.pre-phi, align 1, !tbaa !8
  %i63 = load i8, i8* %add.ptr.6.i72.pre-phi, align 1, !tbaa !8
  %i64 = load i8, i8* %arrayidx4.7.i73.pre-phi, align 1, !tbaa !8
  %i65 = load i8, i8* %arrayidx6.7.i74.pre-phi, align 1, !tbaa !8
  %i66 = load i8, i8* %arrayidx8.7.i75.pre-phi, align 1, !tbaa !8
  store i8 %i66, i8* %add.ptr.6.i72.pre-phi, align 1, !tbaa !8
  store i8 %i65, i8* %arrayidx4.7.i73.pre-phi, align 1, !tbaa !8
  store i8 %i64, i8* %arrayidx6.7.i74.pre-phi, align 1, !tbaa !8
  store i8 %i63, i8* %arrayidx8.7.i75.pre-phi, align 1, !tbaa !8
  %arrayidx15 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 14
  store i64 %i1, i64* %arrayidx15, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 15
  store i64 %i, i64* %arrayidx17, align 8, !tbaa !1
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %sha_info)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha_stream(%struct.SHA_INFO* nocapture %sha_info, %struct._IO_FILE* nocapture %fin) #1 {
entry:
  %data = alloca [8192 x i8], align 16
  %i = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %i) #6
  %i1 = bitcast %struct.SHA_INFO* %sha_info to <2 x i64>*
  store <2 x i64> <i64 1732584193, i64 4023233417>, <2 x i64>* %i1, align 8, !tbaa !1
  %arrayidx4.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %i2 = bitcast i64* %arrayidx4.i to <2 x i64>*
  store <2 x i64> <i64 2562383102, i64 271733878>, <2 x i64>* %i2, align 8, !tbaa !1
  %arrayidx8.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %arrayidx8.i, align 8, !tbaa !1
  %count_lo.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %i3 = bitcast i64* %count_lo.i to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %i3, i8 0, i64 16, i1 false)
  %call5 = call i64 @fread(i8* %i, i64 1, i64 8192, %struct._IO_FILE* %fin)
  %conv6 = trunc i64 %call5 to i32
  %cmp7 = icmp sgt i32 %conv6, 0
  br i1 %cmp7, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  br label %"sha_stream$0_initialize_context"

"sha_stream$0_initialize_context":                ; preds = %while.body.preheader
  store %struct._IO_FILE* %fin, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$34", align 8
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35", align 8
  store i8* %i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$36", align 8
  br label %"sha_stream$0_call_recursive_function"

"sha_stream$0_call_recursive_function":           ; preds = %"sha_stream$0_extract_next_values", %"sha_stream$0_initialize_context"
  %i4 = phi i32 [ %conv6, %"sha_stream$0_initialize_context" ], [ %i8, %"sha_stream$0_extract_next_values" ]
  call void @"sha_stream$0"(i32 %i4, i8 0)
  %i5 = getelementptr %10, %10* @"sha_stream$0_recursion_state_struct", i32 0, i32 1
  %i6 = load i1, i1* %i5, align 1
  br i1 %i6, label %while.end.loopexit, label %"sha_stream$0_extract_next_values"

"sha_stream$0_extract_next_values":               ; preds = %"sha_stream$0_call_recursive_function"
  %i7 = getelementptr %10, %10* @"sha_stream$0_recursion_state_struct", i32 0, i32 0
  %i8 = load i32, i32* %i7, align 4
  br label %"sha_stream$0_call_recursive_function"

while.end.loopexit:                               ; preds = %"sha_stream$0_call_recursive_function"
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  tail call void @sha_final(%struct.SHA_INFO* %sha_info)
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %i) #6
  ret void
}

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind uwtable
define void @sha_print(%struct.SHA_INFO* nocapture readonly %sha_info) #1 {
entry:
  %arrayidx = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 0
  %i = load i64, i64* %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 1
  %i1 = load i64, i64* %arrayidx2, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %i2 = load i64, i64* %arrayidx4, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 3
  %i3 = load i64, i64* %arrayidx6, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  %i4 = load i64, i64* %arrayidx8, align 8, !tbaa !1
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %i, i64 %i1, i64 %i2, i64 %i3, i64 %i4)
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

define void @"sha_update$0"(i8* %arg, i32 %arg1, i8 %arg2) {
"sha_update$0_latch$0":
  %i = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16", align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %i, i8* align 1 %arg, i64 64, i1 false)
  %i3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16", align 8
  %i4 = load i8, i8* %i3, align 1, !tbaa !8
  %i5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25", align 8
  %i6 = load i8, i8* %i5, align 1, !tbaa !8
  %i7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$13", align 8
  %i8 = load i8, i8* %i7, align 1, !tbaa !8
  %i9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$10", align 8
  %i10 = load i8, i8* %i9, align 1, !tbaa !8
  %i11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16", align 8
  store i8 %i10, i8* %i11, align 1, !tbaa !8
  %i12 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25", align 8
  store i8 %i8, i8* %i12, align 1, !tbaa !8
  %i13 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$13", align 8
  store i8 %i6, i8* %i13, align 1, !tbaa !8
  %i14 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$10", align 8
  store i8 %i4, i8* %i14, align 1, !tbaa !8
  %i15 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$24", align 8
  %i16 = load i8, i8* %i15, align 1, !tbaa !8
  %i17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$20", align 8
  %i18 = load i8, i8* %i17, align 1, !tbaa !8
  %i19 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$14", align 8
  %i20 = load i8, i8* %i19, align 1, !tbaa !8
  %i21 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$12", align 8
  %i22 = load i8, i8* %i21, align 1, !tbaa !8
  %i23 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$24", align 8
  store i8 %i22, i8* %i23, align 1, !tbaa !8
  %i24 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$20", align 8
  store i8 %i20, i8* %i24, align 1, !tbaa !8
  %i25 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$14", align 8
  store i8 %i18, i8* %i25, align 1, !tbaa !8
  %i26 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$12", align 8
  store i8 %i16, i8* %i26, align 1, !tbaa !8
  %i27 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$9", align 8
  %i28 = load i8, i8* %i27, align 1, !tbaa !8
  %i29 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$22", align 8
  %i30 = load i8, i8* %i29, align 1, !tbaa !8
  %i31 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26", align 8
  %i32 = load i8, i8* %i31, align 1, !tbaa !8
  %i33 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27", align 8
  %i34 = load i8, i8* %i33, align 1, !tbaa !8
  %i35 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$9", align 8
  store i8 %i34, i8* %i35, align 1, !tbaa !8
  %i36 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$22", align 8
  store i8 %i32, i8* %i36, align 1, !tbaa !8
  %i37 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26", align 8
  store i8 %i30, i8* %i37, align 1, !tbaa !8
  %i38 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27", align 8
  store i8 %i28, i8* %i38, align 1, !tbaa !8
  %i39 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$18", align 8
  %i40 = load i8, i8* %i39, align 1, !tbaa !8
  %i41 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29", align 8
  %i42 = load i8, i8* %i41, align 1, !tbaa !8
  %i43 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31", align 8
  %i44 = load i8, i8* %i43, align 1, !tbaa !8
  %i45 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32", align 8
  %i46 = load i8, i8* %i45, align 1, !tbaa !8
  %i47 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$18", align 8
  store i8 %i46, i8* %i47, align 1, !tbaa !8
  %i48 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29", align 8
  store i8 %i44, i8* %i48, align 1, !tbaa !8
  %i49 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31", align 8
  store i8 %i42, i8* %i49, align 1, !tbaa !8
  %i50 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32", align 8
  store i8 %i40, i8* %i50, align 1, !tbaa !8
  %i51 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$19", align 8
  %i52 = load i8, i8* %i51, align 1, !tbaa !8
  %i53 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$15", align 8
  %i54 = load i8, i8* %i53, align 1, !tbaa !8
  %i55 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$8", align 8
  %i56 = load i8, i8* %i55, align 1, !tbaa !8
  %i57 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$7", align 8
  %i58 = load i8, i8* %i57, align 1, !tbaa !8
  %i59 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$19", align 8
  store i8 %i58, i8* %i59, align 1, !tbaa !8
  %i60 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$15", align 8
  store i8 %i56, i8* %i60, align 1, !tbaa !8
  %i61 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$8", align 8
  store i8 %i54, i8* %i61, align 1, !tbaa !8
  %i62 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$7", align 8
  store i8 %i52, i8* %i62, align 1, !tbaa !8
  %i63 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$6", align 8
  %i64 = load i8, i8* %i63, align 1, !tbaa !8
  %i65 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$23", align 8
  %i66 = load i8, i8* %i65, align 1, !tbaa !8
  %i67 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$5", align 8
  %i68 = load i8, i8* %i67, align 1, !tbaa !8
  %i69 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$4", align 8
  %i70 = load i8, i8* %i69, align 1, !tbaa !8
  %i71 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$6", align 8
  store i8 %i70, i8* %i71, align 1, !tbaa !8
  %i72 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$23", align 8
  store i8 %i68, i8* %i72, align 1, !tbaa !8
  %i73 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$5", align 8
  store i8 %i66, i8* %i73, align 1, !tbaa !8
  %i74 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$4", align 8
  store i8 %i64, i8* %i74, align 1, !tbaa !8
  %i75 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$17", align 8
  %i76 = load i8, i8* %i75, align 1, !tbaa !8
  %i77 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$3", align 8
  %i78 = load i8, i8* %i77, align 1, !tbaa !8
  %i79 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28", align 8
  %i80 = load i8, i8* %i79, align 1, !tbaa !8
  %i81 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30", align 8
  %i82 = load i8, i8* %i81, align 1, !tbaa !8
  %i83 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$17", align 8
  store i8 %i82, i8* %i83, align 1, !tbaa !8
  %i84 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$3", align 8
  store i8 %i80, i8* %i84, align 1, !tbaa !8
  %i85 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28", align 8
  store i8 %i78, i8* %i85, align 1, !tbaa !8
  %i86 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30", align 8
  store i8 %i76, i8* %i86, align 1, !tbaa !8
  %i87 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$2", align 8
  %i88 = load i8, i8* %i87, align 1, !tbaa !8
  %i89 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$11", align 8
  %i90 = load i8, i8* %i89, align 1, !tbaa !8
  %i91 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$1", align 8
  %i92 = load i8, i8* %i91, align 1, !tbaa !8
  %i93 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$21", align 8
  %i94 = load i8, i8* %i93, align 1, !tbaa !8
  %i95 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$2", align 8
  store i8 %i94, i8* %i95, align 1, !tbaa !8
  %i96 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$11", align 8
  store i8 %i92, i8* %i96, align 1, !tbaa !8
  %i97 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$1", align 8
  store i8 %i90, i8* %i97, align 1, !tbaa !8
  %i98 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$21", align 8
  store i8 %i88, i8* %i98, align 1, !tbaa !8
  %i99 = load %struct.SHA_INFO*, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$0", align 8
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %i99)
  %add.ptr = getelementptr inbounds i8, i8* %arg, i64 64
  %sub = add nsw i32 %arg1, -64
  %cmp10 = icmp sgt i32 %sub, 63
  br i1 %cmp10, label %"sha_update$0_increment_depth_counter", label %"sha_update$0_return_from_recursive_function$0", !llvm.loop !9

"sha_update$0_increment_depth_counter":           ; preds = %"sha_update$0_latch$0"
  %i100 = add i8 %arg2, 1
  %i101 = icmp ult i8 %i100, 32
  br i1 %i101, label %"sha_update$0_recursively_call_function", label %"sha_update$0_save_recursive_state_and_return"

"sha_update$0_recursively_call_function":         ; preds = %"sha_update$0_increment_depth_counter"
  call void @"sha_update$0"(i8* %add.ptr, i32 %sub, i8 %i100)
  ret void

"sha_update$0_save_recursive_state_and_return":   ; preds = %"sha_update$0_increment_depth_counter"
  %i102 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 0
  store i8* %add.ptr, i8** %i102, align 8
  %i103 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 1
  store i32 %sub, i32* %i103, align 4
  %i104 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 2
  store i1 false, i1* %i104, align 1
  ret void

"sha_update$0_return_from_recursive_function$0":  ; preds = %"sha_update$0_latch$0"
  %i105 = getelementptr %0, %0* @"sha_update$0_recursion_state_struct", i32 0, i32 2
  store i1 true, i1* %i105, align 1
  ret void
}

define void @"sha_transform$4"(i64 %arg, i8 %arg1) {
"sha_transform$4_latch$0":
  %i = add nsw i64 %arg, -3
  %i2 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx7 = getelementptr inbounds [80 x i64], [80 x i64]* %i2, i64 0, i64 %i
  %i3 = load i64, i64* %arrayidx7, align 8, !tbaa !1
  %i4 = add nsw i64 %arg, -8
  %i5 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx10 = getelementptr inbounds [80 x i64], [80 x i64]* %i5, i64 0, i64 %i4
  %i6 = load i64, i64* %arrayidx10, align 16, !tbaa !1
  %xor = xor i64 %i6, %i3
  %i7 = add nsw i64 %arg, -14
  %i8 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx13 = getelementptr inbounds [80 x i64], [80 x i64]* %i8, i64 0, i64 %i7
  %i9 = load i64, i64* %arrayidx13, align 16, !tbaa !1
  %xor14 = xor i64 %xor, %i9
  %i10 = add nsw i64 %arg, -16
  %i11 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx17 = getelementptr inbounds [80 x i64], [80 x i64]* %i11, i64 0, i64 %i10
  %i12 = load i64, i64* %arrayidx17, align 16, !tbaa !1
  %xor18 = xor i64 %xor14, %i12
  %i13 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx20 = getelementptr inbounds [80 x i64], [80 x i64]* %i13, i64 0, i64 %arg
  store i64 %xor18, i64* %arrayidx20, align 16, !tbaa !1
  %indvars.iv.next253 = or i64 %arg, 1
  %i14 = add nsw i64 %arg, -2
  %i15 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx7.1 = getelementptr inbounds [80 x i64], [80 x i64]* %i15, i64 0, i64 %i14
  %i16 = load i64, i64* %arrayidx7.1, align 16, !tbaa !1
  %i17 = add nsw i64 %arg, -7
  %i18 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx10.1 = getelementptr inbounds [80 x i64], [80 x i64]* %i18, i64 0, i64 %i17
  %i19 = load i64, i64* %arrayidx10.1, align 8, !tbaa !1
  %xor.1 = xor i64 %i19, %i16
  %i20 = add nsw i64 %arg, -13
  %i21 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx13.1 = getelementptr inbounds [80 x i64], [80 x i64]* %i21, i64 0, i64 %i20
  %i22 = load i64, i64* %arrayidx13.1, align 8, !tbaa !1
  %xor14.1 = xor i64 %xor.1, %i22
  %i23 = add nsw i64 %arg, -15
  %i24 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx17.1 = getelementptr inbounds [80 x i64], [80 x i64]* %i24, i64 0, i64 %i23
  %i25 = load i64, i64* %arrayidx17.1, align 8, !tbaa !1
  %xor18.1 = xor i64 %xor14.1, %i25
  %i26 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx20.1 = getelementptr inbounds [80 x i64], [80 x i64]* %i26, i64 0, i64 %indvars.iv.next253
  store i64 %xor18.1, i64* %arrayidx20.1, align 8, !tbaa !1
  %indvars.iv.next253.1 = add nsw i64 %arg, 2
  %exitcond258.1 = icmp eq i64 %indvars.iv.next253.1, 80
  br i1 %exitcond258.1, label %"sha_transform$4_return_from_recursive_function$0", label %"sha_transform$4_increment_depth_counter"

"sha_transform$4_increment_depth_counter":        ; preds = %"sha_transform$4_latch$0"
  %i27 = add i8 %arg1, 1
  %i28 = icmp ult i8 %i27, 32
  br i1 %i28, label %"sha_transform$4_recursively_call_function", label %"sha_transform$4_save_recursive_state_and_return"

"sha_transform$4_recursively_call_function":      ; preds = %"sha_transform$4_increment_depth_counter"
  call void @"sha_transform$4"(i64 %indvars.iv.next253.1, i8 %i27)
  ret void

"sha_transform$4_save_recursive_state_and_return": ; preds = %"sha_transform$4_increment_depth_counter"
  %i29 = getelementptr %1, %1* @"sha_transform$4_recursion_state_struct", i32 0, i32 0
  store i64 %indvars.iv.next253.1, i64* %i29, align 8
  %i30 = getelementptr %1, %1* @"sha_transform$4_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %i30, align 1
  ret void

"sha_transform$4_return_from_recursive_function$0": ; preds = %"sha_transform$4_latch$0"
  %i31 = getelementptr %1, %1* @"sha_transform$4_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %i31, align 1
  ret void
}

define void @"sha_transform$3"(i64 %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i8 %arg6) {
"sha_transform$3_latch$0":
  %shl = shl i64 %arg, 5
  %shr = lshr i64 %arg, 27
  %or = or i64 %shl, %shr
  %and = and i64 %arg2, %arg1
  %neg = xor i64 %arg1, -1
  %and36 = and i64 %arg3, %neg
  %or37 = or i64 %and36, %and
  %i = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx40 = getelementptr inbounds [80 x i64], [80 x i64]* %i, i64 0, i64 %arg4
  %i7 = load i64, i64* %arrayidx40, align 8, !tbaa !1
  %add = add i64 %or, 1518500249
  %add38 = add i64 %add, %arg5
  %add41 = add i64 %add38, %or37
  %add42 = add i64 %add41, %i7
  %shl43 = shl i64 %arg1, 30
  %shr44 = lshr i64 %arg1, 2
  %or45 = or i64 %shl43, %shr44
  %indvars.iv.next250 = add nuw nsw i64 %arg4, 1
  %exitcond251 = icmp eq i64 %indvars.iv.next250, 20
  br i1 %exitcond251, label %"sha_transform$3_return_from_recursive_function$0", label %"sha_transform$3_increment_depth_counter"

"sha_transform$3_increment_depth_counter":        ; preds = %"sha_transform$3_latch$0"
  %i8 = add i8 %arg6, 1
  %i9 = icmp ult i8 %i8, 32
  br i1 %i9, label %"sha_transform$3_recursively_call_function", label %"sha_transform$3_save_recursive_state_and_return"

"sha_transform$3_recursively_call_function":      ; preds = %"sha_transform$3_increment_depth_counter"
  call void @"sha_transform$3"(i64 %add42, i64 %arg, i64 %or45, i64 %arg2, i64 %indvars.iv.next250, i64 %arg3, i8 %i8)
  ret void

"sha_transform$3_save_recursive_state_and_return": ; preds = %"sha_transform$3_increment_depth_counter"
  %i10 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 0
  store i64 %add42, i64* %i10, align 8
  %i11 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 1
  store i64 %arg, i64* %i11, align 8
  %i12 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 2
  store i64 %or45, i64* %i12, align 8
  %i13 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 3
  store i64 %arg2, i64* %i13, align 8
  %i14 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 4
  store i64 %indvars.iv.next250, i64* %i14, align 8
  %i15 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 5
  store i64 %arg3, i64* %i15, align 8
  %i16 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 6
  store i1 false, i1* %i16, align 1
  ret void

"sha_transform$3_return_from_recursive_function$0": ; preds = %"sha_transform$3_latch$0"
  %i17 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 0
  store i64 %arg3, i64* %i17, align 8
  %i18 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 1
  store i64 %arg2, i64* %i18, align 8
  %i19 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 2
  store i64 %arg, i64* %i19, align 8
  %i20 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 3
  store i64 %or45, i64* %i20, align 8
  %i21 = getelementptr %2, %2* @"sha_transform$3_return_value_struct", i32 0, i32 4
  store i64 %add42, i64* %i21, align 8
  %i22 = getelementptr %3, %3* @"sha_transform$3_recursion_state_struct", i32 0, i32 6
  store i1 true, i1* %i22, align 1
  ret void
}

define void @"sha_transform$2"(i64 %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i8 %arg6) {
"sha_transform$2_latch$0":
  %shl52 = shl i64 %arg, 5
  %shr53 = lshr i64 %arg, 27
  %or54 = or i64 %shl52, %shr53
  %xor55 = xor i64 %arg2, %arg1
  %xor56 = xor i64 %xor55, %arg3
  %i = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx60 = getelementptr inbounds [80 x i64], [80 x i64]* %i, i64 0, i64 %arg4
  %i7 = load i64, i64* %arrayidx60, align 8, !tbaa !1
  %add57 = add i64 %or54, 1859775393
  %add58 = add i64 %add57, %xor56
  %add61 = add i64 %add58, %arg5
  %add62 = add i64 %add61, %i7
  %shl63 = shl i64 %arg1, 30
  %shr64 = lshr i64 %arg1, 2
  %or65 = or i64 %shl63, %shr64
  %indvars.iv.next247 = add nuw nsw i64 %arg4, 1
  %exitcond248 = icmp eq i64 %indvars.iv.next247, 40
  br i1 %exitcond248, label %"sha_transform$2_return_from_recursive_function$0", label %"sha_transform$2_increment_depth_counter"

"sha_transform$2_increment_depth_counter":        ; preds = %"sha_transform$2_latch$0"
  %i8 = add i8 %arg6, 1
  %i9 = icmp ult i8 %i8, 32
  br i1 %i9, label %"sha_transform$2_recursively_call_function", label %"sha_transform$2_save_recursive_state_and_return"

"sha_transform$2_recursively_call_function":      ; preds = %"sha_transform$2_increment_depth_counter"
  call void @"sha_transform$2"(i64 %add62, i64 %arg, i64 %or65, i64 %arg2, i64 %indvars.iv.next247, i64 %arg3, i8 %i8)
  ret void

"sha_transform$2_save_recursive_state_and_return": ; preds = %"sha_transform$2_increment_depth_counter"
  %i10 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 0
  store i64 %add62, i64* %i10, align 8
  %i11 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 1
  store i64 %arg, i64* %i11, align 8
  %i12 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 2
  store i64 %or65, i64* %i12, align 8
  %i13 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 3
  store i64 %arg2, i64* %i13, align 8
  %i14 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 4
  store i64 %indvars.iv.next247, i64* %i14, align 8
  %i15 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 5
  store i64 %arg3, i64* %i15, align 8
  %i16 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 6
  store i1 false, i1* %i16, align 1
  ret void

"sha_transform$2_return_from_recursive_function$0": ; preds = %"sha_transform$2_latch$0"
  %i17 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 0
  store i64 %arg3, i64* %i17, align 8
  %i18 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 1
  store i64 %arg2, i64* %i18, align 8
  %i19 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 2
  store i64 %arg, i64* %i19, align 8
  %i20 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 3
  store i64 %or65, i64* %i20, align 8
  %i21 = getelementptr %4, %4* @"sha_transform$2_return_value_struct", i32 0, i32 4
  store i64 %add62, i64* %i21, align 8
  %i22 = getelementptr %5, %5* @"sha_transform$2_recursion_state_struct", i32 0, i32 6
  store i1 true, i1* %i22, align 1
  ret void
}

define void @"sha_transform$1"(i64 %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i8 %arg6) {
"sha_transform$1_latch$0":
  %shl72 = shl i64 %arg, 5
  %shr73 = lshr i64 %arg, 27
  %or74 = or i64 %shl72, %shr73
  %and76216 = or i64 %arg3, %arg2
  %or77 = and i64 %and76216, %arg1
  %and78 = and i64 %arg3, %arg2
  %or79 = or i64 %or77, %and78
  %i = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx83 = getelementptr inbounds [80 x i64], [80 x i64]* %i, i64 0, i64 %arg4
  %i7 = load i64, i64* %arrayidx83, align 8, !tbaa !1
  %add80 = add i64 %or74, 2400959708
  %add81 = add i64 %add80, %arg5
  %add84 = add i64 %add81, %or79
  %add85 = add i64 %add84, %i7
  %shl86 = shl i64 %arg1, 30
  %shr87 = lshr i64 %arg1, 2
  %or88 = or i64 %shl86, %shr87
  %indvars.iv.next244 = add nuw nsw i64 %arg4, 1
  %exitcond245 = icmp eq i64 %indvars.iv.next244, 60
  br i1 %exitcond245, label %"sha_transform$1_return_from_recursive_function$0", label %"sha_transform$1_increment_depth_counter"

"sha_transform$1_increment_depth_counter":        ; preds = %"sha_transform$1_latch$0"
  %i8 = add i8 %arg6, 1
  %i9 = icmp ult i8 %i8, 32
  br i1 %i9, label %"sha_transform$1_recursively_call_function", label %"sha_transform$1_save_recursive_state_and_return"

"sha_transform$1_recursively_call_function":      ; preds = %"sha_transform$1_increment_depth_counter"
  call void @"sha_transform$1"(i64 %add85, i64 %arg, i64 %or88, i64 %arg2, i64 %indvars.iv.next244, i64 %arg3, i8 %i8)
  ret void

"sha_transform$1_save_recursive_state_and_return": ; preds = %"sha_transform$1_increment_depth_counter"
  %i10 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 0
  store i64 %add85, i64* %i10, align 8
  %i11 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 1
  store i64 %arg, i64* %i11, align 8
  %i12 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 2
  store i64 %or88, i64* %i12, align 8
  %i13 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 3
  store i64 %arg2, i64* %i13, align 8
  %i14 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 4
  store i64 %indvars.iv.next244, i64* %i14, align 8
  %i15 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 5
  store i64 %arg3, i64* %i15, align 8
  %i16 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 6
  store i1 false, i1* %i16, align 1
  ret void

"sha_transform$1_return_from_recursive_function$0": ; preds = %"sha_transform$1_latch$0"
  %i17 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 0
  store i64 %arg3, i64* %i17, align 8
  %i18 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 1
  store i64 %arg2, i64* %i18, align 8
  %i19 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 2
  store i64 %arg, i64* %i19, align 8
  %i20 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 3
  store i64 %or88, i64* %i20, align 8
  %i21 = getelementptr %6, %6* @"sha_transform$1_return_value_struct", i32 0, i32 4
  store i64 %add85, i64* %i21, align 8
  %i22 = getelementptr %7, %7* @"sha_transform$1_recursion_state_struct", i32 0, i32 6
  store i1 true, i1* %i22, align 1
  ret void
}

define void @"sha_transform$0"(i64 %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i8 %arg6) {
"sha_transform$0_latch$0":
  %shl95 = shl i64 %arg, 5
  %shr96 = lshr i64 %arg, 27
  %or97 = or i64 %shl95, %shr96
  %xor98 = xor i64 %arg3, %arg1
  %xor99 = xor i64 %xor98, %arg2
  %i = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33", align 8
  %arrayidx103 = getelementptr inbounds [80 x i64], [80 x i64]* %i, i64 0, i64 %arg4
  %i7 = load i64, i64* %arrayidx103, align 8, !tbaa !1
  %add100 = add i64 %or97, 3395469782
  %add101 = add i64 %add100, %xor99
  %add104 = add i64 %add101, %arg5
  %add105 = add i64 %add104, %i7
  %shl106 = shl i64 %arg1, 30
  %shr107 = lshr i64 %arg1, 2
  %or108 = or i64 %shl106, %shr107
  %indvars.iv.next = add nuw nsw i64 %arg4, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond, label %"sha_transform$0_return_from_recursive_function$0", label %"sha_transform$0_increment_depth_counter"

"sha_transform$0_increment_depth_counter":        ; preds = %"sha_transform$0_latch$0"
  %i8 = add i8 %arg6, 1
  %i9 = icmp ult i8 %i8, 32
  br i1 %i9, label %"sha_transform$0_recursively_call_function", label %"sha_transform$0_save_recursive_state_and_return"

"sha_transform$0_recursively_call_function":      ; preds = %"sha_transform$0_increment_depth_counter"
  call void @"sha_transform$0"(i64 %add105, i64 %arg, i64 %arg3, i64 %or108, i64 %indvars.iv.next, i64 %arg2, i8 %i8)
  ret void

"sha_transform$0_save_recursive_state_and_return": ; preds = %"sha_transform$0_increment_depth_counter"
  %i10 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 0
  store i64 %add105, i64* %i10, align 8
  %i11 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 1
  store i64 %arg, i64* %i11, align 8
  %i12 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 2
  store i64 %arg3, i64* %i12, align 8
  %i13 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 3
  store i64 %or108, i64* %i13, align 8
  %i14 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 4
  store i64 %indvars.iv.next, i64* %i14, align 8
  %i15 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 5
  store i64 %arg2, i64* %i15, align 8
  %i16 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 6
  store i1 false, i1* %i16, align 1
  ret void

"sha_transform$0_return_from_recursive_function$0": ; preds = %"sha_transform$0_latch$0"
  %i17 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 0
  store i64 %arg2, i64* %i17, align 8
  %i18 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 1
  store i64 %arg3, i64* %i18, align 8
  %i19 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 2
  store i64 %arg, i64* %i19, align 8
  %i20 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 3
  store i64 %or108, i64* %i20, align 8
  %i21 = getelementptr %8, %8* @"sha_transform$0_return_value_struct", i32 0, i32 4
  store i64 %add105, i64* %i21, align 8
  %i22 = getelementptr %9, %9* @"sha_transform$0_recursion_state_struct", i32 0, i32 6
  store i1 true, i1* %i22, align 1
  ret void
}

define void @"sha_stream$0"(i32 %arg, i8 %arg1) {
"sha_stream$0_latch$0":
  %i = load %struct.SHA_INFO*, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35", align 8
  %i2 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$36", align 8
  call void @sha_update(%struct.SHA_INFO* %i, i8* %i2, i32 %arg)
  %i3 = load %struct._IO_FILE*, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$34", align 8
  %i4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$36", align 8
  %call = call i64 @fread(i8* %i4, i64 1, i64 8192, %struct._IO_FILE* %i3)
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %"sha_stream$0_increment_depth_counter", label %"sha_stream$0_return_from_recursive_function$0", !llvm.loop !9

"sha_stream$0_increment_depth_counter":           ; preds = %"sha_stream$0_latch$0"
  %i5 = add i8 %arg1, 1
  %i6 = icmp ult i8 %i5, 32
  br i1 %i6, label %"sha_stream$0_recursively_call_function", label %"sha_stream$0_save_recursive_state_and_return"

"sha_stream$0_recursively_call_function":         ; preds = %"sha_stream$0_increment_depth_counter"
  call void @"sha_stream$0"(i32 %conv, i8 %i5)
  ret void

"sha_stream$0_save_recursive_state_and_return":   ; preds = %"sha_stream$0_increment_depth_counter"
  %i7 = getelementptr %10, %10* @"sha_stream$0_recursion_state_struct", i32 0, i32 0
  store i32 %conv, i32* %i7, align 4
  %i8 = getelementptr %10, %10* @"sha_stream$0_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %i8, align 1
  ret void

"sha_stream$0_return_from_recursive_function$0":  ; preds = %"sha_stream$0_latch$0"
  %i9 = getelementptr %10, %10* @"sha_stream$0_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %i9, align 1
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
