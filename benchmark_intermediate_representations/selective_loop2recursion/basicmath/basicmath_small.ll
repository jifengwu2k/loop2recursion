; ModuleID = './benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll'
source_filename = "./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64, i1 }
%1 = type { i64, i1 }
%2 = type { i64, i1 }
%3 = type { i64, i1 }
%4 = type { i32, i1 }
%5 = type { i64, i1 }
%6 = type { i32, i1 }
%7 = type { double, i1 }
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
@"main$7_recursion_state_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1" = dso_local global [3 x double]* null
@"main$6_recursion_state_struct" = dso_local global %1 zeroinitializer
@"main$5_recursion_state_struct" = dso_local global %2 zeroinitializer
@"main$4_recursion_state_struct" = dso_local global %3 zeroinitializer
@"main$3_recursion_state_struct" = dso_local global %4 zeroinitializer
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$2" = dso_local global double* null
@"main$2_recursion_state_struct" = dso_local global %5 zeroinitializer
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$3" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$4" = dso_local global %struct.int_sqrt* null
@"main$1_recursion_state_struct" = dso_local global %6 zeroinitializer
@"main$0_recursion_state_struct" = dso_local global %7 zeroinitializer

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %x = alloca [3 x double], align 16
  %solutions = alloca i32, align 4
  %q = alloca %struct.int_sqrt, align 4
  %0 = bitcast [3 x double]* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %0) #4
  %1 = bitcast i32* %solutions to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4
  %2 = bitcast %struct.int_sqrt* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #4
  %puts = tail call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str, i64 0, i64 0)) #4
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %x, i64 0, i64 0
  call void @SolveCubic(double 1.000000e+00, double -1.050000e+01, double 3.200000e+01, double -3.000000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp194 = icmp sgt i32 %3, 0
  br i1 %cmp194, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  br label %"main$7_initialize_context"

"main$7_initialize_context":                      ; preds = %for.body.preheader
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  br label %"main$7_call_recursive_function"

"main$7_call_recursive_function":                 ; preds = %"main$7_extract_next_values", %"main$7_initialize_context"
  %4 = phi i64 [ 0, %"main$7_initialize_context" ], [ %8, %"main$7_extract_next_values" ]
  call void @"main$7"(i64 %4, i8 0)
  %5 = getelementptr %0, %0* @"main$7_recursion_state_struct", i32 0, i32 1
  %6 = load i1, i1* %5, align 1
  br i1 %6, label %for.end.loopexit, label %"main$7_extract_next_values"

"main$7_extract_next_values":                     ; preds = %"main$7_call_recursive_function"
  %7 = getelementptr %0, %0* @"main$7_recursion_state_struct", i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  br label %"main$7_call_recursive_function"

for.end.loopexit:                                 ; preds = %"main$7_call_recursive_function"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %putchar = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -4.500000e+00, double 1.700000e+01, double -3.000000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call5 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp7192 = icmp sgt i32 %9, 0
  br i1 %cmp7192, label %for.body8.preheader, label %for.end14

for.body8.preheader:                              ; preds = %for.end
  br label %"main$6_initialize_context"

"main$6_initialize_context":                      ; preds = %for.body8.preheader
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  br label %"main$6_call_recursive_function"

"main$6_call_recursive_function":                 ; preds = %"main$6_extract_next_values", %"main$6_initialize_context"
  %10 = phi i64 [ 0, %"main$6_initialize_context" ], [ %14, %"main$6_extract_next_values" ]
  call void @"main$6"(i64 %10, i8 0)
  %11 = getelementptr %1, %1* @"main$6_recursion_state_struct", i32 0, i32 1
  %12 = load i1, i1* %11, align 1
  br i1 %12, label %for.end14.loopexit, label %"main$6_extract_next_values"

"main$6_extract_next_values":                     ; preds = %"main$6_call_recursive_function"
  %13 = getelementptr %1, %1* @"main$6_recursion_state_struct", i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  br label %"main$6_call_recursive_function"

for.end14.loopexit:                               ; preds = %"main$6_call_recursive_function"
  br label %for.end14

for.end14:                                        ; preds = %for.end14.loopexit, %for.end
  %putchar173 = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -3.500000e+00, double 2.200000e+01, double -3.100000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call17 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp19190 = icmp sgt i32 %15, 0
  br i1 %cmp19190, label %for.body20.preheader, label %for.end26

for.body20.preheader:                             ; preds = %for.end14
  br label %"main$5_initialize_context"

"main$5_initialize_context":                      ; preds = %for.body20.preheader
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  br label %"main$5_call_recursive_function"

"main$5_call_recursive_function":                 ; preds = %"main$5_extract_next_values", %"main$5_initialize_context"
  %16 = phi i64 [ 0, %"main$5_initialize_context" ], [ %20, %"main$5_extract_next_values" ]
  call void @"main$5"(i64 %16, i8 0)
  %17 = getelementptr %2, %2* @"main$5_recursion_state_struct", i32 0, i32 1
  %18 = load i1, i1* %17, align 1
  br i1 %18, label %for.end26.loopexit, label %"main$5_extract_next_values"

"main$5_extract_next_values":                     ; preds = %"main$5_call_recursive_function"
  %19 = getelementptr %2, %2* @"main$5_recursion_state_struct", i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  br label %"main$5_call_recursive_function"

for.end26.loopexit:                               ; preds = %"main$5_call_recursive_function"
  br label %for.end26

for.end26:                                        ; preds = %for.end26.loopexit, %for.end14
  %putchar174 = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -1.370000e+01, double 1.000000e+00, double -3.500000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call29 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp31188 = icmp sgt i32 %21, 0
  br i1 %cmp31188, label %for.body32.preheader, label %for.end38

for.body32.preheader:                             ; preds = %for.end26
  br label %"main$4_initialize_context"

"main$4_initialize_context":                      ; preds = %for.body32.preheader
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  br label %"main$4_call_recursive_function"

"main$4_call_recursive_function":                 ; preds = %"main$4_extract_next_values", %"main$4_initialize_context"
  %22 = phi i64 [ 0, %"main$4_initialize_context" ], [ %26, %"main$4_extract_next_values" ]
  call void @"main$4"(i64 %22, i8 0)
  %23 = getelementptr %3, %3* @"main$4_recursion_state_struct", i32 0, i32 1
  %24 = load i1, i1* %23, align 1
  br i1 %24, label %for.end38.loopexit, label %"main$4_extract_next_values"

"main$4_extract_next_values":                     ; preds = %"main$4_call_recursive_function"
  %25 = getelementptr %3, %3* @"main$4_recursion_state_struct", i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %"main$4_call_recursive_function"

for.end38.loopexit:                               ; preds = %"main$4_call_recursive_function"
  br label %for.end38

for.end38:                                        ; preds = %for.end38.loopexit, %for.end26
  %putchar175 = call i32 @putchar(i32 10) #4
  br label %"main$3_initialize_context"

"main$3_initialize_context":                      ; preds = %for.end38
  store [3 x double]* %x, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  store i32* %solutions, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  store double* %arraydecay, double** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$2", align 8
  br label %"main$3_call_recursive_function"

"main$3_call_recursive_function":                 ; preds = %"main$3_extract_next_values", %"main$3_initialize_context"
  %27 = phi i32 [ 1, %"main$3_initialize_context" ], [ %31, %"main$3_extract_next_values" ]
  call void @"main$3"(i32 %27, i8 0)
  %28 = getelementptr %4, %4* @"main$3_recursion_state_struct", i32 0, i32 1
  %29 = load i1, i1* %28, align 1
  br i1 %29, label %for.end73, label %"main$3_extract_next_values"

"main$3_extract_next_values":                     ; preds = %"main$3_call_recursive_function"
  %30 = getelementptr %4, %4* @"main$3_recursion_state_struct", i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %"main$3_call_recursive_function"

for.end73:                                        ; preds = %"main$3_call_recursive_function"
  %puts176 = call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @str.11, i64 0, i64 0)) #4
  %sqrt = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %q, i64 0, i32 0
  br label %"main$2_initialize_context"

"main$2_initialize_context":                      ; preds = %for.end73
  store i32* %sqrt, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$3", align 8
  store %struct.int_sqrt* %q, %struct.int_sqrt** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$4", align 8
  br label %"main$2_call_recursive_function"

"main$2_call_recursive_function":                 ; preds = %"main$2_extract_next_values", %"main$2_initialize_context"
  %32 = phi i64 [ 0, %"main$2_initialize_context" ], [ %36, %"main$2_extract_next_values" ]
  call void @"main$2"(i64 %32, i8 0)
  %33 = getelementptr %5, %5* @"main$2_recursion_state_struct", i32 0, i32 1
  %34 = load i1, i1* %33, align 1
  br i1 %34, label %for.end81, label %"main$2_extract_next_values"

"main$2_extract_next_values":                     ; preds = %"main$2_call_recursive_function"
  %35 = getelementptr %5, %5* @"main$2_recursion_state_struct", i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %"main$2_call_recursive_function"

for.end81:                                        ; preds = %"main$2_call_recursive_function"
  call void @usqrt(i64 1072497001, %struct.int_sqrt* nonnull %q) #4
  %37 = load i32, i32* %sqrt, align 4, !tbaa !5
  %call83 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 1072497001, i32 %37)
  %puts177 = call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @str.12, i64 0, i64 0)) #4
  br label %"main$1_initialize_context"

"main$1_initialize_context":                      ; preds = %for.end81
  br label %"main$1_call_recursive_function"

"main$1_call_recursive_function":                 ; preds = %"main$1_extract_next_values", %"main$1_initialize_context"
  %38 = phi i32 [ 0, %"main$1_initialize_context" ], [ %42, %"main$1_extract_next_values" ]
  call void @"main$1"(i32 %38, i8 0)
  %39 = getelementptr %6, %6* @"main$1_recursion_state_struct", i32 0, i32 1
  %40 = load i1, i1* %39, align 1
  br i1 %40, label %for.end94, label %"main$1_extract_next_values"

"main$1_extract_next_values":                     ; preds = %"main$1_call_recursive_function"
  %41 = getelementptr %6, %6* @"main$1_recursion_state_struct", i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  br label %"main$1_call_recursive_function"

for.end94:                                        ; preds = %"main$1_call_recursive_function"
  %call95 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %for.end94
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_extract_next_values", %"main$0_initialize_context"
  %43 = phi double [ 0.000000e+00, %"main$0_initialize_context" ], [ %47, %"main$0_extract_next_values" ]
  call void @"main$0"(double %43, i8 0)
  %44 = getelementptr %7, %7* @"main$0_recursion_state_struct", i32 0, i32 1
  %45 = load i1, i1* %44, align 1
  br i1 %45, label %for.end114, label %"main$0_extract_next_values"

"main$0_extract_next_values":                     ; preds = %"main$0_call_recursive_function"
  %46 = getelementptr %7, %7* @"main$0_recursion_state_struct", i32 0, i32 0
  %47 = load double, double* %46, align 8
  br label %"main$0_call_recursive_function"

for.end114:                                       ; preds = %"main$0_call_recursive_function"
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %0) #4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

declare void @SolveCubic(double, double, double, double, i32*, double*) #2

declare void @usqrt(i64, %struct.int_sqrt*) #2

declare i32 @puts(...) #2

declare i32 @putchar(i32)

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

define void @"main$7"(i64 %0, i8 %1) {
"main$7_latch$0":
  %2 = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0, i64 %0
  %3 = load double, double* %arrayidx, align 8, !tbaa !7
  %call2 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %3)
  %indvars.iv.next214 = add nuw nsw i64 %0, 1
  %4 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  %5 = load i32, i32* %4, align 4, !tbaa !1
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next214, %6
  br i1 %cmp, label %"main$7_increment_depth_counter", label %"main$7_return_from_recursive_function$0"

"main$7_increment_depth_counter":                 ; preds = %"main$7_latch$0"
  %7 = add i8 %1, 1
  %8 = icmp ult i8 %7, 64
  br i1 %8, label %"main$7_recursively_call_function", label %"main$7_save_recursive_state_and_return"

"main$7_recursively_call_function":               ; preds = %"main$7_increment_depth_counter"
  call void @"main$7"(i64 %indvars.iv.next214, i8 %7)
  ret void

"main$7_save_recursive_state_and_return":         ; preds = %"main$7_increment_depth_counter"
  %9 = getelementptr %0, %0* @"main$7_recursion_state_struct", i32 0, i32 0
  store i64 %indvars.iv.next214, i64* %9, align 8
  %10 = getelementptr %0, %0* @"main$7_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %10, align 1
  ret void

"main$7_return_from_recursive_function$0":        ; preds = %"main$7_latch$0"
  %11 = getelementptr %0, %0* @"main$7_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %11, align 1
  ret void
}

define void @"main$6"(i64 %0, i8 %1) {
"main$6_latch$0":
  %2 = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0, i64 %0
  %3 = load double, double* %arrayidx10, align 8, !tbaa !7
  %call11 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %3)
  %indvars.iv.next212 = add nuw nsw i64 %0, 1
  %4 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  %5 = load i32, i32* %4, align 4, !tbaa !1
  %6 = sext i32 %5 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next212, %6
  br i1 %cmp7, label %"main$6_increment_depth_counter", label %"main$6_return_from_recursive_function$0"

"main$6_increment_depth_counter":                 ; preds = %"main$6_latch$0"
  %7 = add i8 %1, 1
  %8 = icmp ult i8 %7, 64
  br i1 %8, label %"main$6_recursively_call_function", label %"main$6_save_recursive_state_and_return"

"main$6_recursively_call_function":               ; preds = %"main$6_increment_depth_counter"
  call void @"main$6"(i64 %indvars.iv.next212, i8 %7)
  ret void

"main$6_save_recursive_state_and_return":         ; preds = %"main$6_increment_depth_counter"
  %9 = getelementptr %1, %1* @"main$6_recursion_state_struct", i32 0, i32 0
  store i64 %indvars.iv.next212, i64* %9, align 8
  %10 = getelementptr %1, %1* @"main$6_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %10, align 1
  ret void

"main$6_return_from_recursive_function$0":        ; preds = %"main$6_latch$0"
  %11 = getelementptr %1, %1* @"main$6_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %11, align 1
  ret void
}

define void @"main$5"(i64 %0, i8 %1) {
"main$5_latch$0":
  %2 = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0, i64 %0
  %3 = load double, double* %arrayidx22, align 8, !tbaa !7
  %call23 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %3)
  %indvars.iv.next210 = add nuw nsw i64 %0, 1
  %4 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  %5 = load i32, i32* %4, align 4, !tbaa !1
  %6 = sext i32 %5 to i64
  %cmp19 = icmp slt i64 %indvars.iv.next210, %6
  br i1 %cmp19, label %"main$5_increment_depth_counter", label %"main$5_return_from_recursive_function$0"

"main$5_increment_depth_counter":                 ; preds = %"main$5_latch$0"
  %7 = add i8 %1, 1
  %8 = icmp ult i8 %7, 64
  br i1 %8, label %"main$5_recursively_call_function", label %"main$5_save_recursive_state_and_return"

"main$5_recursively_call_function":               ; preds = %"main$5_increment_depth_counter"
  call void @"main$5"(i64 %indvars.iv.next210, i8 %7)
  ret void

"main$5_save_recursive_state_and_return":         ; preds = %"main$5_increment_depth_counter"
  %9 = getelementptr %2, %2* @"main$5_recursion_state_struct", i32 0, i32 0
  store i64 %indvars.iv.next210, i64* %9, align 8
  %10 = getelementptr %2, %2* @"main$5_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %10, align 1
  ret void

"main$5_return_from_recursive_function$0":        ; preds = %"main$5_latch$0"
  %11 = getelementptr %2, %2* @"main$5_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %11, align 1
  ret void
}

define void @"main$4"(i64 %0, i8 %1) {
"main$4_latch$0":
  %2 = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0, i64 %0
  %3 = load double, double* %arrayidx34, align 8, !tbaa !7
  %call35 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %3)
  %indvars.iv.next208 = add nuw nsw i64 %0, 1
  %4 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  %5 = load i32, i32* %4, align 4, !tbaa !1
  %6 = sext i32 %5 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next208, %6
  br i1 %cmp31, label %"main$4_increment_depth_counter", label %"main$4_return_from_recursive_function$0"

"main$4_increment_depth_counter":                 ; preds = %"main$4_latch$0"
  %7 = add i8 %1, 1
  %8 = icmp ult i8 %7, 64
  br i1 %8, label %"main$4_recursively_call_function", label %"main$4_save_recursive_state_and_return"

"main$4_recursively_call_function":               ; preds = %"main$4_increment_depth_counter"
  call void @"main$4"(i64 %indvars.iv.next208, i8 %7)
  ret void

"main$4_save_recursive_state_and_return":         ; preds = %"main$4_increment_depth_counter"
  %9 = getelementptr %3, %3* @"main$4_recursion_state_struct", i32 0, i32 0
  store i64 %indvars.iv.next208, i64* %9, align 8
  %10 = getelementptr %3, %3* @"main$4_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %10, align 1
  ret void

"main$4_return_from_recursive_function$0":        ; preds = %"main$4_latch$0"
  %11 = getelementptr %3, %3* @"main$4_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %11, align 1
  ret void
}

define void @"main$3"(i32 %0, i8 %1) {
"main$3_header":
  %indvar.conv205 = sitofp i32 %0 to double
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %for.inc68, %"main$3_header"
  %b1.0186.int = phi i32 [ 10, %"main$3_header" ], [ %dec69.int, %for.inc68 ]
  %indvar.conv203 = sitofp i32 %b1.0186.int to double
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.inc66, %for.cond46.preheader
  %c1.0185 = phi double [ 5.000000e+00, %for.cond46.preheader ], [ %add, %for.inc66 ]
  br label %for.body51

for.body51:                                       ; preds = %for.end62, %for.cond49.preheader
  %d1.0184.int = phi i32 [ -1, %for.cond49.preheader ], [ %dec.int, %for.end62 ]
  %indvar.conv201 = sitofp i32 %d1.0184.int to double
  %2 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  %3 = load double*, double** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$2", align 8
  call void @SolveCubic(double %indvar.conv205, double %indvar.conv203, double %c1.0185, double %indvar.conv201, i32* nonnull %2, double* %3) #4
  %call53 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  %5 = load i32, i32* %4, align 4, !tbaa !1
  %cmp55182 = icmp sgt i32 %5, 0
  br i1 %cmp55182, label %for.body56.preheader, label %for.end62

for.body56.preheader:                             ; preds = %for.body51
  br label %for.body56

for.body56:                                       ; preds = %for.body56, %for.body56.preheader
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %for.body56 ], [ 0, %for.body56.preheader ]
  %6 = load [3 x double]*, [3 x double]** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$1", align 8
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %indvars.iv198
  %7 = load double, double* %arrayidx58, align 8, !tbaa !7
  %call59 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %7)
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1
  %8 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$0", align 8
  %9 = load i32, i32* %8, align 4, !tbaa !1
  %10 = sext i32 %9 to i64
  %cmp55 = icmp slt i64 %indvars.iv.next199, %10
  br i1 %cmp55, label %for.body56, label %for.end62.loopexit

for.end62.loopexit:                               ; preds = %for.body56
  br label %for.end62

for.end62:                                        ; preds = %for.end62.loopexit, %for.body51
  %putchar178 = call i32 @putchar(i32 10) #4
  %dec.int = add nsw i32 %d1.0184.int, -1
  %cmp50 = icmp sgt i32 %dec.int, -11
  br i1 %cmp50, label %for.body51, label %for.inc66, !llvm.loop !9

for.inc66:                                        ; preds = %for.end62
  %add = fadd double %c1.0185, 5.000000e-01
  %cmp47 = fcmp olt double %add, 1.500000e+01
  br i1 %cmp47, label %for.cond49.preheader, label %for.inc68

for.inc68:                                        ; preds = %for.inc66
  %dec69.int = add nsw i32 %b1.0186.int, -1
  %cmp44 = icmp sgt i32 %b1.0186.int, 1
  br i1 %cmp44, label %for.cond46.preheader, label %"main$3_latch$0", !llvm.loop !9

"main$3_latch$0":                                 ; preds = %for.inc68
  %inc72.int = add nuw nsw i32 %0, 1
  %exitcond206 = icmp eq i32 %inc72.int, 10
  br i1 %exitcond206, label %"main$3_return_from_recursive_function$0", label %"main$3_increment_depth_counter", !llvm.loop !9

"main$3_increment_depth_counter":                 ; preds = %"main$3_latch$0"
  %11 = add i8 %1, 1
  %12 = icmp ult i8 %11, 64
  br i1 %12, label %"main$3_recursively_call_function", label %"main$3_save_recursive_state_and_return"

"main$3_recursively_call_function":               ; preds = %"main$3_increment_depth_counter"
  call void @"main$3"(i32 %inc72.int, i8 %11)
  ret void

"main$3_save_recursive_state_and_return":         ; preds = %"main$3_increment_depth_counter"
  %13 = getelementptr %4, %4* @"main$3_recursion_state_struct", i32 0, i32 0
  store i32 %inc72.int, i32* %13, align 4
  %14 = getelementptr %4, %4* @"main$3_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %14, align 1
  ret void

"main$3_return_from_recursive_function$0":        ; preds = %"main$3_latch$0"
  %15 = getelementptr %4, %4* @"main$3_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %15, align 1
  ret void
}

define void @"main$2"(i64 %0, i8 %1) {
"main$2_latch$0":
  %2 = load %struct.int_sqrt*, %struct.int_sqrt** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$4", align 8
  call void @usqrt(i64 %0, %struct.int_sqrt* nonnull %2) #4
  %3 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/basicmath/basicmath_small.ll_invariant_variable$3", align 8
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %5 = trunc i64 %0 to i32
  %call78 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %5, i32 %4)
  %indvars.iv.next = add nuw nsw i64 %0, 1
  %exitcond197 = icmp eq i64 %indvars.iv.next, 1001
  br i1 %exitcond197, label %"main$2_return_from_recursive_function$0", label %"main$2_increment_depth_counter", !llvm.loop !9

"main$2_increment_depth_counter":                 ; preds = %"main$2_latch$0"
  %6 = add i8 %1, 1
  %7 = icmp ult i8 %6, 64
  br i1 %7, label %"main$2_recursively_call_function", label %"main$2_save_recursive_state_and_return"

"main$2_recursively_call_function":               ; preds = %"main$2_increment_depth_counter"
  call void @"main$2"(i64 %indvars.iv.next, i8 %6)
  ret void

"main$2_save_recursive_state_and_return":         ; preds = %"main$2_increment_depth_counter"
  %8 = getelementptr %5, %5* @"main$2_recursion_state_struct", i32 0, i32 0
  store i64 %indvars.iv.next, i64* %8, align 8
  %9 = getelementptr %5, %5* @"main$2_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %9, align 1
  ret void

"main$2_return_from_recursive_function$0":        ; preds = %"main$2_latch$0"
  %10 = getelementptr %5, %5* @"main$2_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %10, align 1
  ret void
}

define void @"main$1"(i32 %0, i8 %1) {
"main$1_latch$0":
  %indvar.conv = sitofp i32 %0 to double
  %mul90 = fmul double %indvar.conv, 0x400921FB54442D18
  %div = fdiv double %mul90, 1.800000e+02
  %call91 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), double %indvar.conv, double %div)
  %add93.int = add nuw nsw i32 %0, 1
  %exitcond = icmp eq i32 %add93.int, 361
  br i1 %exitcond, label %"main$1_return_from_recursive_function$0", label %"main$1_increment_depth_counter"

"main$1_increment_depth_counter":                 ; preds = %"main$1_latch$0"
  %2 = add i8 %1, 1
  %3 = icmp ult i8 %2, 64
  br i1 %3, label %"main$1_recursively_call_function", label %"main$1_save_recursive_state_and_return"

"main$1_recursively_call_function":               ; preds = %"main$1_increment_depth_counter"
  call void @"main$1"(i32 %add93.int, i8 %2)
  ret void

"main$1_save_recursive_state_and_return":         ; preds = %"main$1_increment_depth_counter"
  %4 = getelementptr %6, %6* @"main$1_recursion_state_struct", i32 0, i32 0
  store i32 %add93.int, i32* %4, align 4
  %5 = getelementptr %6, %6* @"main$1_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %5, align 1
  ret void

"main$1_return_from_recursive_function$0":        ; preds = %"main$1_latch$0"
  %6 = getelementptr %6, %6* @"main$1_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %6, align 1
  ret void
}

define void @"main$0"(double %0, i8 %1) {
"main$0_latch$0":
  %mul104 = fmul double %0, 1.800000e+02
  %div107 = fdiv double %mul104, 0x400921FB54442D18
  %call108 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double %0, double %div107)
  %add113 = fadd double %0, 0x3F91DF46A2529D39
  %cmp101 = fcmp ugt double %add113, 0x401921FB97600B9B
  br i1 %cmp101, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  %2 = add i8 %1, 1
  %3 = icmp ult i8 %2, 64
  br i1 %3, label %"main$0_recursively_call_function", label %"main$0_save_recursive_state_and_return"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(double %add113, i8 %2)
  ret void

"main$0_save_recursive_state_and_return":         ; preds = %"main$0_increment_depth_counter"
  %4 = getelementptr %7, %7* @"main$0_recursion_state_struct", i32 0, i32 0
  store double %add113, double* %4, align 8
  %5 = getelementptr %7, %7* @"main$0_recursion_state_struct", i32 0, i32 1
  store i1 false, i1* %5, align 1
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  %6 = getelementptr %7, %7* @"main$0_recursion_state_struct", i32 0, i32 1
  store i1 true, i1* %6, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
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
