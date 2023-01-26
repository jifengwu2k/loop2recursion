; ModuleID = './benchmark_intermediate_representations/new_loop2recursion/fft/fourierf.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/fft/fourierf.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$1" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$4" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$5" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$6" = dso_local global float* null
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$7" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$8" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$9" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$10" = dso_local global <2 x double> zeroinitializer
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$11" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$12" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$13" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$14" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$15" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$16" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$17" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$18" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$19" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$20" = dso_local global i32 0

; Function Attrs: nounwind uwtable
define void @fft_float(i32 %NumSamples, i32 %InverseTransform, float* readonly %RealIn, float* readonly %ImagIn, float* %RealOut, float* %ImagOut) #0 {
entry:
  %call = tail call i32 @IsPowerOfTwo(i32 %NumSamples) #4
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %i = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %i, i8* nonnull getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %NumSamples) #5
  tail call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %tobool2 = icmp ne i32 %InverseTransform, 0
  %. = select i1 %tobool2, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %cmp.i = icmp eq float* %RealIn, null
  br i1 %cmp.i, label %if.then.i, label %CheckPointer.exit

if.then.i:                                        ; preds = %if.end
  %i1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %i1, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7
  tail call void @exit(i32 1) #6
  unreachable

CheckPointer.exit:                                ; preds = %if.end
  %cmp.i226 = icmp eq float* %RealOut, null
  br i1 %cmp.i226, label %if.then.i228, label %CheckPointer.exit229

if.then.i228:                                     ; preds = %CheckPointer.exit
  %i2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call.i227 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %i2, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #7
  tail call void @exit(i32 1) #6
  unreachable

CheckPointer.exit229:                             ; preds = %CheckPointer.exit
  %cmp.i230 = icmp eq float* %ImagOut, null
  br i1 %cmp.i230, label %if.then.i232, label %CheckPointer.exit233

if.then.i232:                                     ; preds = %CheckPointer.exit229
  %i3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call.i231 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %i3, i8* nonnull getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #7
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

"fft_float$3_call_recursive_function":            ; preds = %"fft_float$3_initialize_context"
  call void @"fft_float$3"(i64 0)
  br label %for.cond15.preheader

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

"fft_float$2_call_recursive_function":            ; preds = %"fft_float$2_initialize_context"
  call void @"fft_float$2"(i32 1, i32 2)
  br label %for.end112.loopexit

for.end112.loopexit:                              ; preds = %"fft_float$2_call_recursive_function"
  br label %for.end112

for.end112:                                       ; preds = %for.end112.loopexit, %for.cond15.preheader, %CheckPointer.exit233
  br i1 %tobool2, label %if.then114, label %if.end133

if.then114:                                       ; preds = %for.end112
  %conv115 = uitofp i32 %NumSamples to double
  br i1 %cmp249, label %if.end133, label %for.body119.preheader

for.body119.preheader:                            ; preds = %if.then114
  %i4 = add i32 %NumSamples, -1
  %i5 = zext i32 %i4 to i64
  %i6 = add nuw nsw i64 %i5, 1
  %min.iters.check = icmp ult i64 %i6, 2
  br i1 %min.iters.check, label %for.body119.preheader269, label %min.iters.checked

min.iters.checked:                                ; preds = %for.body119.preheader
  %n.vec = and i64 %i6, 8589934590
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %for.body119.preheader269, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %i7 = add i32 %NumSamples, -1
  %i8 = zext i32 %i7 to i64
  %scevgep = getelementptr float, float* %RealOut, i64 %i8
  %scevgep262 = getelementptr float, float* %ImagOut, i64 %i8
  %bound0 = icmp uge float* %scevgep262, %RealOut
  %bound1 = icmp uge float* %scevgep, %ImagOut
  %memcheck.conflict = and i1 %bound0, %bound1
  br i1 %memcheck.conflict, label %for.body119.preheader269, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert264 = insertelement <2 x double> undef, double %conv115, i32 0
  %broadcast.splat265 = shufflevector <2 x double> %broadcast.splatinsert264, <2 x double> undef, <2 x i32> zeroinitializer
  br label %"fft_float$1_initialize_context"

"fft_float$1_initialize_context":                 ; preds = %vector.ph
  store i64 %n.vec, i64* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$9", align 8
  store float* %ImagOut, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  store float* %RealOut, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  store <2 x double> %broadcast.splat265, <2 x double>* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$10", align 16
  br label %"fft_float$1_call_recursive_function"

"fft_float$1_call_recursive_function":            ; preds = %"fft_float$1_initialize_context"
  call void @"fft_float$1"(i64 0)
  br label %middle.block

middle.block:                                     ; preds = %"fft_float$1_call_recursive_function"
  %cmp.n = icmp eq i64 %i6, %n.vec
  br i1 %cmp.n, label %if.end133, label %for.body119.preheader269

for.body119.preheader269:                         ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %for.body119.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %min.iters.checked ], [ 0, %for.body119.preheader ], [ %n.vec, %middle.block ]
  br label %"fft_float$0_initialize_context"

"fft_float$0_initialize_context":                 ; preds = %for.body119.preheader269
  store i32 %NumSamples, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  store float* %ImagOut, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  store float* %RealOut, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  store double %conv115, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$11", align 8
  br label %"fft_float$0_call_recursive_function"

"fft_float$0_call_recursive_function":            ; preds = %"fft_float$0_initialize_context"
  call void @"fft_float$0"(i64 %indvars.iv.ph)
  br label %if.end133.loopexit

if.end133.loopexit:                               ; preds = %"fft_float$0_call_recursive_function"
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

define void @"fft_float$3"(i64 %arg) {
"fft_float$3_header":
  %i = trunc i64 %arg to i32
  %i1 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$5", align 4
  %call6 = tail call i32 @ReverseBits(i32 %i, i32 %i1) #4
  %i2 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$1", align 8
  %arrayidx = getelementptr inbounds float, float* %i2, i64 %arg
  %i3 = bitcast float* %arrayidx to i32*
  %i4 = load i32, i32* %i3, align 4, !tbaa !5
  %idxprom7 = zext i32 %call6 to i64
  %i5 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  %arrayidx8 = getelementptr inbounds float, float* %i5, i64 %idxprom7
  %i6 = bitcast float* %arrayidx8 to i32*
  store i32 %i4, i32* %i6, align 4, !tbaa !5
  %i7 = load i1, i1* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$4", align 1
  br i1 %i7, label %"fft_float$3_latch$0", label %cond.false

cond.false:                                       ; preds = %"fft_float$3_header"
  %i8 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$6", align 8
  %arrayidx11 = getelementptr inbounds float, float* %i8, i64 %arg
  %i9 = load float, float* %arrayidx11, align 4, !tbaa !5
  %conv = fpext float %i9 to double
  br label %"fft_float$3_latch$0"

"fft_float$3_latch$0":                            ; preds = %cond.false, %"fft_float$3_header"
  %cond = phi double [ %conv, %cond.false ], [ 0.000000e+00, %"fft_float$3_header" ]
  %conv12 = fptrunc double %cond to float
  %i10 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  %arrayidx14 = getelementptr inbounds float, float* %i10, i64 %idxprom7
  store float %conv12, float* %arrayidx14, align 4, !tbaa !5
  %indvars.iv.next255 = add nuw nsw i64 %arg, 1
  %lftr.wideiv256 = trunc i64 %indvars.iv.next255 to i32
  %i11 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  %exitcond257 = icmp eq i32 %lftr.wideiv256, %i11
  br i1 %exitcond257, label %"fft_float$3_return_from_recursive_function$0", label %"fft_float$3_increment_depth_counter"

"fft_float$3_increment_depth_counter":            ; preds = %"fft_float$3_latch$0"
  br label %"fft_float$3_recursively_call_function"

"fft_float$3_recursively_call_function":          ; preds = %"fft_float$3_increment_depth_counter"
  call void @"fft_float$3"(i64 %indvars.iv.next255)
  ret void

"fft_float$3_return_from_recursive_function$0":   ; preds = %"fft_float$3_latch$0"
  ret void
}

define void @"fft_float$2"(i32 %arg, i32 %arg1) {
"fft_float$2_header":
  %conv19 = uitofp i32 %arg1 to double
  %i = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$7", align 8
  %div = fdiv double %i, %conv19
  %mul = fmul double %div, -2.000000e+00
  %call20 = tail call double @sin(double %mul) #4
  %sub21 = fsub double -0.000000e+00, %div
  %call22 = tail call double @sin(double %sub21) #4
  %call24 = tail call double @cos(double %mul) #4
  %cos = tail call double @cos(double %div)
  %mul27 = fmul double %cos, 2.000000e+00
  %i2 = load i1, i1* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$8", align 1
  br i1 %i2, label %"fft_float$2_latch$0", label %for.cond36.preheader.lr.ph

for.cond36.preheader.lr.ph:                       ; preds = %"fft_float$2_header"
  %cmp37236 = icmp eq i32 %arg, 0
  br label %"fft_float$2$0_initialize_context"

"fft_float$2$0_initialize_context":               ; preds = %for.cond36.preheader.lr.ph
  store i32 %arg, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$12", align 4
  store i32 %arg1, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$13", align 4
  store double %call22, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$14", align 8
  store i1 %cmp37236, i1* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$15", align 1
  store double %call20, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$16", align 8
  store double %mul27, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$17", align 8
  store double %cos, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$18", align 8
  store double %call24, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$19", align 8
  br label %"fft_float$2$0_call_recursive_function"

"fft_float$2$0_call_recursive_function":          ; preds = %"fft_float$2$0_initialize_context"
  call void @"fft_float$2$0"(i32 0, i32 %arg)
  br label %for.end110.loopexit

for.end110.loopexit:                              ; preds = %"fft_float$2$0_call_recursive_function"
  br label %"fft_float$2_latch$0"

"fft_float$2_latch$0":                            ; preds = %for.end110.loopexit, %"fft_float$2_header"
  %shl = shl i32 %arg1, 1
  %i3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  %cmp16 = icmp ugt i32 %shl, %i3
  br i1 %cmp16, label %"fft_float$2_return_from_recursive_function$0", label %"fft_float$2_increment_depth_counter"

"fft_float$2_increment_depth_counter":            ; preds = %"fft_float$2_latch$0"
  br label %"fft_float$2_recursively_call_function"

"fft_float$2_recursively_call_function":          ; preds = %"fft_float$2_increment_depth_counter"
  call void @"fft_float$2"(i32 %arg1, i32 %shl)
  ret void

"fft_float$2_return_from_recursive_function$0":   ; preds = %"fft_float$2_latch$0"
  ret void
}

define void @"fft_float$1"(i64 %arg) {
"fft_float$1_latch$0":
  %i = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  %i1 = getelementptr inbounds float, float* %i, i64 %arg
  %i2 = bitcast float* %i1 to <2 x float>*
  %wide.load = load <2 x float>, <2 x float>* %i2, align 4, !tbaa !5
  %i3 = fpext <2 x float> %wide.load to <2 x double>
  %i4 = load <2 x double>, <2 x double>* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$10", align 16
  %i5 = fdiv <2 x double> %i3, %i4
  %i6 = fptrunc <2 x double> %i5 to <2 x float>
  %i7 = bitcast float* %i1 to <2 x float>*
  store <2 x float> %i6, <2 x float>* %i7, align 4, !tbaa !5
  %i8 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  %i9 = getelementptr inbounds float, float* %i8, i64 %arg
  %i10 = bitcast float* %i9 to <2 x float>*
  %wide.load266 = load <2 x float>, <2 x float>* %i10, align 4, !tbaa !5
  %i11 = fpext <2 x float> %wide.load266 to <2 x double>
  %i12 = load <2 x double>, <2 x double>* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$10", align 16
  %i13 = fdiv <2 x double> %i11, %i12
  %i14 = fptrunc <2 x double> %i13 to <2 x float>
  %i15 = bitcast float* %i9 to <2 x float>*
  store <2 x float> %i14, <2 x float>* %i15, align 4, !tbaa !5
  %index.next = add i64 %arg, 2
  %i16 = load i64, i64* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$9", align 8
  %i17 = icmp eq i64 %index.next, %i16
  br i1 %i17, label %"fft_float$1_return_from_recursive_function$0", label %"fft_float$1_increment_depth_counter", !llvm.loop !7

"fft_float$1_increment_depth_counter":            ; preds = %"fft_float$1_latch$0"
  br label %"fft_float$1_recursively_call_function"

"fft_float$1_recursively_call_function":          ; preds = %"fft_float$1_increment_depth_counter"
  call void @"fft_float$1"(i64 %index.next)
  ret void

"fft_float$1_return_from_recursive_function$0":   ; preds = %"fft_float$1_latch$0"
  ret void
}

define void @"fft_float$0"(i64 %arg) {
"fft_float$0_latch$0":
  %i = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  %arrayidx121 = getelementptr inbounds float, float* %i, i64 %arg
  %i1 = load float, float* %arrayidx121, align 4, !tbaa !5
  %conv122 = fpext float %i1 to double
  %i2 = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$11", align 8
  %div123 = fdiv double %conv122, %i2
  %conv124 = fptrunc double %div123 to float
  store float %conv124, float* %arrayidx121, align 4, !tbaa !5
  %i3 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  %arrayidx126 = getelementptr inbounds float, float* %i3, i64 %arg
  %i4 = load float, float* %arrayidx126, align 4, !tbaa !5
  %conv127 = fpext float %i4 to double
  %i5 = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$11", align 8
  %div128 = fdiv double %conv127, %i5
  %conv129 = fptrunc double %div128 to float
  store float %conv129, float* %arrayidx126, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %i6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  %exitcond = icmp eq i32 %lftr.wideiv, %i6
  br i1 %exitcond, label %"fft_float$0_return_from_recursive_function$0", label %"fft_float$0_increment_depth_counter", !llvm.loop !10

"fft_float$0_increment_depth_counter":            ; preds = %"fft_float$0_latch$0"
  br label %"fft_float$0_recursively_call_function"

"fft_float$0_recursively_call_function":          ; preds = %"fft_float$0_increment_depth_counter"
  call void @"fft_float$0"(i64 %indvars.iv.next)
  ret void

"fft_float$0_return_from_recursive_function$0":   ; preds = %"fft_float$0_latch$0"
  ret void
}

define void @"fft_float$2$0"(i32 %arg, i32 %arg1) {
"fft_float$2$0_header":
  %i = load i1, i1* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$15", align 1
  br i1 %i, label %"fft_float$2$0_latch$0", label %for.body39.preheader

for.body39.preheader:                             ; preds = %"fft_float$2$0_header"
  %i2 = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$14", align 8
  %i3 = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$16", align 8
  %i4 = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$18", align 8
  %i5 = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$19", align 8
  br label %"fft_float$2$0$0_initialize_context"

"fft_float$2$0$0_initialize_context":             ; preds = %for.body39.preheader
  store i32 %arg1, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$20", align 4
  br label %"fft_float$2$0$0_call_recursive_function"

"fft_float$2$0$0_call_recursive_function":        ; preds = %"fft_float$2$0$0_initialize_context"
  call void @"fft_float$2$0$0"(double %i5, double %i4, i32 %arg, double %i3, double %i2)
  br label %for.inc108.loopexit

for.inc108.loopexit:                              ; preds = %"fft_float$2$0$0_call_recursive_function"
  br label %"fft_float$2$0_latch$0"

"fft_float$2$0_latch$0":                          ; preds = %for.inc108.loopexit, %"fft_float$2$0_header"
  %i6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$13", align 4
  %add109 = add i32 %arg, %i6
  %i7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$0", align 4
  %cmp29 = icmp ult i32 %add109, %i7
  %i8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$13", align 4
  %indvars.iv.next252 = add i32 %arg1, %i8
  br i1 %cmp29, label %"fft_float$2$0_increment_depth_counter", label %"fft_float$2$0_return_from_recursive_function$0"

"fft_float$2$0_increment_depth_counter":          ; preds = %"fft_float$2$0_latch$0"
  br label %"fft_float$2$0_recursively_call_function"

"fft_float$2$0_recursively_call_function":        ; preds = %"fft_float$2$0_increment_depth_counter"
  call void @"fft_float$2$0"(i32 %add109, i32 %indvars.iv.next252)
  ret void

"fft_float$2$0_return_from_recursive_function$0": ; preds = %"fft_float$2$0_latch$0"
  ret void
}

define void @"fft_float$2$0$0"(double %arg, double %arg1, i32 %arg2, double %arg3, double %arg4) {
"fft_float$2$0$0_latch$0":
  %i = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$17", align 8
  %mul41 = fmul double %i, %arg1
  %sub43 = fsub double %mul41, %arg
  %i5 = load double, double* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$17", align 8
  %mul50 = fmul double %i5, %arg4
  %sub52 = fsub double %mul50, %arg3
  %i6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$12", align 4
  %add = add i32 %arg2, %i6
  %idxprom59 = zext i32 %add to i64
  %i7 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  %arrayidx60 = getelementptr inbounds float, float* %i7, i64 %idxprom59
  %i8 = load float, float* %arrayidx60, align 4, !tbaa !5
  %conv61 = fpext float %i8 to double
  %mul62 = fmul double %sub43, %conv61
  %i9 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  %arrayidx65 = getelementptr inbounds float, float* %i9, i64 %idxprom59
  %i10 = load float, float* %arrayidx65, align 4, !tbaa !5
  %conv66 = fpext float %i10 to double
  %mul67 = fmul double %sub52, %conv66
  %sub68 = fsub double %mul62, %mul67
  %mul73 = fmul double %sub43, %conv66
  %mul78 = fmul double %sub52, %conv61
  %add79 = fadd double %mul78, %mul73
  %idxprom80 = zext i32 %arg2 to i64
  %i11 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$3", align 8
  %arrayidx81 = getelementptr inbounds float, float* %i11, i64 %idxprom80
  %i12 = load float, float* %arrayidx81, align 4, !tbaa !5
  %conv82 = fpext float %i12 to double
  %sub83 = fsub double %conv82, %sub68
  %conv84 = fptrunc double %sub83 to float
  store float %conv84, float* %arrayidx60, align 4, !tbaa !5
  %i13 = load float*, float** @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$2", align 8
  %arrayidx88 = getelementptr inbounds float, float* %i13, i64 %idxprom80
  %i14 = load float, float* %arrayidx88, align 4, !tbaa !5
  %conv89 = fpext float %i14 to double
  %sub90 = fsub double %conv89, %add79
  %conv91 = fptrunc double %sub90 to float
  store float %conv91, float* %arrayidx65, align 4, !tbaa !5
  %i15 = load float, float* %arrayidx81, align 4, !tbaa !5
  %conv96 = fpext float %i15 to double
  %add97 = fadd double %sub68, %conv96
  %conv98 = fptrunc double %add97 to float
  store float %conv98, float* %arrayidx81, align 4, !tbaa !5
  %i16 = load float, float* %arrayidx88, align 4, !tbaa !5
  %conv101 = fpext float %i16 to double
  %add102 = fadd double %add79, %conv101
  %conv103 = fptrunc double %add102 to float
  store float %conv103, float* %arrayidx88, align 4, !tbaa !5
  %inc105 = add i32 %arg2, 1
  %i17 = load i32, i32* @"./benchmark_intermediate_representations/baseline/fft/fourierf.ll_invariant_variable$20", align 4
  %exitcond253 = icmp eq i32 %inc105, %i17
  br i1 %exitcond253, label %"fft_float$2$0$0_return_from_recursive_function$0", label %"fft_float$2$0$0_increment_depth_counter"

"fft_float$2$0$0_increment_depth_counter":        ; preds = %"fft_float$2$0$0_latch$0"
  br label %"fft_float$2$0$0_recursively_call_function"

"fft_float$2$0$0_recursively_call_function":      ; preds = %"fft_float$2$0$0_increment_depth_counter"
  call void @"fft_float$2$0$0"(double %arg1, double %sub43, i32 %inc105, double %arg4, double %sub52)
  ret void

"fft_float$2$0$0_return_from_recursive_function$0": ; preds = %"fft_float$2$0$0_latch$0"
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
