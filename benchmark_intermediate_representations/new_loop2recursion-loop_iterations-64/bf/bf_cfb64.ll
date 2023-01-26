; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-64/bf/bf_cfb64.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32 }
%1 = type { i32 }
%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@"BF_cfb64_encrypt$1_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2" = dso_local global <2 x i64>* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10" = dso_local global %struct.bf_key_st* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11" = dso_local global i8* null
@"BF_cfb64_encrypt$0_return_value_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20" = dso_local global i8* null

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
  store i64* %arrayidx27, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0", align 8
  store i64* %arrayidx, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1", align 8
  store <2 x i64>* %ti, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2", align 8
  store i8* %incdec.ptr20, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3", align 8
  store i8* %incdec.ptr16, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4", align 8
  store i8* %incdec.ptr, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5", align 8
  store i8* %ivec, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  store i8* %incdec.ptr3, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7", align 8
  store i8* %incdec.ptr13, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8", align 8
  store i8* %incdec.ptr6, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9", align 8
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  store i8* %incdec.ptr10, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11", align 8
  br label %"BF_cfb64_encrypt$1_call_recursive_function"

"BF_cfb64_encrypt$1_call_recursive_function":     ; preds = %"BF_cfb64_encrypt$1_initialize_context"
  call void @"BF_cfb64_encrypt$1"(i8* %out, i8* %in, i64 %dec68247, i32 %i)
  br label %"BF_cfb64_encrypt$1_extract_return_values$0"

"BF_cfb64_encrypt$1_extract_return_values$0":     ; preds = %"BF_cfb64_encrypt$1_call_recursive_function"
  %i2 = getelementptr %0, %0* @"BF_cfb64_encrypt$1_return_value_struct", i32 0, i32 0
  %i3 = load i32, i32* %i2, align 4
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
  store <2 x i64>* %ti, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2", align 8
  store i8* %incdec.ptr96, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12", align 8
  store %struct.bf_key_st* %schedule, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  store i8* %incdec.ptr92, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13", align 8
  store i64* %arrayidx88, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14", align 8
  store i8* %incdec.ptr74, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15", align 8
  store i64* %arrayidx103, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16", align 8
  store i8* %ivec, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  store i8* %incdec.ptr77, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17", align 8
  store i8* %incdec.ptr81, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18", align 8
  store i8* %incdec.ptr85, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19", align 8
  store i8* %incdec.ptr89, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20", align 8
  br label %"BF_cfb64_encrypt$0_call_recursive_function"

"BF_cfb64_encrypt$0_call_recursive_function":     ; preds = %"BF_cfb64_encrypt$0_initialize_context"
  call void @"BF_cfb64_encrypt$0"(i8* %in, i64 %dec68247, i8* %out, i32 %i)
  br label %"BF_cfb64_encrypt$0_extract_return_values$0"

"BF_cfb64_encrypt$0_extract_return_values$0":     ; preds = %"BF_cfb64_encrypt$0_call_recursive_function"
  %i4 = getelementptr %1, %1* @"BF_cfb64_encrypt$0_return_value_struct", i32 0, i32 0
  %i5 = load i32, i32* %i4, align 4
  br label %if.end151.loopexit

if.end151.loopexit:                               ; preds = %"BF_cfb64_encrypt$0_extract_return_values$0"
  br label %if.end151

if.end151.loopexit263:                            ; preds = %"BF_cfb64_encrypt$1_extract_return_values$0"
  br label %if.end151

if.end151:                                        ; preds = %if.end151.loopexit263, %if.end151.loopexit, %while.cond67.preheader, %while.cond.preheader
  %n.2 = phi i32 [ %i, %while.cond67.preheader ], [ %i, %while.cond.preheader ], [ %i5, %if.end151.loopexit ], [ %i3, %if.end151.loopexit263 ]
  store i32 %n.2, i32* %num, align 4, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %i1) #3
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

define void @"BF_cfb64_encrypt$1"(i8* %arg, i8* %arg1, i64 %arg2, i32 %arg3) {
"BF_cfb64_encrypt$1_preheader_in_recursion":
  br label %"BF_cfb64_encrypt$1_header"

"BF_cfb64_encrypt$1_header":                      ; preds = %"BF_cfb64_encrypt$1_increment_loop_counter$0", %"BF_cfb64_encrypt$1_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"BF_cfb64_encrypt$1_preheader_in_recursion" ], [ %i55, %"BF_cfb64_encrypt$1_increment_loop_counter$0" ]
  %dec258 = phi i64 [ %arg2, %"BF_cfb64_encrypt$1_preheader_in_recursion" ], [ %dec, %"BF_cfb64_encrypt$1_increment_loop_counter$0" ]
  %n.0257 = phi i32 [ %arg3, %"BF_cfb64_encrypt$1_preheader_in_recursion" ], [ %and66, %"BF_cfb64_encrypt$1_increment_loop_counter$0" ]
  %in.addr.0256 = phi i8* [ %arg1, %"BF_cfb64_encrypt$1_preheader_in_recursion" ], [ %incdec.ptr58, %"BF_cfb64_encrypt$1_increment_loop_counter$0" ]
  %out.addr.0255 = phi i8* [ %arg, %"BF_cfb64_encrypt$1_preheader_in_recursion" ], [ %incdec.ptr63, %"BF_cfb64_encrypt$1_increment_loop_counter$0" ]
  %cmp = icmp eq i32 %n.0257, 0
  br i1 %cmp, label %if.then2, label %"BF_cfb64_encrypt$1_latch$0"

if.then2:                                         ; preds = %"BF_cfb64_encrypt$1_header"
  %i = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  %i4 = load i8, i8* %i, align 1, !tbaa !5
  %i5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5", align 8
  %i6 = load i8, i8* %i5, align 1, !tbaa !5
  %i7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7", align 8
  %i8 = load i8, i8* %i7, align 1, !tbaa !5
  %i9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9", align 8
  %i10 = load i8, i8* %i9, align 1, !tbaa !5
  %i11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11", align 8
  %i12 = load i8, i8* %i11, align 1, !tbaa !5
  %i13 = insertelement <2 x i8> undef, i8 %i4, i32 0
  %i14 = insertelement <2 x i8> %i13, i8 %i12, i32 1
  %i15 = zext <2 x i8> %i14 to <2 x i64>
  %i16 = shl nuw nsw <2 x i64> %i15, <i64 24, i64 24>
  %i17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8", align 8
  %i18 = load i8, i8* %i17, align 1, !tbaa !5
  %i19 = insertelement <2 x i8> undef, i8 %i6, i32 0
  %i20 = insertelement <2 x i8> %i19, i8 %i18, i32 1
  %i21 = zext <2 x i8> %i20 to <2 x i64>
  %i22 = shl nuw nsw <2 x i64> %i21, <i64 16, i64 16>
  %i23 = or <2 x i64> %i22, %i16
  %i24 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4", align 8
  %i25 = load i8, i8* %i24, align 1, !tbaa !5
  %i26 = insertelement <2 x i8> undef, i8 %i8, i32 0
  %i27 = insertelement <2 x i8> %i26, i8 %i25, i32 1
  %i28 = zext <2 x i8> %i27 to <2 x i64>
  %i29 = shl nuw nsw <2 x i64> %i28, <i64 8, i64 8>
  %i30 = or <2 x i64> %i23, %i29
  %i31 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3", align 8
  %i32 = load i8, i8* %i31, align 1, !tbaa !5
  %i33 = insertelement <2 x i8> undef, i8 %i10, i32 0
  %i34 = insertelement <2 x i8> %i33, i8 %i32, i32 1
  %i35 = zext <2 x i8> %i34 to <2 x i64>
  %i36 = or <2 x i64> %i30, %i35
  %i37 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2", align 8
  store <2 x i64> %i36, <2 x i64>* %i37, align 16, !tbaa !6
  %i38 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1", align 8
  %i39 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  call void @BF_encrypt(i64* %i38, %struct.bf_key_st* %i39, i32 1) #3
  %i40 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$1", align 8
  %i41 = load i64, i64* %i40, align 16, !tbaa !6
  %shr = lshr i64 %i41, 24
  %conv29 = trunc i64 %shr to i8
  %i42 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  store i8 %conv29, i8* %i42, align 1, !tbaa !5
  %shr31 = lshr i64 %i41, 16
  %conv33 = trunc i64 %shr31 to i8
  %i43 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$5", align 8
  store i8 %conv33, i8* %i43, align 1, !tbaa !5
  %shr35 = lshr i64 %i41, 8
  %conv37 = trunc i64 %shr35 to i8
  %i44 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$7", align 8
  store i8 %conv37, i8* %i44, align 1, !tbaa !5
  %conv40 = trunc i64 %i41 to i8
  %i45 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$9", align 8
  store i8 %conv40, i8* %i45, align 1, !tbaa !5
  %i46 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$0", align 8
  %i47 = load i64, i64* %i46, align 8, !tbaa !6
  %shr43 = lshr i64 %i47, 24
  %conv45 = trunc i64 %shr43 to i8
  %i48 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$11", align 8
  store i8 %conv45, i8* %i48, align 1, !tbaa !5
  %shr47 = lshr i64 %i47, 16
  %conv49 = trunc i64 %shr47 to i8
  %i49 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$8", align 8
  store i8 %conv49, i8* %i49, align 1, !tbaa !5
  %shr51 = lshr i64 %i47, 8
  %conv53 = trunc i64 %shr51 to i8
  %i50 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$4", align 8
  store i8 %conv53, i8* %i50, align 1, !tbaa !5
  %conv56 = trunc i64 %i47 to i8
  %i51 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$3", align 8
  store i8 %conv56, i8* %i51, align 1, !tbaa !5
  br label %"BF_cfb64_encrypt$1_latch$0"

"BF_cfb64_encrypt$1_latch$0":                     ; preds = %if.then2, %"BF_cfb64_encrypt$1_header"
  %incdec.ptr58 = getelementptr inbounds i8, i8* %in.addr.0256, i64 1
  %i52 = load i8, i8* %in.addr.0256, align 1, !tbaa !5
  %idxprom = sext i32 %n.0257 to i64
  %i53 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %i53, i64 %idxprom
  %i54 = load i8, i8* %arrayidx60, align 1, !tbaa !5
  %xor245 = xor i8 %i54, %i52
  %incdec.ptr63 = getelementptr inbounds i8, i8* %out.addr.0255, i64 1
  store i8 %xor245, i8* %out.addr.0255, align 1, !tbaa !5
  store i8 %xor245, i8* %arrayidx60, align 1, !tbaa !5
  %add = add nsw i32 %n.0257, 1
  %and66 = and i32 %add, 7
  %dec = add nsw i64 %dec258, -1
  %tobool1 = icmp eq i64 %dec258, 0
  br i1 %tobool1, label %"BF_cfb64_encrypt$1_return_from_recursive_function$0", label %"BF_cfb64_encrypt$1_increment_loop_counter$0"

"BF_cfb64_encrypt$1_increment_loop_counter$0":    ; preds = %"BF_cfb64_encrypt$1_latch$0"
  %i55 = add i8 %loop_counter, 1
  %i56 = icmp ult i8 %i55, 64
  br i1 %i56, label %"BF_cfb64_encrypt$1_header", label %"BF_cfb64_encrypt$1_increment_depth_counter"

"BF_cfb64_encrypt$1_increment_depth_counter":     ; preds = %"BF_cfb64_encrypt$1_increment_loop_counter$0"
  %incdec.ptr58.lcssa4 = phi i8* [ %incdec.ptr58, %"BF_cfb64_encrypt$1_increment_loop_counter$0" ]
  %incdec.ptr63.lcssa3 = phi i8* [ %incdec.ptr63, %"BF_cfb64_encrypt$1_increment_loop_counter$0" ]
  %and66.lcssa2 = phi i32 [ %and66, %"BF_cfb64_encrypt$1_increment_loop_counter$0" ]
  %dec.lcssa1 = phi i64 [ %dec, %"BF_cfb64_encrypt$1_increment_loop_counter$0" ]
  br label %"BF_cfb64_encrypt$1_recursively_call_function"

"BF_cfb64_encrypt$1_recursively_call_function":   ; preds = %"BF_cfb64_encrypt$1_increment_depth_counter"
  call void @"BF_cfb64_encrypt$1"(i8* %incdec.ptr63.lcssa3, i8* %incdec.ptr58.lcssa4, i64 %dec.lcssa1, i32 %and66.lcssa2)
  ret void

"BF_cfb64_encrypt$1_return_from_recursive_function$0": ; preds = %"BF_cfb64_encrypt$1_latch$0"
  %and66.lcssa = phi i32 [ %and66, %"BF_cfb64_encrypt$1_latch$0" ]
  %i57 = getelementptr %0, %0* @"BF_cfb64_encrypt$1_return_value_struct", i32 0, i32 0
  store i32 %and66.lcssa, i32* %i57, align 4
  ret void
}

define void @"BF_cfb64_encrypt$0"(i8* %arg, i64 %arg1, i8* %arg2, i32 %arg3) {
"BF_cfb64_encrypt$0_preheader_in_recursion":
  br label %"BF_cfb64_encrypt$0_header"

"BF_cfb64_encrypt$0_header":                      ; preds = %"BF_cfb64_encrypt$0_increment_loop_counter$0", %"BF_cfb64_encrypt$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"BF_cfb64_encrypt$0_preheader_in_recursion" ], [ %i55, %"BF_cfb64_encrypt$0_increment_loop_counter$0" ]
  %dec68252 = phi i64 [ %arg1, %"BF_cfb64_encrypt$0_preheader_in_recursion" ], [ %dec68, %"BF_cfb64_encrypt$0_increment_loop_counter$0" ]
  %n.1251 = phi i32 [ %arg3, %"BF_cfb64_encrypt$0_preheader_in_recursion" ], [ %and149, %"BF_cfb64_encrypt$0_increment_loop_counter$0" ]
  %in.addr.1250 = phi i8* [ %arg, %"BF_cfb64_encrypt$0_preheader_in_recursion" ], [ %incdec.ptr138, %"BF_cfb64_encrypt$0_increment_loop_counter$0" ]
  %out.addr.1249 = phi i8* [ %arg2, %"BF_cfb64_encrypt$0_preheader_in_recursion" ], [ %incdec.ptr147, %"BF_cfb64_encrypt$0_increment_loop_counter$0" ]
  %cmp71 = icmp eq i32 %n.1251, 0
  br i1 %cmp71, label %if.then73, label %"BF_cfb64_encrypt$0_latch$0"

if.then73:                                        ; preds = %"BF_cfb64_encrypt$0_header"
  %i = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  %i4 = load i8, i8* %i, align 1, !tbaa !5
  %i5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15", align 8
  %i6 = load i8, i8* %i5, align 1, !tbaa !5
  %i7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17", align 8
  %i8 = load i8, i8* %i7, align 1, !tbaa !5
  %i9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18", align 8
  %i10 = load i8, i8* %i9, align 1, !tbaa !5
  %i11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19", align 8
  %i12 = load i8, i8* %i11, align 1, !tbaa !5
  %i13 = insertelement <2 x i8> undef, i8 %i4, i32 0
  %i14 = insertelement <2 x i8> %i13, i8 %i12, i32 1
  %i15 = zext <2 x i8> %i14 to <2 x i64>
  %i16 = shl nuw nsw <2 x i64> %i15, <i64 24, i64 24>
  %i17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20", align 8
  %i18 = load i8, i8* %i17, align 1, !tbaa !5
  %i19 = insertelement <2 x i8> undef, i8 %i6, i32 0
  %i20 = insertelement <2 x i8> %i19, i8 %i18, i32 1
  %i21 = zext <2 x i8> %i20 to <2 x i64>
  %i22 = shl nuw nsw <2 x i64> %i21, <i64 16, i64 16>
  %i23 = or <2 x i64> %i22, %i16
  %i24 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13", align 8
  %i25 = load i8, i8* %i24, align 1, !tbaa !5
  %i26 = insertelement <2 x i8> undef, i8 %i8, i32 0
  %i27 = insertelement <2 x i8> %i26, i8 %i25, i32 1
  %i28 = zext <2 x i8> %i27 to <2 x i64>
  %i29 = shl nuw nsw <2 x i64> %i28, <i64 8, i64 8>
  %i30 = or <2 x i64> %i23, %i29
  %i31 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12", align 8
  %i32 = load i8, i8* %i31, align 1, !tbaa !5
  %i33 = insertelement <2 x i8> undef, i8 %i10, i32 0
  %i34 = insertelement <2 x i8> %i33, i8 %i32, i32 1
  %i35 = zext <2 x i8> %i34 to <2 x i64>
  %i36 = or <2 x i64> %i30, %i35
  %i37 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$2", align 8
  store <2 x i64> %i36, <2 x i64>* %i37, align 16, !tbaa !6
  %i38 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$10", align 8
  %i39 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14", align 8
  call void @BF_encrypt(i64* %i39, %struct.bf_key_st* %i38, i32 1) #3
  %i40 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$14", align 8
  %i41 = load i64, i64* %i40, align 16, !tbaa !6
  %shr106 = lshr i64 %i41, 24
  %conv108 = trunc i64 %shr106 to i8
  %i42 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  store i8 %conv108, i8* %i42, align 1, !tbaa !5
  %shr110 = lshr i64 %i41, 16
  %conv112 = trunc i64 %shr110 to i8
  %i43 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$15", align 8
  store i8 %conv112, i8* %i43, align 1, !tbaa !5
  %shr114 = lshr i64 %i41, 8
  %conv116 = trunc i64 %shr114 to i8
  %i44 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$17", align 8
  store i8 %conv116, i8* %i44, align 1, !tbaa !5
  %conv119 = trunc i64 %i41 to i8
  %i45 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$18", align 8
  store i8 %conv119, i8* %i45, align 1, !tbaa !5
  %i46 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$16", align 8
  %i47 = load i64, i64* %i46, align 8, !tbaa !6
  %shr122 = lshr i64 %i47, 24
  %conv124 = trunc i64 %shr122 to i8
  %i48 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$19", align 8
  store i8 %conv124, i8* %i48, align 1, !tbaa !5
  %shr126 = lshr i64 %i47, 16
  %conv128 = trunc i64 %shr126 to i8
  %i49 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$20", align 8
  store i8 %conv128, i8* %i49, align 1, !tbaa !5
  %shr130 = lshr i64 %i47, 8
  %conv132 = trunc i64 %shr130 to i8
  %i50 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$13", align 8
  store i8 %conv132, i8* %i50, align 1, !tbaa !5
  %conv135 = trunc i64 %i47 to i8
  %i51 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$12", align 8
  store i8 %conv135, i8* %i51, align 1, !tbaa !5
  br label %"BF_cfb64_encrypt$0_latch$0"

"BF_cfb64_encrypt$0_latch$0":                     ; preds = %if.then73, %"BF_cfb64_encrypt$0_header"
  %incdec.ptr138 = getelementptr inbounds i8, i8* %in.addr.1250, i64 1
  %i52 = load i8, i8* %in.addr.1250, align 1, !tbaa !5
  %idxprom139 = sext i32 %n.1251 to i64
  %i53 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_cfb64.ll_invariant_variable$6", align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %i53, i64 %idxprom139
  %i54 = load i8, i8* %arrayidx140, align 1, !tbaa !5
  store i8 %i52, i8* %arrayidx140, align 1, !tbaa !5
  %xor145244 = xor i8 %i54, %i52
  %incdec.ptr147 = getelementptr inbounds i8, i8* %out.addr.1249, i64 1
  store i8 %xor145244, i8* %out.addr.1249, align 1, !tbaa !5
  %add148 = add nsw i32 %n.1251, 1
  %and149 = and i32 %add148, 7
  %dec68 = add nsw i64 %dec68252, -1
  %tobool69 = icmp eq i64 %dec68252, 0
  br i1 %tobool69, label %"BF_cfb64_encrypt$0_return_from_recursive_function$0", label %"BF_cfb64_encrypt$0_increment_loop_counter$0"

"BF_cfb64_encrypt$0_increment_loop_counter$0":    ; preds = %"BF_cfb64_encrypt$0_latch$0"
  %i55 = add i8 %loop_counter, 1
  %i56 = icmp ult i8 %i55, 64
  br i1 %i56, label %"BF_cfb64_encrypt$0_header", label %"BF_cfb64_encrypt$0_increment_depth_counter"

"BF_cfb64_encrypt$0_increment_depth_counter":     ; preds = %"BF_cfb64_encrypt$0_increment_loop_counter$0"
  %incdec.ptr138.lcssa4 = phi i8* [ %incdec.ptr138, %"BF_cfb64_encrypt$0_increment_loop_counter$0" ]
  %incdec.ptr147.lcssa3 = phi i8* [ %incdec.ptr147, %"BF_cfb64_encrypt$0_increment_loop_counter$0" ]
  %and149.lcssa2 = phi i32 [ %and149, %"BF_cfb64_encrypt$0_increment_loop_counter$0" ]
  %dec68.lcssa1 = phi i64 [ %dec68, %"BF_cfb64_encrypt$0_increment_loop_counter$0" ]
  br label %"BF_cfb64_encrypt$0_recursively_call_function"

"BF_cfb64_encrypt$0_recursively_call_function":   ; preds = %"BF_cfb64_encrypt$0_increment_depth_counter"
  call void @"BF_cfb64_encrypt$0"(i8* %incdec.ptr138.lcssa4, i64 %dec68.lcssa1, i8* %incdec.ptr147.lcssa3, i32 %and149.lcssa2)
  ret void

"BF_cfb64_encrypt$0_return_from_recursive_function$0": ; preds = %"BF_cfb64_encrypt$0_latch$0"
  %and149.lcssa = phi i32 [ %and149, %"BF_cfb64_encrypt$0_latch$0" ]
  %i57 = getelementptr %1, %1* @"BF_cfb64_encrypt$0_return_value_struct", i32 0, i32 0
  store i32 %and149.lcssa, i32* %i57, align 4
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
