; ModuleID = 'fftmisc.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @IsPowerOfTwo(i32 %x) #0 {
entry:
  %cmp = icmp ult i32 %x, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i32 %x, -1
  %and = and i32 %sub, %x
  %tobool = icmp eq i32 %and, 0
  %. = zext i1 %tobool to i32
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define i32 @NumberOfBitsNeeded(i32 %PowerOfTwo) #1 {
entry:
  %cmp = icmp ult i32 %PowerOfTwo, 2
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br label %for.cond

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* nonnull getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %PowerOfTwo) #4
  tail call void @exit(i32 1) #5
  unreachable

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %shl = shl i32 1, %i.0
  %and = and i32 %shl, %PowerOfTwo
  %tobool = icmp eq i32 %and, 0
  %inc = add i32 %i.0, 1
  br i1 %tobool, label %for.cond, label %if.then1

if.then1:                                         ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @ReverseBits(i32 %index, i32 %NumBits) #0 {
entry:
  %cmp5 = icmp eq i32 %NumBits, 0
  br i1 %cmp5, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = add i32 %NumBits, -1
  %xtraiter = and i32 %NumBits, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.preheader.split, label %for.body.prol.preheader

for.body.prol.preheader:                          ; preds = %for.body.preheader
  br label %for.body.prol

for.body.prol:                                    ; preds = %for.body.prol.preheader, %for.body.prol
  %rev.08.prol = phi i32 [ %or.prol, %for.body.prol ], [ 0, %for.body.prol.preheader ]
  %i.07.prol = phi i32 [ %inc.prol, %for.body.prol ], [ 0, %for.body.prol.preheader ]
  %index.addr.06.prol = phi i32 [ %shr.prol, %for.body.prol ], [ %index, %for.body.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %for.body.prol ], [ %xtraiter, %for.body.prol.preheader ]
  %shl.prol = shl i32 %rev.08.prol, 1
  %and.prol = and i32 %index.addr.06.prol, 1
  %or.prol = or i32 %shl.prol, %and.prol
  %shr.prol = lshr i32 %index.addr.06.prol, 1
  %inc.prol = add nuw i32 %i.07.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.preheader.split.loopexit, label %for.body.prol, !llvm.loop !5

for.body.preheader.split.loopexit:                ; preds = %for.body.prol
  %inc.prol.lcssa = phi i32 [ %inc.prol, %for.body.prol ]
  %shr.prol.lcssa = phi i32 [ %shr.prol, %for.body.prol ]
  %or.prol.lcssa = phi i32 [ %or.prol, %for.body.prol ]
  br label %for.body.preheader.split

for.body.preheader.split:                         ; preds = %for.body.preheader.split.loopexit, %for.body.preheader
  %or.lcssa.unr = phi i32 [ undef, %for.body.preheader ], [ %or.prol.lcssa, %for.body.preheader.split.loopexit ]
  %rev.08.unr = phi i32 [ 0, %for.body.preheader ], [ %or.prol.lcssa, %for.body.preheader.split.loopexit ]
  %i.07.unr = phi i32 [ 0, %for.body.preheader ], [ %inc.prol.lcssa, %for.body.preheader.split.loopexit ]
  %index.addr.06.unr = phi i32 [ %index, %for.body.preheader ], [ %shr.prol.lcssa, %for.body.preheader.split.loopexit ]
  %1 = icmp ult i32 %0, 3
  br i1 %1, label %for.end.loopexit, label %for.body.preheader.split.split

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.split.split
  %rev.08 = phi i32 [ %rev.08.unr, %for.body.preheader.split.split ], [ %or.3, %for.body ]
  %i.07 = phi i32 [ %i.07.unr, %for.body.preheader.split.split ], [ %inc.3, %for.body ]
  %index.addr.06 = phi i32 [ %index.addr.06.unr, %for.body.preheader.split.split ], [ %shr.3, %for.body ]
  %shl = shl i32 %rev.08, 1
  %and = and i32 %index.addr.06, 1
  %or = or i32 %shl, %and
  %shl.1 = shl i32 %or, 2
  %and.1 = and i32 %index.addr.06, 2
  %or.1 = or i32 %shl.1, %and.1
  %shr.1 = lshr i32 %index.addr.06, 2
  %and.2 = and i32 %shr.1, 1
  %or.2 = or i32 %or.1, %and.2
  %shr.2 = lshr i32 %index.addr.06, 3
  %shl.3 = shl i32 %or.2, 1
  %and.3 = and i32 %shr.2, 1
  %or.3 = or i32 %shl.3, %and.3
  %shr.3 = lshr i32 %index.addr.06, 4
  %inc.3 = add i32 %i.07, 4
  %exitcond.3 = icmp eq i32 %inc.3, %NumBits
  br i1 %exitcond.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  %or.3.lcssa = phi i32 [ %or.3, %for.body ]
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body.preheader.split, %for.end.loopexit.unr-lcssa
  %or.lcssa = phi i32 [ %or.lcssa.unr, %for.body.preheader.split ], [ %or.3.lcssa, %for.end.loopexit.unr-lcssa ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %rev.0.lcssa = phi i32 [ 0, %entry ], [ %or.lcssa, %for.end.loopexit ]
  ret i32 %rev.0.lcssa
}

; Function Attrs: norecurse nounwind readnone uwtable
define double @Index_to_frequency(i32 %NumSamples, i32 %Index) #0 {
entry:
  %cmp = icmp ugt i32 %NumSamples, %Index
  br i1 %cmp, label %if.else, label %return

if.else:                                          ; preds = %entry
  %div = lshr i32 %NumSamples, 1
  %cmp1 = icmp ult i32 %div, %Index
  br i1 %cmp1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.else
  %conv = uitofp i32 %Index to double
  %conv3 = uitofp i32 %NumSamples to double
  %div4 = fdiv double %conv, %conv3
  br label %return

if.end5:                                          ; preds = %if.else
  %sub = sub i32 %NumSamples, %Index
  %conv6 = uitofp i32 %sub to double
  %sub7 = fsub double -0.000000e+00, %conv6
  %conv8 = uitofp i32 %NumSamples to double
  %div9 = fdiv double %sub7, %conv8
  br label %return

return:                                           ; preds = %entry, %if.end5, %if.then2
  %retval.0 = phi double [ %div4, %if.then2 ], [ %div9, %if.end5 ], [ 0.000000e+00, %entry ]
  ret double %retval.0
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
