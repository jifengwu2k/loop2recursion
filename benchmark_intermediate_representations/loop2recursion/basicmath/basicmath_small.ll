; ModuleID = './benchmark_intermediate_representations/loop2recursion/basicmath/basicmath_small.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Asqrt(%lX) = %X\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1
@str = private unnamed_addr constant [38 x i8] c"********* CUBIC FUNCTIONS ***********\00"
@str.11 = private unnamed_addr constant [40 x i8] c"********* INTEGER SQR ROOTS ***********\00"
@str.12 = private unnamed_addr constant [39 x i8] c"********* ANGLE CONVERSION ***********\00"
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1" = dso_local global [3 x double]* null
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$2" = dso_local global double* null
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$3" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$4" = dso_local global %struct.int_sqrt* null
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$5" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$6" = dso_local global double 0.000000e+00
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$7" = dso_local global double 0.000000e+00

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %x = alloca [3 x double], align 16
  %solutions = alloca i32, align 4
  %q = alloca %struct.int_sqrt, align 4
  %tmp = bitcast [3 x double]* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %tmp) #4
  %tmp1 = bitcast i32* %solutions to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %tmp1) #4
  %tmp2 = bitcast %struct.int_sqrt* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %tmp2) #4
  %puts = tail call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str, i64 0, i64 0)) #4
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %x, i64 0, i64 0
  call void @SolveCubic(double 1.000000e+00, double -1.050000e+01, double 3.200000e+01, double -3.000000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %tmp3 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp194 = icmp sgt i32 %tmp3, 0
  br i1 %cmp194, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  br label %"main$7_initialize_context"

"main$7_initialize_context":                      ; preds = %for.body.preheader
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  br label %"main$7_call_recursive_function"

"main$7_call_recursive_function":                 ; preds = %"main$7_initialize_context"
  call void @"main$7"(i64 0)
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %"main$7_call_recursive_function"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %putchar = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -4.500000e+00, double 1.700000e+01, double -3.000000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call5 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %tmp4 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp7192 = icmp sgt i32 %tmp4, 0
  br i1 %cmp7192, label %for.body8.preheader, label %for.end14

for.body8.preheader:                              ; preds = %for.end
  br label %"main$6_initialize_context"

"main$6_initialize_context":                      ; preds = %for.body8.preheader
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  br label %"main$6_call_recursive_function"

"main$6_call_recursive_function":                 ; preds = %"main$6_initialize_context"
  call void @"main$6"(i64 0)
  br label %for.end14.loopexit

for.end14.loopexit:                               ; preds = %"main$6_call_recursive_function"
  br label %for.end14

for.end14:                                        ; preds = %for.end14.loopexit, %for.end
  %putchar173 = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -3.500000e+00, double 2.200000e+01, double -3.100000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call17 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %tmp5 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp19190 = icmp sgt i32 %tmp5, 0
  br i1 %cmp19190, label %for.body20.preheader, label %for.end26

for.body20.preheader:                             ; preds = %for.end14
  br label %"main$5_initialize_context"

"main$5_initialize_context":                      ; preds = %for.body20.preheader
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  br label %"main$5_call_recursive_function"

"main$5_call_recursive_function":                 ; preds = %"main$5_initialize_context"
  call void @"main$5"(i64 0)
  br label %for.end26.loopexit

for.end26.loopexit:                               ; preds = %"main$5_call_recursive_function"
  br label %for.end26

for.end26:                                        ; preds = %for.end26.loopexit, %for.end14
  %putchar174 = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -1.370000e+01, double 1.000000e+00, double -3.500000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call29 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %tmp6 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp31188 = icmp sgt i32 %tmp6, 0
  br i1 %cmp31188, label %for.body32.preheader, label %for.end38

for.body32.preheader:                             ; preds = %for.end26
  br label %"main$4_initialize_context"

"main$4_initialize_context":                      ; preds = %for.body32.preheader
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  br label %"main$4_call_recursive_function"

"main$4_call_recursive_function":                 ; preds = %"main$4_initialize_context"
  call void @"main$4"(i64 0)
  br label %for.end38.loopexit

for.end38.loopexit:                               ; preds = %"main$4_call_recursive_function"
  br label %for.end38

for.end38:                                        ; preds = %for.end38.loopexit, %for.end26
  %putchar175 = call i32 @putchar(i32 10) #4
  br label %"main$3_initialize_context"

"main$3_initialize_context":                      ; preds = %for.end38
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  store double* %arraydecay, double** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$2"
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  br label %"main$3_call_recursive_function"

"main$3_call_recursive_function":                 ; preds = %"main$3_initialize_context"
  call void @"main$3"(i32 1)
  br label %for.end73

for.end73:                                        ; preds = %"main$3_call_recursive_function"
  %puts176 = call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @str.11, i64 0, i64 0)) #4
  %sqrt = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %q, i64 0, i32 0
  br label %"main$2_initialize_context"

"main$2_initialize_context":                      ; preds = %for.end73
  store i32* %sqrt, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$3"
  store %struct.int_sqrt* %q, %struct.int_sqrt** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$4"
  br label %"main$2_call_recursive_function"

"main$2_call_recursive_function":                 ; preds = %"main$2_initialize_context"
  call void @"main$2"(i64 0)
  br label %for.end81

for.end81:                                        ; preds = %"main$2_call_recursive_function"
  call void @usqrt(i64 1072497001, %struct.int_sqrt* nonnull %q) #4
  %tmp7 = load i32, i32* %sqrt, align 4, !tbaa !5
  %call83 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 1072497001, i32 %tmp7)
  %puts177 = call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @str.12, i64 0, i64 0)) #4
  br label %"main$1_call_recursive_function"

"main$1_call_recursive_function":                 ; preds = %for.end81
  call void @"main$1"(i32 0)
  br label %for.end94

for.end94:                                        ; preds = %"main$1_call_recursive_function"
  %call95 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %for.end94
  call void @"main$0"(double 0.000000e+00)
  br label %for.end114

for.end114:                                       ; preds = %"main$0_call_recursive_function"
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %tmp2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %tmp1) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %tmp) #4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

declare void @SolveCubic(double, double, double, double, i32*, double*) #2

declare void @usqrt(i64, %struct.int_sqrt*) #2

declare i32 @puts(...) #2

declare i32 @putchar(i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

define void @"main$7"(i64 %arg) {
"main$7_latch$0":
  %tmp = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %tmp, i64 0, i64 %arg
  %tmp1 = load double, double* %arrayidx, align 8, !tbaa !7
  %call2 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %tmp1)
  %indvars.iv.next214 = add nuw nsw i64 %arg, 1
  %tmp2 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  %tmp3 = load i32, i32* %tmp2, align 4, !tbaa !1
  %tmp4 = sext i32 %tmp3 to i64
  %cmp = icmp slt i64 %indvars.iv.next214, %tmp4
  br i1 %cmp, label %"main$7_increment_depth_counter", label %"main$7_return_from_recursive_function$0"

"main$7_increment_depth_counter":                 ; preds = %"main$7_latch$0"
  br label %"main$7_recursively_call_function"

"main$7_recursively_call_function":               ; preds = %"main$7_increment_depth_counter"
  call void @"main$7"(i64 %indvars.iv.next214)
  ret void

"main$7_return_from_recursive_function$0":        ; preds = %"main$7_latch$0"
  ret void
}

define void @"main$6"(i64 %arg) {
"main$6_latch$0":
  %tmp = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %tmp, i64 0, i64 %arg
  %tmp1 = load double, double* %arrayidx10, align 8, !tbaa !7
  %call11 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %tmp1)
  %indvars.iv.next212 = add nuw nsw i64 %arg, 1
  %tmp2 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  %tmp3 = load i32, i32* %tmp2, align 4, !tbaa !1
  %tmp4 = sext i32 %tmp3 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next212, %tmp4
  br i1 %cmp7, label %"main$6_increment_depth_counter", label %"main$6_return_from_recursive_function$0"

"main$6_increment_depth_counter":                 ; preds = %"main$6_latch$0"
  br label %"main$6_recursively_call_function"

"main$6_recursively_call_function":               ; preds = %"main$6_increment_depth_counter"
  call void @"main$6"(i64 %indvars.iv.next212)
  ret void

"main$6_return_from_recursive_function$0":        ; preds = %"main$6_latch$0"
  ret void
}

define void @"main$5"(i64 %arg) {
"main$5_latch$0":
  %tmp = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %tmp, i64 0, i64 %arg
  %tmp1 = load double, double* %arrayidx22, align 8, !tbaa !7
  %call23 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %tmp1)
  %indvars.iv.next210 = add nuw nsw i64 %arg, 1
  %tmp2 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  %tmp3 = load i32, i32* %tmp2, align 4, !tbaa !1
  %tmp4 = sext i32 %tmp3 to i64
  %cmp19 = icmp slt i64 %indvars.iv.next210, %tmp4
  br i1 %cmp19, label %"main$5_increment_depth_counter", label %"main$5_return_from_recursive_function$0"

"main$5_increment_depth_counter":                 ; preds = %"main$5_latch$0"
  br label %"main$5_recursively_call_function"

"main$5_recursively_call_function":               ; preds = %"main$5_increment_depth_counter"
  call void @"main$5"(i64 %indvars.iv.next210)
  ret void

"main$5_return_from_recursive_function$0":        ; preds = %"main$5_latch$0"
  ret void
}

define void @"main$4"(i64 %arg) {
"main$4_latch$0":
  %tmp = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %tmp, i64 0, i64 %arg
  %tmp1 = load double, double* %arrayidx34, align 8, !tbaa !7
  %call35 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %tmp1)
  %indvars.iv.next208 = add nuw nsw i64 %arg, 1
  %tmp2 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  %tmp3 = load i32, i32* %tmp2, align 4, !tbaa !1
  %tmp4 = sext i32 %tmp3 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next208, %tmp4
  br i1 %cmp31, label %"main$4_increment_depth_counter", label %"main$4_return_from_recursive_function$0"

"main$4_increment_depth_counter":                 ; preds = %"main$4_latch$0"
  br label %"main$4_recursively_call_function"

"main$4_recursively_call_function":               ; preds = %"main$4_increment_depth_counter"
  call void @"main$4"(i64 %indvars.iv.next208)
  ret void

"main$4_return_from_recursive_function$0":        ; preds = %"main$4_latch$0"
  ret void
}

define void @"main$3"(i32 %arg) {
"main$3_header":
  %indvar.conv205 = sitofp i32 %arg to double
  br label %"main$3$0_initialize_context"

"main$3$0_initialize_context":                    ; preds = %"main$3_header"
  store double %indvar.conv205, double* @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$5"
  br label %"main$3$0_call_recursive_function"

"main$3$0_call_recursive_function":               ; preds = %"main$3$0_initialize_context"
  call void @"main$3$0"(i32 10)
  br label %"main$3_latch$0"

"main$3_latch$0":                                 ; preds = %"main$3$0_call_recursive_function"
  %inc72.int = add nuw nsw i32 %arg, 1
  %exitcond206 = icmp eq i32 %inc72.int, 10
  br i1 %exitcond206, label %"main$3_return_from_recursive_function$0", label %"main$3_increment_depth_counter", !llvm.loop !9

"main$3_increment_depth_counter":                 ; preds = %"main$3_latch$0"
  br label %"main$3_recursively_call_function"

"main$3_recursively_call_function":               ; preds = %"main$3_increment_depth_counter"
  call void @"main$3"(i32 %inc72.int)
  ret void

"main$3_return_from_recursive_function$0":        ; preds = %"main$3_latch$0"
  ret void
}

define void @"main$2"(i64 %arg) {
"main$2_latch$0":
  %tmp = load %struct.int_sqrt*, %struct.int_sqrt** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$4"
  call void @usqrt(i64 %arg, %struct.int_sqrt* nonnull %tmp) #4
  %tmp1 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$3"
  %tmp2 = load i32, i32* %tmp1, align 4, !tbaa !5
  %tmp3 = trunc i64 %arg to i32
  %call78 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %tmp3, i32 %tmp2)
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %exitcond197 = icmp eq i64 %indvars.iv.next, 1001
  br i1 %exitcond197, label %"main$2_return_from_recursive_function$0", label %"main$2_increment_depth_counter", !llvm.loop !9

"main$2_increment_depth_counter":                 ; preds = %"main$2_latch$0"
  br label %"main$2_recursively_call_function"

"main$2_recursively_call_function":               ; preds = %"main$2_increment_depth_counter"
  call void @"main$2"(i64 %indvars.iv.next)
  ret void

"main$2_return_from_recursive_function$0":        ; preds = %"main$2_latch$0"
  ret void
}

define void @"main$1"(i32 %arg) {
"main$1_latch$0":
  %indvar.conv = sitofp i32 %arg to double
  %mul90 = fmul double %indvar.conv, 0x400921FB54442D18
  %div = fdiv double %mul90, 1.800000e+02
  %call91 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), double %indvar.conv, double %div)
  %add93.int = add nuw nsw i32 %arg, 1
  %exitcond = icmp eq i32 %add93.int, 361
  br i1 %exitcond, label %"main$1_return_from_recursive_function$0", label %"main$1_increment_depth_counter"

"main$1_increment_depth_counter":                 ; preds = %"main$1_latch$0"
  br label %"main$1_recursively_call_function"

"main$1_recursively_call_function":               ; preds = %"main$1_increment_depth_counter"
  call void @"main$1"(i32 %add93.int)
  ret void

"main$1_return_from_recursive_function$0":        ; preds = %"main$1_latch$0"
  ret void
}

define void @"main$0"(double %arg) {
"main$0_latch$0":
  %mul104 = fmul double %arg, 1.800000e+02
  %div107 = fdiv double %mul104, 0x400921FB54442D18
  %call108 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double %arg, double %div107)
  %add113 = fadd double %arg, 0x3F91DF46A2529D39
  %cmp101 = fcmp ugt double %add113, 0x401921FB97600B9B
  br i1 %cmp101, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  br label %"main$0_recursively_call_function"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(double %add113)
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  ret void
}

define void @"main$3$0"(i32 %arg) {
"main$3$0_header":
  %indvar.conv203 = sitofp i32 %arg to double
  br label %"main$3$0$0_initialize_context"

"main$3$0$0_initialize_context":                  ; preds = %"main$3$0_header"
  store double %indvar.conv203, double* @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$6"
  br label %"main$3$0$0_call_recursive_function"

"main$3$0$0_call_recursive_function":             ; preds = %"main$3$0$0_initialize_context"
  call void @"main$3$0$0"(double 5.000000e+00)
  br label %"main$3$0_latch$0"

"main$3$0_latch$0":                               ; preds = %"main$3$0$0_call_recursive_function"
  %dec69.int = add nsw i32 %arg, -1
  %cmp44 = icmp sgt i32 %arg, 1
  br i1 %cmp44, label %"main$3$0_increment_depth_counter", label %"main$3$0_return_from_recursive_function$0", !llvm.loop !9

"main$3$0_increment_depth_counter":               ; preds = %"main$3$0_latch$0"
  br label %"main$3$0_recursively_call_function"

"main$3$0_recursively_call_function":             ; preds = %"main$3$0_increment_depth_counter"
  call void @"main$3$0"(i32 %dec69.int)
  ret void

"main$3$0_return_from_recursive_function$0":      ; preds = %"main$3$0_latch$0"
  ret void
}

define void @"main$3$0$0"(double %arg) {
"main$3$0$0_header":
  br label %"main$3$0$0$0_initialize_context"

"main$3$0$0$0_initialize_context":                ; preds = %"main$3$0$0_header"
  store double %arg, double* @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$7"
  br label %"main$3$0$0$0_call_recursive_function"

"main$3$0$0$0_call_recursive_function":           ; preds = %"main$3$0$0$0_initialize_context"
  call void @"main$3$0$0$0"(i32 -1)
  br label %"main$3$0$0_latch$0"

"main$3$0$0_latch$0":                             ; preds = %"main$3$0$0$0_call_recursive_function"
  %add = fadd double %arg, 5.000000e-01
  %cmp47 = fcmp olt double %add, 1.500000e+01
  br i1 %cmp47, label %"main$3$0$0_increment_depth_counter", label %"main$3$0$0_return_from_recursive_function$0"

"main$3$0$0_increment_depth_counter":             ; preds = %"main$3$0$0_latch$0"
  br label %"main$3$0$0_recursively_call_function"

"main$3$0$0_recursively_call_function":           ; preds = %"main$3$0$0_increment_depth_counter"
  call void @"main$3$0$0"(double %add)
  ret void

"main$3$0$0_return_from_recursive_function$0":    ; preds = %"main$3$0$0_latch$0"
  ret void
}

define void @"main$3$0$0$0"(i32 %arg) {
"main$3$0$0$0_header":
  %indvar.conv201 = sitofp i32 %arg to double
  %tmp = load double*, double** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$2"
  %tmp1 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  %tmp2 = load double, double* @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$5"
  %tmp3 = load double, double* @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$6"
  %tmp4 = load double, double* @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$7"
  call void @SolveCubic(double %tmp2, double %tmp3, double %tmp4, double %indvar.conv201, i32* nonnull %tmp1, double* %tmp) #4
  %call53 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %tmp5 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  %tmp6 = load i32, i32* %tmp5, align 4, !tbaa !1
  %cmp55182 = icmp sgt i32 %tmp6, 0
  br i1 %cmp55182, label %for.body56.preheader, label %"main$3$0$0$0_latch$0"

for.body56.preheader:                             ; preds = %"main$3$0$0$0_header"
  br label %"main$3$0$0$0$0_call_recursive_function"

"main$3$0$0$0$0_call_recursive_function":         ; preds = %for.body56.preheader
  call void @"main$3$0$0$0$0"(i64 0)
  br label %for.end62.loopexit

for.end62.loopexit:                               ; preds = %"main$3$0$0$0$0_call_recursive_function"
  br label %"main$3$0$0$0_latch$0"

"main$3$0$0$0_latch$0":                           ; preds = %for.end62.loopexit, %"main$3$0$0$0_header"
  %putchar178 = call i32 @putchar(i32 10) #4
  %dec.int = add nsw i32 %arg, -1
  %cmp50 = icmp sgt i32 %dec.int, -11
  br i1 %cmp50, label %"main$3$0$0$0_increment_depth_counter", label %"main$3$0$0$0_return_from_recursive_function$0", !llvm.loop !9

"main$3$0$0$0_increment_depth_counter":           ; preds = %"main$3$0$0$0_latch$0"
  br label %"main$3$0$0$0_recursively_call_function"

"main$3$0$0$0_recursively_call_function":         ; preds = %"main$3$0$0$0_increment_depth_counter"
  call void @"main$3$0$0$0"(i32 %dec.int)
  ret void

"main$3$0$0$0_return_from_recursive_function$0":  ; preds = %"main$3$0$0$0_latch$0"
  ret void
}

define void @"main$3$0$0$0$0"(i64 %arg) {
"main$3$0$0$0$0_latch$0":
  %tmp = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1"
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %tmp, i64 0, i64 %arg
  %tmp1 = load double, double* %arrayidx58, align 8, !tbaa !7
  %call59 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %tmp1)
  %indvars.iv.next199 = add nuw nsw i64 %arg, 1
  %tmp2 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0"
  %tmp3 = load i32, i32* %tmp2, align 4, !tbaa !1
  %tmp4 = sext i32 %tmp3 to i64
  %cmp55 = icmp slt i64 %indvars.iv.next199, %tmp4
  br i1 %cmp55, label %"main$3$0$0$0$0_increment_depth_counter", label %"main$3$0$0$0$0_return_from_recursive_function$0"

"main$3$0$0$0$0_increment_depth_counter":         ; preds = %"main$3$0$0$0$0_latch$0"
  br label %"main$3$0$0$0$0_recursively_call_function"

"main$3$0$0$0$0_recursively_call_function":       ; preds = %"main$3$0$0$0$0_increment_depth_counter"
  call void @"main$3$0$0$0$0"(i64 %indvars.iv.next199)
  ret void

"main$3$0$0$0$0_return_from_recursive_function$0": ; preds = %"main$3$0$0$0$0_latch$0"
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"int_sqrt", !2, i64 0, !2, i64 4}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !3, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.loop2recursion.copy.enable"}
