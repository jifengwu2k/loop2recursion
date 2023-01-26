; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-128/bf/bf_cfb64.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32 }
%1 = type { i8*, i8*, i64, i32, i1 }
%2 = type { i32 }
%3 = type { i8*, i64, i8*, i32, i1 }
%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: nounwind uwtable
define void @BF_cfb64_encrypt(i8* nocapture readonly %in, i8* nocapture %out, i64 %length, %struct.bf_key_st* %schedule, i8* %ivec, i32* nocapture %num, i32 %encrypt) #0 {
entry:
  %ti = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %ti to [2 x i64]*
  %i = load i32, i32* %num, align 4, !tbaa !1
  %i1 = bitcast <2 x i64>* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %i1) #3
  %tobool = icmp eq i32 %encrypt, 0
  %dec68247 = add nsw i64 %length, -1
  %tobool69248 = icmp eq i64 %length, 0
  br i1 %tobool, label %while.cond67.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool69248, label %if.end151, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr6 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr10 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx = getelementptr inbounds <2 x i64>, <2 x i64>* %ti, i64 0, i64 0
  %incdec.ptr13 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr16 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr20 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx27 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  br label %"BF_cfb64_encrypt$1_initialize_context"

"BF_cfb64_encrypt$1_initialize_context":          ; preds = %while.body.lr.ph
  %i2 = alloca %0, align 8
  %i3 = alloca %1, align 8
  br label %"BF_cfb64_encrypt$1_call_recursive_function"

"BF_cfb64_encrypt$1_call_recursive_function":     ; preds = %"BF_cfb64_encrypt$1_extract_next_values", %"BF_cfb64_encrypt$1_initialize_context"
  %i4 = phi i8* [ %out, %"BF_cfb64_encrypt$1_initialize_context" ], [ %i11, %"BF_cfb64_encrypt$1_extract_next_values" ]
  %i5 = phi i8* [ %in, %"BF_cfb64_encrypt$1_initialize_context" ], [ %i13, %"BF_cfb64_encrypt$1_extract_next_values" ]
  %i6 = phi i64 [ %dec68247, %"BF_cfb64_encrypt$1_initialize_context" ], [ %i15, %"BF_cfb64_encrypt$1_extract_next_values" ]
  %i7 = phi i32 [ %i, %"BF_cfb64_encrypt$1_initialize_context" ], [ %i17, %"BF_cfb64_encrypt$1_extract_next_values" ]
  call void @"BF_cfb64_encrypt$1"(%0* %i2, i8* %i4, i8* %i5, i64 %i6, i32 %i7, i64* %arrayidx27, %struct.bf_key_st* %schedule, i64* %arrayidx, <2 x i64>* %ti, i8* %incdec.ptr20, i8* %incdec.ptr16, i8* %incdec.ptr, i8* %incdec.ptr10, i8* %ivec, i8* %incdec.ptr3, i8* %incdec.ptr13, i8* %incdec.ptr6, %1* %i3, i8 0)
  %i8 = getelementptr %1, %1* %i3, i32 0, i32 4
  %i9 = load i1, i1* %i8, align 1
  br i1 %i9, label %"BF_cfb64_encrypt$1_extract_return_values$0", label %"BF_cfb64_encrypt$1_extract_next_values"

"BF_cfb64_encrypt$1_extract_next_values":         ; preds = %"BF_cfb64_encrypt$1_call_recursive_function"
  %i10 = getelementptr %1, %1* %i3, i32 0, i32 0
  %i11 = load i8*, i8** %i10, align 8
  %i12 = getelementptr %1, %1* %i3, i32 0, i32 1
  %i13 = load i8*, i8** %i12, align 8
  %i14 = getelementptr %1, %1* %i3, i32 0, i32 2
  %i15 = load i64, i64* %i14, align 8
  %i16 = getelementptr %1, %1* %i3, i32 0, i32 3
  %i17 = load i32, i32* %i16, align 4
  br label %"BF_cfb64_encrypt$1_call_recursive_function"

"BF_cfb64_encrypt$1_extract_return_values$0":     ; preds = %"BF_cfb64_encrypt$1_call_recursive_function"
  %i18 = getelementptr %0, %0* %i2, i32 0, i32 0
  %i19 = load i32, i32* %i18, align 4
  br label %if.end151.loopexit263

while.cond67.preheader:                           ; preds = %entry
  br i1 %tobool69248, label %if.end151, label %while.body70.lr.ph

while.body70.lr.ph:                               ; preds = %while.cond67.preheader
  %incdec.ptr74 = getelementptr inbounds i8, i8* %ivec, i64 1
  %incdec.ptr77 = getelementptr inbounds i8, i8* %ivec, i64 2
  %incdec.ptr81 = getelementptr inbounds i8, i8* %ivec, i64 3
  %incdec.ptr85 = getelementptr inbounds i8, i8* %ivec, i64 4
  %arrayidx88 = getelementptr inbounds <2 x i64>, <2 x i64>* %ti, i64 0, i64 0
  %incdec.ptr89 = getelementptr inbounds i8, i8* %ivec, i64 5
  %incdec.ptr92 = getelementptr inbounds i8, i8* %ivec, i64 6
  %incdec.ptr96 = getelementptr inbounds i8, i8* %ivec, i64 7
  %arrayidx103 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  br label %"BF_cfb64_encrypt$0_initialize_context"

"BF_cfb64_encrypt$0_initialize_context":          ; preds = %while.body70.lr.ph
  %i20 = alloca %2, align 8
  %i21 = alloca %3, align 8
  br label %"BF_cfb64_encrypt$0_call_recursive_function"

"BF_cfb64_encrypt$0_call_recursive_function":     ; preds = %"BF_cfb64_encrypt$0_extract_next_values", %"BF_cfb64_encrypt$0_initialize_context"
  %i22 = phi i8* [ %in, %"BF_cfb64_encrypt$0_initialize_context" ], [ %i29, %"BF_cfb64_encrypt$0_extract_next_values" ]
  %i23 = phi i64 [ %dec68247, %"BF_cfb64_encrypt$0_initialize_context" ], [ %i31, %"BF_cfb64_encrypt$0_extract_next_values" ]
  %i24 = phi i8* [ %out, %"BF_cfb64_encrypt$0_initialize_context" ], [ %i33, %"BF_cfb64_encrypt$0_extract_next_values" ]
  %i25 = phi i32 [ %i, %"BF_cfb64_encrypt$0_initialize_context" ], [ %i35, %"BF_cfb64_encrypt$0_extract_next_values" ]
  call void @"BF_cfb64_encrypt$0"(%2* %i20, i8* %i22, i64 %i23, i8* %i24, i32 %i25, i64* %arrayidx103, <2 x i64>* %ti, i8* %incdec.ptr96, i8* %incdec.ptr92, %struct.bf_key_st* %schedule, i64* %arrayidx88, i8* %incdec.ptr74, i8* %ivec, i8* %incdec.ptr77, i8* %incdec.ptr81, i8* %incdec.ptr85, i8* %incdec.ptr89, %3* %i21, i8 0)
  %i26 = getelementptr %3, %3* %i21, i32 0, i32 4
  %i27 = load i1, i1* %i26, align 1
  br i1 %i27, label %"BF_cfb64_encrypt$0_extract_return_values$0", label %"BF_cfb64_encrypt$0_extract_next_values"

"BF_cfb64_encrypt$0_extract_next_values":         ; preds = %"BF_cfb64_encrypt$0_call_recursive_function"
  %i28 = getelementptr %3, %3* %i21, i32 0, i32 0
  %i29 = load i8*, i8** %i28, align 8
  %i30 = getelementptr %3, %3* %i21, i32 0, i32 1
  %i31 = load i64, i64* %i30, align 8
  %i32 = getelementptr %3, %3* %i21, i32 0, i32 2
  %i33 = load i8*, i8** %i32, align 8
  %i34 = getelementptr %3, %3* %i21, i32 0, i32 3
  %i35 = load i32, i32* %i34, align 4
  br label %"BF_cfb64_encrypt$0_call_recursive_function"

"BF_cfb64_encrypt$0_extract_return_values$0":     ; preds = %"BF_cfb64_encrypt$0_call_recursive_function"
  %i36 = getelementptr %2, %2* %i20, i32 0, i32 0
  %i37 = load i32, i32* %i36, align 4
  br label %if.end151.loopexit

if.end151.loopexit:                               ; preds = %"BF_cfb64_encrypt$0_extract_return_values$0"
  br label %if.end151

if.end151.loopexit263:                            ; preds = %"BF_cfb64_encrypt$1_extract_return_values$0"
  br label %if.end151

if.end151:                                        ; preds = %if.end151.loopexit263, %if.end151.loopexit, %while.cond67.preheader, %while.cond.preheader
  %n.2 = phi i32 [ %i, %while.cond67.preheader ], [ %i, %while.cond.preheader ], [ %i37, %if.end151.loopexit ], [ %i19, %if.end151.loopexit263 ]
  store i32 %n.2, i32* %num, align 4, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %i1) #3
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

define void @"BF_cfb64_encrypt$0"(%2* %arg, i8* %arg1, i64 %arg2, i8* %arg3, i32 %arg4, i64* %arg5, <2 x i64>* %arg6, i8* %arg7, i8* %arg8, %struct.bf_key_st* %arg9, i64* %arg10, i8* %arg11, i8* %arg12, i8* %arg13, i8* %arg14, i8* %arg15, i8* %arg16, %3* %arg17, i8 %arg18) {
"BF_cfb64_encrypt$0_header":
  %cmp71 = icmp eq i32 %arg4, 0
  br i1 %cmp71, label %if.then73, label %"BF_cfb64_encrypt$0_latch$0"

if.then73:                                        ; preds = %"BF_cfb64_encrypt$0_header"
  %i = load i8, i8* %arg12, align 1, !tbaa !5
  %i19 = load i8, i8* %arg11, align 1, !tbaa !5
  %i20 = load i8, i8* %arg13, align 1, !tbaa !5
  %i21 = load i8, i8* %arg14, align 1, !tbaa !5
  %i22 = load i8, i8* %arg15, align 1, !tbaa !5
  %i23 = insertelement <2 x i8> undef, i8 %i, i32 0
  %i24 = insertelement <2 x i8> %i23, i8 %i22, i32 1
  %i25 = zext <2 x i8> %i24 to <2 x i64>
  %i26 = shl nuw nsw <2 x i64> %i25, <i64 24, i64 24>
  %i27 = load i8, i8* %arg16, align 1, !tbaa !5
  %i28 = insertelement <2 x i8> undef, i8 %i19, i32 0
  %i29 = insertelement <2 x i8> %i28, i8 %i27, i32 1
  %i30 = zext <2 x i8> %i29 to <2 x i64>
  %i31 = shl nuw nsw <2 x i64> %i30, <i64 16, i64 16>
  %i32 = or <2 x i64> %i31, %i26
  %i33 = load i8, i8* %arg8, align 1, !tbaa !5
  %i34 = insertelement <2 x i8> undef, i8 %i20, i32 0
  %i35 = insertelement <2 x i8> %i34, i8 %i33, i32 1
  %i36 = zext <2 x i8> %i35 to <2 x i64>
  %i37 = shl nuw nsw <2 x i64> %i36, <i64 8, i64 8>
  %i38 = or <2 x i64> %i32, %i37
  %i39 = load i8, i8* %arg7, align 1, !tbaa !5
  %i40 = insertelement <2 x i8> undef, i8 %i21, i32 0
  %i41 = insertelement <2 x i8> %i40, i8 %i39, i32 1
  %i42 = zext <2 x i8> %i41 to <2 x i64>
  %i43 = or <2 x i64> %i38, %i42
  store <2 x i64> %i43, <2 x i64>* %arg6, align 16, !tbaa !6
  call void @BF_encrypt(i64* %arg10, %struct.bf_key_st* %arg9, i32 1) #3
  %i44 = load i64, i64* %arg10, align 16, !tbaa !6
  %shr106 = lshr i64 %i44, 24
  %conv108 = trunc i64 %shr106 to i8
  store i8 %conv108, i8* %arg12, align 1, !tbaa !5
  %shr110 = lshr i64 %i44, 16
  %conv112 = trunc i64 %shr110 to i8
  store i8 %conv112, i8* %arg11, align 1, !tbaa !5
  %shr114 = lshr i64 %i44, 8
  %conv116 = trunc i64 %shr114 to i8
  store i8 %conv116, i8* %arg13, align 1, !tbaa !5
  %conv119 = trunc i64 %i44 to i8
  store i8 %conv119, i8* %arg14, align 1, !tbaa !5
  %i45 = load i64, i64* %arg5, align 8, !tbaa !6
  %shr122 = lshr i64 %i45, 24
  %conv124 = trunc i64 %shr122 to i8
  store i8 %conv124, i8* %arg15, align 1, !tbaa !5
  %shr126 = lshr i64 %i45, 16
  %conv128 = trunc i64 %shr126 to i8
  store i8 %conv128, i8* %arg16, align 1, !tbaa !5
  %shr130 = lshr i64 %i45, 8
  %conv132 = trunc i64 %shr130 to i8
  store i8 %conv132, i8* %arg8, align 1, !tbaa !5
  %conv135 = trunc i64 %i45 to i8
  store i8 %conv135, i8* %arg7, align 1, !tbaa !5
  br label %"BF_cfb64_encrypt$0_latch$0"

"BF_cfb64_encrypt$0_latch$0":                     ; preds = %if.then73, %"BF_cfb64_encrypt$0_header"
  %incdec.ptr138 = getelementptr inbounds i8, i8* %arg1, i64 1
  %i46 = load i8, i8* %arg1, align 1, !tbaa !5
  %idxprom139 = sext i32 %arg4 to i64
  %arrayidx140 = getelementptr inbounds i8, i8* %arg12, i64 %idxprom139
  %i47 = load i8, i8* %arrayidx140, align 1, !tbaa !5
  store i8 %i46, i8* %arrayidx140, align 1, !tbaa !5
  %xor145244 = xor i8 %i47, %i46
  %incdec.ptr147 = getelementptr inbounds i8, i8* %arg3, i64 1
  store i8 %xor145244, i8* %arg3, align 1, !tbaa !5
  %add148 = add nsw i32 %arg4, 1
  %and149 = and i32 %add148, 7
  %dec68 = add nsw i64 %arg2, -1
  %tobool69 = icmp eq i64 %arg2, 0
  br i1 %tobool69, label %"BF_cfb64_encrypt$0_return_from_recursive_function$0", label %"BF_cfb64_encrypt$0_increment_depth_counter"

"BF_cfb64_encrypt$0_increment_depth_counter":     ; preds = %"BF_cfb64_encrypt$0_latch$0"
  %i48 = add i8 %arg18, 1
  %i49 = icmp ult i8 %i48, -128
  br i1 %i49, label %"BF_cfb64_encrypt$0_recursively_call_function", label %"BF_cfb64_encrypt$0_save_recursive_state_and_return"

"BF_cfb64_encrypt$0_recursively_call_function":   ; preds = %"BF_cfb64_encrypt$0_increment_depth_counter"
  call void @"BF_cfb64_encrypt$0"(%2* %arg, i8* %incdec.ptr138, i64 %dec68, i8* %incdec.ptr147, i32 %and149, i64* %arg5, <2 x i64>* %arg6, i8* %arg7, i8* %arg8, %struct.bf_key_st* %arg9, i64* %arg10, i8* %arg11, i8* %arg12, i8* %arg13, i8* %arg14, i8* %arg15, i8* %arg16, %3* %arg17, i8 %i48)
  ret void

"BF_cfb64_encrypt$0_save_recursive_state_and_return": ; preds = %"BF_cfb64_encrypt$0_increment_depth_counter"
  %i50 = getelementptr %3, %3* %arg17, i32 0, i32 0
  store i8* %incdec.ptr138, i8** %i50, align 8
  %i51 = getelementptr %3, %3* %arg17, i32 0, i32 1
  store i64 %dec68, i64* %i51, align 8
  %i52 = getelementptr %3, %3* %arg17, i32 0, i32 2
  store i8* %incdec.ptr147, i8** %i52, align 8
  %i53 = getelementptr %3, %3* %arg17, i32 0, i32 3
  store i32 %and149, i32* %i53, align 4
  %i54 = getelementptr %3, %3* %arg17, i32 0, i32 4
  store i1 false, i1* %i54, align 1
  ret void

"BF_cfb64_encrypt$0_return_from_recursive_function$0": ; preds = %"BF_cfb64_encrypt$0_latch$0"
  %i55 = getelementptr %2, %2* %arg, i32 0, i32 0
  store i32 %and149, i32* %i55, align 4
  %i56 = getelementptr %3, %3* %arg17, i32 0, i32 4
  store i1 true, i1* %i56, align 1
  ret void
}

define void @"BF_cfb64_encrypt$1"(%0* %arg, i8* %arg1, i8* %arg2, i64 %arg3, i32 %arg4, i64* %arg5, %struct.bf_key_st* %arg6, i64* %arg7, <2 x i64>* %arg8, i8* %arg9, i8* %arg10, i8* %arg11, i8* %arg12, i8* %arg13, i8* %arg14, i8* %arg15, i8* %arg16, %1* %arg17, i8 %arg18) {
"BF_cfb64_encrypt$1_header":
  %cmp = icmp eq i32 %arg4, 0
  br i1 %cmp, label %if.then2, label %"BF_cfb64_encrypt$1_latch$0"

if.then2:                                         ; preds = %"BF_cfb64_encrypt$1_header"
  %i = load i8, i8* %arg13, align 1, !tbaa !5
  %i19 = load i8, i8* %arg11, align 1, !tbaa !5
  %i20 = load i8, i8* %arg14, align 1, !tbaa !5
  %i21 = load i8, i8* %arg16, align 1, !tbaa !5
  %i22 = load i8, i8* %arg12, align 1, !tbaa !5
  %i23 = insertelement <2 x i8> undef, i8 %i, i32 0
  %i24 = insertelement <2 x i8> %i23, i8 %i22, i32 1
  %i25 = zext <2 x i8> %i24 to <2 x i64>
  %i26 = shl nuw nsw <2 x i64> %i25, <i64 24, i64 24>
  %i27 = load i8, i8* %arg15, align 1, !tbaa !5
  %i28 = insertelement <2 x i8> undef, i8 %i19, i32 0
  %i29 = insertelement <2 x i8> %i28, i8 %i27, i32 1
  %i30 = zext <2 x i8> %i29 to <2 x i64>
  %i31 = shl nuw nsw <2 x i64> %i30, <i64 16, i64 16>
  %i32 = or <2 x i64> %i31, %i26
  %i33 = load i8, i8* %arg10, align 1, !tbaa !5
  %i34 = insertelement <2 x i8> undef, i8 %i20, i32 0
  %i35 = insertelement <2 x i8> %i34, i8 %i33, i32 1
  %i36 = zext <2 x i8> %i35 to <2 x i64>
  %i37 = shl nuw nsw <2 x i64> %i36, <i64 8, i64 8>
  %i38 = or <2 x i64> %i32, %i37
  %i39 = load i8, i8* %arg9, align 1, !tbaa !5
  %i40 = insertelement <2 x i8> undef, i8 %i21, i32 0
  %i41 = insertelement <2 x i8> %i40, i8 %i39, i32 1
  %i42 = zext <2 x i8> %i41 to <2 x i64>
  %i43 = or <2 x i64> %i38, %i42
  store <2 x i64> %i43, <2 x i64>* %arg8, align 16, !tbaa !6
  call void @BF_encrypt(i64* %arg7, %struct.bf_key_st* %arg6, i32 1) #3
  %i44 = load i64, i64* %arg7, align 16, !tbaa !6
  %shr = lshr i64 %i44, 24
  %conv29 = trunc i64 %shr to i8
  store i8 %conv29, i8* %arg13, align 1, !tbaa !5
  %shr31 = lshr i64 %i44, 16
  %conv33 = trunc i64 %shr31 to i8
  store i8 %conv33, i8* %arg11, align 1, !tbaa !5
  %shr35 = lshr i64 %i44, 8
  %conv37 = trunc i64 %shr35 to i8
  store i8 %conv37, i8* %arg14, align 1, !tbaa !5
  %conv40 = trunc i64 %i44 to i8
  store i8 %conv40, i8* %arg16, align 1, !tbaa !5
  %i45 = load i64, i64* %arg5, align 8, !tbaa !6
  %shr43 = lshr i64 %i45, 24
  %conv45 = trunc i64 %shr43 to i8
  store i8 %conv45, i8* %arg12, align 1, !tbaa !5
  %shr47 = lshr i64 %i45, 16
  %conv49 = trunc i64 %shr47 to i8
  store i8 %conv49, i8* %arg15, align 1, !tbaa !5
  %shr51 = lshr i64 %i45, 8
  %conv53 = trunc i64 %shr51 to i8
  store i8 %conv53, i8* %arg10, align 1, !tbaa !5
  %conv56 = trunc i64 %i45 to i8
  store i8 %conv56, i8* %arg9, align 1, !tbaa !5
  br label %"BF_cfb64_encrypt$1_latch$0"

"BF_cfb64_encrypt$1_latch$0":                     ; preds = %if.then2, %"BF_cfb64_encrypt$1_header"
  %incdec.ptr58 = getelementptr inbounds i8, i8* %arg2, i64 1
  %i46 = load i8, i8* %arg2, align 1, !tbaa !5
  %idxprom = sext i32 %arg4 to i64
  %arrayidx60 = getelementptr inbounds i8, i8* %arg13, i64 %idxprom
  %i47 = load i8, i8* %arrayidx60, align 1, !tbaa !5
  %xor245 = xor i8 %i47, %i46
  %incdec.ptr63 = getelementptr inbounds i8, i8* %arg1, i64 1
  store i8 %xor245, i8* %arg1, align 1, !tbaa !5
  store i8 %xor245, i8* %arrayidx60, align 1, !tbaa !5
  %add = add nsw i32 %arg4, 1
  %and66 = and i32 %add, 7
  %dec = add nsw i64 %arg3, -1
  %tobool1 = icmp eq i64 %arg3, 0
  br i1 %tobool1, label %"BF_cfb64_encrypt$1_return_from_recursive_function$0", label %"BF_cfb64_encrypt$1_increment_depth_counter"

"BF_cfb64_encrypt$1_increment_depth_counter":     ; preds = %"BF_cfb64_encrypt$1_latch$0"
  %i48 = add i8 %arg18, 1
  %i49 = icmp ult i8 %i48, -128
  br i1 %i49, label %"BF_cfb64_encrypt$1_recursively_call_function", label %"BF_cfb64_encrypt$1_save_recursive_state_and_return"

"BF_cfb64_encrypt$1_recursively_call_function":   ; preds = %"BF_cfb64_encrypt$1_increment_depth_counter"
  call void @"BF_cfb64_encrypt$1"(%0* %arg, i8* %incdec.ptr63, i8* %incdec.ptr58, i64 %dec, i32 %and66, i64* %arg5, %struct.bf_key_st* %arg6, i64* %arg7, <2 x i64>* %arg8, i8* %arg9, i8* %arg10, i8* %arg11, i8* %arg12, i8* %arg13, i8* %arg14, i8* %arg15, i8* %arg16, %1* %arg17, i8 %i48)
  ret void

"BF_cfb64_encrypt$1_save_recursive_state_and_return": ; preds = %"BF_cfb64_encrypt$1_increment_depth_counter"
  %i50 = getelementptr %1, %1* %arg17, i32 0, i32 0
  store i8* %incdec.ptr63, i8** %i50, align 8
  %i51 = getelementptr %1, %1* %arg17, i32 0, i32 1
  store i8* %incdec.ptr58, i8** %i51, align 8
  %i52 = getelementptr %1, %1* %arg17, i32 0, i32 2
  store i64 %dec, i64* %i52, align 8
  %i53 = getelementptr %1, %1* %arg17, i32 0, i32 3
  store i32 %and66, i32* %i53, align 4
  %i54 = getelementptr %1, %1* %arg17, i32 0, i32 4
  store i1 false, i1* %i54, align 1
  ret void

"BF_cfb64_encrypt$1_return_from_recursive_function$0": ; preds = %"BF_cfb64_encrypt$1_latch$0"
  %i55 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i32 %and66, i32* %i55, align 4
  %i56 = getelementptr %1, %1* %arg17, i32 0, i32 4
  store i1 true, i1* %i56, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !3, i64 0}
