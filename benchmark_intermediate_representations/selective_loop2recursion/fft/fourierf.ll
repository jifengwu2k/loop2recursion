; ModuleID = './benchmark_intermediate_representations/baseline/fft/fourierf.ll'
source_filename = "./benchmark_intermediate_representations/baseline/fft/fourierf.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64, i1 }
%1 = type { i32, i32, i1 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1
@"fft_float$3_recursion_state_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$1" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$4" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$5" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$6" = dso_local global float* null
@"fft_float$2_recursion_state_struct" = dso_local global %1 zeroinitializer
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$7" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$8" = dso_local global i1 false

; Function Attrs: nounwind uwtable
define void @fft_float(i32 %NumSamples, i32 %InverseTransform, float* readonly %RealIn, float* readonly %ImagIn, float* %RealOut, float* %ImagOut) #0 {
entry:
  %call = tail call i32 @IsPowerOfTwo(i32 %NumSamples) #4
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %NumSamples) #5
  tail call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %tobool2 = icmp ne i32 %InverseTransform, 0
  %. = select i1 %tobool2, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %cmp.i = icmp eq float* %RealIn, null
  br i1 %cmp.i, label %if.then.i, label %CheckPointer.exit

if.then.i:                                        ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7
  tail call void @exit(i32 1) #6
  unreachable

CheckPointer.exit:                                ; preds = %if.end
  %cmp.i226 = icmp eq float* %RealOut, null
  br i1 %cmp.i226, label %if.then.i228, label %CheckPointer.exit229

if.then.i228:                                     ; preds = %CheckPointer.exit
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call.i227 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #7
  tail call void @exit(i32 1) #6
  unreachable

CheckPointer.exit229:                             ; preds = %CheckPointer.exit
  %cmp.i230 = icmp eq float* %ImagOut, null
  br i1 %cmp.i230, label %if.then.i232, label %CheckPointer.exit233

if.then.i232:                                     ; preds = %CheckPointer.exit229
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call.i231 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #7
  tail call void @exit(i32 1) #6
  unreachable

CheckPointer.exit233:                             ; preds = %CheckPointer.exit229
  %call5 = tail call i32 @NumberOfBitsNeeded(i32 %NumSamples) #4
  %cmp249 = icmp eq i32 %NumSamples, 0
  br i1 %cmp249, label %for.end112, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %CheckPointer.exit233
  %cmp9 = icmp eq float* %ImagIn, null
  br label %"fft_float$3_initialize_context"

"fft_float$3_initialize_context":                 ; preds = %for.body.lr.ph
  store i32 %NumSamples, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  store float* %RealIn, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$1", align 8
  store float* %ImagOut, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  store float* %RealOut, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  store i1 %cmp9, i1* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$4", align 1
  store i32 %call5, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$5", align 4
  store float* %ImagIn, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$6", align 8
  br label %"fft_float$3_call_recursive_function"

"fft_float$3_call_recursive_function":            ; preds = %"fft_float$3_extract_next_values", %"fft_float$3_initialize_context"
  %4 = phi i64 [ 0, %"fft_float$3_initialize_context" ], [ %8, %"fft_float$3_extract_next_values" ]
  call void @"fft_float$3"(i64 %4, i8 0)
  %5 = getelementptr %0, %0* @"fft_float$3_recursion_state_struct", i32 0, i32 1
  %6 = load i1, i1* %5, align 1
  br i1 %6, label %for.cond15.preheader, label %"fft_float$3_extract_next_values"

"fft_float$3_extract_next_values":                ; preds = %"fft_float$3_call_recursive_function"
  %7 = getelementptr %0, %0* @"fft_float$3_recursion_state_struct", i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  br label %"fft_float$3_call_recursive_function"

for.cond15.preheader:                             ; preds = %"fft_float$3_call_recursive_function"
  %cmp16245 = icmp ult i32 %NumSamples, 2
  br i1 %cmp16245, label %for.end112, label %for.body18.preheader

for.body18.preheader:                             ; preds = %for.cond15.preheader
  br label %"fft_float$2_initialize_context"

"fft_float$2_initialize_context":                 ; preds = %for.body18.preheader
  store i32 %NumSamples, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  store float* %ImagOut, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  store float* %RealOut, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  store double %., double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$7", align 8
  store i1 %cmp249, i1* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$8", align 1
  br label %"fft_float$2_call_recursive_function"

"fft_float$2_call_recursive_function":            ; preds = %"fft_float$2_extract_next_values", %"fft_float$2_initialize_context"
  %9 = phi i32 [ 1, %"fft_float$2_initialize_context" ], [ %14, %"fft_float$2_extract_next_values" ]
  %10 = phi i32 [ 2, %"fft_float$2_initialize_context" ], [ %16, %"fft_float$2_extract_next_values" ]
  call void @"fft_float$2"(i32 %9, i32 %10, i8 0)
  %11 = getelementptr %1, %1* @"fft_float$2_recursion_state_struct", i32 0, i32 2
  %12 = load i1, i1* %11, align 1
  br i1 %12, label %for.end112.loopexit, label %"fft_float$2_extract_next_values"

"fft_float$2_extract_next_values":                ; preds = %"fft_float$2_call_recursive_function"
  %13 = getelementptr %1, %1* @"fft_float$2_recursion_state_struct", i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr %1, %1* @"fft_float$2_recursion_state_struct", i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  br label %"fft_float$2_call_recursive_function"

for.end112.loopexit:                              ; preds = %"fft_float$2_call_recursive_function"
  br label %for.end112

for.end112:                                       ; preds = %for.end112.loopexit, %for.cond15.preheader, %CheckPointer.exit233
  br i1 %tobool2, label %if.then114, label %if.end133

if.then114:                                       ; preds = %for.end112
  %conv115 = uitofp i32 %NumSamples to double
  br i1 %cmp249, label %if.end133, label %for.body119.preheader

for.body119.preheader:                            ; preds = %if.then114
  %17 = add i32 %NumSamples, -1
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %18, 1
  %min.iters.check = icmp ult i64 %19, 2
  br i1 %min.iters.check, label %for.body119.preheader269, label %min.iters.checked

min.iters.checked:                                ; preds = %for.body119.preheader
  %n.vec = and i64 %19, 8589934590
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %for.body119.preheader269, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %20 = add i32 %NumSamples, -1
  %21 = zext i32 %20 to i64
  %scevgep = getelementptr float, float* %RealOut, i64 %21
  %scevgep262 = getelementptr float, float* %ImagOut, i64 %21
  %bound0 = icmp uge float* %scevgep262, %RealOut
  %bound1 = icmp uge float* %scevgep, %ImagOut
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %for.body119.preheader269, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert264 = insertelement <2 x double> undef, double %conv115, i32 0
  %broadcast.splat265 = shufflevector <2 x double> %broadcast.splatinsert264, <2 x double> undef, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %22 = getelementptr inbounds float, float* %RealOut, i64 %index
  %23 = bitcast float* %22 to <2 x float>*
  %wide.load = load <2 x float>, <2 x float>* %23, align 4, !tbaa !5
  %24 = fpext <2 x float> %wide.load to <2 x double>
  %25 = fdiv <2 x double> %24, %broadcast.splat265
  %26 = fptrunc <2 x double> %25 to <2 x float>
  %27 = bitcast float* %22 to <2 x float>*
  store <2 x float> %26, <2 x float>* %27, align 4, !tbaa !5
  %28 = getelementptr inbounds float, float* %ImagOut, i64 %index
  %29 = bitcast float* %28 to <2 x float>*
  %wide.load266 = load <2 x float>, <2 x float>* %29, align 4, !tbaa !5
  %30 = fpext <2 x float> %wide.load266 to <2 x double>
  %31 = fdiv <2 x double> %30, %broadcast.splat265
  %32 = fptrunc <2 x double> %31 to <2 x float>
  %33 = bitcast float* %28 to <2 x float>*
  store <2 x float> %32, <2 x float>* %33, align 4, !tbaa !5
  %index.next = add i64 %index, 2
  %34 = icmp eq i64 %index.next, %n.vec
  br i1 %34, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %19, %n.vec
  br i1 %cmp.n, label %if.end133, label %for.body119.preheader269

for.body119.preheader269:                         ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %for.body119.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %min.iters.checked ], [ 0, %for.body119.preheader ], [ %n.vec, %middle.block ]
  br label %for.body119

for.body119:                                      ; preds = %for.body119, %for.body119.preheader269
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body119 ], [ %indvars.iv.ph, %for.body119.preheader269 ]
  %arrayidx121 = getelementptr inbounds float, float* %RealOut, i64 %indvars.iv
  %35 = load float, float* %arrayidx121, align 4, !tbaa !5
  %conv122 = fpext float %35 to double
  %div123 = fdiv double %conv122, %conv115
  %conv124 = fptrunc double %div123 to float
  store float %conv124, float* %arrayidx121, align 4, !tbaa !5
  %arrayidx126 = getelementptr inbounds float, float* %ImagOut, i64 %indvars.iv
  %36 = load float, float* %arrayidx126, align 4, !tbaa !5
  %conv127 = fpext float %36 to double
  %div128 = fdiv double %conv127, %conv115
  %conv129 = fptrunc double %div128 to float
  store float %conv129, float* %arrayidx126, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %NumSamples
  br i1 %exitcond, label %if.end133.loopexit, label %for.body119, !llvm.loop !10

if.end133.loopexit:                               ; preds = %for.body119
  br label %if.end133

if.end133:                                        ; preds = %if.end133.loopexit, %middle.block, %if.then114, %for.end112
  ret void
}

declare i32 @IsPowerOfTwo(i32) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @NumberOfBitsNeeded(i32) #1

declare i32 @ReverseBits(i32, i32) #1

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

define void @"fft_float$3"(i64 %0, i8 %1) {
"fft_float$3_header":
  %2 = trunc i64 %0 to i32
  %3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$5", align 4
  %call6 = tail call i32 @ReverseBits(i32 %2, i32 %3) #4
  %4 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$1", align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %0
  %5 = bitcast float* %arrayidx to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %idxprom7 = zext i32 %call6 to i64
  %7 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  %arrayidx8 = getelementptr inbounds float, float* %7, i64 %idxprom7
  %8 = bitcast float* %arrayidx8 to i32*
  store i32 %6, i32* %8, align 4, !tbaa !5
  %9 = load i1, i1* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$4", align 1
  br i1 %9, label %"fft_float$3_latch$0", label %cond.false

cond.false:                                       ; preds = %"fft_float$3_header"
  %10 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$6", align 8
  %arrayidx11 = getelementptr inbounds float, float* %10, i64 %0
  %11 = load float, float* %arrayidx11, align 4, !tbaa !5
  %conv = fpext float %11 to double
  br label %"fft_float$3_latch$0"

"fft_float$3_latch$0":                            ; preds = %cond.false, %"fft_float$3_header"
  %cond = phi double [ %conv, %cond.false ], [ 0.000000e+00, %"fft_float$3_header" ]
  %conv12 = fptrunc double %cond to float
  %12 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  %arrayidx14 = getelementptr inbounds float, float* %12, i64 %idxprom7
  store float %conv12, float* %arrayidx14, align 4, !tbaa !5
  %indvars.iv.next255 = add nuw nsw i64 %0, 1
  %lftr.wideiv256 = trunc i64 %indvars.iv.next255 to i32
  %13 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  %exitcond257 = icmp eq i32 %lftr.wideiv256, %13
  br i1 %exitcond257, label %"fft_float$3_return_from_recursive_function$0", label %"fft_float$3_increment_depth_counter"

"fft_float$3_increment_depth_counter":            ; preds = %"fft_float$3_latch$0"
  %14 = add i8 %1, 1
  %15 = icmp ult i8 %14, 64
  br i1 %15, label %"fft_float$3_recursively_call_function", label %"fft_float$3_save_recursive_state_and_return"

"fft_float$3_recursively_call_function":          ; preds = %"fft_float$3_increment_depth_counter"
  call void @"fft_float$3"(i64 %indvars.iv.next255, i8 %14)
  ret void

"fft_float$3_save_recursive_state_and_return":    ; preds = %"fft_float$3_increment_depth_counter"
  %16 = getelementptr %0, %0* @"fft_float$3_recursion_state_struct", i32 0, i32 0
  store i64 %indvars.iv.next255, i64* %16, align 8
  %17 = getelementptr %0, %0* @"fft_float$3_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %17, align 1
  ret void

"fft_float$3_return_from_recursive_function$0":   ; preds = %"fft_float$3_latch$0"
  %18 = getelementptr %0, %0* @"fft_float$3_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %18, align 1
  ret void
}

define void @"fft_float$2"(i32 %0, i32 %1, i8 %2) {
"fft_float$2_header":
  %conv19 = uitofp i32 %1 to double
  %3 = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$7", align 8
  %div = fdiv double %3, %conv19
  %mul = fmul double %div, -2.000000e+00
  %call20 = tail call double @sin(double %mul) #4
  %sub21 = fsub double -0.000000e+00, %div
  %call22 = tail call double @sin(double %sub21) #4
  %call24 = tail call double @cos(double %mul) #4
  %cos = tail call double @cos(double %div)
  %mul27 = fmul double %cos, 2.000000e+00
  %4 = load i1, i1* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$8", align 1
  br i1 %4, label %"fft_float$2_latch$0", label %for.cond36.preheader.lr.ph

for.cond36.preheader.lr.ph:                       ; preds = %"fft_float$2_header"
  %cmp37236 = icmp eq i32 %0, 0
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.inc108, %for.cond36.preheader.lr.ph
  %indvars.iv251 = phi i32 [ %0, %for.cond36.preheader.lr.ph ], [ %indvars.iv.next252, %for.inc108 ]
  %i.1244 = phi i32 [ 0, %for.cond36.preheader.lr.ph ], [ %add109, %for.inc108 ]
  br i1 %cmp37236, label %for.inc108, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.cond36.preheader
  br label %for.body39

for.body39:                                       ; preds = %for.body39, %for.body39.preheader
  %j.0242 = phi i32 [ %inc105, %for.body39 ], [ %i.1244, %for.body39.preheader ]
  %ai.sroa.6.0240 = phi double [ %sub52, %for.body39 ], [ %call22, %for.body39.preheader ]
  %ai.sroa.10.0239 = phi double [ %ai.sroa.6.0240, %for.body39 ], [ %call20, %for.body39.preheader ]
  %ar.sroa.6.0238 = phi double [ %sub43, %for.body39 ], [ %cos, %for.body39.preheader ]
  %ar.sroa.10.0237 = phi double [ %ar.sroa.6.0238, %for.body39 ], [ %call24, %for.body39.preheader ]
  %mul41 = fmul double %mul27, %ar.sroa.6.0238
  %sub43 = fsub double %mul41, %ar.sroa.10.0237
  %mul50 = fmul double %mul27, %ai.sroa.6.0240
  %sub52 = fsub double %mul50, %ai.sroa.10.0239
  %add = add i32 %j.0242, %0
  %idxprom59 = zext i32 %add to i64
  %5 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  %arrayidx60 = getelementptr inbounds float, float* %5, i64 %idxprom59
  %6 = load float, float* %arrayidx60, align 4, !tbaa !5
  %conv61 = fpext float %6 to double
  %mul62 = fmul double %sub43, %conv61
  %7 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  %arrayidx65 = getelementptr inbounds float, float* %7, i64 %idxprom59
  %8 = load float, float* %arrayidx65, align 4, !tbaa !5
  %conv66 = fpext float %8 to double
  %mul67 = fmul double %sub52, %conv66
  %sub68 = fsub double %mul62, %mul67
  %mul73 = fmul double %sub43, %conv66
  %mul78 = fmul double %sub52, %conv61
  %add79 = fadd double %mul78, %mul73
  %idxprom80 = zext i32 %j.0242 to i64
  %9 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  %arrayidx81 = getelementptr inbounds float, float* %9, i64 %idxprom80
  %10 = load float, float* %arrayidx81, align 4, !tbaa !5
  %conv82 = fpext float %10 to double
  %sub83 = fsub double %conv82, %sub68
  %conv84 = fptrunc double %sub83 to float
  store float %conv84, float* %arrayidx60, align 4, !tbaa !5
  %11 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  %arrayidx88 = getelementptr inbounds float, float* %11, i64 %idxprom80
  %12 = load float, float* %arrayidx88, align 4, !tbaa !5
  %conv89 = fpext float %12 to double
  %sub90 = fsub double %conv89, %add79
  %conv91 = fptrunc double %sub90 to float
  store float %conv91, float* %arrayidx65, align 4, !tbaa !5
  %13 = load float, float* %arrayidx81, align 4, !tbaa !5
  %conv96 = fpext float %13 to double
  %add97 = fadd double %sub68, %conv96
  %conv98 = fptrunc double %add97 to float
  store float %conv98, float* %arrayidx81, align 4, !tbaa !5
  %14 = load float, float* %arrayidx88, align 4, !tbaa !5
  %conv101 = fpext float %14 to double
  %add102 = fadd double %add79, %conv101
  %conv103 = fptrunc double %add102 to float
  store float %conv103, float* %arrayidx88, align 4, !tbaa !5
  %inc105 = add i32 %j.0242, 1
  %exitcond253 = icmp eq i32 %inc105, %indvars.iv251
  br i1 %exitcond253, label %for.inc108.loopexit, label %for.body39

for.inc108.loopexit:                              ; preds = %for.body39
  br label %for.inc108

for.inc108:                                       ; preds = %for.inc108.loopexit, %for.cond36.preheader
  %add109 = add i32 %i.1244, %1
  %15 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  %cmp29 = icmp ult i32 %add109, %15
  %indvars.iv.next252 = add i32 %indvars.iv251, %1
  br i1 %cmp29, label %for.cond36.preheader, label %for.end110.loopexit

for.end110.loopexit:                              ; preds = %for.inc108
  br label %"fft_float$2_latch$0"

"fft_float$2_latch$0":                            ; preds = %for.end110.loopexit, %"fft_float$2_header"
  %shl = shl i32 %1, 1
  %16 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  %cmp16 = icmp ugt i32 %shl, %16
  br i1 %cmp16, label %"fft_float$2_return_from_recursive_function$0", label %"fft_float$2_increment_depth_counter"

"fft_float$2_increment_depth_counter":            ; preds = %"fft_float$2_latch$0"
  %17 = add i8 %2, 1
  %18 = icmp ult i8 %17, 64
  br i1 %18, label %"fft_float$2_recursively_call_function", label %"fft_float$2_save_recursive_state_and_return"

"fft_float$2_recursively_call_function":          ; preds = %"fft_float$2_increment_depth_counter"
  call void @"fft_float$2"(i32 %1, i32 %shl, i8 %17)
  ret void

"fft_float$2_save_recursive_state_and_return":    ; preds = %"fft_float$2_increment_depth_counter"
  %19 = getelementptr %1, %1* @"fft_float$2_recursion_state_struct", i32 0, i32 0
  store i32 %1, i32* %19, align 4
  %20 = getelementptr %1, %1* @"fft_float$2_recursion_state_struct", i32 0, i32 1
  store i32 %shl, i32* %20, align 4
  %21 = getelementptr %1, %1* @"fft_float$2_recursion_state_struct", i32 0, i32 2
  store i1 false, i1* %21, align 1
  ret void

"fft_float$2_return_from_recursive_function$0":   ; preds = %"fft_float$2_latch$0"
  %22 = getelementptr %1, %1* @"fft_float$2_recursion_state_struct", i32 0, i32 2
  store i1 true, i1* %22, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { cold }
attributes #6 = { noreturn nounwind }
attributes #7 = { cold nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !3, i64 0}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.vectorize.width", i32 1}
!9 = !{!"llvm.loop.interleave.count", i32 1}
!10 = distinct !{!10, !8, !9}
