; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-16/bf/bf.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, i8 }
%1 = type { i8*, i32, i32, i1 }
%2 = type { i1 }
%3 = type { i64 }
%4 = type { i64, i1 }
%5 = type { i64, i1 }
%struct.bf_key_st = type { [18 x i64], [1024 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@str.7 = private unnamed_addr constant [15 x i8] c"Bad key value.\00"
@str.8 = private unnamed_addr constant [36 x i8] c"key must be in hexadecimal notation\00"
@str.9 = private unnamed_addr constant [44 x i8] c"Usage: blowfish {e|d} <intput> <output> key\00"

; Function Attrs: noreturn nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  %key = alloca %struct.bf_key_st, align 8
  %ukey = alloca [8 x i8], align 1
  %indata = alloca [40 x i8], align 16
  %outdata = alloca [40 x i8], align 16
  %ivec = alloca [8 x i8], align 1
  %num = alloca i32, align 4
  %i = bitcast %struct.bf_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8336, i8* %i) #4
  %i1 = getelementptr inbounds [8 x i8], [8 x i8]* %ukey, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %i1) #4
  %i2 = getelementptr inbounds [40 x i8], [40 x i8]* %indata, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %i2) #4
  %i3 = getelementptr inbounds [40 x i8], [40 x i8]* %outdata, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %i3) #4
  %i4 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %i4) #4
  %i5 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %i5) #4
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts144 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str.9, i64 0, i64 0))
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %i6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %i7 = load i8, i8* %i6, align 1, !tbaa !5
  switch i8 %i7, label %if.else18 [
    i8 101, label %if.end21
    i8 69, label %if.end21
    i8 100, label %if.then17
    i8 68, label %if.then17
  ]

if.then17:                                        ; preds = %if.end, %if.end
  br label %if.end21

if.else18:                                        ; preds = %if.end
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str.9, i64 0, i64 0))
  tail call void @exit(i32 -1) #6
  unreachable

if.end21:                                         ; preds = %if.then17, %if.end, %if.end
  %encordec.0 = phi i32 [ 0, %if.then17 ], [ 1, %if.end ], [ 1, %if.end ]
  %arrayidx22 = getelementptr inbounds i8*, i8** %argv, i64 4
  %i8 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  br label %"main$1_initialize_context"

"main$1_initialize_context":                      ; preds = %if.end21
  %i9 = alloca %0, align 8
  %i10 = alloca %1, align 8
  br label %"main$1_call_recursive_function"

"main$1_call_recursive_function":                 ; preds = %"main$1_extract_next_values", %"main$1_initialize_context"
  %i11 = phi i8* [ %i8, %"main$1_initialize_context" ], [ %i17, %"main$1_extract_next_values" ]
  %i12 = phi i32 [ 0, %"main$1_initialize_context" ], [ %i19, %"main$1_extract_next_values" ]
  %i13 = phi i32 [ 0, %"main$1_initialize_context" ], [ %i21, %"main$1_extract_next_values" ]
  call void @"main$1"(%0* %i9, i8* %i11, i32 %i12, i32 %i13, [8 x i8]* %ukey, %1* %i10, i8 0)
  %i14 = getelementptr %1, %1* %i10, i32 0, i32 3
  %i15 = load i1, i1* %i14, align 1
  br i1 %i15, label %"main$1_branch_to_exit", label %"main$1_extract_next_values"

"main$1_extract_next_values":                     ; preds = %"main$1_call_recursive_function"
  %i16 = getelementptr %1, %1* %i10, i32 0, i32 0
  %i17 = load i8*, i8** %i16, align 8
  %i18 = getelementptr %1, %1* %i10, i32 0, i32 1
  %i19 = load i32, i32* %i18, align 4
  %i20 = getelementptr %1, %1* %i10, i32 0, i32 2
  %i21 = load i32, i32* %i20, align 4
  br label %"main$1_call_recursive_function"

"main$1_branch_to_exit":                          ; preds = %"main$1_call_recursive_function"
  %i22 = getelementptr %0, %0* %i9, i32 0, i32 1
  %i23 = load i8, i8* %i22, align 1
  switch i8 %i23, label %"main$1_extract_return_values$0" [
    i8 1, label %"main$1_extract_return_values$0"
    i8 2, label %"main$1_extract_return_values$1"
  ]

"main$1_extract_return_values$0":                 ; preds = %"main$1_branch_to_exit", %"main$1_branch_to_exit"
  br label %if.else51

"main$1_extract_return_values$1":                 ; preds = %"main$1_branch_to_exit"
  %i24 = getelementptr %0, %0* %i9, i32 0, i32 0
  %i25 = load i8*, i8** %i24, align 8
  br label %while.end

if.else51:                                        ; preds = %"main$1_extract_return_values$0"
  %puts143 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @str.8, i64 0, i64 0))
  tail call void @exit(i32 -1) #6
  unreachable

while.end:                                        ; preds = %"main$1_extract_return_values$1"
  call void @BF_set_key(%struct.bf_key_st* nonnull %key, i32 8, i8* %i1) #4
  %i26 = load i8, i8* %i25, align 1, !tbaa !5
  %tobool62 = icmp eq i8 %i26, 0
  br i1 %tobool62, label %if.end65, label %if.then63

if.then63:                                        ; preds = %while.end
  %puts142 = call i32 @puts(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @str.7, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

if.end65:                                         ; preds = %while.end
  %arrayidx66 = getelementptr inbounds i8*, i8** %argv, i64 2
  %i27 = load i8*, i8** %arrayidx66, align 8, !tbaa !1
  %call67 = call %struct._IO_FILE* @fopen(i8* %i27, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %cmp68 = icmp eq %struct._IO_FILE* %call67, null
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end65
  %puts141 = call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str.9, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

if.end72:                                         ; preds = %if.end65
  %arrayidx73 = getelementptr inbounds i8*, i8** %argv, i64 3
  %i28 = load i8*, i8** %arrayidx73, align 8, !tbaa !1
  %call74 = call %struct._IO_FILE* @fopen(i8* %i28, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %cmp75 = icmp eq %struct._IO_FILE* %call74, null
  br i1 %cmp75, label %if.then77, label %while.cond80.preheader

while.cond80.preheader:                           ; preds = %if.end72
  %call81153 = call i32 @feof(%struct._IO_FILE* nonnull %call67) #4
  %lnot154 = icmp eq i32 %call81153, 0
  br i1 %lnot154, label %while.cond84.preheader.preheader, label %while.end109

while.cond84.preheader.preheader:                 ; preds = %while.cond80.preheader
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %while.cond84.preheader.preheader
  %i29 = alloca %2, align 8
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_extract_next_values", %"main$0_initialize_context"
  call void @"main$0"([40 x i8]* %outdata, [40 x i8]* %indata, i32 %encordec.0, i8* %i2, %struct._IO_FILE* %call67, i8* %i3, %struct.bf_key_st* %key, %struct._IO_FILE* %call74, i8* %i4, i32* %num, %2* %i29, i8 0)
  %i30 = getelementptr %2, %2* %i29, i32 0, i32 0
  %i31 = load i1, i1* %i30, align 1
  br i1 %i31, label %while.end109.loopexit, label %"main$0_extract_next_values"

"main$0_extract_next_values":                     ; preds = %"main$0_call_recursive_function"
  br label %"main$0_call_recursive_function"

if.then77:                                        ; preds = %if.end72
  %puts140 = call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str.9, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

while.end109.loopexit:                            ; preds = %"main$0_call_recursive_function"
  br label %while.end109

while.end109:                                     ; preds = %while.end109.loopexit, %while.cond80.preheader
  %call110 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (...)* @close to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* nonnull %call67) #4
  %call111 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (...)* @close to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* nonnull %call74) #4
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32) #1

declare i32 @toupper(...) #2

declare void @BF_set_key(%struct.bf_key_st*, i32, i8*) #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #3

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #3

declare void @BF_cfb64_encrypt(i8*, i8*, i64, %struct.bf_key_st*, i8*, i32*, i32) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

declare i32 @close(...) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

define void @"main$0"([40 x i8]* %arg, [40 x i8]* %arg1, i32 %arg2, i8* %arg3, %struct._IO_FILE* %arg4, i8* %arg5, %struct.bf_key_st* %arg6, %struct._IO_FILE* %arg7, i8* %arg8, i32* %arg9, %2* %arg10, i8 %arg11) {
"main$0_header":
  %call85148 = call i32 @feof(%struct._IO_FILE* nonnull %arg4) #4
  %not.tobool86149 = icmp eq i32 %call85148, 0
  br i1 %not.tobool86149, label %while.body91.preheader, label %while.end97.thread

while.end97.thread:                               ; preds = %"main$0_header"
  call void @BF_cfb64_encrypt(i8* %arg3, i8* %arg5, i64 0, %struct.bf_key_st* nonnull %arg6, i8* %arg8, i32* nonnull %arg9, i32 %arg2) #4
  br label %"main$0_latch$0"

while.body91.preheader:                           ; preds = %"main$0_header"
  br label %"main$0$1_initialize_context"

"main$0$1_initialize_context":                    ; preds = %while.body91.preheader
  %i = alloca %3, align 8
  %i12 = alloca %4, align 8
  br label %"main$0$1_call_recursive_function"

"main$0$1_call_recursive_function":               ; preds = %"main$0$1_extract_next_values", %"main$0$1_initialize_context"
  %i13 = phi i64 [ 0, %"main$0$1_initialize_context" ], [ %i17, %"main$0$1_extract_next_values" ]
  call void @"main$0$1"(%3* %i, i64 %i13, [40 x i8]* %arg1, %struct._IO_FILE* %arg4, %4* %i12, i8 0)
  %i14 = getelementptr %4, %4* %i12, i32 0, i32 1
  %i15 = load i1, i1* %i14, align 1
  br i1 %i15, label %"main$0$1_extract_return_values$0", label %"main$0$1_extract_next_values"

"main$0$1_extract_next_values":                   ; preds = %"main$0$1_call_recursive_function"
  %i16 = getelementptr %4, %4* %i12, i32 0, i32 0
  %i17 = load i64, i64* %i16, align 8
  br label %"main$0$1_call_recursive_function"

"main$0$1_extract_return_values$0":               ; preds = %"main$0$1_call_recursive_function"
  %i18 = getelementptr %3, %3* %i, i32 0, i32 0
  %i19 = load i64, i64* %i18, align 8
  br label %while.end97

while.end97:                                      ; preds = %"main$0$1_extract_return_values$0"
  %i20 = trunc i64 %i19 to i32
  %sext162 = shl i64 %i19, 32
  %conv100 = ashr exact i64 %sext162, 32
  call void @BF_cfb64_encrypt(i8* nonnull %arg3, i8* %arg5, i64 %conv100, %struct.bf_key_st* nonnull %arg6, i8* %arg8, i32* nonnull %arg9, i32 %arg2) #4
  %cmp102151 = icmp sgt i32 %i20, 0
  br i1 %cmp102151, label %for.body.preheader, label %"main$0_latch$0"

for.body.preheader:                               ; preds = %while.end97
  br label %"main$0$0_initialize_context"

"main$0$0_initialize_context":                    ; preds = %for.body.preheader
  %i21 = alloca %5, align 8
  br label %"main$0$0_call_recursive_function"

"main$0$0_call_recursive_function":               ; preds = %"main$0$0_extract_next_values", %"main$0$0_initialize_context"
  %i22 = phi i64 [ 0, %"main$0$0_initialize_context" ], [ %i26, %"main$0$0_extract_next_values" ]
  call void @"main$0$0"(i64 %i22, i32 %i20, [40 x i8]* %arg, %struct._IO_FILE* %arg7, %5* %i21, i8 0)
  %i23 = getelementptr %5, %5* %i21, i32 0, i32 1
  %i24 = load i1, i1* %i23, align 1
  br i1 %i24, label %while.cond80.loopexit.loopexit, label %"main$0$0_extract_next_values"

"main$0$0_extract_next_values":                   ; preds = %"main$0$0_call_recursive_function"
  %i25 = getelementptr %5, %5* %i21, i32 0, i32 0
  %i26 = load i64, i64* %i25, align 8
  br label %"main$0$0_call_recursive_function"

while.cond80.loopexit.loopexit:                   ; preds = %"main$0$0_call_recursive_function"
  br label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %while.cond80.loopexit.loopexit, %while.end97, %while.end97.thread
  %call81 = call i32 @feof(%struct._IO_FILE* nonnull %arg4) #4
  %lnot = icmp eq i32 %call81, 0
  br i1 %lnot, label %"main$0_increment_depth_counter", label %"main$0_return_from_recursive_function$0", !llvm.loop !6

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  %i27 = add i8 %arg11, 1
  %i28 = icmp ult i8 %i27, 16
  br i1 %i28, label %"main$0_recursively_call_function", label %"main$0_save_recursive_state_and_return"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"([40 x i8]* %arg, [40 x i8]* %arg1, i32 %arg2, i8* %arg3, %struct._IO_FILE* %arg4, i8* %arg5, %struct.bf_key_st* %arg6, %struct._IO_FILE* %arg7, i8* %arg8, i32* %arg9, %2* %arg10, i8 %i27)
  ret void

"main$0_save_recursive_state_and_return":         ; preds = %"main$0_increment_depth_counter"
  %i29 = getelementptr %2, %2* %arg10, i32 0, i32 0
  store i1 false, i1* %i29, align 1
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  %i30 = getelementptr %2, %2* %arg10, i32 0, i32 0
  store i1 true, i1* %i30, align 1
  ret void
}

define void @"main$1"(%0* %arg, i8* %arg1, i32 %arg2, i32 %arg3, [8 x i8]* %arg4, %1* %arg5, i8 %arg6) {
"main$1_exiting$1":
  %i = load i8, i8* %arg1, align 1, !tbaa !5
  %tobool = icmp eq i8 %i, 0
  br i1 %tobool, label %"main$1_return_from_recursive_function$1", label %while.body

while.body:                                       ; preds = %"main$1_exiting$1"
  %conv25 = sext i8 %i to i32
  %incdec.ptr = getelementptr inbounds i8, i8* %arg1, i64 1
  %call27 = tail call i32 (i32, ...) bitcast (i32 (...)* @toupper to i32 (i32, ...)*)(i32 %conv25) #4
  %sext = shl i32 %call27, 24
  %conv29 = ashr exact i32 %sext, 24
  %sext.off = add i32 %sext, -788529153
  %i7 = icmp ult i32 %sext.off, 184549375
  br i1 %i7, label %if.then35, label %"main$1_exiting$2"

"main$1_exiting$2":                               ; preds = %while.body
  %sext.off146 = add i32 %sext, -1073741825
  %i8 = icmp ult i32 %sext.off146, 117440511
  br i1 %i8, label %if.then45, label %"main$1_return_from_recursive_function$0"

if.then45:                                        ; preds = %"main$1_exiting$2"
  %shl46 = shl i32 %arg2, 4
  %add48 = add i32 %shl46, -55
  br label %if.end54

if.then35:                                        ; preds = %while.body
  %shl = shl i32 %arg2, 4
  %add = add i32 %shl, -48
  br label %if.end54

if.end54:                                         ; preds = %if.then35, %if.then45
  %add.sink = phi i32 [ %add, %if.then35 ], [ %add48, %if.then45 ]
  %sub = add i32 %add.sink, %conv29
  %inc = add nuw nsw i32 %arg3, 1
  %and = and i32 %arg3, 1
  %tobool55 = icmp eq i32 %and, 0
  br i1 %tobool55, label %"main$1_latch$0", label %if.then56

if.then56:                                        ; preds = %if.end54
  %conv58 = trunc i32 %sub to i8
  %div = sdiv i32 %inc, 2
  %sub59 = add nsw i32 %div, -1
  %idxprom = sext i32 %sub59 to i64
  %arrayidx60 = getelementptr inbounds [8 x i8], [8 x i8]* %arg4, i64 0, i64 %idxprom
  store i8 %conv58, i8* %arrayidx60, align 1, !tbaa !5
  br label %"main$1_latch$0"

"main$1_latch$0":                                 ; preds = %if.then56, %if.end54
  %cmp23 = icmp slt i32 %inc, 64
  br i1 %cmp23, label %"main$1_increment_depth_counter", label %"main$1_return_from_recursive_function$1"

"main$1_increment_depth_counter":                 ; preds = %"main$1_latch$0"
  %i9 = add i8 %arg6, 1
  %i10 = icmp ult i8 %i9, 16
  br i1 %i10, label %"main$1_recursively_call_function", label %"main$1_save_recursive_state_and_return"

"main$1_recursively_call_function":               ; preds = %"main$1_increment_depth_counter"
  call void @"main$1"(%0* %arg, i8* %incdec.ptr, i32 %sub, i32 %inc, [8 x i8]* %arg4, %1* %arg5, i8 %i9)
  ret void

"main$1_save_recursive_state_and_return":         ; preds = %"main$1_increment_depth_counter"
  %i11 = getelementptr %1, %1* %arg5, i32 0, i32 0
  store i8* %incdec.ptr, i8** %i11, align 8
  %i12 = getelementptr %1, %1* %arg5, i32 0, i32 1
  store i32 %sub, i32* %i12, align 4
  %i13 = getelementptr %1, %1* %arg5, i32 0, i32 2
  store i32 %inc, i32* %i13, align 4
  %i14 = getelementptr %1, %1* %arg5, i32 0, i32 3
  store i1 false, i1* %i14, align 1
  ret void

"main$1_return_from_recursive_function$0":        ; preds = %"main$1_exiting$2"
  %i15 = getelementptr %0, %0* %arg, i32 0, i32 1
  store i8 1, i8* %i15, align 1
  %i16 = getelementptr %1, %1* %arg5, i32 0, i32 3
  store i1 true, i1* %i16, align 1
  ret void

"main$1_return_from_recursive_function$1":        ; preds = %"main$1_latch$0", %"main$1_exiting$1"
  %i17 = phi i8* [ %arg1, %"main$1_exiting$1" ], [ %incdec.ptr, %"main$1_latch$0" ]
  %i18 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i8* %i17, i8** %i18, align 8
  %i19 = getelementptr %0, %0* %arg, i32 0, i32 1
  store i8 2, i8* %i19, align 1
  %i20 = getelementptr %1, %1* %arg5, i32 0, i32 3
  store i1 true, i1* %i20, align 1
  ret void
}

define void @"main$0$0"(i64 %arg, i32 %arg1, [40 x i8]* %arg2, %struct._IO_FILE* %arg3, %5* %arg4, i8 %arg5) {
"main$0$0_latch$0":
  %arrayidx105 = getelementptr inbounds [40 x i8], [40 x i8]* %arg2, i64 0, i64 %arg
  %i = load i8, i8* %arrayidx105, align 1, !tbaa !5
  %conv106 = zext i8 %i to i32
  %call107 = call i32 @fputc(i32 %conv106, %struct._IO_FILE* nonnull %arg3)
  %indvars.iv.next159 = add nuw nsw i64 %arg, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next159 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %arg1
  br i1 %exitcond, label %"main$0$0_return_from_recursive_function$0", label %"main$0$0_increment_depth_counter"

"main$0$0_increment_depth_counter":               ; preds = %"main$0$0_latch$0"
  %i6 = add i8 %arg5, 1
  %i7 = icmp ult i8 %i6, 16
  br i1 %i7, label %"main$0$0_recursively_call_function", label %"main$0$0_save_recursive_state_and_return"

"main$0$0_recursively_call_function":             ; preds = %"main$0$0_increment_depth_counter"
  call void @"main$0$0"(i64 %indvars.iv.next159, i32 %arg1, [40 x i8]* %arg2, %struct._IO_FILE* %arg3, %5* %arg4, i8 %i6)
  ret void

"main$0$0_save_recursive_state_and_return":       ; preds = %"main$0$0_increment_depth_counter"
  %i8 = getelementptr %5, %5* %arg4, i32 0, i32 0
  store i64 %indvars.iv.next159, i64* %i8, align 8
  %i9 = getelementptr %5, %5* %arg4, i32 0, i32 1
  store i1 false, i1* %i9, align 1
  ret void

"main$0$0_return_from_recursive_function$0":      ; preds = %"main$0$0_latch$0"
  %i10 = getelementptr %5, %5* %arg4, i32 0, i32 1
  store i1 true, i1* %i10, align 1
  ret void
}

define void @"main$0$1"(%3* %arg, i64 %arg1, [40 x i8]* %arg2, %struct._IO_FILE* %arg3, %4* %arg4, i8 %arg5) {
"main$0$1_latch$0":
  %call92 = call i32 @_IO_getc(%struct._IO_FILE* nonnull %arg3)
  %conv93 = trunc i32 %call92 to i8
  %indvars.iv.next = add nuw nsw i64 %arg1, 1
  %arrayidx96 = getelementptr inbounds [40 x i8], [40 x i8]* %arg2, i64 0, i64 %arg1
  store i8 %conv93, i8* %arrayidx96, align 1, !tbaa !5
  %call85 = call i32 @feof(%struct._IO_FILE* nonnull %arg3) #4
  %cmp88 = icmp slt i64 %indvars.iv.next, 40
  %not.tobool86 = icmp eq i32 %call85, 0
  %i = and i1 %cmp88, %not.tobool86
  br i1 %i, label %"main$0$1_increment_depth_counter", label %"main$0$1_return_from_recursive_function$0"

"main$0$1_increment_depth_counter":               ; preds = %"main$0$1_latch$0"
  %i6 = add i8 %arg5, 1
  %i7 = icmp ult i8 %i6, 16
  br i1 %i7, label %"main$0$1_recursively_call_function", label %"main$0$1_save_recursive_state_and_return"

"main$0$1_recursively_call_function":             ; preds = %"main$0$1_increment_depth_counter"
  call void @"main$0$1"(%3* %arg, i64 %indvars.iv.next, [40 x i8]* %arg2, %struct._IO_FILE* %arg3, %4* %arg4, i8 %i6)
  ret void

"main$0$1_save_recursive_state_and_return":       ; preds = %"main$0$1_increment_depth_counter"
  %i8 = getelementptr %4, %4* %arg4, i32 0, i32 0
  store i64 %indvars.iv.next, i64* %i8, align 8
  %i9 = getelementptr %4, %4* %arg4, i32 0, i32 1
  store i1 false, i1* %i9, align 1
  ret void

"main$0$1_return_from_recursive_function$0":      ; preds = %"main$0$1_latch$0"
  %i10 = getelementptr %3, %3* %arg, i32 0, i32 0
  store i64 %indvars.iv.next, i64* %i10, align 8
  %i11 = getelementptr %4, %4* %arg4, i32 0, i32 1
  store i1 true, i1* %i11, align 1
  ret void
}

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!"llvm.loop.loop2recursion.copy.enable"}
