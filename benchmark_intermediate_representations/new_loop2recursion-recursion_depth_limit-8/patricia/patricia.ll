; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-recursion_depth_limit-8/patricia/patricia.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/patricia/patricia.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { %struct.ptree* }
%1 = type { %struct.ptree*, i8, i1 }
%2 = type { i64, i8 }
%3 = type { i64, i1 }
%4 = type { i32, %struct.ptree_mask* }
%5 = type { %struct.ptree_mask*, i32, %struct.ptree_mask*, i32, i1 }
%6 = type { i32 }
%7 = type { i32, i1 }
%8 = type { %struct.ptree*, %struct.ptree* }
%9 = type { %struct.ptree*, i8, %struct.ptree*, i1 }
%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }

@"pat_insert$3_return_value_struct" = dso_local global %0 zeroinitializer
@"pat_insert$3_recursion_state_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$0" = dso_local global i64 0
@"pat_insert$1_return_value_struct" = dso_local global %2 zeroinitializer
@"pat_insert$1_recursion_state_struct" = dso_local global %3 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$1" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2" = dso_local global %struct.ptree_mask* null
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3" = dso_local global i64 0
@"pat_insert$0_return_value_struct" = dso_local global %4 zeroinitializer
@"pat_insert$0_recursion_state_struct" = dso_local global %5 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$4" = dso_local global %struct.ptree_mask** null
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$5" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$6" = dso_local global %struct.ptree_mask** null
@"pat_insert$2_return_value_struct" = dso_local global %6 zeroinitializer
@"pat_insert$2_recursion_state_struct" = dso_local global %7 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$7" = dso_local global i64 0
@"pat_search$0_return_value_struct" = dso_local global %8 zeroinitializer
@"pat_search$0_recursion_state_struct" = dso_local global %9 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$8" = dso_local global i64 0

; Function Attrs: nounwind uwtable
define %struct.ptree* @pat_insert(%struct.ptree* %n, %struct.ptree* %head) #0 {
entry:
  %tobool = icmp ne %struct.ptree* %head, null
  %tobool1 = icmp ne %struct.ptree* %n, null
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %p_m = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 1
  %i = load %struct.ptree_mask*, %struct.ptree_mask** %p_m, align 8, !tbaa !1
  %tobool3 = icmp eq %struct.ptree_mask* %i, null
  %i1 = bitcast %struct.ptree_mask* %i to i8*
  br i1 %tobool3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %i, i64 0, i32 0
  %i2 = load i64, i64* %pm_mask, align 8, !tbaa !7
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 0
  %i3 = load i64, i64* %p_key, align 8, !tbaa !9
  %and = and i64 %i3, %i2
  store i64 %and, i64* %p_key, align 8, !tbaa !9
  %p_b.phi.trans.insert = getelementptr inbounds %struct.ptree, %struct.ptree* %head, i64 0, i32 3
  %.pre = load i8, i8* %p_b.phi.trans.insert, align 1, !tbaa !10
  br label %"pat_insert$3_initialize_context"

"pat_insert$3_initialize_context":                ; preds = %if.end
  store i64 %and, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$0", align 8
  br label %"pat_insert$3_call_recursive_function"

"pat_insert$3_call_recursive_function":           ; preds = %"pat_insert$3_extract_next_values", %"pat_insert$3_initialize_context"
  %i4 = phi %struct.ptree* [ %head, %"pat_insert$3_initialize_context" ], [ %i9, %"pat_insert$3_extract_next_values" ]
  %i5 = phi i8 [ %.pre, %"pat_insert$3_initialize_context" ], [ %i11, %"pat_insert$3_extract_next_values" ]
  call void @"pat_insert$3"(%struct.ptree* %i4, i8 %i5, i8 0)
  %i6 = getelementptr %1, %1* @"pat_insert$3_recursion_state_struct", i32 0, i32 2
  %i7 = load i1, i1* %i6, align 1
  br i1 %i7, label %"pat_insert$3_extract_return_values$0", label %"pat_insert$3_extract_next_values"

"pat_insert$3_extract_next_values":               ; preds = %"pat_insert$3_call_recursive_function"
  %i8 = getelementptr %1, %1* @"pat_insert$3_recursion_state_struct", i32 0, i32 0
  %i9 = load %struct.ptree*, %struct.ptree** %i8, align 8
  %i10 = getelementptr %1, %1* @"pat_insert$3_recursion_state_struct", i32 0, i32 1
  %i11 = load i8, i8* %i10, align 1
  br label %"pat_insert$3_call_recursive_function"

"pat_insert$3_extract_return_values$0":           ; preds = %"pat_insert$3_call_recursive_function"
  %i12 = getelementptr %0, %0* @"pat_insert$3_return_value_struct", i32 0, i32 0
  %i13 = load %struct.ptree*, %struct.ptree** %i12, align 8
  br label %do.end

do.end:                                           ; preds = %"pat_insert$3_extract_return_values$0"
  %p_key13 = getelementptr inbounds %struct.ptree, %struct.ptree* %i13, i64 0, i32 0
  %i14 = load i64, i64* %p_key13, align 8, !tbaa !9
  %cmp14 = icmp eq i64 %and, %i14
  br i1 %cmp14, label %for.cond.preheader, label %for.cond71.preheader

for.cond71.preheader:                             ; preds = %do.end
  %i15 = xor i64 %i14, %and
  br label %"pat_insert$2_initialize_context"

"pat_insert$2_initialize_context":                ; preds = %for.cond71.preheader
  store i64 %i15, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$7", align 8
  br label %"pat_insert$2_call_recursive_function"

"pat_insert$2_call_recursive_function":           ; preds = %"pat_insert$2_extract_next_values", %"pat_insert$2_initialize_context"
  %i16 = phi i32 [ 1, %"pat_insert$2_initialize_context" ], [ %i20, %"pat_insert$2_extract_next_values" ]
  call void @"pat_insert$2"(i32 %i16, i8 0)
  %i17 = getelementptr %7, %7* @"pat_insert$2_recursion_state_struct", i32 0, i32 1
  %i18 = load i1, i1* %i17, align 1
  br i1 %i18, label %"pat_insert$2_extract_return_values$0", label %"pat_insert$2_extract_next_values"

"pat_insert$2_extract_next_values":               ; preds = %"pat_insert$2_call_recursive_function"
  %i19 = getelementptr %7, %7* @"pat_insert$2_recursion_state_struct", i32 0, i32 0
  %i20 = load i32, i32* %i19, align 4
  br label %"pat_insert$2_call_recursive_function"

"pat_insert$2_extract_return_values$0":           ; preds = %"pat_insert$2_call_recursive_function"
  %i21 = getelementptr %6, %6* @"pat_insert$2_return_value_struct", i32 0, i32 0
  %i22 = load i32, i32* %i21, align 4
  br label %for.end83

for.cond.preheader:                               ; preds = %do.end
  %p_mlen = getelementptr inbounds %struct.ptree, %struct.ptree* %i13, i64 0, i32 2
  %i23 = load i8, i8* %p_mlen, align 8, !tbaa !11
  %conv17192 = zext i8 %i23 to i64
  %cmp18193 = icmp eq i8 %i23, 0
  br i1 %cmp18193, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %i24 = load i64, i64* %pm_mask, align 8
  %p_m22 = getelementptr inbounds %struct.ptree, %struct.ptree* %i13, i64 0, i32 1
  %i25 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m22, align 8
  %i26 = zext i8 %i23 to i64
  br label %"pat_insert$1_initialize_context"

"pat_insert$1_initialize_context":                ; preds = %for.body.lr.ph
  store i64 %i26, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$1", align 8
  store %struct.ptree_mask* %i25, %struct.ptree_mask** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2", align 8
  store i64 %i24, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3", align 8
  br label %"pat_insert$1_call_recursive_function"

"pat_insert$1_call_recursive_function":           ; preds = %"pat_insert$1_extract_next_values", %"pat_insert$1_initialize_context"
  %i27 = phi i64 [ 0, %"pat_insert$1_initialize_context" ], [ %i31, %"pat_insert$1_extract_next_values" ]
  call void @"pat_insert$1"(i64 %i27, i8 0)
  %i28 = getelementptr %3, %3* @"pat_insert$1_recursion_state_struct", i32 0, i32 1
  %i29 = load i1, i1* %i28, align 1
  br i1 %i29, label %"pat_insert$1_branch_to_exit", label %"pat_insert$1_extract_next_values"

"pat_insert$1_extract_next_values":               ; preds = %"pat_insert$1_call_recursive_function"
  %i30 = getelementptr %3, %3* @"pat_insert$1_recursion_state_struct", i32 0, i32 0
  %i31 = load i64, i64* %i30, align 8
  br label %"pat_insert$1_call_recursive_function"

"pat_insert$1_branch_to_exit":                    ; preds = %"pat_insert$1_call_recursive_function"
  %i32 = getelementptr %2, %2* @"pat_insert$1_return_value_struct", i32 0, i32 1
  %i33 = load i8, i8* %i32, align 1
  switch i8 %i33, label %"pat_insert$1_extract_return_values$0" [
    i8 1, label %"pat_insert$1_extract_return_values$0"
    i8 0, label %"pat_insert$1_extract_return_values$1"
  ]

"pat_insert$1_extract_return_values$0":           ; preds = %"pat_insert$1_branch_to_exit", %"pat_insert$1_branch_to_exit"
  br label %for.end.loopexit

"pat_insert$1_extract_return_values$1":           ; preds = %"pat_insert$1_branch_to_exit"
  %i34 = getelementptr %2, %2* @"pat_insert$1_return_value_struct", i32 0, i32 0
  %i35 = load i64, i64* %i34, align 8
  br label %if.then26

if.then26:                                        ; preds = %"pat_insert$1_extract_return_values$1"
  %pm_data = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %i, i64 0, i32 1
  %i36 = bitcast i8** %pm_data to i64*
  %i37 = load i64, i64* %i36, align 8, !tbaa !12
  %pm_data31 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %i25, i64 %i35, i32 1
  %i38 = bitcast i8** %pm_data31 to i64*
  store i64 %i37, i64* %i38, align 8, !tbaa !12
  tail call void @free(i8* %i1) #4
  %i39 = bitcast %struct.ptree* %n to i8*
  tail call void @free(i8* %i39) #4
  br label %cleanup

for.end.loopexit:                                 ; preds = %"pat_insert$1_extract_return_values$0"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %add = shl nuw nsw i64 %conv17192, 4
  %mul = add nuw nsw i64 %add, 16
  %call37 = tail call noalias i8* @malloc(i64 %mul) #4
  %i40 = bitcast i8* %call37 to %struct.ptree_mask*
  %i41 = load i8, i8* %p_mlen, align 8, !tbaa !11
  %cmp41187 = icmp eq i8 %i41, 0
  br i1 %cmp41187, label %if.then62, label %for.body43.lr.ph

for.body43.lr.ph:                                 ; preds = %for.end
  %p_m47 = getelementptr inbounds %struct.ptree, %struct.ptree* %i13, i64 0, i32 1
  br label %"pat_insert$0_initialize_context"

"pat_insert$0_initialize_context":                ; preds = %for.body43.lr.ph
  store %struct.ptree_mask** %p_m47, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$4", align 8
  store i8* %p_mlen, i8** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$5", align 8
  store %struct.ptree_mask** %p_m, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$6", align 8
  br label %"pat_insert$0_call_recursive_function"

"pat_insert$0_call_recursive_function":           ; preds = %"pat_insert$0_extract_next_values", %"pat_insert$0_initialize_context"
  %i42 = phi %struct.ptree_mask* [ %i40, %"pat_insert$0_initialize_context" ], [ %i49, %"pat_insert$0_extract_next_values" ]
  %i43 = phi i32 [ 0, %"pat_insert$0_initialize_context" ], [ %i51, %"pat_insert$0_extract_next_values" ]
  %i44 = phi %struct.ptree_mask* [ %i, %"pat_insert$0_initialize_context" ], [ %i53, %"pat_insert$0_extract_next_values" ]
  %i45 = phi i32 [ 0, %"pat_insert$0_initialize_context" ], [ %i55, %"pat_insert$0_extract_next_values" ]
  call void @"pat_insert$0"(%struct.ptree_mask* %i42, i32 %i43, %struct.ptree_mask* %i44, i32 %i45, i8 0)
  %i46 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 4
  %i47 = load i1, i1* %i46, align 1
  br i1 %i47, label %"pat_insert$0_extract_return_values$0", label %"pat_insert$0_extract_next_values"

"pat_insert$0_extract_next_values":               ; preds = %"pat_insert$0_call_recursive_function"
  %i48 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 0
  %i49 = load %struct.ptree_mask*, %struct.ptree_mask** %i48, align 8
  %i50 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 1
  %i51 = load i32, i32* %i50, align 4
  %i52 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 2
  %i53 = load %struct.ptree_mask*, %struct.ptree_mask** %i52, align 8
  %i54 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 3
  %i55 = load i32, i32* %i54, align 4
  br label %"pat_insert$0_call_recursive_function"

"pat_insert$0_extract_return_values$0":           ; preds = %"pat_insert$0_call_recursive_function"
  %i56 = getelementptr %4, %4* @"pat_insert$0_return_value_struct", i32 0, i32 0
  %i57 = load i32, i32* %i56, align 4
  %i58 = getelementptr %4, %4* @"pat_insert$0_return_value_struct", i32 0, i32 1
  %i59 = load %struct.ptree_mask*, %struct.ptree_mask** %i58, align 8
  br label %for.end60

for.end60:                                        ; preds = %"pat_insert$0_extract_return_values$0"
  %tobool61 = icmp eq i32 %i57, 0
  br i1 %tobool61, label %if.then62, label %for.end60.if.end64_crit_edge

for.end60.if.end64_crit_edge:                     ; preds = %for.end60
  %.pre201 = bitcast %struct.ptree_mask** %p_m to i8**
  br label %if.end64

if.then62:                                        ; preds = %for.end60, %for.end
  %pm.0.lcssa203 = phi %struct.ptree_mask* [ %i59, %for.end60 ], [ %i40, %for.end ]
  %i60 = bitcast %struct.ptree_mask** %p_m to i8**
  %i61 = load i8*, i8** %i60, align 8, !tbaa !1
  %i62 = bitcast %struct.ptree_mask* %pm.0.lcssa203 to i8*
  tail call void @bcopy(i8* %i61, i8* %i62, i64 16) #4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.end60.if.end64_crit_edge
  %.pre-phi = phi i8** [ %.pre201, %for.end60.if.end64_crit_edge ], [ %i60, %if.then62 ]
  %i63 = load i8*, i8** %.pre-phi, align 8, !tbaa !1
  tail call void @free(i8* %i63) #4
  %i64 = bitcast %struct.ptree* %n to i8*
  tail call void @free(i8* %i64) #4
  %i65 = load i8, i8* %p_mlen, align 8, !tbaa !11
  %inc67 = add i8 %i65, 1
  store i8 %inc67, i8* %p_mlen, align 8, !tbaa !11
  %p_m68 = getelementptr inbounds %struct.ptree, %struct.ptree* %i13, i64 0, i32 1
  %i66 = bitcast %struct.ptree_mask** %p_m68 to i8**
  %i67 = load i8*, i8** %i66, align 8, !tbaa !1
  tail call void @free(i8* %i67) #4
  store i8* %call37, i8** %i66, align 8, !tbaa !1
  br label %cleanup

for.end83:                                        ; preds = %"pat_insert$2_extract_return_values$0"
  %conv85 = sext i8 %.pre to i32
  %sub.i178 = sub nsw i32 31, %conv85
  %shl.i179 = shl i32 1, %sub.i178
  %conv.i180 = sext i32 %shl.i179 to i64
  %and.i181 = and i64 %conv.i180, %and
  %tobool88 = icmp eq i64 %and.i181, 0
  br i1 %tobool88, label %if.else93, label %if.then89

if.then89:                                        ; preds = %for.end83
  %p_right90 = getelementptr inbounds %struct.ptree, %struct.ptree* %head, i64 0, i32 5
  %i68 = load %struct.ptree*, %struct.ptree** %p_right90, align 8, !tbaa !13
  %call91 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %i68, %struct.ptree* nonnull %n, i32 %i22, %struct.ptree* nonnull %head)
  store %struct.ptree* %call91, %struct.ptree** %p_right90, align 8, !tbaa !13
  br label %cleanup

if.else93:                                        ; preds = %for.end83
  %p_left94 = getelementptr inbounds %struct.ptree, %struct.ptree* %head, i64 0, i32 4
  %i69 = load %struct.ptree*, %struct.ptree** %p_left94, align 8, !tbaa !14
  %call95 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %i69, %struct.ptree* nonnull %n, i32 %i22, %struct.ptree* nonnull %head)
  store %struct.ptree* %call95, %struct.ptree** %p_left94, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.else93, %if.then89, %if.end64, %if.then26, %lor.lhs.false2, %entry
  %retval.0 = phi %struct.ptree* [ %i13, %if.then26 ], [ %i13, %if.end64 ], [ null, %lor.lhs.false2 ], [ null, %entry ], [ %n, %if.else93 ], [ %n, %if.then89 ]
  ret %struct.ptree* %retval.0
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @bcopy(i8* nocapture readonly, i8* nocapture, i64) #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.ptree* @insertR(%struct.ptree* %h, %struct.ptree* %n, i32 %d, %struct.ptree* nocapture readonly %p) unnamed_addr #0 {
entry:
  %p_b = getelementptr inbounds %struct.ptree, %struct.ptree* %h, i64 0, i32 3
  %i = load i8, i8* %p_b, align 1, !tbaa !10
  %conv = sext i8 %i to i32
  %cmp = icmp slt i32 %conv, %d
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %p_b4 = getelementptr inbounds %struct.ptree, %struct.ptree* %p, i64 0, i32 3
  %i1 = load i8, i8* %p_b4, align 1, !tbaa !10
  %cmp6 = icmp sgt i8 %i, %i1
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %conv8 = trunc i32 %d to i8
  %p_b9 = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 3
  store i8 %conv8, i8* %p_b9, align 1, !tbaa !10
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 0
  %i2 = load i64, i64* %p_key, align 8, !tbaa !9
  %sub.i = sub nsw i32 31, %d
  %shl.i = shl i32 1, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %and.i = and i64 %i2, %conv.i
  %tobool = icmp ne i64 %and.i, 0
  %cond = select i1 %tobool, %struct.ptree* %h, %struct.ptree* %n
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 4
  store %struct.ptree* %cond, %struct.ptree** %p_left, align 8, !tbaa !14
  %cond16 = select i1 %tobool, %struct.ptree* %n, %struct.ptree* %h
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 5
  store %struct.ptree* %cond16, %struct.ptree** %p_right, align 8, !tbaa !13
  ret %struct.ptree* %n

if.end:                                           ; preds = %lor.lhs.false
  %p_key19 = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 0
  %i3 = load i64, i64* %p_key19, align 8, !tbaa !9
  %sub.i59 = sub nsw i32 31, %conv
  %shl.i60 = shl i32 1, %sub.i59
  %conv.i61 = sext i32 %shl.i60 to i64
  %and.i62 = and i64 %i3, %conv.i61
  %tobool21 = icmp eq i64 %and.i62, 0
  br i1 %tobool21, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %p_right23 = getelementptr inbounds %struct.ptree, %struct.ptree* %h, i64 0, i32 5
  %i4 = load %struct.ptree*, %struct.ptree** %p_right23, align 8, !tbaa !13
  %call24 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %i4, %struct.ptree* nonnull %n, i32 %d, %struct.ptree* nonnull %h)
  store %struct.ptree* %call24, %struct.ptree** %p_right23, align 8, !tbaa !13
  ret %struct.ptree* %h

if.else:                                          ; preds = %if.end
  %p_left26 = getelementptr inbounds %struct.ptree, %struct.ptree* %h, i64 0, i32 4
  %i5 = load %struct.ptree*, %struct.ptree** %p_left26, align 8, !tbaa !14
  %call27 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %i5, %struct.ptree* nonnull %n, i32 %d, %struct.ptree* nonnull %h)
  store %struct.ptree* %call27, %struct.ptree** %p_left26, align 8, !tbaa !14
  ret %struct.ptree* %h
}

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @pat_remove(%struct.ptree* readnone %n, %struct.ptree* nocapture readnone %head) #2 {
entry:
  ret i32 0
}

; Function Attrs: norecurse nounwind readonly uwtable
define %struct.ptree* @pat_search(i64 %key, %struct.ptree* readonly %head) #3 {
entry:
  %tobool = icmp eq %struct.ptree* %head, null
  br i1 %tobool, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %p_b.phi.trans.insert = getelementptr inbounds %struct.ptree, %struct.ptree* %head, i64 0, i32 3
  %.pre = load i8, i8* %p_b.phi.trans.insert, align 1, !tbaa !10
  br label %"pat_search$0_initialize_context"

"pat_search$0_initialize_context":                ; preds = %do.body.preheader
  store i64 %key, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$8", align 8
  br label %"pat_search$0_call_recursive_function"

"pat_search$0_call_recursive_function":           ; preds = %"pat_search$0_extract_next_values", %"pat_search$0_initialize_context"
  %i = phi %struct.ptree* [ %head, %"pat_search$0_initialize_context" ], [ %i6, %"pat_search$0_extract_next_values" ]
  %i1 = phi i8 [ %.pre, %"pat_search$0_initialize_context" ], [ %i8, %"pat_search$0_extract_next_values" ]
  %i2 = phi %struct.ptree* [ null, %"pat_search$0_initialize_context" ], [ %i10, %"pat_search$0_extract_next_values" ]
  call void @"pat_search$0"(%struct.ptree* %i, i8 %i1, %struct.ptree* %i2, i8 0)
  %i3 = getelementptr %9, %9* @"pat_search$0_recursion_state_struct", i32 0, i32 3
  %i4 = load i1, i1* %i3, align 1
  br i1 %i4, label %"pat_search$0_extract_return_values$0", label %"pat_search$0_extract_next_values"

"pat_search$0_extract_next_values":               ; preds = %"pat_search$0_call_recursive_function"
  %i5 = getelementptr %9, %9* @"pat_search$0_recursion_state_struct", i32 0, i32 0
  %i6 = load %struct.ptree*, %struct.ptree** %i5, align 8
  %i7 = getelementptr %9, %9* @"pat_search$0_recursion_state_struct", i32 0, i32 1
  %i8 = load i8, i8* %i7, align 1
  %i9 = getelementptr %9, %9* @"pat_search$0_recursion_state_struct", i32 0, i32 2
  %i10 = load %struct.ptree*, %struct.ptree** %i9, align 8
  br label %"pat_search$0_call_recursive_function"

"pat_search$0_extract_return_values$0":           ; preds = %"pat_search$0_call_recursive_function"
  %i11 = getelementptr %8, %8* @"pat_search$0_return_value_struct", i32 0, i32 0
  %i12 = load %struct.ptree*, %struct.ptree** %i11, align 8
  %i13 = getelementptr %8, %8* @"pat_search$0_return_value_struct", i32 0, i32 1
  %i14 = load %struct.ptree*, %struct.ptree** %i13, align 8
  br label %do.end

do.end:                                           ; preds = %"pat_search$0_extract_return_values$0"
  %p_key10 = getelementptr inbounds %struct.ptree, %struct.ptree* %i14, i64 0, i32 0
  %i15 = load i64, i64* %p_key10, align 8, !tbaa !9
  %p_m11 = getelementptr inbounds %struct.ptree, %struct.ptree* %i14, i64 0, i32 1
  %i16 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m11, align 8, !tbaa !1
  %pm_mask12 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %i16, i64 0, i32 0
  %i17 = load i64, i64* %pm_mask12, align 8, !tbaa !7
  %and13 = and i64 %i17, %key
  %cmp14 = icmp eq i64 %i15, %and13
  %cond19 = select i1 %cmp14, %struct.ptree* %i14, %struct.ptree* %i12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry
  %retval.0 = phi %struct.ptree* [ %cond19, %do.end ], [ null, %entry ]
  ret %struct.ptree* %retval.0
}

define void @"pat_insert$3"(%struct.ptree* %arg, i8 %arg1, i8 %arg2) {
"pat_insert$3_latch$0":
  %conv = sext i8 %arg1 to i32
  %sub.i = sub nsw i32 31, %conv
  %shl.i = shl i32 1, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %i = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$0", align 8
  %and.i = and i64 %conv.i, %i
  %tobool8 = icmp eq i64 %and.i, 0
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 5
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 4
  %cond.in = select i1 %tobool8, %struct.ptree** %p_left, %struct.ptree** %p_right
  %cond = load %struct.ptree*, %struct.ptree** %cond.in, align 8, !tbaa !15
  %p_b9 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond, i64 0, i32 3
  %i3 = load i8, i8* %p_b9, align 1, !tbaa !10
  %cmp = icmp slt i8 %arg1, %i3
  br i1 %cmp, label %"pat_insert$3_increment_depth_counter", label %"pat_insert$3_return_from_recursive_function$0"

"pat_insert$3_increment_depth_counter":           ; preds = %"pat_insert$3_latch$0"
  %i4 = add i8 %arg2, 1
  %i5 = icmp ult i8 %i4, 8
  br i1 %i5, label %"pat_insert$3_recursively_call_function", label %"pat_insert$3_save_recursive_state_and_return"

"pat_insert$3_recursively_call_function":         ; preds = %"pat_insert$3_increment_depth_counter"
  call void @"pat_insert$3"(%struct.ptree* %cond, i8 %i3, i8 %i4)
  ret void

"pat_insert$3_save_recursive_state_and_return":   ; preds = %"pat_insert$3_increment_depth_counter"
  %i6 = getelementptr %1, %1* @"pat_insert$3_recursion_state_struct", i32 0, i32 0
  store %struct.ptree* %cond, %struct.ptree** %i6, align 8
  %i7 = getelementptr %1, %1* @"pat_insert$3_recursion_state_struct", i32 0, i32 1
  store i8 %i3, i8* %i7, align 1
  %i8 = getelementptr %1, %1* @"pat_insert$3_recursion_state_struct", i32 0, i32 2
  store i1 false, i1* %i8, align 1
  ret void

"pat_insert$3_return_from_recursive_function$0":  ; preds = %"pat_insert$3_latch$0"
  %i9 = getelementptr %0, %0* @"pat_insert$3_return_value_struct", i32 0, i32 0
  store %struct.ptree* %cond, %struct.ptree** %i9, align 8
  %i10 = getelementptr %1, %1* @"pat_insert$3_recursion_state_struct", i32 0, i32 2
  store i1 true, i1* %i10, align 1
  ret void
}

define void @"pat_insert$1"(i64 %arg, i8 %arg1) {
"pat_insert$1_exiting$1":
  %i = load %struct.ptree_mask*, %struct.ptree_mask** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2", align 8
  %pm_mask23 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %i, i64 %arg, i32 0
  %i2 = load i64, i64* %pm_mask23, align 8, !tbaa !7
  %i3 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3", align 8
  %cmp24 = icmp eq i64 %i3, %i2
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  br i1 %cmp24, label %"pat_insert$1_return_from_recursive_function$1", label %"pat_insert$1_latch$0"

"pat_insert$1_latch$0":                           ; preds = %"pat_insert$1_exiting$1"
  %i4 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$1", align 8
  %cmp18 = icmp slt i64 %indvars.iv.next, %i4
  br i1 %cmp18, label %"pat_insert$1_increment_depth_counter", label %"pat_insert$1_return_from_recursive_function$0"

"pat_insert$1_increment_depth_counter":           ; preds = %"pat_insert$1_latch$0"
  %i5 = add i8 %arg1, 1
  %i6 = icmp ult i8 %i5, 8
  br i1 %i6, label %"pat_insert$1_recursively_call_function", label %"pat_insert$1_save_recursive_state_and_return"

"pat_insert$1_recursively_call_function":         ; preds = %"pat_insert$1_increment_depth_counter"
  call void @"pat_insert$1"(i64 %indvars.iv.next, i8 %i5)
  ret void

"pat_insert$1_save_recursive_state_and_return":   ; preds = %"pat_insert$1_increment_depth_counter"
  %i7 = getelementptr %3, %3* @"pat_insert$1_recursion_state_struct", i32 0, i32 0
  store i64 %indvars.iv.next, i64* %i7, align 8
  %i8 = getelementptr %3, %3* @"pat_insert$1_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %i8, align 1
  ret void

"pat_insert$1_return_from_recursive_function$0":  ; preds = %"pat_insert$1_latch$0"
  %i9 = getelementptr %2, %2* @"pat_insert$1_return_value_struct", i32 0, i32 1
  store i8 1, i8* %i9, align 1
  %i10 = getelementptr %3, %3* @"pat_insert$1_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %i10, align 1
  ret void

"pat_insert$1_return_from_recursive_function$1":  ; preds = %"pat_insert$1_exiting$1"
  %i11 = getelementptr %2, %2* @"pat_insert$1_return_value_struct", i32 0, i32 0
  store i64 %arg, i64* %i11, align 8
  %i12 = getelementptr %2, %2* @"pat_insert$1_return_value_struct", i32 0, i32 1
  store i8 0, i8* %i12, align 1
  %i13 = getelementptr %3, %3* @"pat_insert$1_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %i13, align 1
  ret void
}

define void @"pat_insert$0"(%struct.ptree_mask* %arg, i32 %arg1, %struct.ptree_mask* %arg2, i32 %arg3, i8 %arg4) {
"pat_insert$0_header":
  %pm_mask45 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arg2, i64 0, i32 0
  %i = load i64, i64* %pm_mask45, align 8, !tbaa !7
  %idxprom46 = sext i32 %arg1 to i64
  %i5 = load %struct.ptree_mask**, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$4", align 8
  %i6 = load %struct.ptree_mask*, %struct.ptree_mask** %i5, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %i6, i64 %idxprom46
  %pm_mask49 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arrayidx48, i64 0, i32 0
  %i7 = load i64, i64* %pm_mask49, align 8, !tbaa !7
  %cmp50 = icmp ugt i64 %i, %i7
  br i1 %cmp50, label %if.then52, label %if.else

if.else:                                          ; preds = %"pat_insert$0_header"
  %i8 = bitcast %struct.ptree_mask* %arg2 to i8*
  %i9 = bitcast %struct.ptree_mask* %arg to i8*
  tail call void @bcopy(i8* %i8, i8* %i9, i64 16) #4
  %i10 = load %struct.ptree_mask**, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$6", align 8
  %i11 = load %struct.ptree_mask*, %struct.ptree_mask** %i10, align 8, !tbaa !1
  %pm_mask57 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %i11, i64 0, i32 0
  store i64 4294967295, i64* %pm_mask57, align 8, !tbaa !7
  br label %"pat_insert$0_exiting$0"

if.then52:                                        ; preds = %"pat_insert$0_header"
  %i12 = bitcast %struct.ptree_mask* %arrayidx48 to i8*
  %i13 = bitcast %struct.ptree_mask* %arg to i8*
  tail call void @bcopy(i8* %i12, i8* %i13, i64 16) #4
  %inc54 = add nsw i32 %arg1, 1
  br label %"pat_insert$0_exiting$0"

"pat_insert$0_exiting$0":                         ; preds = %if.then52, %if.else
  %i.2 = phi i32 [ %inc54, %if.then52 ], [ %arg1, %if.else ]
  %copied.1 = phi i32 [ %arg3, %if.then52 ], [ 1, %if.else ]
  %incdec.ptr = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arg, i64 1
  %i14 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$5", align 8
  %i15 = load i8, i8* %i14, align 8, !tbaa !11
  %conv40 = zext i8 %i15 to i32
  %cmp41 = icmp slt i32 %i.2, %conv40
  br i1 %cmp41, label %"pat_insert$0_latch$0", label %"pat_insert$0_return_from_recursive_function$0"

"pat_insert$0_latch$0":                           ; preds = %"pat_insert$0_exiting$0"
  %i16 = load %struct.ptree_mask**, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$6", align 8
  %.pre200 = load %struct.ptree_mask*, %struct.ptree_mask** %i16, align 8, !tbaa !1
  br label %"pat_insert$0_increment_depth_counter"

"pat_insert$0_increment_depth_counter":           ; preds = %"pat_insert$0_latch$0"
  %i17 = add i8 %arg4, 1
  %i18 = icmp ult i8 %i17, 8
  br i1 %i18, label %"pat_insert$0_recursively_call_function", label %"pat_insert$0_save_recursive_state_and_return"

"pat_insert$0_recursively_call_function":         ; preds = %"pat_insert$0_increment_depth_counter"
  call void @"pat_insert$0"(%struct.ptree_mask* %incdec.ptr, i32 %i.2, %struct.ptree_mask* %.pre200, i32 %copied.1, i8 %i17)
  ret void

"pat_insert$0_save_recursive_state_and_return":   ; preds = %"pat_insert$0_increment_depth_counter"
  %i19 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 0
  store %struct.ptree_mask* %incdec.ptr, %struct.ptree_mask** %i19, align 8
  %i20 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 1
  store i32 %i.2, i32* %i20, align 4
  %i21 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 2
  store %struct.ptree_mask* %.pre200, %struct.ptree_mask** %i21, align 8
  %i22 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 3
  store i32 %copied.1, i32* %i22, align 4
  %i23 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 4
  store i1 false, i1* %i23, align 1
  ret void

"pat_insert$0_return_from_recursive_function$0":  ; preds = %"pat_insert$0_exiting$0"
  %i24 = getelementptr %4, %4* @"pat_insert$0_return_value_struct", i32 0, i32 0
  store i32 %copied.1, i32* %i24, align 4
  %i25 = getelementptr %4, %4* @"pat_insert$0_return_value_struct", i32 0, i32 1
  store %struct.ptree_mask* %incdec.ptr, %struct.ptree_mask** %i25, align 8
  %i26 = getelementptr %5, %5* @"pat_insert$0_recursion_state_struct", i32 0, i32 4
  store i1 true, i1* %i26, align 1
  ret void
}

define void @"pat_insert$2"(i32 %arg, i8 %arg1) {
"pat_insert$2_exiting$1":
  %sub.i170 = sub nuw nsw i32 31, %arg
  %shl.i171 = shl i32 1, %sub.i170
  %conv.i172 = sext i32 %shl.i171 to i64
  %i = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$7", align 8
  %i2 = and i64 %i, %conv.i172
  %cmp78 = icmp eq i64 %i2, 0
  br i1 %cmp78, label %"pat_insert$2_latch$0", label %"pat_insert$2_return_from_recursive_function$0"

"pat_insert$2_latch$0":                           ; preds = %"pat_insert$2_exiting$1"
  %inc82 = add nuw nsw i32 %arg, 1
  %cmp72 = icmp slt i32 %inc82, 32
  br i1 %cmp72, label %"pat_insert$2_increment_depth_counter", label %"pat_insert$2_return_from_recursive_function$0"

"pat_insert$2_increment_depth_counter":           ; preds = %"pat_insert$2_latch$0"
  %i3 = add i8 %arg1, 1
  %i4 = icmp ult i8 %i3, 8
  br i1 %i4, label %"pat_insert$2_recursively_call_function", label %"pat_insert$2_save_recursive_state_and_return"

"pat_insert$2_recursively_call_function":         ; preds = %"pat_insert$2_increment_depth_counter"
  call void @"pat_insert$2"(i32 %inc82, i8 %i3)
  ret void

"pat_insert$2_save_recursive_state_and_return":   ; preds = %"pat_insert$2_increment_depth_counter"
  %i5 = getelementptr %7, %7* @"pat_insert$2_recursion_state_struct", i32 0, i32 0
  store i32 %inc82, i32* %i5, align 4
  %i6 = getelementptr %7, %7* @"pat_insert$2_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %i6, align 1
  ret void

"pat_insert$2_return_from_recursive_function$0":  ; preds = %"pat_insert$2_latch$0", %"pat_insert$2_exiting$1"
  %i7 = phi i32 [ %inc82, %"pat_insert$2_latch$0" ], [ %arg, %"pat_insert$2_exiting$1" ]
  %i8 = getelementptr %6, %6* @"pat_insert$2_return_value_struct", i32 0, i32 0
  store i32 %i7, i32* %i8, align 4
  %i9 = getelementptr %7, %7* @"pat_insert$2_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %i9, align 1
  ret void
}

define void @"pat_search$0"(%struct.ptree* %arg, i8 %arg1, %struct.ptree* %arg2, i8 %arg3) {
"pat_search$0_latch$0":
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 0
  %i = load i64, i64* %p_key, align 8, !tbaa !9
  %p_m = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 1
  %i4 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m, align 8, !tbaa !1
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %i4, i64 0, i32 0
  %i5 = load i64, i64* %pm_mask, align 8, !tbaa !7
  %i6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$8", align 8
  %and = and i64 %i5, %i6
  %cmp = icmp eq i64 %i, %and
  %t.0.p.0 = select i1 %cmp, %struct.ptree* %arg, %struct.ptree* %arg2
  %conv = sext i8 %arg1 to i32
  %sub.i = sub nsw i32 31, %conv
  %shl.i = shl i32 1, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %i7 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$8", align 8
  %and.i = and i64 %conv.i, %i7
  %tobool5 = icmp eq i64 %and.i, 0
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 5
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 4
  %cond.in = select i1 %tobool5, %struct.ptree** %p_left, %struct.ptree** %p_right
  %cond = load %struct.ptree*, %struct.ptree** %cond.in, align 8, !tbaa !15
  %p_b6 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond, i64 0, i32 3
  %i8 = load i8, i8* %p_b6, align 1, !tbaa !10
  %cmp8 = icmp slt i8 %arg1, %i8
  br i1 %cmp8, label %"pat_search$0_increment_depth_counter", label %"pat_search$0_return_from_recursive_function$0"

"pat_search$0_increment_depth_counter":           ; preds = %"pat_search$0_latch$0"
  %i9 = add i8 %arg3, 1
  %i10 = icmp ult i8 %i9, 8
  br i1 %i10, label %"pat_search$0_recursively_call_function", label %"pat_search$0_save_recursive_state_and_return"

"pat_search$0_recursively_call_function":         ; preds = %"pat_search$0_increment_depth_counter"
  call void @"pat_search$0"(%struct.ptree* %cond, i8 %i8, %struct.ptree* %t.0.p.0, i8 %i9)
  ret void

"pat_search$0_save_recursive_state_and_return":   ; preds = %"pat_search$0_increment_depth_counter"
  %i11 = getelementptr %9, %9* @"pat_search$0_recursion_state_struct", i32 0, i32 0
  store %struct.ptree* %cond, %struct.ptree** %i11, align 8
  %i12 = getelementptr %9, %9* @"pat_search$0_recursion_state_struct", i32 0, i32 1
  store i8 %i8, i8* %i12, align 1
  %i13 = getelementptr %9, %9* @"pat_search$0_recursion_state_struct", i32 0, i32 2
  store %struct.ptree* %t.0.p.0, %struct.ptree** %i13, align 8
  %i14 = getelementptr %9, %9* @"pat_search$0_recursion_state_struct", i32 0, i32 3
  store i1 false, i1* %i14, align 1
  ret void

"pat_search$0_return_from_recursive_function$0":  ; preds = %"pat_search$0_latch$0"
  %i15 = getelementptr %8, %8* @"pat_search$0_return_value_struct", i32 0, i32 0
  store %struct.ptree* %t.0.p.0, %struct.ptree** %i15, align 8
  %i16 = getelementptr %8, %8* @"pat_search$0_return_value_struct", i32 0, i32 1
  store %struct.ptree* %cond, %struct.ptree** %i16, align 8
  %i17 = getelementptr %9, %9* @"pat_search$0_recursion_state_struct", i32 0, i32 3
  store i1 true, i1* %i17, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !6, i64 8}
!2 = !{!"ptree", !3, i64 0, !6, i64 8, !4, i64 16, !4, i64 17, !6, i64 24, !6, i64 32}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"any pointer", !4, i64 0}
!7 = !{!8, !3, i64 0}
!8 = !{!"ptree_mask", !3, i64 0, !6, i64 8}
!9 = !{!2, !3, i64 0}
!10 = !{!2, !4, i64 17}
!11 = !{!2, !4, i64 16}
!12 = !{!8, !6, i64 8}
!13 = !{!2, !6, i64 32}
!14 = !{!2, !6, i64 24}
!15 = !{!6, !6, i64 0}
