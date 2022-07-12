; ModuleID = 'bf.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@str.7 = private unnamed_addr constant [15 x i8] c"Bad key value.\00"
@str.8 = private unnamed_addr constant [36 x i8] c"key must be in hexadecimal notation\00"
@str.9 = private unnamed_addr constant [44 x i8] c"Usage: blowfish {e|d} <intput> <output> key\00"

; Function Attrs: noreturn nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  %key = alloca %struct.bf_key_st, align 8
  %ukey = alloca [8 x i8], align 1
  %indata = alloca [40 x i8], align 16
  %outdata = alloca [40 x i8], align 16
  %ivec = alloca [8 x i8], align 1
  %num = alloca i32, align 4
  %0 = bitcast %struct.bf_key_st* %key to i8*
  call void @llvm.lifetime.start(i64 8336, i8* %0) #5
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %ukey, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8, i8* %1) #5
  %2 = getelementptr inbounds [40 x i8], [40 x i8]* %indata, i64 0, i64 0
  call void @llvm.lifetime.start(i64 40, i8* %2) #5
  %3 = getelementptr inbounds [40 x i8], [40 x i8]* %outdata, i64 0, i64 0
  call void @llvm.lifetime.start(i64 40, i8* %3) #5
  %4 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8, i8* %4) #5
  %5 = bitcast i32* %num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #5
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts144 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str.9, i64 0, i64 0))
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %6 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !5
  switch i8 %7, label %if.else18 [
    i8 101, label %if.end21
    i8 69, label %if.end21
    i8 100, label %if.then17
    i8 68, label %if.then17
  ]

if.then17:                                        ; preds = %if.end, %if.end
  br label %if.end21

if.else18:                                        ; preds = %if.end
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str.9, i64 0, i64 0))
  tail call void @exit(i32 -1) #6
  unreachable

if.end21:                                         ; preds = %if.end, %if.end, %if.then17
  %encordec.0 = phi i32 [ 0, %if.then17 ], [ 1, %if.end ], [ 1, %if.end ]
  %arrayidx22 = getelementptr inbounds i8*, i8** %argv, i64 4
  %8 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end21, %while.cond.backedge
  %by.0157 = phi i32 [ 0, %if.end21 ], [ %sub, %while.cond.backedge ]
  %i.0156 = phi i32 [ 0, %if.end21 ], [ %inc, %while.cond.backedge ]
  %cp.0155 = phi i8* [ %8, %if.end21 ], [ %incdec.ptr, %while.cond.backedge ]
  %9 = load i8, i8* %cp.0155, align 1, !tbaa !5
  %tobool = icmp eq i8 %9, 0
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %conv25 = sext i8 %9 to i32
  %incdec.ptr = getelementptr inbounds i8, i8* %cp.0155, i64 1
  %call27 = tail call i32 (i32, ...) bitcast (i32 (...)* @toupper to i32 (i32, ...)*)(i32 %conv25) #5
  %sext = shl i32 %call27, 24
  %conv29 = ashr exact i32 %sext, 24
  %sext.off = add i32 %sext, -788529153
  %10 = icmp ult i32 %sext.off, 184549375
  br i1 %10, label %if.then35, label %if.else37

if.then35:                                        ; preds = %while.body
  %shl = shl i32 %by.0157, 4
  %add = add i32 %shl, -48
  br label %if.end54

if.else37:                                        ; preds = %while.body
  %sext.off146 = add i32 %sext, -1073741825
  %11 = icmp ult i32 %sext.off146, 117440511
  br i1 %11, label %if.then45, label %if.else51

if.then45:                                        ; preds = %if.else37
  %shl46 = shl i32 %by.0157, 4
  %add48 = add i32 %shl46, -55
  br label %if.end54

if.else51:                                        ; preds = %if.else37
  %puts143 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([36 x i8], [36 x i8]* @str.8, i64 0, i64 0))
  tail call void @exit(i32 -1) #6
  unreachable

if.end54:                                         ; preds = %if.then45, %if.then35
  %add.sink = phi i32 [ %add, %if.then35 ], [ %add48, %if.then45 ]
  %sub = add i32 %add.sink, %conv29
  %inc = add nuw nsw i32 %i.0156, 1
  %and = and i32 %i.0156, 1
  %tobool55 = icmp eq i32 %and, 0
  br i1 %tobool55, label %while.cond.backedge, label %if.then56

if.then56:                                        ; preds = %if.end54
  %conv58 = trunc i32 %sub to i8
  %div = sdiv i32 %inc, 2
  %sub59 = add nsw i32 %div, -1
  %idxprom = sext i32 %sub59 to i64
  %arrayidx60 = getelementptr inbounds [8 x i8], [8 x i8]* %ukey, i64 0, i64 %idxprom
  store i8 %conv58, i8* %arrayidx60, align 1, !tbaa !5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then56, %if.end54
  %cmp23 = icmp slt i32 %inc, 64
  br i1 %cmp23, label %land.rhs, label %while.end

while.end:                                        ; preds = %land.rhs, %while.cond.backedge
  %cp.0.lcssa = phi i8* [ %cp.0155, %land.rhs ], [ %incdec.ptr, %while.cond.backedge ]
  call void @BF_set_key(%struct.bf_key_st* nonnull %key, i32 8, i8* %1) #5
  %12 = load i8, i8* %cp.0.lcssa, align 1, !tbaa !5
  %tobool62 = icmp eq i8 %12, 0
  br i1 %tobool62, label %if.end65, label %if.then63

if.then63:                                        ; preds = %while.end
  %puts142 = call i32 @puts(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @str.7, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

if.end65:                                         ; preds = %while.end
  %arrayidx66 = getelementptr inbounds i8*, i8** %argv, i64 2
  %13 = load i8*, i8** %arrayidx66, align 8, !tbaa !1
  %call67 = call %struct._IO_FILE* @fopen(i8* %13, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %cmp68 = icmp eq %struct._IO_FILE* %call67, null
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end65
  %puts141 = call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str.9, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

if.end72:                                         ; preds = %if.end65
  %arrayidx73 = getelementptr inbounds i8*, i8** %argv, i64 3
  %14 = load i8*, i8** %arrayidx73, align 8, !tbaa !1
  %call74 = call %struct._IO_FILE* @fopen(i8* %14, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %cmp75 = icmp eq %struct._IO_FILE* %call74, null
  br i1 %cmp75, label %if.then77, label %while.cond80.preheader

while.cond80.preheader:                           ; preds = %if.end72
  %call81153 = call i32 @feof(%struct._IO_FILE* nonnull %call67) #5
  %lnot154 = icmp eq i32 %call81153, 0
  br i1 %lnot154, label %while.cond84.preheader.preheader, label %while.end109

while.cond84.preheader.preheader:                 ; preds = %while.cond80.preheader
  br label %while.cond84.preheader

if.then77:                                        ; preds = %if.end72
  %puts140 = call i32 @puts(i8* nonnull getelementptr inbounds ([44 x i8], [44 x i8]* @str.9, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

while.cond80.loopexit.loopexit:                   ; preds = %for.body
  br label %while.cond80.loopexit

while.cond80.loopexit:                            ; preds = %while.cond80.loopexit.loopexit, %while.end97.thread, %while.end97
  %call81 = call i32 @feof(%struct._IO_FILE* nonnull %call67) #5
  %lnot = icmp eq i32 %call81, 0
  br i1 %lnot, label %while.cond84.preheader, label %while.end109.loopexit, !llvm.loop !7

while.cond84.preheader:                           ; preds = %while.cond84.preheader.preheader, %while.cond80.loopexit
  %call85148 = call i32 @feof(%struct._IO_FILE* nonnull %call67) #5
  %not.tobool86149 = icmp eq i32 %call85148, 0
  br i1 %not.tobool86149, label %while.body91.preheader, label %while.end97.thread

while.body91.preheader:                           ; preds = %while.cond84.preheader
  br label %while.body91

while.end97.thread:                               ; preds = %while.cond84.preheader
  call void @BF_cfb64_encrypt(i8* %2, i8* %3, i64 0, %struct.bf_key_st* nonnull %key, i8* %4, i32* nonnull %num, i32 %encordec.0) #5
  br label %while.cond80.loopexit

while.body91:                                     ; preds = %while.body91.preheader, %while.body91
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body91 ], [ 0, %while.body91.preheader ]
  %call92 = call i32 @_IO_getc(%struct._IO_FILE* nonnull %call67)
  %conv93 = trunc i32 %call92 to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx96 = getelementptr inbounds [40 x i8], [40 x i8]* %indata, i64 0, i64 %indvars.iv
  store i8 %conv93, i8* %arrayidx96, align 1, !tbaa !5
  %call85 = call i32 @feof(%struct._IO_FILE* nonnull %call67) #5
  %cmp88 = icmp slt i64 %indvars.iv.next, 40
  %not.tobool86 = icmp eq i32 %call85, 0
  %15 = and i1 %cmp88, %not.tobool86
  br i1 %15, label %while.body91, label %while.end97

while.end97:                                      ; preds = %while.body91
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %while.body91 ]
  %16 = trunc i64 %indvars.iv.next.lcssa to i32
  %sext162 = shl i64 %indvars.iv.next.lcssa, 32
  %conv100 = ashr exact i64 %sext162, 32
  call void @BF_cfb64_encrypt(i8* nonnull %2, i8* %3, i64 %conv100, %struct.bf_key_st* nonnull %key, i8* %4, i32* nonnull %num, i32 %encordec.0) #5
  %cmp102151 = icmp sgt i32 %16, 0
  br i1 %cmp102151, label %for.body.preheader, label %while.cond80.loopexit

for.body.preheader:                               ; preds = %while.end97
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx105 = getelementptr inbounds [40 x i8], [40 x i8]* %outdata, i64 0, i64 %indvars.iv158
  %17 = load i8, i8* %arrayidx105, align 1, !tbaa !5
  %conv106 = zext i8 %17 to i32
  %call107 = call i32 @fputc(i32 %conv106, %struct._IO_FILE* nonnull %call74)
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next159 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %16
  br i1 %exitcond, label %while.cond80.loopexit.loopexit, label %for.body

while.end109.loopexit:                            ; preds = %while.cond80.loopexit
  br label %while.end109

while.end109:                                     ; preds = %while.end109.loopexit, %while.cond80.preheader
  %call110 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (...)* @close to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* nonnull %call67) #5
  %call111 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (...)* @close to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* nonnull %call74) #5
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i32 @toupper(...) #3

declare void @BF_set_key(%struct.bf_key_st*, i32, i8*) #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #4

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #4

declare void @BF_cfb64_encrypt(i8*, i8*, i64, %struct.bf_key_st*, i8*, i32*, i32) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

declare i32 @close(...) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.loop2recursion.copy.enable"}