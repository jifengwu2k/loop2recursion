; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-32/bitcnts/bitcnts.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitcnts.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i32 }
%1 = type { double, i32, i64, i32, double, i1 }
%2 = type { i32 }
%3 = type { i64, i32, i32, i1 }
%4 = type { i64 }
%5 = type { i64, i64, i64, i1 }
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

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %i1 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %i) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %i2 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %i2, i8** null, i32 10) #5
  %call2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %sext = shl i64 %call.i, 32
  %conv7 = ashr exact i64 %sext, 32
  %cmp861 = icmp sgt i64 %sext, 0
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %if.end
  %i3 = alloca %0, align 8
  %i4 = alloca %1, align 8
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_extract_next_values", %"main$0_initialize_context"
  %i5 = phi double [ 0.000000e+00, %"main$0_initialize_context" ], [ %i13, %"main$0_extract_next_values" ]
  %i6 = phi i32 [ undef, %"main$0_initialize_context" ], [ %i15, %"main$0_extract_next_values" ]
  %i7 = phi i64 [ 0, %"main$0_initialize_context" ], [ %i17, %"main$0_extract_next_values" ]
  %i8 = phi i32 [ undef, %"main$0_initialize_context" ], [ %i19, %"main$0_extract_next_values" ]
  %i9 = phi double [ 0x7FEFFFFFFFFFFFFF, %"main$0_initialize_context" ], [ %i21, %"main$0_extract_next_values" ]
  call void @"main$0"(%0* %i3, double %i5, i32 %i6, i64 %i7, i32 %i8, double %i9, i64 %conv7, i1 %cmp861, %1* %i4, i8 0)
  %i10 = getelementptr %1, %1* %i4, i32 0, i32 5
  %i11 = load i1, i1* %i10, align 1
  br i1 %i11, label %"main$0_extract_return_values$0", label %"main$0_extract_next_values"

"main$0_extract_next_values":                     ; preds = %"main$0_call_recursive_function"
  %i12 = getelementptr %1, %1* %i4, i32 0, i32 0
  %i13 = load double, double* %i12, align 8
  %i14 = getelementptr %1, %1* %i4, i32 0, i32 1
  %i15 = load i32, i32* %i14, align 4
  %i16 = getelementptr %1, %1* %i4, i32 0, i32 2
  %i17 = load i64, i64* %i16, align 8
  %i18 = getelementptr %1, %1* %i4, i32 0, i32 3
  %i19 = load i32, i32* %i18, align 4
  %i20 = getelementptr %1, %1* %i4, i32 0, i32 4
  %i21 = load double, double* %i20, align 8
  br label %"main$0_call_recursive_function"

"main$0_extract_return_values$0":                 ; preds = %"main$0_call_recursive_function"
  %i22 = getelementptr %0, %0* %i3, i32 0, i32 0
  %i23 = load i32, i32* %i22, align 4
  %i24 = getelementptr %0, %0* %i3, i32 0, i32 1
  %i25 = load i32, i32* %i24, align 4
  br label %for.end30

for.end30:                                        ; preds = %"main$0_extract_return_values$0"
  %idxprom31 = sext i32 %i23 to i64
  %arrayidx32 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %idxprom31
  %i26 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %call33 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %i26)
  %idxprom34 = sext i32 %i25 to i64
  %arrayidx35 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %idxprom34
  %i27 = load i8*, i8** %arrayidx35, align 8, !tbaa !1
  %call36 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %i27)
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
  %i = alloca %2, align 8
  %i1 = alloca %3, align 8
  br label %"bit_shifter$0_call_recursive_function"

"bit_shifter$0_call_recursive_function":          ; preds = %"bit_shifter$0_extract_next_values", %"bit_shifter$0_initialize_context"
  %i2 = phi i64 [ %x, %"bit_shifter$0_initialize_context" ], [ %i8, %"bit_shifter$0_extract_next_values" ]
  %i3 = phi i32 [ 0, %"bit_shifter$0_initialize_context" ], [ %i10, %"bit_shifter$0_extract_next_values" ]
  %i4 = phi i32 [ 0, %"bit_shifter$0_initialize_context" ], [ %i12, %"bit_shifter$0_extract_next_values" ]
  call void @"bit_shifter$0"(%2* %i, i64 %i2, i32 %i3, i32 %i4, %3* %i1, i8 0)
  %i5 = getelementptr %3, %3* %i1, i32 0, i32 3
  %i6 = load i1, i1* %i5, align 1
  br i1 %i6, label %"bit_shifter$0_extract_return_values$0", label %"bit_shifter$0_extract_next_values"

"bit_shifter$0_extract_next_values":              ; preds = %"bit_shifter$0_call_recursive_function"
  %i7 = getelementptr %3, %3* %i1, i32 0, i32 0
  %i8 = load i64, i64* %i7, align 8
  %i9 = getelementptr %3, %3* %i1, i32 0, i32 1
  %i10 = load i32, i32* %i9, align 4
  %i11 = getelementptr %3, %3* %i1, i32 0, i32 2
  %i12 = load i32, i32* %i11, align 4
  br label %"bit_shifter$0_call_recursive_function"

"bit_shifter$0_extract_return_values$0":          ; preds = %"bit_shifter$0_call_recursive_function"
  %i13 = getelementptr %2, %2* %i, i32 0, i32 0
  %i14 = load i32, i32* %i13, align 4
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %"bit_shifter$0_extract_return_values$0"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %n.0.lcssa = phi i32 [ 0, %entry ], [ %i14, %for.end.loopexit ]
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

define void @"main$0"(%0* %arg, double %arg1, i32 %arg2, i64 %arg3, i32 %arg4, double %arg5, i64 %arg6, i1 %arg7, %1* %arg8, i8 %arg9) {
"main$0_header":
  %call4 = tail call i64 @clock() #5
  %call5 = tail call i32 @rand() #5
  br i1 %arg7, label %for.body10.lr.ph, label %"main$0_latch$0"

for.body10.lr.ph:                                 ; preds = %"main$0_header"
  %conv = sext i32 %call5 to i64
  %arrayidx11 = getelementptr inbounds [7 x i32 (i64)*], [7 x i32 (i64)*]* @main.pBitCntFunc, i64 0, i64 %arg3
  %i = load i32 (i64)*, i32 (i64)** %arrayidx11, align 8
  br label %"main$0$0_initialize_context"

"main$0$0_initialize_context":                    ; preds = %for.body10.lr.ph
  %i10 = alloca %4, align 8
  %i11 = alloca %5, align 8
  br label %"main$0$0_call_recursive_function"

"main$0$0_call_recursive_function":               ; preds = %"main$0$0_extract_next_values", %"main$0$0_initialize_context"
  %i12 = phi i64 [ 0, %"main$0$0_initialize_context" ], [ %i18, %"main$0$0_extract_next_values" ]
  %i13 = phi i64 [ %conv, %"main$0$0_initialize_context" ], [ %i20, %"main$0$0_extract_next_values" ]
  %i14 = phi i64 [ 0, %"main$0$0_initialize_context" ], [ %i22, %"main$0$0_extract_next_values" ]
  call void @"main$0$0"(%4* %i10, i64 %i12, i64 %i13, i64 %i14, i64 %arg6, i32 (i64)* %i, %5* %i11, i8 0)
  %i15 = getelementptr %5, %5* %i11, i32 0, i32 3
  %i16 = load i1, i1* %i15, align 1
  br i1 %i16, label %"main$0$0_extract_return_values$0", label %"main$0$0_extract_next_values"

"main$0$0_extract_next_values":                   ; preds = %"main$0$0_call_recursive_function"
  %i17 = getelementptr %5, %5* %i11, i32 0, i32 0
  %i18 = load i64, i64* %i17, align 8
  %i19 = getelementptr %5, %5* %i11, i32 0, i32 1
  %i20 = load i64, i64* %i19, align 8
  %i21 = getelementptr %5, %5* %i11, i32 0, i32 2
  %i22 = load i64, i64* %i21, align 8
  br label %"main$0$0_call_recursive_function"

"main$0$0_extract_return_values$0":               ; preds = %"main$0$0_call_recursive_function"
  %i23 = getelementptr %4, %4* %i10, i32 0, i32 0
  %i24 = load i64, i64* %i23, align 8
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %"main$0$0_extract_return_values$0"
  br label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %for.end.loopexit, %"main$0_header"
  %n.0.lcssa = phi i64 [ 0, %"main$0_header" ], [ %i24, %for.end.loopexit ]
  %call15 = tail call i64 @clock() #5
  %sub = sub nsw i64 %call15, %call4
  %conv16 = sitofp i64 %sub to double
  %div = fdiv double %conv16, 1.000000e+06
  %cmp17 = fcmp olt double %div, %arg5
  %i25 = trunc i64 %arg3 to i32
  %cminix.1 = select i1 %cmp17, i32 %i25, i32 %arg4
  %cmin.1 = select i1 %cmp17, double %div, double %arg5
  %cmp21 = fcmp ogt double %div, %arg1
  %cmax.1 = select i1 %cmp21, double %div, double %arg1
  %cmaxix.1 = select i1 %cmp21, i32 %i25, i32 %arg2
  %arrayidx26 = getelementptr inbounds [7 x i8*], [7 x i8*]* @main.text, i64 0, i64 %arg3
  %i26 = load i8*, i8** %arrayidx26, align 8, !tbaa !1
  %call27 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %i26, double %div, i64 %n.0.lcssa)
  %indvars.iv.next = add nuw nsw i64 %arg3, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  %i27 = add i8 %arg9, 1
  %i28 = icmp ult i8 %i27, 32
  br i1 %i28, label %"main$0_recursively_call_function", label %"main$0_save_recursive_state_and_return"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(%0* %arg, double %cmax.1, i32 %cmaxix.1, i64 %indvars.iv.next, i32 %cminix.1, double %cmin.1, i64 %arg6, i1 %arg7, %1* %arg8, i8 %i27)
  ret void

"main$0_save_recursive_state_and_return":         ; preds = %"main$0_increment_depth_counter"
  %i29 = getelementptr %1, %1* %arg8, i32 0, i32 0
  store double %cmax.1, double* %i29, align 8
  %i30 = getelementptr %1, %1* %arg8, i32 0, i32 1
  store i32 %cmaxix.1, i32* %i30, align 4
  %i31 = getelementptr %1, %1* %arg8, i32 0, i32 2
  store i64 %indvars.iv.next, i64* %i31, align 8
  %i32 = getelementptr %1, %1* %arg8, i32 0, i32 3
  store i32 %cminix.1, i32* %i32, align 4
  %i33 = getelementptr %1, %1* %arg8, i32 0, i32 4
  store double %cmin.1, double* %i33, align 8
  %i34 = getelementptr %1, %1* %arg8, i32 0, i32 5
  store i1 false, i1* %i34, align 1
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  %i35 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i32 %cminix.1, i32* %i35, align 4
  %i36 = getelementptr %0, %0* %arg, i32 0, i32 1
  store i32 %cmaxix.1, i32* %i36, align 4
  %i37 = getelementptr %1, %1* %arg8, i32 0, i32 5
  store i1 true, i1* %i37, align 1
  ret void
}

define void @"bit_shifter$0"(%2* %arg, i64 %arg1, i32 %arg2, i32 %arg3, %3* %arg4, i8 %arg5) {
"bit_shifter$0_latch$0":
  %x.addr.0.tr = trunc i64 %arg1 to i32
  %conv2 = and i32 %x.addr.0.tr, 1
  %add = add nsw i32 %arg2, %conv2
  %inc = add nuw nsw i32 %arg3, 1
  %shr = ashr i64 %arg1, 1
  %tobool = icmp ne i64 %shr, 0
  %cmp = icmp ult i32 %inc, 64
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %"bit_shifter$0_increment_depth_counter", label %"bit_shifter$0_return_from_recursive_function$0"

"bit_shifter$0_increment_depth_counter":          ; preds = %"bit_shifter$0_latch$0"
  %i = add i8 %arg5, 1
  %i6 = icmp ult i8 %i, 32
  br i1 %i6, label %"bit_shifter$0_recursively_call_function", label %"bit_shifter$0_save_recursive_state_and_return"

"bit_shifter$0_recursively_call_function":        ; preds = %"bit_shifter$0_increment_depth_counter"
  call void @"bit_shifter$0"(%2* %arg, i64 %shr, i32 %add, i32 %inc, %3* %arg4, i8 %i)
  ret void

"bit_shifter$0_save_recursive_state_and_return":  ; preds = %"bit_shifter$0_increment_depth_counter"
  %i7 = getelementptr %3, %3* %arg4, i32 0, i32 0
  store i64 %shr, i64* %i7, align 8
  %i8 = getelementptr %3, %3* %arg4, i32 0, i32 1
  store i32 %add, i32* %i8, align 4
  %i9 = getelementptr %3, %3* %arg4, i32 0, i32 2
  store i32 %inc, i32* %i9, align 4
  %i10 = getelementptr %3, %3* %arg4, i32 0, i32 3
  store i1 false, i1* %i10, align 1
  ret void

"bit_shifter$0_return_from_recursive_function$0": ; preds = %"bit_shifter$0_latch$0"
  %i11 = getelementptr %2, %2* %arg, i32 0, i32 0
  store i32 %add, i32* %i11, align 4
  %i12 = getelementptr %3, %3* %arg4, i32 0, i32 3
  store i1 true, i1* %i12, align 1
  ret void
}

define void @"main$0$0"(%4* %arg, i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i32 (i64)* %arg5, %5* %arg6, i8 %arg7) {
"main$0$0_latch$0":
  %call12 = tail call i32 %arg5(i64 %arg2) #5
  %conv13 = sext i32 %call12 to i64
  %add = add nsw i64 %conv13, %arg3
  %inc = add nuw nsw i64 %arg1, 1
  %add14 = add nsw i64 %arg2, 13
  %cmp8 = icmp slt i64 %inc, %arg4
  br i1 %cmp8, label %"main$0$0_increment_depth_counter", label %"main$0$0_return_from_recursive_function$0"

"main$0$0_increment_depth_counter":               ; preds = %"main$0$0_latch$0"
  %i = add i8 %arg7, 1
  %i8 = icmp ult i8 %i, 32
  br i1 %i8, label %"main$0$0_recursively_call_function", label %"main$0$0_save_recursive_state_and_return"

"main$0$0_recursively_call_function":             ; preds = %"main$0$0_increment_depth_counter"
  call void @"main$0$0"(%4* %arg, i64 %inc, i64 %add14, i64 %add, i64 %arg4, i32 (i64)* %arg5, %5* %arg6, i8 %i)
  ret void

"main$0$0_save_recursive_state_and_return":       ; preds = %"main$0$0_increment_depth_counter"
  %i9 = getelementptr %5, %5* %arg6, i32 0, i32 0
  store i64 %inc, i64* %i9, align 8
  %i10 = getelementptr %5, %5* %arg6, i32 0, i32 1
  store i64 %add14, i64* %i10, align 8
  %i11 = getelementptr %5, %5* %arg6, i32 0, i32 2
  store i64 %add, i64* %i11, align 8
  %i12 = getelementptr %5, %5* %arg6, i32 0, i32 3
  store i1 false, i1* %i12, align 1
  ret void

"main$0$0_return_from_recursive_function$0":      ; preds = %"main$0$0_latch$0"
  %i13 = getelementptr %4, %4* %arg, i32 0, i32 0
  store i64 %add, i64* %i13, align 8
  %i14 = getelementptr %5, %5* %arg6, i32 0, i32 3
  store i1 true, i1* %i14, align 1
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
