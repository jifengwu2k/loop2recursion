; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-64/fft/main.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/fft/main.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [30 x i8] c"make <waves> random sinusoids\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%f \09\00", align 1
@str = private unnamed_addr constant [9 x i8] c"RealOut:\00"
@str.9 = private unnamed_addr constant [9 x i8] c"ImagOut:\00"
@str.10 = private unnamed_addr constant [31 x i8] c"Usage: fft <waves> <length> -i\00"
@str.11 = private unnamed_addr constant [27 x i8] c"-i performs an inverse fft\00"
@str.12 = private unnamed_addr constant [34 x i8] c"<length> is the number of samples\00"
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$0" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$1" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$2" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$3" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$4" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$5" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$6" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$7" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$8" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$9" = dso_local global float 0.000000e+00
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$10" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$11" = dso_local global float* null

; Function Attrs: noreturn nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts167 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @str.10, i64 0, i64 0))
  %puts168 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @str.11, i64 0, i64 0))
  %call2 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %puts169 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @str.12, i64 0, i64 0))
  tail call void @exit(i32 -1) #6
  unreachable

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %argc, 4
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.else
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 3
  %i = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %call6 = tail call i32 @strncmp(i8* %i, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2)
  %lnot = icmp eq i32 %call6, 0
  %lnot.ext = zext i1 %lnot to i32
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else
  %invfft.0 = phi i32 [ %lnot.ext, %if.then5 ], [ 0, %if.else ]
  %arrayidx8 = getelementptr inbounds i8*, i8** %argv, i64 2
  %i1 = load i8*, i8** %arrayidx8, align 8, !tbaa !1
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %i1, i8** null, i32 10) #5
  %conv.i = trunc i64 %call.i to i32
  %arrayidx10 = getelementptr inbounds i8*, i8** %argv, i64 1
  %i2 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  %call.i170 = tail call i64 @strtol(i8* nocapture nonnull %i2, i8** null, i32 10) #5
  %conv.i171 = trunc i64 %call.i170 to i32
  tail call void @srand(i32 1) #5
  %conv = shl i64 %call.i, 2
  %mul = and i64 %conv, 17179869180
  %call12 = tail call noalias i8* @malloc(i64 %mul) #5
  %i3 = bitcast i8* %call12 to float*
  %call15 = tail call noalias i8* @malloc(i64 %mul) #5
  %i4 = bitcast i8* %call15 to float*
  %call18 = tail call noalias i8* @malloc(i64 %mul) #5
  %i5 = bitcast i8* %call18 to float*
  %call21 = tail call noalias i8* @malloc(i64 %mul) #5
  %i6 = bitcast i8* %call21 to float*
  %conv22 = shl i64 %call.i170, 2
  %mul23 = and i64 %conv22, 17179869180
  %call24 = tail call noalias i8* @malloc(i64 %mul23) #5
  %i7 = bitcast i8* %call24 to float*
  %call27 = tail call noalias i8* @malloc(i64 %mul23) #5
  %i8 = bitcast i8* %call27 to float*
  %cmp28180 = icmp eq i32 %conv.i171, 0
  br i1 %cmp28180, label %for.cond38.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end7
  br label %"main$3_initialize_context"

"main$3_initialize_context":                      ; preds = %for.body.preheader
  store i32 %conv.i171, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$0", align 4
  store float* %i7, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$1", align 8
  store float* %i8, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$2", align 8
  br label %"main$3_call_recursive_function"

"main$3_call_recursive_function":                 ; preds = %"main$3_initialize_context"
  call void @"main$3"(i64 0)
  br label %for.cond38.preheader.loopexit

for.cond38.preheader.loopexit:                    ; preds = %"main$3_call_recursive_function"
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.cond38.preheader.loopexit, %if.end7
  %cmp39178 = icmp eq i32 %conv.i, 0
  br i1 %cmp39178, label %for.end103.critedge, label %for.body41.preheader

for.body41.preheader:                             ; preds = %for.cond38.preheader
  br label %"main$2_initialize_context"

"main$2_initialize_context":                      ; preds = %for.body41.preheader
  store i32 %conv.i, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$3", align 4
  store i1 %cmp28180, i1* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$4", align 1
  store float* %i3, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$5", align 8
  store float* %i4, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$6", align 8
  store float* %i7, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$1", align 8
  store float* %i8, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$2", align 8
  store i32 %conv.i171, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$0", align 4
  br label %"main$2_call_recursive_function"

"main$2_call_recursive_function":                 ; preds = %"main$2_initialize_context"
  call void @"main$2"(i64 0)
  br label %for.end90

for.end90:                                        ; preds = %"main$2_call_recursive_function"
  %call91 = tail call i32 (i32, i32, float*, float*, float*, float*, ...) bitcast (i32 (...)* @fft_float to i32 (i32, i32, float*, float*, float*, float*, ...)*)(i32 %conv.i, i32 %invfft.0, float* %i3, float* %i4, float* %i5, float* %i6) #5
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @str, i64 0, i64 0))
  br i1 %cmp39178, label %for.end116.critedge, label %for.body96.preheader

for.body96.preheader:                             ; preds = %for.end90
  br label %"main$1_initialize_context"

"main$1_initialize_context":                      ; preds = %for.body96.preheader
  store i32 %conv.i, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$3", align 4
  store float* %i5, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$7", align 8
  br label %"main$1_call_recursive_function"

"main$1_call_recursive_function":                 ; preds = %"main$1_initialize_context"
  call void @"main$1"(i64 0)
  br label %for.end103.loopexit

for.end103.critedge:                              ; preds = %for.cond38.preheader
  %call91.c = tail call i32 (i32, i32, float*, float*, float*, float*, ...) bitcast (i32 (...)* @fft_float to i32 (i32, i32, float*, float*, float*, float*, ...)*)(i32 %conv.i, i32 %invfft.0, float* %i3, float* %i4, float* %i5, float* %i6) #5
  %puts.c = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @str, i64 0, i64 0))
  br label %for.end103

for.end103.loopexit:                              ; preds = %"main$1_call_recursive_function"
  br label %for.end103

for.end103:                                       ; preds = %for.end103.loopexit, %for.end103.critedge
  %putchar = tail call i32 @putchar(i32 10) #5
  %puts164 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @str.9, i64 0, i64 0))
  br i1 %cmp39178, label %for.end116, label %for.body109.preheader

for.body109.preheader:                            ; preds = %for.end103
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %for.body109.preheader
  store i32 %conv.i, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$3", align 4
  store float* %i6, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$8", align 8
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_initialize_context"
  call void @"main$0"(i64 0)
  br label %for.end116.loopexit

for.end116.critedge:                              ; preds = %for.end90
  %putchar.c = tail call i32 @putchar(i32 10) #5
  %puts164.c = tail call i32 @puts(i8* nonnull getelementptr inbounds ([9 x i8], [9 x i8]* @str.9, i64 0, i64 0))
  br label %for.end116

for.end116.loopexit:                              ; preds = %"main$0_call_recursive_function"
  br label %for.end116

for.end116:                                       ; preds = %for.end116.loopexit, %for.end116.critedge, %for.end103
  %putchar165 = tail call i32 @putchar(i32 10) #5
  tail call void @free(i8* %call12) #5
  tail call void @free(i8* %call15) #5
  tail call void @free(i8* %call18) #5
  tail call void @free(i8* %call21) #5
  tail call void @free(i8* %call24) #5
  tail call void @free(i8* %call27) #5
  tail call void @exit(i32 0) #6
  unreachable
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

declare i32 @fft_float(...) #4

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

declare i32 @putchar(i32)

define void @"main$3"(i64 %arg) {
"main$3_preheader_in_recursion":
  br label %"main$3_latch$0"

"main$3_latch$0":                                 ; preds = %"main$3_increment_loop_counter$0", %"main$3_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"main$3_preheader_in_recursion" ], [ %i3, %"main$3_increment_loop_counter$0" ]
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %"main$3_increment_loop_counter$0" ], [ %arg, %"main$3_preheader_in_recursion" ]
  %call30 = tail call i32 @rand() #5
  %rem = srem i32 %call30, 1000
  %conv31 = sitofp i32 %rem to float
  %i = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$1", align 8
  %arrayidx32 = getelementptr inbounds float, float* %i, i64 %indvars.iv194
  store float %conv31, float* %arrayidx32, align 4, !tbaa !5
  %call33 = tail call i32 @rand() #5
  %rem34 = srem i32 %call33, 1000
  %conv35 = sitofp i32 %rem34 to float
  %i1 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$2", align 8
  %arrayidx37 = getelementptr inbounds float, float* %i1, i64 %indvars.iv194
  store float %conv35, float* %arrayidx37, align 4, !tbaa !5
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1
  %lftr.wideiv196 = trunc i64 %indvars.iv.next195 to i32
  %i2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$0", align 4
  %exitcond197 = icmp eq i32 %lftr.wideiv196, %i2
  br i1 %exitcond197, label %"main$3_return_from_recursive_function$0", label %"main$3_increment_loop_counter$0"

"main$3_increment_loop_counter$0":                ; preds = %"main$3_latch$0"
  %i3 = add i8 %loop_counter, 1
  %i4 = icmp ult i8 %i3, 64
  br i1 %i4, label %"main$3_latch$0", label %"main$3_increment_depth_counter"

"main$3_increment_depth_counter":                 ; preds = %"main$3_increment_loop_counter$0"
  %indvars.iv.next195.lcssa1 = phi i64 [ %indvars.iv.next195, %"main$3_increment_loop_counter$0" ]
  br label %"main$3_recursively_call_function"

"main$3_recursively_call_function":               ; preds = %"main$3_increment_depth_counter"
  call void @"main$3"(i64 %indvars.iv.next195.lcssa1)
  ret void

"main$3_return_from_recursive_function$0":        ; preds = %"main$3_latch$0"
  ret void
}

define void @"main$2"(i64 %arg) {
"main$2_preheader_in_recursion":
  br label %"main$2_header"

"main$2_header":                                  ; preds = %"main$2_increment_loop_counter$0", %"main$2_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"main$2_preheader_in_recursion" ], [ %i5, %"main$2_increment_loop_counter$0" ]
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %"main$2_increment_loop_counter$0" ], [ %arg, %"main$2_preheader_in_recursion" ]
  %i = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$5", align 8
  %arrayidx43 = getelementptr inbounds float, float* %i, i64 %indvars.iv190
  store float 0.000000e+00, float* %arrayidx43, align 4, !tbaa !5
  %i1 = load i1, i1* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$4", align 1
  br i1 %i1, label %"main$2_latch$0", label %for.body47.lr.ph

for.body47.lr.ph:                                 ; preds = %"main$2_header"
  %i2 = trunc i64 %indvars.iv190 to i32
  %conv57 = uitofp i32 %i2 to float
  %i3 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$6", align 8
  %arrayidx84 = getelementptr inbounds float, float* %i3, i64 %indvars.iv190
  br label %"main$2$0_initialize_context"

"main$2$0_initialize_context":                    ; preds = %for.body47.lr.ph
  store float %conv57, float* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$9", align 4
  store float* %arrayidx84, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$10", align 8
  store float* %arrayidx43, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$11", align 8
  br label %"main$2$0_call_recursive_function"

"main$2$0_call_recursive_function":               ; preds = %"main$2$0_initialize_context"
  call void @"main$2$0"(i64 0)
  br label %for.inc88.loopexit

for.inc88.loopexit:                               ; preds = %"main$2$0_call_recursive_function"
  br label %"main$2_latch$0"

"main$2_latch$0":                                 ; preds = %for.inc88.loopexit, %"main$2_header"
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1
  %lftr.wideiv192 = trunc i64 %indvars.iv.next191 to i32
  %i4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$3", align 4
  %exitcond193 = icmp eq i32 %lftr.wideiv192, %i4
  br i1 %exitcond193, label %"main$2_return_from_recursive_function$0", label %"main$2_increment_loop_counter$0"

"main$2_increment_loop_counter$0":                ; preds = %"main$2_latch$0"
  %i5 = add i8 %loop_counter, 1
  %i6 = icmp ult i8 %i5, 64
  br i1 %i6, label %"main$2_header", label %"main$2_increment_depth_counter"

"main$2_increment_depth_counter":                 ; preds = %"main$2_increment_loop_counter$0"
  %indvars.iv.next191.lcssa1 = phi i64 [ %indvars.iv.next191, %"main$2_increment_loop_counter$0" ]
  br label %"main$2_recursively_call_function"

"main$2_recursively_call_function":               ; preds = %"main$2_increment_depth_counter"
  call void @"main$2"(i64 %indvars.iv.next191.lcssa1)
  ret void

"main$2_return_from_recursive_function$0":        ; preds = %"main$2_latch$0"
  ret void
}

define void @"main$1"(i64 %arg) {
"main$1_preheader_in_recursion":
  br label %"main$1_latch$0"

"main$1_latch$0":                                 ; preds = %"main$1_increment_loop_counter$0", %"main$1_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"main$1_preheader_in_recursion" ], [ %i3, %"main$1_increment_loop_counter$0" ]
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %"main$1_increment_loop_counter$0" ], [ %arg, %"main$1_preheader_in_recursion" ]
  %i = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$7", align 8
  %arrayidx98 = getelementptr inbounds float, float* %i, i64 %indvars.iv182
  %i1 = load float, float* %arrayidx98, align 4, !tbaa !5
  %conv99 = fpext float %i1 to double
  %call100 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), double %conv99)
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  %lftr.wideiv184 = trunc i64 %indvars.iv.next183 to i32
  %i2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$3", align 4
  %exitcond185 = icmp eq i32 %lftr.wideiv184, %i2
  br i1 %exitcond185, label %"main$1_return_from_recursive_function$0", label %"main$1_increment_loop_counter$0"

"main$1_increment_loop_counter$0":                ; preds = %"main$1_latch$0"
  %i3 = add i8 %loop_counter, 1
  %i4 = icmp ult i8 %i3, 64
  br i1 %i4, label %"main$1_latch$0", label %"main$1_increment_depth_counter"

"main$1_increment_depth_counter":                 ; preds = %"main$1_increment_loop_counter$0"
  %indvars.iv.next183.lcssa1 = phi i64 [ %indvars.iv.next183, %"main$1_increment_loop_counter$0" ]
  br label %"main$1_recursively_call_function"

"main$1_recursively_call_function":               ; preds = %"main$1_increment_depth_counter"
  call void @"main$1"(i64 %indvars.iv.next183.lcssa1)
  ret void

"main$1_return_from_recursive_function$0":        ; preds = %"main$1_latch$0"
  ret void
}

define void @"main$0"(i64 %arg) {
"main$0_preheader_in_recursion":
  br label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %"main$0_increment_loop_counter$0", %"main$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"main$0_preheader_in_recursion" ], [ %i3, %"main$0_increment_loop_counter$0" ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %"main$0_increment_loop_counter$0" ], [ %arg, %"main$0_preheader_in_recursion" ]
  %i = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$8", align 8
  %arrayidx111 = getelementptr inbounds float, float* %i, i64 %indvars.iv
  %i1 = load float, float* %arrayidx111, align 4, !tbaa !5
  %conv112 = fpext float %i1 to double
  %call113 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), double %conv112)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %i2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$3", align 4
  %exitcond = icmp eq i32 %lftr.wideiv, %i2
  br i1 %exitcond, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_loop_counter$0"

"main$0_increment_loop_counter$0":                ; preds = %"main$0_latch$0"
  %i3 = add i8 %loop_counter, 1
  %i4 = icmp ult i8 %i3, 64
  br i1 %i4, label %"main$0_latch$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_increment_loop_counter$0"
  %indvars.iv.next.lcssa1 = phi i64 [ %indvars.iv.next, %"main$0_increment_loop_counter$0" ]
  br label %"main$0_recursively_call_function"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(i64 %indvars.iv.next.lcssa1)
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  ret void
}

define void @"main$2$0"(i64 %arg) {
"main$2$0_preheader_in_recursion":
  br label %"main$2$0_header"

"main$2$0_header":                                ; preds = %"main$2$0_increment_loop_counter$0", %"main$2$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"main$2$0_preheader_in_recursion" ], [ %i12, %"main$2$0_increment_loop_counter$0" ]
  %indvars.iv186 = phi i64 [ %arg, %"main$2$0_preheader_in_recursion" ], [ %indvars.iv.next187, %"main$2$0_increment_loop_counter$0" ]
  %call48 = tail call i32 @rand() #5
  %rem49166 = and i32 %call48, 1
  %tobool50 = icmp eq i32 %rem49166, 0
  %i = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$1", align 8
  %arrayidx53 = getelementptr inbounds float, float* %i, i64 %indvars.iv186
  %i1 = load float, float* %arrayidx53, align 4, !tbaa !5
  %conv54 = fpext float %i1 to double
  %i2 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$2", align 8
  %arrayidx56 = getelementptr inbounds float, float* %i2, i64 %indvars.iv186
  %i3 = load float, float* %arrayidx56, align 4, !tbaa !5
  %i4 = load float, float* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$9", align 4
  %mul58 = fmul float %i4, %i3
  %conv59 = fpext float %mul58 to double
  br i1 %tobool50, label %if.else66, label %if.then51

if.then51:                                        ; preds = %"main$2$0_header"
  %call60 = tail call double @cos(double %conv59) #5
  %mul61 = fmul double %conv54, %call60
  %i5 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$11", align 8
  %i6 = load float, float* %i5, align 4, !tbaa !5
  %conv64 = fpext float %i6 to double
  %add = fadd double %mul61, %conv64
  br label %"main$2$0_latch$0"

if.else66:                                        ; preds = %"main$2$0_header"
  %call75 = tail call double @sin(double %conv59) #5
  %mul76 = fmul double %conv54, %call75
  %i7 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$11", align 8
  %i8 = load float, float* %i7, align 4, !tbaa !5
  %conv79 = fpext float %i8 to double
  %add80 = fadd double %mul76, %conv79
  br label %"main$2$0_latch$0"

"main$2$0_latch$0":                               ; preds = %if.else66, %if.then51
  %storemerge.in = phi double [ %add80, %if.else66 ], [ %add, %if.then51 ]
  %storemerge = fptrunc double %storemerge.in to float
  %i9 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$11", align 8
  store float %storemerge, float* %i9, align 4, !tbaa !5
  %i10 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$10", align 8
  store float 0.000000e+00, float* %i10, align 4, !tbaa !5
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %lftr.wideiv188 = trunc i64 %indvars.iv.next187 to i32
  %i11 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/main.ll_invariant_variable$0", align 4
  %exitcond189 = icmp eq i32 %lftr.wideiv188, %i11
  br i1 %exitcond189, label %"main$2$0_return_from_recursive_function$0", label %"main$2$0_increment_loop_counter$0"

"main$2$0_increment_loop_counter$0":              ; preds = %"main$2$0_latch$0"
  %i12 = add i8 %loop_counter, 1
  %i13 = icmp ult i8 %i12, 64
  br i1 %i13, label %"main$2$0_header", label %"main$2$0_increment_depth_counter"

"main$2$0_increment_depth_counter":               ; preds = %"main$2$0_increment_loop_counter$0"
  %indvars.iv.next187.lcssa1 = phi i64 [ %indvars.iv.next187, %"main$2$0_increment_loop_counter$0" ]
  br label %"main$2$0_recursively_call_function"

"main$2$0_recursively_call_function":             ; preds = %"main$2$0_increment_depth_counter"
  call void @"main$2$0"(i64 %indvars.iv.next187.lcssa1)
  ret void

"main$2$0_return_from_recursive_function$0":      ; preds = %"main$2$0_latch$0"
  ret void
}

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !3, i64 0}
