; ModuleID = 'fourierf.c'
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
  br label %for.body

for.cond15.preheader:                             ; preds = %cond.end
  %cmp16245 = icmp ult i32 %NumSamples, 2
  br i1 %cmp16245, label %for.end112, label %for.body18.preheader

for.body18.preheader:                             ; preds = %for.cond15.preheader
  br label %for.body18

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv254 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next255, %cond.end ]
  %4 = trunc i64 %indvars.iv254 to i32
  %call6 = tail call i32 @ReverseBits(i32 %4, i32 %call5) #4
  %arrayidx = getelementptr inbounds float, float* %RealIn, i64 %indvars.iv254
  %5 = bitcast float* %arrayidx to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %idxprom7 = zext i32 %call6 to i64
  %arrayidx8 = getelementptr inbounds float, float* %RealOut, i64 %idxprom7
  %7 = bitcast float* %arrayidx8 to i32*
  store i32 %6, i32* %7, align 4, !tbaa !5
  br i1 %cmp9, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body
  %arrayidx11 = getelementptr inbounds float, float* %ImagIn, i64 %indvars.iv254
  %8 = load float, float* %arrayidx11, align 4, !tbaa !5
  %conv = fpext float %8 to double
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi double [ %conv, %cond.false ], [ 0.000000e+00, %for.body ]
  %conv12 = fptrunc double %cond to float
  %arrayidx14 = getelementptr inbounds float, float* %ImagOut, i64 %idxprom7
  store float %conv12, float* %arrayidx14, align 4, !tbaa !5
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1
  %lftr.wideiv256 = trunc i64 %indvars.iv.next255 to i32
  %exitcond257 = icmp eq i32 %lftr.wideiv256, %NumSamples
  br i1 %exitcond257, label %for.cond15.preheader, label %for.body

for.body18:                                       ; preds = %for.body18.preheader, %for.end110
  %BlockSize.0247 = phi i32 [ %shl, %for.end110 ], [ 2, %for.body18.preheader ]
  %BlockEnd.0246 = phi i32 [ %BlockSize.0247, %for.end110 ], [ 1, %for.body18.preheader ]
  %conv19 = uitofp i32 %BlockSize.0247 to double
  %div = fdiv double %., %conv19
  %mul = fmul double %div, -2.000000e+00
  %call20 = tail call double @sin(double %mul) #4
  %sub21 = fsub double -0.000000e+00, %div
  %call22 = tail call double @sin(double %sub21) #4
  %call24 = tail call double @cos(double %mul) #4
  %cos = tail call double @cos(double %div)
  %mul27 = fmul double %cos, 2.000000e+00
  br i1 %cmp249, label %for.end110, label %for.cond36.preheader.lr.ph

for.cond36.preheader.lr.ph:                       ; preds = %for.body18
  %cmp37236 = icmp eq i32 %BlockEnd.0246, 0
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond36.preheader.lr.ph, %for.inc108
  %indvars.iv251 = phi i32 [ %BlockEnd.0246, %for.cond36.preheader.lr.ph ], [ %indvars.iv.next252, %for.inc108 ]
  %i.1244 = phi i32 [ 0, %for.cond36.preheader.lr.ph ], [ %add109, %for.inc108 ]
  br i1 %cmp37236, label %for.inc108, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.cond36.preheader
  br label %for.body39

for.body39:                                       ; preds = %for.body39.preheader, %for.body39
  %j.0242 = phi i32 [ %inc105, %for.body39 ], [ %i.1244, %for.body39.preheader ]
  %ai.sroa.6.0240 = phi double [ %sub52, %for.body39 ], [ %call22, %for.body39.preheader ]
  %ai.sroa.10.0239 = phi double [ %ai.sroa.6.0240, %for.body39 ], [ %call20, %for.body39.preheader ]
  %ar.sroa.6.0238 = phi double [ %sub43, %for.body39 ], [ %cos, %for.body39.preheader ]
  %ar.sroa.10.0237 = phi double [ %ar.sroa.6.0238, %for.body39 ], [ %call24, %for.body39.preheader ]
  %mul41 = fmul double %mul27, %ar.sroa.6.0238
  %sub43 = fsub double %mul41, %ar.sroa.10.0237
  %mul50 = fmul double %mul27, %ai.sroa.6.0240
  %sub52 = fsub double %mul50, %ai.sroa.10.0239
  %add = add i32 %j.0242, %BlockEnd.0246
  %idxprom59 = zext i32 %add to i64
  %arrayidx60 = getelementptr inbounds float, float* %RealOut, i64 %idxprom59
  %9 = load float, float* %arrayidx60, align 4, !tbaa !5
  %conv61 = fpext float %9 to double
  %mul62 = fmul double %sub43, %conv61
  %arrayidx65 = getelementptr inbounds float, float* %ImagOut, i64 %idxprom59
  %10 = load float, float* %arrayidx65, align 4, !tbaa !5
  %conv66 = fpext float %10 to double
  %mul67 = fmul double %sub52, %conv66
  %sub68 = fsub double %mul62, %mul67
  %mul73 = fmul double %sub43, %conv66
  %mul78 = fmul double %sub52, %conv61
  %add79 = fadd double %mul78, %mul73
  %idxprom80 = zext i32 %j.0242 to i64
  %arrayidx81 = getelementptr inbounds float, float* %RealOut, i64 %idxprom80
  %11 = load float, float* %arrayidx81, align 4, !tbaa !5
  %conv82 = fpext float %11 to double
  %sub83 = fsub double %conv82, %sub68
  %conv84 = fptrunc double %sub83 to float
  store float %conv84, float* %arrayidx60, align 4, !tbaa !5
  %arrayidx88 = getelementptr inbounds float, float* %ImagOut, i64 %idxprom80
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
  %add109 = add i32 %i.1244, %BlockSize.0247
  %cmp29 = icmp ult i32 %add109, %NumSamples
  %indvars.iv.next252 = add i32 %indvars.iv251, %BlockSize.0247
  br i1 %cmp29, label %for.cond36.preheader, label %for.end110.loopexit

for.end110.loopexit:                              ; preds = %for.inc108
  br label %for.end110

for.end110:                                       ; preds = %for.end110.loopexit, %for.body18
  %shl = shl i32 %BlockSize.0247, 1
  %cmp16 = icmp ugt i32 %shl, %NumSamples
  br i1 %cmp16, label %for.end112.loopexit, label %for.body18

for.end112.loopexit:                              ; preds = %for.end110
  br label %for.end112

for.end112:                                       ; preds = %for.end112.loopexit, %CheckPointer.exit233, %for.cond15.preheader
  br i1 %tobool2, label %if.then114, label %if.end133

if.then114:                                       ; preds = %for.end112
  %conv115 = uitofp i32 %NumSamples to double
  br i1 %cmp249, label %if.end133, label %for.body119.preheader

for.body119.preheader:                            ; preds = %if.then114
  %15 = add i32 %NumSamples, -1
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, 1
  %min.iters.check = icmp ult i64 %17, 2
  br i1 %min.iters.check, label %for.body119.preheader269, label %min.iters.checked

min.iters.checked:                                ; preds = %for.body119.preheader
  %n.vec = and i64 %17, 8589934590
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %for.body119.preheader269, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %18 = add i32 %NumSamples, -1
  %19 = zext i32 %18 to i64
  %scevgep = getelementptr float, float* %RealOut, i64 %19
  %scevgep262 = getelementptr float, float* %ImagOut, i64 %19
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
  %20 = getelementptr inbounds float, float* %RealOut, i64 %index
  %21 = bitcast float* %20 to <2 x float>*
  %wide.load = load <2 x float>, <2 x float>* %21, align 4, !tbaa !5
  %22 = fpext <2 x float> %wide.load to <2 x double>
  %23 = fdiv <2 x double> %22, %broadcast.splat265
  %24 = fptrunc <2 x double> %23 to <2 x float>
  %25 = bitcast float* %20 to <2 x float>*
  store <2 x float> %24, <2 x float>* %25, align 4, !tbaa !5
  %26 = getelementptr inbounds float, float* %ImagOut, i64 %index
  %27 = bitcast float* %26 to <2 x float>*
  %wide.load266 = load <2 x float>, <2 x float>* %27, align 4, !tbaa !5
  %28 = fpext <2 x float> %wide.load266 to <2 x double>
  %29 = fdiv <2 x double> %28, %broadcast.splat265
  %30 = fptrunc <2 x double> %29 to <2 x float>
  %31 = bitcast float* %26 to <2 x float>*
  store <2 x float> %30, <2 x float>* %31, align 4, !tbaa !5
  %index.next = add i64 %index, 2
  %32 = icmp eq i64 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !7

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %17, %n.vec
  br i1 %cmp.n, label %if.end133, label %for.body119.preheader269

for.body119.preheader269:                         ; preds = %middle.block, %vector.memcheck, %min.iters.checked, %for.body119.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %min.iters.checked ], [ 0, %for.body119.preheader ], [ %n.vec, %middle.block ]
  br label %for.body119

for.body119:                                      ; preds = %for.body119.preheader269, %for.body119
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body119 ], [ %indvars.iv.ph, %for.body119.preheader269 ]
  %arrayidx121 = getelementptr inbounds float, float* %RealOut, i64 %indvars.iv
  %33 = load float, float* %arrayidx121, align 4, !tbaa !5
  %conv122 = fpext float %33 to double
  %div123 = fdiv double %conv122, %conv115
  %conv124 = fptrunc double %div123 to float
  store float %conv124, float* %arrayidx121, align 4, !tbaa !5
  %arrayidx126 = getelementptr inbounds float, float* %ImagOut, i64 %indvars.iv
  %34 = load float, float* %arrayidx126, align 4, !tbaa !5
  %conv127 = fpext float %34 to double
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
