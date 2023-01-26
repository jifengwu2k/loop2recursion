; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-8/sha/sha.ll.temp'
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
  %i10 = alloca %0, align 8
  br label %"sha_update$0_call_recursive_function"

"sha_update$0_call_recursive_function":           ; preds = %"sha_update$0_extract_next_values", %"sha_update$0_initialize_context"
  %i11 = phi i8* [ %buffer, %"sha_update$0_initialize_context" ], [ %i16, %"sha_update$0_extract_next_values" ]
  %i12 = phi i32 [ %count, %"sha_update$0_initialize_context" ], [ %i18, %"sha_update$0_extract_next_values" ]
  call void @"sha_update$0"(i8* %i11, i32 %i12, %struct.SHA_INFO* %sha_info, i8* %arrayidx6.7.i, i8* %add.ptr.6.i, i8* %arrayidx4.6.i, i8* %arrayidx8.5.i, i8* %arrayidx6.5.i, i8* %add.ptr.4.i, i8* %arrayidx8.4.i, i8* %arrayidx6.4.i, i8* %add.ptr.1.i, i8* %arrayidx8.i, i8* %arrayidx4.7.i, i8* %arrayidx8.1.i, i8* %arrayidx6.i, i8* %arrayidx6.1.i, i8* %arrayidx4.4.i, i8* %i3, i8* %add.ptr.5.i, i8* %add.ptr.2.i, i8* %add.ptr.3.i, i8* %arrayidx4.1.i, i8* %arrayidx8.7.i, i8* %arrayidx4.2.i, i8* %arrayidx4.5.i, i8* %add.ptr.i, i8* %arrayidx4.i, i8* %arrayidx6.2.i, i8* %arrayidx8.2.i, i8* %arrayidx6.6.i, i8* %arrayidx4.3.i, i8* %arrayidx8.6.i, i8* %arrayidx6.3.i, i8* %arrayidx8.3.i, %0* %i10, i8 0)
  %i13 = getelementptr %0, %0* %i10, i32 0, i32 2
  %i14 = load i1, i1* %i13, align 1
  br i1 %i14, label %while.end.loopexit, label %"sha_update$0_extract_next_values"

"sha_update$0_extract_next_values":               ; preds = %"sha_update$0_call_recursive_function"
  %i15 = getelementptr %0, %0* %i10, i32 0, i32 0
  %i16 = load i8*, i8** %i15, align 8
  %i17 = getelementptr %0, %0* %i10, i32 0, i32 1
  %i18 = load i32, i32* %i17, align 4
  br label %"sha_update$0_call_recursive_function"

while.end.loopexit:                               ; preds = %"sha_update$0_call_recursive_function"
  %i19 = sub i32 %i4, %i6
  %scevgep = getelementptr i8, i8* %buffer, i64 %i9
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %count.addr.0.lcssa = phi i32 [ %count, %if.end ], [ %i19, %while.end.loopexit ]
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
  %i1 = alloca %1, align 8
  br label %"sha_transform$4_call_recursive_function"

"sha_transform$4_call_recursive_function":        ; preds = %"sha_transform$4_extract_next_values", %"sha_transform$4_initialize_context"
  %i2 = phi i64 [ 16, %"sha_transform$4_initialize_context" ], [ %i6, %"sha_transform$4_extract_next_values" ]
  call void @"sha_transform$4"(i64 %i2, [80 x i64]* %W, %1* %i1, i8 0)
  %i3 = getelementptr %1, %1* %i1, i32 0, i32 1
  %i4 = load i1, i1* %i3, align 1
  br i1 %i4, label %for.end23, label %"sha_transform$4_extract_next_values"

"sha_transform$4_extract_next_values":            ; preds = %"sha_transform$4_call_recursive_function"
  %i5 = getelementptr %1, %1* %i1, i32 0, i32 0
  %i6 = load i64, i64* %i5, align 8
  br label %"sha_transform$4_call_recursive_function"

for.end23:                                        ; preds = %"sha_transform$4_call_recursive_function"
  %arrayidx24 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 0
  %i7 = load i64, i64* %arrayidx24, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 1
  %i8 = load i64, i64* %arrayidx26, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 2
  %i9 = load i64, i64* %arrayidx28, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 3
  %i10 = load i64, i64* %arrayidx30, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %sha_info, i64 0, i32 0, i64 4
  %i11 = load i64, i64* %arrayidx32, align 8, !tbaa !1
  br label %"sha_transform$3_initialize_context"

"sha_transform$3_initialize_context":             ; preds = %for.end23
  %i12 = alloca %2, align 8
  %i13 = alloca %3, align 8
  br label %"sha_transform$3_call_recursive_function"

"sha_transform$3_call_recursive_function":        ; preds = %"sha_transform$3_extract_next_values", %"sha_transform$3_initialize_context"
  %i14 = phi i64 [ %i7, %"sha_transform$3_initialize_context" ], [ %i23, %"sha_transform$3_extract_next_values" ]
  %i15 = phi i64 [ %i8, %"sha_transform$3_initialize_context" ], [ %i25, %"sha_transform$3_extract_next_values" ]
  %i16 = phi i64 [ %i9, %"sha_transform$3_initialize_context" ], [ %i27, %"sha_transform$3_extract_next_values" ]
  %i17 = phi i64 [ %i10, %"sha_transform$3_initialize_context" ], [ %i29, %"sha_transform$3_extract_next_values" ]
  %i18 = phi i64 [ 0, %"sha_transform$3_initialize_context" ], [ %i31, %"sha_transform$3_extract_next_values" ]
  %i19 = phi i64 [ %i11, %"sha_transform$3_initialize_context" ], [ %i33, %"sha_transform$3_extract_next_values" ]
  call void @"sha_transform$3"(%2* %i12, i64 %i14, i64 %i15, i64 %i16, i64 %i17, i64 %i18, i64 %i19, [80 x i64]* %W, %3* %i13, i8 0)
  %i20 = getelementptr %3, %3* %i13, i32 0, i32 6
  %i21 = load i1, i1* %i20, align 1
  br i1 %i21, label %"sha_transform$3_extract_return_values$0", label %"sha_transform$3_extract_next_values"

"sha_transform$3_extract_next_values":            ; preds = %"sha_transform$3_call_recursive_function"
  %i22 = getelementptr %3, %3* %i13, i32 0, i32 0
  %i23 = load i64, i64* %i22, align 8
  %i24 = getelementptr %3, %3* %i13, i32 0, i32 1
  %i25 = load i64, i64* %i24, align 8
  %i26 = getelementptr %3, %3* %i13, i32 0, i32 2
  %i27 = load i64, i64* %i26, align 8
  %i28 = getelementptr %3, %3* %i13, i32 0, i32 3
  %i29 = load i64, i64* %i28, align 8
  %i30 = getelementptr %3, %3* %i13, i32 0, i32 4
  %i31 = load i64, i64* %i30, align 8
  %i32 = getelementptr %3, %3* %i13, i32 0, i32 5
  %i33 = load i64, i64* %i32, align 8
  br label %"sha_transform$3_call_recursive_function"

"sha_transform$3_extract_return_values$0":        ; preds = %"sha_transform$3_call_recursive_function"
  %i34 = getelementptr %2, %2* %i12, i32 0, i32 0
  %i35 = load i64, i64* %i34, align 8
  %i36 = getelementptr %2, %2* %i12, i32 0, i32 1
  %i37 = load i64, i64* %i36, align 8
  %i38 = getelementptr %2, %2* %i12, i32 0, i32 2
  %i39 = load i64, i64* %i38, align 8
  %i40 = getelementptr %2, %2* %i12, i32 0, i32 3
  %i41 = load i64, i64* %i40, align 8
  %i42 = getelementptr %2, %2* %i12, i32 0, i32 4
  %i43 = load i64, i64* %i42, align 8
  br label %for.body51.preheader

for.body51.preheader:                             ; preds = %"sha_transform$3_extract_return_values$0"
  br label %"sha_transform$2_initialize_context"

"sha_transform$2_initialize_context":             ; preds = %for.body51.preheader
  %i44 = alloca %4, align 8
  %i45 = alloca %5, align 8
  br label %"sha_transform$2_call_recursive_function"

"sha_transform$2_call_recursive_function":        ; preds = %"sha_transform$2_extract_next_values", %"sha_transform$2_initialize_context"
  %i46 = phi i64 [ %i43, %"sha_transform$2_initialize_context" ], [ %i55, %"sha_transform$2_extract_next_values" ]
  %i47 = phi i64 [ %i39, %"sha_transform$2_initialize_context" ], [ %i57, %"sha_transform$2_extract_next_values" ]
  %i48 = phi i64 [ %i41, %"sha_transform$2_initialize_context" ], [ %i59, %"sha_transform$2_extract_next_values" ]
  %i49 = phi i64 [ %i37, %"sha_transform$2_initialize_context" ], [ %i61, %"sha_transform$2_extract_next_values" ]
  %i50 = phi i64 [ 20, %"sha_transform$2_initialize_context" ], [ %i63, %"sha_transform$2_extract_next_values" ]
  %i51 = phi i64 [ %i35, %"sha_transform$2_initialize_context" ], [ %i65, %"sha_transform$2_extract_next_values" ]
  call void @"sha_transform$2"(%4* %i44, i64 %i46, i64 %i47, i64 %i48, i64 %i49, i64 %i50, i64 %i51, [80 x i64]* %W, %5* %i45, i8 0)
  %i52 = getelementptr %5, %5* %i45, i32 0, i32 6
  %i53 = load i1, i1* %i52, align 1
  br i1 %i53, label %"sha_transform$2_extract_return_values$0", label %"sha_transform$2_extract_next_values"

"sha_transform$2_extract_next_values":            ; preds = %"sha_transform$2_call_recursive_function"
  %i54 = getelementptr %5, %5* %i45, i32 0, i32 0
  %i55 = load i64, i64* %i54, align 8
  %i56 = getelementptr %5, %5* %i45, i32 0, i32 1
  %i57 = load i64, i64* %i56, align 8
  %i58 = getelementptr %5, %5* %i45, i32 0, i32 2
  %i59 = load i64, i64* %i58, align 8
  %i60 = getelementptr %5, %5* %i45, i32 0, i32 3
  %i61 = load i64, i64* %i60, align 8
  %i62 = getelementptr %5, %5* %i45, i32 0, i32 4
  %i63 = load i64, i64* %i62, align 8
  %i64 = getelementptr %5, %5* %i45, i32 0, i32 5
  %i65 = load i64, i64* %i64, align 8
  br label %"sha_transform$2_call_recursive_function"

"sha_transform$2_extract_return_values$0":        ; preds = %"sha_transform$2_call_recursive_function"
  %i66 = getelementptr %4, %4* %i44, i32 0, i32 0
  %i67 = load i64, i64* %i66, align 8
  %i68 = getelementptr %4, %4* %i44, i32 0, i32 1
  %i69 = load i64, i64* %i68, align 8
  %i70 = getelementptr %4, %4* %i44, i32 0, i32 2
  %i71 = load i64, i64* %i70, align 8
  %i72 = getelementptr %4, %4* %i44, i32 0, i32 3
  %i73 = load i64, i64* %i72, align 8
  %i74 = getelementptr %4, %4* %i44, i32 0, i32 4
  %i75 = load i64, i64* %i74, align 8
  br label %for.body71.preheader

for.body71.preheader:                             ; preds = %"sha_transform$2_extract_return_values$0"
  br label %"sha_transform$1_initialize_context"

"sha_transform$1_initialize_context":             ; preds = %for.body71.preheader
  %i76 = alloca %6, align 8
  %i77 = alloca %7, align 8
  br label %"sha_transform$1_call_recursive_function"

"sha_transform$1_call_recursive_function":        ; preds = %"sha_transform$1_extract_next_values", %"sha_transform$1_initialize_context"
  %i78 = phi i64 [ %i75, %"sha_transform$1_initialize_context" ], [ %i87, %"sha_transform$1_extract_next_values" ]
  %i79 = phi i64 [ %i71, %"sha_transform$1_initialize_context" ], [ %i89, %"sha_transform$1_extract_next_values" ]
  %i80 = phi i64 [ %i73, %"sha_transform$1_initialize_context" ], [ %i91, %"sha_transform$1_extract_next_values" ]
  %i81 = phi i64 [ %i69, %"sha_transform$1_initialize_context" ], [ %i93, %"sha_transform$1_extract_next_values" ]
  %i82 = phi i64 [ 40, %"sha_transform$1_initialize_context" ], [ %i95, %"sha_transform$1_extract_next_values" ]
  %i83 = phi i64 [ %i67, %"sha_transform$1_initialize_context" ], [ %i97, %"sha_transform$1_extract_next_values" ]
  call void @"sha_transform$1"(%6* %i76, i64 %i78, i64 %i79, i64 %i80, i64 %i81, i64 %i82, i64 %i83, [80 x i64]* %W, %7* %i77, i8 0)
  %i84 = getelementptr %7, %7* %i77, i32 0, i32 6
  %i85 = load i1, i1* %i84, align 1
  br i1 %i85, label %"sha_transform$1_extract_return_values$0", label %"sha_transform$1_extract_next_values"

"sha_transform$1_extract_next_values":            ; preds = %"sha_transform$1_call_recursive_function"
  %i86 = getelementptr %7, %7* %i77, i32 0, i32 0
  %i87 = load i64, i64* %i86, align 8
  %i88 = getelementptr %7, %7* %i77, i32 0, i32 1
  %i89 = load i64, i64* %i88, align 8
  %i90 = getelementptr %7, %7* %i77, i32 0, i32 2
  %i91 = load i64, i64* %i90, align 8
  %i92 = getelementptr %7, %7* %i77, i32 0, i32 3
  %i93 = load i64, i64* %i92, align 8
  %i94 = getelementptr %7, %7* %i77, i32 0, i32 4
  %i95 = load i64, i64* %i94, align 8
  %i96 = getelementptr %7, %7* %i77, i32 0, i32 5
  %i97 = load i64, i64* %i96, align 8
  br label %"sha_transform$1_call_recursive_function"

"sha_transform$1_extract_return_values$0":        ; preds = %"sha_transform$1_call_recursive_function"
  %i98 = getelementptr %6, %6* %i76, i32 0, i32 0
  %i99 = load i64, i64* %i98, align 8
  %i100 = getelementptr %6, %6* %i76, i32 0, i32 1
  %i101 = load i64, i64* %i100, align 8
  %i102 = getelementptr %6, %6* %i76, i32 0, i32 2
  %i103 = load i64, i64* %i102, align 8
  %i104 = getelementptr %6, %6* %i76, i32 0, i32 3
  %i105 = load i64, i64* %i104, align 8
  %i106 = getelementptr %6, %6* %i76, i32 0, i32 4
  %i107 = load i64, i64* %i106, align 8
  br label %for.body94.preheader

for.body94.preheader:                             ; preds = %"sha_transform$1_extract_return_values$0"
  br label %"sha_transform$0_initialize_context"

"sha_transform$0_initialize_context":             ; preds = %for.body94.preheader
  %i108 = alloca %8, align 8
  %i109 = alloca %9, align 8
  br label %"sha_transform$0_call_recursive_function"

"sha_transform$0_call_recursive_function":        ; preds = %"sha_transform$0_extract_next_values", %"sha_transform$0_initialize_context"
  %i110 = phi i64 [ %i107, %"sha_transform$0_initialize_context" ], [ %i119, %"sha_transform$0_extract_next_values" ]
  %i111 = phi i64 [ %i103, %"sha_transform$0_initialize_context" ], [ %i121, %"sha_transform$0_extract_next_values" ]
  %i112 = phi i64 [ %i101, %"sha_transform$0_initialize_context" ], [ %i123, %"sha_transform$0_extract_next_values" ]
  %i113 = phi i64 [ %i105, %"sha_transform$0_initialize_context" ], [ %i125, %"sha_transform$0_extract_next_values" ]
  %i114 = phi i64 [ 60, %"sha_transform$0_initialize_context" ], [ %i127, %"sha_transform$0_extract_next_values" ]
  %i115 = phi i64 [ %i99, %"sha_transform$0_initialize_context" ], [ %i129, %"sha_transform$0_extract_next_values" ]
  call void @"sha_transform$0"(%8* %i108, i64 %i110, i64 %i111, i64 %i112, i64 %i113, i64 %i114, i64 %i115, [80 x i64]* %W, %9* %i109, i8 0)
  %i116 = getelementptr %9, %9* %i109, i32 0, i32 6
  %i117 = load i1, i1* %i116, align 1
  br i1 %i117, label %"sha_transform$0_extract_return_values$0", label %"sha_transform$0_extract_next_values"

"sha_transform$0_extract_next_values":            ; preds = %"sha_transform$0_call_recursive_function"
  %i118 = getelementptr %9, %9* %i109, i32 0, i32 0
  %i119 = load i64, i64* %i118, align 8
  %i120 = getelementptr %9, %9* %i109, i32 0, i32 1
  %i121 = load i64, i64* %i120, align 8
  %i122 = getelementptr %9, %9* %i109, i32 0, i32 2
  %i123 = load i64, i64* %i122, align 8
  %i124 = getelementptr %9, %9* %i109, i32 0, i32 3
  %i125 = load i64, i64* %i124, align 8
  %i126 = getelementptr %9, %9* %i109, i32 0, i32 4
  %i127 = load i64, i64* %i126, align 8
  %i128 = getelementptr %9, %9* %i109, i32 0, i32 5
  %i129 = load i64, i64* %i128, align 8
  br label %"sha_transform$0_call_recursive_function"

"sha_transform$0_extract_return_values$0":        ; preds = %"sha_transform$0_call_recursive_function"
  %i130 = getelementptr %8, %8* %i108, i32 0, i32 0
  %i131 = load i64, i64* %i130, align 8
  %i132 = getelementptr %8, %8* %i108, i32 0, i32 1
  %i133 = load i64, i64* %i132, align 8
  %i134 = getelementptr %8, %8* %i108, i32 0, i32 2
  %i135 = load i64, i64* %i134, align 8
  %i136 = getelementptr %8, %8* %i108, i32 0, i32 3
  %i137 = load i64, i64* %i136, align 8
  %i138 = getelementptr %8, %8* %i108, i32 0, i32 4
  %i139 = load i64, i64* %i138, align 8
  br label %for.end111

for.end111:                                       ; preds = %"sha_transform$0_extract_return_values$0"
  %add114 = add i64 %i7, %i139
  store i64 %add114, i64* %arrayidx24, align 8, !tbaa !1
  %add117 = add i64 %i8, %i135
  store i64 %add117, i64* %arrayidx26, align 8, !tbaa !1
  %add120 = add i64 %i9, %i137
  store i64 %add120, i64* %arrayidx28, align 8, !tbaa !1
  %add123 = add i64 %i10, %i133
  store i64 %add123, i64* %arrayidx30, align 8, !tbaa !1
  %add126 = add i64 %i11, %i131
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
  %i4 = alloca %10, align 8
  br label %"sha_stream$0_call_recursive_function"

"sha_stream$0_call_recursive_function":           ; preds = %"sha_stream$0_extract_next_values", %"sha_stream$0_initialize_context"
  %i5 = phi i32 [ %conv6, %"sha_stream$0_initialize_context" ], [ %i9, %"sha_stream$0_extract_next_values" ]
  call void @"sha_stream$0"(i32 %i5, %struct._IO_FILE* %fin, %struct.SHA_INFO* %sha_info, i8* %i, %10* %i4, i8 0)
  %i6 = getelementptr %10, %10* %i4, i32 0, i32 1
  %i7 = load i1, i1* %i6, align 1
  br i1 %i7, label %while.end.loopexit, label %"sha_stream$0_extract_next_values"

"sha_stream$0_extract_next_values":               ; preds = %"sha_stream$0_call_recursive_function"
  %i8 = getelementptr %10, %10* %i4, i32 0, i32 0
  %i9 = load i32, i32* %i8, align 4
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

define void @"sha_update$0"(i8* %arg, i32 %arg1, %struct.SHA_INFO* %arg2, i8* %arg3, i8* %arg4, i8* %arg5, i8* %arg6, i8* %arg7, i8* %arg8, i8* %arg9, i8* %arg10, i8* %arg11, i8* %arg12, i8* %arg13, i8* %arg14, i8* %arg15, i8* %arg16, i8* %arg17, i8* %arg18, i8* %arg19, i8* %arg20, i8* %arg21, i8* %arg22, i8* %arg23, i8* %arg24, i8* %arg25, i8* %arg26, i8* %arg27, i8* %arg28, i8* %arg29, i8* %arg30, i8* %arg31, i8* %arg32, i8* %arg33, i8* %arg34, %0* %arg35, i8 %arg36) {
"sha_update$0_latch$0":
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arg18, i8* align 1 %arg, i64 64, i1 false)
  %i = load i8, i8* %arg18, align 1, !tbaa !8
  %i37 = load i8, i8* %arg27, align 1, !tbaa !8
  %i38 = load i8, i8* %arg15, align 1, !tbaa !8
  %i39 = load i8, i8* %arg12, align 1, !tbaa !8
  store i8 %i39, i8* %arg18, align 1, !tbaa !8
  store i8 %i38, i8* %arg27, align 1, !tbaa !8
  store i8 %i37, i8* %arg15, align 1, !tbaa !8
  store i8 %i, i8* %arg12, align 1, !tbaa !8
  %i40 = load i8, i8* %arg26, align 1, !tbaa !8
  %i41 = load i8, i8* %arg22, align 1, !tbaa !8
  %i42 = load i8, i8* %arg16, align 1, !tbaa !8
  %i43 = load i8, i8* %arg14, align 1, !tbaa !8
  store i8 %i43, i8* %arg26, align 1, !tbaa !8
  store i8 %i42, i8* %arg22, align 1, !tbaa !8
  store i8 %i41, i8* %arg16, align 1, !tbaa !8
  store i8 %i40, i8* %arg14, align 1, !tbaa !8
  %i44 = load i8, i8* %arg11, align 1, !tbaa !8
  %i45 = load i8, i8* %arg24, align 1, !tbaa !8
  %i46 = load i8, i8* %arg28, align 1, !tbaa !8
  %i47 = load i8, i8* %arg29, align 1, !tbaa !8
  store i8 %i47, i8* %arg11, align 1, !tbaa !8
  store i8 %i46, i8* %arg24, align 1, !tbaa !8
  store i8 %i45, i8* %arg28, align 1, !tbaa !8
  store i8 %i44, i8* %arg29, align 1, !tbaa !8
  %i48 = load i8, i8* %arg20, align 1, !tbaa !8
  %i49 = load i8, i8* %arg31, align 1, !tbaa !8
  %i50 = load i8, i8* %arg33, align 1, !tbaa !8
  %i51 = load i8, i8* %arg34, align 1, !tbaa !8
  store i8 %i51, i8* %arg20, align 1, !tbaa !8
  store i8 %i50, i8* %arg31, align 1, !tbaa !8
  store i8 %i49, i8* %arg33, align 1, !tbaa !8
  store i8 %i48, i8* %arg34, align 1, !tbaa !8
  %i52 = load i8, i8* %arg21, align 1, !tbaa !8
  %i53 = load i8, i8* %arg17, align 1, !tbaa !8
  %i54 = load i8, i8* %arg10, align 1, !tbaa !8
  %i55 = load i8, i8* %arg9, align 1, !tbaa !8
  store i8 %i55, i8* %arg21, align 1, !tbaa !8
  store i8 %i54, i8* %arg17, align 1, !tbaa !8
  store i8 %i53, i8* %arg10, align 1, !tbaa !8
  store i8 %i52, i8* %arg9, align 1, !tbaa !8
  %i56 = load i8, i8* %arg8, align 1, !tbaa !8
  %i57 = load i8, i8* %arg25, align 1, !tbaa !8
  %i58 = load i8, i8* %arg7, align 1, !tbaa !8
  %i59 = load i8, i8* %arg6, align 1, !tbaa !8
  store i8 %i59, i8* %arg8, align 1, !tbaa !8
  store i8 %i58, i8* %arg25, align 1, !tbaa !8
  store i8 %i57, i8* %arg7, align 1, !tbaa !8
  store i8 %i56, i8* %arg6, align 1, !tbaa !8
  %i60 = load i8, i8* %arg19, align 1, !tbaa !8
  %i61 = load i8, i8* %arg5, align 1, !tbaa !8
  %i62 = load i8, i8* %arg30, align 1, !tbaa !8
  %i63 = load i8, i8* %arg32, align 1, !tbaa !8
  store i8 %i63, i8* %arg19, align 1, !tbaa !8
  store i8 %i62, i8* %arg5, align 1, !tbaa !8
  store i8 %i61, i8* %arg30, align 1, !tbaa !8
  store i8 %i60, i8* %arg32, align 1, !tbaa !8
  %i64 = load i8, i8* %arg4, align 1, !tbaa !8
  %i65 = load i8, i8* %arg13, align 1, !tbaa !8
  %i66 = load i8, i8* %arg3, align 1, !tbaa !8
  %i67 = load i8, i8* %arg23, align 1, !tbaa !8
  store i8 %i67, i8* %arg4, align 1, !tbaa !8
  store i8 %i66, i8* %arg13, align 1, !tbaa !8
  store i8 %i65, i8* %arg3, align 1, !tbaa !8
  store i8 %i64, i8* %arg23, align 1, !tbaa !8
  tail call fastcc void @sha_transform(%struct.SHA_INFO* nonnull %arg2)
  %add.ptr = getelementptr inbounds i8, i8* %arg, i64 64
  %sub = add nsw i32 %arg1, -64
  %cmp10 = icmp sgt i32 %sub, 63
  br i1 %cmp10, label %"sha_update$0_increment_depth_counter", label %"sha_update$0_return_from_recursive_function$0", !llvm.loop !9

"sha_update$0_increment_depth_counter":           ; preds = %"sha_update$0_latch$0"
  %i68 = add i8 %arg36, 1
  %i69 = icmp ult i8 %i68, 8
  br i1 %i69, label %"sha_update$0_recursively_call_function", label %"sha_update$0_save_recursive_state_and_return"

"sha_update$0_recursively_call_function":         ; preds = %"sha_update$0_increment_depth_counter"
  call void @"sha_update$0"(i8* %add.ptr, i32 %sub, %struct.SHA_INFO* %arg2, i8* %arg3, i8* %arg4, i8* %arg5, i8* %arg6, i8* %arg7, i8* %arg8, i8* %arg9, i8* %arg10, i8* %arg11, i8* %arg12, i8* %arg13, i8* %arg14, i8* %arg15, i8* %arg16, i8* %arg17, i8* %arg18, i8* %arg19, i8* %arg20, i8* %arg21, i8* %arg22, i8* %arg23, i8* %arg24, i8* %arg25, i8* %arg26, i8* %arg27, i8* %arg28, i8* %arg29, i8* %arg30, i8* %arg31, i8* %arg32, i8* %arg33, i8* %arg34, %0* %arg35, i8 %i68)
  ret void

"sha_update$0_save_recursive_state_and_return":   ; preds = %"sha_update$0_increment_depth_counter"
  %i70 = getelementptr %0, %0* %arg35, i32 0, i32 0
  store i8* %add.ptr, i8** %i70, align 8
  %i71 = getelementptr %0, %0* %arg35, i32 0, i32 1
  store i32 %sub, i32* %i71, align 4
  %i72 = getelementptr %0, %0* %arg35, i32 0, i32 2
  store i1 false, i1* %i72, align 1
  ret void

"sha_update$0_return_from_recursive_function$0":  ; preds = %"sha_update$0_latch$0"
  %i73 = getelementptr %0, %0* %arg35, i32 0, i32 2
  store i1 true, i1* %i73, align 1
  ret void
}

define void @"sha_transform$0"(%8* %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6, [80 x i64]* %arg7, %9* %arg8, i8 %arg9) {
"sha_transform$0_latch$0":
  %shl95 = shl i64 %arg1, 5
  %shr96 = lshr i64 %arg1, 27
  %or97 = or i64 %shl95, %shr96
  %xor98 = xor i64 %arg4, %arg2
  %xor99 = xor i64 %xor98, %arg3
  %arrayidx103 = getelementptr inbounds [80 x i64], [80 x i64]* %arg7, i64 0, i64 %arg5
  %i = load i64, i64* %arrayidx103, align 8, !tbaa !1
  %add100 = add i64 %or97, 3395469782
  %add101 = add i64 %add100, %xor99
  %add104 = add i64 %add101, %arg6
  %add105 = add i64 %add104, %i
  %shl106 = shl i64 %arg2, 30
  %shr107 = lshr i64 %arg2, 2
  %or108 = or i64 %shl106, %shr107
  %indvars.iv.next = add nuw nsw i64 %arg5, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond, label %"sha_transform$0_return_from_recursive_function$0", label %"sha_transform$0_increment_depth_counter"

"sha_transform$0_increment_depth_counter":        ; preds = %"sha_transform$0_latch$0"
  %i10 = add i8 %arg9, 1
  %i11 = icmp ult i8 %i10, 8
  br i1 %i11, label %"sha_transform$0_recursively_call_function", label %"sha_transform$0_save_recursive_state_and_return"

"sha_transform$0_recursively_call_function":      ; preds = %"sha_transform$0_increment_depth_counter"
  call void @"sha_transform$0"(%8* %arg, i64 %add105, i64 %arg1, i64 %arg4, i64 %or108, i64 %indvars.iv.next, i64 %arg3, [80 x i64]* %arg7, %9* %arg8, i8 %i10)
  ret void

"sha_transform$0_save_recursive_state_and_return": ; preds = %"sha_transform$0_increment_depth_counter"
  %i12 = getelementptr %9, %9* %arg8, i32 0, i32 0
  store i64 %add105, i64* %i12, align 8
  %i13 = getelementptr %9, %9* %arg8, i32 0, i32 1
  store i64 %arg1, i64* %i13, align 8
  %i14 = getelementptr %9, %9* %arg8, i32 0, i32 2
  store i64 %arg4, i64* %i14, align 8
  %i15 = getelementptr %9, %9* %arg8, i32 0, i32 3
  store i64 %or108, i64* %i15, align 8
  %i16 = getelementptr %9, %9* %arg8, i32 0, i32 4
  store i64 %indvars.iv.next, i64* %i16, align 8
  %i17 = getelementptr %9, %9* %arg8, i32 0, i32 5
  store i64 %arg3, i64* %i17, align 8
  %i18 = getelementptr %9, %9* %arg8, i32 0, i32 6
  store i1 false, i1* %i18, align 1
  ret void

"sha_transform$0_return_from_recursive_function$0": ; preds = %"sha_transform$0_latch$0"
  %i19 = getelementptr %8, %8* %arg, i32 0, i32 0
  store i64 %arg3, i64* %i19, align 8
  %i20 = getelementptr %8, %8* %arg, i32 0, i32 1
  store i64 %arg4, i64* %i20, align 8
  %i21 = getelementptr %8, %8* %arg, i32 0, i32 2
  store i64 %arg1, i64* %i21, align 8
  %i22 = getelementptr %8, %8* %arg, i32 0, i32 3
  store i64 %or108, i64* %i22, align 8
  %i23 = getelementptr %8, %8* %arg, i32 0, i32 4
  store i64 %add105, i64* %i23, align 8
  %i24 = getelementptr %9, %9* %arg8, i32 0, i32 6
  store i1 true, i1* %i24, align 1
  ret void
}

define void @"sha_transform$1"(%6* %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6, [80 x i64]* %arg7, %7* %arg8, i8 %arg9) {
"sha_transform$1_latch$0":
  %shl72 = shl i64 %arg1, 5
  %shr73 = lshr i64 %arg1, 27
  %or74 = or i64 %shl72, %shr73
  %and76216 = or i64 %arg4, %arg3
  %or77 = and i64 %and76216, %arg2
  %and78 = and i64 %arg4, %arg3
  %or79 = or i64 %or77, %and78
  %arrayidx83 = getelementptr inbounds [80 x i64], [80 x i64]* %arg7, i64 0, i64 %arg5
  %i = load i64, i64* %arrayidx83, align 8, !tbaa !1
  %add80 = add i64 %or74, 2400959708
  %add81 = add i64 %add80, %arg6
  %add84 = add i64 %add81, %or79
  %add85 = add i64 %add84, %i
  %shl86 = shl i64 %arg2, 30
  %shr87 = lshr i64 %arg2, 2
  %or88 = or i64 %shl86, %shr87
  %indvars.iv.next244 = add nuw nsw i64 %arg5, 1
  %exitcond245 = icmp eq i64 %indvars.iv.next244, 60
  br i1 %exitcond245, label %"sha_transform$1_return_from_recursive_function$0", label %"sha_transform$1_increment_depth_counter"

"sha_transform$1_increment_depth_counter":        ; preds = %"sha_transform$1_latch$0"
  %i10 = add i8 %arg9, 1
  %i11 = icmp ult i8 %i10, 8
  br i1 %i11, label %"sha_transform$1_recursively_call_function", label %"sha_transform$1_save_recursive_state_and_return"

"sha_transform$1_recursively_call_function":      ; preds = %"sha_transform$1_increment_depth_counter"
  call void @"sha_transform$1"(%6* %arg, i64 %add85, i64 %arg1, i64 %or88, i64 %arg3, i64 %indvars.iv.next244, i64 %arg4, [80 x i64]* %arg7, %7* %arg8, i8 %i10)
  ret void

"sha_transform$1_save_recursive_state_and_return": ; preds = %"sha_transform$1_increment_depth_counter"
  %i12 = getelementptr %7, %7* %arg8, i32 0, i32 0
  store i64 %add85, i64* %i12, align 8
  %i13 = getelementptr %7, %7* %arg8, i32 0, i32 1
  store i64 %arg1, i64* %i13, align 8
  %i14 = getelementptr %7, %7* %arg8, i32 0, i32 2
  store i64 %or88, i64* %i14, align 8
  %i15 = getelementptr %7, %7* %arg8, i32 0, i32 3
  store i64 %arg3, i64* %i15, align 8
  %i16 = getelementptr %7, %7* %arg8, i32 0, i32 4
  store i64 %indvars.iv.next244, i64* %i16, align 8
  %i17 = getelementptr %7, %7* %arg8, i32 0, i32 5
  store i64 %arg4, i64* %i17, align 8
  %i18 = getelementptr %7, %7* %arg8, i32 0, i32 6
  store i1 false, i1* %i18, align 1
  ret void

"sha_transform$1_return_from_recursive_function$0": ; preds = %"sha_transform$1_latch$0"
  %i19 = getelementptr %6, %6* %arg, i32 0, i32 0
  store i64 %arg4, i64* %i19, align 8
  %i20 = getelementptr %6, %6* %arg, i32 0, i32 1
  store i64 %arg3, i64* %i20, align 8
  %i21 = getelementptr %6, %6* %arg, i32 0, i32 2
  store i64 %arg1, i64* %i21, align 8
  %i22 = getelementptr %6, %6* %arg, i32 0, i32 3
  store i64 %or88, i64* %i22, align 8
  %i23 = getelementptr %6, %6* %arg, i32 0, i32 4
  store i64 %add85, i64* %i23, align 8
  %i24 = getelementptr %7, %7* %arg8, i32 0, i32 6
  store i1 true, i1* %i24, align 1
  ret void
}

define void @"sha_transform$2"(%4* %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6, [80 x i64]* %arg7, %5* %arg8, i8 %arg9) {
"sha_transform$2_latch$0":
  %shl52 = shl i64 %arg1, 5
  %shr53 = lshr i64 %arg1, 27
  %or54 = or i64 %shl52, %shr53
  %xor55 = xor i64 %arg3, %arg2
  %xor56 = xor i64 %xor55, %arg4
  %arrayidx60 = getelementptr inbounds [80 x i64], [80 x i64]* %arg7, i64 0, i64 %arg5
  %i = load i64, i64* %arrayidx60, align 8, !tbaa !1
  %add57 = add i64 %or54, 1859775393
  %add58 = add i64 %add57, %xor56
  %add61 = add i64 %add58, %arg6
  %add62 = add i64 %add61, %i
  %shl63 = shl i64 %arg2, 30
  %shr64 = lshr i64 %arg2, 2
  %or65 = or i64 %shl63, %shr64
  %indvars.iv.next247 = add nuw nsw i64 %arg5, 1
  %exitcond248 = icmp eq i64 %indvars.iv.next247, 40
  br i1 %exitcond248, label %"sha_transform$2_return_from_recursive_function$0", label %"sha_transform$2_increment_depth_counter"

"sha_transform$2_increment_depth_counter":        ; preds = %"sha_transform$2_latch$0"
  %i10 = add i8 %arg9, 1
  %i11 = icmp ult i8 %i10, 8
  br i1 %i11, label %"sha_transform$2_recursively_call_function", label %"sha_transform$2_save_recursive_state_and_return"

"sha_transform$2_recursively_call_function":      ; preds = %"sha_transform$2_increment_depth_counter"
  call void @"sha_transform$2"(%4* %arg, i64 %add62, i64 %arg1, i64 %or65, i64 %arg3, i64 %indvars.iv.next247, i64 %arg4, [80 x i64]* %arg7, %5* %arg8, i8 %i10)
  ret void

"sha_transform$2_save_recursive_state_and_return": ; preds = %"sha_transform$2_increment_depth_counter"
  %i12 = getelementptr %5, %5* %arg8, i32 0, i32 0
  store i64 %add62, i64* %i12, align 8
  %i13 = getelementptr %5, %5* %arg8, i32 0, i32 1
  store i64 %arg1, i64* %i13, align 8
  %i14 = getelementptr %5, %5* %arg8, i32 0, i32 2
  store i64 %or65, i64* %i14, align 8
  %i15 = getelementptr %5, %5* %arg8, i32 0, i32 3
  store i64 %arg3, i64* %i15, align 8
  %i16 = getelementptr %5, %5* %arg8, i32 0, i32 4
  store i64 %indvars.iv.next247, i64* %i16, align 8
  %i17 = getelementptr %5, %5* %arg8, i32 0, i32 5
  store i64 %arg4, i64* %i17, align 8
  %i18 = getelementptr %5, %5* %arg8, i32 0, i32 6
  store i1 false, i1* %i18, align 1
  ret void

"sha_transform$2_return_from_recursive_function$0": ; preds = %"sha_transform$2_latch$0"
  %i19 = getelementptr %4, %4* %arg, i32 0, i32 0
  store i64 %arg4, i64* %i19, align 8
  %i20 = getelementptr %4, %4* %arg, i32 0, i32 1
  store i64 %arg3, i64* %i20, align 8
  %i21 = getelementptr %4, %4* %arg, i32 0, i32 2
  store i64 %arg1, i64* %i21, align 8
  %i22 = getelementptr %4, %4* %arg, i32 0, i32 3
  store i64 %or65, i64* %i22, align 8
  %i23 = getelementptr %4, %4* %arg, i32 0, i32 4
  store i64 %add62, i64* %i23, align 8
  %i24 = getelementptr %5, %5* %arg8, i32 0, i32 6
  store i1 true, i1* %i24, align 1
  ret void
}

define void @"sha_transform$3"(%2* %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5, i64 %arg6, [80 x i64]* %arg7, %3* %arg8, i8 %arg9) {
"sha_transform$3_latch$0":
  %shl = shl i64 %arg1, 5
  %shr = lshr i64 %arg1, 27
  %or = or i64 %shl, %shr
  %and = and i64 %arg3, %arg2
  %neg = xor i64 %arg2, -1
  %and36 = and i64 %arg4, %neg
  %or37 = or i64 %and36, %and
  %arrayidx40 = getelementptr inbounds [80 x i64], [80 x i64]* %arg7, i64 0, i64 %arg5
  %i = load i64, i64* %arrayidx40, align 8, !tbaa !1
  %add = add i64 %or, 1518500249
  %add38 = add i64 %add, %arg6
  %add41 = add i64 %add38, %or37
  %add42 = add i64 %add41, %i
  %shl43 = shl i64 %arg2, 30
  %shr44 = lshr i64 %arg2, 2
  %or45 = or i64 %shl43, %shr44
  %indvars.iv.next250 = add nuw nsw i64 %arg5, 1
  %exitcond251 = icmp eq i64 %indvars.iv.next250, 20
  br i1 %exitcond251, label %"sha_transform$3_return_from_recursive_function$0", label %"sha_transform$3_increment_depth_counter"

"sha_transform$3_increment_depth_counter":        ; preds = %"sha_transform$3_latch$0"
  %i10 = add i8 %arg9, 1
  %i11 = icmp ult i8 %i10, 8
  br i1 %i11, label %"sha_transform$3_recursively_call_function", label %"sha_transform$3_save_recursive_state_and_return"

"sha_transform$3_recursively_call_function":      ; preds = %"sha_transform$3_increment_depth_counter"
  call void @"sha_transform$3"(%2* %arg, i64 %add42, i64 %arg1, i64 %or45, i64 %arg3, i64 %indvars.iv.next250, i64 %arg4, [80 x i64]* %arg7, %3* %arg8, i8 %i10)
  ret void

"sha_transform$3_save_recursive_state_and_return": ; preds = %"sha_transform$3_increment_depth_counter"
  %i12 = getelementptr %3, %3* %arg8, i32 0, i32 0
  store i64 %add42, i64* %i12, align 8
  %i13 = getelementptr %3, %3* %arg8, i32 0, i32 1
  store i64 %arg1, i64* %i13, align 8
  %i14 = getelementptr %3, %3* %arg8, i32 0, i32 2
  store i64 %or45, i64* %i14, align 8
  %i15 = getelementptr %3, %3* %arg8, i32 0, i32 3
  store i64 %arg3, i64* %i15, align 8
  %i16 = getelementptr %3, %3* %arg8, i32 0, i32 4
  store i64 %indvars.iv.next250, i64* %i16, align 8
  %i17 = getelementptr %3, %3* %arg8, i32 0, i32 5
  store i64 %arg4, i64* %i17, align 8
  %i18 = getelementptr %3, %3* %arg8, i32 0, i32 6
  store i1 false, i1* %i18, align 1
  ret void

"sha_transform$3_return_from_recursive_function$0": ; preds = %"sha_transform$3_latch$0"
  %i19 = getelementptr %2, %2* %arg, i32 0, i32 0
  store i64 %arg4, i64* %i19, align 8
  %i20 = getelementptr %2, %2* %arg, i32 0, i32 1
  store i64 %arg3, i64* %i20, align 8
  %i21 = getelementptr %2, %2* %arg, i32 0, i32 2
  store i64 %arg1, i64* %i21, align 8
  %i22 = getelementptr %2, %2* %arg, i32 0, i32 3
  store i64 %or45, i64* %i22, align 8
  %i23 = getelementptr %2, %2* %arg, i32 0, i32 4
  store i64 %add42, i64* %i23, align 8
  %i24 = getelementptr %3, %3* %arg8, i32 0, i32 6
  store i1 true, i1* %i24, align 1
  ret void
}

define void @"sha_transform$4"(i64 %arg, [80 x i64]* %arg1, %1* %arg2, i8 %arg3) {
"sha_transform$4_latch$0":
  %i = add nsw i64 %arg, -3
  %arrayidx7 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %i
  %i4 = load i64, i64* %arrayidx7, align 8, !tbaa !1
  %i5 = add nsw i64 %arg, -8
  %arrayidx10 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %i5
  %i6 = load i64, i64* %arrayidx10, align 16, !tbaa !1
  %xor = xor i64 %i6, %i4
  %i7 = add nsw i64 %arg, -14
  %arrayidx13 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %i7
  %i8 = load i64, i64* %arrayidx13, align 16, !tbaa !1
  %xor14 = xor i64 %xor, %i8
  %i9 = add nsw i64 %arg, -16
  %arrayidx17 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %i9
  %i10 = load i64, i64* %arrayidx17, align 16, !tbaa !1
  %xor18 = xor i64 %xor14, %i10
  %arrayidx20 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %arg
  store i64 %xor18, i64* %arrayidx20, align 16, !tbaa !1
  %indvars.iv.next253 = or i64 %arg, 1
  %i11 = add nsw i64 %arg, -2
  %arrayidx7.1 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %i11
  %i12 = load i64, i64* %arrayidx7.1, align 16, !tbaa !1
  %i13 = add nsw i64 %arg, -7
  %arrayidx10.1 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %i13
  %i14 = load i64, i64* %arrayidx10.1, align 8, !tbaa !1
  %xor.1 = xor i64 %i14, %i12
  %i15 = add nsw i64 %arg, -13
  %arrayidx13.1 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %i15
  %i16 = load i64, i64* %arrayidx13.1, align 8, !tbaa !1
  %xor14.1 = xor i64 %xor.1, %i16
  %i17 = add nsw i64 %arg, -15
  %arrayidx17.1 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %i17
  %i18 = load i64, i64* %arrayidx17.1, align 8, !tbaa !1
  %xor18.1 = xor i64 %xor14.1, %i18
  %arrayidx20.1 = getelementptr inbounds [80 x i64], [80 x i64]* %arg1, i64 0, i64 %indvars.iv.next253
  store i64 %xor18.1, i64* %arrayidx20.1, align 8, !tbaa !1
  %indvars.iv.next253.1 = add nsw i64 %arg, 2
  %exitcond258.1 = icmp eq i64 %indvars.iv.next253.1, 80
  br i1 %exitcond258.1, label %"sha_transform$4_return_from_recursive_function$0", label %"sha_transform$4_increment_depth_counter"

"sha_transform$4_increment_depth_counter":        ; preds = %"sha_transform$4_latch$0"
  %i19 = add i8 %arg3, 1
  %i20 = icmp ult i8 %i19, 8
  br i1 %i20, label %"sha_transform$4_recursively_call_function", label %"sha_transform$4_save_recursive_state_and_return"

"sha_transform$4_recursively_call_function":      ; preds = %"sha_transform$4_increment_depth_counter"
  call void @"sha_transform$4"(i64 %indvars.iv.next253.1, [80 x i64]* %arg1, %1* %arg2, i8 %i19)
  ret void

"sha_transform$4_save_recursive_state_and_return": ; preds = %"sha_transform$4_increment_depth_counter"
  %i21 = getelementptr %1, %1* %arg2, i32 0, i32 0
  store i64 %indvars.iv.next253.1, i64* %i21, align 8
  %i22 = getelementptr %1, %1* %arg2, i32 0, i32 1
  store i1 false, i1* %i22, align 1
  ret void

"sha_transform$4_return_from_recursive_function$0": ; preds = %"sha_transform$4_latch$0"
  %i23 = getelementptr %1, %1* %arg2, i32 0, i32 1
  store i1 true, i1* %i23, align 1
  ret void
}

define void @"sha_stream$0"(i32 %arg, %struct._IO_FILE* %arg1, %struct.SHA_INFO* %arg2, i8* %arg3, %10* %arg4, i8 %arg5) {
"sha_stream$0_latch$0":
  call void @sha_update(%struct.SHA_INFO* %arg2, i8* %arg3, i32 %arg)
  %call = call i64 @fread(i8* %arg3, i64 1, i64 8192, %struct._IO_FILE* %arg1)
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %"sha_stream$0_increment_depth_counter", label %"sha_stream$0_return_from_recursive_function$0", !llvm.loop !9

"sha_stream$0_increment_depth_counter":           ; preds = %"sha_stream$0_latch$0"
  %i = add i8 %arg5, 1
  %i6 = icmp ult i8 %i, 8
  br i1 %i6, label %"sha_stream$0_recursively_call_function", label %"sha_stream$0_save_recursive_state_and_return"

"sha_stream$0_recursively_call_function":         ; preds = %"sha_stream$0_increment_depth_counter"
  call void @"sha_stream$0"(i32 %conv, %struct._IO_FILE* %arg1, %struct.SHA_INFO* %arg2, i8* %arg3, %10* %arg4, i8 %i)
  ret void

"sha_stream$0_save_recursive_state_and_return":   ; preds = %"sha_stream$0_increment_depth_counter"
  %i7 = getelementptr %10, %10* %arg4, i32 0, i32 0
  store i32 %conv, i32* %i7, align 4
  %i8 = getelementptr %10, %10* %arg4, i32 0, i32 1
  store i1 false, i1* %i8, align 1
  ret void

"sha_stream$0_return_from_recursive_function$0":  ; preds = %"sha_stream$0_latch$0"
  %i9 = getelementptr %10, %10* %arg4, i32 0, i32 1
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
