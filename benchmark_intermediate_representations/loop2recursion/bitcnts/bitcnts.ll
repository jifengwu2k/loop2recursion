; ModuleID = './benchmark_intermediate_representations/loop2recursion/bitcnts/bitcnts.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i32 }
%1 = type { i32 }
%2 = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@main.pBitCntFunc = internal unnamed_addr constant [7 x i32 (i64)*] [i32 (i64)* @bit_count, i32 (i64)* @bitcount, i32 (i64)* @ntbl_bitcnt, i32 (i64)* @ntbl_bitcount, i32 (i64)* @BW_btbl_bitcount, i32 (i64)* @AR_btbl_bitcount, i32 (i64)* @bit_shifter], align 16
@main.text = internal unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [29 x i8] c"Optimized 1 bit/loop counter\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ratko's mystery algorithm\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Recursive bit count by nybbles\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Non-recursive bit count by nybbles\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (BW)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Non-recursive bit count by bytes (AR)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Shift and count bits\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Usage: bitcnts <iterations>\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Bit counter algorithm benchmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%-38s> Time: %7.3f sec.; Bits: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\0ABest  > %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Worst > %s\0A\00", align 1
@"main$0_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll_invariant_variable$0" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll_invariant_variable$1" = dso_local global i1 false
@"bit_shifter$0_return_value_struct" = dso_local global %1 zeroinitializer
@"main$0$0_return_value_struct" = dso_local global %2 zeroinitializer
@"./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll_invariant_variable$2" = dso_local global i32 (i64)* null

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %tmp1 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %tmp) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %tmp2 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %tmp2, i8** null, i32 10) #5
  %call2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %sext = shl i64 %call.i, 32
  %conv7 = ashr exact i64 %sext, 32
  %cmp861 = icmp sgt i64 %sext, 0
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %if.end
  store i64 %conv7, i64* @"./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll_invariant_variable$0"
  store i1 %cmp861, i1* @"./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll_invariant_variable$1"
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_initialize_context"
  call void @"main$0"(i32 undef, double 0.000000e+00, i32 undef, double 0x7FEFFFFFFFFFFFFF, i64 0)
  br label %"main$0_extract_return_values$0"

"main$0_extract_return_values$0":                 ; preds = %"main$0_call_recursive_function"
  %tmp3 = getelementptr %0, %0* @"main$0_return_value_struct", i32 0, i32 0
  %tmp4 = load i32, i32* %tmp3
  %tmp5 = getelementptr %0, %0* @"main$0_return_value_struct", i32 0, i32 1
  %tmp6 = load i32, i32* %tmp5
  br label %for.end30

for.end30:                                        ; preds = %"main$0_extract_return_values$0"
  %idxprom31 = sext i32 %tmp4 to i64
  %arrayidx32 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %idxprom31
  %tmp7 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %call33 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %tmp7)
  %idxprom34 = sext i32 %tmp6 to i64
  %arrayidx35 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %idxprom34
  %tmp8 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  %call36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %tmp8)
  ret i32 0
}

declare i32 @bit_count(i64) #1

declare i32 @bitcount(i64) #1

declare i32 @ntbl_bitcnt(i64) #1

declare i32 @ntbl_bitcount(i64) #1

declare i32 @BW_btbl_bitcount(i64) #1

declare i32 @AR_btbl_bitcount(i64) #1

; Function Attrs: norecurse nounwind readnone uwtable
define internal i32 @bit_shifter(i64 %x) #2 {
entry:
  %tobool9 = icmp eq i64 %x, 0
  br i1 %tobool9, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  br label %"bit_shifter$0_initialize_context"

"bit_shifter$0_initialize_context":               ; preds = %for.body.preheader
  br label %"bit_shifter$0_call_recursive_function"

"bit_shifter$0_call_recursive_function":          ; preds = %"bit_shifter$0_initialize_context"
  call void @"bit_shifter$0"(i64 %x, i32 0, i32 0)
  br label %"bit_shifter$0_extract_return_values$0"

"bit_shifter$0_extract_return_values$0":          ; preds = %"bit_shifter$0_call_recursive_function"
  %tmp = getelementptr %1, %1* @"bit_shifter$0_return_value_struct", i32 0, i32 0
  %tmp1 = load i32, i32* %tmp
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %"bit_shifter$0_extract_return_values$0"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %n.0.lcssa = phi i32 [ 0, %entry ], [ %tmp1, %for.end.loopexit ]
  ret i32 %n.0.lcssa
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare i64 @clock() #4

; Function Attrs: nounwind
declare i32 @rand() #4

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #4

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

define void @"main$0"(i32 %arg, double %arg1, i32 %arg2, double %arg3, i64 %arg4) {
"main$0_header":
  %call4 = tail call i64 @clock() #5
  %call5 = tail call i32 @rand() #5
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll_invariant_variable$1"
  br i1 %tmp, label %for.body10.lr.ph, label %"main$0_latch$0"

for.body10.lr.ph:                                 ; preds = %"main$0_header"
  %conv = sext i32 %call5 to i64
  %arrayidx11 = getelementptr inbounds [7 x i32 (i64)*], [7 x i32 (i64)*]* @main.pBitCntFunc, i64 0, i64 %arg4
  %tmp5 = load i32 (i64)*, i32 (i64)** %arrayidx11, align 8
  br label %"main$0$0_initialize_context"

"main$0$0_initialize_context":                    ; preds = %for.body10.lr.ph
  store i32 (i64)* %tmp5, i32 (i64)** @"./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll_invariant_variable$2"
  br label %"main$0$0_call_recursive_function"

"main$0$0_call_recursive_function":               ; preds = %"main$0$0_initialize_context"
  call void @"main$0$0"(i64 0, i64 0, i64 %conv)
  br label %"main$0$0_extract_return_values$0"

"main$0$0_extract_return_values$0":               ; preds = %"main$0$0_call_recursive_function"
  %tmp6 = getelementptr %2, %2* @"main$0$0_return_value_struct", i32 0, i32 0
  %tmp7 = load i64, i64* %tmp6
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %"main$0$0_extract_return_values$0"
  br label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %for.end.loopexit, %"main$0_header"
  %n.0.lcssa = phi i64 [ 0, %"main$0_header" ], [ %tmp7, %for.end.loopexit ]
  %call15 = tail call i64 @clock() #5
  %sub = sub nsw i64 %call15, %call4
  %conv16 = sitofp i64 %sub to double
  %div = fdiv double %conv16, 1.000000e+06
  %cmp17 = fcmp olt double %div, %arg3
  %tmp8 = trunc i64 %arg4 to i32
  %cminix.1 = select i1 %cmp17, i32 %tmp8, i32 %arg
  %cmin.1 = select i1 %cmp17, double %div, double %arg3
  %cmp21 = fcmp ogt double %div, %arg1
  %cmax.1 = select i1 %cmp21, double %div, double %arg1
  %cmaxix.1 = select i1 %cmp21, i32 %tmp8, i32 %arg2
  %arrayidx26 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %arg4
  %tmp9 = load i8*, i8** %arrayidx26, align 8, !tbaa !1
  %call27 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %tmp9, double %div, i64 %n.0.lcssa)
  %indvars.iv.next = add nuw nsw i64 %arg4, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  br label %"main$0_recursively_call_function"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(i32 %cminix.1, double %cmax.1, i32 %cmaxix.1, double %cmin.1, i64 %indvars.iv.next)
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  %tmp10 = getelementptr %0, %0* @"main$0_return_value_struct", i32 0, i32 0
  store i32 %cminix.1, i32* %tmp10
  %tmp11 = getelementptr %0, %0* @"main$0_return_value_struct", i32 0, i32 1
  store i32 %cmaxix.1, i32* %tmp11
  ret void
}

define void @"bit_shifter$0"(i64 %arg, i32 %arg1, i32 %arg2) {
"bit_shifter$0_latch$0":
  %x.addr.0.tr = trunc i64 %arg to i32
  %conv2 = and i32 %x.addr.0.tr, 1
  %add = add nsw i32 %arg2, %conv2
  %inc = add nuw nsw i32 %arg1, 1
  %shr = ashr i64 %arg, 1
  %tobool = icmp ne i64 %shr, 0
  %cmp = icmp ult i32 %inc, 64
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %"bit_shifter$0_increment_depth_counter", label %"bit_shifter$0_return_from_recursive_function$0"

"bit_shifter$0_increment_depth_counter":          ; preds = %"bit_shifter$0_latch$0"
  br label %"bit_shifter$0_recursively_call_function"

"bit_shifter$0_recursively_call_function":        ; preds = %"bit_shifter$0_increment_depth_counter"
  call void @"bit_shifter$0"(i64 %shr, i32 %inc, i32 %add)
  ret void

"bit_shifter$0_return_from_recursive_function$0": ; preds = %"bit_shifter$0_latch$0"
  %tmp = getelementptr %1, %1* @"bit_shifter$0_return_value_struct", i32 0, i32 0
  store i32 %add, i32* %tmp
  ret void
}

define void @"main$0$0"(i64 %arg, i64 %arg1, i64 %arg2) {
"main$0$0_latch$0":
  %tmp = load i32 (i64)*, i32 (i64)** @"./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll_invariant_variable$2"
  %call12 = tail call i32 %tmp(i64 %arg2) #5
  %conv13 = sext i32 %call12 to i64
  %add = add nsw i64 %conv13, %arg1
  %inc = add nuw nsw i64 %arg, 1
  %add14 = add nsw i64 %arg2, 13
  %tmp3 = load i64, i64* @"./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll_invariant_variable$0"
  %cmp8 = icmp slt i64 %inc, %tmp3
  br i1 %cmp8, label %"main$0$0_increment_depth_counter", label %"main$0$0_return_from_recursive_function$0"

"main$0$0_increment_depth_counter":               ; preds = %"main$0$0_latch$0"
  br label %"main$0$0_recursively_call_function"

"main$0$0_recursively_call_function":             ; preds = %"main$0$0_increment_depth_counter"
  call void @"main$0$0"(i64 %inc, i64 %add, i64 %add14)
  ret void

"main$0$0_return_from_recursive_function$0":      ; preds = %"main$0$0_latch$0"
  %tmp4 = getelementptr %2, %2* @"main$0$0_return_value_struct", i32 0, i32 0
  store i64 %add, i64* %tmp4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
