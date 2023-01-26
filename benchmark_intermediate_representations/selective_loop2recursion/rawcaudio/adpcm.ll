; ModuleID = './benchmark_intermediate_representations/baseline/rawcaudio/adpcm.ll'
source_filename = "./benchmark_intermediate_representations/baseline/rawcaudio/adpcm.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal unnamed_addr constant [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal unnamed_addr constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16

; Function Attrs: norecurse nounwind uwtable
define void @adpcm_coder(i16* nocapture readonly %indata, i8* nocapture %outdata, i32 %len, %struct.adpcm_state* nocapture %state) #0 {
entry:
  %valprev = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %state, i64 0, i32 0
  %0 = load i16, i16* %valprev, align 2, !tbaa !1
  %conv = sext i16 %0 to i32
  %index1 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %state, i64 0, i32 1
  %1 = load i8, i8* %index1, align 2, !tbaa !6
  %conv2 = sext i8 %1 to i32
  %cmp127 = icmp sgt i32 %len, 0
  br i1 %cmp127, label %for.body.preheader, label %if.end68

for.body.preheader:                               ; preds = %entry
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !7
  br label %for.body

for.body:                                         ; preds = %if.end62, %for.body.preheader
  %bufferstep.0135 = phi i32 [ %lnot.ext, %if.end62 ], [ 1, %for.body.preheader ]
  %outputbuffer.0134 = phi i32 [ %outputbuffer.1, %if.end62 ], [ undef, %for.body.preheader ]
  %index.0133 = phi i32 [ %..add44, %if.end62 ], [ %conv2, %for.body.preheader ]
  %valpred.0132 = phi i32 [ %valpred.2, %if.end62 ], [ %conv, %for.body.preheader ]
  %step.0131 = phi i32 [ %9, %if.end62 ], [ %2, %for.body.preheader ]
  %len.addr.0130 = phi i32 [ %dec, %if.end62 ], [ %len, %for.body.preheader ]
  %inp.0129 = phi i16* [ %incdec.ptr, %if.end62 ], [ %indata, %for.body.preheader ]
  %outp.0128 = phi i8* [ %outp.1, %if.end62 ], [ %outdata, %for.body.preheader ]
  %incdec.ptr = getelementptr inbounds i16, i16* %inp.0129, i64 1
  %3 = load i16, i16* %inp.0129, align 2, !tbaa !9
  %conv4 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv4, %valpred.0132
  %cmp5 = icmp slt i32 %sub, 0
  %4 = ashr i32 %sub, 31
  %5 = and i32 %4, 8
  %sub7 = sub nsw i32 0, %sub
  %sub7.sub = select i1 %cmp5, i32 %sub7, i32 %sub
  %shr = ashr i32 %step.0131, 3
  %cmp8 = icmp slt i32 %sub7.sub, %step.0131
  %delta.0 = select i1 %cmp8, i32 0, i32 4
  %sub11 = select i1 %cmp8, i32 0, i32 %step.0131
  %diff.1 = sub nsw i32 %sub7.sub, %sub11
  %vpdiff.0 = add nsw i32 %sub11, %shr
  %shr13 = ashr i32 %step.0131, 1
  %cmp14 = icmp slt i32 %diff.1, %shr13
  br i1 %cmp14, label %if.end19, label %if.then16

if.then16:                                        ; preds = %for.body
  %or = or i32 %delta.0, 2
  %sub17 = sub nsw i32 %diff.1, %shr13
  %add18 = add nsw i32 %vpdiff.0, %shr13
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.body
  %delta.1 = phi i32 [ %or, %if.then16 ], [ %delta.0, %for.body ]
  %diff.2 = phi i32 [ %sub17, %if.then16 ], [ %diff.1, %for.body ]
  %vpdiff.1 = phi i32 [ %add18, %if.then16 ], [ %vpdiff.0, %for.body ]
  %shr20 = ashr i32 %step.0131, 2
  %cmp21 = icmp slt i32 %diff.2, %shr20
  %6 = zext i1 %cmp21 to i32
  %or24 = xor i32 %6, 1
  %add25 = select i1 %cmp21, i32 0, i32 %shr20
  %vpdiff.2 = add nsw i32 %add25, %vpdiff.1
  %7 = sub i32 0, %vpdiff.2
  %valpred.1.p = select i1 %cmp5, i32 %7, i32 %vpdiff.2
  %valpred.1 = add i32 %valpred.1.p, %valpred.0132
  %cmp32 = icmp sgt i32 %valpred.1, 32767
  %cmp36 = icmp slt i32 %valpred.1, -32768
  %.valpred.1 = select i1 %cmp36, i32 -32768, i32 %valpred.1
  %valpred.2 = select i1 %cmp32, i32 32767, i32 %.valpred.1
  %delta.2 = or i32 %delta.1, %5
  %or41 = or i32 %delta.2, %or24
  %idxprom42 = sext i32 %or41 to i64
  %arrayidx43 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i64 0, i64 %idxprom42
  %8 = load i32, i32* %arrayidx43, align 4, !tbaa !7
  %add44 = add nsw i32 %8, %index.0133
  %cmp45 = icmp slt i32 %add44, 0
  %.add44 = select i1 %cmp45, i32 0, i32 %add44
  %cmp49 = icmp sgt i32 %.add44, 88
  %..add44 = select i1 %cmp49, i32 88, i32 %.add44
  %idxprom53 = sext i32 %..add44 to i64
  %arrayidx54 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %idxprom53
  %9 = load i32, i32* %arrayidx54, align 4, !tbaa !7
  %tobool55 = icmp ne i32 %bufferstep.0135, 0
  br i1 %tobool55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.end19
  %shl = shl nsw i32 %or41, 4
  %and = and i32 %shl, 240
  br label %if.end62

if.else57:                                        ; preds = %if.end19
  %and58 = and i32 %or41, 15
  %or59 = or i32 %and58, %outputbuffer.0134
  %conv60 = trunc i32 %or59 to i8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %outp.0128, i64 1
  store i8 %conv60, i8* %outp.0128, align 1, !tbaa !10
  br label %if.end62

if.end62:                                         ; preds = %if.else57, %if.then56
  %outp.1 = phi i8* [ %outp.0128, %if.then56 ], [ %incdec.ptr61, %if.else57 ]
  %outputbuffer.1 = phi i32 [ %and, %if.then56 ], [ %outputbuffer.0134, %if.else57 ]
  %10 = zext i1 %tobool55 to i32
  %lnot.ext = xor i32 %10, 1
  %dec = add nsw i32 %len.addr.0130, -1
  %cmp = icmp sgt i32 %len.addr.0130, 1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end62
  %outputbuffer.1.lcssa = phi i32 [ %outputbuffer.1, %if.end62 ]
  %outp.1.lcssa = phi i8* [ %outp.1, %if.end62 ]
  %tobool55.lcssa = phi i1 [ %tobool55, %if.end62 ]
  %..add44.lcssa = phi i32 [ %..add44, %if.end62 ]
  %valpred.2.lcssa = phi i32 [ %valpred.2, %if.end62 ]
  br i1 %tobool55.lcssa, label %if.then65, label %if.end68

if.then65:                                        ; preds = %for.end
  %conv66 = trunc i32 %outputbuffer.1.lcssa to i8
  store i8 %conv66, i8* %outp.1.lcssa, align 1, !tbaa !10
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %for.end, %entry
  %valpred.0.lcssa141 = phi i32 [ %valpred.2.lcssa, %for.end ], [ %valpred.2.lcssa, %if.then65 ], [ %conv, %entry ]
  %index.0.lcssa140 = phi i32 [ %..add44.lcssa, %for.end ], [ %..add44.lcssa, %if.then65 ], [ %conv2, %entry ]
  %conv69 = trunc i32 %valpred.0.lcssa141 to i16
  store i16 %conv69, i16* %valprev, align 2, !tbaa !1
  %conv71 = trunc i32 %index.0.lcssa140 to i8
  store i8 %conv71, i8* %index1, align 2, !tbaa !6
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define void @adpcm_decoder(i8* nocapture readonly %indata, i16* nocapture %outdata, i32 %len, %struct.adpcm_state* nocapture %state) #0 {
entry:
  %valprev = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %state, i64 0, i32 0
  %0 = load i16, i16* %valprev, align 2, !tbaa !1
  %conv = sext i16 %0 to i32
  %index1 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %state, i64 0, i32 1
  %1 = load i8, i8* %index1, align 2, !tbaa !6
  %conv2 = sext i8 %1 to i32
  %cmp97 = icmp sgt i32 %len, 0
  br i1 %cmp97, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !7
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body.preheader
  %bufferstep.0105 = phi i32 [ %lnot.ext, %if.end ], [ 0, %for.body.preheader ]
  %inputbuffer.0104 = phi i32 [ %inputbuffer.1, %if.end ], [ undef, %for.body.preheader ]
  %index.0103 = phi i32 [ %..add, %if.end ], [ %conv2, %for.body.preheader ]
  %valpred.0102 = phi i32 [ %valpred.2, %if.end ], [ %conv, %for.body.preheader ]
  %step.0101 = phi i32 [ %7, %if.end ], [ %2, %for.body.preheader ]
  %len.addr.0100 = phi i32 [ %dec, %if.end ], [ %len, %for.body.preheader ]
  %outp.099 = phi i16* [ %incdec.ptr54, %if.end ], [ %outdata, %for.body.preheader ]
  %inp.098 = phi i8* [ %inp.1, %if.end ], [ %indata, %for.body.preheader ]
  %tobool = icmp ne i32 %bufferstep.0105, 0
  br i1 %tobool, label %if.end, label %if.else

if.else:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i8, i8* %inp.098, i64 1
  %3 = load i8, i8* %inp.098, align 1, !tbaa !10
  %conv4 = sext i8 %3 to i32
  %shr95 = lshr i32 %conv4, 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body
  %inp.1 = phi i8* [ %incdec.ptr, %if.else ], [ %inp.098, %for.body ]
  %delta.0.in = phi i32 [ %shr95, %if.else ], [ %inputbuffer.0104, %for.body ]
  %inputbuffer.1 = phi i32 [ %conv4, %if.else ], [ %inputbuffer.0104, %for.body ]
  %delta.0 = and i32 %delta.0.in, 15
  %4 = zext i1 %tobool to i32
  %lnot.ext = xor i32 %4, 1
  %idxprom796 = zext i32 %delta.0 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i64 0, i64 %idxprom796
  %5 = load i32, i32* %arrayidx8, align 4, !tbaa !7
  %add = add nsw i32 %5, %index.0103
  %cmp9 = icmp slt i32 %add, 0
  %.add = select i1 %cmp9, i32 0, i32 %add
  %cmp13 = icmp sgt i32 %.add, 88
  %..add = select i1 %cmp13, i32 88, i32 %.add
  %and17 = and i32 %delta.0.in, 8
  %shr19 = ashr i32 %step.0101, 3
  %and20 = and i32 %delta.0.in, 4
  %tobool21 = icmp eq i32 %and20, 0
  %add23 = select i1 %tobool21, i32 0, i32 %step.0101
  %shr19.add23 = add nsw i32 %add23, %shr19
  %and25 = and i32 %delta.0.in, 2
  %tobool26 = icmp eq i32 %and25, 0
  %shr28 = ashr i32 %step.0101, 1
  %add29 = select i1 %tobool26, i32 0, i32 %shr28
  %vpdiff.1 = add nsw i32 %shr19.add23, %add29
  %and31 = and i32 %delta.0.in, 1
  %tobool32 = icmp eq i32 %and31, 0
  %shr34 = ashr i32 %step.0101, 2
  %add35 = select i1 %tobool32, i32 0, i32 %shr34
  %vpdiff.2 = add nsw i32 %vpdiff.1, %add35
  %tobool37 = icmp eq i32 %and17, 0
  %6 = sub i32 0, %vpdiff.2
  %valpred.1.p = select i1 %tobool37, i32 %vpdiff.2, i32 %6
  %valpred.1 = add i32 %valpred.1.p, %valpred.0102
  %cmp42 = icmp sgt i32 %valpred.1, 32767
  %cmp46 = icmp slt i32 %valpred.1, -32768
  %.valpred.1 = select i1 %cmp46, i32 -32768, i32 %valpred.1
  %valpred.2 = select i1 %cmp42, i32 32767, i32 %.valpred.1
  %idxprom51 = sext i32 %..add to i64
  %arrayidx52 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %idxprom51
  %7 = load i32, i32* %arrayidx52, align 4, !tbaa !7
  %conv53 = trunc i32 %valpred.2 to i16
  %incdec.ptr54 = getelementptr inbounds i16, i16* %outp.099, i64 1
  store i16 %conv53, i16* %outp.099, align 2, !tbaa !9
  %dec = add nsw i32 %len.addr.0100, -1
  %cmp = icmp sgt i32 %len.addr.0100, 1
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %if.end
  %valpred.2.lcssa = phi i32 [ %valpred.2, %if.end ]
  %..add.lcssa = phi i32 [ %..add, %if.end ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %index.0.lcssa = phi i32 [ %conv2, %entry ], [ %..add.lcssa, %for.end.loopexit ]
  %valpred.0.lcssa = phi i32 [ %conv, %entry ], [ %valpred.2.lcssa, %for.end.loopexit ]
  %conv55 = trunc i32 %valpred.0.lcssa to i16
  store i16 %conv55, i16* %valprev, align 2, !tbaa !1
  %conv57 = trunc i32 %index.0.lcssa to i8
  store i8 %conv57, i8* %index1, align 2, !tbaa !6
  ret void
}

attributes #0 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !3, i64 0}
!2 = !{!"adpcm_state", !3, i64 0, !4, i64 2}
!3 = !{!"short", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!2, !4, i64 2}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !4, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!4, !4, i64 0}
