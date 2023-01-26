; ModuleID = './benchmark_intermediate_representations/loop2recursion/sha/sha.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/sha/sha.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64, i64, i64, i64, i64 }
%1 = type { i64, i64, i64, i64, i64 }
%2 = type { i64, i64, i64, i64, i64 }
%3 = type { i64, i64, i64, i64, i64 }
%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$0" = dso_local global i8* null
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
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$24" = dso_local global %struct.SHA_INFO* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33" = dso_local global [80 x i64]* null
@"sha_transform$3_return_value_struct" = dso_local global %0 zeroinitializer
@"sha_transform$2_return_value_struct" = dso_local global %1 zeroinitializer
@"sha_transform$1_return_value_struct" = dso_local global %2 zeroinitializer
@"sha_transform$0_return_value_struct" = dso_local global %3 zeroinitializer
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$34" = dso_local global %struct._IO_FILE* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$36" = dso_local global %struct.SHA_INFO* null

; Function Attrs: norecurse nounwind uwtable
define void @sha_init(%struct.SHA_INFO* nocapture %sha_info) #0 {
entry:
  %tmp = bitcast %struct.SHA_INFO* %sha_info to <2 x i64>*
  store <2 x i64> <i64 1732584193, i64 4023233417>, <2 x i64>* %tmp, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %tmp1 = bitcast i64* %arrayidx4 to <2 x i64>*
  store <2 x i64> <i64 2562383102, i64 271733878>, <2 x i64>* %tmp1, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %arrayidx8, align 8, !tbaa !1
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %tmp2 = bitcast i64* %count_lo to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %tmp2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @sha_update(%struct.SHA_INFO* nocapture %sha_info, i8* nocapture readonly %buffer, i32 %count) #0 {
entry:
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %tmp = load i64, i64* %count_lo, align 8, !tbaa !5
  %conv = sext i32 %count to i64
  %shl = shl nsw i64 %conv, 3
  %add = add i64 %tmp, %shl
  %cmp = icmp ult i64 %add, %tmp
  %count_hi = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 2
  %tmp1 = load i64, i64* %count_hi, align 8, !tbaa !7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %inc = add i64 %tmp1, 1
  store i64 %inc, i64* %count_hi, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp2 = phi i64 [ %inc, %if.then ], [ %tmp1, %entry ]
  store i64 %add, i64* %count_lo, align 8, !tbaa !5
  %shr = lshr i64 %conv, 29
  %add9 = add i64 %tmp2, %shr
  store i64 %add9, i64* %count_hi, align 8, !tbaa !7
  %cmp1030 = icmp sgt i32 %count, 63
  %arraydecay = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 0
  %tmp3 = bitcast i64* %arraydecay to i8*
  br i1 %cmp1030, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %arrayidx4.i = getelementptr inbounds i8, i8* %tmp3, i64 1
  %arrayidx6.i = getelementptr inbounds i8, i8* %tmp3, i64 2
  %arrayidx8.i = getelementptr inbounds i8, i8* %tmp3, i64 3
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
  %tmp4 = add i32 %count, -64
  %tmp5 = lshr i32 %tmp4, 6
  %tmp6 = shl nuw i32 %tmp5, 6
  %tmp7 = zext i32 %tmp5 to i64
  %tmp8 = shl nuw nsw i64 %tmp7, 6
  %tmp9 = add nuw nsw i64 %tmp8, 64
  br label %"sha_update$0_initialize_context"

"sha_update$0_initialize_context":                ; preds = %while.body.lr.ph
  store i8* %arrayidx8.1.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$0"
  store i8* %arrayidx6.1.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$1"
  store i8* %arrayidx8.2.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$2"
  store i8* %arrayidx4.7.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$3"
  store i8* %arrayidx4.6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$4"
  store i8* %arrayidx6.7.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$5"
  store i8* %arrayidx6.6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$6"
  store i8* %arrayidx6.3.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$7"
  store i8* %arrayidx8.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$8"
  store i8* %arrayidx6.2.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$9"
  store i8* %arrayidx4.1.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$10"
  store i8* %arrayidx4.4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$11"
  store i8* %arrayidx4.5.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$12"
  store i8* %arrayidx6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$13"
  store i8* %arrayidx4.2.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$14"
  store i8* %add.ptr.3.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$15"
  store i8* %tmp3, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16"
  store i8* %arrayidx4.3.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$17"
  store i8* %add.ptr.6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$18"
  store i8* %add.ptr.1.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$19"
  store i8* %arrayidx8.3.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$20"
  store i8* %arrayidx6.5.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$21"
  store i8* %add.ptr.2.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$22"
  store i8* %arrayidx6.4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$23"
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$24"
  store i8* %add.ptr.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25"
  store i8* %arrayidx8.4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26"
  store i8* %arrayidx8.5.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27"
  store i8* %arrayidx4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28"
  store i8* %add.ptr.4.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29"
  store i8* %add.ptr.5.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30"
  store i8* %arrayidx8.7.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31"
  store i8* %arrayidx8.6.i, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32"
  br label %"sha_update$0_call_recursive_function"

"sha_update$0_call_recursive_function":           ; preds = %"sha_update$0_initialize_context"
  call void @"sha_update$0"(i8* %buffer, i32 %count)
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %"sha_update$0_call_recursive_function"
  %tmp10 = sub i32 %tmp4, %tmp6
  %scevgep = getelementptr i8, i8* %buffer, i64 %tmp9
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %count.addr.0.lcssa = phi i32 [ %count, %if.end ], [ %tmp10, %while.end.loopexit ]
  %buffer.addr.0.lcssa = phi i8* [ %buffer, %if.end ], [ %scevgep, %while.end.loopexit ]
  %conv16 = sext i32 %count.addr.0.lcssa to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp3, i8* align 1 %buffer.addr.0.lcssa, i64 %conv16, i1 false)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @sha_transform(%struct.SHA_INFO* nocapture %sha_info) unnamed_addr #0 {
entry:
  %W = alloca [80 x i64], align 16
  %tmp = bitcast [80 x i64]* %W to i8*
  call void @llvm.lifetime.start.p0i8(i64 640, i8* %tmp) #4
  %scevgep = getelementptr %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 0
  %scevgep262 = bitcast i64* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %tmp, i8* align 8 %scevgep262, i64 128, i1 false)
  br label %"sha_transform$4_initialize_context"

"sha_transform$4_initialize_context":             ; preds = %entry
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  br label %"sha_transform$4_call_recursive_function"

"sha_transform$4_call_recursive_function":        ; preds = %"sha_transform$4_initialize_context"
  call void @"sha_transform$4"(i64 16)
  br label %for.end23

for.end23:                                        ; preds = %"sha_transform$4_call_recursive_function"
  %arrayidx24 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 0
  %tmp1 = load i64, i64* %arrayidx24, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 1
  %tmp2 = load i64, i64* %arrayidx26, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %tmp3 = load i64, i64* %arrayidx28, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 3
  %tmp4 = load i64, i64* %arrayidx30, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  %tmp5 = load i64, i64* %arrayidx32, align 8, !tbaa !1
  br label %"sha_transform$3_initialize_context"

"sha_transform$3_initialize_context":             ; preds = %for.end23
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  br label %"sha_transform$3_call_recursive_function"

"sha_transform$3_call_recursive_function":        ; preds = %"sha_transform$3_initialize_context"
  call void @"sha_transform$3"(i64 %tmp2, i64 %tmp3, i64 %tmp4, i64 %tmp5, i64 %tmp1, i64 0)
  br label %"sha_transform$3_extract_return_values$0"

"sha_transform$3_extract_return_values$0":        ; preds = %"sha_transform$3_call_recursive_function"
  %tmp6 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 0
  %tmp7 = load i64, i64* %tmp6
  %tmp8 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 1
  %tmp9 = load i64, i64* %tmp8
  %tmp10 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 2
  %tmp11 = load i64, i64* %tmp10
  %tmp12 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 3
  %tmp13 = load i64, i64* %tmp12
  %tmp14 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 4
  %tmp15 = load i64, i64* %tmp14
  br label %for.body51.preheader

for.body51.preheader:                             ; preds = %"sha_transform$3_extract_return_values$0"
  br label %"sha_transform$2_initialize_context"

"sha_transform$2_initialize_context":             ; preds = %for.body51.preheader
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  br label %"sha_transform$2_call_recursive_function"

"sha_transform$2_call_recursive_function":        ; preds = %"sha_transform$2_initialize_context"
  call void @"sha_transform$2"(i64 %tmp13, i64 %tmp15, i64 %tmp9, i64 %tmp7, i64 %tmp11, i64 20)
  br label %"sha_transform$2_extract_return_values$0"

"sha_transform$2_extract_return_values$0":        ; preds = %"sha_transform$2_call_recursive_function"
  %tmp16 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 0
  %tmp17 = load i64, i64* %tmp16
  %tmp18 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 1
  %tmp19 = load i64, i64* %tmp18
  %tmp20 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 2
  %tmp21 = load i64, i64* %tmp20
  %tmp22 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 3
  %tmp23 = load i64, i64* %tmp22
  %tmp24 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 4
  %tmp25 = load i64, i64* %tmp24
  br label %for.body71.preheader

for.body71.preheader:                             ; preds = %"sha_transform$2_extract_return_values$0"
  br label %"sha_transform$1_initialize_context"

"sha_transform$1_initialize_context":             ; preds = %for.body71.preheader
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  br label %"sha_transform$1_call_recursive_function"

"sha_transform$1_call_recursive_function":        ; preds = %"sha_transform$1_initialize_context"
  call void @"sha_transform$1"(i64 %tmp23, i64 %tmp25, i64 %tmp19, i64 %tmp17, i64 %tmp21, i64 40)
  br label %"sha_transform$1_extract_return_values$0"

"sha_transform$1_extract_return_values$0":        ; preds = %"sha_transform$1_call_recursive_function"
  %tmp26 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 0
  %tmp27 = load i64, i64* %tmp26
  %tmp28 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 1
  %tmp29 = load i64, i64* %tmp28
  %tmp30 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 2
  %tmp31 = load i64, i64* %tmp30
  %tmp32 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 3
  %tmp33 = load i64, i64* %tmp32
  %tmp34 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 4
  %tmp35 = load i64, i64* %tmp34
  br label %for.body94.preheader

for.body94.preheader:                             ; preds = %"sha_transform$1_extract_return_values$0"
  br label %"sha_transform$0_initialize_context"

"sha_transform$0_initialize_context":             ; preds = %for.body94.preheader
  store [80 x i64]* %W, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  br label %"sha_transform$0_call_recursive_function"

"sha_transform$0_call_recursive_function":        ; preds = %"sha_transform$0_initialize_context"
  call void @"sha_transform$0"(i64 %tmp33, i64 %tmp31, i64 %tmp35, i64 %tmp27, i64 %tmp29, i64 60)
  br label %"sha_transform$0_extract_return_values$0"

"sha_transform$0_extract_return_values$0":        ; preds = %"sha_transform$0_call_recursive_function"
  %tmp36 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 0
  %tmp37 = load i64, i64* %tmp36
  %tmp38 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 1
  %tmp39 = load i64, i64* %tmp38
  %tmp40 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 2
  %tmp41 = load i64, i64* %tmp40
  %tmp42 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 3
  %tmp43 = load i64, i64* %tmp42
  %tmp44 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 4
  %tmp45 = load i64, i64* %tmp44
  br label %for.end111

for.end111:                                       ; preds = %"sha_transform$0_extract_return_values$0"
  %add114 = add i64 %tmp1, %tmp43
  store i64 %add114, i64* %arrayidx24, align 8, !tbaa !1
  %add117 = add i64 %tmp2, %tmp41
  store i64 %add117, i64* %arrayidx26, align 8, !tbaa !1
  %add120 = add i64 %tmp3, %tmp45
  store i64 %add120, i64* %arrayidx28, align 8, !tbaa !1
  %add123 = add i64 %tmp4, %tmp39
  store i64 %add123, i64* %arrayidx30, align 8, !tbaa !1
  %add126 = add i64 %tmp5, %tmp37
  store i64 %add126, i64* %arrayidx32, align 8, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 640, i8* nonnull %tmp) #4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @sha_final(%struct.SHA_INFO* nocapture %sha_info) #0 {
entry:
  %count_lo = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %tmp = load i64, i64* %count_lo, align 8, !tbaa !5
  %count_hi = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 2
  %tmp1 = load i64, i64* %count_hi, align 8, !tbaa !7
  %shr = lshr i64 %tmp, 3
  %shr.tr = trunc i64 %shr to i32
  %conv = and i32 %shr.tr, 63
  %inc = add nuw nsw i32 %conv, 1
  %idxprom35 = zext i32 %conv to i64
  %data = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3
  %tmp2 = bitcast [16 x i64]* %data to i8*
  %arrayidx = getelementptr inbounds i8, i8* %tmp2, i64 %idxprom35
  store i8 -128, i8* %arrayidx, align 1, !tbaa !8
  %cmp = icmp ugt i32 %inc, 56
  %idx.ext36 = zext i32 %inc to i64
  %add.ptr = getelementptr inbounds i8, i8* %tmp2, i64 %idx.ext36
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = xor i32 %conv, 63
  %conv337 = zext i32 %sub to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr, i8 0, i64 %conv337, i1 false)
  %tmp3 = load i8, i8* %tmp2, align 1, !tbaa !8
  %arrayidx4.i = getelementptr inbounds i8, i8* %tmp2, i64 1
  %tmp4 = load i8, i8* %arrayidx4.i, align 1, !tbaa !8
  %arrayidx6.i = getelementptr inbounds i8, i8* %tmp2, i64 2
  %tmp5 = load i8, i8* %arrayidx6.i, align 1, !tbaa !8
  %arrayidx8.i = getelementptr inbounds i8, i8* %tmp2, i64 3
  %tmp6 = load i8, i8* %arrayidx8.i, align 1, !tbaa !8
  store i8 %tmp6, i8* %tmp2, align 1, !tbaa !8
  store i8 %tmp5, i8* %arrayidx4.i, align 1, !tbaa !8
  store i8 %tmp4, i8* %arrayidx6.i, align 1, !tbaa !8
  store i8 %tmp3, i8* %arrayidx8.i, align 1, !tbaa !8
  %add.ptr3.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 1
  %add.ptr.i = bitcast i64* %add.ptr3.i to i8*
  %tmp7 = load i8, i8* %add.ptr.i, align 1, !tbaa !8
  %arrayidx4.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 1
  %tmp8 = load i8, i8* %arrayidx4.1.i, align 1, !tbaa !8
  %arrayidx6.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 2
  %tmp9 = load i8, i8* %arrayidx6.1.i, align 1, !tbaa !8
  %arrayidx8.1.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 3
  %tmp10 = load i8, i8* %arrayidx8.1.i, align 1, !tbaa !8
  store i8 %tmp10, i8* %add.ptr.i, align 1, !tbaa !8
  store i8 %tmp9, i8* %arrayidx4.1.i, align 1, !tbaa !8
  store i8 %tmp8, i8* %arrayidx6.1.i, align 1, !tbaa !8
  store i8 %tmp7, i8* %arrayidx8.1.i, align 1, !tbaa !8
  %add.ptr.14.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 2
  %add.ptr.1.i = bitcast i64* %add.ptr.14.i to i8*
  %tmp11 = load i8, i8* %add.ptr.1.i, align 1, !tbaa !8
  %arrayidx4.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 1
  %tmp12 = load i8, i8* %arrayidx4.2.i, align 1, !tbaa !8
  %arrayidx6.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 2
  %tmp13 = load i8, i8* %arrayidx6.2.i, align 1, !tbaa !8
  %arrayidx8.2.i = getelementptr inbounds i8, i8* %add.ptr.1.i, i64 3
  %tmp14 = load i8, i8* %arrayidx8.2.i, align 1, !tbaa !8
  store i8 %tmp14, i8* %add.ptr.1.i, align 1, !tbaa !8
  store i8 %tmp13, i8* %arrayidx4.2.i, align 1, !tbaa !8
  store i8 %tmp12, i8* %arrayidx6.2.i, align 1, !tbaa !8
  store i8 %tmp11, i8* %arrayidx8.2.i, align 1, !tbaa !8
  %add.ptr.25.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 3
  %add.ptr.2.i = bitcast i64* %add.ptr.25.i to i8*
  %tmp15 = load i8, i8* %add.ptr.2.i, align 1, !tbaa !8
  %arrayidx4.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 1
  %tmp16 = load i8, i8* %arrayidx4.3.i, align 1, !tbaa !8
  %arrayidx6.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 2
  %tmp17 = load i8, i8* %arrayidx6.3.i, align 1, !tbaa !8
  %arrayidx8.3.i = getelementptr inbounds i8, i8* %add.ptr.2.i, i64 3
  %tmp18 = load i8, i8* %arrayidx8.3.i, align 1, !tbaa !8
  store i8 %tmp18, i8* %add.ptr.2.i, align 1, !tbaa !8
  store i8 %tmp17, i8* %arrayidx4.3.i, align 1, !tbaa !8
  store i8 %tmp16, i8* %arrayidx6.3.i, align 1, !tbaa !8
  store i8 %tmp15, i8* %arrayidx8.3.i, align 1, !tbaa !8
  %add.ptr.36.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 4
  %add.ptr.3.i = bitcast i64* %add.ptr.36.i to i8*
  %tmp19 = load i8, i8* %add.ptr.3.i, align 1, !tbaa !8
  %arrayidx4.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 1
  %tmp20 = load i8, i8* %arrayidx4.4.i, align 1, !tbaa !8
  %arrayidx6.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 2
  %tmp21 = load i8, i8* %arrayidx6.4.i, align 1, !tbaa !8
  %arrayidx8.4.i = getelementptr inbounds i8, i8* %add.ptr.3.i, i64 3
  %tmp22 = load i8, i8* %arrayidx8.4.i, align 1, !tbaa !8
  store i8 %tmp22, i8* %add.ptr.3.i, align 1, !tbaa !8
  store i8 %tmp21, i8* %arrayidx4.4.i, align 1, !tbaa !8
  store i8 %tmp20, i8* %arrayidx6.4.i, align 1, !tbaa !8
  store i8 %tmp19, i8* %arrayidx8.4.i, align 1, !tbaa !8
  %add.ptr.47.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 5
  %add.ptr.4.i = bitcast i64* %add.ptr.47.i to i8*
  %tmp23 = load i8, i8* %add.ptr.4.i, align 1, !tbaa !8
  %arrayidx4.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 1
  %tmp24 = load i8, i8* %arrayidx4.5.i, align 1, !tbaa !8
  %arrayidx6.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 2
  %tmp25 = load i8, i8* %arrayidx6.5.i, align 1, !tbaa !8
  %arrayidx8.5.i = getelementptr inbounds i8, i8* %add.ptr.4.i, i64 3
  %tmp26 = load i8, i8* %arrayidx8.5.i, align 1, !tbaa !8
  store i8 %tmp26, i8* %add.ptr.4.i, align 1, !tbaa !8
  store i8 %tmp25, i8* %arrayidx4.5.i, align 1, !tbaa !8
  store i8 %tmp24, i8* %arrayidx6.5.i, align 1, !tbaa !8
  store i8 %tmp23, i8* %arrayidx8.5.i, align 1, !tbaa !8
  %add.ptr.58.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 6
  %add.ptr.5.i = bitcast i64* %add.ptr.58.i to i8*
  %tmp27 = load i8, i8* %add.ptr.5.i, align 1, !tbaa !8
  %arrayidx4.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 1
  %tmp28 = load i8, i8* %arrayidx4.6.i, align 1, !tbaa !8
  %arrayidx6.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 2
  %tmp29 = load i8, i8* %arrayidx6.6.i, align 1, !tbaa !8
  %arrayidx8.6.i = getelementptr inbounds i8, i8* %add.ptr.5.i, i64 3
  %tmp30 = load i8, i8* %arrayidx8.6.i, align 1, !tbaa !8
  store i8 %tmp30, i8* %add.ptr.5.i, align 1, !tbaa !8
  store i8 %tmp29, i8* %arrayidx4.6.i, align 1, !tbaa !8
  store i8 %tmp28, i8* %arrayidx6.6.i, align 1, !tbaa !8
  store i8 %tmp27, i8* %arrayidx8.6.i, align 1, !tbaa !8
  %add.ptr.69.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 7
  %add.ptr.6.i = bitcast i64* %add.ptr.69.i to i8*
  %tmp31 = load i8, i8* %add.ptr.6.i, align 1, !tbaa !8
  %arrayidx4.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 1
  %tmp32 = load i8, i8* %arrayidx4.7.i, align 1, !tbaa !8
  %arrayidx6.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 2
  %tmp33 = load i8, i8* %arrayidx6.7.i, align 1, !tbaa !8
  %arrayidx8.7.i = getelementptr inbounds i8, i8* %add.ptr.6.i, i64 3
  %tmp34 = load i8, i8* %arrayidx8.7.i, align 1, !tbaa !8
  store i8 %tmp34, i8* %add.ptr.6.i, align 1, !tbaa !8
  store i8 %tmp33, i8* %arrayidx4.7.i, align 1, !tbaa !8
  store i8 %tmp32, i8* %arrayidx6.7.i, align 1, !tbaa !8
  store i8 %tmp31, i8* %arrayidx8.7.i, align 1, !tbaa !8
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %sha_info)
  call void @llvm.memset.p0i8.i64(i8* align 8 %tmp2, i8 0, i64 56, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %sub10 = sub nsw i32 55, %conv
  %conv11 = sext i32 %sub10 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr, i8 0, i64 %conv11, i1 false)
  %.pre = load i8, i8* %tmp2, align 1, !tbaa !8
  %arrayidx4.i38.phi.trans.insert = getelementptr inbounds i8, i8* %tmp2, i64 1
  %.pre76 = load i8, i8* %arrayidx4.i38.phi.trans.insert, align 1, !tbaa !8
  %arrayidx6.i39.phi.trans.insert = getelementptr inbounds i8, i8* %tmp2, i64 2
  %.pre77 = load i8, i8* %arrayidx6.i39.phi.trans.insert, align 1, !tbaa !8
  %arrayidx8.i40.phi.trans.insert = getelementptr inbounds i8, i8* %tmp2, i64 3
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
  %tmp35 = phi i8 [ %.pre138, %if.else ], [ 0, %if.then ]
  %tmp36 = phi i8 [ %.pre135, %if.else ], [ 0, %if.then ]
  %tmp37 = phi i8 [ %.pre132, %if.else ], [ 0, %if.then ]
  %tmp38 = phi i8 [ %.pre129, %if.else ], [ 0, %if.then ]
  %tmp39 = phi i8 [ %.pre128, %if.else ], [ 0, %if.then ]
  %tmp40 = phi i8 [ %.pre125, %if.else ], [ 0, %if.then ]
  %tmp41 = phi i8 [ %.pre122, %if.else ], [ 0, %if.then ]
  %tmp42 = phi i8 [ %.pre119, %if.else ], [ 0, %if.then ]
  %tmp43 = phi i8 [ %.pre118, %if.else ], [ 0, %if.then ]
  %tmp44 = phi i8 [ %.pre115, %if.else ], [ 0, %if.then ]
  %tmp45 = phi i8 [ %.pre112, %if.else ], [ 0, %if.then ]
  %tmp46 = phi i8 [ %.pre109, %if.else ], [ 0, %if.then ]
  %tmp47 = phi i8 [ %.pre108, %if.else ], [ 0, %if.then ]
  %tmp48 = phi i8 [ %.pre105, %if.else ], [ 0, %if.then ]
  %tmp49 = phi i8 [ %.pre102, %if.else ], [ 0, %if.then ]
  %tmp50 = phi i8 [ %.pre99, %if.else ], [ 0, %if.then ]
  %tmp51 = phi i8 [ %.pre98, %if.else ], [ 0, %if.then ]
  %tmp52 = phi i8 [ %.pre95, %if.else ], [ 0, %if.then ]
  %tmp53 = phi i8 [ %.pre92, %if.else ], [ 0, %if.then ]
  %tmp54 = phi i8 [ %.pre89, %if.else ], [ 0, %if.then ]
  %tmp55 = phi i8 [ %.pre88, %if.else ], [ 0, %if.then ]
  %tmp56 = phi i8 [ %.pre85, %if.else ], [ 0, %if.then ]
  %tmp57 = phi i8 [ %.pre82, %if.else ], [ 0, %if.then ]
  %tmp58 = phi i8 [ %.pre79, %if.else ], [ 0, %if.then ]
  %tmp59 = phi i8 [ %.pre78, %if.else ], [ 0, %if.then ]
  %tmp60 = phi i8 [ %.pre77, %if.else ], [ 0, %if.then ]
  %tmp61 = phi i8 [ %.pre76, %if.else ], [ 0, %if.then ]
  %tmp62 = phi i8 [ %.pre, %if.else ], [ 0, %if.then ]
  store i8 %tmp59, i8* %tmp2, align 1, !tbaa !8
  store i8 %tmp60, i8* %arrayidx4.i38.pre-phi, align 1, !tbaa !8
  store i8 %tmp61, i8* %arrayidx6.i39.pre-phi, align 1, !tbaa !8
  store i8 %tmp62, i8* %arrayidx8.i40.pre-phi, align 1, !tbaa !8
  store i8 %tmp55, i8* %add.ptr.i42.pre-phi, align 1, !tbaa !8
  store i8 %tmp56, i8* %arrayidx4.1.i43.pre-phi, align 1, !tbaa !8
  store i8 %tmp57, i8* %arrayidx6.1.i44.pre-phi, align 1, !tbaa !8
  store i8 %tmp58, i8* %arrayidx8.1.i45.pre-phi, align 1, !tbaa !8
  store i8 %tmp51, i8* %add.ptr.1.i47.pre-phi, align 1, !tbaa !8
  store i8 %tmp52, i8* %arrayidx4.2.i48.pre-phi, align 1, !tbaa !8
  store i8 %tmp53, i8* %arrayidx6.2.i49.pre-phi, align 1, !tbaa !8
  store i8 %tmp54, i8* %arrayidx8.2.i50.pre-phi, align 1, !tbaa !8
  store i8 %tmp47, i8* %add.ptr.2.i52.pre-phi, align 1, !tbaa !8
  store i8 %tmp48, i8* %arrayidx4.3.i53.pre-phi, align 1, !tbaa !8
  store i8 %tmp49, i8* %arrayidx6.3.i54.pre-phi, align 1, !tbaa !8
  store i8 %tmp50, i8* %arrayidx8.3.i55.pre-phi, align 1, !tbaa !8
  store i8 %tmp43, i8* %add.ptr.3.i57.pre-phi, align 1, !tbaa !8
  store i8 %tmp44, i8* %arrayidx4.4.i58.pre-phi, align 1, !tbaa !8
  store i8 %tmp45, i8* %arrayidx6.4.i59.pre-phi, align 1, !tbaa !8
  store i8 %tmp46, i8* %arrayidx8.4.i60.pre-phi, align 1, !tbaa !8
  store i8 %tmp39, i8* %add.ptr.4.i62.pre-phi, align 1, !tbaa !8
  store i8 %tmp40, i8* %arrayidx4.5.i63.pre-phi, align 1, !tbaa !8
  store i8 %tmp41, i8* %arrayidx6.5.i64.pre-phi, align 1, !tbaa !8
  store i8 %tmp42, i8* %arrayidx8.5.i65.pre-phi, align 1, !tbaa !8
  store i8 %tmp35, i8* %add.ptr.5.i67.pre-phi, align 1, !tbaa !8
  store i8 %tmp36, i8* %arrayidx4.6.i68.pre-phi, align 1, !tbaa !8
  store i8 %tmp37, i8* %arrayidx6.6.i69.pre-phi, align 1, !tbaa !8
  store i8 %tmp38, i8* %arrayidx8.6.i70.pre-phi, align 1, !tbaa !8
  %tmp63 = load i8, i8* %add.ptr.6.i72.pre-phi, align 1, !tbaa !8
  %tmp64 = load i8, i8* %arrayidx4.7.i73.pre-phi, align 1, !tbaa !8
  %tmp65 = load i8, i8* %arrayidx6.7.i74.pre-phi, align 1, !tbaa !8
  %tmp66 = load i8, i8* %arrayidx8.7.i75.pre-phi, align 1, !tbaa !8
  store i8 %tmp66, i8* %add.ptr.6.i72.pre-phi, align 1, !tbaa !8
  store i8 %tmp65, i8* %arrayidx4.7.i73.pre-phi, align 1, !tbaa !8
  store i8 %tmp64, i8* %arrayidx6.7.i74.pre-phi, align 1, !tbaa !8
  store i8 %tmp63, i8* %arrayidx8.7.i75.pre-phi, align 1, !tbaa !8
  %arrayidx15 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 14
  store i64 %tmp1, i64* %arrayidx15, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 3, i64 15
  store i64 %tmp, i64* %arrayidx17, align 8, !tbaa !1
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %sha_info)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sha_stream(%struct.SHA_INFO* nocapture %sha_info, %struct._IO_FILE* nocapture %fin) #1 {
entry:
  %data = alloca [8192 x i8], align 16
  %tmp = getelementptr inbounds [8192 x i8], [8192 x i8]* %data, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %tmp) #4
  %tmp1 = bitcast %struct.SHA_INFO* %sha_info to <2 x i64>*
  store <2 x i64> <i64 1732584193, i64 4023233417>, <2 x i64>* %tmp1, align 8, !tbaa !1
  %arrayidx4.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %tmp2 = bitcast i64* %arrayidx4.i to <2 x i64>*
  store <2 x i64> <i64 2562383102, i64 271733878>, <2 x i64>* %tmp2, align 8, !tbaa !1
  %arrayidx8.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  store i64 3285377520, i64* %arrayidx8.i, align 8, !tbaa !1
  %count_lo.i = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 1
  %tmp3 = bitcast i64* %count_lo.i to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %tmp3, i8 0, i64 16, i1 false)
  %call5 = call i64 @fread(i8* %tmp, i64 1, i64 8192, %struct._IO_FILE* %fin)
  %conv6 = trunc i64 %call5 to i32
  %cmp7 = icmp sgt i32 %conv6, 0
  br i1 %cmp7, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  br label %"sha_stream$0_initialize_context"

"sha_stream$0_initialize_context":                ; preds = %while.body.preheader
  store %struct._IO_FILE* %fin, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$34"
  store i8* %tmp, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35"
  store %struct.SHA_INFO* %sha_info, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$36"
  br label %"sha_stream$0_call_recursive_function"

"sha_stream$0_call_recursive_function":           ; preds = %"sha_stream$0_initialize_context"
  call void @"sha_stream$0"(i32 %conv6)
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %"sha_stream$0_call_recursive_function"
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  tail call void @sha_final(%struct.SHA_INFO* %sha_info)
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %tmp) #4
  ret void
}

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind uwtable
define void @sha_print(%struct.SHA_INFO* nocapture readonly %sha_info) #1 {
entry:
  %arrayidx = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 0
  %tmp = load i64, i64* %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 1
  %tmp1 = load i64, i64* %arrayidx2, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %tmp2 = load i64, i64* %arrayidx4, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 3
  %tmp3 = load i64, i64* %arrayidx6, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  %tmp4 = load i64, i64* %arrayidx8, align 8, !tbaa !1
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %tmp, i64 %tmp1, i64 %tmp2, i64 %tmp3, i64 %tmp4)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

define void @"sha_update$0"(i8* %arg, i32 %arg1) {
"sha_update$0_latch$0":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16"
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %tmp, i8* align 1 %arg, i64 64, i1 false)
  %tmp2 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16"
  %tmp3 = load i8, i8* %tmp2, align 1, !tbaa !8
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28"
  %tmp5 = load i8, i8* %tmp4, align 1, !tbaa !8
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$13"
  %tmp7 = load i8, i8* %tmp6, align 1, !tbaa !8
  %tmp8 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$8"
  %tmp9 = load i8, i8* %tmp8, align 1, !tbaa !8
  %tmp10 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$16"
  store i8 %tmp9, i8* %tmp10, align 1, !tbaa !8
  %tmp11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$28"
  store i8 %tmp7, i8* %tmp11, align 1, !tbaa !8
  %tmp12 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$13"
  store i8 %tmp5, i8* %tmp12, align 1, !tbaa !8
  %tmp13 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$8"
  store i8 %tmp3, i8* %tmp13, align 1, !tbaa !8
  %tmp14 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25"
  %tmp15 = load i8, i8* %tmp14, align 1, !tbaa !8
  %tmp16 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$10"
  %tmp17 = load i8, i8* %tmp16, align 1, !tbaa !8
  %tmp18 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$1"
  %tmp19 = load i8, i8* %tmp18, align 1, !tbaa !8
  %tmp20 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$0"
  %tmp21 = load i8, i8* %tmp20, align 1, !tbaa !8
  %tmp22 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$25"
  store i8 %tmp21, i8* %tmp22, align 1, !tbaa !8
  %tmp23 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$10"
  store i8 %tmp19, i8* %tmp23, align 1, !tbaa !8
  %tmp24 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$1"
  store i8 %tmp17, i8* %tmp24, align 1, !tbaa !8
  %tmp25 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$0"
  store i8 %tmp15, i8* %tmp25, align 1, !tbaa !8
  %tmp26 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$19"
  %tmp27 = load i8, i8* %tmp26, align 1, !tbaa !8
  %tmp28 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$14"
  %tmp29 = load i8, i8* %tmp28, align 1, !tbaa !8
  %tmp30 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$9"
  %tmp31 = load i8, i8* %tmp30, align 1, !tbaa !8
  %tmp32 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$2"
  %tmp33 = load i8, i8* %tmp32, align 1, !tbaa !8
  %tmp34 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$19"
  store i8 %tmp33, i8* %tmp34, align 1, !tbaa !8
  %tmp35 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$14"
  store i8 %tmp31, i8* %tmp35, align 1, !tbaa !8
  %tmp36 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$9"
  store i8 %tmp29, i8* %tmp36, align 1, !tbaa !8
  %tmp37 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$2"
  store i8 %tmp27, i8* %tmp37, align 1, !tbaa !8
  %tmp38 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$22"
  %tmp39 = load i8, i8* %tmp38, align 1, !tbaa !8
  %tmp40 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$17"
  %tmp41 = load i8, i8* %tmp40, align 1, !tbaa !8
  %tmp42 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$7"
  %tmp43 = load i8, i8* %tmp42, align 1, !tbaa !8
  %tmp44 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$20"
  %tmp45 = load i8, i8* %tmp44, align 1, !tbaa !8
  %tmp46 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$22"
  store i8 %tmp45, i8* %tmp46, align 1, !tbaa !8
  %tmp47 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$17"
  store i8 %tmp43, i8* %tmp47, align 1, !tbaa !8
  %tmp48 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$7"
  store i8 %tmp41, i8* %tmp48, align 1, !tbaa !8
  %tmp49 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$20"
  store i8 %tmp39, i8* %tmp49, align 1, !tbaa !8
  %tmp50 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$15"
  %tmp51 = load i8, i8* %tmp50, align 1, !tbaa !8
  %tmp52 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$11"
  %tmp53 = load i8, i8* %tmp52, align 1, !tbaa !8
  %tmp54 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$23"
  %tmp55 = load i8, i8* %tmp54, align 1, !tbaa !8
  %tmp56 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26"
  %tmp57 = load i8, i8* %tmp56, align 1, !tbaa !8
  %tmp58 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$15"
  store i8 %tmp57, i8* %tmp58, align 1, !tbaa !8
  %tmp59 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$11"
  store i8 %tmp55, i8* %tmp59, align 1, !tbaa !8
  %tmp60 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$23"
  store i8 %tmp53, i8* %tmp60, align 1, !tbaa !8
  %tmp61 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$26"
  store i8 %tmp51, i8* %tmp61, align 1, !tbaa !8
  %tmp62 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29"
  %tmp63 = load i8, i8* %tmp62, align 1, !tbaa !8
  %tmp64 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$12"
  %tmp65 = load i8, i8* %tmp64, align 1, !tbaa !8
  %tmp66 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$21"
  %tmp67 = load i8, i8* %tmp66, align 1, !tbaa !8
  %tmp68 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27"
  %tmp69 = load i8, i8* %tmp68, align 1, !tbaa !8
  %tmp70 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$29"
  store i8 %tmp69, i8* %tmp70, align 1, !tbaa !8
  %tmp71 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$12"
  store i8 %tmp67, i8* %tmp71, align 1, !tbaa !8
  %tmp72 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$21"
  store i8 %tmp65, i8* %tmp72, align 1, !tbaa !8
  %tmp73 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$27"
  store i8 %tmp63, i8* %tmp73, align 1, !tbaa !8
  %tmp74 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30"
  %tmp75 = load i8, i8* %tmp74, align 1, !tbaa !8
  %tmp76 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$4"
  %tmp77 = load i8, i8* %tmp76, align 1, !tbaa !8
  %tmp78 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$6"
  %tmp79 = load i8, i8* %tmp78, align 1, !tbaa !8
  %tmp80 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32"
  %tmp81 = load i8, i8* %tmp80, align 1, !tbaa !8
  %tmp82 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$30"
  store i8 %tmp81, i8* %tmp82, align 1, !tbaa !8
  %tmp83 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$4"
  store i8 %tmp79, i8* %tmp83, align 1, !tbaa !8
  %tmp84 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$6"
  store i8 %tmp77, i8* %tmp84, align 1, !tbaa !8
  %tmp85 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$32"
  store i8 %tmp75, i8* %tmp85, align 1, !tbaa !8
  %tmp86 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$18"
  %tmp87 = load i8, i8* %tmp86, align 1, !tbaa !8
  %tmp88 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$3"
  %tmp89 = load i8, i8* %tmp88, align 1, !tbaa !8
  %tmp90 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$5"
  %tmp91 = load i8, i8* %tmp90, align 1, !tbaa !8
  %tmp92 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31"
  %tmp93 = load i8, i8* %tmp92, align 1, !tbaa !8
  %tmp94 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$18"
  store i8 %tmp93, i8* %tmp94, align 1, !tbaa !8
  %tmp95 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$3"
  store i8 %tmp91, i8* %tmp95, align 1, !tbaa !8
  %tmp96 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$5"
  store i8 %tmp89, i8* %tmp96, align 1, !tbaa !8
  %tmp97 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$31"
  store i8 %tmp87, i8* %tmp97, align 1, !tbaa !8
  %tmp98 = load %struct.SHA_INFO*, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$24"
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %tmp98)
  %add.ptr = getelementptr inbounds i8, i8* %arg, i64 64
  %sub = add nsw i32 %arg1, -64
  %cmp10 = icmp sgt i32 %sub, 63
  br i1 %cmp10, label %"sha_update$0_increment_depth_counter", label %"sha_update$0_return_from_recursive_function$0", !llvm.loop !9

"sha_update$0_increment_depth_counter":           ; preds = %"sha_update$0_latch$0"
  br label %"sha_update$0_recursively_call_function"

"sha_update$0_recursively_call_function":         ; preds = %"sha_update$0_increment_depth_counter"
  call void @"sha_update$0"(i8* %add.ptr, i32 %sub)
  ret void

"sha_update$0_return_from_recursive_function$0":  ; preds = %"sha_update$0_latch$0"
  ret void
}

define void @"sha_transform$4"(i64 %arg) {
"sha_transform$4_latch$0":
  %tmp = add nsw i64 %arg, -3
  %tmp1 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx7 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp1, i64 0, i64 %tmp
  %tmp2 = load i64, i64* %arrayidx7, align 8, !tbaa !1
  %tmp3 = add nsw i64 %arg, -8
  %tmp4 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx10 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp4, i64 0, i64 %tmp3
  %tmp5 = load i64, i64* %arrayidx10, align 16, !tbaa !1
  %xor = xor i64 %tmp5, %tmp2
  %tmp6 = add nsw i64 %arg, -14
  %tmp7 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx13 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp7, i64 0, i64 %tmp6
  %tmp8 = load i64, i64* %arrayidx13, align 16, !tbaa !1
  %xor14 = xor i64 %xor, %tmp8
  %tmp9 = add nsw i64 %arg, -16
  %tmp10 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx17 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp10, i64 0, i64 %tmp9
  %tmp11 = load i64, i64* %arrayidx17, align 16, !tbaa !1
  %xor18 = xor i64 %xor14, %tmp11
  %tmp12 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx20 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp12, i64 0, i64 %arg
  store i64 %xor18, i64* %arrayidx20, align 16, !tbaa !1
  %indvars.iv.next253 = or i64 %arg, 1
  %tmp13 = add nsw i64 %arg, -2
  %tmp14 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx7.1 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp14, i64 0, i64 %tmp13
  %tmp15 = load i64, i64* %arrayidx7.1, align 16, !tbaa !1
  %tmp16 = add nsw i64 %arg, -7
  %tmp17 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx10.1 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp17, i64 0, i64 %tmp16
  %tmp18 = load i64, i64* %arrayidx10.1, align 8, !tbaa !1
  %xor.1 = xor i64 %tmp18, %tmp15
  %tmp19 = add nsw i64 %arg, -13
  %tmp20 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx13.1 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp20, i64 0, i64 %tmp19
  %tmp21 = load i64, i64* %arrayidx13.1, align 8, !tbaa !1
  %xor14.1 = xor i64 %xor.1, %tmp21
  %tmp22 = add nsw i64 %arg, -15
  %tmp23 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx17.1 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp23, i64 0, i64 %tmp22
  %tmp24 = load i64, i64* %arrayidx17.1, align 8, !tbaa !1
  %xor18.1 = xor i64 %xor14.1, %tmp24
  %tmp25 = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx20.1 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp25, i64 0, i64 %indvars.iv.next253
  store i64 %xor18.1, i64* %arrayidx20.1, align 8, !tbaa !1
  %indvars.iv.next253.1 = add nsw i64 %arg, 2
  %exitcond258.1 = icmp eq i64 %indvars.iv.next253.1, 80
  br i1 %exitcond258.1, label %"sha_transform$4_return_from_recursive_function$0", label %"sha_transform$4_increment_depth_counter"

"sha_transform$4_increment_depth_counter":        ; preds = %"sha_transform$4_latch$0"
  br label %"sha_transform$4_recursively_call_function"

"sha_transform$4_recursively_call_function":      ; preds = %"sha_transform$4_increment_depth_counter"
  call void @"sha_transform$4"(i64 %indvars.iv.next253.1)
  ret void

"sha_transform$4_return_from_recursive_function$0": ; preds = %"sha_transform$4_latch$0"
  ret void
}

define void @"sha_transform$3"(i64 %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5) {
"sha_transform$3_latch$0":
  %shl = shl i64 %arg4, 5
  %shr = lshr i64 %arg4, 27
  %or = or i64 %shl, %shr
  %and = and i64 %arg1, %arg
  %neg = xor i64 %arg, -1
  %and36 = and i64 %arg2, %neg
  %or37 = or i64 %and36, %and
  %tmp = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx40 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp, i64 0, i64 %arg5
  %tmp6 = load i64, i64* %arrayidx40, align 8, !tbaa !1
  %add = add i64 %or, 1518500249
  %add38 = add i64 %add, %arg3
  %add41 = add i64 %add38, %or37
  %add42 = add i64 %add41, %tmp6
  %shl43 = shl i64 %arg, 30
  %shr44 = lshr i64 %arg, 2
  %or45 = or i64 %shl43, %shr44
  %indvars.iv.next250 = add nuw nsw i64 %arg5, 1
  %exitcond251 = icmp eq i64 %indvars.iv.next250, 20
  br i1 %exitcond251, label %"sha_transform$3_return_from_recursive_function$0", label %"sha_transform$3_increment_depth_counter"

"sha_transform$3_increment_depth_counter":        ; preds = %"sha_transform$3_latch$0"
  br label %"sha_transform$3_recursively_call_function"

"sha_transform$3_recursively_call_function":      ; preds = %"sha_transform$3_increment_depth_counter"
  call void @"sha_transform$3"(i64 %arg4, i64 %or45, i64 %arg1, i64 %arg2, i64 %add42, i64 %indvars.iv.next250)
  ret void

"sha_transform$3_return_from_recursive_function$0": ; preds = %"sha_transform$3_latch$0"
  %tmp7 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 0
  store i64 %arg2, i64* %tmp7
  %tmp8 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 1
  store i64 %arg1, i64* %tmp8
  %tmp9 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 2
  store i64 %arg4, i64* %tmp9
  %tmp10 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 3
  store i64 %add42, i64* %tmp10
  %tmp11 = getelementptr %0, %0* @"sha_transform$3_return_value_struct", i32 0, i32 4
  store i64 %or45, i64* %tmp11
  ret void
}

define void @"sha_transform$2"(i64 %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5) {
"sha_transform$2_latch$0":
  %shl52 = shl i64 %arg, 5
  %shr53 = lshr i64 %arg, 27
  %or54 = or i64 %shl52, %shr53
  %xor55 = xor i64 %arg1, %arg4
  %xor56 = xor i64 %xor55, %arg2
  %tmp = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx60 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp, i64 0, i64 %arg5
  %tmp6 = load i64, i64* %arrayidx60, align 8, !tbaa !1
  %add57 = add i64 %or54, 1859775393
  %add58 = add i64 %add57, %xor56
  %add61 = add i64 %add58, %arg3
  %add62 = add i64 %add61, %tmp6
  %shl63 = shl i64 %arg4, 30
  %shr64 = lshr i64 %arg4, 2
  %or65 = or i64 %shl63, %shr64
  %indvars.iv.next247 = add nuw nsw i64 %arg5, 1
  %exitcond248 = icmp eq i64 %indvars.iv.next247, 40
  br i1 %exitcond248, label %"sha_transform$2_return_from_recursive_function$0", label %"sha_transform$2_increment_depth_counter"

"sha_transform$2_increment_depth_counter":        ; preds = %"sha_transform$2_latch$0"
  br label %"sha_transform$2_recursively_call_function"

"sha_transform$2_recursively_call_function":      ; preds = %"sha_transform$2_increment_depth_counter"
  call void @"sha_transform$2"(i64 %add62, i64 %or65, i64 %arg1, i64 %arg2, i64 %arg, i64 %indvars.iv.next247)
  ret void

"sha_transform$2_return_from_recursive_function$0": ; preds = %"sha_transform$2_latch$0"
  %tmp7 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 0
  store i64 %arg2, i64* %tmp7
  %tmp8 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 1
  store i64 %arg1, i64* %tmp8
  %tmp9 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 2
  store i64 %arg, i64* %tmp9
  %tmp10 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 3
  store i64 %add62, i64* %tmp10
  %tmp11 = getelementptr %1, %1* @"sha_transform$2_return_value_struct", i32 0, i32 4
  store i64 %or65, i64* %tmp11
  ret void
}

define void @"sha_transform$1"(i64 %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5) {
"sha_transform$1_latch$0":
  %shl72 = shl i64 %arg, 5
  %shr73 = lshr i64 %arg, 27
  %or74 = or i64 %shl72, %shr73
  %and76216 = or i64 %arg2, %arg1
  %or77 = and i64 %and76216, %arg4
  %and78 = and i64 %arg2, %arg1
  %or79 = or i64 %or77, %and78
  %tmp = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx83 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp, i64 0, i64 %arg5
  %tmp6 = load i64, i64* %arrayidx83, align 8, !tbaa !1
  %add80 = add i64 %or74, 2400959708
  %add81 = add i64 %add80, %arg3
  %add84 = add i64 %add81, %or79
  %add85 = add i64 %add84, %tmp6
  %shl86 = shl i64 %arg4, 30
  %shr87 = lshr i64 %arg4, 2
  %or88 = or i64 %shl86, %shr87
  %indvars.iv.next244 = add nuw nsw i64 %arg5, 1
  %exitcond245 = icmp eq i64 %indvars.iv.next244, 60
  br i1 %exitcond245, label %"sha_transform$1_return_from_recursive_function$0", label %"sha_transform$1_increment_depth_counter"

"sha_transform$1_increment_depth_counter":        ; preds = %"sha_transform$1_latch$0"
  br label %"sha_transform$1_recursively_call_function"

"sha_transform$1_recursively_call_function":      ; preds = %"sha_transform$1_increment_depth_counter"
  call void @"sha_transform$1"(i64 %add85, i64 %or88, i64 %arg1, i64 %arg2, i64 %arg, i64 %indvars.iv.next244)
  ret void

"sha_transform$1_return_from_recursive_function$0": ; preds = %"sha_transform$1_latch$0"
  %tmp7 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 0
  store i64 %arg2, i64* %tmp7
  %tmp8 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 1
  store i64 %arg1, i64* %tmp8
  %tmp9 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 2
  store i64 %arg, i64* %tmp9
  %tmp10 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 3
  store i64 %add85, i64* %tmp10
  %tmp11 = getelementptr %2, %2* @"sha_transform$1_return_value_struct", i32 0, i32 4
  store i64 %or88, i64* %tmp11
  ret void
}

define void @"sha_transform$0"(i64 %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5) {
"sha_transform$0_latch$0":
  %shl95 = shl i64 %arg, 5
  %shr96 = lshr i64 %arg, 27
  %or97 = or i64 %shl95, %shr96
  %xor98 = xor i64 %arg2, %arg1
  %xor99 = xor i64 %xor98, %arg4
  %tmp = load [80 x i64]*, [80 x i64]** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$33"
  %arrayidx103 = getelementptr inbounds [80 x i64], [80 x i64]* %tmp, i64 0, i64 %arg5
  %tmp6 = load i64, i64* %arrayidx103, align 8, !tbaa !1
  %add100 = add i64 %or97, 3395469782
  %add101 = add i64 %add100, %xor99
  %add104 = add i64 %add101, %arg3
  %add105 = add i64 %add104, %tmp6
  %shl106 = shl i64 %arg1, 30
  %shr107 = lshr i64 %arg1, 2
  %or108 = or i64 %shl106, %shr107
  %indvars.iv.next = add nuw nsw i64 %arg5, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond, label %"sha_transform$0_return_from_recursive_function$0", label %"sha_transform$0_increment_depth_counter"

"sha_transform$0_increment_depth_counter":        ; preds = %"sha_transform$0_latch$0"
  br label %"sha_transform$0_recursively_call_function"

"sha_transform$0_recursively_call_function":      ; preds = %"sha_transform$0_increment_depth_counter"
  call void @"sha_transform$0"(i64 %add105, i64 %arg, i64 %or108, i64 %arg4, i64 %arg2, i64 %indvars.iv.next)
  ret void

"sha_transform$0_return_from_recursive_function$0": ; preds = %"sha_transform$0_latch$0"
  %tmp7 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 0
  store i64 %arg4, i64* %tmp7
  %tmp8 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 1
  store i64 %arg2, i64* %tmp8
  %tmp9 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 2
  store i64 %arg, i64* %tmp9
  %tmp10 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 3
  store i64 %add105, i64* %tmp10
  %tmp11 = getelementptr %3, %3* @"sha_transform$0_return_value_struct", i32 0, i32 4
  store i64 %or108, i64* %tmp11
  ret void
}

define void @"sha_stream$0"(i32 %arg) {
"sha_stream$0_latch$0":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35"
  %tmp1 = load %struct.SHA_INFO*, %struct.SHA_INFO** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$36"
  call void @sha_update(%struct.SHA_INFO* %tmp1, i8* %tmp, i32 %arg)
  %tmp2 = load %struct._IO_FILE*, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$34"
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/sha/sha.ll_invariant_variable$35"
  %call = call i64 @fread(i8* %tmp3, i64 1, i64 8192, %struct._IO_FILE* %tmp2)
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %"sha_stream$0_increment_depth_counter", label %"sha_stream$0_return_from_recursive_function$0", !llvm.loop !9

"sha_stream$0_increment_depth_counter":           ; preds = %"sha_stream$0_latch$0"
  br label %"sha_stream$0_recursively_call_function"

"sha_stream$0_recursively_call_function":         ; preds = %"sha_stream$0_increment_depth_counter"
  call void @"sha_stream$0"(i32 %conv)
  ret void

"sha_stream$0_return_from_recursive_function$0":  ; preds = %"sha_stream$0_latch$0"
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

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
