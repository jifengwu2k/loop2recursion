; ModuleID = './benchmark_intermediate_representations/loop2recursion/patricia/patricia.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/patricia/patricia.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { %struct.ptree* }
%1 = type { i64, i8 }
%2 = type { i32, %struct.ptree_mask* }
%3 = type { i32 }
%4 = type { %struct.ptree*, %struct.ptree* }
%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }
%struct.ptree_mask = type { i64, i8* }

@"pat_insert$3_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$0" = dso_local global i64 0
@"pat_insert$1_return_value_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$1" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3" = dso_local global %struct.ptree_mask* null
@"pat_insert$0_return_value_struct" = dso_local global %2 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$4" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$5" = dso_local global %struct.ptree_mask** null
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$6" = dso_local global %struct.ptree_mask** null
@"pat_insert$2_return_value_struct" = dso_local global %3 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$7" = dso_local global i64 0
@"pat_search$0_return_value_struct" = dso_local global %4 zeroinitializer
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
  %tmp = load %struct.ptree_mask*, %struct.ptree_mask** %p_m, align 8, !tbaa !1
  %tobool3 = icmp eq %struct.ptree_mask* %tmp, null
  %tmp1 = bitcast %struct.ptree_mask* %tmp to i8*
  br i1 %tobool3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %tmp, i64 0, i32 0
  %tmp2 = load i64, i64* %pm_mask, align 8, !tbaa !7
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 0
  %tmp3 = load i64, i64* %p_key, align 8, !tbaa !9
  %and = and i64 %tmp3, %tmp2
  store i64 %and, i64* %p_key, align 8, !tbaa !9
  %p_b.phi.trans.insert = getelementptr inbounds %struct.ptree, %struct.ptree* %head, i64 0, i32 3
  %.pre = load i8, i8* %p_b.phi.trans.insert, align 1, !tbaa !10
  br label %"pat_insert$3_initialize_context"

"pat_insert$3_initialize_context":                ; preds = %if.end
  store i64 %and, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$0"
  br label %"pat_insert$3_call_recursive_function"

"pat_insert$3_call_recursive_function":           ; preds = %"pat_insert$3_initialize_context"
  call void @"pat_insert$3"(%struct.ptree* %head, i8 %.pre)
  br label %"pat_insert$3_extract_return_values$0"

"pat_insert$3_extract_return_values$0":           ; preds = %"pat_insert$3_call_recursive_function"
  %tmp4 = getelementptr %0, %0* @"pat_insert$3_return_value_struct", i32 0, i32 0
  %tmp5 = load %struct.ptree*, %struct.ptree** %tmp4
  br label %do.end

do.end:                                           ; preds = %"pat_insert$3_extract_return_values$0"
  %p_key13 = getelementptr inbounds %struct.ptree, %struct.ptree* %tmp5, i64 0, i32 0
  %tmp6 = load i64, i64* %p_key13, align 8, !tbaa !9
  %cmp14 = icmp eq i64 %and, %tmp6
  br i1 %cmp14, label %for.cond.preheader, label %for.cond71.preheader

for.cond71.preheader:                             ; preds = %do.end
  %tmp7 = xor i64 %tmp6, %and
  br label %"pat_insert$2_initialize_context"

"pat_insert$2_initialize_context":                ; preds = %for.cond71.preheader
  store i64 %tmp7, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$7"
  br label %"pat_insert$2_call_recursive_function"

"pat_insert$2_call_recursive_function":           ; preds = %"pat_insert$2_initialize_context"
  call void @"pat_insert$2"(i32 1)
  br label %"pat_insert$2_extract_return_values$0"

"pat_insert$2_extract_return_values$0":           ; preds = %"pat_insert$2_call_recursive_function"
  %tmp8 = getelementptr %3, %3* @"pat_insert$2_return_value_struct", i32 0, i32 0
  %tmp9 = load i32, i32* %tmp8
  br label %for.end83

for.cond.preheader:                               ; preds = %do.end
  %p_mlen = getelementptr inbounds %struct.ptree, %struct.ptree* %tmp5, i64 0, i32 2
  %tmp10 = load i8, i8* %p_mlen, align 8, !tbaa !11
  %conv17192 = zext i8 %tmp10 to i64
  %cmp18193 = icmp eq i8 %tmp10, 0
  br i1 %cmp18193, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tmp11 = load i64, i64* %pm_mask, align 8
  %p_m22 = getelementptr inbounds %struct.ptree, %struct.ptree* %tmp5, i64 0, i32 1
  %tmp12 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m22, align 8
  %tmp13 = zext i8 %tmp10 to i64
  br label %"pat_insert$1_initialize_context"

"pat_insert$1_initialize_context":                ; preds = %for.body.lr.ph
  store i64 %tmp13, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$1"
  store i64 %tmp11, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2"
  store %struct.ptree_mask* %tmp12, %struct.ptree_mask** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3"
  br label %"pat_insert$1_call_recursive_function"

"pat_insert$1_call_recursive_function":           ; preds = %"pat_insert$1_initialize_context"
  call void @"pat_insert$1"(i64 0)
  br label %"pat_insert$1_branch_to_exit"

"pat_insert$1_branch_to_exit":                    ; preds = %"pat_insert$1_call_recursive_function"
  %tmp14 = getelementptr %1, %1* @"pat_insert$1_return_value_struct", i32 0, i32 1
  %tmp15 = load i8, i8* %tmp14
  switch i8 %tmp15, label %"pat_insert$1_extract_return_values$0" [
    i8 1, label %"pat_insert$1_extract_return_values$0"
    i8 0, label %"pat_insert$1_extract_return_values$1"
  ]

"pat_insert$1_extract_return_values$0":           ; preds = %"pat_insert$1_branch_to_exit", %"pat_insert$1_branch_to_exit"
  br label %for.end.loopexit

"pat_insert$1_extract_return_values$1":           ; preds = %"pat_insert$1_branch_to_exit"
  %tmp16 = getelementptr %1, %1* @"pat_insert$1_return_value_struct", i32 0, i32 0
  %tmp17 = load i64, i64* %tmp16
  br label %if.then26

if.then26:                                        ; preds = %"pat_insert$1_extract_return_values$1"
  %pm_data = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %tmp, i64 0, i32 1
  %tmp18 = bitcast i8** %pm_data to i64*
  %tmp19 = load i64, i64* %tmp18, align 8, !tbaa !12
  %pm_data31 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %tmp12, i64 %tmp17, i32 1
  %tmp20 = bitcast i8** %pm_data31 to i64*
  store i64 %tmp19, i64* %tmp20, align 8, !tbaa !12
  tail call void @free(i8* %tmp1) #4
  %tmp21 = bitcast %struct.ptree* %n to i8*
  tail call void @free(i8* %tmp21) #4
  br label %cleanup

for.end.loopexit:                                 ; preds = %"pat_insert$1_extract_return_values$0"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %add = shl nuw nsw i64 %conv17192, 4
  %mul = add nuw nsw i64 %add, 16
  %call37 = tail call noalias i8* @malloc(i64 %mul) #4
  %tmp22 = bitcast i8* %call37 to %struct.ptree_mask*
  %tmp23 = load i8, i8* %p_mlen, align 8, !tbaa !11
  %cmp41187 = icmp eq i8 %tmp23, 0
  br i1 %cmp41187, label %if.then62, label %for.body43.lr.ph

for.body43.lr.ph:                                 ; preds = %for.end
  %p_m47 = getelementptr inbounds %struct.ptree, %struct.ptree* %tmp5, i64 0, i32 1
  br label %"pat_insert$0_initialize_context"

"pat_insert$0_initialize_context":                ; preds = %for.body43.lr.ph
  store i8* %p_mlen, i8** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$4"
  store %struct.ptree_mask** %p_m, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$5"
  store %struct.ptree_mask** %p_m47, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$6"
  br label %"pat_insert$0_call_recursive_function"

"pat_insert$0_call_recursive_function":           ; preds = %"pat_insert$0_initialize_context"
  call void @"pat_insert$0"(%struct.ptree_mask* %tmp22, i32 0, i32 0, %struct.ptree_mask* %tmp)
  br label %"pat_insert$0_extract_return_values$0"

"pat_insert$0_extract_return_values$0":           ; preds = %"pat_insert$0_call_recursive_function"
  %tmp24 = getelementptr %2, %2* @"pat_insert$0_return_value_struct", i32 0, i32 0
  %tmp25 = load i32, i32* %tmp24
  %tmp26 = getelementptr %2, %2* @"pat_insert$0_return_value_struct", i32 0, i32 1
  %tmp27 = load %struct.ptree_mask*, %struct.ptree_mask** %tmp26
  br label %for.end60

for.end60:                                        ; preds = %"pat_insert$0_extract_return_values$0"
  %tobool61 = icmp eq i32 %tmp25, 0
  br i1 %tobool61, label %if.then62, label %for.end60.if.end64_crit_edge

for.end60.if.end64_crit_edge:                     ; preds = %for.end60
  %.pre201 = bitcast %struct.ptree_mask** %p_m to i8**
  br label %if.end64

if.then62:                                        ; preds = %for.end60, %for.end
  %pm.0.lcssa203 = phi %struct.ptree_mask* [ %tmp27, %for.end60 ], [ %tmp22, %for.end ]
  %tmp28 = bitcast %struct.ptree_mask** %p_m to i8**
  %tmp29 = load i8*, i8** %tmp28, align 8, !tbaa !1
  %tmp30 = bitcast %struct.ptree_mask* %pm.0.lcssa203 to i8*
  tail call void @bcopy(i8* %tmp29, i8* %tmp30, i64 16) #4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.end60.if.end64_crit_edge
  %.pre-phi = phi i8** [ %.pre201, %for.end60.if.end64_crit_edge ], [ %tmp28, %if.then62 ]
  %tmp31 = load i8*, i8** %.pre-phi, align 8, !tbaa !1
  tail call void @free(i8* %tmp31) #4
  %tmp32 = bitcast %struct.ptree* %n to i8*
  tail call void @free(i8* %tmp32) #4
  %tmp33 = load i8, i8* %p_mlen, align 8, !tbaa !11
  %inc67 = add i8 %tmp33, 1
  store i8 %inc67, i8* %p_mlen, align 8, !tbaa !11
  %p_m68 = getelementptr inbounds %struct.ptree, %struct.ptree* %tmp5, i64 0, i32 1
  %tmp34 = bitcast %struct.ptree_mask** %p_m68 to i8**
  %tmp35 = load i8*, i8** %tmp34, align 8, !tbaa !1
  tail call void @free(i8* %tmp35) #4
  store i8* %call37, i8** %tmp34, align 8, !tbaa !1
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
  %tmp36 = load %struct.ptree*, %struct.ptree** %p_right90, align 8, !tbaa !13
  %call91 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %tmp36, %struct.ptree* nonnull %n, i32 %tmp9, %struct.ptree* nonnull %head)
  store %struct.ptree* %call91, %struct.ptree** %p_right90, align 8, !tbaa !13
  br label %cleanup

if.else93:                                        ; preds = %for.end83
  %p_left94 = getelementptr inbounds %struct.ptree, %struct.ptree* %head, i64 0, i32 4
  %tmp37 = load %struct.ptree*, %struct.ptree** %p_left94, align 8, !tbaa !14
  %call95 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %tmp37, %struct.ptree* nonnull %n, i32 %tmp9, %struct.ptree* nonnull %head)
  store %struct.ptree* %call95, %struct.ptree** %p_left94, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.else93, %if.then89, %if.end64, %if.then26, %lor.lhs.false2, %entry
  %retval.0 = phi %struct.ptree* [ %tmp5, %if.then26 ], [ %tmp5, %if.end64 ], [ null, %lor.lhs.false2 ], [ null, %entry ], [ %n, %if.else93 ], [ %n, %if.then89 ]
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
  %tmp = load i8, i8* %p_b, align 1, !tbaa !10
  %conv = sext i8 %tmp to i32
  %cmp = icmp slt i32 %conv, %d
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %p_b4 = getelementptr inbounds %struct.ptree, %struct.ptree* %p, i64 0, i32 3
  %tmp1 = load i8, i8* %p_b4, align 1, !tbaa !10
  %cmp6 = icmp sgt i8 %tmp, %tmp1
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %conv8 = trunc i32 %d to i8
  %p_b9 = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 3
  store i8 %conv8, i8* %p_b9, align 1, !tbaa !10
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 0
  %tmp2 = load i64, i64* %p_key, align 8, !tbaa !9
  %sub.i = sub nsw i32 31, %d
  %shl.i = shl i32 1, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %and.i = and i64 %tmp2, %conv.i
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
  %tmp3 = load i64, i64* %p_key19, align 8, !tbaa !9
  %sub.i59 = sub nsw i32 31, %conv
  %shl.i60 = shl i32 1, %sub.i59
  %conv.i61 = sext i32 %shl.i60 to i64
  %and.i62 = and i64 %tmp3, %conv.i61
  %tobool21 = icmp eq i64 %and.i62, 0
  br i1 %tobool21, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %p_right23 = getelementptr inbounds %struct.ptree, %struct.ptree* %h, i64 0, i32 5
  %tmp4 = load %struct.ptree*, %struct.ptree** %p_right23, align 8, !tbaa !13
  %call24 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %tmp4, %struct.ptree* nonnull %n, i32 %d, %struct.ptree* nonnull %h)
  store %struct.ptree* %call24, %struct.ptree** %p_right23, align 8, !tbaa !13
  ret %struct.ptree* %h

if.else:                                          ; preds = %if.end
  %p_left26 = getelementptr inbounds %struct.ptree, %struct.ptree* %h, i64 0, i32 4
  %tmp5 = load %struct.ptree*, %struct.ptree** %p_left26, align 8, !tbaa !14
  %call27 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %tmp5, %struct.ptree* nonnull %n, i32 %d, %struct.ptree* nonnull %h)
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
  store i64 %key, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$8"
  br label %"pat_search$0_call_recursive_function"

"pat_search$0_call_recursive_function":           ; preds = %"pat_search$0_initialize_context"
  call void @"pat_search$0"(%struct.ptree* %head, %struct.ptree* null, i8 %.pre)
  br label %"pat_search$0_extract_return_values$0"

"pat_search$0_extract_return_values$0":           ; preds = %"pat_search$0_call_recursive_function"
  %tmp = getelementptr %4, %4* @"pat_search$0_return_value_struct", i32 0, i32 0
  %tmp1 = load %struct.ptree*, %struct.ptree** %tmp
  %tmp2 = getelementptr %4, %4* @"pat_search$0_return_value_struct", i32 0, i32 1
  %tmp3 = load %struct.ptree*, %struct.ptree** %tmp2
  br label %do.end

do.end:                                           ; preds = %"pat_search$0_extract_return_values$0"
  %p_key10 = getelementptr inbounds %struct.ptree, %struct.ptree* %tmp3, i64 0, i32 0
  %tmp4 = load i64, i64* %p_key10, align 8, !tbaa !9
  %p_m11 = getelementptr inbounds %struct.ptree, %struct.ptree* %tmp3, i64 0, i32 1
  %tmp5 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m11, align 8, !tbaa !1
  %pm_mask12 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %tmp5, i64 0, i32 0
  %tmp6 = load i64, i64* %pm_mask12, align 8, !tbaa !7
  %and13 = and i64 %tmp6, %key
  %cmp14 = icmp eq i64 %tmp4, %and13
  %cond19 = select i1 %cmp14, %struct.ptree* %tmp3, %struct.ptree* %tmp1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry
  %retval.0 = phi %struct.ptree* [ %cond19, %do.end ], [ null, %entry ]
  ret %struct.ptree* %retval.0
}

define void @"pat_insert$3"(%struct.ptree* %arg, i8 %arg1) {
"pat_insert$3_latch$0":
  %conv = sext i8 %arg1 to i32
  %sub.i = sub nsw i32 31, %conv
  %shl.i = shl i32 1, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %tmp = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$0"
  %and.i = and i64 %conv.i, %tmp
  %tobool8 = icmp eq i64 %and.i, 0
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 5
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 4
  %cond.in = select i1 %tobool8, %struct.ptree** %p_left, %struct.ptree** %p_right
  %cond = load %struct.ptree*, %struct.ptree** %cond.in, align 8, !tbaa !15
  %p_b9 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond, i64 0, i32 3
  %tmp2 = load i8, i8* %p_b9, align 1, !tbaa !10
  %cmp = icmp slt i8 %arg1, %tmp2
  br i1 %cmp, label %"pat_insert$3_increment_depth_counter", label %"pat_insert$3_return_from_recursive_function$0"

"pat_insert$3_increment_depth_counter":           ; preds = %"pat_insert$3_latch$0"
  br label %"pat_insert$3_recursively_call_function"

"pat_insert$3_recursively_call_function":         ; preds = %"pat_insert$3_increment_depth_counter"
  call void @"pat_insert$3"(%struct.ptree* %cond, i8 %tmp2)
  ret void

"pat_insert$3_return_from_recursive_function$0":  ; preds = %"pat_insert$3_latch$0"
  %tmp3 = getelementptr %0, %0* @"pat_insert$3_return_value_struct", i32 0, i32 0
  store %struct.ptree* %cond, %struct.ptree** %tmp3
  ret void
}

define void @"pat_insert$1"(i64 %arg) {
"pat_insert$1_exiting$1":
  %tmp = load %struct.ptree_mask*, %struct.ptree_mask** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3"
  %pm_mask23 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %tmp, i64 %arg, i32 0
  %tmp1 = load i64, i64* %pm_mask23, align 8, !tbaa !7
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2"
  %cmp24 = icmp eq i64 %tmp2, %tmp1
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  br i1 %cmp24, label %"pat_insert$1_return_from_recursive_function$1", label %"pat_insert$1_latch$0"

"pat_insert$1_latch$0":                           ; preds = %"pat_insert$1_exiting$1"
  %tmp3 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$1"
  %cmp18 = icmp slt i64 %indvars.iv.next, %tmp3
  br i1 %cmp18, label %"pat_insert$1_increment_depth_counter", label %"pat_insert$1_return_from_recursive_function$0"

"pat_insert$1_increment_depth_counter":           ; preds = %"pat_insert$1_latch$0"
  br label %"pat_insert$1_recursively_call_function"

"pat_insert$1_recursively_call_function":         ; preds = %"pat_insert$1_increment_depth_counter"
  call void @"pat_insert$1"(i64 %indvars.iv.next)
  ret void

"pat_insert$1_return_from_recursive_function$0":  ; preds = %"pat_insert$1_latch$0"
  %tmp4 = getelementptr %1, %1* @"pat_insert$1_return_value_struct", i32 0, i32 1
  store i8 1, i8* %tmp4
  ret void

"pat_insert$1_return_from_recursive_function$1":  ; preds = %"pat_insert$1_exiting$1"
  %tmp5 = getelementptr %1, %1* @"pat_insert$1_return_value_struct", i32 0, i32 0
  store i64 %arg, i64* %tmp5
  %tmp6 = getelementptr %1, %1* @"pat_insert$1_return_value_struct", i32 0, i32 1
  store i8 0, i8* %tmp6
  ret void
}

define void @"pat_insert$0"(%struct.ptree_mask* %arg, i32 %arg1, i32 %arg2, %struct.ptree_mask* %arg3) {
"pat_insert$0_header":
  %pm_mask45 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arg3, i64 0, i32 0
  %tmp = load i64, i64* %pm_mask45, align 8, !tbaa !7
  %idxprom46 = sext i32 %arg1 to i64
  %tmp4 = load %struct.ptree_mask**, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$6"
  %tmp5 = load %struct.ptree_mask*, %struct.ptree_mask** %tmp4, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %tmp5, i64 %idxprom46
  %pm_mask49 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arrayidx48, i64 0, i32 0
  %tmp6 = load i64, i64* %pm_mask49, align 8, !tbaa !7
  %cmp50 = icmp ugt i64 %tmp, %tmp6
  br i1 %cmp50, label %if.then52, label %if.else

if.else:                                          ; preds = %"pat_insert$0_header"
  %tmp7 = bitcast %struct.ptree_mask* %arg3 to i8*
  %tmp8 = bitcast %struct.ptree_mask* %arg to i8*
  tail call void @bcopy(i8* %tmp7, i8* %tmp8, i64 16) #4
  %tmp9 = load %struct.ptree_mask**, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$5"
  %tmp10 = load %struct.ptree_mask*, %struct.ptree_mask** %tmp9, align 8, !tbaa !1
  %pm_mask57 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %tmp10, i64 0, i32 0
  store i64 4294967295, i64* %pm_mask57, align 8, !tbaa !7
  br label %"pat_insert$0_exiting$0"

if.then52:                                        ; preds = %"pat_insert$0_header"
  %tmp11 = bitcast %struct.ptree_mask* %arrayidx48 to i8*
  %tmp12 = bitcast %struct.ptree_mask* %arg to i8*
  tail call void @bcopy(i8* %tmp11, i8* %tmp12, i64 16) #4
  %inc54 = add nsw i32 %arg1, 1
  br label %"pat_insert$0_exiting$0"

"pat_insert$0_exiting$0":                         ; preds = %if.then52, %if.else
  %i.2 = phi i32 [ %inc54, %if.then52 ], [ %arg1, %if.else ]
  %copied.1 = phi i32 [ %arg2, %if.then52 ], [ 1, %if.else ]
  %incdec.ptr = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arg, i64 1
  %tmp13 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$4"
  %tmp14 = load i8, i8* %tmp13, align 8, !tbaa !11
  %conv40 = zext i8 %tmp14 to i32
  %cmp41 = icmp slt i32 %i.2, %conv40
  br i1 %cmp41, label %"pat_insert$0_latch$0", label %"pat_insert$0_return_from_recursive_function$0"

"pat_insert$0_latch$0":                           ; preds = %"pat_insert$0_exiting$0"
  %tmp15 = load %struct.ptree_mask**, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$5"
  %.pre200 = load %struct.ptree_mask*, %struct.ptree_mask** %tmp15, align 8, !tbaa !1
  br label %"pat_insert$0_increment_depth_counter"

"pat_insert$0_increment_depth_counter":           ; preds = %"pat_insert$0_latch$0"
  br label %"pat_insert$0_recursively_call_function"

"pat_insert$0_recursively_call_function":         ; preds = %"pat_insert$0_increment_depth_counter"
  call void @"pat_insert$0"(%struct.ptree_mask* %incdec.ptr, i32 %i.2, i32 %copied.1, %struct.ptree_mask* %.pre200)
  ret void

"pat_insert$0_return_from_recursive_function$0":  ; preds = %"pat_insert$0_exiting$0"
  %tmp16 = getelementptr %2, %2* @"pat_insert$0_return_value_struct", i32 0, i32 0
  store i32 %copied.1, i32* %tmp16
  %tmp17 = getelementptr %2, %2* @"pat_insert$0_return_value_struct", i32 0, i32 1
  store %struct.ptree_mask* %incdec.ptr, %struct.ptree_mask** %tmp17
  ret void
}

define void @"pat_insert$2"(i32 %arg) {
"pat_insert$2_exiting$1":
  %sub.i170 = sub nuw nsw i32 31, %arg
  %shl.i171 = shl i32 1, %sub.i170
  %conv.i172 = sext i32 %shl.i171 to i64
  %tmp = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$7"
  %tmp1 = and i64 %tmp, %conv.i172
  %cmp78 = icmp eq i64 %tmp1, 0
  br i1 %cmp78, label %"pat_insert$2_latch$0", label %"pat_insert$2_return_from_recursive_function$0"

"pat_insert$2_latch$0":                           ; preds = %"pat_insert$2_exiting$1"
  %inc82 = add nuw nsw i32 %arg, 1
  %cmp72 = icmp slt i32 %inc82, 32
  br i1 %cmp72, label %"pat_insert$2_increment_depth_counter", label %"pat_insert$2_return_from_recursive_function$0"

"pat_insert$2_increment_depth_counter":           ; preds = %"pat_insert$2_latch$0"
  br label %"pat_insert$2_recursively_call_function"

"pat_insert$2_recursively_call_function":         ; preds = %"pat_insert$2_increment_depth_counter"
  call void @"pat_insert$2"(i32 %inc82)
  ret void

"pat_insert$2_return_from_recursive_function$0":  ; preds = %"pat_insert$2_latch$0", %"pat_insert$2_exiting$1"
  %tmp2 = phi i32 [ %inc82, %"pat_insert$2_latch$0" ], [ %arg, %"pat_insert$2_exiting$1" ]
  %tmp3 = getelementptr %3, %3* @"pat_insert$2_return_value_struct", i32 0, i32 0
  store i32 %tmp2, i32* %tmp3
  ret void
}

define void @"pat_search$0"(%struct.ptree* %arg, %struct.ptree* %arg1, i8 %arg2) {
"pat_search$0_latch$0":
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 0
  %tmp = load i64, i64* %p_key, align 8, !tbaa !9
  %p_m = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 1
  %tmp3 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m, align 8, !tbaa !1
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %tmp3, i64 0, i32 0
  %tmp4 = load i64, i64* %pm_mask, align 8, !tbaa !7
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$8"
  %and = and i64 %tmp4, %tmp5
  %cmp = icmp eq i64 %tmp, %and
  %t.0.p.0 = select i1 %cmp, %struct.ptree* %arg, %struct.ptree* %arg1
  %conv = sext i8 %arg2 to i32
  %sub.i = sub nsw i32 31, %conv
  %shl.i = shl i32 1, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %tmp6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$8"
  %and.i = and i64 %conv.i, %tmp6
  %tobool5 = icmp eq i64 %and.i, 0
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 5
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %arg, i64 0, i32 4
  %cond.in = select i1 %tobool5, %struct.ptree** %p_left, %struct.ptree** %p_right
  %cond = load %struct.ptree*, %struct.ptree** %cond.in, align 8, !tbaa !15
  %p_b6 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond, i64 0, i32 3
  %tmp7 = load i8, i8* %p_b6, align 1, !tbaa !10
  %cmp8 = icmp slt i8 %arg2, %tmp7
  br i1 %cmp8, label %"pat_search$0_increment_depth_counter", label %"pat_search$0_return_from_recursive_function$0"

"pat_search$0_increment_depth_counter":           ; preds = %"pat_search$0_latch$0"
  br label %"pat_search$0_recursively_call_function"

"pat_search$0_recursively_call_function":         ; preds = %"pat_search$0_increment_depth_counter"
  call void @"pat_search$0"(%struct.ptree* %cond, %struct.ptree* %t.0.p.0, i8 %tmp7)
  ret void

"pat_search$0_return_from_recursive_function$0":  ; preds = %"pat_search$0_latch$0"
  %tmp8 = getelementptr %4, %4* @"pat_search$0_return_value_struct", i32 0, i32 0
  store %struct.ptree* %t.0.p.0, %struct.ptree** %tmp8
  %tmp9 = getelementptr %4, %4* @"pat_search$0_return_value_struct", i32 0, i32 1
  store %struct.ptree* %cond, %struct.ptree** %tmp9
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
