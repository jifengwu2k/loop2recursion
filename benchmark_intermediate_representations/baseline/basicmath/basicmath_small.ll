; ModuleID = 'basicmath_small.c'
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

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %x = alloca [3 x double], align 16
  %solutions = alloca i32, align 4
  %q = alloca %struct.int_sqrt, align 4
  %0 = bitcast [3 x double]* %x to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #4
  %1 = bitcast i32* %solutions to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #4
  %2 = bitcast %struct.int_sqrt* %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #4
  %puts = tail call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @str, i64 0, i64 0)) #4
  %arraydecay = getelementptr inbounds [3 x double], [3 x double]* %x, i64 0, i64 0
  call void @SolveCubic(double 1.000000e+00, double -1.050000e+01, double 3.200000e+01, double -3.000000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp194 = icmp sgt i32 %3, 0
  br i1 %cmp194, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %x, i64 0, i64 %indvars.iv213
  %4 = load double, double* %arrayidx, align 8, !tbaa !5
  %call2 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %4)
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1
  %5 = load i32, i32* %solutions, align 4, !tbaa !1
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next214, %6
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %putchar = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -4.500000e+00, double 1.700000e+01, double -3.000000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call5 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp7192 = icmp sgt i32 %7, 0
  br i1 %cmp7192, label %for.body8.preheader, label %for.end14

for.body8.preheader:                              ; preds = %for.end
  br label %for.body8

for.body8:                                        ; preds = %for.body8.preheader, %for.body8
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %for.body8 ], [ 0, %for.body8.preheader ]
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %x, i64 0, i64 %indvars.iv211
  %8 = load double, double* %arrayidx10, align 8, !tbaa !5
  %call11 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %8)
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %9 = load i32, i32* %solutions, align 4, !tbaa !1
  %10 = sext i32 %9 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next212, %10
  br i1 %cmp7, label %for.body8, label %for.end14.loopexit

for.end14.loopexit:                               ; preds = %for.body8
  br label %for.end14

for.end14:                                        ; preds = %for.end14.loopexit, %for.end
  %putchar173 = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -3.500000e+00, double 2.200000e+01, double -3.100000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call17 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp19190 = icmp sgt i32 %11, 0
  br i1 %cmp19190, label %for.body20.preheader, label %for.end26

for.body20.preheader:                             ; preds = %for.end14
  br label %for.body20

for.body20:                                       ; preds = %for.body20.preheader, %for.body20
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %for.body20 ], [ 0, %for.body20.preheader ]
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %x, i64 0, i64 %indvars.iv209
  %12 = load double, double* %arrayidx22, align 8, !tbaa !5
  %call23 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %12)
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %13 = load i32, i32* %solutions, align 4, !tbaa !1
  %14 = sext i32 %13 to i64
  %cmp19 = icmp slt i64 %indvars.iv.next210, %14
  br i1 %cmp19, label %for.body20, label %for.end26.loopexit

for.end26.loopexit:                               ; preds = %for.body20
  br label %for.end26

for.end26:                                        ; preds = %for.end26.loopexit, %for.end14
  %putchar174 = call i32 @putchar(i32 10) #4
  call void @SolveCubic(double 1.000000e+00, double -1.370000e+01, double 1.000000e+00, double -3.500000e+01, i32* nonnull %solutions, double* %arraydecay) #4
  %call29 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp31188 = icmp sgt i32 %15, 0
  br i1 %cmp31188, label %for.body32.preheader, label %for.end38

for.body32.preheader:                             ; preds = %for.end26
  br label %for.body32

for.body32:                                       ; preds = %for.body32.preheader, %for.body32
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %for.body32 ], [ 0, %for.body32.preheader ]
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %x, i64 0, i64 %indvars.iv207
  %16 = load double, double* %arrayidx34, align 8, !tbaa !5
  %call35 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %16)
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  %17 = load i32, i32* %solutions, align 4, !tbaa !1
  %18 = sext i32 %17 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next208, %18
  br i1 %cmp31, label %for.body32, label %for.end38.loopexit

for.end38.loopexit:                               ; preds = %for.body32
  br label %for.end38

for.end38:                                        ; preds = %for.end38.loopexit, %for.end26
  %putchar175 = call i32 @putchar(i32 10) #4
  br label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.inc71, %for.end38
  %a1.0187.int = phi i32 [ 1, %for.end38 ], [ %inc72.int, %for.inc71 ]
  %indvar.conv205 = sitofp i32 %a1.0187.int to double
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %for.cond43.preheader, %for.inc68
  %b1.0186.int = phi i32 [ 10, %for.cond43.preheader ], [ %dec69.int, %for.inc68 ]
  %indvar.conv203 = sitofp i32 %b1.0186.int to double
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond46.preheader, %for.inc66
  %c1.0185 = phi double [ 5.000000e+00, %for.cond46.preheader ], [ %add, %for.inc66 ]
  br label %for.body51

for.body51:                                       ; preds = %for.cond49.preheader, %for.end62
  %d1.0184.int = phi i32 [ -1, %for.cond49.preheader ], [ %dec.int, %for.end62 ]
  %indvar.conv201 = sitofp i32 %d1.0184.int to double
  call void @SolveCubic(double %indvar.conv205, double %indvar.conv203, double %c1.0185, double %indvar.conv201, i32* nonnull %solutions, double* %arraydecay) #4
  %call53 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %solutions, align 4, !tbaa !1
  %cmp55182 = icmp sgt i32 %19, 0
  br i1 %cmp55182, label %for.body56.preheader, label %for.end62

for.body56.preheader:                             ; preds = %for.body51
  br label %for.body56

for.body56:                                       ; preds = %for.body56.preheader, %for.body56
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %for.body56 ], [ 0, %for.body56.preheader ]
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %x, i64 0, i64 %indvars.iv198
  %20 = load double, double* %arrayidx58, align 8, !tbaa !5
  %call59 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %20)
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1
  %21 = load i32, i32* %solutions, align 4, !tbaa !1
  %22 = sext i32 %21 to i64
  %cmp55 = icmp slt i64 %indvars.iv.next199, %22
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
  br i1 %cmp44, label %for.cond46.preheader, label %for.inc71, !llvm.loop !9

for.inc71:                                        ; preds = %for.inc68
  %inc72.int = add nuw nsw i32 %a1.0187.int, 1
  %exitcond206 = icmp eq i32 %inc72.int, 10
  br i1 %exitcond206, label %for.end73, label %for.cond43.preheader, !llvm.loop !9

for.end73:                                        ; preds = %for.inc71
  %puts176 = call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* nonnull getelementptr inbounds ([40 x i8], [40 x i8]* @str.11, i64 0, i64 0)) #4
  %sqrt = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %q, i64 0, i32 0
  br label %for.body77

for.body77:                                       ; preds = %for.body77, %for.end73
  %indvars.iv = phi i64 [ 0, %for.end73 ], [ %indvars.iv.next, %for.body77 ]
  call void @usqrt(i64 %indvars.iv, %struct.int_sqrt* nonnull %q) #4
  %23 = load i32, i32* %sqrt, align 4, !tbaa !7
  %24 = trunc i64 %indvars.iv to i32
  %call78 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %24, i32 %23)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond197 = icmp eq i64 %indvars.iv.next, 1001
  br i1 %exitcond197, label %for.end81, label %for.body77, !llvm.loop !9

for.end81:                                        ; preds = %for.body77
  call void @usqrt(i64 1072497001, %struct.int_sqrt* nonnull %q) #4
  %25 = load i32, i32* %sqrt, align 4, !tbaa !7
  %call83 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 1072497001, i32 %25)
  %puts177 = call i32 bitcast (i32 (...)* @puts to i32 (i8*)*)(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @str.12, i64 0, i64 0)) #4
  br label %for.body88

for.body88:                                       ; preds = %for.end81, %for.body88
  %X.0180.int = phi i32 [ 0, %for.end81 ], [ %add93.int, %for.body88 ]
  %indvar.conv = sitofp i32 %X.0180.int to double
  %mul90 = fmul double %indvar.conv, 0x400921FB54442D18
  %div = fdiv double %mul90, 1.800000e+02
  %call91 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), double %indvar.conv, double %div)
  %add93.int = add nuw nsw i32 %X.0180.int, 1
  %exitcond = icmp eq i32 %add93.int, 361
  br i1 %exitcond, label %for.end94, label %for.body88

for.end94:                                        ; preds = %for.body88
  %call95 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* nonnull getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #4
  br label %for.body103

for.body103:                                      ; preds = %for.end94, %for.body103
  %X.1179 = phi double [ 0.000000e+00, %for.end94 ], [ %add113, %for.body103 ]
  %mul104 = fmul double %X.1179, 1.800000e+02
  %div107 = fdiv double %mul104, 0x400921FB54442D18
  %call108 = call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double %X.1179, double %div107)
  %add113 = fadd double %X.1179, 0x3F91DF46A2529D39
  %cmp101 = fcmp ugt double %add113, 0x401921FB97600B9B
  br i1 %cmp101, label %for.end114, label %for.body103

for.end114:                                       ; preds = %for.body103
  call void @llvm.lifetime.end(i64 8, i8* %2) #4
  call void @llvm.lifetime.end(i64 4, i8* %1) #4
  call void @llvm.lifetime.end(i64 24, i8* %0) #4
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

declare void @SolveCubic(double, double, double, double, i32*, double*) #3

declare void @usqrt(i64, %struct.int_sqrt*) #3

declare i32 @puts(...) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @putchar(i32)

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"int_sqrt", !2, i64 0, !2, i64 4}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.loop2recursion.copy.enable"}
