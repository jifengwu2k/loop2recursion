; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-16/basicmath/basicmath_small.ll.temp'
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
%8 = type { i32, i1 }
%9 = type { double, i1 }
%10 = type { i32, i1 }
%11 = type { i64, i1 }
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

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %x = alloca [3 x double], align 16
  %solutions = alloca i32, align 4
  %q = alloca %struct.int_sqrt, align 4
  %i = bitcast [3 x double]* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %i) #4
  %i1 = bitcast i32* %solutions to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %i1) #4
  %i2 = bitcast %struct.int_sqrt* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %i2) #4
  %puts = tail call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str, i64 0, i64 0)) #4
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %x, i64 0, i64 0
  call void @SolveCubic(double 1.000000e+00, double -1.050000e+01, double 3.200000e+01, double -3.000000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %i3 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp194 = icmp sgt i32 %i3, 0
  br i1 %cmp194, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  br label %"main$7_initialize_context"

"main$7_initialize_context":                      ; preds = %for.body.preheader
  %i4 = alloca %0, align 8
  br label %"main$7_call_recursive_function"

"main$7_call_recursive_function":                 ; preds = %"main$7_extract_next_values", %"main$7_initialize_context"
  %i5 = phi i64 [ 0, %"main$7_initialize_context" ], [ %i9, %"main$7_extract_next_values" ]
  call void @"main$7"(i64 %i5, i32* %solutions, [3 x double]* %x, %0* %i4, i8 0)
  %i6 = getelementptr %0, %0* %i4, i32 0, i32 1
  %i7 = load i1, i1* %i6, align 1
  br i1 %i7, label %for.end.loopexit, label %"main$7_extract_next_values"

"main$7_extract_next_values":                     ; preds = %"main$7_call_recursive_function"
  %i8 = getelementptr %0, %0* %i4, i32 0, i32 0
  %i9 = load i64, i64* %i8, align 8
  br label %"main$7_call_recursive_function"

for.end.loopexit:                                 ; preds = %"main$7_call_recursive_function"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %putchar = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -4.500000e+00, double 1.700000e+01, double -3.000000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call5 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %i10 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp7192 = icmp sgt i32 %i10, 0
  br i1 %cmp7192, label %for.body8.preheader, label %for.end14

for.body8.preheader:                              ; preds = %for.end
  br label %"main$6_initialize_context"

"main$6_initialize_context":                      ; preds = %for.body8.preheader
  %i11 = alloca %1, align 8
  br label %"main$6_call_recursive_function"

"main$6_call_recursive_function":                 ; preds = %"main$6_extract_next_values", %"main$6_initialize_context"
  %i12 = phi i64 [ 0, %"main$6_initialize_context" ], [ %i16, %"main$6_extract_next_values" ]
  call void @"main$6"(i64 %i12, i32* %solutions, [3 x double]* %x, %1* %i11, i8 0)
  %i13 = getelementptr %1, %1* %i11, i32 0, i32 1
  %i14 = load i1, i1* %i13, align 1
  br i1 %i14, label %for.end14.loopexit, label %"main$6_extract_next_values"

"main$6_extract_next_values":                     ; preds = %"main$6_call_recursive_function"
  %i15 = getelementptr %1, %1* %i11, i32 0, i32 0
  %i16 = load i64, i64* %i15, align 8
  br label %"main$6_call_recursive_function"

for.end14.loopexit:                               ; preds = %"main$6_call_recursive_function"
  br label %for.end14

for.end14:                                        ; preds = %for.end14.loopexit, %for.end
  %putchar173 = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -3.500000e+00, double 2.200000e+01, double -3.100000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call17 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %i17 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp19190 = icmp sgt i32 %i17, 0
  br i1 %cmp19190, label %for.body20.preheader, label %for.end26

for.body20.preheader:                             ; preds = %for.end14
  br label %"main$5_initialize_context"

"main$5_initialize_context":                      ; preds = %for.body20.preheader
  %i18 = alloca %2, align 8
  br label %"main$5_call_recursive_function"

"main$5_call_recursive_function":                 ; preds = %"main$5_extract_next_values", %"main$5_initialize_context"
  %i19 = phi i64 [ 0, %"main$5_initialize_context" ], [ %i23, %"main$5_extract_next_values" ]
  call void @"main$5"(i64 %i19, i32* %solutions, [3 x double]* %x, %2* %i18, i8 0)
  %i20 = getelementptr %2, %2* %i18, i32 0, i32 1
  %i21 = load i1, i1* %i20, align 1
  br i1 %i21, label %for.end26.loopexit, label %"main$5_extract_next_values"

"main$5_extract_next_values":                     ; preds = %"main$5_call_recursive_function"
  %i22 = getelementptr %2, %2* %i18, i32 0, i32 0
  %i23 = load i64, i64* %i22, align 8
  br label %"main$5_call_recursive_function"

for.end26.loopexit:                               ; preds = %"main$5_call_recursive_function"
  br label %for.end26

for.end26:                                        ; preds = %for.end26.loopexit, %for.end14
  %putchar174 = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -1.370000e+01, double 1.000000e+00, double -3.500000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call29 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %i24 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp31188 = icmp sgt i32 %i24, 0
  br i1 %cmp31188, label %for.body32.preheader, label %for.end38

for.body32.preheader:                             ; preds = %for.end26
  br label %"main$4_initialize_context"

"main$4_initialize_context":                      ; preds = %for.body32.preheader
  %i25 = alloca %3, align 8
  br label %"main$4_call_recursive_function"

"main$4_call_recursive_function":                 ; preds = %"main$4_extract_next_values", %"main$4_initialize_context"
  %i26 = phi i64 [ 0, %"main$4_initialize_context" ], [ %i30, %"main$4_extract_next_values" ]
  call void @"main$4"(i64 %i26, i32* %solutions, [3 x double]* %x, %3* %i25, i8 0)
  %i27 = getelementptr %3, %3* %i25, i32 0, i32 1
  %i28 = load i1, i1* %i27, align 1
  br i1 %i28, label %for.end38.loopexit, label %"main$4_extract_next_values"

"main$4_extract_next_values":                     ; preds = %"main$4_call_recursive_function"
  %i29 = getelementptr %3, %3* %i25, i32 0, i32 0
  %i30 = load i64, i64* %i29, align 8
  br label %"main$4_call_recursive_function"

for.end38.loopexit:                               ; preds = %"main$4_call_recursive_function"
  br label %for.end38

for.end38:                                        ; preds = %for.end38.loopexit, %for.end26
  %putchar175 = call i32 @putchar(i32 10) #4
  br label %"main$3_initialize_context"

"main$3_initialize_context":                      ; preds = %for.end38
  %i31 = alloca %4, align 8
  br label %"main$3_call_recursive_function"

"main$3_call_recursive_function":                 ; preds = %"main$3_extract_next_values", %"main$3_initialize_context"
  %i32 = phi i32 [ 1, %"main$3_initialize_context" ], [ %i36, %"main$3_extract_next_values" ]
  call void @"main$3"(i32 %i32, [3 x double]* %x, i32* %solutions, double* %arraydecay, %4* %i31, i8 0)
  %i33 = getelementptr %4, %4* %i31, i32 0, i32 1
  %i34 = load i1, i1* %i33, align 1
  br i1 %i34, label %for.end73, label %"main$3_extract_next_values"

"main$3_extract_next_values":                     ; preds = %"main$3_call_recursive_function"
  %i35 = getelementptr %4, %4* %i31, i32 0, i32 0
  %i36 = load i32, i32* %i35, align 4
  br label %"main$3_call_recursive_function"

for.end73:                                        ; preds = %"main$3_call_recursive_function"
  %puts176 = call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @str.11, i64 0, i64 0)) #4
  %sqrt = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %q, i64 0, i32 0
  br label %"main$2_initialize_context"

"main$2_initialize_context":                      ; preds = %for.end73
  %i37 = alloca %5, align 8
  br label %"main$2_call_recursive_function"

"main$2_call_recursive_function":                 ; preds = %"main$2_extract_next_values", %"main$2_initialize_context"
  %i38 = phi i64 [ 0, %"main$2_initialize_context" ], [ %i42, %"main$2_extract_next_values" ]
  call void @"main$2"(i64 %i38, i32* %sqrt, %struct.int_sqrt* %q, %5* %i37, i8 0)
  %i39 = getelementptr %5, %5* %i37, i32 0, i32 1
  %i40 = load i1, i1* %i39, align 1
  br i1 %i40, label %for.end81, label %"main$2_extract_next_values"

"main$2_extract_next_values":                     ; preds = %"main$2_call_recursive_function"
  %i41 = getelementptr %5, %5* %i37, i32 0, i32 0
  %i42 = load i64, i64* %i41, align 8
  br label %"main$2_call_recursive_function"

for.end81:                                        ; preds = %"main$2_call_recursive_function"
  call void @usqrt(i64 1072497001, %struct.int_sqrt* nonnull %q) #4
  %i43 = load i32, i32* %sqrt, align 4, !tbaa !5
  %call83 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 1072497001, i32 %i43)
  %puts177 = call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @str.12, i64 0, i64 0)) #4
  br label %"main$1_initialize_context"

"main$1_initialize_context":                      ; preds = %for.end81
  %i44 = alloca %6, align 8
  br label %"main$1_call_recursive_function"

"main$1_call_recursive_function":                 ; preds = %"main$1_extract_next_values", %"main$1_initialize_context"
  %i45 = phi i32 [ 0, %"main$1_initialize_context" ], [ %i49, %"main$1_extract_next_values" ]
  call void @"main$1"(i32 %i45, %6* %i44, i8 0)
  %i46 = getelementptr %6, %6* %i44, i32 0, i32 1
  %i47 = load i1, i1* %i46, align 1
  br i1 %i47, label %for.end94, label %"main$1_extract_next_values"

"main$1_extract_next_values":                     ; preds = %"main$1_call_recursive_function"
  %i48 = getelementptr %6, %6* %i44, i32 0, i32 0
  %i49 = load i32, i32* %i48, align 4
  br label %"main$1_call_recursive_function"

for.end94:                                        ; preds = %"main$1_call_recursive_function"
  %call95 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %for.end94
  %i50 = alloca %7, align 8
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_extract_next_values", %"main$0_initialize_context"
  %i51 = phi double [ 0.000000e+00, %"main$0_initialize_context" ], [ %i55, %"main$0_extract_next_values" ]
  call void @"main$0"(double %i51, %7* %i50, i8 0)
  %i52 = getelementptr %7, %7* %i50, i32 0, i32 1
  %i53 = load i1, i1* %i52, align 1
  br i1 %i53, label %for.end114, label %"main$0_extract_next_values"

"main$0_extract_next_values":                     ; preds = %"main$0_call_recursive_function"
  %i54 = getelementptr %7, %7* %i50, i32 0, i32 0
  %i55 = load double, double* %i54, align 8
  br label %"main$0_call_recursive_function"

for.end114:                                       ; preds = %"main$0_call_recursive_function"
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %i2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %i1) #4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %i) #4
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

define void @"main$0"(double %arg, %7* %arg1, i8 %arg2) {
"main$0_latch$0":
  %mul104 = fmul double %arg, 1.800000e+02
  %div107 = fdiv double %mul104, 0x400921FB54442D18
  %call108 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double %arg, double %div107)
  %add113 = fadd double %arg, 0x3F91DF46A2529D39
  %cmp101 = fcmp ugt double %add113, 0x401921FB97600B9B
  br i1 %cmp101, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  %i = add i8 %arg2, 1
  %i3 = icmp ult i8 %i, 16
  br i1 %i3, label %"main$0_recursively_call_function", label %"main$0_save_recursive_state_and_return"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(double %add113, %7* %arg1, i8 %i)
  ret void

"main$0_save_recursive_state_and_return":         ; preds = %"main$0_increment_depth_counter"
  %i4 = getelementptr %7, %7* %arg1, i32 0, i32 0
  store double %add113, double* %i4, align 8
  %i5 = getelementptr %7, %7* %arg1, i32 0, i32 1
  store i1 false, i1* %i5, align 1
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  %i6 = getelementptr %7, %7* %arg1, i32 0, i32 1
  store i1 true, i1* %i6, align 1
  ret void
}

define void @"main$1"(i32 %arg, %6* %arg1, i8 %arg2) {
"main$1_latch$0":
  %indvar.conv = sitofp i32 %arg to double
  %mul90 = fmul double %indvar.conv, 0x400921FB54442D18
  %div = fdiv double %mul90, 1.800000e+02
  %call91 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), double %indvar.conv, double %div)
  %add93.int = add nuw nsw i32 %arg, 1
  %exitcond = icmp eq i32 %add93.int, 361
  br i1 %exitcond, label %"main$1_return_from_recursive_function$0", label %"main$1_increment_depth_counter"

"main$1_increment_depth_counter":                 ; preds = %"main$1_latch$0"
  %i = add i8 %arg2, 1
  %i3 = icmp ult i8 %i, 16
  br i1 %i3, label %"main$1_recursively_call_function", label %"main$1_save_recursive_state_and_return"

"main$1_recursively_call_function":               ; preds = %"main$1_increment_depth_counter"
  call void @"main$1"(i32 %add93.int, %6* %arg1, i8 %i)
  ret void

"main$1_save_recursive_state_and_return":         ; preds = %"main$1_increment_depth_counter"
  %i4 = getelementptr %6, %6* %arg1, i32 0, i32 0
  store i32 %add93.int, i32* %i4, align 4
  %i5 = getelementptr %6, %6* %arg1, i32 0, i32 1
  store i1 false, i1* %i5, align 1
  ret void

"main$1_return_from_recursive_function$0":        ; preds = %"main$1_latch$0"
  %i6 = getelementptr %6, %6* %arg1, i32 0, i32 1
  store i1 true, i1* %i6, align 1
  ret void
}

define void @"main$2"(i64 %arg, i32* %arg1, %struct.int_sqrt* %arg2, %5* %arg3, i8 %arg4) {
"main$2_latch$0":
  call void @usqrt(i64 %arg, %struct.int_sqrt* nonnull %arg2) #4
  %i = load i32, i32* %arg1, align 4, !tbaa !5
  %i5 = trunc i64 %arg to i32
  %call78 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %i5, i32 %i)
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %exitcond197 = icmp eq i64 %indvars.iv.next, 1001
  br i1 %exitcond197, label %"main$2_return_from_recursive_function$0", label %"main$2_increment_depth_counter", !llvm.loop !7

"main$2_increment_depth_counter":                 ; preds = %"main$2_latch$0"
  %i6 = add i8 %arg4, 1
  %i7 = icmp ult i8 %i6, 16
  br i1 %i7, label %"main$2_recursively_call_function", label %"main$2_save_recursive_state_and_return"

"main$2_recursively_call_function":               ; preds = %"main$2_increment_depth_counter"
  call void @"main$2"(i64 %indvars.iv.next, i32* %arg1, %struct.int_sqrt* %arg2, %5* %arg3, i8 %i6)
  ret void

"main$2_save_recursive_state_and_return":         ; preds = %"main$2_increment_depth_counter"
  %i8 = getelementptr %5, %5* %arg3, i32 0, i32 0
  store i64 %indvars.iv.next, i64* %i8, align 8
  %i9 = getelementptr %5, %5* %arg3, i32 0, i32 1
  store i1 false, i1* %i9, align 1
  ret void

"main$2_return_from_recursive_function$0":        ; preds = %"main$2_latch$0"
  %i10 = getelementptr %5, %5* %arg3, i32 0, i32 1
  store i1 true, i1* %i10, align 1
  ret void
}

define void @"main$3"(i32 %arg, [3 x double]* %arg1, i32* %arg2, double* %arg3, %4* %arg4, i8 %arg5) {
"main$3_header":
  %indvar.conv205 = sitofp i32 %arg to double
  br label %"main$3$0_initialize_context"

"main$3$0_initialize_context":                    ; preds = %"main$3_header"
  %i = alloca %8, align 8
  br label %"main$3$0_call_recursive_function"

"main$3$0_call_recursive_function":               ; preds = %"main$3$0_extract_next_values", %"main$3$0_initialize_context"
  %i6 = phi i32 [ 10, %"main$3$0_initialize_context" ], [ %i10, %"main$3$0_extract_next_values" ]
  call void @"main$3$0"(i32 %i6, [3 x double]* %arg1, double* %arg3, double %indvar.conv205, i32* %arg2, %8* %i, i8 0)
  %i7 = getelementptr %8, %8* %i, i32 0, i32 1
  %i8 = load i1, i1* %i7, align 1
  br i1 %i8, label %"main$3_latch$0", label %"main$3$0_extract_next_values"

"main$3$0_extract_next_values":                   ; preds = %"main$3$0_call_recursive_function"
  %i9 = getelementptr %8, %8* %i, i32 0, i32 0
  %i10 = load i32, i32* %i9, align 4
  br label %"main$3$0_call_recursive_function"

"main$3_latch$0":                                 ; preds = %"main$3$0_call_recursive_function"
  %inc72.int = add nuw nsw i32 %arg, 1
  %exitcond206 = icmp eq i32 %inc72.int, 10
  br i1 %exitcond206, label %"main$3_return_from_recursive_function$0", label %"main$3_increment_depth_counter", !llvm.loop !7

"main$3_increment_depth_counter":                 ; preds = %"main$3_latch$0"
  %i11 = add i8 %arg5, 1
  %i12 = icmp ult i8 %i11, 16
  br i1 %i12, label %"main$3_recursively_call_function", label %"main$3_save_recursive_state_and_return"

"main$3_recursively_call_function":               ; preds = %"main$3_increment_depth_counter"
  call void @"main$3"(i32 %inc72.int, [3 x double]* %arg1, i32* %arg2, double* %arg3, %4* %arg4, i8 %i11)
  ret void

"main$3_save_recursive_state_and_return":         ; preds = %"main$3_increment_depth_counter"
  %i13 = getelementptr %4, %4* %arg4, i32 0, i32 0
  store i32 %inc72.int, i32* %i13, align 4
  %i14 = getelementptr %4, %4* %arg4, i32 0, i32 1
  store i1 false, i1* %i14, align 1
  ret void

"main$3_return_from_recursive_function$0":        ; preds = %"main$3_latch$0"
  %i15 = getelementptr %4, %4* %arg4, i32 0, i32 1
  store i1 true, i1* %i15, align 1
  ret void
}

define void @"main$4"(i64 %arg, i32* %arg1, [3 x double]* %arg2, %3* %arg3, i8 %arg4) {
"main$4_latch$0":
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %arg2, i64 0, i64 %arg
  %i = load double, double* %arrayidx34, align 8, !tbaa !9
  %call35 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %i)
  %indvars.iv.next208 = add nuw nsw i64 %arg, 1
  %i5 = load i32, i32* %arg1, align 4, !tbaa !1
  %i6 = sext i32 %i5 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next208, %i6
  br i1 %cmp31, label %"main$4_increment_depth_counter", label %"main$4_return_from_recursive_function$0"

"main$4_increment_depth_counter":                 ; preds = %"main$4_latch$0"
  %i7 = add i8 %arg4, 1
  %i8 = icmp ult i8 %i7, 16
  br i1 %i8, label %"main$4_recursively_call_function", label %"main$4_save_recursive_state_and_return"

"main$4_recursively_call_function":               ; preds = %"main$4_increment_depth_counter"
  call void @"main$4"(i64 %indvars.iv.next208, i32* %arg1, [3 x double]* %arg2, %3* %arg3, i8 %i7)
  ret void

"main$4_save_recursive_state_and_return":         ; preds = %"main$4_increment_depth_counter"
  %i9 = getelementptr %3, %3* %arg3, i32 0, i32 0
  store i64 %indvars.iv.next208, i64* %i9, align 8
  %i10 = getelementptr %3, %3* %arg3, i32 0, i32 1
  store i1 false, i1* %i10, align 1
  ret void

"main$4_return_from_recursive_function$0":        ; preds = %"main$4_latch$0"
  %i11 = getelementptr %3, %3* %arg3, i32 0, i32 1
  store i1 true, i1* %i11, align 1
  ret void
}

define void @"main$5"(i64 %arg, i32* %arg1, [3 x double]* %arg2, %2* %arg3, i8 %arg4) {
"main$5_latch$0":
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %arg2, i64 0, i64 %arg
  %i = load double, double* %arrayidx22, align 8, !tbaa !9
  %call23 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %i)
  %indvars.iv.next210 = add nuw nsw i64 %arg, 1
  %i5 = load i32, i32* %arg1, align 4, !tbaa !1
  %i6 = sext i32 %i5 to i64
  %cmp19 = icmp slt i64 %indvars.iv.next210, %i6
  br i1 %cmp19, label %"main$5_increment_depth_counter", label %"main$5_return_from_recursive_function$0"

"main$5_increment_depth_counter":                 ; preds = %"main$5_latch$0"
  %i7 = add i8 %arg4, 1
  %i8 = icmp ult i8 %i7, 16
  br i1 %i8, label %"main$5_recursively_call_function", label %"main$5_save_recursive_state_and_return"

"main$5_recursively_call_function":               ; preds = %"main$5_increment_depth_counter"
  call void @"main$5"(i64 %indvars.iv.next210, i32* %arg1, [3 x double]* %arg2, %2* %arg3, i8 %i7)
  ret void

"main$5_save_recursive_state_and_return":         ; preds = %"main$5_increment_depth_counter"
  %i9 = getelementptr %2, %2* %arg3, i32 0, i32 0
  store i64 %indvars.iv.next210, i64* %i9, align 8
  %i10 = getelementptr %2, %2* %arg3, i32 0, i32 1
  store i1 false, i1* %i10, align 1
  ret void

"main$5_return_from_recursive_function$0":        ; preds = %"main$5_latch$0"
  %i11 = getelementptr %2, %2* %arg3, i32 0, i32 1
  store i1 true, i1* %i11, align 1
  ret void
}

define void @"main$6"(i64 %arg, i32* %arg1, [3 x double]* %arg2, %1* %arg3, i8 %arg4) {
"main$6_latch$0":
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %arg2, i64 0, i64 %arg
  %i = load double, double* %arrayidx10, align 8, !tbaa !9
  %call11 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %i)
  %indvars.iv.next212 = add nuw nsw i64 %arg, 1
  %i5 = load i32, i32* %arg1, align 4, !tbaa !1
  %i6 = sext i32 %i5 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next212, %i6
  br i1 %cmp7, label %"main$6_increment_depth_counter", label %"main$6_return_from_recursive_function$0"

"main$6_increment_depth_counter":                 ; preds = %"main$6_latch$0"
  %i7 = add i8 %arg4, 1
  %i8 = icmp ult i8 %i7, 16
  br i1 %i8, label %"main$6_recursively_call_function", label %"main$6_save_recursive_state_and_return"

"main$6_recursively_call_function":               ; preds = %"main$6_increment_depth_counter"
  call void @"main$6"(i64 %indvars.iv.next212, i32* %arg1, [3 x double]* %arg2, %1* %arg3, i8 %i7)
  ret void

"main$6_save_recursive_state_and_return":         ; preds = %"main$6_increment_depth_counter"
  %i9 = getelementptr %1, %1* %arg3, i32 0, i32 0
  store i64 %indvars.iv.next212, i64* %i9, align 8
  %i10 = getelementptr %1, %1* %arg3, i32 0, i32 1
  store i1 false, i1* %i10, align 1
  ret void

"main$6_return_from_recursive_function$0":        ; preds = %"main$6_latch$0"
  %i11 = getelementptr %1, %1* %arg3, i32 0, i32 1
  store i1 true, i1* %i11, align 1
  ret void
}

define void @"main$7"(i64 %arg, i32* %arg1, [3 x double]* %arg2, %0* %arg3, i8 %arg4) {
"main$7_latch$0":
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %arg2, i64 0, i64 %arg
  %i = load double, double* %arrayidx, align 8, !tbaa !9
  %call2 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %i)
  %indvars.iv.next214 = add nuw nsw i64 %arg, 1
  %i5 = load i32, i32* %arg1, align 4, !tbaa !1
  %i6 = sext i32 %i5 to i64
  %cmp = icmp slt i64 %indvars.iv.next214, %i6
  br i1 %cmp, label %"main$7_increment_depth_counter", label %"main$7_return_from_recursive_function$0"

"main$7_increment_depth_counter":                 ; preds = %"main$7_latch$0"
  %i7 = add i8 %arg4, 1
  %i8 = icmp ult i8 %i7, 16
  br i1 %i8, label %"main$7_recursively_call_function", label %"main$7_save_recursive_state_and_return"

"main$7_recursively_call_function":               ; preds = %"main$7_increment_depth_counter"
  call void @"main$7"(i64 %indvars.iv.next214, i32* %arg1, [3 x double]* %arg2, %0* %arg3, i8 %i7)
  ret void

"main$7_save_recursive_state_and_return":         ; preds = %"main$7_increment_depth_counter"
  %i9 = getelementptr %0, %0* %arg3, i32 0, i32 0
  store i64 %indvars.iv.next214, i64* %i9, align 8
  %i10 = getelementptr %0, %0* %arg3, i32 0, i32 1
  store i1 false, i1* %i10, align 1
  ret void

"main$7_return_from_recursive_function$0":        ; preds = %"main$7_latch$0"
  %i11 = getelementptr %0, %0* %arg3, i32 0, i32 1
  store i1 true, i1* %i11, align 1
  ret void
}

define void @"main$3$0"(i32 %arg, [3 x double]* %arg1, double* %arg2, double %arg3, i32* %arg4, %8* %arg5, i8 %arg6) {
"main$3$0_header":
  %indvar.conv203 = sitofp i32 %arg to double
  br label %"main$3$0$0_initialize_context"

"main$3$0$0_initialize_context":                  ; preds = %"main$3$0_header"
  %i = alloca %9, align 8
  br label %"main$3$0$0_call_recursive_function"

"main$3$0$0_call_recursive_function":             ; preds = %"main$3$0$0_extract_next_values", %"main$3$0$0_initialize_context"
  %i7 = phi double [ 5.000000e+00, %"main$3$0$0_initialize_context" ], [ %i11, %"main$3$0$0_extract_next_values" ]
  call void @"main$3$0$0"(double %i7, [3 x double]* %arg1, double* %arg2, i32* %arg4, double %arg3, double %indvar.conv203, %9* %i, i8 0)
  %i8 = getelementptr %9, %9* %i, i32 0, i32 1
  %i9 = load i1, i1* %i8, align 1
  br i1 %i9, label %"main$3$0_latch$0", label %"main$3$0$0_extract_next_values"

"main$3$0$0_extract_next_values":                 ; preds = %"main$3$0$0_call_recursive_function"
  %i10 = getelementptr %9, %9* %i, i32 0, i32 0
  %i11 = load double, double* %i10, align 8
  br label %"main$3$0$0_call_recursive_function"

"main$3$0_latch$0":                               ; preds = %"main$3$0$0_call_recursive_function"
  %dec69.int = add nsw i32 %arg, -1
  %cmp44 = icmp sgt i32 %arg, 1
  br i1 %cmp44, label %"main$3$0_increment_depth_counter", label %"main$3$0_return_from_recursive_function$0", !llvm.loop !7

"main$3$0_increment_depth_counter":               ; preds = %"main$3$0_latch$0"
  %i12 = add i8 %arg6, 1
  %i13 = icmp ult i8 %i12, 16
  br i1 %i13, label %"main$3$0_recursively_call_function", label %"main$3$0_save_recursive_state_and_return"

"main$3$0_recursively_call_function":             ; preds = %"main$3$0_increment_depth_counter"
  call void @"main$3$0"(i32 %dec69.int, [3 x double]* %arg1, double* %arg2, double %arg3, i32* %arg4, %8* %arg5, i8 %i12)
  ret void

"main$3$0_save_recursive_state_and_return":       ; preds = %"main$3$0_increment_depth_counter"
  %i14 = getelementptr %8, %8* %arg5, i32 0, i32 0
  store i32 %dec69.int, i32* %i14, align 4
  %i15 = getelementptr %8, %8* %arg5, i32 0, i32 1
  store i1 false, i1* %i15, align 1
  ret void

"main$3$0_return_from_recursive_function$0":      ; preds = %"main$3$0_latch$0"
  %i16 = getelementptr %8, %8* %arg5, i32 0, i32 1
  store i1 true, i1* %i16, align 1
  ret void
}

define void @"main$3$0$0"(double %arg, [3 x double]* %arg1, double* %arg2, i32* %arg3, double %arg4, double %arg5, %9* %arg6, i8 %arg7) {
"main$3$0$0_header":
  br label %"main$3$0$0$0_initialize_context"

"main$3$0$0$0_initialize_context":                ; preds = %"main$3$0$0_header"
  %i = alloca %10, align 8
  br label %"main$3$0$0$0_call_recursive_function"

"main$3$0$0$0_call_recursive_function":           ; preds = %"main$3$0$0$0_extract_next_values", %"main$3$0$0$0_initialize_context"
  %i8 = phi i32 [ -1, %"main$3$0$0$0_initialize_context" ], [ %i12, %"main$3$0$0$0_extract_next_values" ]
  call void @"main$3$0$0$0"(i32 %i8, [3 x double]* %arg1, double* %arg2, i32* %arg3, double %arg, double %arg4, double %arg5, %10* %i, i8 0)
  %i9 = getelementptr %10, %10* %i, i32 0, i32 1
  %i10 = load i1, i1* %i9, align 1
  br i1 %i10, label %"main$3$0$0_latch$0", label %"main$3$0$0$0_extract_next_values"

"main$3$0$0$0_extract_next_values":               ; preds = %"main$3$0$0$0_call_recursive_function"
  %i11 = getelementptr %10, %10* %i, i32 0, i32 0
  %i12 = load i32, i32* %i11, align 4
  br label %"main$3$0$0$0_call_recursive_function"

"main$3$0$0_latch$0":                             ; preds = %"main$3$0$0$0_call_recursive_function"
  %add = fadd double %arg, 5.000000e-01
  %cmp47 = fcmp olt double %add, 1.500000e+01
  br i1 %cmp47, label %"main$3$0$0_increment_depth_counter", label %"main$3$0$0_return_from_recursive_function$0"

"main$3$0$0_increment_depth_counter":             ; preds = %"main$3$0$0_latch$0"
  %i13 = add i8 %arg7, 1
  %i14 = icmp ult i8 %i13, 16
  br i1 %i14, label %"main$3$0$0_recursively_call_function", label %"main$3$0$0_save_recursive_state_and_return"

"main$3$0$0_recursively_call_function":           ; preds = %"main$3$0$0_increment_depth_counter"
  call void @"main$3$0$0"(double %add, [3 x double]* %arg1, double* %arg2, i32* %arg3, double %arg4, double %arg5, %9* %arg6, i8 %i13)
  ret void

"main$3$0$0_save_recursive_state_and_return":     ; preds = %"main$3$0$0_increment_depth_counter"
  %i15 = getelementptr %9, %9* %arg6, i32 0, i32 0
  store double %add, double* %i15, align 8
  %i16 = getelementptr %9, %9* %arg6, i32 0, i32 1
  store i1 false, i1* %i16, align 1
  ret void

"main$3$0$0_return_from_recursive_function$0":    ; preds = %"main$3$0$0_latch$0"
  %i17 = getelementptr %9, %9* %arg6, i32 0, i32 1
  store i1 true, i1* %i17, align 1
  ret void
}

define void @"main$3$0$0$0"(i32 %arg, [3 x double]* %arg1, double* %arg2, i32* %arg3, double %arg4, double %arg5, double %arg6, %10* %arg7, i8 %arg8) {
"main$3$0$0$0_header":
  %indvar.conv201 = sitofp i32 %arg to double
  call void @SolveCubic(double %arg5, double %arg6, double %arg4, double %indvar.conv201, i32* nonnull %arg3, double* %arg2) #4
  %call53 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %i = load i32, i32* %arg3, align 4, !tbaa !1
  %cmp55182 = icmp sgt i32 %i, 0
  br i1 %cmp55182, label %for.body56.preheader, label %"main$3$0$0$0_latch$0"

for.body56.preheader:                             ; preds = %"main$3$0$0$0_header"
  br label %"main$3$0$0$0$0_initialize_context"

"main$3$0$0$0$0_initialize_context":              ; preds = %for.body56.preheader
  %i9 = alloca %11, align 8
  br label %"main$3$0$0$0$0_call_recursive_function"

"main$3$0$0$0$0_call_recursive_function":         ; preds = %"main$3$0$0$0$0_extract_next_values", %"main$3$0$0$0$0_initialize_context"
  %i10 = phi i64 [ 0, %"main$3$0$0$0$0_initialize_context" ], [ %i14, %"main$3$0$0$0$0_extract_next_values" ]
  call void @"main$3$0$0$0$0"(i64 %i10, i32* %arg3, [3 x double]* %arg1, %11* %i9, i8 0)
  %i11 = getelementptr %11, %11* %i9, i32 0, i32 1
  %i12 = load i1, i1* %i11, align 1
  br i1 %i12, label %for.end62.loopexit, label %"main$3$0$0$0$0_extract_next_values"

"main$3$0$0$0$0_extract_next_values":             ; preds = %"main$3$0$0$0$0_call_recursive_function"
  %i13 = getelementptr %11, %11* %i9, i32 0, i32 0
  %i14 = load i64, i64* %i13, align 8
  br label %"main$3$0$0$0$0_call_recursive_function"

for.end62.loopexit:                               ; preds = %"main$3$0$0$0$0_call_recursive_function"
  br label %"main$3$0$0$0_latch$0"

"main$3$0$0$0_latch$0":                           ; preds = %for.end62.loopexit, %"main$3$0$0$0_header"
  %putchar178 = call i32 @putchar(i32 10) #4
  %dec.int = add nsw i32 %arg, -1
  %cmp50 = icmp sgt i32 %dec.int, -11
  br i1 %cmp50, label %"main$3$0$0$0_increment_depth_counter", label %"main$3$0$0$0_return_from_recursive_function$0", !llvm.loop !7

"main$3$0$0$0_increment_depth_counter":           ; preds = %"main$3$0$0$0_latch$0"
  %i15 = add i8 %arg8, 1
  %i16 = icmp ult i8 %i15, 16
  br i1 %i16, label %"main$3$0$0$0_recursively_call_function", label %"main$3$0$0$0_save_recursive_state_and_return"

"main$3$0$0$0_recursively_call_function":         ; preds = %"main$3$0$0$0_increment_depth_counter"
  call void @"main$3$0$0$0"(i32 %dec.int, [3 x double]* %arg1, double* %arg2, i32* %arg3, double %arg4, double %arg5, double %arg6, %10* %arg7, i8 %i15)
  ret void

"main$3$0$0$0_save_recursive_state_and_return":   ; preds = %"main$3$0$0$0_increment_depth_counter"
  %i17 = getelementptr %10, %10* %arg7, i32 0, i32 0
  store i32 %dec.int, i32* %i17, align 4
  %i18 = getelementptr %10, %10* %arg7, i32 0, i32 1
  store i1 false, i1* %i18, align 1
  ret void

"main$3$0$0$0_return_from_recursive_function$0":  ; preds = %"main$3$0$0$0_latch$0"
  %i19 = getelementptr %10, %10* %arg7, i32 0, i32 1
  store i1 true, i1* %i19, align 1
  ret void
}

define void @"main$3$0$0$0$0"(i64 %arg, i32* %arg1, [3 x double]* %arg2, %11* %arg3, i8 %arg4) {
"main$3$0$0$0$0_latch$0":
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %arg2, i64 0, i64 %arg
  %i = load double, double* %arrayidx58, align 8, !tbaa !9
  %call59 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %i)
  %indvars.iv.next199 = add nuw nsw i64 %arg, 1
  %i5 = load i32, i32* %arg1, align 4, !tbaa !1
  %i6 = sext i32 %i5 to i64
  %cmp55 = icmp slt i64 %indvars.iv.next199, %i6
  br i1 %cmp55, label %"main$3$0$0$0$0_increment_depth_counter", label %"main$3$0$0$0$0_return_from_recursive_function$0"

"main$3$0$0$0$0_increment_depth_counter":         ; preds = %"main$3$0$0$0$0_latch$0"
  %i7 = add i8 %arg4, 1
  %i8 = icmp ult i8 %i7, 16
  br i1 %i8, label %"main$3$0$0$0$0_recursively_call_function", label %"main$3$0$0$0$0_save_recursive_state_and_return"

"main$3$0$0$0$0_recursively_call_function":       ; preds = %"main$3$0$0$0$0_increment_depth_counter"
  call void @"main$3$0$0$0$0"(i64 %indvars.iv.next199, i32* %arg1, [3 x double]* %arg2, %11* %arg3, i8 %i7)
  ret void

"main$3$0$0$0$0_save_recursive_state_and_return": ; preds = %"main$3$0$0$0$0_increment_depth_counter"
  %i9 = getelementptr %11, %11* %arg3, i32 0, i32 0
  store i64 %indvars.iv.next199, i64* %i9, align 8
  %i10 = getelementptr %11, %11* %arg3, i32 0, i32 1
  store i1 false, i1* %i10, align 1
  ret void

"main$3$0$0$0$0_return_from_recursive_function$0": ; preds = %"main$3$0$0$0$0_latch$0"
  %i11 = getelementptr %11, %11* %arg3, i32 0, i32 1
  store i1 true, i1* %i11, align 1
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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.loop2recursion.copy.enable"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !3, i64 0}
