; ModuleID = './benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll'
source_filename = "./benchmark_intermediate_representations/baseline/pbmsrch/bmhasrch.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lowervec = global [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7Fcueaaaaceeeiiiaae\91\92ooouuyou\9B\9C\9D\9E\9Faiounn\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@pat = internal unnamed_addr global i8* null, align 8
@patlen = internal unnamed_addr global i32 0, align 4
@skip = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@skip2 = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @bmha_init(i8* %pattern) #0 {
entry:
  store i8* %pattern, i8** @pat, align 8, !tbaa !1
  %call = tail call i64 @strlen(i8* %pattern) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @patlen, align 4, !tbaa !5
  %sext = shl i64 %call, 32
  %0 = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %for.inc32, %entry
  %indvars.iv89 = phi i64 [ 0, %entry ], [ %indvars.iv.next90, %for.inc32 ]
  %sext92 = shl i64 %indvars.iv89, 32
  %idxprom = ashr exact i64 %sext92, 32
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %indvars.iv89
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5, %for.body
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body5 ], [ %0, %for.body ]
  %j.0.in = phi i32 [ %j.0, %for.body5 ], [ %conv, %for.body ]
  %j.0 = add nsw i32 %j.0.in, -1
  %cmp3 = icmp sgt i64 %indvars.iv87, 0
  br i1 %cmp3, label %for.body5, label %if.end24.loopexit

for.body5:                                        ; preds = %for.cond2
  %1 = load i8, i8* %arrayidx8, align 1, !tbaa !7
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %pattern, i64 %idxprom10
  %2 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %idxprom12 = zext i8 %2 to i64
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom12
  %3 = load i8, i8* %arrayidx13, align 1, !tbaa !7
  %cmp15 = icmp eq i8 %1, %3
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, -1
  br i1 %cmp15, label %if.then19, label %for.cond2

if.then19:                                        ; preds = %for.body5
  %indvars.iv87.lcssa97 = phi i64 [ %indvars.iv87, %for.body5 ]
  %4 = trunc i64 %indvars.iv87.lcssa97 to i32
  %j.0.neg = sub i32 1, %4
  %sub20 = add i32 %j.0.neg, -1
  %sub21 = add i32 %sub20, %conv
  store i32 %sub21, i32* %arrayidx, align 4, !tbaa !5
  br label %if.end24

if.end24.loopexit:                                ; preds = %for.cond2
  %indvars.iv87.lcssa = phi i64 [ %indvars.iv87, %for.cond2 ]
  %5 = trunc i64 %indvars.iv87.lcssa to i32
  br label %if.end24

if.end24:                                         ; preds = %if.end24.loopexit, %if.then19
  %j.0.in85 = phi i32 [ %5, %if.end24.loopexit ], [ %4, %if.then19 ]
  %cmp26 = icmp eq i32 %j.0.in85, %conv
  br i1 %cmp26, label %if.then28, label %for.inc32

if.then28:                                        ; preds = %if.end24
  store i32 32767, i32* %arrayidx, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %if.then28, %if.end24
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %exitcond = icmp eq i64 %indvars.iv.next90, 256
  br i1 %exitcond, label %for.end33, label %for.body

for.end33:                                        ; preds = %for.inc32
  store i32 %conv, i32* @skip2, align 4, !tbaa !5
  %cmp3680 = icmp sgt i32 %conv, 1
  br i1 %cmp3680, label %for.body38.lr.ph, label %for.end58

for.body38.lr.ph:                                 ; preds = %for.end33
  %sub3579 = shl i64 %call, 32
  %sext93 = add i64 %sub3579, -4294967296
  %6 = ashr exact i64 %sext93, 32
  %arrayidx46.phi.trans.insert = getelementptr inbounds i8, i8* %pattern, i64 %6
  %.pre = load i8, i8* %arrayidx46.phi.trans.insert, align 1, !tbaa !7
  %idxprom47.phi.trans.insert = zext i8 %.pre to i64
  %arrayidx48.phi.trans.insert = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom47.phi.trans.insert
  %.pre91 = load i8, i8* %arrayidx48.phi.trans.insert, align 1, !tbaa !7
  br label %for.body38

for.body38:                                       ; preds = %for.inc56, %for.body38.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body38.lr.ph ], [ %indvars.iv.next, %for.inc56 ]
  %arrayidx40 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv
  %7 = load i8, i8* %arrayidx40, align 1, !tbaa !7
  %idxprom41 = zext i8 %7 to i64
  %arrayidx42 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom41
  %8 = load i8, i8* %arrayidx42, align 1, !tbaa !7
  %cmp50 = icmp eq i8 %8, %.pre91
  br i1 %cmp50, label %if.then52, label %for.inc56

if.then52:                                        ; preds = %for.body38
  %9 = xor i64 %indvars.iv, 4294967295
  %10 = trunc i64 %9 to i32
  %sub54 = add i32 %conv, %10
  store i32 %sub54, i32* @skip2, align 4, !tbaa !5
  br label %for.inc56

for.inc56:                                        ; preds = %if.then52, %for.body38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp36 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp36, label %for.body38, label %for.end58.loopexit

for.end58.loopexit:                               ; preds = %for.inc56
  br label %for.end58

for.end58:                                        ; preds = %for.end58.loopexit, %for.end33
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: norecurse nounwind readonly uwtable
define i8* @bmha_search(i8* readonly %string, i32 %stringlen) #2 {
entry:
  %0 = load i32, i32* @patlen, align 4, !tbaa !5
  %sub = xor i32 %stringlen, -1
  %sub1 = add i32 %0, %sub
  %cmp = icmp sgt i32 %sub1, -1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %idx.ext = sext i32 %stringlen to i64
  %add.ptr = getelementptr inbounds i8, i8* %string, i64 %idx.ext
  %sub5 = sub nsw i32 32767, %stringlen
  %sub10 = add nsw i32 %0, -1
  %1 = load i8*, i8** @pat, align 8
  %2 = load i32, i32* @skip2, align 4
  %3 = sext i32 %sub10 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %if.end
  %i.0 = phi i32 [ %sub1, %if.end ], [ %i.0.be, %while.cond.backedge ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom2 = zext i8 %4 to i64
  %arrayidx3 = getelementptr inbounds [256 x i32], [256 x i32]* @skip, i64 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %add = add nsw i32 %5, %i.0
  %cmp4 = icmp slt i32 %add, 0
  br i1 %cmp4, label %while.cond.backedge, label %while.end

while.cond.backedge:                              ; preds = %if.end32, %while.cond
  %i.0.be = phi i32 [ %add, %while.cond ], [ %add33, %if.end32 ]
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp6 = icmp slt i32 %add, %sub5
  br i1 %cmp6, label %cleanup.loopexit63, label %if.end8

if.end8:                                          ; preds = %while.end
  %sub9 = add nsw i32 %add, -32767
  %sub11 = sub nsw i32 %sub9, %sub10
  %idx.ext12 = sext i32 %sub11 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext12
  br label %while.cond14

while.cond14:                                     ; preds = %land.rhs, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.rhs ], [ %3, %if.end8 ]
  %j.0 = phi i32 [ %dec, %land.rhs ], [ %sub10, %if.end8 ]
  %dec = add nsw i32 %j.0, -1
  %cmp15 = icmp sgt i64 %indvars.iv, 0
  br i1 %cmp15, label %land.rhs, label %cleanup.loopexit

land.rhs:                                         ; preds = %while.cond14
  %idxprom16 = sext i32 %dec to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %add.ptr13, i64 %idxprom16
  %6 = load i8, i8* %arrayidx17, align 1, !tbaa !7
  %idxprom18 = zext i8 %6 to i64
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom18
  %7 = load i8, i8* %arrayidx19, align 1, !tbaa !7
  %arrayidx21 = getelementptr inbounds i8, i8* %1, i64 %idxprom16
  %8 = load i8, i8* %arrayidx21, align 1, !tbaa !7
  %idxprom22 = zext i8 %8 to i64
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @lowervec, i64 0, i64 %idxprom22
  %9 = load i8, i8* %arrayidx23, align 1, !tbaa !7
  %cmp25 = icmp eq i8 %7, %9
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp25, label %while.cond14, label %if.end32

if.end32:                                         ; preds = %land.rhs
  %add33 = add nsw i32 %2, %sub9
  %cmp34 = icmp sgt i32 %add33, -1
  br i1 %cmp34, label %cleanup.loopexit63, label %while.cond.backedge

cleanup.loopexit:                                 ; preds = %while.cond14
  %add.ptr13.lcssa = phi i8* [ %add.ptr13, %while.cond14 ]
  br label %cleanup

cleanup.loopexit63:                               ; preds = %if.end32, %while.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit63, %cleanup.loopexit, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %add.ptr13.lcssa, %cleanup.loopexit ], [ null, %cleanup.loopexit63 ]
  ret i8* %retval.0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
