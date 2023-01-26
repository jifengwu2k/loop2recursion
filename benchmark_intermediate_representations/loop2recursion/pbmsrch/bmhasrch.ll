; ModuleID = './benchmark_intermediate_representations/loop2recursion/pbmsrch/bmhasrch.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, i8 }
%1 = type { i64, i64, i8 }
%2 = type { i8 }

@lowervec = global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7Fcueaaaaceeeiiiaae\91\92ooouuyou\9B\9C\9D\9E\9Faiounn\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@pat = internal unnamed_addr global i8* null, align 8
@patlen = internal unnamed_addr global i32 0, align 4
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$0" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$1" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$2" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$3" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$4" = dso_local global i8 0
@"bmha_search$0_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$5" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$6" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$7" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$8" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$9" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$10" = dso_local global i8* null
@"bmha_init$1$0_return_value_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$11" = dso_local global i8* null
@"bmha_search$0$0_return_value_struct" = dso_local global %2 zeroinitializer
@"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$12" = dso_local global i8* null

; Function Attrs: nounwind uwtable
define void @bmha_init(i8* %pattern) #0 {
entry:
  store i8* %pattern, i8** @pat, align 8, !tbaa !1
  %call = tail call i64 @strlen(i8* %pattern) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @patlen, align 4, !tbaa !5
  %sext = shl i64 %call, 32
  %tmp = ashr exact i64 %sext, 32
  br label %"bmha_init$1_initialize_context"

"bmha_init$1_initialize_context":                 ; preds = %entry
  store i8* %pattern, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$0"
  store i64 %tmp, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$1"
  store i32 %conv, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$2"
  br label %"bmha_init$1_call_recursive_function"

"bmha_init$1_call_recursive_function":            ; preds = %"bmha_init$1_initialize_context"
  call void @"bmha_init$1"(i64 0)
  br label %for.end33

for.end33:                                        ; preds = %"bmha_init$1_call_recursive_function"
  store i32 %conv, i32* @skip2, align 4, !tbaa !5
  %cmp3680 = icmp sgt i32 %conv, 1
  br i1 %cmp3680, label %for.body38.lr.ph, label %for.end58

for.body38.lr.ph:                                 ; preds = %for.end33
  %sub3579 = shl i64 %call, 32
  %sext93 = add i64 %sub3579, -4294967296
  %tmp1 = ashr exact i64 %sext93, 32
  %arrayidx46.phi.trans.insert = getelementptr inbounds i8, i8* %pattern, i64 %tmp1
  %.pre = load i8, i8* %arrayidx46.phi.trans.insert, align 1, !tbaa !7
  %idxprom47.phi.trans.insert = zext i8 %.pre to i64
  %arrayidx48.phi.trans.insert = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom47.phi.trans.insert
  %.pre91 = load i8, i8* %arrayidx48.phi.trans.insert, align 1, !tbaa !7
  br label %"bmha_init$0_initialize_context"

"bmha_init$0_initialize_context":                 ; preds = %for.body38.lr.ph
  store i64 %tmp1, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$3"
  store i32 %conv, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$2"
  store i8 %.pre91, i8* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$4"
  store i8* %pattern, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$0"
  br label %"bmha_init$0_call_recursive_function"

"bmha_init$0_call_recursive_function":            ; preds = %"bmha_init$0_initialize_context"
  call void @"bmha_init$0"(i64 0)
  br label %for.end58.loopexit

for.end58.loopexit:                               ; preds = %"bmha_init$0_call_recursive_function"
  br label %for.end58

for.end58:                                        ; preds = %for.end58.loopexit, %for.end33
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @bmha_search(i8* readonly %string, i32 %stringlen) #2 {
entry:
  %tmp = load i32, i32* @patlen, align 4, !tbaa !5
  %sub = xor i32 %stringlen, -1
  %sub1 = add i32 %tmp, %sub
  %cmp = icmp sgt i32 %sub1, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %stringlen to i64
  %add.ptr = getelementptr inbounds i8, i8* %string, i64 %idx.ext
  %sub5 = sub nsw i32 32767, %stringlen
  %sub10 = add nsw i32 %tmp, -1
  %tmp1 = load i8*, i8** @pat, align 8
  %tmp2 = load i32, i32* @skip2, align 4
  %tmp3 = sext i32 %sub10 to i64
  br label %"bmha_search$0_initialize_context"

"bmha_search$0_initialize_context":               ; preds = %if.end
  store i32 %tmp2, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$5"
  store i8* %tmp1, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$6"
  store i64 %tmp3, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$7"
  store i32 %sub10, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$8"
  store i32 %sub5, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$9"
  store i8* %add.ptr, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$10"
  br label %"bmha_search$0_call_recursive_function"

"bmha_search$0_call_recursive_function":          ; preds = %"bmha_search$0_initialize_context"
  call void @"bmha_search$0"(i32 %sub1)
  br label %"bmha_search$0_branch_to_exit"

"bmha_search$0_branch_to_exit":                   ; preds = %"bmha_search$0_call_recursive_function"
  %tmp4 = getelementptr %0, %0* @"bmha_search$0_return_value_struct", i32 0, i32 1
  %tmp5 = load i8, i8* %tmp4
  switch i8 %tmp5, label %"bmha_search$0_extract_return_values$0" [
    i8 1, label %"bmha_search$0_extract_return_values$0"
    i8 2, label %"bmha_search$0_extract_return_values$1"
  ]

"bmha_search$0_extract_return_values$0":          ; preds = %"bmha_search$0_branch_to_exit", %"bmha_search$0_branch_to_exit"
  %tmp6 = getelementptr %0, %0* @"bmha_search$0_return_value_struct", i32 0, i32 0
  %tmp7 = load i8*, i8** %tmp6
  br label %cleanup.loopexit

"bmha_search$0_extract_return_values$1":          ; preds = %"bmha_search$0_branch_to_exit"
  br label %cleanup.loopexit63

cleanup.loopexit:                                 ; preds = %"bmha_search$0_extract_return_values$0"
  br label %cleanup

cleanup.loopexit63:                               ; preds = %"bmha_search$0_extract_return_values$1"
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit63, %cleanup.loopexit, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %tmp7, %cleanup.loopexit ], [ null, %cleanup.loopexit63 ]
  ret i8* %retval.0
}

define void @"bmha_init$1"(i64 %arg) {
"bmha_init$1_header":
  %sext92 = shl i64 %arg, 32
  %idxprom = ashr exact i64 %sext92, 32
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$2"
  store i32 %tmp, i32* %arrayidx, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %arg
  %tmp1 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$1"
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$2"
  br label %"bmha_init$1$0_initialize_context"

"bmha_init$1$0_initialize_context":               ; preds = %"bmha_init$1_header"
  store i8* %arrayidx8, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$11"
  br label %"bmha_init$1$0_call_recursive_function"

"bmha_init$1$0_call_recursive_function":          ; preds = %"bmha_init$1$0_initialize_context"
  call void @"bmha_init$1$0"(i32 %tmp2, i64 %tmp1)
  br label %"bmha_init$1$0_branch_to_exit"

"bmha_init$1$0_branch_to_exit":                   ; preds = %"bmha_init$1$0_call_recursive_function"
  %tmp3 = getelementptr %1, %1* @"bmha_init$1$0_return_value_struct", i32 0, i32 2
  %tmp4 = load i8, i8* %tmp3
  switch i8 %tmp4, label %"bmha_init$1$0_extract_return_values$0" [
    i8 1, label %"bmha_init$1$0_extract_return_values$0"
    i8 0, label %"bmha_init$1$0_extract_return_values$1"
  ]

"bmha_init$1$0_extract_return_values$0":          ; preds = %"bmha_init$1$0_branch_to_exit", %"bmha_init$1$0_branch_to_exit"
  %tmp5 = getelementptr %1, %1* @"bmha_init$1$0_return_value_struct", i32 0, i32 1
  %tmp6 = load i64, i64* %tmp5
  br label %if.then19

"bmha_init$1$0_extract_return_values$1":          ; preds = %"bmha_init$1$0_branch_to_exit"
  %tmp7 = getelementptr %1, %1* @"bmha_init$1$0_return_value_struct", i32 0, i32 0
  %tmp8 = load i64, i64* %tmp7
  br label %if.end24.loopexit

if.end24.loopexit:                                ; preds = %"bmha_init$1$0_extract_return_values$1"
  %tmp9 = trunc i64 %tmp8 to i32
  br label %if.end24

if.then19:                                        ; preds = %"bmha_init$1$0_extract_return_values$0"
  %tmp10 = trunc i64 %tmp6 to i32
  %j.0.neg = sub i32 1, %tmp10
  %sub20 = add i32 %j.0.neg, -1
  %tmp11 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$2"
  %sub21 = add i32 %sub20, %tmp11
  store i32 %sub21, i32* %arrayidx, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end24.loopexit
  %j.0.in85 = phi i32 [ %tmp9, %if.end24.loopexit ], [ %tmp10, %if.then19 ]
  %tmp12 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$2"
  %cmp26 = icmp eq i32 %j.0.in85, %tmp12
  br i1 %cmp26, label %if.then28, label %"bmha_init$1_latch$0"

if.then28:                                        ; preds = %if.end24
  store i32 32767, i32* %arrayidx, align 4, !tbaa !5
  br label %"bmha_init$1_latch$0"

"bmha_init$1_latch$0":                            ; preds = %if.then28, %if.end24
  %indvars.iv.next90 = add nuw nsw i64 %arg, 1
  %exitcond = icmp eq i64 %indvars.iv.next90, 256
  br i1 %exitcond, label %"bmha_init$1_return_from_recursive_function$0", label %"bmha_init$1_increment_depth_counter"

"bmha_init$1_increment_depth_counter":            ; preds = %"bmha_init$1_latch$0"
  br label %"bmha_init$1_recursively_call_function"

"bmha_init$1_recursively_call_function":          ; preds = %"bmha_init$1_increment_depth_counter"
  call void @"bmha_init$1"(i64 %indvars.iv.next90)
  ret void

"bmha_init$1_return_from_recursive_function$0":   ; preds = %"bmha_init$1_latch$0"
  ret void
}

define void @"bmha_init$0"(i64 %arg) {
"bmha_init$0_header":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$0"
  %arrayidx40 = getelementptr inbounds i8, i8* %tmp, i64 %arg
  %tmp1 = load i8, i8* %arrayidx40, align 1, !tbaa !7
  %idxprom41 = zext i8 %tmp1 to i64
  %arrayidx42 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom41
  %tmp2 = load i8, i8* %arrayidx42, align 1, !tbaa !7
  %tmp3 = load i8, i8* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$4"
  %cmp50 = icmp eq i8 %tmp2, %tmp3
  br i1 %cmp50, label %if.then52, label %"bmha_init$0_latch$0"

if.then52:                                        ; preds = %"bmha_init$0_header"
  %tmp4 = xor i64 %arg, 4294967295
  %tmp5 = trunc i64 %tmp4 to i32
  %tmp6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$2"
  %sub54 = add i32 %tmp6, %tmp5
  store i32 %sub54, i32* @skip2, align 4, !tbaa !5
  br label %"bmha_init$0_latch$0"

"bmha_init$0_latch$0":                            ; preds = %if.then52, %"bmha_init$0_header"
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %tmp7 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$3"
  %cmp36 = icmp slt i64 %indvars.iv.next, %tmp7
  br i1 %cmp36, label %"bmha_init$0_increment_depth_counter", label %"bmha_init$0_return_from_recursive_function$0"

"bmha_init$0_increment_depth_counter":            ; preds = %"bmha_init$0_latch$0"
  br label %"bmha_init$0_recursively_call_function"

"bmha_init$0_recursively_call_function":          ; preds = %"bmha_init$0_increment_depth_counter"
  call void @"bmha_init$0"(i64 %indvars.iv.next)
  ret void

"bmha_init$0_return_from_recursive_function$0":   ; preds = %"bmha_init$0_latch$0"
  ret void
}

define void @"bmha_search$0"(i32 %arg) {
"bmha_search$0_header":
  %idxprom = sext i32 %arg to i64
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$10"
  %arrayidx = getelementptr inbounds i8, i8* %tmp, i64 %idxprom
  %tmp1 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom2 = zext i8 %tmp1 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom2
  %tmp2 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %add = add nsw i32 %tmp2, %arg
  %cmp4 = icmp slt i32 %add, 0
  br i1 %cmp4, label %"bmha_search$0_latch$0", label %"bmha_search$0_exiting$2"

"bmha_search$0_exiting$2":                        ; preds = %"bmha_search$0_header"
  %tmp3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$9"
  %cmp6 = icmp slt i32 %add, %tmp3
  br i1 %cmp6, label %"bmha_search$0_return_from_recursive_function$1", label %if.end8

if.end8:                                          ; preds = %"bmha_search$0_exiting$2"
  %sub9 = add nsw i32 %add, -32767
  %tmp4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$8"
  %sub11 = sub nsw i32 %sub9, %tmp4
  %idx.ext12 = sext i32 %sub11 to i64
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$10"
  %add.ptr13 = getelementptr inbounds i8, i8* %tmp5, i64 %idx.ext12
  %tmp6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$7"
  %tmp7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$8"
  br label %"bmha_search$0$0_initialize_context"

"bmha_search$0$0_initialize_context":             ; preds = %if.end8
  store i8* %add.ptr13, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$12"
  br label %"bmha_search$0$0_call_recursive_function"

"bmha_search$0$0_call_recursive_function":        ; preds = %"bmha_search$0$0_initialize_context"
  call void @"bmha_search$0$0"(i32 %tmp7, i64 %tmp6)
  br label %"bmha_search$0$0_branch_to_exit"

"bmha_search$0$0_branch_to_exit":                 ; preds = %"bmha_search$0$0_call_recursive_function"
  %tmp8 = getelementptr %2, %2* @"bmha_search$0$0_return_value_struct", i32 0, i32 0
  %tmp9 = load i8, i8* %tmp8
  switch i8 %tmp9, label %"bmha_search$0_exiting$0" [
    i8 1, label %"bmha_search$0_exiting$0"
    i8 0, label %"bmha_search$0_return_from_recursive_function$0"
  ]

"bmha_search$0_exiting$0":                        ; preds = %"bmha_search$0$0_branch_to_exit", %"bmha_search$0$0_branch_to_exit"
  %tmp10 = load i32, i32* @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$5"
  %add33 = add nsw i32 %tmp10, %sub9
  %cmp34 = icmp sgt i32 %add33, -1
  br i1 %cmp34, label %"bmha_search$0_return_from_recursive_function$1", label %"bmha_search$0_latch$0"

"bmha_search$0_latch$0":                          ; preds = %"bmha_search$0_exiting$0", %"bmha_search$0_header"
  %i.0.be = phi i32 [ %add, %"bmha_search$0_header" ], [ %add33, %"bmha_search$0_exiting$0" ]
  br label %"bmha_search$0_increment_depth_counter"

"bmha_search$0_increment_depth_counter":          ; preds = %"bmha_search$0_latch$0"
  br label %"bmha_search$0_recursively_call_function"

"bmha_search$0_recursively_call_function":        ; preds = %"bmha_search$0_increment_depth_counter"
  call void @"bmha_search$0"(i32 %i.0.be)
  ret void

"bmha_search$0_return_from_recursive_function$0": ; preds = %"bmha_search$0$0_branch_to_exit"
  %tmp11 = getelementptr %0, %0* @"bmha_search$0_return_value_struct", i32 0, i32 0
  store i8* %add.ptr13, i8** %tmp11
  %tmp12 = getelementptr %0, %0* @"bmha_search$0_return_value_struct", i32 0, i32 1
  store i8 1, i8* %tmp12
  ret void

"bmha_search$0_return_from_recursive_function$1": ; preds = %"bmha_search$0_exiting$0", %"bmha_search$0_exiting$2"
  %tmp13 = getelementptr %0, %0* @"bmha_search$0_return_value_struct", i32 0, i32 1
  store i8 2, i8* %tmp13
  ret void
}

define void @"bmha_init$1$0"(i32 %arg, i64 %arg1) {
"bmha_init$1$0_exiting$1":
  %j.0 = add nsw i32 %arg, -1
  %cmp3 = icmp sgt i64 %arg1, 0
  br i1 %cmp3, label %"bmha_init$1$0_latch$0", label %"bmha_init$1$0_return_from_recursive_function$1"

"bmha_init$1$0_latch$0":                          ; preds = %"bmha_init$1$0_exiting$1"
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$11"
  %tmp2 = load i8, i8* %tmp, align 1, !tbaa !7
  %idxprom10 = sext i32 %j.0 to i64
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$0"
  %arrayidx11 = getelementptr inbounds i8, i8* %tmp3, i64 %idxprom10
  %tmp4 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %idxprom12 = zext i8 %tmp4 to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom12
  %tmp5 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %cmp15 = icmp eq i8 %tmp2, %tmp5
  %indvars.iv.next88 = add nsw i64 %arg1, -1
  br i1 %cmp15, label %"bmha_init$1$0_return_from_recursive_function$0", label %"bmha_init$1$0_increment_depth_counter"

"bmha_init$1$0_increment_depth_counter":          ; preds = %"bmha_init$1$0_latch$0"
  br label %"bmha_init$1$0_recursively_call_function"

"bmha_init$1$0_recursively_call_function":        ; preds = %"bmha_init$1$0_increment_depth_counter"
  call void @"bmha_init$1$0"(i32 %j.0, i64 %indvars.iv.next88)
  ret void

"bmha_init$1$0_return_from_recursive_function$0": ; preds = %"bmha_init$1$0_latch$0"
  %tmp6 = getelementptr %1, %1* @"bmha_init$1$0_return_value_struct", i32 0, i32 1
  store i64 %arg1, i64* %tmp6
  %tmp7 = getelementptr %1, %1* @"bmha_init$1$0_return_value_struct", i32 0, i32 2
  store i8 1, i8* %tmp7
  ret void

"bmha_init$1$0_return_from_recursive_function$1": ; preds = %"bmha_init$1$0_exiting$1"
  %tmp8 = getelementptr %1, %1* @"bmha_init$1$0_return_value_struct", i32 0, i32 0
  store i64 %arg1, i64* %tmp8
  %tmp9 = getelementptr %1, %1* @"bmha_init$1$0_return_value_struct", i32 0, i32 2
  store i8 0, i8* %tmp9
  ret void
}

define void @"bmha_search$0$0"(i32 %arg, i64 %arg1) {
"bmha_search$0$0_exiting$1":
  %dec = add nsw i32 %arg, -1
  %cmp15 = icmp sgt i64 %arg1, 0
  br i1 %cmp15, label %"bmha_search$0$0_latch$0", label %"bmha_search$0$0_return_from_recursive_function$1"

"bmha_search$0$0_latch$0":                        ; preds = %"bmha_search$0$0_exiting$1"
  %idxprom16 = sext i32 %dec to i64
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$12"
  %arrayidx17 = getelementptr inbounds i8, i8* %tmp, i64 %idxprom16
  %tmp2 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %idxprom18 = zext i8 %tmp2 to i64
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom18
  %tmp3 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll_invariant_variable$6"
  %arrayidx21 = getelementptr inbounds i8, i8* %tmp4, i64 %idxprom16
  %tmp5 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %idxprom22 = zext i8 %tmp5 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom22
  %tmp6 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %cmp25 = icmp eq i8 %tmp3, %tmp6
  %indvars.iv.next = add nsw i64 %arg1, -1
  br i1 %cmp25, label %"bmha_search$0$0_increment_depth_counter", label %"bmha_search$0$0_return_from_recursive_function$0"

"bmha_search$0$0_increment_depth_counter":        ; preds = %"bmha_search$0$0_latch$0"
  br label %"bmha_search$0$0_recursively_call_function"

"bmha_search$0$0_recursively_call_function":      ; preds = %"bmha_search$0$0_increment_depth_counter"
  call void @"bmha_search$0$0"(i32 %dec, i64 %indvars.iv.next)
  ret void

"bmha_search$0$0_return_from_recursive_function$0": ; preds = %"bmha_search$0$0_latch$0"
  %tmp7 = getelementptr %2, %2* @"bmha_search$0$0_return_value_struct", i32 0, i32 0
  store i8 1, i8* %tmp7
  ret void

"bmha_search$0$0_return_from_recursive_function$1": ; preds = %"bmha_search$0$0_exiting$1"
  %tmp8 = getelementptr %2, %2* @"bmha_search$0$0_return_value_struct", i32 0, i32 0
  store i8 0, i8* %tmp8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
