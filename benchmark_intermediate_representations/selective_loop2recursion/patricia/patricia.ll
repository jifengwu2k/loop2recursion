; ModuleID = './benchmark_intermediate_representations/baseline/patricia/patricia.ll'
source_filename = "./benchmark_intermediate_representations/baseline/patricia/patricia.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, %struct.ptree_mask* }
%1 = type { %struct.ptree_mask*, i32, %struct.ptree_mask*, i32, i1 }
%2 = type { %struct.ptree*, %struct.ptree* }
%3 = type { %struct.ptree*, i8, %struct.ptree*, i1 }
%struct.ptree_mask = type { i64, i8* }
%struct.ptree = type { i64, %struct.ptree_mask*, i8, i8, %struct.ptree*, %struct.ptree* }

@"pat_insert$0_return_value_struct" = dso_local global %0 zeroinitializer
@"pat_insert$0_recursion_state_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$0" = dso_local global %struct.ptree_mask** null
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$1" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2" = dso_local global %struct.ptree_mask** null
@"pat_search$0_return_value_struct" = dso_local global %2 zeroinitializer
@"pat_search$0_recursion_state_struct" = dso_local global %3 zeroinitializer
@"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3" = dso_local global i64 0

; Function Attrs: nounwind uwtable
define %struct.ptree* @pat_insert(%struct.ptree* %n, %struct.ptree* %head) #0 {
entry:
  %tobool = icmp ne %struct.ptree* %head, null
  %tobool1 = icmp ne %struct.ptree* %n, null
  %or.cond = and i1 %tobool1, %tobool
  br i1 %or.cond, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %p_m = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 1
  %0 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m, align 8, !tbaa !1
  %tobool3 = icmp eq %struct.ptree_mask* %0, null
  %1 = bitcast %struct.ptree_mask* %0 to i8*
  br i1 %tobool3, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %0, i64 0, i32 0
  %2 = load i64, i64* %pm_mask, align 8, !tbaa !7
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 0
  %3 = load i64, i64* %p_key, align 8, !tbaa !9
  %and = and i64 %3, %2
  store i64 %and, i64* %p_key, align 8, !tbaa !9
  %p_b.phi.trans.insert = getelementptr inbounds %struct.ptree, %struct.ptree* %head, i64 0, i32 3
  %.pre = load i8, i8* %p_b.phi.trans.insert, align 1, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end
  %4 = phi i8 [ %.pre, %if.end ], [ %5, %do.body ]
  %t.0 = phi %struct.ptree* [ %head, %if.end ], [ %cond, %do.body ]
  %conv = sext i8 %4 to i32
  %sub.i = sub nsw i32 31, %conv
  %shl.i = shl i32 1, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %and.i = and i64 %conv.i, %and
  %tobool8 = icmp eq i64 %and.i, 0
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %t.0, i64 0, i32 5
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %t.0, i64 0, i32 4
  %cond.in = select i1 %tobool8, %struct.ptree** %p_left, %struct.ptree** %p_right
  %cond = load %struct.ptree*, %struct.ptree** %cond.in, align 8, !tbaa !11
  %p_b9 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond, i64 0, i32 3
  %5 = load i8, i8* %p_b9, align 1, !tbaa !10
  %cmp = icmp slt i8 %4, %5
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  %cond.lcssa = phi %struct.ptree* [ %cond, %do.body ]
  %p_key13 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond.lcssa, i64 0, i32 0
  %6 = load i64, i64* %p_key13, align 8, !tbaa !9
  %cmp14 = icmp eq i64 %and, %6
  br i1 %cmp14, label %for.cond.preheader, label %for.cond71.preheader

for.cond71.preheader:                             ; preds = %do.end
  %7 = xor i64 %6, %and
  br label %land.rhs

for.cond.preheader:                               ; preds = %do.end
  %p_mlen = getelementptr inbounds %struct.ptree, %struct.ptree* %cond.lcssa, i64 0, i32 2
  %8 = load i8, i8* %p_mlen, align 8, !tbaa !12
  %conv17192 = zext i8 %8 to i64
  %cmp18193 = icmp eq i8 %8, 0
  br i1 %cmp18193, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %9 = load i64, i64* %pm_mask, align 8
  %p_m22 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond.lcssa, i64 0, i32 1
  %10 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m22, align 8
  %11 = zext i8 %8 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %cmp18 = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp18, label %for.body, label %for.end.loopexit

for.body:                                         ; preds = %for.cond, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %pm_mask23 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %10, i64 %indvars.iv, i32 0
  %12 = load i64, i64* %pm_mask23, align 8, !tbaa !7
  %cmp24 = icmp eq i64 %9, %12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp24, label %if.then26, label %for.cond

if.then26:                                        ; preds = %for.body
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %for.body ]
  %pm_data = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %0, i64 0, i32 1
  %13 = bitcast i8** %pm_data to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !13
  %pm_data31 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %10, i64 %indvars.iv.lcssa, i32 1
  %15 = bitcast i8** %pm_data31 to i64*
  store i64 %14, i64* %15, align 8, !tbaa !13
  tail call void @free(i8* %1) #4
  %16 = bitcast %struct.ptree* %n to i8*
  tail call void @free(i8* %16) #4
  br label %cleanup

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %add = shl nuw nsw i64 %conv17192, 4
  %mul = add nuw nsw i64 %add, 16
  %call37 = tail call noalias i8* @malloc(i64 %mul) #4
  %17 = bitcast i8* %call37 to %struct.ptree_mask*
  %18 = load i8, i8* %p_mlen, align 8, !tbaa !12
  %cmp41187 = icmp eq i8 %18, 0
  br i1 %cmp41187, label %if.then62, label %for.body43.lr.ph

for.body43.lr.ph:                                 ; preds = %for.end
  %p_m47 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond.lcssa, i64 0, i32 1
  br label %"pat_insert$0_initialize_context"

"pat_insert$0_initialize_context":                ; preds = %for.body43.lr.ph
  store %struct.ptree_mask** %p_m47, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$0", align 8
  store i8* %p_mlen, i8** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$1", align 8
  store %struct.ptree_mask** %p_m, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2", align 8
  br label %"pat_insert$0_call_recursive_function"

"pat_insert$0_call_recursive_function":           ; preds = %"pat_insert$0_extract_next_values", %"pat_insert$0_initialize_context"
  %19 = phi %struct.ptree_mask* [ %17, %"pat_insert$0_initialize_context" ], [ %26, %"pat_insert$0_extract_next_values" ]
  %20 = phi i32 [ 0, %"pat_insert$0_initialize_context" ], [ %28, %"pat_insert$0_extract_next_values" ]
  %21 = phi %struct.ptree_mask* [ %0, %"pat_insert$0_initialize_context" ], [ %30, %"pat_insert$0_extract_next_values" ]
  %22 = phi i32 [ 0, %"pat_insert$0_initialize_context" ], [ %32, %"pat_insert$0_extract_next_values" ]
  call void @"pat_insert$0"(%struct.ptree_mask* %19, i32 %20, %struct.ptree_mask* %21, i32 %22, i8 0)
  %23 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 4
  %24 = load i1, i1* %23, align 1
  br i1 %24, label %"pat_insert$0_extract_return_values$0", label %"pat_insert$0_extract_next_values"

"pat_insert$0_extract_next_values":               ; preds = %"pat_insert$0_call_recursive_function"
  %25 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 0
  %26 = load %struct.ptree_mask*, %struct.ptree_mask** %25, align 8
  %27 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 2
  %30 = load %struct.ptree_mask*, %struct.ptree_mask** %29, align 8
  %31 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  br label %"pat_insert$0_call_recursive_function"

"pat_insert$0_extract_return_values$0":           ; preds = %"pat_insert$0_call_recursive_function"
  %33 = getelementptr %0, %0* @"pat_insert$0_return_value_struct", i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr %0, %0* @"pat_insert$0_return_value_struct", i32 0, i32 1
  %36 = load %struct.ptree_mask*, %struct.ptree_mask** %35, align 8
  br label %for.end60

for.end60:                                        ; preds = %"pat_insert$0_extract_return_values$0"
  %tobool61 = icmp eq i32 %34, 0
  br i1 %tobool61, label %if.then62, label %for.end60.if.end64_crit_edge

for.end60.if.end64_crit_edge:                     ; preds = %for.end60
  %.pre201 = bitcast %struct.ptree_mask** %p_m to i8**
  br label %if.end64

if.then62:                                        ; preds = %for.end60, %for.end
  %pm.0.lcssa203 = phi %struct.ptree_mask* [ %36, %for.end60 ], [ %17, %for.end ]
  %37 = bitcast %struct.ptree_mask** %p_m to i8**
  %38 = load i8*, i8** %37, align 8, !tbaa !1
  %39 = bitcast %struct.ptree_mask* %pm.0.lcssa203 to i8*
  tail call void @bcopy(i8* %38, i8* %39, i64 16) #4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.end60.if.end64_crit_edge
  %.pre-phi = phi i8** [ %.pre201, %for.end60.if.end64_crit_edge ], [ %37, %if.then62 ]
  %40 = load i8*, i8** %.pre-phi, align 8, !tbaa !1
  tail call void @free(i8* %40) #4
  %41 = bitcast %struct.ptree* %n to i8*
  tail call void @free(i8* %41) #4
  %42 = load i8, i8* %p_mlen, align 8, !tbaa !12
  %inc67 = add i8 %42, 1
  store i8 %inc67, i8* %p_mlen, align 8, !tbaa !12
  %p_m68 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond.lcssa, i64 0, i32 1
  %43 = bitcast %struct.ptree_mask** %p_m68 to i8**
  %44 = load i8*, i8** %43, align 8, !tbaa !1
  tail call void @free(i8* %44) #4
  store i8* %call37, i8** %43, align 8, !tbaa !1
  br label %cleanup

land.rhs:                                         ; preds = %for.inc81, %for.cond71.preheader
  %i.3197 = phi i32 [ 1, %for.cond71.preheader ], [ %inc82, %for.inc81 ]
  %sub.i170 = sub nuw nsw i32 31, %i.3197
  %shl.i171 = shl i32 1, %sub.i170
  %conv.i172 = sext i32 %shl.i171 to i64
  %45 = and i64 %7, %conv.i172
  %cmp78 = icmp eq i64 %45, 0
  br i1 %cmp78, label %for.inc81, label %for.end83

for.inc81:                                        ; preds = %land.rhs
  %inc82 = add nuw nsw i32 %i.3197, 1
  %cmp72 = icmp slt i32 %inc82, 32
  br i1 %cmp72, label %land.rhs, label %for.end83

for.end83:                                        ; preds = %for.inc81, %land.rhs
  %i.3.lcssa = phi i32 [ %inc82, %for.inc81 ], [ %i.3197, %land.rhs ]
  %conv85 = sext i8 %.pre to i32
  %sub.i178 = sub nsw i32 31, %conv85
  %shl.i179 = shl i32 1, %sub.i178
  %conv.i180 = sext i32 %shl.i179 to i64
  %and.i181 = and i64 %conv.i180, %and
  %tobool88 = icmp eq i64 %and.i181, 0
  br i1 %tobool88, label %if.else93, label %if.then89

if.then89:                                        ; preds = %for.end83
  %p_right90 = getelementptr inbounds %struct.ptree, %struct.ptree* %head, i64 0, i32 5
  %46 = load %struct.ptree*, %struct.ptree** %p_right90, align 8, !tbaa !14
  %call91 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %46, %struct.ptree* nonnull %n, i32 %i.3.lcssa, %struct.ptree* nonnull %head)
  store %struct.ptree* %call91, %struct.ptree** %p_right90, align 8, !tbaa !14
  br label %cleanup

if.else93:                                        ; preds = %for.end83
  %p_left94 = getelementptr inbounds %struct.ptree, %struct.ptree* %head, i64 0, i32 4
  %47 = load %struct.ptree*, %struct.ptree** %p_left94, align 8, !tbaa !15
  %call95 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %47, %struct.ptree* nonnull %n, i32 %i.3.lcssa, %struct.ptree* nonnull %head)
  store %struct.ptree* %call95, %struct.ptree** %p_left94, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %if.else93, %if.then89, %if.end64, %if.then26, %lor.lhs.false2, %entry
  %retval.0 = phi %struct.ptree* [ %cond.lcssa, %if.then26 ], [ %cond.lcssa, %if.end64 ], [ null, %lor.lhs.false2 ], [ null, %entry ], [ %n, %if.else93 ], [ %n, %if.then89 ]
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
  %0 = load i8, i8* %p_b, align 1, !tbaa !10
  %conv = sext i8 %0 to i32
  %cmp = icmp slt i32 %conv, %d
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %p_b4 = getelementptr inbounds %struct.ptree, %struct.ptree* %p, i64 0, i32 3
  %1 = load i8, i8* %p_b4, align 1, !tbaa !10
  %cmp6 = icmp sgt i8 %0, %1
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %conv8 = trunc i32 %d to i8
  %p_b9 = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 3
  store i8 %conv8, i8* %p_b9, align 1, !tbaa !10
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 0
  %2 = load i64, i64* %p_key, align 8, !tbaa !9
  %sub.i = sub nsw i32 31, %d
  %shl.i = shl i32 1, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %and.i = and i64 %2, %conv.i
  %tobool = icmp ne i64 %and.i, 0
  %cond = select i1 %tobool, %struct.ptree* %h, %struct.ptree* %n
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 4
  store %struct.ptree* %cond, %struct.ptree** %p_left, align 8, !tbaa !15
  %cond16 = select i1 %tobool, %struct.ptree* %n, %struct.ptree* %h
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 5
  store %struct.ptree* %cond16, %struct.ptree** %p_right, align 8, !tbaa !14
  ret %struct.ptree* %n

if.end:                                           ; preds = %lor.lhs.false
  %p_key19 = getelementptr inbounds %struct.ptree, %struct.ptree* %n, i64 0, i32 0
  %3 = load i64, i64* %p_key19, align 8, !tbaa !9
  %sub.i59 = sub nsw i32 31, %conv
  %shl.i60 = shl i32 1, %sub.i59
  %conv.i61 = sext i32 %shl.i60 to i64
  %and.i62 = and i64 %3, %conv.i61
  %tobool21 = icmp eq i64 %and.i62, 0
  br i1 %tobool21, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %p_right23 = getelementptr inbounds %struct.ptree, %struct.ptree* %h, i64 0, i32 5
  %4 = load %struct.ptree*, %struct.ptree** %p_right23, align 8, !tbaa !14
  %call24 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %4, %struct.ptree* nonnull %n, i32 %d, %struct.ptree* nonnull %h)
  store %struct.ptree* %call24, %struct.ptree** %p_right23, align 8, !tbaa !14
  ret %struct.ptree* %h

if.else:                                          ; preds = %if.end
  %p_left26 = getelementptr inbounds %struct.ptree, %struct.ptree* %h, i64 0, i32 4
  %5 = load %struct.ptree*, %struct.ptree** %p_left26, align 8, !tbaa !15
  %call27 = tail call fastcc %struct.ptree* @insertR(%struct.ptree* %5, %struct.ptree* nonnull %n, i32 %d, %struct.ptree* nonnull %h)
  store %struct.ptree* %call27, %struct.ptree** %p_left26, align 8, !tbaa !15
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
  store i64 %key, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3", align 8
  br label %"pat_search$0_call_recursive_function"

"pat_search$0_call_recursive_function":           ; preds = %"pat_search$0_extract_next_values", %"pat_search$0_initialize_context"
  %0 = phi %struct.ptree* [ %head, %"pat_search$0_initialize_context" ], [ %6, %"pat_search$0_extract_next_values" ]
  %1 = phi i8 [ %.pre, %"pat_search$0_initialize_context" ], [ %8, %"pat_search$0_extract_next_values" ]
  %2 = phi %struct.ptree* [ null, %"pat_search$0_initialize_context" ], [ %10, %"pat_search$0_extract_next_values" ]
  call void @"pat_search$0"(%struct.ptree* %0, i8 %1, %struct.ptree* %2, i8 0)
  %3 = getelementptr %3, %3* @"pat_search$0_recursion_state_struct", i32 0, i32 3
  %4 = load i1, i1* %3, align 1
  br i1 %4, label %"pat_search$0_extract_return_values$0", label %"pat_search$0_extract_next_values"

"pat_search$0_extract_next_values":               ; preds = %"pat_search$0_call_recursive_function"
  %5 = getelementptr %3, %3* @"pat_search$0_recursion_state_struct", i32 0, i32 0
  %6 = load %struct.ptree*, %struct.ptree** %5, align 8
  %7 = getelementptr %3, %3* @"pat_search$0_recursion_state_struct", i32 0, i32 1
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr %3, %3* @"pat_search$0_recursion_state_struct", i32 0, i32 2
  %10 = load %struct.ptree*, %struct.ptree** %9, align 8
  br label %"pat_search$0_call_recursive_function"

"pat_search$0_extract_return_values$0":           ; preds = %"pat_search$0_call_recursive_function"
  %11 = getelementptr %2, %2* @"pat_search$0_return_value_struct", i32 0, i32 0
  %12 = load %struct.ptree*, %struct.ptree** %11, align 8
  %13 = getelementptr %2, %2* @"pat_search$0_return_value_struct", i32 0, i32 1
  %14 = load %struct.ptree*, %struct.ptree** %13, align 8
  br label %do.end

do.end:                                           ; preds = %"pat_search$0_extract_return_values$0"
  %p_key10 = getelementptr inbounds %struct.ptree, %struct.ptree* %14, i64 0, i32 0
  %15 = load i64, i64* %p_key10, align 8, !tbaa !9
  %p_m11 = getelementptr inbounds %struct.ptree, %struct.ptree* %14, i64 0, i32 1
  %16 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m11, align 8, !tbaa !1
  %pm_mask12 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %16, i64 0, i32 0
  %17 = load i64, i64* %pm_mask12, align 8, !tbaa !7
  %and13 = and i64 %17, %key
  %cmp14 = icmp eq i64 %15, %and13
  %cond19 = select i1 %cmp14, %struct.ptree* %14, %struct.ptree* %12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry
  %retval.0 = phi %struct.ptree* [ %cond19, %do.end ], [ null, %entry ]
  ret %struct.ptree* %retval.0
}

define void @"pat_insert$0"(%struct.ptree_mask* %0, i32 %1, %struct.ptree_mask* %2, i32 %3, i8 %4) {
"pat_insert$0_header":
  %pm_mask45 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %2, i64 0, i32 0
  %5 = load i64, i64* %pm_mask45, align 8, !tbaa !7
  %idxprom46 = sext i32 %1 to i64
  %6 = load %struct.ptree_mask**, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$0", align 8
  %7 = load %struct.ptree_mask*, %struct.ptree_mask** %6, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %7, i64 %idxprom46
  %pm_mask49 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %arrayidx48, i64 0, i32 0
  %8 = load i64, i64* %pm_mask49, align 8, !tbaa !7
  %cmp50 = icmp ugt i64 %5, %8
  br i1 %cmp50, label %if.then52, label %if.else

if.else:                                          ; preds = %"pat_insert$0_header"
  %9 = bitcast %struct.ptree_mask* %2 to i8*
  %10 = bitcast %struct.ptree_mask* %0 to i8*
  tail call void @bcopy(i8* %9, i8* %10, i64 16) #4
  %11 = load %struct.ptree_mask**, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2", align 8
  %12 = load %struct.ptree_mask*, %struct.ptree_mask** %11, align 8, !tbaa !1
  %pm_mask57 = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %12, i64 0, i32 0
  store i64 4294967295, i64* %pm_mask57, align 8, !tbaa !7
  br label %"pat_insert$0_exiting$0"

if.then52:                                        ; preds = %"pat_insert$0_header"
  %13 = bitcast %struct.ptree_mask* %arrayidx48 to i8*
  %14 = bitcast %struct.ptree_mask* %0 to i8*
  tail call void @bcopy(i8* %13, i8* %14, i64 16) #4
  %inc54 = add nsw i32 %1, 1
  br label %"pat_insert$0_exiting$0"

"pat_insert$0_exiting$0":                         ; preds = %if.else, %if.then52
  %i.2 = phi i32 [ %inc54, %if.then52 ], [ %1, %if.else ]
  %copied.1 = phi i32 [ %3, %if.then52 ], [ 1, %if.else ]
  %incdec.ptr = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %0, i64 1
  %15 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$1", align 8
  %16 = load i8, i8* %15, align 8, !tbaa !12
  %conv40 = zext i8 %16 to i32
  %cmp41 = icmp slt i32 %i.2, %conv40
  br i1 %cmp41, label %"pat_insert$0_latch$0", label %"pat_insert$0_return_from_recursive_function$0"

"pat_insert$0_latch$0":                           ; preds = %"pat_insert$0_exiting$0"
  %17 = load %struct.ptree_mask**, %struct.ptree_mask*** @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$2", align 8
  %.pre200 = load %struct.ptree_mask*, %struct.ptree_mask** %17, align 8, !tbaa !1
  br label %"pat_insert$0_increment_depth_counter"

"pat_insert$0_increment_depth_counter":           ; preds = %"pat_insert$0_latch$0"
  %18 = add i8 %4, 1
  %19 = icmp ult i8 %18, 64
  br i1 %19, label %"pat_insert$0_recursively_call_function", label %"pat_insert$0_save_recursive_state_and_return"

"pat_insert$0_recursively_call_function":         ; preds = %"pat_insert$0_increment_depth_counter"
  call void @"pat_insert$0"(%struct.ptree_mask* %incdec.ptr, i32 %i.2, %struct.ptree_mask* %.pre200, i32 %copied.1, i8 %18)
  ret void

"pat_insert$0_save_recursive_state_and_return":   ; preds = %"pat_insert$0_increment_depth_counter"
  %20 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 0
  store %struct.ptree_mask* %incdec.ptr, %struct.ptree_mask** %20, align 8
  %21 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 1
  store i32 %i.2, i32* %21, align 4
  %22 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 2
  store %struct.ptree_mask* %.pre200, %struct.ptree_mask** %22, align 8
  %23 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 3
  store i32 %copied.1, i32* %23, align 4
  %24 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 4
  store i1 false, i1* %24, align 1
  ret void

"pat_insert$0_return_from_recursive_function$0":  ; preds = %"pat_insert$0_exiting$0"
  %25 = getelementptr %0, %0* @"pat_insert$0_return_value_struct", i32 0, i32 0
  store i32 %copied.1, i32* %25, align 4
  %26 = getelementptr %0, %0* @"pat_insert$0_return_value_struct", i32 0, i32 1
  store %struct.ptree_mask* %incdec.ptr, %struct.ptree_mask** %26, align 8
  %27 = getelementptr %1, %1* @"pat_insert$0_recursion_state_struct", i32 0, i32 4
  store i1 true, i1* %27, align 1
  ret void
}

define void @"pat_search$0"(%struct.ptree* %0, i8 %1, %struct.ptree* %2, i8 %3) {
"pat_search$0_latch$0":
  %p_key = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 0
  %4 = load i64, i64* %p_key, align 8, !tbaa !9
  %p_m = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 1
  %5 = load %struct.ptree_mask*, %struct.ptree_mask** %p_m, align 8, !tbaa !1
  %pm_mask = getelementptr inbounds %struct.ptree_mask, %struct.ptree_mask* %5, i64 0, i32 0
  %6 = load i64, i64* %pm_mask, align 8, !tbaa !7
  %7 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3", align 8
  %and = and i64 %6, %7
  %cmp = icmp eq i64 %4, %and
  %t.0.p.0 = select i1 %cmp, %struct.ptree* %0, %struct.ptree* %2
  %conv = sext i8 %1 to i32
  %sub.i = sub nsw i32 31, %conv
  %shl.i = shl i32 1, %sub.i
  %conv.i = sext i32 %shl.i to i64
  %8 = load i64, i64* @"./benchmark_intermediate_representations/baseline/patricia/patricia.ll_invariant_variable$3", align 8
  %and.i = and i64 %conv.i, %8
  %tobool5 = icmp eq i64 %and.i, 0
  %p_right = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 5
  %p_left = getelementptr inbounds %struct.ptree, %struct.ptree* %0, i64 0, i32 4
  %cond.in = select i1 %tobool5, %struct.ptree** %p_left, %struct.ptree** %p_right
  %cond = load %struct.ptree*, %struct.ptree** %cond.in, align 8, !tbaa !11
  %p_b6 = getelementptr inbounds %struct.ptree, %struct.ptree* %cond, i64 0, i32 3
  %9 = load i8, i8* %p_b6, align 1, !tbaa !10
  %cmp8 = icmp slt i8 %1, %9
  br i1 %cmp8, label %"pat_search$0_increment_depth_counter", label %"pat_search$0_return_from_recursive_function$0"

"pat_search$0_increment_depth_counter":           ; preds = %"pat_search$0_latch$0"
  %10 = add i8 %3, 1
  %11 = icmp ult i8 %10, 64
  br i1 %11, label %"pat_search$0_recursively_call_function", label %"pat_search$0_save_recursive_state_and_return"

"pat_search$0_recursively_call_function":         ; preds = %"pat_search$0_increment_depth_counter"
  call void @"pat_search$0"(%struct.ptree* %cond, i8 %9, %struct.ptree* %t.0.p.0, i8 %10)
  ret void

"pat_search$0_save_recursive_state_and_return":   ; preds = %"pat_search$0_increment_depth_counter"
  %12 = getelementptr %3, %3* @"pat_search$0_recursion_state_struct", i32 0, i32 0
  store %struct.ptree* %cond, %struct.ptree** %12, align 8
  %13 = getelementptr %3, %3* @"pat_search$0_recursion_state_struct", i32 0, i32 1
  store i8 %9, i8* %13, align 1
  %14 = getelementptr %3, %3* @"pat_search$0_recursion_state_struct", i32 0, i32 2
  store %struct.ptree* %t.0.p.0, %struct.ptree** %14, align 8
  %15 = getelementptr %3, %3* @"pat_search$0_recursion_state_struct", i32 0, i32 3
  store i1 false, i1* %15, align 1
  ret void

"pat_search$0_return_from_recursive_function$0":  ; preds = %"pat_search$0_latch$0"
  %16 = getelementptr %2, %2* @"pat_search$0_return_value_struct", i32 0, i32 0
  store %struct.ptree* %t.0.p.0, %struct.ptree** %16, align 8
  %17 = getelementptr %2, %2* @"pat_search$0_return_value_struct", i32 0, i32 1
  store %struct.ptree* %cond, %struct.ptree** %17, align 8
  %18 = getelementptr %3, %3* @"pat_search$0_recursion_state_struct", i32 0, i32 3
  store i1 true, i1* %18, align 1
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
!11 = !{!6, !6, i64 0}
!12 = !{!2, !4, i64 16}
!13 = !{!8, !6, i64 8}
!14 = !{!2, !6, i64 32}
!15 = !{!2, !6, i64 24}
