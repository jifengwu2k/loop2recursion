; ModuleID = 'susan.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\00"
@str.32 = private unnamed_addr constant [30 x i8] c"-s : Smoothing mode (default)\00"
@str.33 = private unnamed_addr constant [16 x i8] c"-e : Edges mode\00"
@str.34 = private unnamed_addr constant [19 x i8] c"-c : Corners mode\0A\00"
@str.35 = private unnamed_addr constant [66 x i8] c"See source code for more information about setting the thresholds\00"
@str.36 = private unnamed_addr constant [59 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\00"
@str.37 = private unnamed_addr constant [106 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\00"
@str.38 = private unnamed_addr constant [48 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\00"
@str.39 = private unnamed_addr constant [78 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\00"
@str.40 = private unnamed_addr constant [110 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\00"
@str.41 = private unnamed_addr constant [107 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\00"
@str.42 = private unnamed_addr constant [90 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\00"
@str.43 = private unnamed_addr constant [76 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\00"
@str.44 = private unnamed_addr constant [60 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\00"
@str.45 = private unnamed_addr constant [39 x i8] c"as a float: see top \22defines\22 section.\00"
@str.46 = private unnamed_addr constant [25 x i8] c"No argument following -t\00"
@str.47 = private unnamed_addr constant [25 x i8] c"No argument following -d\00"

; Function Attrs: noreturn nounwind uwtable
define i32 @usage() #0 {
entry:
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @str, i64 0, i64 0))
  %puts13 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.32, i64 0, i64 0))
  %puts14 = tail call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.33, i64 0, i64 0))
  %puts15 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.34, i64 0, i64 0))
  %puts16 = tail call i32 @puts(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @str.35, i64 0, i64 0))
  %puts17 = tail call i32 @puts(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @str.36, i64 0, i64 0))
  %puts18 = tail call i32 @puts(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @str.37, i64 0, i64 0))
  %puts19 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str.38, i64 0, i64 0))
  %puts20 = tail call i32 @puts(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @str.39, i64 0, i64 0))
  %puts21 = tail call i32 @puts(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @str.40, i64 0, i64 0))
  %puts22 = tail call i32 @puts(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @str.41, i64 0, i64 0))
  %puts23 = tail call i32 @puts(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @str.42, i64 0, i64 0))
  %puts24 = tail call i32 @puts(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @str.43, i64 0, i64 0))
  tail call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @getint(%struct._IO_FILE* nocapture %fd) #3 {
entry:
  %dummy = alloca [10000 x i8], align 16
  %0 = getelementptr inbounds [10000 x i8], [10000 x i8]* %dummy, i64 0, i64 0
  call void @llvm.lifetime.start(i64 10000, i8* %0) #7
  %call = tail call i32 @_IO_getc(%struct._IO_FILE* %fd)
  br label %while.body

while.body:                                       ; preds = %entry, %if.end9
  %c.0 = phi i32 [ %call, %entry ], [ %call10, %if.end9 ]
  switch i32 %c.0, label %if.end5 [
    i32 35, label %if.end5.thread
    i32 -1, label %if.then3
  ]

if.end5.thread:                                   ; preds = %while.body
  %call1 = call i8* @fgets(i8* %0, i32 9000, %struct._IO_FILE* %fd)
  br label %if.end9

if.then3:                                         ; preds = %while.body
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #9
  call void @exit(i32 0) #8
  unreachable

if.end5:                                          ; preds = %while.body
  %c.0.off = add i32 %c.0, -48
  %2 = icmp ult i32 %c.0.off, 10
  br i1 %2, label %while.body12.preheader, label %if.end9

while.body12.preheader:                           ; preds = %if.end5
  %c.0.lcssa46 = phi i32 [ %c.0, %if.end5 ]
  br label %while.body12

if.end9:                                          ; preds = %if.end5.thread, %if.end5
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %fd)
  br label %while.body

while.body12:                                     ; preds = %while.body12.preheader, %while.body12
  %c.1 = phi i32 [ %call13, %while.body12 ], [ %c.0.lcssa46, %while.body12.preheader ]
  %i.0 = phi i32 [ %add, %while.body12 ], [ 0, %while.body12.preheader ]
  %mul = mul nsw i32 %i.0, 10
  %sub = add nsw i32 %c.1, -48
  %add = add nsw i32 %sub, %mul
  %call13 = call i32 @_IO_getc(%struct._IO_FILE* %fd)
  %cmp14 = icmp eq i32 %call13, -1
  %call13.off = add i32 %call13, -48
  %3 = icmp ugt i32 %call13.off, 9
  %or.cond = or i1 %cmp14, %3
  br i1 %or.cond, label %cleanup, label %while.body12

cleanup:                                          ; preds = %while.body12
  %add.lcssa = phi i32 [ %add, %while.body12 ]
  call void @llvm.lifetime.end(i64 10000, i8* %0) #7
  ret i32 %add.lcssa
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define void @get_image(i8* %filename, i8** nocapture %in, i32* nocapture %x_size, i32* nocapture %y_size) #3 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %filename) #9
  tail call void @exit(i32 0) #8
  unreachable

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @fgetc(%struct._IO_FILE* nonnull %call)
  %call3 = tail call i32 @fgetc(%struct._IO_FILE* nonnull %call)
  %sext.mask = and i32 %call2, 255
  %cmp8 = icmp eq i32 %sext.mask, 80
  %sext.mask48 = and i32 %call3, 255
  %cmp12 = icmp eq i32 %sext.mask48, 53
  %or.cond = and i1 %cmp8, %cmp12
  br i1 %or.cond, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i8* %filename) #9
  tail call void @exit(i32 0) #8
  unreachable

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @getint(%struct._IO_FILE* nonnull %call)
  store i32 %call17, i32* %x_size, align 4, !tbaa !5
  %call18 = tail call i32 @getint(%struct._IO_FILE* nonnull %call)
  store i32 %call18, i32* %y_size, align 4, !tbaa !5
  %call19 = tail call i32 @getint(%struct._IO_FILE* nonnull %call)
  %2 = load i32, i32* %x_size, align 4, !tbaa !5
  %3 = load i32, i32* %y_size, align 4, !tbaa !5
  %mul = mul nsw i32 %3, %2
  %conv20 = sext i32 %mul to i64
  %call21 = tail call noalias i8* @malloc(i64 %conv20) #7
  store i8* %call21, i8** %in, align 8, !tbaa !1
  %call24 = tail call i64 @fread(i8* %call21, i64 1, i64 %conv20, %struct._IO_FILE* nonnull %call)
  %cmp25 = icmp eq i64 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end16
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %filename) #9
  tail call void @exit(i32 0) #8
  unreachable

if.end29:                                         ; preds = %if.end16
  %call30 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  ret void
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @put_image(i8* %filename, i8* nocapture %in, i32 %x_size, i32 %y_size) #3 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %filename) #9
  tail call void @exit(i32 0) #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* nonnull %call)
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %call, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %x_size, i32 %y_size)
  %2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* nonnull %call)
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %call5 = tail call i64 @fwrite(i8* %in, i64 %conv, i64 1, %struct._IO_FILE* nonnull %call)
  %cmp6 = icmp eq i64 %call5, 1
  br i1 %cmp6, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8* %filename) #9
  tail call void @exit(i32 0) #8
  unreachable

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  ret i32 undef
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define i32 @int_to_uchar(i32* nocapture readonly %r, i8* nocapture %in, i32 %size) #5 {
entry:
  %0 = load i32, i32* %r, align 4, !tbaa !5
  %cmp49 = icmp sgt i32 %size, 0
  br i1 %cmp49, label %for.body.preheader, label %for.end23

for.body.preheader:                               ; preds = %entry
  %exitcond5766 = icmp eq i32 %size, 1
  br i1 %exitcond5766, label %for.end, label %for.body.for.body_crit_edge.lr.ph

for.body.for.body_crit_edge.lr.ph:                ; preds = %for.body.preheader
  %1 = add i32 %size, -2
  %2 = zext i32 %1 to i64
  %3 = add nuw nsw i64 %2, 1
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %for.body.for.body_crit_edge.preheader, label %min.iters.checked

min.iters.checked:                                ; preds = %for.body.for.body_crit_edge.lr.ph
  %n.vec = and i64 %3, 8589934584
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = or i64 %n.vec, 1
  %minmax.ident.splatinsert = insertelement <4 x i32> undef, i32 %0, i32 0
  %minmax.ident.splat = shufflevector <4 x i32> %minmax.ident.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert83 = insertelement <4 x i32> undef, i32 %0, i32 0
  %minmax.ident.splat84 = shufflevector <4 x i32> %minmax.ident.splatinsert83, <4 x i32> undef, <4 x i32> zeroinitializer
  br i1 %cmp.zero, label %for.body.for.body_crit_edge.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %4 = add i32 %size, -2
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 1
  %7 = and i64 %6, 8589934584
  %8 = add nsw i64 %7, -8
  %9 = lshr exact i64 %8, 3
  %10 = and i64 %9, 1
  %lcmp.mod100 = icmp eq i64 %10, 0
  br i1 %lcmp.mod100, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %11 = getelementptr inbounds i32, i32* %r, i64 1
  %12 = bitcast i32* %11 to <4 x i32>*
  %wide.load.prol = load <4 x i32>, <4 x i32>* %12, align 4, !tbaa !5
  %13 = getelementptr i32, i32* %r, i64 5
  %14 = bitcast i32* %13 to <4 x i32>*
  %wide.load75.prol = load <4 x i32>, <4 x i32>* %14, align 4, !tbaa !5
  %15 = icmp sgt <4 x i32> %wide.load.prol, %minmax.ident.splat84
  %16 = icmp sgt <4 x i32> %wide.load75.prol, %minmax.ident.splat84
  %17 = select <4 x i1> %15, <4 x i32> %wide.load.prol, <4 x i32> %minmax.ident.splat84
  %18 = select <4 x i1> %16, <4 x i32> %wide.load75.prol, <4 x i32> %minmax.ident.splat84
  %19 = icmp slt <4 x i32> %wide.load.prol, %minmax.ident.splat
  %20 = icmp slt <4 x i32> %wide.load75.prol, %minmax.ident.splat
  %21 = select <4 x i1> %19, <4 x i32> %wide.load.prol, <4 x i32> %minmax.ident.splat
  %22 = select <4 x i1> %20, <4 x i32> %wide.load75.prol, <4 x i32> %minmax.ident.splat
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %.lcssa98.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %22, %vector.body.prol ]
  %.lcssa97.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %21, %vector.body.prol ]
  %.lcssa96.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %18, %vector.body.prol ]
  %.lcssa.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %17, %vector.body.prol ]
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 8, %vector.body.prol ]
  %vec.phi.unr = phi <4 x i32> [ %minmax.ident.splat, %vector.body.preheader ], [ %21, %vector.body.prol ]
  %vec.phi72.unr = phi <4 x i32> [ %minmax.ident.splat, %vector.body.preheader ], [ %22, %vector.body.prol ]
  %vec.phi73.unr = phi <4 x i32> [ %minmax.ident.splat84, %vector.body.preheader ], [ %17, %vector.body.prol ]
  %vec.phi74.unr = phi <4 x i32> [ %minmax.ident.splat84, %vector.body.preheader ], [ %18, %vector.body.prol ]
  %23 = icmp eq i64 %9, 0
  br i1 %23, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i32> [ %vec.phi.unr, %vector.body.preheader.split.split ], [ %46, %vector.body ]
  %vec.phi72 = phi <4 x i32> [ %vec.phi72.unr, %vector.body.preheader.split.split ], [ %47, %vector.body ]
  %vec.phi73 = phi <4 x i32> [ %vec.phi73.unr, %vector.body.preheader.split.split ], [ %42, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ %vec.phi74.unr, %vector.body.preheader.split.split ], [ %43, %vector.body ]
  %offset.idx = or i64 %index, 1
  %24 = getelementptr inbounds i32, i32* %r, i64 %offset.idx
  %25 = bitcast i32* %24 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %25, align 4, !tbaa !5
  %26 = getelementptr i32, i32* %24, i64 4
  %27 = bitcast i32* %26 to <4 x i32>*
  %wide.load75 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !5
  %28 = icmp sgt <4 x i32> %wide.load, %vec.phi73
  %29 = icmp sgt <4 x i32> %wide.load75, %vec.phi74
  %30 = select <4 x i1> %28, <4 x i32> %wide.load, <4 x i32> %vec.phi73
  %31 = select <4 x i1> %29, <4 x i32> %wide.load75, <4 x i32> %vec.phi74
  %32 = icmp slt <4 x i32> %wide.load, %vec.phi
  %33 = icmp slt <4 x i32> %wide.load75, %vec.phi72
  %34 = select <4 x i1> %32, <4 x i32> %wide.load, <4 x i32> %vec.phi
  %35 = select <4 x i1> %33, <4 x i32> %wide.load75, <4 x i32> %vec.phi72
  %index.next = add i64 %index, 8
  %offset.idx.1 = or i64 %index.next, 1
  %36 = getelementptr inbounds i32, i32* %r, i64 %offset.idx.1
  %37 = bitcast i32* %36 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %37, align 4, !tbaa !5
  %38 = getelementptr i32, i32* %36, i64 4
  %39 = bitcast i32* %38 to <4 x i32>*
  %wide.load75.1 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !5
  %40 = icmp sgt <4 x i32> %wide.load.1, %30
  %41 = icmp sgt <4 x i32> %wide.load75.1, %31
  %42 = select <4 x i1> %40, <4 x i32> %wide.load.1, <4 x i32> %30
  %43 = select <4 x i1> %41, <4 x i32> %wide.load75.1, <4 x i32> %31
  %44 = icmp slt <4 x i32> %wide.load.1, %34
  %45 = icmp slt <4 x i32> %wide.load75.1, %35
  %46 = select <4 x i1> %44, <4 x i32> %wide.load.1, <4 x i32> %34
  %47 = select <4 x i1> %45, <4 x i32> %wide.load75.1, <4 x i32> %35
  %index.next.1 = add i64 %index, 16
  %48 = icmp eq i64 %index.next.1, %n.vec
  br i1 %48, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !7

middle.block.unr-lcssa:                           ; preds = %vector.body
  %.lcssa106 = phi <4 x i32> [ %47, %vector.body ]
  %.lcssa105 = phi <4 x i32> [ %46, %vector.body ]
  %.lcssa104 = phi <4 x i32> [ %43, %vector.body ]
  %.lcssa103 = phi <4 x i32> [ %42, %vector.body ]
  br label %middle.block

middle.block:                                     ; preds = %vector.body.preheader.split, %middle.block.unr-lcssa
  %.lcssa98 = phi <4 x i32> [ %.lcssa98.unr, %vector.body.preheader.split ], [ %.lcssa106, %middle.block.unr-lcssa ]
  %.lcssa97 = phi <4 x i32> [ %.lcssa97.unr, %vector.body.preheader.split ], [ %.lcssa105, %middle.block.unr-lcssa ]
  %.lcssa96 = phi <4 x i32> [ %.lcssa96.unr, %vector.body.preheader.split ], [ %.lcssa104, %middle.block.unr-lcssa ]
  %.lcssa = phi <4 x i32> [ %.lcssa.unr, %vector.body.preheader.split ], [ %.lcssa103, %middle.block.unr-lcssa ]
  %rdx.minmax.cmp85 = icmp sgt <4 x i32> %.lcssa, %.lcssa96
  %rdx.minmax.select86 = select <4 x i1> %rdx.minmax.cmp85, <4 x i32> %.lcssa, <4 x i32> %.lcssa96
  %rdx.shuf87 = shufflevector <4 x i32> %rdx.minmax.select86, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp88 = icmp sgt <4 x i32> %rdx.minmax.select86, %rdx.shuf87
  %rdx.minmax.select89 = select <4 x i1> %rdx.minmax.cmp88, <4 x i32> %rdx.minmax.select86, <4 x i32> %rdx.shuf87
  %rdx.shuf90 = shufflevector <4 x i32> %rdx.minmax.select89, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp91 = icmp sgt <4 x i32> %rdx.minmax.select89, %rdx.shuf90
  %rdx.minmax.cmp91.elt = extractelement <4 x i1> %rdx.minmax.cmp91, i32 0
  %rdx.minmax.select89.elt = extractelement <4 x i32> %rdx.minmax.select89, i32 0
  %rdx.shuf90.elt = extractelement <4 x i32> %rdx.minmax.select89, i32 1
  %49 = select i1 %rdx.minmax.cmp91.elt, i32 %rdx.minmax.select89.elt, i32 %rdx.shuf90.elt
  %rdx.minmax.cmp = icmp slt <4 x i32> %.lcssa97, %.lcssa98
  %rdx.minmax.select = select <4 x i1> %rdx.minmax.cmp, <4 x i32> %.lcssa97, <4 x i32> %.lcssa98
  %rdx.shuf = shufflevector <4 x i32> %rdx.minmax.select, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp78 = icmp slt <4 x i32> %rdx.minmax.select, %rdx.shuf
  %rdx.minmax.select79 = select <4 x i1> %rdx.minmax.cmp78, <4 x i32> %rdx.minmax.select, <4 x i32> %rdx.shuf
  %rdx.shuf80 = shufflevector <4 x i32> %rdx.minmax.select79, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp81 = icmp slt <4 x i32> %rdx.minmax.select79, %rdx.shuf80
  %rdx.minmax.cmp81.elt = extractelement <4 x i1> %rdx.minmax.cmp81, i32 0
  %rdx.minmax.select79.elt = extractelement <4 x i32> %rdx.minmax.select79, i32 0
  %rdx.shuf80.elt = extractelement <4 x i32> %rdx.minmax.select79, i32 1
  %50 = select i1 %rdx.minmax.cmp81.elt, i32 %rdx.minmax.select79.elt, i32 %rdx.shuf80.elt
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.for.body_crit_edge.preheader

for.body.for.body_crit_edge.preheader:            ; preds = %middle.block, %min.iters.checked, %for.body.for.body_crit_edge.lr.ph
  %indvars.iv.next5569.ph = phi i64 [ 1, %min.iters.checked ], [ 1, %for.body.for.body_crit_edge.lr.ph ], [ %ind.end, %middle.block ]
  %min_r.168.ph = phi i32 [ %0, %min.iters.checked ], [ %0, %for.body.for.body_crit_edge.lr.ph ], [ %50, %middle.block ]
  %.max_r.067.ph = phi i32 [ %0, %min.iters.checked ], [ %0, %for.body.for.body_crit_edge.lr.ph ], [ %49, %middle.block ]
  br label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body.for.body_crit_edge.preheader, %for.body.for.body_crit_edge
  %indvars.iv.next5569 = phi i64 [ %indvars.iv.next55, %for.body.for.body_crit_edge ], [ %indvars.iv.next5569.ph, %for.body.for.body_crit_edge.preheader ]
  %min_r.168 = phi i32 [ %min_r.1, %for.body.for.body_crit_edge ], [ %min_r.168.ph, %for.body.for.body_crit_edge.preheader ]
  %.max_r.067 = phi i32 [ %.max_r.0, %for.body.for.body_crit_edge ], [ %.max_r.067.ph, %for.body.for.body_crit_edge.preheader ]
  %arrayidx2.phi.trans.insert = getelementptr inbounds i32, i32* %r, i64 %indvars.iv.next5569
  %.pre = load i32, i32* %arrayidx2.phi.trans.insert, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %.pre, %.max_r.067
  %.max_r.0 = select i1 %cmp3, i32 %.pre, i32 %.max_r.067
  %cmp8 = icmp slt i32 %.pre, %min_r.168
  %min_r.1 = select i1 %cmp8, i32 %.pre, i32 %min_r.168
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv.next5569, 1
  %lftr.wideiv56 = trunc i64 %indvars.iv.next55 to i32
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %size
  br i1 %exitcond57, label %for.end.loopexit, label %for.body.for.body_crit_edge, !llvm.loop !10

for.end.loopexit:                                 ; preds = %for.body.for.body_crit_edge
  %min_r.1.lcssa102 = phi i32 [ %min_r.1, %for.body.for.body_crit_edge ]
  %.max_r.0.lcssa101 = phi i32 [ %.max_r.0, %for.body.for.body_crit_edge ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %middle.block, %for.body.preheader
  %min_r.1.lcssa = phi i32 [ %0, %for.body.preheader ], [ %50, %middle.block ], [ %min_r.1.lcssa102, %for.end.loopexit ]
  %.max_r.0.lcssa = phi i32 [ %0, %for.body.preheader ], [ %49, %middle.block ], [ %.max_r.0.lcssa101, %for.end.loopexit ]
  %sub = sub nsw i32 %.max_r.0.lcssa, %min_r.1.lcssa
  br i1 %cmp49, label %for.body15.preheader, label %for.end23

for.body15.preheader:                             ; preds = %for.end
  %sub1860 = sub nsw i32 %0, %min_r.1.lcssa
  %mul61 = mul nsw i32 %sub1860, 255
  %div62 = sdiv i32 %mul61, %sub
  %conv63 = trunc i32 %div62 to i8
  store i8 %conv63, i8* %in, align 1, !tbaa !12
  %exitcond64 = icmp eq i32 %size, 1
  br i1 %exitcond64, label %for.end23, label %for.body15.for.body15_crit_edge.preheader

for.body15.for.body15_crit_edge.preheader:        ; preds = %for.body15.preheader
  %51 = and i32 %size, 1
  %lcmp.mod = icmp eq i32 %51, 0
  br i1 %lcmp.mod, label %for.body15.for.body15_crit_edge.prol, label %for.body15.for.body15_crit_edge.preheader.split

for.body15.for.body15_crit_edge.prol:             ; preds = %for.body15.for.body15_crit_edge.preheader
  %arrayidx17.phi.trans.insert.prol = getelementptr inbounds i32, i32* %r, i64 1
  %.pre58.prol = load i32, i32* %arrayidx17.phi.trans.insert.prol, align 4, !tbaa !5
  %sub18.prol = sub nsw i32 %.pre58.prol, %min_r.1.lcssa
  %mul.prol = mul nsw i32 %sub18.prol, 255
  %div.prol = sdiv i32 %mul.prol, %sub
  %conv.prol = trunc i32 %div.prol to i8
  %arrayidx20.prol = getelementptr inbounds i8, i8* %in, i64 1
  store i8 %conv.prol, i8* %arrayidx20.prol, align 1, !tbaa !12
  br label %for.body15.for.body15_crit_edge.preheader.split

for.body15.for.body15_crit_edge.preheader.split:  ; preds = %for.body15.for.body15_crit_edge.prol, %for.body15.for.body15_crit_edge.preheader
  %indvars.iv.next65.unr = phi i64 [ 1, %for.body15.for.body15_crit_edge.preheader ], [ 2, %for.body15.for.body15_crit_edge.prol ]
  %52 = icmp eq i32 %size, 2
  br i1 %52, label %for.end23.loopexit, label %for.body15.for.body15_crit_edge.preheader.split.split

for.body15.for.body15_crit_edge.preheader.split.split: ; preds = %for.body15.for.body15_crit_edge.preheader.split
  br label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15.for.body15_crit_edge, %for.body15.for.body15_crit_edge.preheader.split.split
  %indvars.iv.next65 = phi i64 [ %indvars.iv.next65.unr, %for.body15.for.body15_crit_edge.preheader.split.split ], [ %indvars.iv.next.1, %for.body15.for.body15_crit_edge ]
  %arrayidx17.phi.trans.insert = getelementptr inbounds i32, i32* %r, i64 %indvars.iv.next65
  %.pre58 = load i32, i32* %arrayidx17.phi.trans.insert, align 4, !tbaa !5
  %sub18 = sub nsw i32 %.pre58, %min_r.1.lcssa
  %mul = mul nsw i32 %sub18, 255
  %div = sdiv i32 %mul, %sub
  %conv = trunc i32 %div to i8
  %arrayidx20 = getelementptr inbounds i8, i8* %in, i64 %indvars.iv.next65
  store i8 %conv, i8* %arrayidx20, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next65, 1
  %arrayidx17.phi.trans.insert.1 = getelementptr inbounds i32, i32* %r, i64 %indvars.iv.next
  %.pre58.1 = load i32, i32* %arrayidx17.phi.trans.insert.1, align 4, !tbaa !5
  %sub18.1 = sub nsw i32 %.pre58.1, %min_r.1.lcssa
  %mul.1 = mul nsw i32 %sub18.1, 255
  %div.1 = sdiv i32 %mul.1, %sub
  %conv.1 = trunc i32 %div.1 to i8
  %arrayidx20.1 = getelementptr inbounds i8, i8* %in, i64 %indvars.iv.next
  store i8 %conv.1, i8* %arrayidx20.1, align 1, !tbaa !12
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next65, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %size
  br i1 %exitcond.1, label %for.end23.loopexit.unr-lcssa, label %for.body15.for.body15_crit_edge

for.end23.loopexit.unr-lcssa:                     ; preds = %for.body15.for.body15_crit_edge
  br label %for.end23.loopexit

for.end23.loopexit:                               ; preds = %for.body15.for.body15_crit_edge.preheader.split, %for.end23.loopexit.unr-lcssa
  br label %for.end23

for.end23:                                        ; preds = %for.end23.loopexit, %for.body15.preheader, %entry, %for.end
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define void @setup_brightness_lut(i8** nocapture %bp, i32 %thresh, i32 %form) #3 {
entry:
  %call = tail call noalias i8* @malloc(i64 516) #7
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 258
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  %conv1 = sitofp i32 %thresh to float
  %cmp2 = icmp eq i32 %form, 6
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ -256, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = trunc i64 %indvars.iv to i32
  %conv = sitofp i32 %0 to float
  %div = fdiv float %conv, %conv1
  %mul = fmul float %div, %div
  %mul4 = fmul float %mul, %mul
  %mul5 = fmul float %mul, %mul4
  %temp.0 = select i1 %cmp2, float %mul5, float %mul
  %sub = fsub float -0.000000e+00, %temp.0
  %conv6 = fpext float %sub to double
  %call7 = tail call double @exp(double %conv6) #7
  %mul8 = fmul double %call7, 1.000000e+02
  %conv9 = fptrunc double %mul8 to float
  %conv10 = fptoui float %conv9 to i8
  %1 = load i8*, i8** %bp, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv
  store i8 %conv10, i8* %add.ptr11, align 1, !tbaa !12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: norecurse nounwind uwtable
define i32 @susan_principle(i8* nocapture readonly %in, i32* nocapture %r, i8* readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #5 {
entry:
  %0 = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %mul1, i32 4, i1 false)
  %sub = add i32 %y_size, -3
  %cmp431 = icmp sgt i32 %sub, 3
  br i1 %cmp431, label %for.cond3.preheader.lr.ph, label %for.end287

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add i32 %x_size, -3
  %cmp5429 = icmp sgt i32 %sub4, 3
  %idx.ext36 = sext i32 %sub4 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  %1 = sext i32 %x_size to i64
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc285, %for.cond3.preheader.lr.ph
  %indvars.iv434 = phi i64 [ 3, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next435, %for.inc285 ]
  br i1 %cmp5429, label %for.body7.lr.ph, label %for.inc285

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %2 = add nsw i64 %indvars.iv434, -3
  %3 = mul nsw i64 %2, %1
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %3
  %4 = mul nsw i64 %indvars.iv434, %1
  %5 = trunc i64 %4 to i32
  br label %for.body7

for.body7:                                        ; preds = %for.inc, %for.body7.lr.ph
  %indvars.iv = phi i64 [ 3, %for.body7.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.0430 = phi i32 [ 3, %for.body7.lr.ph ], [ %inc, %for.inc ]
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %add = add nsw i32 %j.0430, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %idx.ext15 = zext i8 %6 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %7 = load i8, i8* %add.ptr12, align 1, !tbaa !12
  %idx.ext18 = zext i8 %7 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %8 = load i8, i8* %add.ptr19, align 1, !tbaa !12
  %conv20 = zext i8 %8 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %9 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %idx.ext24 = zext i8 %9 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %10 = load i8, i8* %add.ptr26, align 1, !tbaa !12
  %conv27 = zext i8 %10 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %11 = load i8, i8* %incdec.ptr22, align 1, !tbaa !12
  %idx.ext30 = zext i8 %11 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %12 = load i8, i8* %add.ptr32, align 1, !tbaa !12
  %conv33 = zext i8 %12 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %idx.ext36
  %incdec.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 1
  %13 = load i8, i8* %add.ptr37, align 1, !tbaa !12
  %idx.ext40 = zext i8 %13 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg41
  %14 = load i8, i8* %add.ptr42, align 1, !tbaa !12
  %conv43 = zext i8 %14 to i32
  %add44 = add nuw nsw i32 %add34, %conv43
  %incdec.ptr45 = getelementptr inbounds i8, i8* %incdec.ptr38, i64 1
  %15 = load i8, i8* %incdec.ptr38, align 1, !tbaa !12
  %idx.ext47 = zext i8 %15 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg48
  %16 = load i8, i8* %add.ptr49, align 1, !tbaa !12
  %conv50 = zext i8 %16 to i32
  %add51 = add nuw nsw i32 %add44, %conv50
  %incdec.ptr52 = getelementptr inbounds i8, i8* %incdec.ptr45, i64 1
  %17 = load i8, i8* %incdec.ptr45, align 1, !tbaa !12
  %idx.ext54 = zext i8 %17 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg55
  %18 = load i8, i8* %add.ptr56, align 1, !tbaa !12
  %conv57 = zext i8 %18 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds i8, i8* %incdec.ptr52, i64 1
  %19 = load i8, i8* %incdec.ptr52, align 1, !tbaa !12
  %idx.ext61 = zext i8 %19 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg62
  %20 = load i8, i8* %add.ptr63, align 1, !tbaa !12
  %conv64 = zext i8 %20 to i32
  %add65 = add nsw i32 %add58, %conv64
  %21 = load i8, i8* %incdec.ptr59, align 1, !tbaa !12
  %idx.ext67 = zext i8 %21 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg68
  %22 = load i8, i8* %add.ptr69, align 1, !tbaa !12
  %conv70 = zext i8 %22 to i32
  %add71 = add nsw i32 %add65, %conv70
  %add.ptr74 = getelementptr inbounds i8, i8* %incdec.ptr59, i64 %idx.ext73
  %incdec.ptr75 = getelementptr inbounds i8, i8* %add.ptr74, i64 1
  %23 = load i8, i8* %add.ptr74, align 1, !tbaa !12
  %idx.ext77 = zext i8 %23 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg78
  %24 = load i8, i8* %add.ptr79, align 1, !tbaa !12
  %conv80 = zext i8 %24 to i32
  %add81 = add nsw i32 %add71, %conv80
  %incdec.ptr82 = getelementptr inbounds i8, i8* %incdec.ptr75, i64 1
  %25 = load i8, i8* %incdec.ptr75, align 1, !tbaa !12
  %idx.ext84 = zext i8 %25 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg85
  %26 = load i8, i8* %add.ptr86, align 1, !tbaa !12
  %conv87 = zext i8 %26 to i32
  %add88 = add nsw i32 %add81, %conv87
  %incdec.ptr89 = getelementptr inbounds i8, i8* %incdec.ptr82, i64 1
  %27 = load i8, i8* %incdec.ptr82, align 1, !tbaa !12
  %idx.ext91 = zext i8 %27 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg92
  %28 = load i8, i8* %add.ptr93, align 1, !tbaa !12
  %conv94 = zext i8 %28 to i32
  %add95 = add nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds i8, i8* %incdec.ptr89, i64 1
  %29 = load i8, i8* %incdec.ptr89, align 1, !tbaa !12
  %idx.ext98 = zext i8 %29 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg99
  %30 = load i8, i8* %add.ptr100, align 1, !tbaa !12
  %conv101 = zext i8 %30 to i32
  %add102 = add nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds i8, i8* %incdec.ptr96, i64 1
  %31 = load i8, i8* %incdec.ptr96, align 1, !tbaa !12
  %idx.ext105 = zext i8 %31 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg106
  %32 = load i8, i8* %add.ptr107, align 1, !tbaa !12
  %conv108 = zext i8 %32 to i32
  %add109 = add nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds i8, i8* %incdec.ptr103, i64 1
  %33 = load i8, i8* %incdec.ptr103, align 1, !tbaa !12
  %idx.ext112 = zext i8 %33 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg113
  %34 = load i8, i8* %add.ptr114, align 1, !tbaa !12
  %conv115 = zext i8 %34 to i32
  %add116 = add nsw i32 %add109, %conv115
  %35 = load i8, i8* %incdec.ptr110, align 1, !tbaa !12
  %idx.ext118 = zext i8 %35 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg119
  %36 = load i8, i8* %add.ptr120, align 1, !tbaa !12
  %conv121 = zext i8 %36 to i32
  %add122 = add nsw i32 %add116, %conv121
  %add.ptr125 = getelementptr inbounds i8, i8* %incdec.ptr110, i64 %idx.ext124
  %incdec.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 1
  %37 = load i8, i8* %add.ptr125, align 1, !tbaa !12
  %idx.ext128 = zext i8 %37 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg129
  %38 = load i8, i8* %add.ptr130, align 1, !tbaa !12
  %conv131 = zext i8 %38 to i32
  %add132 = add nsw i32 %add122, %conv131
  %incdec.ptr133 = getelementptr inbounds i8, i8* %incdec.ptr126, i64 1
  %39 = load i8, i8* %incdec.ptr126, align 1, !tbaa !12
  %idx.ext135 = zext i8 %39 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg136
  %40 = load i8, i8* %add.ptr137, align 1, !tbaa !12
  %conv138 = zext i8 %40 to i32
  %add139 = add nsw i32 %add132, %conv138
  %41 = load i8, i8* %incdec.ptr133, align 1, !tbaa !12
  %idx.ext141 = zext i8 %41 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg142
  %42 = load i8, i8* %add.ptr143, align 1, !tbaa !12
  %conv144 = zext i8 %42 to i32
  %add145 = add nsw i32 %add139, %conv144
  %add.ptr146 = getelementptr inbounds i8, i8* %incdec.ptr133, i64 2
  %incdec.ptr147 = getelementptr inbounds i8, i8* %add.ptr146, i64 1
  %43 = load i8, i8* %add.ptr146, align 1, !tbaa !12
  %idx.ext149 = zext i8 %43 to i64
  %idx.neg150 = sub nsw i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg150
  %44 = load i8, i8* %add.ptr151, align 1, !tbaa !12
  %conv152 = zext i8 %44 to i32
  %add153 = add nsw i32 %add145, %conv152
  %incdec.ptr154 = getelementptr inbounds i8, i8* %incdec.ptr147, i64 1
  %45 = load i8, i8* %incdec.ptr147, align 1, !tbaa !12
  %idx.ext156 = zext i8 %45 to i64
  %idx.neg157 = sub nsw i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg157
  %46 = load i8, i8* %add.ptr158, align 1, !tbaa !12
  %conv159 = zext i8 %46 to i32
  %add160 = add nsw i32 %add153, %conv159
  %47 = load i8, i8* %incdec.ptr154, align 1, !tbaa !12
  %idx.ext162 = zext i8 %47 to i64
  %idx.neg163 = sub nsw i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg163
  %48 = load i8, i8* %add.ptr164, align 1, !tbaa !12
  %conv165 = zext i8 %48 to i32
  %add166 = add nsw i32 %add160, %conv165
  %add.ptr169 = getelementptr inbounds i8, i8* %incdec.ptr154, i64 %idx.ext124
  %incdec.ptr170 = getelementptr inbounds i8, i8* %add.ptr169, i64 1
  %49 = load i8, i8* %add.ptr169, align 1, !tbaa !12
  %idx.ext172 = zext i8 %49 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg173
  %50 = load i8, i8* %add.ptr174, align 1, !tbaa !12
  %conv175 = zext i8 %50 to i32
  %add176 = add nsw i32 %add166, %conv175
  %incdec.ptr177 = getelementptr inbounds i8, i8* %incdec.ptr170, i64 1
  %51 = load i8, i8* %incdec.ptr170, align 1, !tbaa !12
  %idx.ext179 = zext i8 %51 to i64
  %idx.neg180 = sub nsw i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg180
  %52 = load i8, i8* %add.ptr181, align 1, !tbaa !12
  %conv182 = zext i8 %52 to i32
  %add183 = add nsw i32 %add176, %conv182
  %incdec.ptr184 = getelementptr inbounds i8, i8* %incdec.ptr177, i64 1
  %53 = load i8, i8* %incdec.ptr177, align 1, !tbaa !12
  %idx.ext186 = zext i8 %53 to i64
  %idx.neg187 = sub nsw i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg187
  %54 = load i8, i8* %add.ptr188, align 1, !tbaa !12
  %conv189 = zext i8 %54 to i32
  %add190 = add nsw i32 %add183, %conv189
  %incdec.ptr191 = getelementptr inbounds i8, i8* %incdec.ptr184, i64 1
  %55 = load i8, i8* %incdec.ptr184, align 1, !tbaa !12
  %idx.ext193 = zext i8 %55 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg194
  %56 = load i8, i8* %add.ptr195, align 1, !tbaa !12
  %conv196 = zext i8 %56 to i32
  %add197 = add nsw i32 %add190, %conv196
  %incdec.ptr198 = getelementptr inbounds i8, i8* %incdec.ptr191, i64 1
  %57 = load i8, i8* %incdec.ptr191, align 1, !tbaa !12
  %idx.ext200 = zext i8 %57 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg201
  %58 = load i8, i8* %add.ptr202, align 1, !tbaa !12
  %conv203 = zext i8 %58 to i32
  %add204 = add nsw i32 %add197, %conv203
  %incdec.ptr205 = getelementptr inbounds i8, i8* %incdec.ptr198, i64 1
  %59 = load i8, i8* %incdec.ptr198, align 1, !tbaa !12
  %idx.ext207 = zext i8 %59 to i64
  %idx.neg208 = sub nsw i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg208
  %60 = load i8, i8* %add.ptr209, align 1, !tbaa !12
  %conv210 = zext i8 %60 to i32
  %add211 = add nsw i32 %add204, %conv210
  %61 = load i8, i8* %incdec.ptr205, align 1, !tbaa !12
  %idx.ext213 = zext i8 %61 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg214
  %62 = load i8, i8* %add.ptr215, align 1, !tbaa !12
  %conv216 = zext i8 %62 to i32
  %add217 = add nsw i32 %add211, %conv216
  %add.ptr220 = getelementptr inbounds i8, i8* %incdec.ptr205, i64 %idx.ext73
  %incdec.ptr221 = getelementptr inbounds i8, i8* %add.ptr220, i64 1
  %63 = load i8, i8* %add.ptr220, align 1, !tbaa !12
  %idx.ext223 = zext i8 %63 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg224
  %64 = load i8, i8* %add.ptr225, align 1, !tbaa !12
  %conv226 = zext i8 %64 to i32
  %add227 = add nsw i32 %add217, %conv226
  %incdec.ptr228 = getelementptr inbounds i8, i8* %incdec.ptr221, i64 1
  %65 = load i8, i8* %incdec.ptr221, align 1, !tbaa !12
  %idx.ext230 = zext i8 %65 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg231
  %66 = load i8, i8* %add.ptr232, align 1, !tbaa !12
  %conv233 = zext i8 %66 to i32
  %add234 = add nsw i32 %add227, %conv233
  %incdec.ptr235 = getelementptr inbounds i8, i8* %incdec.ptr228, i64 1
  %67 = load i8, i8* %incdec.ptr228, align 1, !tbaa !12
  %idx.ext237 = zext i8 %67 to i64
  %idx.neg238 = sub nsw i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg238
  %68 = load i8, i8* %add.ptr239, align 1, !tbaa !12
  %conv240 = zext i8 %68 to i32
  %add241 = add nsw i32 %add234, %conv240
  %incdec.ptr242 = getelementptr inbounds i8, i8* %incdec.ptr235, i64 1
  %69 = load i8, i8* %incdec.ptr235, align 1, !tbaa !12
  %idx.ext244 = zext i8 %69 to i64
  %idx.neg245 = sub nsw i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg245
  %70 = load i8, i8* %add.ptr246, align 1, !tbaa !12
  %conv247 = zext i8 %70 to i32
  %add248 = add nsw i32 %add241, %conv247
  %71 = load i8, i8* %incdec.ptr242, align 1, !tbaa !12
  %idx.ext250 = zext i8 %71 to i64
  %idx.neg251 = sub nsw i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg251
  %72 = load i8, i8* %add.ptr252, align 1, !tbaa !12
  %conv253 = zext i8 %72 to i32
  %add254 = add nsw i32 %add248, %conv253
  %add.ptr257 = getelementptr inbounds i8, i8* %incdec.ptr242, i64 %idx.ext36
  %incdec.ptr258 = getelementptr inbounds i8, i8* %add.ptr257, i64 1
  %73 = load i8, i8* %add.ptr257, align 1, !tbaa !12
  %idx.ext260 = zext i8 %73 to i64
  %idx.neg261 = sub nsw i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg261
  %74 = load i8, i8* %add.ptr262, align 1, !tbaa !12
  %conv263 = zext i8 %74 to i32
  %add264 = add nsw i32 %add254, %conv263
  %incdec.ptr265 = getelementptr inbounds i8, i8* %incdec.ptr258, i64 1
  %75 = load i8, i8* %incdec.ptr258, align 1, !tbaa !12
  %idx.ext267 = zext i8 %75 to i64
  %idx.neg268 = sub nsw i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg268
  %76 = load i8, i8* %add.ptr269, align 1, !tbaa !12
  %conv270 = zext i8 %76 to i32
  %add271 = add nsw i32 %add264, %conv270
  %77 = load i8, i8* %incdec.ptr265, align 1, !tbaa !12
  %idx.ext273 = zext i8 %77 to i64
  %idx.neg274 = sub nsw i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg274
  %78 = load i8, i8* %add.ptr275, align 1, !tbaa !12
  %conv276 = zext i8 %78 to i32
  %add277 = add nsw i32 %add271, %conv276
  %cmp278 = icmp sgt i32 %add277, %max_no
  br i1 %cmp278, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body7
  %sub280 = sub nsw i32 %max_no, %add277
  %arrayidx284 = getelementptr inbounds i32, i32* %r, i64 %idxprom
  store i32 %sub280, i32* %arrayidx284, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc = add nuw nsw i32 %j.0430, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub4
  br i1 %exitcond, label %for.inc285.loopexit, label %for.body7

for.inc285.loopexit:                              ; preds = %for.inc
  br label %for.inc285

for.inc285:                                       ; preds = %for.inc285.loopexit, %for.cond3.preheader
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1
  %lftr.wideiv439 = trunc i64 %indvars.iv.next435 to i32
  %exitcond440 = icmp eq i32 %lftr.wideiv439, %sub
  br i1 %exitcond440, label %for.end287.loopexit, label %for.cond3.preheader

for.end287.loopexit:                              ; preds = %for.inc285
  br label %for.end287

for.end287:                                       ; preds = %for.end287.loopexit, %entry
  ret i32 undef
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: norecurse nounwind uwtable
define i32 @susan_principle_small(i8* nocapture readonly %in, i32* nocapture %r, i8* nocapture readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #5 {
entry:
  %0 = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %mul1, i32 4, i1 false)
  %sub = add i32 %y_size, -1
  %cmp135 = icmp sgt i32 %sub, 1
  br i1 %cmp135, label %for.cond3.preheader.lr.ph, label %for.end83

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add nsw i32 %x_size, -1
  %cmp5133 = icmp sgt i32 %sub4, 1
  %sub35 = add nsw i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  %1 = sext i32 %x_size to i64
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc81, %for.cond3.preheader.lr.ph
  %indvars.iv138 = phi i64 [ 1, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next139, %for.inc81 ]
  br i1 %cmp5133, label %for.body7.lr.ph, label %for.inc81

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %2 = add nsw i64 %indvars.iv138, -1
  %3 = mul nsw i64 %2, %1
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %3
  %4 = mul nsw i64 %indvars.iv138, %1
  %5 = trunc i64 %4 to i32
  br label %for.body7

for.body7:                                        ; preds = %for.inc, %for.body7.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body7.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %j.0134 = phi i32 [ 1, %for.body7.lr.ph ], [ %inc, %for.inc ]
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %add = add nsw i32 %j.0134, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %idx.ext15 = zext i8 %6 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %7 = load i8, i8* %add.ptr12, align 1, !tbaa !12
  %idx.ext18 = zext i8 %7 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %8 = load i8, i8* %add.ptr19, align 1, !tbaa !12
  %conv20 = zext i8 %8 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %9 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %idx.ext24 = zext i8 %9 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %10 = load i8, i8* %add.ptr26, align 1, !tbaa !12
  %conv27 = zext i8 %10 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %11 = load i8, i8* %incdec.ptr22, align 1, !tbaa !12
  %idx.ext30 = zext i8 %11 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %12 = load i8, i8* %add.ptr32, align 1, !tbaa !12
  %conv33 = zext i8 %12 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %idx.ext36
  %13 = load i8, i8* %add.ptr37, align 1, !tbaa !12
  %idx.ext39 = zext i8 %13 to i64
  %idx.neg40 = sub nsw i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg40
  %14 = load i8, i8* %add.ptr41, align 1, !tbaa !12
  %conv42 = zext i8 %14 to i32
  %add43 = add nuw nsw i32 %add34, %conv42
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr37, i64 2
  %15 = load i8, i8* %add.ptr44, align 1, !tbaa !12
  %idx.ext46 = zext i8 %15 to i64
  %idx.neg47 = sub nsw i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg47
  %16 = load i8, i8* %add.ptr48, align 1, !tbaa !12
  %conv49 = zext i8 %16 to i32
  %add50 = add nuw nsw i32 %add43, %conv49
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr44, i64 %idx.ext36
  %incdec.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 1
  %17 = load i8, i8* %add.ptr53, align 1, !tbaa !12
  %idx.ext56 = zext i8 %17 to i64
  %idx.neg57 = sub nsw i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg57
  %18 = load i8, i8* %add.ptr58, align 1, !tbaa !12
  %conv59 = zext i8 %18 to i32
  %add60 = add nuw nsw i32 %add50, %conv59
  %incdec.ptr61 = getelementptr inbounds i8, i8* %incdec.ptr54, i64 1
  %19 = load i8, i8* %incdec.ptr54, align 1, !tbaa !12
  %idx.ext63 = zext i8 %19 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg64
  %20 = load i8, i8* %add.ptr65, align 1, !tbaa !12
  %conv66 = zext i8 %20 to i32
  %add67 = add nsw i32 %add60, %conv66
  %21 = load i8, i8* %incdec.ptr61, align 1, !tbaa !12
  %idx.ext69 = zext i8 %21 to i64
  %idx.neg70 = sub nsw i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg70
  %22 = load i8, i8* %add.ptr71, align 1, !tbaa !12
  %conv72 = zext i8 %22 to i32
  %add73 = add nsw i32 %add67, %conv72
  %cmp74 = icmp slt i32 %add73, 731
  br i1 %cmp74, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %sub76 = sub nsw i32 730, %add73
  %arrayidx80 = getelementptr inbounds i32, i32* %r, i64 %idxprom
  store i32 %sub76, i32* %arrayidx80, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc = add nuw nsw i32 %j.0134, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub4
  br i1 %exitcond, label %for.inc81.loopexit, label %for.body7

for.inc81.loopexit:                               ; preds = %for.inc
  br label %for.inc81

for.inc81:                                        ; preds = %for.inc81.loopexit, %for.cond3.preheader
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %lftr.wideiv143 = trunc i64 %indvars.iv.next139 to i32
  %exitcond144 = icmp eq i32 %lftr.wideiv143, %sub
  br i1 %exitcond144, label %for.end83.loopexit, label %for.cond3.preheader

for.end83.loopexit:                               ; preds = %for.inc81
  br label %for.end83

for.end83:                                        ; preds = %for.end83.loopexit, %entry
  ret i32 undef
}

; Function Attrs: norecurse nounwind readonly uwtable
define zeroext i8 @median(i8* nocapture readonly %in, i32 %i, i32 %j, i32 %x_size) #6 {
for.body60.preheader:
  %p = alloca [8 x i32], align 16
  %0 = bitcast [8 x i32]* %p to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #7
  %sub = add nsw i32 %i, -1
  %mul = mul nsw i32 %sub, %x_size
  %add = add nsw i32 %mul, %j
  %sub1 = add nsw i32 %add, -1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv = zext i8 %1 to i32
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %conv, i32* %arrayidx2, align 16, !tbaa !5
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %in, i64 %idxprom6
  %2 = load i8, i8* %arrayidx7, align 1, !tbaa !12
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %add13 = add nsw i32 %add, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %in, i64 %idxprom14
  %3 = load i8, i8* %arrayidx15, align 1, !tbaa !12
  %mul18 = mul nsw i32 %x_size, %i
  %add19 = add nsw i32 %mul18, %j
  %sub20 = add nsw i32 %add19, -1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %in, i64 %idxprom21
  %4 = load i8, i8* %arrayidx22, align 1, !tbaa !12
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %add27 = add nsw i32 %add19, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %in, i64 %idxprom28
  %5 = load i8, i8* %arrayidx29, align 1, !tbaa !12
  %6 = insertelement <4 x i8> undef, i8 %2, i32 0
  %7 = insertelement <4 x i8> %6, i8 %3, i32 1
  %8 = insertelement <4 x i8> %7, i8 %4, i32 2
  %9 = insertelement <4 x i8> %8, i8 %5, i32 3
  %10 = zext <4 x i8> %9 to <4 x i32>
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %11 = bitcast i32* %arrayidx9 to <4 x i32>*
  store <4 x i32> %10, <4 x i32>* %11, align 4, !tbaa !5
  %add32 = add nsw i32 %i, 1
  %mul33 = mul nsw i32 %add32, %x_size
  %add34 = add nsw i32 %mul33, %j
  %sub35 = add nsw i32 %add34, -1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %in, i64 %idxprom36
  %12 = load i8, i8* %arrayidx37, align 1, !tbaa !12
  %conv38 = zext i8 %12 to i32
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  store i32 %conv38, i32* %arrayidx39, align 4, !tbaa !5
  %idxprom43 = sext i32 %add34 to i64
  %arrayidx44 = getelementptr inbounds i8, i8* %in, i64 %idxprom43
  %13 = load i8, i8* %arrayidx44, align 1, !tbaa !12
  %conv45 = zext i8 %13 to i32
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 6
  store i32 %conv45, i32* %arrayidx46, align 8, !tbaa !5
  %add50 = add nsw i32 %add34, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, i8* %in, i64 %idxprom51
  %14 = load i8, i8* %arrayidx52, align 1, !tbaa !12
  %conv53 = zext i8 %14 to i32
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 7
  store i32 %conv53, i32* %arrayidx54, align 4, !tbaa !5
  br label %for.body60

for.body60:                                       ; preds = %for.body60.preheader
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %15 = load i32, i32* %arrayidx65, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %conv, %15
  br i1 %cmp66, label %if.then, label %for.cond56.backedge

for.cond56.backedge:                              ; preds = %for.body60, %if.then
  %16 = phi i32 [ %15, %for.body60 ], [ %conv, %if.then ]
  %arrayidx65.1136 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %17 = load i32, i32* %arrayidx65.1136, align 8, !tbaa !5
  %cmp66.1137 = icmp sgt i32 %16, %17
  br i1 %cmp66.1137, label %if.then.1140, label %for.cond56.backedge.1141

if.then:                                          ; preds = %for.body60
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %15, i32* %arrayidx62, align 16, !tbaa !5
  store i32 %conv, i32* %arrayidx65, align 4, !tbaa !5
  br label %for.cond56.backedge

for.body60.1:                                     ; preds = %for.cond56.backedge.6
  %arrayidx65.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %18 = load i32, i32* %arrayidx65.1, align 4, !tbaa !5
  %cmp66.1 = icmp sgt i32 %.pre, %18
  br i1 %cmp66.1, label %if.then.1, label %for.cond56.backedge.1

if.then.1:                                        ; preds = %for.body60.1
  %arrayidx62.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %18, i32* %arrayidx62.1, align 16, !tbaa !5
  store i32 %.pre, i32* %arrayidx65.1, align 4, !tbaa !5
  br label %for.cond56.backedge.1

for.cond56.backedge.1:                            ; preds = %if.then.1, %for.body60.1
  %19 = phi i32 [ %.pre, %if.then.1 ], [ %18, %for.body60.1 ]
  %arrayidx65.1.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %20 = load i32, i32* %arrayidx65.1.1, align 8, !tbaa !5
  %cmp66.1.1 = icmp sgt i32 %19, %20
  br i1 %cmp66.1.1, label %if.then.1.1, label %for.cond56.backedge.1.1

for.body60.2:                                     ; preds = %for.cond56.backedge.1.5
  %arrayidx65.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %21 = load i32, i32* %arrayidx65.2, align 4, !tbaa !5
  %cmp66.2 = icmp sgt i32 %.pre131, %21
  br i1 %cmp66.2, label %if.then.2, label %for.cond56.backedge.2

if.then.2:                                        ; preds = %for.body60.2
  %arrayidx62.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %21, i32* %arrayidx62.2, align 16, !tbaa !5
  store i32 %.pre131, i32* %arrayidx65.2, align 4, !tbaa !5
  br label %for.cond56.backedge.2

for.cond56.backedge.2:                            ; preds = %if.then.2, %for.body60.2
  %22 = phi i32 [ %.pre131, %if.then.2 ], [ %21, %for.body60.2 ]
  %arrayidx65.2.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %23 = load i32, i32* %arrayidx65.2.1, align 8, !tbaa !5
  %cmp66.2.1 = icmp sgt i32 %22, %23
  br i1 %cmp66.2.1, label %if.then.2.1, label %for.cond56.backedge.2.1

for.body60.3:                                     ; preds = %for.cond56.backedge.2.4
  %arrayidx65.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %24 = load i32, i32* %arrayidx65.3, align 4, !tbaa !5
  %cmp66.3 = icmp sgt i32 %.pre132, %24
  br i1 %cmp66.3, label %if.then.3, label %for.cond56.backedge.3

if.then.3:                                        ; preds = %for.body60.3
  %arrayidx62.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %24, i32* %arrayidx62.3, align 16, !tbaa !5
  store i32 %.pre132, i32* %arrayidx65.3, align 4, !tbaa !5
  br label %for.cond56.backedge.3

for.cond56.backedge.3:                            ; preds = %if.then.3, %for.body60.3
  %25 = phi i32 [ %.pre132, %if.then.3 ], [ %24, %for.body60.3 ]
  %arrayidx65.3.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %26 = load i32, i32* %arrayidx65.3.1, align 8, !tbaa !5
  %cmp66.3.1 = icmp sgt i32 %25, %26
  br i1 %cmp66.3.1, label %if.then.3.1, label %for.cond56.backedge.3.1

for.body60.4:                                     ; preds = %for.cond56.backedge.3.3
  %arrayidx65.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %27 = load i32, i32* %arrayidx65.4, align 4, !tbaa !5
  %cmp66.4 = icmp sgt i32 %.pre133, %27
  br i1 %cmp66.4, label %if.then.4, label %for.cond56.backedge.4

if.then.4:                                        ; preds = %for.body60.4
  %arrayidx62.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %27, i32* %arrayidx62.4, align 16, !tbaa !5
  store i32 %.pre133, i32* %arrayidx65.4, align 4, !tbaa !5
  br label %for.cond56.backedge.4

for.cond56.backedge.4:                            ; preds = %if.then.4, %for.body60.4
  %28 = phi i32 [ %.pre133, %if.then.4 ], [ %27, %for.body60.4 ]
  %arrayidx65.4.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %29 = load i32, i32* %arrayidx65.4.1, align 8, !tbaa !5
  %cmp66.4.1 = icmp sgt i32 %28, %29
  br i1 %cmp66.4.1, label %if.then.4.1, label %for.cond56.backedge.4.1

for.body60.5:                                     ; preds = %for.cond56.backedge.4.2
  %arrayidx65.5 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %30 = load i32, i32* %arrayidx65.5, align 4, !tbaa !5
  %cmp66.5 = icmp sgt i32 %.pre134, %30
  br i1 %cmp66.5, label %if.then.5, label %for.cond56.backedge.5

if.then.5:                                        ; preds = %for.body60.5
  %arrayidx62.5 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %30, i32* %arrayidx62.5, align 16, !tbaa !5
  store i32 %.pre134, i32* %arrayidx65.5, align 4, !tbaa !5
  br label %for.cond56.backedge.5

for.cond56.backedge.5:                            ; preds = %if.then.5, %for.body60.5
  %31 = phi i32 [ %.pre134, %if.then.5 ], [ %30, %for.body60.5 ]
  %arrayidx65.5.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %32 = load i32, i32* %arrayidx65.5.1, align 8, !tbaa !5
  %cmp66.5.1 = icmp sgt i32 %31, %32
  br i1 %cmp66.5.1, label %if.then.5.1, label %for.cond56.backedge.5.1

if.then.6:                                        ; preds = %for.cond56.backedge.5.1
  %arrayidx62.6 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %35, i32* %arrayidx62.6, align 16, !tbaa !5
  store i32 %.pre135, i32* %arrayidx65.6, align 4, !tbaa !5
  br label %for.inc78.6

for.inc78.6:                                      ; preds = %if.then.6, %for.cond56.backedge.5.1
  %33 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %34 = load i32, i32* %arrayidx31, align 16, !tbaa !5
  %add83 = add nsw i32 %34, %33
  %div = sdiv i32 %add83, 2
  %conv84 = trunc i32 %div to i8
  call void @llvm.lifetime.end(i64 32, i8* nonnull %0) #7
  ret i8 %conv84

if.then.5.1:                                      ; preds = %for.cond56.backedge.5
  %arrayidx62.5.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %32, i32* %arrayidx62.5.1, align 4, !tbaa !5
  store i32 %31, i32* %arrayidx65.5.1, align 8, !tbaa !5
  br label %for.cond56.backedge.5.1

for.cond56.backedge.5.1:                          ; preds = %if.then.5.1, %for.cond56.backedge.5
  %.pre135 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  %arrayidx65.6 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %35 = load i32, i32* %arrayidx65.6, align 4, !tbaa !5
  %cmp66.6 = icmp sgt i32 %.pre135, %35
  br i1 %cmp66.6, label %if.then.6, label %for.inc78.6

if.then.4.1:                                      ; preds = %for.cond56.backedge.4
  %arrayidx62.4.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %29, i32* %arrayidx62.4.1, align 4, !tbaa !5
  store i32 %28, i32* %arrayidx65.4.1, align 8, !tbaa !5
  br label %for.cond56.backedge.4.1

for.cond56.backedge.4.1:                          ; preds = %if.then.4.1, %for.cond56.backedge.4
  %36 = phi i32 [ %28, %if.then.4.1 ], [ %29, %for.cond56.backedge.4 ]
  %arrayidx65.4.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %37 = load i32, i32* %arrayidx65.4.2, align 4, !tbaa !5
  %cmp66.4.2 = icmp sgt i32 %36, %37
  br i1 %cmp66.4.2, label %if.then.4.2, label %for.cond56.backedge.4.2

if.then.4.2:                                      ; preds = %for.cond56.backedge.4.1
  %arrayidx62.4.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %37, i32* %arrayidx62.4.2, align 8, !tbaa !5
  store i32 %36, i32* %arrayidx65.4.2, align 4, !tbaa !5
  br label %for.cond56.backedge.4.2

for.cond56.backedge.4.2:                          ; preds = %if.then.4.2, %for.cond56.backedge.4.1
  %.pre134 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.5

if.then.3.1:                                      ; preds = %for.cond56.backedge.3
  %arrayidx62.3.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %26, i32* %arrayidx62.3.1, align 4, !tbaa !5
  store i32 %25, i32* %arrayidx65.3.1, align 8, !tbaa !5
  br label %for.cond56.backedge.3.1

for.cond56.backedge.3.1:                          ; preds = %if.then.3.1, %for.cond56.backedge.3
  %38 = phi i32 [ %25, %if.then.3.1 ], [ %26, %for.cond56.backedge.3 ]
  %arrayidx65.3.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %39 = load i32, i32* %arrayidx65.3.2, align 4, !tbaa !5
  %cmp66.3.2 = icmp sgt i32 %38, %39
  br i1 %cmp66.3.2, label %if.then.3.2, label %for.cond56.backedge.3.2

if.then.3.2:                                      ; preds = %for.cond56.backedge.3.1
  %arrayidx62.3.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %39, i32* %arrayidx62.3.2, align 8, !tbaa !5
  store i32 %38, i32* %arrayidx65.3.2, align 4, !tbaa !5
  br label %for.cond56.backedge.3.2

for.cond56.backedge.3.2:                          ; preds = %if.then.3.2, %for.cond56.backedge.3.1
  %40 = phi i32 [ %38, %if.then.3.2 ], [ %39, %for.cond56.backedge.3.1 ]
  %arrayidx65.3.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %41 = load i32, i32* %arrayidx65.3.3, align 16, !tbaa !5
  %cmp66.3.3 = icmp sgt i32 %40, %41
  br i1 %cmp66.3.3, label %if.then.3.3, label %for.cond56.backedge.3.3

if.then.3.3:                                      ; preds = %for.cond56.backedge.3.2
  %arrayidx62.3.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  store i32 %41, i32* %arrayidx62.3.3, align 4, !tbaa !5
  store i32 %40, i32* %arrayidx65.3.3, align 16, !tbaa !5
  br label %for.cond56.backedge.3.3

for.cond56.backedge.3.3:                          ; preds = %if.then.3.3, %for.cond56.backedge.3.2
  %.pre133 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.4

if.then.2.1:                                      ; preds = %for.cond56.backedge.2
  %arrayidx62.2.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %23, i32* %arrayidx62.2.1, align 4, !tbaa !5
  store i32 %22, i32* %arrayidx65.2.1, align 8, !tbaa !5
  br label %for.cond56.backedge.2.1

for.cond56.backedge.2.1:                          ; preds = %if.then.2.1, %for.cond56.backedge.2
  %42 = phi i32 [ %22, %if.then.2.1 ], [ %23, %for.cond56.backedge.2 ]
  %arrayidx65.2.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %43 = load i32, i32* %arrayidx65.2.2, align 4, !tbaa !5
  %cmp66.2.2 = icmp sgt i32 %42, %43
  br i1 %cmp66.2.2, label %if.then.2.2, label %for.cond56.backedge.2.2

if.then.2.2:                                      ; preds = %for.cond56.backedge.2.1
  %arrayidx62.2.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %43, i32* %arrayidx62.2.2, align 8, !tbaa !5
  store i32 %42, i32* %arrayidx65.2.2, align 4, !tbaa !5
  br label %for.cond56.backedge.2.2

for.cond56.backedge.2.2:                          ; preds = %if.then.2.2, %for.cond56.backedge.2.1
  %44 = phi i32 [ %42, %if.then.2.2 ], [ %43, %for.cond56.backedge.2.1 ]
  %arrayidx65.2.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %45 = load i32, i32* %arrayidx65.2.3, align 16, !tbaa !5
  %cmp66.2.3 = icmp sgt i32 %44, %45
  br i1 %cmp66.2.3, label %if.then.2.3, label %for.cond56.backedge.2.3

if.then.2.3:                                      ; preds = %for.cond56.backedge.2.2
  %arrayidx62.2.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  store i32 %45, i32* %arrayidx62.2.3, align 4, !tbaa !5
  store i32 %44, i32* %arrayidx65.2.3, align 16, !tbaa !5
  br label %for.cond56.backedge.2.3

for.cond56.backedge.2.3:                          ; preds = %if.then.2.3, %for.cond56.backedge.2.2
  %46 = phi i32 [ %44, %if.then.2.3 ], [ %45, %for.cond56.backedge.2.2 ]
  %arrayidx65.2.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  %47 = load i32, i32* %arrayidx65.2.4, align 4, !tbaa !5
  %cmp66.2.4 = icmp sgt i32 %46, %47
  br i1 %cmp66.2.4, label %if.then.2.4, label %for.cond56.backedge.2.4

if.then.2.4:                                      ; preds = %for.cond56.backedge.2.3
  %arrayidx62.2.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  store i32 %47, i32* %arrayidx62.2.4, align 16, !tbaa !5
  store i32 %46, i32* %arrayidx65.2.4, align 4, !tbaa !5
  br label %for.cond56.backedge.2.4

for.cond56.backedge.2.4:                          ; preds = %if.then.2.4, %for.cond56.backedge.2.3
  %.pre132 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.3

if.then.1.1:                                      ; preds = %for.cond56.backedge.1
  %arrayidx62.1.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %20, i32* %arrayidx62.1.1, align 4, !tbaa !5
  store i32 %19, i32* %arrayidx65.1.1, align 8, !tbaa !5
  br label %for.cond56.backedge.1.1

for.cond56.backedge.1.1:                          ; preds = %if.then.1.1, %for.cond56.backedge.1
  %48 = phi i32 [ %19, %if.then.1.1 ], [ %20, %for.cond56.backedge.1 ]
  %arrayidx65.1.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %49 = load i32, i32* %arrayidx65.1.2, align 4, !tbaa !5
  %cmp66.1.2 = icmp sgt i32 %48, %49
  br i1 %cmp66.1.2, label %if.then.1.2, label %for.cond56.backedge.1.2

if.then.1.2:                                      ; preds = %for.cond56.backedge.1.1
  %arrayidx62.1.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %49, i32* %arrayidx62.1.2, align 8, !tbaa !5
  store i32 %48, i32* %arrayidx65.1.2, align 4, !tbaa !5
  br label %for.cond56.backedge.1.2

for.cond56.backedge.1.2:                          ; preds = %if.then.1.2, %for.cond56.backedge.1.1
  %50 = phi i32 [ %48, %if.then.1.2 ], [ %49, %for.cond56.backedge.1.1 ]
  %arrayidx65.1.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %51 = load i32, i32* %arrayidx65.1.3, align 16, !tbaa !5
  %cmp66.1.3 = icmp sgt i32 %50, %51
  br i1 %cmp66.1.3, label %if.then.1.3, label %for.cond56.backedge.1.3

if.then.1.3:                                      ; preds = %for.cond56.backedge.1.2
  %arrayidx62.1.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  store i32 %51, i32* %arrayidx62.1.3, align 4, !tbaa !5
  store i32 %50, i32* %arrayidx65.1.3, align 16, !tbaa !5
  br label %for.cond56.backedge.1.3

for.cond56.backedge.1.3:                          ; preds = %if.then.1.3, %for.cond56.backedge.1.2
  %52 = phi i32 [ %50, %if.then.1.3 ], [ %51, %for.cond56.backedge.1.2 ]
  %arrayidx65.1.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  %53 = load i32, i32* %arrayidx65.1.4, align 4, !tbaa !5
  %cmp66.1.4 = icmp sgt i32 %52, %53
  br i1 %cmp66.1.4, label %if.then.1.4, label %for.cond56.backedge.1.4

if.then.1.4:                                      ; preds = %for.cond56.backedge.1.3
  %arrayidx62.1.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  store i32 %53, i32* %arrayidx62.1.4, align 16, !tbaa !5
  store i32 %52, i32* %arrayidx65.1.4, align 4, !tbaa !5
  br label %for.cond56.backedge.1.4

for.cond56.backedge.1.4:                          ; preds = %if.then.1.4, %for.cond56.backedge.1.3
  %54 = phi i32 [ %52, %if.then.1.4 ], [ %53, %for.cond56.backedge.1.3 ]
  %arrayidx65.1.5 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 6
  %55 = load i32, i32* %arrayidx65.1.5, align 8, !tbaa !5
  %cmp66.1.5 = icmp sgt i32 %54, %55
  br i1 %cmp66.1.5, label %if.then.1.5, label %for.cond56.backedge.1.5

if.then.1.5:                                      ; preds = %for.cond56.backedge.1.4
  %arrayidx62.1.5 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  store i32 %55, i32* %arrayidx62.1.5, align 4, !tbaa !5
  store i32 %54, i32* %arrayidx65.1.5, align 8, !tbaa !5
  br label %for.cond56.backedge.1.5

for.cond56.backedge.1.5:                          ; preds = %if.then.1.5, %for.cond56.backedge.1.4
  %.pre131 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.2

if.then.1140:                                     ; preds = %for.cond56.backedge
  %arrayidx62.1139 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %17, i32* %arrayidx62.1139, align 4, !tbaa !5
  store i32 %16, i32* %arrayidx65.1136, align 8, !tbaa !5
  br label %for.cond56.backedge.1141

for.cond56.backedge.1141:                         ; preds = %if.then.1140, %for.cond56.backedge
  %56 = phi i32 [ %17, %for.cond56.backedge ], [ %16, %if.then.1140 ]
  %arrayidx65.2142 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %57 = load i32, i32* %arrayidx65.2142, align 4, !tbaa !5
  %cmp66.2143 = icmp sgt i32 %56, %57
  br i1 %cmp66.2143, label %if.then.2146, label %for.cond56.backedge.2147

if.then.2146:                                     ; preds = %for.cond56.backedge.1141
  %arrayidx62.2145 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %57, i32* %arrayidx62.2145, align 8, !tbaa !5
  store i32 %56, i32* %arrayidx65.2142, align 4, !tbaa !5
  br label %for.cond56.backedge.2147

for.cond56.backedge.2147:                         ; preds = %if.then.2146, %for.cond56.backedge.1141
  %58 = phi i32 [ %57, %for.cond56.backedge.1141 ], [ %56, %if.then.2146 ]
  %arrayidx65.3148 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %59 = load i32, i32* %arrayidx65.3148, align 16, !tbaa !5
  %cmp66.3149 = icmp sgt i32 %58, %59
  br i1 %cmp66.3149, label %if.then.3152, label %for.cond56.backedge.3153

if.then.3152:                                     ; preds = %for.cond56.backedge.2147
  %arrayidx62.3151 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  store i32 %59, i32* %arrayidx62.3151, align 4, !tbaa !5
  store i32 %58, i32* %arrayidx65.3148, align 16, !tbaa !5
  br label %for.cond56.backedge.3153

for.cond56.backedge.3153:                         ; preds = %if.then.3152, %for.cond56.backedge.2147
  %60 = phi i32 [ %59, %for.cond56.backedge.2147 ], [ %58, %if.then.3152 ]
  %arrayidx65.4154 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  %61 = load i32, i32* %arrayidx65.4154, align 4, !tbaa !5
  %cmp66.4155 = icmp sgt i32 %60, %61
  br i1 %cmp66.4155, label %if.then.4158, label %for.cond56.backedge.4159

if.then.4158:                                     ; preds = %for.cond56.backedge.3153
  %arrayidx62.4157 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  store i32 %61, i32* %arrayidx62.4157, align 16, !tbaa !5
  store i32 %60, i32* %arrayidx65.4154, align 4, !tbaa !5
  br label %for.cond56.backedge.4159

for.cond56.backedge.4159:                         ; preds = %if.then.4158, %for.cond56.backedge.3153
  %62 = phi i32 [ %61, %for.cond56.backedge.3153 ], [ %60, %if.then.4158 ]
  %arrayidx65.5160 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 6
  %63 = load i32, i32* %arrayidx65.5160, align 8, !tbaa !5
  %cmp66.5161 = icmp sgt i32 %62, %63
  br i1 %cmp66.5161, label %if.then.5164, label %for.cond56.backedge.5165

if.then.5164:                                     ; preds = %for.cond56.backedge.4159
  %arrayidx62.5163 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  store i32 %63, i32* %arrayidx62.5163, align 4, !tbaa !5
  store i32 %62, i32* %arrayidx65.5160, align 8, !tbaa !5
  br label %for.cond56.backedge.5165

for.cond56.backedge.5165:                         ; preds = %if.then.5164, %for.cond56.backedge.4159
  %64 = phi i32 [ %63, %for.cond56.backedge.4159 ], [ %62, %if.then.5164 ]
  %arrayidx65.6166 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 7
  %65 = load i32, i32* %arrayidx65.6166, align 4, !tbaa !5
  %cmp66.6167 = icmp sgt i32 %64, %65
  br i1 %cmp66.6167, label %if.then.6169, label %for.cond56.backedge.6

if.then.6169:                                     ; preds = %for.cond56.backedge.5165
  %arrayidx62.6168 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 6
  store i32 %65, i32* %arrayidx62.6168, align 8, !tbaa !5
  store i32 %64, i32* %arrayidx65.6166, align 4, !tbaa !5
  br label %for.cond56.backedge.6

for.cond56.backedge.6:                            ; preds = %if.then.6169, %for.cond56.backedge.5165
  %.pre = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.1
}

; Function Attrs: norecurse nounwind uwtable
define i32 @enlarge(i8** nocapture %in, i8* %tmp_image, i32* nocapture %x_size, i32* nocapture %y_size, i32 %border) #5 {
entry:
  %0 = load i32, i32* %y_size, align 4, !tbaa !5
  %cmp174 = icmp sgt i32 %0, 0
  br i1 %cmp174, label %for.body.lr.ph, label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %border, 1
  %idx.ext3 = sext i32 %border to i64
  br label %for.body

for.cond8.preheader.loopexit:                     ; preds = %for.body
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond8.preheader.loopexit, %entry
  %cmp9171 = icmp sgt i32 %border, 0
  br i1 %cmp9171, label %for.body11.lr.ph, label %for.cond42.preheader.for.end87_crit_edge

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %sub = add nsw i32 %border, -1
  %mul13 = shl nsw i32 %border, 1
  %idx.ext18 = sext i32 %border to i64
  br label %for.body11

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add = add nsw i32 %i.0175, %border
  %1 = load i32, i32* %x_size, align 4, !tbaa !5
  %add1 = add nsw i32 %1, %mul
  %mul2 = mul nsw i32 %add1, %add
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %tmp_image, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext3
  %2 = load i8*, i8** %in, align 8, !tbaa !1
  %mul5 = mul nsw i32 %1, %i.0175
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %2, i64 %idx.ext6
  %conv = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr4, i8* %add.ptr7, i64 %conv, i32 1, i1 false)
  %inc = add nuw nsw i32 %i.0175, 1
  %3 = load i32, i32* %y_size, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body, label %for.cond8.preheader.loopexit

for.cond42.preheader:                             ; preds = %for.body11
  br i1 %cmp9171, label %for.cond46.preheader.lr.ph, label %for.cond42.preheader.for.end87_crit_edge

for.cond42.preheader.for.end87_crit_edge:         ; preds = %for.cond8.preheader, %for.cond42.preheader
  %.pre177 = shl nsw i32 %border, 1
  br label %for.end87

for.cond46.preheader.lr.ph:                       ; preds = %for.cond42.preheader
  %mul47 = shl nsw i32 %border, 1
  %.pre = load i32, i32* %y_size, align 4, !tbaa !5
  br label %for.cond46.preheader

for.body11:                                       ; preds = %for.body11, %for.body11.lr.ph
  %i.1.neg173 = phi i32 [ 0, %for.body11.lr.ph ], [ %i.1.neg, %for.body11 ]
  %i.1172 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc40, %for.body11 ]
  %sub12 = add i32 %sub, %i.1.neg173
  %4 = load i32, i32* %x_size, align 4, !tbaa !5
  %add14 = add nsw i32 %4, %mul13
  %mul15 = mul nsw i32 %add14, %sub12
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %tmp_image, i64 %idx.ext16
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr17, i64 %idx.ext18
  %5 = load i8*, i8** %in, align 8, !tbaa !1
  %mul20 = mul nsw i32 %4, %i.1172
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %5, i64 %idx.ext21
  %conv23 = sext i32 %4 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr19, i8* %add.ptr22, i64 %conv23, i32 1, i1 false)
  %6 = load i32, i32* %y_size, align 4, !tbaa !5
  %add24 = add i32 %i.1172, %border
  %add25 = add i32 %add24, %6
  %7 = load i32, i32* %x_size, align 4, !tbaa !5
  %add27 = add nsw i32 %7, %mul13
  %mul28 = mul nsw i32 %add25, %add27
  %idx.ext29 = sext i32 %mul28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %tmp_image, i64 %idx.ext29
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr30, i64 %idx.ext18
  %8 = load i8*, i8** %in, align 8, !tbaa !1
  %sub33 = add nsw i32 %i.1.neg173, -1
  %sub34 = add i32 %sub33, %6
  %mul35 = mul nsw i32 %sub34, %7
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %8, i64 %idx.ext36
  %conv38 = sext i32 %7 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr32, i8* %add.ptr37, i64 %conv38, i32 1, i1 false)
  %inc40 = add nuw nsw i32 %i.1172, 1
  %i.1.neg = xor i32 %i.1172, -1
  %exitcond176 = icmp eq i32 %inc40, %border
  br i1 %exitcond176, label %for.cond42.preheader, label %for.body11

for.cond46.preheader:                             ; preds = %for.inc85, %for.cond46.preheader.lr.ph
  %9 = phi i32 [ %.pre, %for.cond46.preheader.lr.ph ], [ %15, %for.inc85 ]
  %i.2.neg170 = phi i32 [ 0, %for.cond46.preheader.lr.ph ], [ %i.2.neg, %for.inc85 ]
  %i.2168 = phi i32 [ 0, %for.cond46.preheader.lr.ph ], [ %inc86, %for.inc85 ]
  %add48164 = add nsw i32 %9, %mul47
  %cmp49165 = icmp sgt i32 %add48164, 0
  br i1 %cmp49165, label %for.body51.lr.ph, label %for.inc85

for.body51.lr.ph:                                 ; preds = %for.cond46.preheader
  %sub61 = add nsw i32 %i.2.neg170, -1
  br label %for.body51

for.body51:                                       ; preds = %for.body51.lr.ph, %for.body51
  %j.0166 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc83, %for.body51 ]
  %10 = load i32, i32* %x_size, align 4, !tbaa !5
  %add53 = add nsw i32 %10, %mul47
  %mul54 = mul nsw i32 %add53, %j.0166
  %add55 = add nsw i32 %mul54, %border
  %add56 = add nsw i32 %add55, %i.2168
  %idxprom = sext i32 %add56 to i64
  %arrayidx = getelementptr inbounds i8, i8* %tmp_image, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %sub62 = add i32 %sub61, %add55
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds i8, i8* %tmp_image, i64 %idxprom63
  store i8 %11, i8* %arrayidx64, align 1, !tbaa !12
  %12 = load i32, i32* %x_size, align 4, !tbaa !5
  %add66 = add nsw i32 %12, %mul47
  %mul67 = mul nsw i32 %add66, %j.0166
  %add68 = add i32 %12, %border
  %add69 = add i32 %add68, %mul67
  %sub71 = add i32 %sub61, %add69
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds i8, i8* %tmp_image, i64 %idxprom72
  %13 = load i8, i8* %arrayidx73, align 1, !tbaa !12
  %add79 = add nsw i32 %add69, %i.2168
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds i8, i8* %tmp_image, i64 %idxprom80
  store i8 %13, i8* %arrayidx81, align 1, !tbaa !12
  %inc83 = add nuw nsw i32 %j.0166, 1
  %14 = load i32, i32* %y_size, align 4, !tbaa !5
  %add48 = add nsw i32 %14, %mul47
  %cmp49 = icmp slt i32 %inc83, %add48
  br i1 %cmp49, label %for.body51, label %for.inc85.loopexit

for.inc85.loopexit:                               ; preds = %for.body51
  %.lcssa = phi i32 [ %14, %for.body51 ]
  br label %for.inc85

for.inc85:                                        ; preds = %for.inc85.loopexit, %for.cond46.preheader
  %15 = phi i32 [ %9, %for.cond46.preheader ], [ %.lcssa, %for.inc85.loopexit ]
  %inc86 = add nuw nsw i32 %i.2168, 1
  %i.2.neg = xor i32 %i.2168, -1
  %exitcond = icmp eq i32 %inc86, %border
  br i1 %exitcond, label %for.end87.loopexit, label %for.cond46.preheader

for.end87.loopexit:                               ; preds = %for.inc85
  br label %for.end87

for.end87:                                        ; preds = %for.end87.loopexit, %for.cond42.preheader.for.end87_crit_edge
  %mul88.pre-phi = phi i32 [ %.pre177, %for.cond42.preheader.for.end87_crit_edge ], [ %mul47, %for.end87.loopexit ]
  %16 = load i32, i32* %x_size, align 4, !tbaa !5
  %add89 = add nsw i32 %16, %mul88.pre-phi
  store i32 %add89, i32* %x_size, align 4, !tbaa !5
  %17 = load i32, i32* %y_size, align 4, !tbaa !5
  %add91 = add nsw i32 %17, %mul88.pre-phi
  store i32 %add91, i32* %y_size, align 4, !tbaa !5
  store i8* %tmp_image, i8** %in, align 8, !tbaa !1
  ret i32 undef
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @susan_smoothing(i32 %three_by_three, i8* %in, double, i32 %x_size, i32 %y_size, i8* nocapture readonly %bp) #3 {
entry:
  %in.addr = alloca i8*, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %dt = fptrunc double %0 to float
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i32 %x_size, i32* %x_size.addr, align 4, !tbaa !5
  store i32 %y_size, i32* %y_size.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %three_by_three, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = fpext float %dt to double
  %mul = fmul double %conv, 1.500000e+00
  %conv9 = fptosi double %mul to i32
  %add = add nsw i32 %conv9, 1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %mask_size.0 = phi i32 [ %add, %if.then ], [ 1, %entry ]
  %cmp10 = fcmp ogt float %dt, 1.500000e+01
  br i1 %cmp10, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end
  %conv15 = fpext float %dt to double
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0), double %conv15)
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @str.44, i64 0, i64 0))
  %puts437 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @str.45, i64 0, i64 0))
  tail call void @exit(i32 0) #8
  unreachable

if.end18:                                         ; preds = %if.end
  %mul19 = shl nsw i32 %mask_size.0, 1
  %add20 = or i32 %mul19, 1
  %cmp21 = icmp sgt i32 %add20, %x_size
  %cmp25 = icmp sgt i32 %add20, %y_size
  %or.cond = or i1 %cmp21, %cmp25
  br i1 %or.cond, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end18
  %call28 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i64 0, i64 0), i32 %mask_size.0, i32 %x_size, i32 %y_size)
  tail call void @exit(i32 0) #8
  unreachable

if.end29:                                         ; preds = %if.end18
  %add31 = add nsw i32 %mul19, %x_size
  %add33 = add nsw i32 %mul19, %y_size
  %mul34 = mul nsw i32 %add33, %add31
  %conv35 = sext i32 %mul34 to i64
  %call36 = tail call noalias i8* @malloc(i64 %conv35) #7
  %call37 = call i32 @enlarge(i8** nonnull %in.addr, i8* %call36, i32* nonnull %x_size.addr, i32* nonnull %y_size.addr, i32 %mask_size.0)
  br i1 %cmp, label %if.then40, label %for.cond139.preheader

for.cond139.preheader:                            ; preds = %if.end29
  %1 = load i32, i32* %y_size.addr, align 4, !tbaa !5
  %sub140479 = add nsw i32 %1, -1
  %cmp141480 = icmp sgt i32 %sub140479, 1
  br i1 %cmp141480, label %for.cond144.preheader.preheader, label %if.end266

for.cond144.preheader.preheader:                  ; preds = %for.cond139.preheader
  %.pre = load i32, i32* %x_size.addr, align 4, !tbaa !5
  br label %for.cond144.preheader

if.then40:                                        ; preds = %if.end29
  %2 = load i32, i32* %x_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %add20
  %mul43 = mul nsw i32 %add20, %add20
  %conv44435 = zext i32 %mul43 to i64
  %call45 = tail call noalias i8* @malloc(i64 %conv44435) #7
  %mul46 = fmul float %dt, %dt
  %sub47 = fsub float -0.000000e+00, %mul46
  %sub48 = sub nsw i32 0, %mask_size.0
  %cmp49470 = icmp slt i32 %mask_size.0, %sub48
  br i1 %cmp49470, label %for.cond68.preheader, label %for.body55.lr.ph.preheader

for.body55.lr.ph.preheader:                       ; preds = %if.then40
  br label %for.body55.lr.ph

for.body55.lr.ph:                                 ; preds = %for.body55.lr.ph.preheader, %for.inc65
  %dpt.0473 = phi i8* [ %incdec.ptr.lcssa, %for.inc65 ], [ %call45, %for.body55.lr.ph.preheader ]
  %i.0471 = phi i32 [ %inc66, %for.inc65 ], [ %sub48, %for.body55.lr.ph.preheader ]
  %mul56 = mul nsw i32 %i.0471, %i.0471
  br label %for.body55

for.cond68.preheader.loopexit:                    ; preds = %for.inc65
  br label %for.cond68.preheader

for.cond68.preheader:                             ; preds = %for.cond68.preheader.loopexit, %if.then40
  %3 = load i32, i32* %y_size.addr, align 4, !tbaa !5
  %sub69461 = sub nsw i32 %3, %mask_size.0
  %cmp70462 = icmp slt i32 %mask_size.0, %sub69461
  br i1 %cmp70462, label %for.cond73.preheader.lr.ph, label %if.end266

for.cond73.preheader.lr.ph:                       ; preds = %for.cond68.preheader
  %idx.ext82 = sext i32 %mask_size.0 to i64
  %idx.neg = sub nsw i64 0, %idx.ext82
  %idx.ext114 = sext i32 %sub to i64
  br label %for.cond73.preheader

for.body55:                                       ; preds = %for.body55, %for.body55.lr.ph
  %dpt.1468 = phi i8* [ %dpt.0473, %for.body55.lr.ph ], [ %incdec.ptr, %for.body55 ]
  %j.0467 = phi i32 [ %sub48, %for.body55.lr.ph ], [ %inc, %for.body55 ]
  %mul57 = mul nsw i32 %j.0467, %j.0467
  %add58 = add nuw nsw i32 %mul57, %mul56
  %conv59 = sitofp i32 %add58 to float
  %div = fdiv float %conv59, %sub47
  %conv60 = fpext float %div to double
  %call61 = tail call double @exp(double %conv60) #7
  %mul62 = fmul double %call61, 1.000000e+02
  %conv63 = fptosi double %mul62 to i32
  %conv64 = trunc i32 %conv63 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %dpt.1468, i64 1
  store i8 %conv64, i8* %dpt.1468, align 1, !tbaa !12
  %inc = add nsw i32 %j.0467, 1
  %cmp53 = icmp slt i32 %j.0467, %mask_size.0
  br i1 %cmp53, label %for.body55, label %for.inc65

for.inc65:                                        ; preds = %for.body55
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %for.body55 ]
  %inc66 = add nsw i32 %i.0471, 1
  %cmp49 = icmp slt i32 %i.0471, %mask_size.0
  br i1 %cmp49, label %for.body55.lr.ph, label %for.cond68.preheader.loopexit

for.cond73.preheader:                             ; preds = %for.cond73.preheader.lr.ph, %for.inc135
  %4 = phi i32 [ %3, %for.cond73.preheader.lr.ph ], [ %16, %for.inc135 ]
  %out.0465 = phi i8* [ %in, %for.cond73.preheader.lr.ph ], [ %out.1.lcssa, %for.inc135 ]
  %i.1463 = phi i32 [ %mask_size.0, %for.cond73.preheader.lr.ph ], [ %inc136, %for.inc135 ]
  %5 = load i32, i32* %x_size.addr, align 4, !tbaa !5
  %sub74456 = sub nsw i32 %5, %mask_size.0
  %cmp75457 = icmp slt i32 %mask_size.0, %sub74456
  br i1 %cmp75457, label %for.body77.lr.ph, label %for.inc135

for.body77.lr.ph:                                 ; preds = %for.cond73.preheader
  %sub78 = sub nsw i32 %i.1463, %mask_size.0
  br label %for.body77

for.body77:                                       ; preds = %for.body77.lr.ph, %for.inc132
  %indvars.iv = phi i64 [ %idx.ext82, %for.body77.lr.ph ], [ %indvars.iv.next, %for.inc132 ]
  %6 = phi i32 [ %5, %for.body77.lr.ph ], [ %14, %for.inc132 ]
  %out.1459 = phi i8* [ %out.0465, %for.body77.lr.ph ], [ %out.2, %for.inc132 ]
  %7 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %mul84 = mul nsw i32 %6, %i.1463
  %8 = trunc i64 %indvars.iv to i32
  %add85 = add nsw i32 %mul84, %8
  %idxprom = sext i32 %add85 to i64
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %conv86 = zext i8 %9 to i32
  %idx.ext87 = zext i8 %9 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext87
  br i1 %cmp49470, label %if.else125, label %for.cond95.preheader.preheader

for.cond95.preheader.preheader:                   ; preds = %for.body77
  %mul79 = mul nsw i32 %6, %sub78
  %idx.ext = sext i32 %mul79 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %add.ptr81 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr81, i64 %idx.neg
  br label %for.body98.preheader

for.body98.preheader:                             ; preds = %for.end113, %for.cond95.preheader.preheader
  %total.0453 = phi i32 [ %add110.lcssa, %for.end113 ], [ 0, %for.cond95.preheader.preheader ]
  %dpt.2452 = phi i8* [ %incdec.ptr101.lcssa, %for.end113 ], [ %call45, %for.cond95.preheader.preheader ]
  %ip.0451 = phi i8* [ %add.ptr115, %for.end113 ], [ %add.ptr83, %for.cond95.preheader.preheader ]
  %area.0450 = phi i32 [ %add108.lcssa, %for.end113 ], [ 0, %for.cond95.preheader.preheader ]
  %y.0449 = phi i32 [ %inc117, %for.end113 ], [ %sub48, %for.cond95.preheader.preheader ]
  br label %for.body98

for.body98:                                       ; preds = %for.body98.preheader, %for.body98
  %total.1444 = phi i32 [ %add110, %for.body98 ], [ %total.0453, %for.body98.preheader ]
  %dpt.3443 = phi i8* [ %incdec.ptr101, %for.body98 ], [ %dpt.2452, %for.body98.preheader ]
  %ip.1442 = phi i8* [ %incdec.ptr99, %for.body98 ], [ %ip.0451, %for.body98.preheader ]
  %area.1441 = phi i32 [ %add108, %for.body98 ], [ %area.0450, %for.body98.preheader ]
  %x.0440 = phi i32 [ %inc112, %for.body98 ], [ %sub48, %for.body98.preheader ]
  %incdec.ptr99 = getelementptr inbounds i8, i8* %ip.1442, i64 1
  %10 = load i8, i8* %ip.1442, align 1, !tbaa !12
  %conv100 = zext i8 %10 to i32
  %incdec.ptr101 = getelementptr inbounds i8, i8* %dpt.3443, i64 1
  %11 = load i8, i8* %dpt.3443, align 1, !tbaa !12
  %conv102 = zext i8 %11 to i32
  %idx.ext103 = zext i8 %10 to i64
  %idx.neg104 = sub nsw i64 0, %idx.ext103
  %add.ptr105 = getelementptr inbounds i8, i8* %add.ptr88, i64 %idx.neg104
  %12 = load i8, i8* %add.ptr105, align 1, !tbaa !12
  %conv106 = zext i8 %12 to i32
  %mul107 = mul nuw nsw i32 %conv106, %conv102
  %add108 = add nsw i32 %mul107, %area.1441
  %mul109 = mul nuw nsw i32 %mul107, %conv100
  %add110 = add nsw i32 %mul109, %total.1444
  %inc112 = add nsw i32 %x.0440, 1
  %cmp96 = icmp slt i32 %x.0440, %mask_size.0
  br i1 %cmp96, label %for.body98, label %for.end113, !llvm.loop !24

for.end113:                                       ; preds = %for.body98
  %add110.lcssa = phi i32 [ %add110, %for.body98 ]
  %add108.lcssa = phi i32 [ %add108, %for.body98 ]
  %incdec.ptr101.lcssa = phi i8* [ %incdec.ptr101, %for.body98 ]
  %incdec.ptr99.lcssa = phi i8* [ %incdec.ptr99, %for.body98 ]
  %add.ptr115 = getelementptr inbounds i8, i8* %incdec.ptr99.lcssa, i64 %idx.ext114
  %inc117 = add nsw i32 %y.0449, 1
  %cmp91 = icmp slt i32 %y.0449, %mask_size.0
  br i1 %cmp91, label %for.body98.preheader, label %for.end118, !llvm.loop !24

for.end118:                                       ; preds = %for.end113
  %add110.lcssa.lcssa = phi i32 [ %add110.lcssa, %for.end113 ]
  %add108.lcssa.lcssa = phi i32 [ %add108.lcssa, %for.end113 ]
  %sub119 = add nsw i32 %add108.lcssa.lcssa, -10000
  %cmp120 = icmp eq i32 %sub119, 0
  br i1 %cmp120, label %if.then122, label %if.else125

if.then122:                                       ; preds = %for.end118
  %call123 = tail call zeroext i8 @median(i8* %7, i32 %i.1463, i32 %8, i32 %6)
  br label %for.inc132

if.else125:                                       ; preds = %for.body77, %for.end118
  %sub119493 = phi i32 [ %sub119, %for.end118 ], [ -10000, %for.body77 ]
  %total.0.lcssa492 = phi i32 [ %add110.lcssa.lcssa, %for.end118 ], [ 0, %for.body77 ]
  %13 = mul nsw i32 %conv86, -10000
  %sub127 = add i32 %total.0.lcssa492, %13
  %div128 = sdiv i32 %sub127, %sub119493
  %conv129 = trunc i32 %div128 to i8
  br label %for.inc132

for.inc132:                                       ; preds = %if.then122, %if.else125
  %storemerge436 = phi i8 [ %conv129, %if.else125 ], [ %call123, %if.then122 ]
  %out.2 = getelementptr inbounds i8, i8* %out.1459, i64 1
  store i8 %storemerge436, i8* %out.1459, align 1, !tbaa !12
  %indvars.iv.next = add i64 %indvars.iv, 1
  %14 = load i32, i32* %x_size.addr, align 4, !tbaa !5
  %sub74 = sub nsw i32 %14, %mask_size.0
  %15 = sext i32 %sub74 to i64
  %cmp75 = icmp slt i64 %indvars.iv.next, %15
  br i1 %cmp75, label %for.body77, label %for.inc135.loopexit

for.inc135.loopexit:                              ; preds = %for.inc132
  %out.2.lcssa = phi i8* [ %out.2, %for.inc132 ]
  %.pre489 = load i32, i32* %y_size.addr, align 4, !tbaa !5
  br label %for.inc135

for.inc135:                                       ; preds = %for.inc135.loopexit, %for.cond73.preheader
  %16 = phi i32 [ %4, %for.cond73.preheader ], [ %.pre489, %for.inc135.loopexit ]
  %out.1.lcssa = phi i8* [ %out.0465, %for.cond73.preheader ], [ %out.2.lcssa, %for.inc135.loopexit ]
  %inc136 = add nsw i32 %i.1463, 1
  %sub69 = sub nsw i32 %16, %mask_size.0
  %cmp70 = icmp slt i32 %inc136, %sub69
  br i1 %cmp70, label %for.cond73.preheader, label %if.end266.loopexit

for.cond144.preheader:                            ; preds = %for.cond144.preheader.preheader, %for.inc263
  %17 = phi i32 [ %44, %for.inc263 ], [ %1, %for.cond144.preheader.preheader ]
  %18 = phi i32 [ %45, %for.inc263 ], [ %.pre, %for.cond144.preheader.preheader ]
  %out.3483 = phi i8* [ %out.4.lcssa, %for.inc263 ], [ %in, %for.cond144.preheader.preheader ]
  %i.2481 = phi i32 [ %inc264, %for.inc263 ], [ 1, %for.cond144.preheader.preheader ]
  %sub145474 = add nsw i32 %18, -1
  %cmp146475 = icmp sgt i32 %sub145474, 1
  br i1 %cmp146475, label %for.body148.lr.ph, label %for.inc263

for.body148.lr.ph:                                ; preds = %for.cond144.preheader
  %sub149 = add nsw i32 %i.2481, -1
  br label %for.body148

for.body148:                                      ; preds = %for.body148.lr.ph, %for.inc260
  %indvars.iv486 = phi i64 [ 1, %for.body148.lr.ph ], [ %indvars.iv.next487, %for.inc260 ]
  %19 = phi i32 [ %18, %for.body148.lr.ph ], [ %42, %for.inc260 ]
  %out.4477 = phi i8* [ %out.3483, %for.body148.lr.ph ], [ %out.5, %for.inc260 ]
  %20 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %mul150 = mul nsw i32 %19, %sub149
  %idx.ext151 = sext i32 %mul150 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %20, i64 %idx.ext151
  %add.ptr154 = getelementptr inbounds i8, i8* %add.ptr152, i64 %indvars.iv486
  %add.ptr155 = getelementptr inbounds i8, i8* %add.ptr154, i64 -1
  %mul156 = mul nsw i32 %19, %i.2481
  %21 = trunc i64 %indvars.iv486 to i32
  %add157 = add nsw i32 %mul156, %21
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds i8, i8* %20, i64 %idxprom158
  %22 = load i8, i8* %arrayidx159, align 1, !tbaa !12
  %idx.ext161 = zext i8 %22 to i64
  %add.ptr162 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext161
  %incdec.ptr163 = getelementptr inbounds i8, i8* %add.ptr155, i64 1
  %23 = load i8, i8* %add.ptr155, align 1, !tbaa !12
  %idx.ext165 = zext i8 %23 to i64
  %idx.neg166 = sub nsw i64 0, %idx.ext165
  %add.ptr167 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg166
  %24 = load i8, i8* %add.ptr167, align 1, !tbaa !12
  %conv168 = zext i8 %24 to i32
  %incdec.ptr172 = getelementptr inbounds i8, i8* %incdec.ptr163, i64 1
  %25 = load i8, i8* %incdec.ptr163, align 1, !tbaa !12
  %idx.ext174 = zext i8 %25 to i64
  %idx.neg175 = sub nsw i64 0, %idx.ext174
  %add.ptr176 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg175
  %26 = load i8, i8* %add.ptr176, align 1, !tbaa !12
  %conv177 = zext i8 %26 to i32
  %27 = load i8, i8* %incdec.ptr172, align 1, !tbaa !12
  %idx.ext182 = zext i8 %27 to i64
  %idx.neg183 = sub nsw i64 0, %idx.ext182
  %add.ptr184 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg183
  %28 = load i8, i8* %add.ptr184, align 1, !tbaa !12
  %conv185 = zext i8 %28 to i32
  %sub189 = add nsw i32 %19, -2
  %idx.ext190 = sext i32 %sub189 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %incdec.ptr172, i64 %idx.ext190
  %incdec.ptr192 = getelementptr inbounds i8, i8* %add.ptr191, i64 1
  %29 = load i8, i8* %add.ptr191, align 1, !tbaa !12
  %idx.ext194 = zext i8 %29 to i64
  %idx.neg195 = sub nsw i64 0, %idx.ext194
  %add.ptr196 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg195
  %30 = load i8, i8* %add.ptr196, align 1, !tbaa !12
  %conv197 = zext i8 %30 to i32
  %incdec.ptr201 = getelementptr inbounds i8, i8* %incdec.ptr192, i64 1
  %31 = load i8, i8* %incdec.ptr192, align 1, !tbaa !12
  %idx.ext203 = zext i8 %31 to i64
  %idx.neg204 = sub nsw i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg204
  %32 = load i8, i8* %add.ptr205, align 1, !tbaa !12
  %conv206 = zext i8 %32 to i32
  %33 = load i8, i8* %incdec.ptr201, align 1, !tbaa !12
  %idx.ext211 = zext i8 %33 to i64
  %idx.neg212 = sub nsw i64 0, %idx.ext211
  %add.ptr213 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg212
  %34 = load i8, i8* %add.ptr213, align 1, !tbaa !12
  %conv214 = zext i8 %34 to i32
  %add.ptr220 = getelementptr inbounds i8, i8* %incdec.ptr201, i64 %idx.ext190
  %incdec.ptr221 = getelementptr inbounds i8, i8* %add.ptr220, i64 1
  %35 = load i8, i8* %add.ptr220, align 1, !tbaa !12
  %idx.ext223 = zext i8 %35 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg224
  %36 = load i8, i8* %add.ptr225, align 1, !tbaa !12
  %conv226 = zext i8 %36 to i32
  %incdec.ptr230 = getelementptr inbounds i8, i8* %incdec.ptr221, i64 1
  %37 = load i8, i8* %incdec.ptr221, align 1, !tbaa !12
  %idx.ext232 = zext i8 %37 to i64
  %idx.neg233 = sub nsw i64 0, %idx.ext232
  %add.ptr234 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg233
  %38 = load i8, i8* %add.ptr234, align 1, !tbaa !12
  %conv235 = zext i8 %38 to i32
  %39 = load i8, i8* %incdec.ptr230, align 1, !tbaa !12
  %idx.ext240 = zext i8 %39 to i64
  %idx.neg241 = sub nsw i64 0, %idx.ext240
  %add.ptr242 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg241
  %40 = load i8, i8* %add.ptr242, align 1, !tbaa !12
  %conv243 = zext i8 %40 to i32
  %add178 = add nsw i32 %conv168, -100
  %add186 = add nsw i32 %add178, %conv177
  %add198 = add nsw i32 %add186, %conv185
  %add207 = add nsw i32 %add198, %conv197
  %add215 = add nsw i32 %add207, %conv206
  %add227 = add nsw i32 %add215, %conv214
  %add236 = add i32 %add227, %conv226
  %add244 = add i32 %add236, %conv235
  %sub247 = add i32 %add244, %conv243
  %cmp248 = icmp eq i32 %sub247, 0
  br i1 %cmp248, label %if.then250, label %if.else253

if.then250:                                       ; preds = %for.body148
  %call251 = tail call zeroext i8 @median(i8* %20, i32 %i.2481, i32 %21, i32 %19)
  br label %for.inc260

if.else253:                                       ; preds = %for.body148
  %conv164 = zext i8 %23 to i32
  %mul170 = mul nuw nsw i32 %conv168, %conv164
  %conv173 = zext i8 %25 to i32
  %mul179 = mul nuw nsw i32 %conv177, %conv173
  %conv181 = zext i8 %27 to i32
  %mul187 = mul nuw nsw i32 %conv185, %conv181
  %conv193 = zext i8 %29 to i32
  %mul199 = mul nuw nsw i32 %conv197, %conv193
  %conv202 = zext i8 %31 to i32
  %mul208 = mul nuw nsw i32 %conv206, %conv202
  %conv210 = zext i8 %33 to i32
  %mul216 = mul nuw nsw i32 %conv214, %conv210
  %conv222 = zext i8 %35 to i32
  %mul228 = mul nuw nsw i32 %conv226, %conv222
  %conv231 = zext i8 %37 to i32
  %mul237 = mul nuw nsw i32 %conv235, %conv231
  %conv239 = zext i8 %39 to i32
  %mul245 = mul nuw nsw i32 %conv243, %conv239
  %conv160 = zext i8 %22 to i32
  %41 = mul nsw i32 %conv160, -100
  %add180 = add i32 %mul170, %41
  %add188 = add i32 %add180, %mul179
  %add200 = add i32 %add188, %mul187
  %add209 = add i32 %add200, %mul199
  %add217 = add i32 %add209, %mul208
  %add229 = add i32 %add217, %mul216
  %add238 = add i32 %add229, %mul228
  %add246 = add i32 %add238, %mul237
  %sub255 = add i32 %add246, %mul245
  %div256 = sdiv i32 %sub255, %sub247
  %conv257 = trunc i32 %div256 to i8
  br label %for.inc260

for.inc260:                                       ; preds = %if.then250, %if.else253
  %storemerge = phi i8 [ %conv257, %if.else253 ], [ %call251, %if.then250 ]
  %out.5 = getelementptr inbounds i8, i8* %out.4477, i64 1
  store i8 %storemerge, i8* %out.4477, align 1, !tbaa !12
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1
  %42 = load i32, i32* %x_size.addr, align 4, !tbaa !5
  %sub145 = add nsw i32 %42, -1
  %43 = sext i32 %sub145 to i64
  %cmp146 = icmp slt i64 %indvars.iv.next487, %43
  br i1 %cmp146, label %for.body148, label %for.inc263.loopexit

for.inc263.loopexit:                              ; preds = %for.inc260
  %.lcssa = phi i32 [ %42, %for.inc260 ]
  %out.5.lcssa = phi i8* [ %out.5, %for.inc260 ]
  %.pre488 = load i32, i32* %y_size.addr, align 4, !tbaa !5
  br label %for.inc263

for.inc263:                                       ; preds = %for.inc263.loopexit, %for.cond144.preheader
  %44 = phi i32 [ %17, %for.cond144.preheader ], [ %.pre488, %for.inc263.loopexit ]
  %45 = phi i32 [ %18, %for.cond144.preheader ], [ %.lcssa, %for.inc263.loopexit ]
  %out.4.lcssa = phi i8* [ %out.3483, %for.cond144.preheader ], [ %out.5.lcssa, %for.inc263.loopexit ]
  %inc264 = add nuw nsw i32 %i.2481, 1
  %sub140 = add nsw i32 %44, -1
  %cmp141 = icmp slt i32 %inc264, %sub140
  br i1 %cmp141, label %for.cond144.preheader, label %if.end266.loopexit496

if.end266.loopexit:                               ; preds = %for.inc135
  br label %if.end266

if.end266.loopexit496:                            ; preds = %for.inc263
  br label %if.end266

if.end266:                                        ; preds = %if.end266.loopexit496, %if.end266.loopexit, %for.cond139.preheader, %for.cond68.preheader
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i32 @edge_draw(i8* nocapture %in, i8* %mid, i32 %x_size, i32 %y_size, i32 %drawing_mode) #5 {
entry:
  %cmp = icmp eq i32 %drawing_mode, 0
  %mul = mul i32 %y_size, %x_size
  br i1 %cmp, label %for.cond.preheader, label %for.cond19.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp170 = icmp sgt i32 %mul, 0
  br i1 %cmp170, label %for.body.lr.ph, label %for.end36

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub.ptr.rhs.cast = ptrtoint i8* %mid to i64
  %idx.ext = sext i32 %x_size to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %sub = add nsw i32 %x_size, -2
  %idx.ext8 = sext i32 %sub to i64
  br label %for.body

for.cond19.preheader.loopexit:                    ; preds = %if.end
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.loopexit, %entry
  %cmp2167 = icmp sgt i32 %mul, 0
  br i1 %cmp2167, label %for.body23.lr.ph, label %for.end36

for.body23.lr.ph:                                 ; preds = %for.cond19.preheader
  %sub.ptr.rhs.cast29 = ptrtoint i8* %mid to i64
  %0 = mul i32 %y_size, %x_size
  %xtraiter = and i32 %0, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body23.lr.ph.split, label %for.body23.prol

for.body23.prol:                                  ; preds = %for.body23.lr.ph
  %1 = load i8, i8* %mid, align 1, !tbaa !12
  %cmp25.prol = icmp ult i8 %1, 8
  br i1 %cmp25.prol, label %if.then27.prol, label %if.end32.prol

if.then27.prol:                                   ; preds = %for.body23.prol
  store i8 0, i8* %in, align 1, !tbaa !12
  br label %if.end32.prol

if.end32.prol:                                    ; preds = %if.then27.prol, %for.body23.prol
  %incdec.ptr33.prol = getelementptr inbounds i8, i8* %mid, i64 1
  br label %for.body23.lr.ph.split

for.body23.lr.ph.split:                           ; preds = %for.body23.lr.ph, %if.end32.prol
  %midp.169.unr = phi i8* [ %mid, %for.body23.lr.ph ], [ %incdec.ptr33.prol, %if.end32.prol ]
  %i.168.unr = phi i32 [ 0, %for.body23.lr.ph ], [ 1, %if.end32.prol ]
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %for.end36.loopexit, label %for.body23.lr.ph.split.split

for.body23.lr.ph.split.split:                     ; preds = %for.body23.lr.ph.split
  br label %for.body23

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %midp.072 = phi i8* [ %mid, %for.body.lr.ph ], [ %incdec.ptr17, %if.end ]
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %3 = load i8, i8* %midp.072, align 1, !tbaa !12
  %cmp2 = icmp ult i8 %3, 8
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint i8* %midp.072 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %sub.ptr.sub
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 -1
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr6, i64 1
  store i8 -1, i8* %add.ptr6, align 1, !tbaa !12
  %incdec.ptr7 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  store i8 -1, i8* %incdec.ptr, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr7, align 1, !tbaa !12
  %add.ptr9 = getelementptr inbounds i8, i8* %incdec.ptr7, i64 %idx.ext8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 1
  store i8 -1, i8* %add.ptr9, align 1, !tbaa !12
  %incdec.ptr11 = getelementptr inbounds i8, i8* %incdec.ptr10, i64 1
  store i8 -1, i8* %incdec.ptr11, align 1, !tbaa !12
  %add.ptr14 = getelementptr inbounds i8, i8* %incdec.ptr11, i64 %idx.ext8
  %incdec.ptr15 = getelementptr inbounds i8, i8* %add.ptr14, i64 1
  store i8 -1, i8* %add.ptr14, align 1, !tbaa !12
  %incdec.ptr16 = getelementptr inbounds i8, i8* %incdec.ptr15, i64 1
  store i8 -1, i8* %incdec.ptr15, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr16, align 1, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %incdec.ptr17 = getelementptr inbounds i8, i8* %midp.072, i64 1
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond73 = icmp eq i32 %inc, %mul
  br i1 %exitcond73, label %for.cond19.preheader.loopexit, label %for.body

for.body23:                                       ; preds = %if.end32.1, %for.body23.lr.ph.split.split
  %midp.169 = phi i8* [ %midp.169.unr, %for.body23.lr.ph.split.split ], [ %incdec.ptr33.1, %if.end32.1 ]
  %i.168 = phi i32 [ %i.168.unr, %for.body23.lr.ph.split.split ], [ %inc35.1, %if.end32.1 ]
  %4 = load i8, i8* %midp.169, align 1, !tbaa !12
  %cmp25 = icmp ult i8 %4, 8
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %for.body23
  %sub.ptr.lhs.cast28 = ptrtoint i8* %midp.169 to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %add.ptr31 = getelementptr inbounds i8, i8* %in, i64 %sub.ptr.sub30
  store i8 0, i8* %add.ptr31, align 1, !tbaa !12
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %for.body23
  %incdec.ptr33 = getelementptr inbounds i8, i8* %midp.169, i64 1
  %5 = load i8, i8* %incdec.ptr33, align 1, !tbaa !12
  %cmp25.1 = icmp ult i8 %5, 8
  br i1 %cmp25.1, label %if.then27.1, label %if.end32.1

for.end36.loopexit.unr-lcssa:                     ; preds = %if.end32.1
  br label %for.end36.loopexit

for.end36.loopexit:                               ; preds = %for.body23.lr.ph.split, %for.end36.loopexit.unr-lcssa
  br label %for.end36

for.end36:                                        ; preds = %for.end36.loopexit, %for.cond.preheader, %for.cond19.preheader
  ret i32 undef

if.then27.1:                                      ; preds = %if.end32
  %sub.ptr.lhs.cast28.1 = ptrtoint i8* %incdec.ptr33 to i64
  %sub.ptr.sub30.1 = sub i64 %sub.ptr.lhs.cast28.1, %sub.ptr.rhs.cast29
  %add.ptr31.1 = getelementptr inbounds i8, i8* %in, i64 %sub.ptr.sub30.1
  store i8 0, i8* %add.ptr31.1, align 1, !tbaa !12
  br label %if.end32.1

if.end32.1:                                       ; preds = %if.then27.1, %if.end32
  %incdec.ptr33.1 = getelementptr inbounds i8, i8* %midp.169, i64 2
  %inc35.1 = add nsw i32 %i.168, 2
  %exitcond.1 = icmp eq i32 %inc35.1, %mul
  br i1 %exitcond.1, label %for.end36.loopexit.unr-lcssa, label %for.body23
}

; Function Attrs: norecurse nounwind uwtable
define i32 @susan_thin(i32* nocapture readonly %r, i8* %mid, i32 %x_size, i32 %y_size) #5 {
entry:
  %sub = add nsw i32 %y_size, -4
  %cmp1209 = icmp sgt i32 %sub, 4
  br i1 %cmp1209, label %for.cond1.preheader.lr.ph, label %for.end828

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %sub2 = add nsw i32 %x_size, -4
  %cmp31202 = icmp sgt i32 %sub2, 4
  %idx.ext29 = sext i32 %x_size to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc826
  %i.01212 = phi i32 [ 4, %for.cond1.preheader.lr.ph ], [ %inc827, %for.inc826 ]
  %b.01211 = phi i32 [ undef, %for.cond1.preheader.lr.ph ], [ %b.1.lcssa, %for.inc826 ]
  %a.01210 = phi i32 [ undef, %for.cond1.preheader.lr.ph ], [ %a.1.lcssa, %for.inc826 ]
  br i1 %cmp31202, label %for.body4.preheader, label %for.inc826

for.body4.preheader:                              ; preds = %for.cond1.preheader
  br label %for.body4

for.body4:                                        ; preds = %for.body4.preheader, %for.inc823
  %j.01206 = phi i32 [ %inc824, %for.inc823 ], [ 4, %for.body4.preheader ]
  %i.11205 = phi i32 [ %i.7, %for.inc823 ], [ %i.01212, %for.body4.preheader ]
  %b.11204 = phi i32 [ %b.6, %for.inc823 ], [ %b.01211, %for.body4.preheader ]
  %a.11203 = phi i32 [ %a.6, %for.inc823 ], [ %a.01210, %for.body4.preheader ]
  %mul = mul nsw i32 %i.11205, %x_size
  %add = add nsw i32 %mul, %j.01206
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %mid, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %cmp5 = icmp ult i8 %0, 8
  br i1 %cmp5, label %if.then, label %for.inc823

if.then:                                          ; preds = %for.body4
  %arrayidx10 = getelementptr inbounds i32, i32* %r, i64 %idxprom
  %1 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  %sub11 = add i32 %i.11205, -1
  %mul12 = mul nsw i32 %sub11, %x_size
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %mid, i64 %idx.ext
  %idx.ext13 = sext i32 %j.01206 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext13
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr14, i64 -1
  %2 = load i8, i8* %add.ptr15, align 1, !tbaa !12
  %cmp17 = icmp ult i8 %2, 8
  %conv18 = zext i1 %cmp17 to i32
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr15, i64 1
  %3 = load i8, i8* %add.ptr19, align 1, !tbaa !12
  %cmp21 = icmp ult i8 %3, 8
  %conv22 = zext i1 %cmp21 to i32
  %add23 = add nuw nsw i32 %conv22, %conv18
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr15, i64 2
  %4 = load i8, i8* %add.ptr24, align 1, !tbaa !12
  %cmp26 = icmp ult i8 %4, 8
  %conv27 = zext i1 %cmp26 to i32
  %add28 = add nuw nsw i32 %add23, %conv27
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr15, i64 %idx.ext29
  %5 = load i8, i8* %add.ptr30, align 1, !tbaa !12
  %cmp32 = icmp ult i8 %5, 8
  %conv33 = zext i1 %cmp32 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr30, i64 2
  %6 = load i8, i8* %add.ptr37, align 1, !tbaa !12
  %cmp39 = icmp ult i8 %6, 8
  %conv40 = zext i1 %cmp39 to i32
  %add41 = add nuw nsw i32 %add34, %conv40
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr30, i64 %idx.ext29
  %7 = load i8, i8* %add.ptr45, align 1, !tbaa !12
  %cmp47 = icmp ult i8 %7, 8
  %conv48 = zext i1 %cmp47 to i32
  %add49 = add nuw nsw i32 %add41, %conv48
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr45, i64 1
  %8 = load i8, i8* %add.ptr54, align 1, !tbaa !12
  %cmp56 = icmp ult i8 %8, 8
  %conv57 = zext i1 %cmp56 to i32
  %add58 = add nuw nsw i32 %add49, %conv57
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr45, i64 2
  %9 = load i8, i8* %add.ptr63, align 1, !tbaa !12
  %cmp65 = icmp ult i8 %9, 8
  %conv66 = zext i1 %cmp65 to i32
  %add67 = add nsw i32 %add58, %conv66
  switch i32 %add67, label %if.end412 [
    i32 0, label %if.then70
    i32 1, label %land.lhs.true
  ]

if.then70:                                        ; preds = %if.then
  store i8 100, i8* %arrayidx, align 1, !tbaa !12
  br label %for.inc823

land.lhs.true:                                    ; preds = %if.then
  %cmp82 = icmp ult i8 %0, 6
  br i1 %cmp82, label %if.then84, label %for.inc823

if.then84:                                        ; preds = %land.lhs.true
  %add87 = add nsw i32 %mul12, %j.01206
  %sub88 = add nsw i32 %add87, -1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds i32, i32* %r, i64 %idxprom89
  %10 = load i32, i32* %arrayidx90, align 4, !tbaa !5
  %idxprom95 = sext i32 %add87 to i64
  %arrayidx96 = getelementptr inbounds i32, i32* %r, i64 %idxprom95
  %11 = load i32, i32* %arrayidx96, align 4, !tbaa !5
  %add101 = add nsw i32 %add87, 1
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds i32, i32* %r, i64 %idxprom102
  %12 = load i32, i32* %arrayidx103, align 4, !tbaa !5
  %sub107 = add nsw i32 %add, -1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds i32, i32* %r, i64 %idxprom108
  %13 = load i32, i32* %arrayidx109, align 4, !tbaa !5
  %add114 = add nsw i32 %add, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds i32, i32* %r, i64 %idxprom115
  %14 = load i32, i32* %arrayidx116, align 4, !tbaa !5
  %add118 = add nsw i32 %i.11205, 1
  %mul119 = mul nsw i32 %add118, %x_size
  %add120 = add nsw i32 %mul119, %j.01206
  %sub121 = add nsw i32 %add120, -1
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds i32, i32* %r, i64 %idxprom122
  %15 = load i32, i32* %arrayidx123, align 4, !tbaa !5
  %idxprom128 = sext i32 %add120 to i64
  %arrayidx129 = getelementptr inbounds i32, i32* %r, i64 %idxprom128
  %16 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %add134 = add nsw i32 %add120, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds i32, i32* %r, i64 %idxprom135
  %17 = load i32, i32* %arrayidx136, align 4, !tbaa !5
  %arrayidx143 = getelementptr inbounds i8, i8* %mid, i64 %idxprom89
  %18 = load i8, i8* %arrayidx143, align 1, !tbaa !12
  %cmp145 = icmp ult i8 %18, 8
  br i1 %cmp145, label %if.then147, label %if.else

if.then147:                                       ; preds = %if.then84
  %mul152 = shl nsw i32 %12, 1
  %mul154 = shl nsw i32 %15, 1
  %mul156 = mul nsw i32 %14, 3
  %mul158 = mul nsw i32 %16, 3
  %mul160 = shl nsw i32 %17, 2
  br label %for.cond336.preheader.preheader

if.else:                                          ; preds = %if.then84
  %arrayidx165 = getelementptr inbounds i8, i8* %mid, i64 %idxprom95
  %19 = load i8, i8* %arrayidx165, align 1, !tbaa !12
  %cmp167 = icmp ult i8 %19, 8
  br i1 %cmp167, label %if.then169, label %if.else183

if.then169:                                       ; preds = %if.else
  %mul174 = shl nsw i32 %13, 1
  %mul176 = shl nsw i32 %14, 1
  %mul178 = mul nsw i32 %15, 3
  %mul180 = mul nsw i32 %17, 3
  %mul182 = shl nsw i32 %16, 2
  br label %for.cond336.preheader.preheader

if.else183:                                       ; preds = %if.else
  %arrayidx189 = getelementptr inbounds i8, i8* %mid, i64 %idxprom102
  %20 = load i8, i8* %arrayidx189, align 1, !tbaa !12
  %cmp191 = icmp ult i8 %20, 8
  br i1 %cmp191, label %if.then193, label %if.else207

if.then193:                                       ; preds = %if.else183
  %mul198 = shl nsw i32 %10, 1
  %mul200 = shl nsw i32 %17, 1
  %mul202 = mul nsw i32 %13, 3
  %mul204 = mul nsw i32 %16, 3
  %mul206 = shl nsw i32 %15, 2
  br label %for.cond336.preheader.preheader

if.else207:                                       ; preds = %if.else183
  %arrayidx212 = getelementptr inbounds i8, i8* %mid, i64 %idxprom108
  %21 = load i8, i8* %arrayidx212, align 1, !tbaa !12
  %cmp214 = icmp ult i8 %21, 8
  br i1 %cmp214, label %if.then216, label %if.else230

if.then216:                                       ; preds = %if.else207
  %mul221 = shl nsw i32 %11, 1
  %mul223 = shl nsw i32 %16, 1
  %mul225 = mul nsw i32 %12, 3
  %mul227 = mul nsw i32 %17, 3
  %mul229 = shl nsw i32 %14, 2
  br label %for.cond336.preheader.preheader

if.else230:                                       ; preds = %if.else207
  %arrayidx235 = getelementptr inbounds i8, i8* %mid, i64 %idxprom115
  %22 = load i8, i8* %arrayidx235, align 1, !tbaa !12
  %cmp237 = icmp ult i8 %22, 8
  br i1 %cmp237, label %if.then239, label %if.else253

if.then239:                                       ; preds = %if.else230
  %mul244 = shl nsw i32 %11, 1
  %mul246 = shl nsw i32 %16, 1
  %mul248 = mul nsw i32 %10, 3
  %mul250 = mul nsw i32 %15, 3
  %mul252 = shl nsw i32 %13, 2
  br label %for.cond336.preheader.preheader

if.else253:                                       ; preds = %if.else230
  %arrayidx259 = getelementptr inbounds i8, i8* %mid, i64 %idxprom122
  %23 = load i8, i8* %arrayidx259, align 1, !tbaa !12
  %cmp261 = icmp ult i8 %23, 8
  br i1 %cmp261, label %if.then263, label %if.else277

if.then263:                                       ; preds = %if.else253
  %mul268 = shl nsw i32 %10, 1
  %mul270 = shl nsw i32 %17, 1
  %mul272 = mul nsw i32 %11, 3
  %mul274 = mul nsw i32 %14, 3
  %mul276 = shl nsw i32 %12, 2
  br label %for.cond336.preheader.preheader

if.else277:                                       ; preds = %if.else253
  %arrayidx282 = getelementptr inbounds i8, i8* %mid, i64 %idxprom128
  %24 = load i8, i8* %arrayidx282, align 1, !tbaa !12
  %cmp284 = icmp ult i8 %24, 8
  br i1 %cmp284, label %if.then286, label %if.else300

if.then286:                                       ; preds = %if.else277
  %mul291 = shl nsw i32 %13, 1
  %mul293 = shl nsw i32 %14, 1
  %mul295 = mul nsw i32 %10, 3
  %mul297 = mul nsw i32 %12, 3
  %mul299 = shl nsw i32 %11, 2
  br label %for.cond336.preheader.preheader

if.else300:                                       ; preds = %if.else277
  %arrayidx306 = getelementptr inbounds i8, i8* %mid, i64 %idxprom135
  %25 = load i8, i8* %arrayidx306, align 1, !tbaa !12
  %cmp308 = icmp ult i8 %25, 8
  br i1 %cmp308, label %if.then310, label %for.cond336.preheader.preheader

if.then310:                                       ; preds = %if.else300
  %mul315 = shl nsw i32 %15, 1
  %mul317 = shl nsw i32 %12, 1
  %mul319 = mul nsw i32 %11, 3
  %mul321 = mul nsw i32 %13, 3
  %mul323 = shl nsw i32 %10, 2
  br label %for.cond336.preheader.preheader

for.cond336.preheader.preheader:                  ; preds = %if.then169, %if.then216, %if.then263, %if.else300, %if.then310, %if.then286, %if.then239, %if.then193, %if.then147
  %26 = phi i32 [ %mul180, %if.then169 ], [ %mul227, %if.then216 ], [ %mul270, %if.then263 ], [ %17, %if.else300 ], [ 0, %if.then310 ], [ 0, %if.then286 ], [ 0, %if.then239 ], [ %mul200, %if.then193 ], [ %mul160, %if.then147 ]
  %27 = phi i32 [ %mul182, %if.then169 ], [ %mul223, %if.then216 ], [ 0, %if.then263 ], [ %16, %if.else300 ], [ 0, %if.then310 ], [ 0, %if.then286 ], [ %mul246, %if.then239 ], [ %mul204, %if.then193 ], [ %mul158, %if.then147 ]
  %28 = phi i32 [ %mul178, %if.then169 ], [ 0, %if.then216 ], [ 0, %if.then263 ], [ %15, %if.else300 ], [ %mul315, %if.then310 ], [ 0, %if.then286 ], [ %mul250, %if.then239 ], [ %mul206, %if.then193 ], [ %mul154, %if.then147 ]
  %29 = phi i32 [ %mul176, %if.then169 ], [ %mul229, %if.then216 ], [ %mul274, %if.then263 ], [ %14, %if.else300 ], [ 0, %if.then310 ], [ %mul293, %if.then286 ], [ 0, %if.then239 ], [ 0, %if.then193 ], [ %mul156, %if.then147 ]
  %30 = phi i32 [ %mul174, %if.then169 ], [ 0, %if.then216 ], [ 0, %if.then263 ], [ %13, %if.else300 ], [ %mul321, %if.then310 ], [ %mul291, %if.then286 ], [ %mul252, %if.then239 ], [ %mul202, %if.then193 ], [ 0, %if.then147 ]
  %31 = phi i32 [ 0, %if.then169 ], [ %mul225, %if.then216 ], [ %mul276, %if.then263 ], [ %12, %if.else300 ], [ %mul317, %if.then310 ], [ %mul297, %if.then286 ], [ 0, %if.then239 ], [ 0, %if.then193 ], [ %mul152, %if.then147 ]
  %32 = phi i32 [ 0, %if.then169 ], [ %mul221, %if.then216 ], [ %mul272, %if.then263 ], [ %11, %if.else300 ], [ %mul319, %if.then310 ], [ %mul299, %if.then286 ], [ %mul244, %if.then239 ], [ 0, %if.then193 ], [ 0, %if.then147 ]
  %33 = phi i32 [ 0, %if.then169 ], [ 0, %if.then216 ], [ %mul268, %if.then263 ], [ %10, %if.else300 ], [ %mul323, %if.then310 ], [ %mul295, %if.then286 ], [ %mul248, %if.then239 ], [ %mul198, %if.then193 ], [ 0, %if.then147 ]
  %cmp345 = icmp sgt i32 %33, 0
  %.m.1 = select i1 %cmp345, i32 %33, i32 0
  %x.0.b.3 = select i1 %cmp345, i32 0, i32 %b.11204
  %cmp345.1 = icmp sgt i32 %32, %.m.1
  %.m.1.1 = select i1 %cmp345.1, i32 %32, i32 %.m.1
  %34 = or i1 %cmp345.1, %cmp345
  %x.0.b.3.1 = select i1 %cmp345.1, i32 1, i32 %x.0.b.3
  %cmp345.2 = icmp sgt i32 %31, %.m.1.1
  %.m.1.2 = select i1 %cmp345.2, i32 %31, i32 %.m.1.1
  %35 = or i1 %cmp345.2, %34
  %y.0.a.3.2 = select i1 %35, i32 0, i32 %a.11203
  %x.0.b.3.2 = select i1 %cmp345.2, i32 2, i32 %x.0.b.3.1
  %cmp345.11219 = icmp sgt i32 %30, %.m.1.2
  %.m.1.11220 = select i1 %cmp345.11219, i32 %30, i32 %.m.1.2
  %x.0.b.3.11222 = select i1 %cmp345.11219, i32 0, i32 %x.0.b.3.2
  %cmp345.1.1 = icmp slt i32 %.m.1.11220, 0
  %.m.1.1.1 = select i1 %cmp345.1.1, i32 0, i32 %.m.1.11220
  %36 = or i1 %cmp345.1.1, %cmp345.11219
  %x.0.b.3.1.1 = select i1 %cmp345.1.1, i32 1, i32 %x.0.b.3.11222
  %cmp345.2.1 = icmp sgt i32 %29, %.m.1.1.1
  %.m.1.2.1 = select i1 %cmp345.2.1, i32 %29, i32 %.m.1.1.1
  %37 = or i1 %cmp345.2.1, %36
  %y.0.a.3.2.1 = select i1 %37, i32 1, i32 %y.0.a.3.2
  %x.0.b.3.2.1 = select i1 %cmp345.2.1, i32 2, i32 %x.0.b.3.1.1
  %cmp345.21224 = icmp sgt i32 %28, %.m.1.2.1
  %.m.1.21225 = select i1 %cmp345.21224, i32 %28, i32 %.m.1.2.1
  %x.0.b.3.21227 = select i1 %cmp345.21224, i32 0, i32 %x.0.b.3.2.1
  %cmp345.1.2 = icmp sgt i32 %27, %.m.1.21225
  %.m.1.1.2 = select i1 %cmp345.1.2, i32 %27, i32 %.m.1.21225
  %38 = or i1 %cmp345.1.2, %cmp345.21224
  %x.0.b.3.1.2 = select i1 %cmp345.1.2, i32 1, i32 %x.0.b.3.21227
  %cmp345.2.2 = icmp sgt i32 %26, %.m.1.1.2
  %.m.1.2.2 = select i1 %cmp345.2.2, i32 %26, i32 %.m.1.1.2
  %39 = or i1 %cmp345.2.2, %38
  %y.0.a.3.2.2 = select i1 %39, i32 2, i32 %y.0.a.3.2.1
  %x.0.b.3.2.2 = select i1 %cmp345.2.2, i32 2, i32 %x.0.b.3.1.2
  %cmp357 = icmp sgt i32 %.m.1.2.2, 0
  br i1 %cmp357, label %if.then359, label %if.end412

if.then359:                                       ; preds = %for.cond336.preheader.preheader
  %cmp365 = icmp ult i8 %0, 4
  br i1 %cmp365, label %if.then367, label %if.else376

if.then367:                                       ; preds = %if.then359
  %sub369 = add i32 %sub11, %y.0.a.3.2.2
  %mul370 = mul nsw i32 %sub369, %x_size
  %add371 = add i32 %j.01206, -1
  %add372 = add i32 %add371, %x.0.b.3.2.2
  %sub373 = add i32 %add372, %mul370
  %idxprom374 = sext i32 %sub373 to i64
  %arrayidx375 = getelementptr inbounds i8, i8* %mid, i64 %idxprom374
  store i8 4, i8* %arrayidx375, align 1, !tbaa !12
  br label %if.end392

if.else376:                                       ; preds = %if.then359
  %add382 = add i8 %0, 1
  %sub385 = add i32 %sub11, %y.0.a.3.2.2
  %mul386 = mul nsw i32 %sub385, %x_size
  %add387 = add i32 %j.01206, -1
  %add388 = add i32 %add387, %x.0.b.3.2.2
  %sub389 = add i32 %add388, %mul386
  %idxprom390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds i8, i8* %mid, i64 %idxprom390
  store i8 %add382, i8* %arrayidx391, align 1, !tbaa !12
  br label %if.end392

if.end392:                                        ; preds = %if.else376, %if.then367
  %add393 = shl i32 %y.0.a.3.2.2, 1
  %add394 = add nsw i32 %add393, %x.0.b.3.2.2
  %cmp395 = icmp slt i32 %add394, 3
  br i1 %cmp395, label %if.then397, label %if.end412

if.then397:                                       ; preds = %if.end392
  %add399 = add i32 %sub11, %y.0.a.3.2.2
  %sub400 = add i32 %j.01206, -2
  %add401 = add i32 %sub400, %x.0.b.3.2.2
  %cmp402 = icmp slt i32 %add399, 4
  %.add399 = select i1 %cmp402, i32 4, i32 %add399
  %cmp406 = icmp slt i32 %add401, 4
  %.add401 = select i1 %cmp406, i32 4, i32 %add401
  br label %if.end412

if.end412:                                        ; preds = %if.then397, %if.then, %for.cond336.preheader.preheader, %if.end392
  %a.5 = phi i32 [ %y.0.a.3.2.2, %if.end392 ], [ %y.0.a.3.2.2, %for.cond336.preheader.preheader ], [ %a.11203, %if.then ], [ %y.0.a.3.2.2, %if.then397 ]
  %b.5 = phi i32 [ %x.0.b.3.2.2, %if.end392 ], [ %x.0.b.3.2.2, %for.cond336.preheader.preheader ], [ %b.11204, %if.then ], [ %x.0.b.3.2.2, %if.then397 ]
  %i.3 = phi i32 [ %i.11205, %if.end392 ], [ %i.11205, %for.cond336.preheader.preheader ], [ %i.11205, %if.then ], [ %.add399, %if.then397 ]
  %j.1 = phi i32 [ %j.01206, %if.end392 ], [ %j.01206, %for.cond336.preheader.preheader ], [ %j.01206, %if.then ], [ %.add401, %if.then397 ]
  %cmp413 = icmp eq i32 %add67, 2
  br i1 %cmp413, label %if.then415, label %if.end709

if.then415:                                       ; preds = %if.end412
  %sub416 = add nsw i32 %i.3, -1
  %mul417 = mul nsw i32 %sub416, %x_size
  %add418 = add nsw i32 %mul417, %j.1
  %sub419 = add nsw i32 %add418, -1
  %idxprom420 = sext i32 %sub419 to i64
  %arrayidx421 = getelementptr inbounds i8, i8* %mid, i64 %idxprom420
  %40 = load i8, i8* %arrayidx421, align 1, !tbaa !12
  %cmp423 = icmp ult i8 %40, 8
  %conv424 = zext i1 %cmp423 to i32
  %add428 = add nsw i32 %add418, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds i8, i8* %mid, i64 %idxprom429
  %41 = load i8, i8* %arrayidx430, align 1, !tbaa !12
  %cmp432 = icmp ult i8 %41, 8
  %conv433 = zext i1 %cmp432 to i32
  %add434 = add nsw i32 %i.3, 1
  %mul435 = mul nsw i32 %add434, %x_size
  %add436 = add nsw i32 %mul435, %j.1
  %sub437 = add nsw i32 %add436, -1
  %idxprom438 = sext i32 %sub437 to i64
  %arrayidx439 = getelementptr inbounds i8, i8* %mid, i64 %idxprom438
  %42 = load i8, i8* %arrayidx439, align 1, !tbaa !12
  %cmp441 = icmp ult i8 %42, 8
  %conv442 = zext i1 %cmp441 to i32
  %add446 = add nsw i32 %add436, 1
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds i8, i8* %mid, i64 %idxprom447
  %43 = load i8, i8* %arrayidx448, align 1, !tbaa !12
  %cmp450 = icmp ult i8 %43, 8
  %conv451 = zext i1 %cmp450 to i32
  %add452 = add nuw nsw i32 %conv433, %conv424
  %add453 = add nuw nsw i32 %add452, %conv442
  %add454 = add nuw nsw i32 %add453, %conv451
  %cmp455 = icmp eq i32 %add454, 2
  br i1 %cmp455, label %land.lhs.true457, label %if.else565

land.lhs.true457:                                 ; preds = %if.then415
  %or = or i32 %conv451, %conv424
  %or458 = or i32 %conv442, %conv433
  %and = and i32 %or, %or458
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else565, label %if.then459

if.then459:                                       ; preds = %land.lhs.true457
  %not.cmp432 = xor i1 %cmp432, true
  %. = sext i1 %not.cmp432 to i32
  %.1186 = sext i1 %cmp432 to i32
  %.1188 = xor i32 %conv433, 1
  %x.1 = select i1 %cmp423, i32 %., i32 %conv433
  %y.1 = select i1 %cmp423, i32 %.1186, i32 %.1188
  %add472 = add nsw i32 %y.1, %i.3
  %mul473 = mul nsw i32 %add472, %x_size
  %add474 = add i32 %x.1, %j.1
  %add475 = add i32 %add474, %mul473
  %idxprom476 = sext i32 %add475 to i64
  %arrayidx477 = getelementptr inbounds i32, i32* %r, i64 %idxprom476
  %44 = load i32, i32* %arrayidx477, align 4, !tbaa !5
  %conv478 = sitofp i32 %44 to float
  %conv479 = sitofp i32 %1 to float
  %div = fdiv float %conv478, %conv479
  %conv480 = fpext float %div to double
  %cmp481 = fcmp ogt double %conv480, 7.000000e-01
  br i1 %cmp481, label %if.then483, label %for.inc823

if.then483:                                       ; preds = %if.then459
  %cmp484 = icmp eq i32 %x.1, 0
  br i1 %cmp484, label %land.lhs.true486, label %lor.lhs.false

land.lhs.true486:                                 ; preds = %if.then483
  %mul487 = shl nsw i32 %y.1, 1
  %add488 = add nsw i32 %mul487, %i.3
  %mul489 = mul nsw i32 %add488, %x_size
  %add490 = add nsw i32 %mul489, %j.1
  %idxprom491 = sext i32 %add490 to i64
  %arrayidx492 = getelementptr inbounds i8, i8* %mid, i64 %idxprom491
  %45 = load i8, i8* %arrayidx492, align 1, !tbaa !12
  %cmp494 = icmp ugt i8 %45, 7
  br i1 %cmp494, label %land.lhs.true496, label %lor.lhs.false

land.lhs.true496:                                 ; preds = %land.lhs.true486
  %sub501 = add nsw i32 %add490, -1
  %idxprom502 = sext i32 %sub501 to i64
  %arrayidx503 = getelementptr inbounds i8, i8* %mid, i64 %idxprom502
  %46 = load i8, i8* %arrayidx503, align 1, !tbaa !12
  %cmp505 = icmp ugt i8 %46, 7
  br i1 %cmp505, label %land.lhs.true507, label %lor.lhs.false

land.lhs.true507:                                 ; preds = %land.lhs.true496
  %add512 = add nsw i32 %add490, 1
  %idxprom513 = sext i32 %add512 to i64
  %arrayidx514 = getelementptr inbounds i8, i8* %mid, i64 %idxprom513
  %47 = load i8, i8* %arrayidx514, align 1, !tbaa !12
  %cmp516 = icmp ugt i8 %47, 7
  br i1 %cmp516, label %land.lhs.true507.if.then552_crit_edge, label %lor.lhs.false

land.lhs.true507.if.then552_crit_edge:            ; preds = %land.lhs.true507
  %.pre = mul nsw i32 %i.3, %x_size
  %.pre1228 = add nsw i32 %.pre, %j.1
  br label %if.then552

lor.lhs.false:                                    ; preds = %land.lhs.true507, %land.lhs.true496, %land.lhs.true486, %if.then483
  %cmp518 = icmp eq i32 %y.1, 0
  br i1 %cmp518, label %land.lhs.true520, label %for.inc823

land.lhs.true520:                                 ; preds = %lor.lhs.false
  %mul521 = mul nsw i32 %i.3, %x_size
  %add522 = add nsw i32 %mul521, %j.1
  %mul523 = shl nsw i32 %x.1, 1
  %add524 = add nsw i32 %add522, %mul523
  %idxprom525 = sext i32 %add524 to i64
  %arrayidx526 = getelementptr inbounds i8, i8* %mid, i64 %idxprom525
  %48 = load i8, i8* %arrayidx526, align 1, !tbaa !12
  %cmp528 = icmp ugt i8 %48, 7
  br i1 %cmp528, label %land.lhs.true530, label %for.inc823

land.lhs.true530:                                 ; preds = %land.lhs.true520
  %add535 = add nsw i32 %mul523, %add436
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds i8, i8* %mid, i64 %idxprom536
  %49 = load i8, i8* %arrayidx537, align 1, !tbaa !12
  %cmp539 = icmp ugt i8 %49, 7
  br i1 %cmp539, label %land.lhs.true541, label %for.inc823

land.lhs.true541:                                 ; preds = %land.lhs.true530
  %add546 = add nsw i32 %mul523, %add418
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds i8, i8* %mid, i64 %idxprom547
  %50 = load i8, i8* %arrayidx548, align 1, !tbaa !12
  %cmp550 = icmp ugt i8 %50, 7
  br i1 %cmp550, label %if.then552, label %for.inc823

if.then552:                                       ; preds = %land.lhs.true507.if.then552_crit_edge, %land.lhs.true541
  %add554.pre-phi = phi i32 [ %.pre1228, %land.lhs.true507.if.then552_crit_edge ], [ %add522, %land.lhs.true541 ]
  %idxprom555 = sext i32 %add554.pre-phi to i64
  %arrayidx556 = getelementptr inbounds i8, i8* %mid, i64 %idxprom555
  store i8 100, i8* %arrayidx556, align 1, !tbaa !12
  %arrayidx562 = getelementptr inbounds i8, i8* %mid, i64 %idxprom476
  store i8 3, i8* %arrayidx562, align 1, !tbaa !12
  br label %for.inc823

if.else565:                                       ; preds = %land.lhs.true457, %if.then415
  %idxprom569 = sext i32 %add418 to i64
  %arrayidx570 = getelementptr inbounds i8, i8* %mid, i64 %idxprom569
  %51 = load i8, i8* %arrayidx570, align 1, !tbaa !12
  %cmp572 = icmp ult i8 %51, 8
  %conv573 = zext i1 %cmp572 to i32
  %mul574 = mul nsw i32 %i.3, %x_size
  %add575 = add nsw i32 %mul574, %j.1
  %add576 = add nsw i32 %add575, 1
  %idxprom577 = sext i32 %add576 to i64
  %arrayidx578 = getelementptr inbounds i8, i8* %mid, i64 %idxprom577
  %52 = load i8, i8* %arrayidx578, align 1, !tbaa !12
  %cmp580 = icmp ult i8 %52, 8
  %conv581 = zext i1 %cmp580 to i32
  %idxprom585 = sext i32 %add436 to i64
  %arrayidx586 = getelementptr inbounds i8, i8* %mid, i64 %idxprom585
  %53 = load i8, i8* %arrayidx586, align 1, !tbaa !12
  %cmp588 = icmp ult i8 %53, 8
  %conv589 = zext i1 %cmp588 to i32
  %sub592 = add nsw i32 %add575, -1
  %idxprom593 = sext i32 %sub592 to i64
  %arrayidx594 = getelementptr inbounds i8, i8* %mid, i64 %idxprom593
  %54 = load i8, i8* %arrayidx594, align 1, !tbaa !12
  %cmp596 = icmp ult i8 %54, 8
  %conv597 = zext i1 %cmp596 to i32
  %add598 = add nuw nsw i32 %conv581, %conv573
  %add599 = add nuw nsw i32 %add598, %conv589
  %add600 = add nuw nsw i32 %add599, %conv597
  %cmp601 = icmp eq i32 %add600, 2
  br i1 %cmp601, label %land.lhs.true603, label %for.inc823

land.lhs.true603:                                 ; preds = %if.else565
  %or604 = or i32 %conv597, %conv581
  %or605 = or i32 %conv589, %conv573
  %and606 = and i32 %or604, %or605
  %tobool607 = icmp eq i32 %and606, 0
  br i1 %tobool607, label %for.inc823, label %land.lhs.true608

land.lhs.true608:                                 ; preds = %land.lhs.true603
  %sub609 = add nsw i32 %i.3, -2
  %mul610 = mul nsw i32 %sub609, %x_size
  %add611 = add nsw i32 %mul610, %j.1
  %sub612 = add nsw i32 %add611, -1
  %idxprom613 = sext i32 %sub612 to i64
  %arrayidx614 = getelementptr inbounds i8, i8* %mid, i64 %idxprom613
  %55 = load i8, i8* %arrayidx614, align 1, !tbaa !12
  %cmp616 = icmp ult i8 %55, 8
  %conv617 = zext i1 %cmp616 to i32
  %add621 = add nsw i32 %add611, 1
  %idxprom622 = sext i32 %add621 to i64
  %arrayidx623 = getelementptr inbounds i8, i8* %mid, i64 %idxprom622
  %56 = load i8, i8* %arrayidx623, align 1, !tbaa !12
  %cmp625 = icmp ult i8 %56, 8
  %conv626 = zext i1 %cmp625 to i32
  %or627 = or i32 %conv626, %conv617
  %and628 = and i32 %or627, %conv573
  %sub632 = add nsw i32 %add418, -2
  %idxprom633 = sext i32 %sub632 to i64
  %arrayidx634 = getelementptr inbounds i8, i8* %mid, i64 %idxprom633
  %57 = load i8, i8* %arrayidx634, align 1, !tbaa !12
  %cmp636 = icmp ult i8 %57, 8
  %conv637 = zext i1 %cmp636 to i32
  %sub641 = add nsw i32 %add436, -2
  %idxprom642 = sext i32 %sub641 to i64
  %arrayidx643 = getelementptr inbounds i8, i8* %mid, i64 %idxprom642
  %58 = load i8, i8* %arrayidx643, align 1, !tbaa !12
  %cmp645 = icmp ult i8 %58, 8
  %conv646 = zext i1 %cmp645 to i32
  %or647 = or i32 %conv646, %conv637
  %and648 = and i32 %or647, %conv597
  %or649 = or i32 %and648, %and628
  %add653 = add nsw i32 %add418, 2
  %idxprom654 = sext i32 %add653 to i64
  %arrayidx655 = getelementptr inbounds i8, i8* %mid, i64 %idxprom654
  %59 = load i8, i8* %arrayidx655, align 1, !tbaa !12
  %cmp657 = icmp ult i8 %59, 8
  %conv658 = zext i1 %cmp657 to i32
  %add662 = add nsw i32 %add436, 2
  %idxprom663 = sext i32 %add662 to i64
  %arrayidx664 = getelementptr inbounds i8, i8* %mid, i64 %idxprom663
  %60 = load i8, i8* %arrayidx664, align 1, !tbaa !12
  %cmp666 = icmp ult i8 %60, 8
  %conv667 = zext i1 %cmp666 to i32
  %or668 = or i32 %conv667, %conv658
  %and669 = and i32 %or668, %conv581
  %or670 = or i32 %or649, %and669
  %add671 = add nsw i32 %i.3, 2
  %mul672 = mul nsw i32 %add671, %x_size
  %add673 = add nsw i32 %mul672, %j.1
  %sub674 = add nsw i32 %add673, -1
  %idxprom675 = sext i32 %sub674 to i64
  %arrayidx676 = getelementptr inbounds i8, i8* %mid, i64 %idxprom675
  %61 = load i8, i8* %arrayidx676, align 1, !tbaa !12
  %cmp678 = icmp ult i8 %61, 8
  %conv679 = zext i1 %cmp678 to i32
  %add683 = add nsw i32 %add673, 1
  %idxprom684 = sext i32 %add683 to i64
  %arrayidx685 = getelementptr inbounds i8, i8* %mid, i64 %idxprom684
  %62 = load i8, i8* %arrayidx685, align 1, !tbaa !12
  %cmp687 = icmp ult i8 %62, 8
  %conv688 = zext i1 %cmp687 to i32
  %or689 = or i32 %conv688, %conv679
  %and690 = and i32 %or689, %conv589
  %or691 = or i32 %or670, %and690
  %tobool692 = icmp eq i32 %or691, 0
  br i1 %tobool692, label %for.inc823, label %if.then693

if.then693:                                       ; preds = %land.lhs.true608
  %idxprom696 = sext i32 %add575 to i64
  %arrayidx697 = getelementptr inbounds i8, i8* %mid, i64 %idxprom696
  store i8 100, i8* %arrayidx697, align 1, !tbaa !12
  %sub698 = add nsw i32 %j.1, -2
  %cmp699 = icmp slt i32 %i.3, 5
  %.dec = select i1 %cmp699, i32 4, i32 %sub416
  %cmp703 = icmp slt i32 %sub698, 4
  %.sub698 = select i1 %cmp703, i32 4, i32 %sub698
  br label %for.inc823

if.end709:                                        ; preds = %if.end412
  %cmp710 = icmp sgt i32 %add67, 2
  br i1 %cmp710, label %if.then712, label %for.inc823

if.then712:                                       ; preds = %if.end709
  %sub713 = add nsw i32 %i.3, -1
  %mul714 = mul nsw i32 %sub713, %x_size
  %add715 = add nsw i32 %mul714, %j.1
  %idxprom716 = sext i32 %add715 to i64
  %arrayidx717 = getelementptr inbounds i8, i8* %mid, i64 %idxprom716
  %63 = load i8, i8* %arrayidx717, align 1, !tbaa !12
  %cmp719 = icmp ult i8 %63, 8
  %conv720 = zext i1 %cmp719 to i32
  %mul721 = mul nsw i32 %i.3, %x_size
  %add722 = add nsw i32 %mul721, %j.1
  %add723 = add nsw i32 %add722, 1
  %idxprom724 = sext i32 %add723 to i64
  %arrayidx725 = getelementptr inbounds i8, i8* %mid, i64 %idxprom724
  %64 = load i8, i8* %arrayidx725, align 1, !tbaa !12
  %cmp727 = icmp ult i8 %64, 8
  %conv728 = zext i1 %cmp727 to i32
  %add729 = add nsw i32 %i.3, 1
  %mul730 = mul nsw i32 %add729, %x_size
  %add731 = add nsw i32 %mul730, %j.1
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds i8, i8* %mid, i64 %idxprom732
  %65 = load i8, i8* %arrayidx733, align 1, !tbaa !12
  %cmp735 = icmp ult i8 %65, 8
  %conv736 = zext i1 %cmp735 to i32
  %sub739 = add nsw i32 %add722, -1
  %idxprom740 = sext i32 %sub739 to i64
  %arrayidx741 = getelementptr inbounds i8, i8* %mid, i64 %idxprom740
  %66 = load i8, i8* %arrayidx741, align 1, !tbaa !12
  %cmp743 = icmp ult i8 %66, 8
  %conv744 = zext i1 %cmp743 to i32
  %add745 = add nuw nsw i32 %conv728, %conv720
  %add746 = add nuw nsw i32 %add745, %conv736
  %add747 = add nuw nsw i32 %add746, %conv744
  %cmp748 = icmp ugt i32 %add747, 1
  br i1 %cmp748, label %if.then750, label %for.inc823

if.then750:                                       ; preds = %if.then712
  %sub754 = add nsw i32 %add715, -1
  %idxprom755 = sext i32 %sub754 to i64
  %arrayidx756 = getelementptr inbounds i8, i8* %mid, i64 %idxprom755
  %67 = load i8, i8* %arrayidx756, align 1, !tbaa !12
  %cmp758 = icmp ult i8 %67, 8
  %conv759 = zext i1 %cmp758 to i32
  %add763 = add nsw i32 %add715, 1
  %idxprom764 = sext i32 %add763 to i64
  %arrayidx765 = getelementptr inbounds i8, i8* %mid, i64 %idxprom764
  %68 = load i8, i8* %arrayidx765, align 1, !tbaa !12
  %cmp767 = icmp ult i8 %68, 8
  %conv768 = zext i1 %cmp767 to i32
  %sub772 = add nsw i32 %add731, -1
  %idxprom773 = sext i32 %sub772 to i64
  %arrayidx774 = getelementptr inbounds i8, i8* %mid, i64 %idxprom773
  %69 = load i8, i8* %arrayidx774, align 1, !tbaa !12
  %cmp776 = icmp ult i8 %69, 8
  %conv777 = zext i1 %cmp776 to i32
  %add781 = add nsw i32 %add731, 1
  %idxprom782 = sext i32 %add781 to i64
  %arrayidx783 = getelementptr inbounds i8, i8* %mid, i64 %idxprom782
  %70 = load i8, i8* %arrayidx783, align 1, !tbaa !12
  %cmp785 = icmp ult i8 %70, 8
  %conv786 = zext i1 %cmp785 to i32
  %or787 = or i32 %conv759, %conv720
  %or788 = or i32 %conv768, %conv728
  %or789 = or i32 %conv786, %conv736
  %or790 = or i32 %conv777, %conv744
  %and794 = and i32 %or788, %conv720
  %and795 = and i32 %or789, %conv728
  %and797 = and i32 %or790, %conv736
  %and799 = and i32 %or787, %conv744
  %add796.neg = add nuw nsw i32 %or788, %or787
  %add798.neg = sub nsw i32 %add796.neg, %and799
  %add800.neg = add nsw i32 %add798.neg, %or790
  %add791 = sub nsw i32 %add800.neg, %and794
  %add792 = add nsw i32 %add791, %or789
  %add793 = sub i32 %add792, %and797
  %sub801 = sub i32 %add793, %and795
  %cmp802 = icmp slt i32 %sub801, 2
  br i1 %cmp802, label %if.then804, label %for.inc823

if.then804:                                       ; preds = %if.then750
  %idxprom807 = sext i32 %add722 to i64
  %arrayidx808 = getelementptr inbounds i8, i8* %mid, i64 %idxprom807
  store i8 100, i8* %arrayidx808, align 1, !tbaa !12
  %sub810 = add nsw i32 %j.1, -2
  %cmp811 = icmp slt i32 %i.3, 5
  %.dec809 = select i1 %cmp811, i32 4, i32 %sub713
  %cmp815 = icmp slt i32 %sub810, 4
  %.sub810 = select i1 %cmp815, i32 4, i32 %sub810
  br label %for.inc823

for.inc823:                                       ; preds = %land.lhs.true, %if.then70, %if.else565, %if.then459, %if.then552, %land.lhs.true541, %land.lhs.true530, %land.lhs.true520, %lor.lhs.false, %land.lhs.true603, %land.lhs.true608, %if.then693, %if.then804, %for.body4, %if.then712, %if.then750, %if.end709
  %a.6 = phi i32 [ %a.5, %if.then750 ], [ %a.5, %if.then712 ], [ %a.5, %if.end709 ], [ %a.11203, %for.body4 ], [ %a.5, %if.then804 ], [ %a.5, %if.then693 ], [ %a.5, %if.else565 ], [ %a.5, %land.lhs.true603 ], [ %a.5, %land.lhs.true608 ], [ %a.5, %if.then459 ], [ %a.5, %lor.lhs.false ], [ %a.5, %land.lhs.true520 ], [ %a.5, %land.lhs.true530 ], [ %a.5, %land.lhs.true541 ], [ %a.5, %if.then552 ], [ %a.11203, %if.then70 ], [ %a.11203, %land.lhs.true ]
  %b.6 = phi i32 [ %b.5, %if.then750 ], [ %b.5, %if.then712 ], [ %b.5, %if.end709 ], [ %b.11204, %for.body4 ], [ %b.5, %if.then804 ], [ %b.5, %if.then693 ], [ %b.5, %if.else565 ], [ %b.5, %land.lhs.true603 ], [ %b.5, %land.lhs.true608 ], [ %b.5, %if.then459 ], [ %b.5, %lor.lhs.false ], [ %b.5, %land.lhs.true520 ], [ %b.5, %land.lhs.true530 ], [ %b.5, %land.lhs.true541 ], [ %b.5, %if.then552 ], [ %b.11204, %if.then70 ], [ %b.11204, %land.lhs.true ]
  %i.7 = phi i32 [ %i.3, %if.then750 ], [ %i.3, %if.then712 ], [ %i.3, %if.end709 ], [ %i.11205, %for.body4 ], [ %.dec809, %if.then804 ], [ %.dec, %if.then693 ], [ %i.3, %if.else565 ], [ %i.3, %land.lhs.true603 ], [ %i.3, %land.lhs.true608 ], [ %i.3, %if.then459 ], [ %i.3, %lor.lhs.false ], [ %i.3, %land.lhs.true520 ], [ %i.3, %land.lhs.true530 ], [ %i.3, %land.lhs.true541 ], [ %i.3, %if.then552 ], [ %i.11205, %if.then70 ], [ %i.11205, %land.lhs.true ]
  %j.3 = phi i32 [ %j.1, %if.then750 ], [ %j.1, %if.then712 ], [ %j.1, %if.end709 ], [ %j.01206, %for.body4 ], [ %.sub810, %if.then804 ], [ %.sub698, %if.then693 ], [ %j.1, %if.else565 ], [ %j.1, %land.lhs.true603 ], [ %j.1, %land.lhs.true608 ], [ %j.1, %if.then459 ], [ %j.1, %lor.lhs.false ], [ %j.1, %land.lhs.true520 ], [ %j.1, %land.lhs.true530 ], [ %j.1, %land.lhs.true541 ], [ %j.1, %if.then552 ], [ %j.01206, %if.then70 ], [ %j.01206, %land.lhs.true ]
  %inc824 = add nsw i32 %j.3, 1
  %cmp3 = icmp slt i32 %inc824, %sub2
  br i1 %cmp3, label %for.body4, label %for.inc826.loopexit

for.inc826.loopexit:                              ; preds = %for.inc823
  %i.7.lcssa = phi i32 [ %i.7, %for.inc823 ]
  %b.6.lcssa = phi i32 [ %b.6, %for.inc823 ]
  %a.6.lcssa = phi i32 [ %a.6, %for.inc823 ]
  br label %for.inc826

for.inc826:                                       ; preds = %for.inc826.loopexit, %for.cond1.preheader
  %i.1.lcssa = phi i32 [ %i.01212, %for.cond1.preheader ], [ %i.7.lcssa, %for.inc826.loopexit ]
  %b.1.lcssa = phi i32 [ %b.01211, %for.cond1.preheader ], [ %b.6.lcssa, %for.inc826.loopexit ]
  %a.1.lcssa = phi i32 [ %a.01210, %for.cond1.preheader ], [ %a.6.lcssa, %for.inc826.loopexit ]
  %inc827 = add nsw i32 %i.1.lcssa, 1
  %cmp = icmp slt i32 %inc827, %sub
  br i1 %cmp, label %for.cond1.preheader, label %for.end828.loopexit

for.end828.loopexit:                              ; preds = %for.inc826
  br label %for.end828

for.end828:                                       ; preds = %for.end828.loopexit, %entry
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define i32 @susan_edges(i8* nocapture readonly %in, i32* nocapture %r, i8* nocapture %mid, i8* readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #3 {
entry:
  %0 = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %mul1, i32 4, i1 false)
  %sub = add i32 %y_size, -3
  %cmp2044 = icmp sgt i32 %sub, 3
  br i1 %cmp2044, label %for.cond3.preheader.lr.ph, label %for.cond288.preheader

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add i32 %x_size, -3
  %cmp52042 = icmp sgt i32 %sub4, 3
  %idx.ext36 = sext i32 %sub4 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  %1 = sext i32 %x_size to i64
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc285, %for.cond3.preheader.lr.ph
  %indvars.iv2070 = phi i64 [ 3, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next2071, %for.inc285 ]
  br i1 %cmp52042, label %for.body7.lr.ph, label %for.inc285

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %2 = add nsw i64 %indvars.iv2070, -3
  %3 = mul nsw i64 %2, %1
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %3
  %4 = mul nsw i64 %indvars.iv2070, %1
  %5 = trunc i64 %4 to i32
  br label %for.body7

for.cond288.preheader.loopexit:                   ; preds = %for.inc285
  br label %for.cond288.preheader

for.cond288.preheader:                            ; preds = %for.cond288.preheader.loopexit, %entry
  %sub289 = add i32 %y_size, -4
  %cmp2902039 = icmp sgt i32 %sub289, 4
  br i1 %cmp2902039, label %for.cond293.preheader.lr.ph, label %for.end1258

for.cond293.preheader.lr.ph:                      ; preds = %for.cond288.preheader
  %sub294 = add i32 %x_size, -4
  %cmp2952036 = icmp sgt i32 %sub294, 4
  %sub354 = add nsw i32 %x_size, -3
  %idx.ext355 = sext i32 %sub354 to i64
  %sub406 = add nsw i32 %x_size, -5
  %idx.ext407 = sext i32 %sub406 to i64
  %sub473 = add nsw i32 %x_size, -6
  %idx.ext474 = sext i32 %sub473 to i64
  %6 = sext i32 %x_size to i64
  br label %for.cond293.preheader

for.body7:                                        ; preds = %for.inc, %for.body7.lr.ph
  %indvars.iv2066 = phi i64 [ 3, %for.body7.lr.ph ], [ %indvars.iv.next2067, %for.inc ]
  %j.02043 = phi i32 [ 3, %for.body7.lr.ph ], [ %inc, %for.inc ]
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv2066
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %add = add nsw i32 %j.02043, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %idx.ext15 = zext i8 %7 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %8 = load i8, i8* %add.ptr12, align 1, !tbaa !12
  %idx.ext18 = zext i8 %8 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %9 = load i8, i8* %add.ptr19, align 1, !tbaa !12
  %conv20 = zext i8 %9 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %10 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %idx.ext24 = zext i8 %10 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %11 = load i8, i8* %add.ptr26, align 1, !tbaa !12
  %conv27 = zext i8 %11 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %12 = load i8, i8* %incdec.ptr22, align 1, !tbaa !12
  %idx.ext30 = zext i8 %12 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %13 = load i8, i8* %add.ptr32, align 1, !tbaa !12
  %conv33 = zext i8 %13 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %idx.ext36
  %incdec.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 1
  %14 = load i8, i8* %add.ptr37, align 1, !tbaa !12
  %idx.ext40 = zext i8 %14 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg41
  %15 = load i8, i8* %add.ptr42, align 1, !tbaa !12
  %conv43 = zext i8 %15 to i32
  %add44 = add nuw nsw i32 %add34, %conv43
  %incdec.ptr45 = getelementptr inbounds i8, i8* %incdec.ptr38, i64 1
  %16 = load i8, i8* %incdec.ptr38, align 1, !tbaa !12
  %idx.ext47 = zext i8 %16 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg48
  %17 = load i8, i8* %add.ptr49, align 1, !tbaa !12
  %conv50 = zext i8 %17 to i32
  %add51 = add nuw nsw i32 %add44, %conv50
  %incdec.ptr52 = getelementptr inbounds i8, i8* %incdec.ptr45, i64 1
  %18 = load i8, i8* %incdec.ptr45, align 1, !tbaa !12
  %idx.ext54 = zext i8 %18 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg55
  %19 = load i8, i8* %add.ptr56, align 1, !tbaa !12
  %conv57 = zext i8 %19 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds i8, i8* %incdec.ptr52, i64 1
  %20 = load i8, i8* %incdec.ptr52, align 1, !tbaa !12
  %idx.ext61 = zext i8 %20 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg62
  %21 = load i8, i8* %add.ptr63, align 1, !tbaa !12
  %conv64 = zext i8 %21 to i32
  %add65 = add nsw i32 %add58, %conv64
  %22 = load i8, i8* %incdec.ptr59, align 1, !tbaa !12
  %idx.ext67 = zext i8 %22 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg68
  %23 = load i8, i8* %add.ptr69, align 1, !tbaa !12
  %conv70 = zext i8 %23 to i32
  %add71 = add nsw i32 %add65, %conv70
  %add.ptr74 = getelementptr inbounds i8, i8* %incdec.ptr59, i64 %idx.ext73
  %incdec.ptr75 = getelementptr inbounds i8, i8* %add.ptr74, i64 1
  %24 = load i8, i8* %add.ptr74, align 1, !tbaa !12
  %idx.ext77 = zext i8 %24 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg78
  %25 = load i8, i8* %add.ptr79, align 1, !tbaa !12
  %conv80 = zext i8 %25 to i32
  %add81 = add nsw i32 %add71, %conv80
  %incdec.ptr82 = getelementptr inbounds i8, i8* %incdec.ptr75, i64 1
  %26 = load i8, i8* %incdec.ptr75, align 1, !tbaa !12
  %idx.ext84 = zext i8 %26 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg85
  %27 = load i8, i8* %add.ptr86, align 1, !tbaa !12
  %conv87 = zext i8 %27 to i32
  %add88 = add nsw i32 %add81, %conv87
  %incdec.ptr89 = getelementptr inbounds i8, i8* %incdec.ptr82, i64 1
  %28 = load i8, i8* %incdec.ptr82, align 1, !tbaa !12
  %idx.ext91 = zext i8 %28 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg92
  %29 = load i8, i8* %add.ptr93, align 1, !tbaa !12
  %conv94 = zext i8 %29 to i32
  %add95 = add nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds i8, i8* %incdec.ptr89, i64 1
  %30 = load i8, i8* %incdec.ptr89, align 1, !tbaa !12
  %idx.ext98 = zext i8 %30 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg99
  %31 = load i8, i8* %add.ptr100, align 1, !tbaa !12
  %conv101 = zext i8 %31 to i32
  %add102 = add nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds i8, i8* %incdec.ptr96, i64 1
  %32 = load i8, i8* %incdec.ptr96, align 1, !tbaa !12
  %idx.ext105 = zext i8 %32 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg106
  %33 = load i8, i8* %add.ptr107, align 1, !tbaa !12
  %conv108 = zext i8 %33 to i32
  %add109 = add nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds i8, i8* %incdec.ptr103, i64 1
  %34 = load i8, i8* %incdec.ptr103, align 1, !tbaa !12
  %idx.ext112 = zext i8 %34 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg113
  %35 = load i8, i8* %add.ptr114, align 1, !tbaa !12
  %conv115 = zext i8 %35 to i32
  %add116 = add nsw i32 %add109, %conv115
  %36 = load i8, i8* %incdec.ptr110, align 1, !tbaa !12
  %idx.ext118 = zext i8 %36 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg119
  %37 = load i8, i8* %add.ptr120, align 1, !tbaa !12
  %conv121 = zext i8 %37 to i32
  %add122 = add nsw i32 %add116, %conv121
  %add.ptr125 = getelementptr inbounds i8, i8* %incdec.ptr110, i64 %idx.ext124
  %incdec.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 1
  %38 = load i8, i8* %add.ptr125, align 1, !tbaa !12
  %idx.ext128 = zext i8 %38 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg129
  %39 = load i8, i8* %add.ptr130, align 1, !tbaa !12
  %conv131 = zext i8 %39 to i32
  %add132 = add nsw i32 %add122, %conv131
  %incdec.ptr133 = getelementptr inbounds i8, i8* %incdec.ptr126, i64 1
  %40 = load i8, i8* %incdec.ptr126, align 1, !tbaa !12
  %idx.ext135 = zext i8 %40 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg136
  %41 = load i8, i8* %add.ptr137, align 1, !tbaa !12
  %conv138 = zext i8 %41 to i32
  %add139 = add nsw i32 %add132, %conv138
  %42 = load i8, i8* %incdec.ptr133, align 1, !tbaa !12
  %idx.ext141 = zext i8 %42 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg142
  %43 = load i8, i8* %add.ptr143, align 1, !tbaa !12
  %conv144 = zext i8 %43 to i32
  %add145 = add nsw i32 %add139, %conv144
  %add.ptr146 = getelementptr inbounds i8, i8* %incdec.ptr133, i64 2
  %incdec.ptr147 = getelementptr inbounds i8, i8* %add.ptr146, i64 1
  %44 = load i8, i8* %add.ptr146, align 1, !tbaa !12
  %idx.ext149 = zext i8 %44 to i64
  %idx.neg150 = sub nsw i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg150
  %45 = load i8, i8* %add.ptr151, align 1, !tbaa !12
  %conv152 = zext i8 %45 to i32
  %add153 = add nsw i32 %add145, %conv152
  %incdec.ptr154 = getelementptr inbounds i8, i8* %incdec.ptr147, i64 1
  %46 = load i8, i8* %incdec.ptr147, align 1, !tbaa !12
  %idx.ext156 = zext i8 %46 to i64
  %idx.neg157 = sub nsw i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg157
  %47 = load i8, i8* %add.ptr158, align 1, !tbaa !12
  %conv159 = zext i8 %47 to i32
  %add160 = add nsw i32 %add153, %conv159
  %48 = load i8, i8* %incdec.ptr154, align 1, !tbaa !12
  %idx.ext162 = zext i8 %48 to i64
  %idx.neg163 = sub nsw i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg163
  %49 = load i8, i8* %add.ptr164, align 1, !tbaa !12
  %conv165 = zext i8 %49 to i32
  %add166 = add nsw i32 %add160, %conv165
  %add.ptr169 = getelementptr inbounds i8, i8* %incdec.ptr154, i64 %idx.ext124
  %incdec.ptr170 = getelementptr inbounds i8, i8* %add.ptr169, i64 1
  %50 = load i8, i8* %add.ptr169, align 1, !tbaa !12
  %idx.ext172 = zext i8 %50 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg173
  %51 = load i8, i8* %add.ptr174, align 1, !tbaa !12
  %conv175 = zext i8 %51 to i32
  %add176 = add nsw i32 %add166, %conv175
  %incdec.ptr177 = getelementptr inbounds i8, i8* %incdec.ptr170, i64 1
  %52 = load i8, i8* %incdec.ptr170, align 1, !tbaa !12
  %idx.ext179 = zext i8 %52 to i64
  %idx.neg180 = sub nsw i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg180
  %53 = load i8, i8* %add.ptr181, align 1, !tbaa !12
  %conv182 = zext i8 %53 to i32
  %add183 = add nsw i32 %add176, %conv182
  %incdec.ptr184 = getelementptr inbounds i8, i8* %incdec.ptr177, i64 1
  %54 = load i8, i8* %incdec.ptr177, align 1, !tbaa !12
  %idx.ext186 = zext i8 %54 to i64
  %idx.neg187 = sub nsw i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg187
  %55 = load i8, i8* %add.ptr188, align 1, !tbaa !12
  %conv189 = zext i8 %55 to i32
  %add190 = add nsw i32 %add183, %conv189
  %incdec.ptr191 = getelementptr inbounds i8, i8* %incdec.ptr184, i64 1
  %56 = load i8, i8* %incdec.ptr184, align 1, !tbaa !12
  %idx.ext193 = zext i8 %56 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg194
  %57 = load i8, i8* %add.ptr195, align 1, !tbaa !12
  %conv196 = zext i8 %57 to i32
  %add197 = add nsw i32 %add190, %conv196
  %incdec.ptr198 = getelementptr inbounds i8, i8* %incdec.ptr191, i64 1
  %58 = load i8, i8* %incdec.ptr191, align 1, !tbaa !12
  %idx.ext200 = zext i8 %58 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg201
  %59 = load i8, i8* %add.ptr202, align 1, !tbaa !12
  %conv203 = zext i8 %59 to i32
  %add204 = add nsw i32 %add197, %conv203
  %incdec.ptr205 = getelementptr inbounds i8, i8* %incdec.ptr198, i64 1
  %60 = load i8, i8* %incdec.ptr198, align 1, !tbaa !12
  %idx.ext207 = zext i8 %60 to i64
  %idx.neg208 = sub nsw i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg208
  %61 = load i8, i8* %add.ptr209, align 1, !tbaa !12
  %conv210 = zext i8 %61 to i32
  %add211 = add nsw i32 %add204, %conv210
  %62 = load i8, i8* %incdec.ptr205, align 1, !tbaa !12
  %idx.ext213 = zext i8 %62 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg214
  %63 = load i8, i8* %add.ptr215, align 1, !tbaa !12
  %conv216 = zext i8 %63 to i32
  %add217 = add nsw i32 %add211, %conv216
  %add.ptr220 = getelementptr inbounds i8, i8* %incdec.ptr205, i64 %idx.ext73
  %incdec.ptr221 = getelementptr inbounds i8, i8* %add.ptr220, i64 1
  %64 = load i8, i8* %add.ptr220, align 1, !tbaa !12
  %idx.ext223 = zext i8 %64 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg224
  %65 = load i8, i8* %add.ptr225, align 1, !tbaa !12
  %conv226 = zext i8 %65 to i32
  %add227 = add nsw i32 %add217, %conv226
  %incdec.ptr228 = getelementptr inbounds i8, i8* %incdec.ptr221, i64 1
  %66 = load i8, i8* %incdec.ptr221, align 1, !tbaa !12
  %idx.ext230 = zext i8 %66 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg231
  %67 = load i8, i8* %add.ptr232, align 1, !tbaa !12
  %conv233 = zext i8 %67 to i32
  %add234 = add nsw i32 %add227, %conv233
  %incdec.ptr235 = getelementptr inbounds i8, i8* %incdec.ptr228, i64 1
  %68 = load i8, i8* %incdec.ptr228, align 1, !tbaa !12
  %idx.ext237 = zext i8 %68 to i64
  %idx.neg238 = sub nsw i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg238
  %69 = load i8, i8* %add.ptr239, align 1, !tbaa !12
  %conv240 = zext i8 %69 to i32
  %add241 = add nsw i32 %add234, %conv240
  %incdec.ptr242 = getelementptr inbounds i8, i8* %incdec.ptr235, i64 1
  %70 = load i8, i8* %incdec.ptr235, align 1, !tbaa !12
  %idx.ext244 = zext i8 %70 to i64
  %idx.neg245 = sub nsw i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg245
  %71 = load i8, i8* %add.ptr246, align 1, !tbaa !12
  %conv247 = zext i8 %71 to i32
  %add248 = add nsw i32 %add241, %conv247
  %72 = load i8, i8* %incdec.ptr242, align 1, !tbaa !12
  %idx.ext250 = zext i8 %72 to i64
  %idx.neg251 = sub nsw i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg251
  %73 = load i8, i8* %add.ptr252, align 1, !tbaa !12
  %conv253 = zext i8 %73 to i32
  %add254 = add nsw i32 %add248, %conv253
  %add.ptr257 = getelementptr inbounds i8, i8* %incdec.ptr242, i64 %idx.ext36
  %incdec.ptr258 = getelementptr inbounds i8, i8* %add.ptr257, i64 1
  %74 = load i8, i8* %add.ptr257, align 1, !tbaa !12
  %idx.ext260 = zext i8 %74 to i64
  %idx.neg261 = sub nsw i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg261
  %75 = load i8, i8* %add.ptr262, align 1, !tbaa !12
  %conv263 = zext i8 %75 to i32
  %add264 = add nsw i32 %add254, %conv263
  %incdec.ptr265 = getelementptr inbounds i8, i8* %incdec.ptr258, i64 1
  %76 = load i8, i8* %incdec.ptr258, align 1, !tbaa !12
  %idx.ext267 = zext i8 %76 to i64
  %idx.neg268 = sub nsw i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg268
  %77 = load i8, i8* %add.ptr269, align 1, !tbaa !12
  %conv270 = zext i8 %77 to i32
  %add271 = add nsw i32 %add264, %conv270
  %78 = load i8, i8* %incdec.ptr265, align 1, !tbaa !12
  %idx.ext273 = zext i8 %78 to i64
  %idx.neg274 = sub nsw i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg274
  %79 = load i8, i8* %add.ptr275, align 1, !tbaa !12
  %conv276 = zext i8 %79 to i32
  %add277 = add nsw i32 %add271, %conv276
  %cmp278 = icmp sgt i32 %add277, %max_no
  br i1 %cmp278, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body7
  %sub280 = sub nsw i32 %max_no, %add277
  %arrayidx284 = getelementptr inbounds i32, i32* %r, i64 %idxprom
  store i32 %sub280, i32* %arrayidx284, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %indvars.iv.next2067 = add nuw nsw i64 %indvars.iv2066, 1
  %inc = add nuw nsw i32 %j.02043, 1
  %lftr.wideiv2068 = trunc i64 %indvars.iv.next2067 to i32
  %exitcond2069 = icmp eq i32 %lftr.wideiv2068, %sub4
  br i1 %exitcond2069, label %for.inc285.loopexit, label %for.body7

for.inc285.loopexit:                              ; preds = %for.inc
  br label %for.inc285

for.inc285:                                       ; preds = %for.inc285.loopexit, %for.cond3.preheader
  %indvars.iv.next2071 = add nuw nsw i64 %indvars.iv2070, 1
  %lftr.wideiv2075 = trunc i64 %indvars.iv.next2071 to i32
  %exitcond2076 = icmp eq i32 %lftr.wideiv2075, %sub
  br i1 %exitcond2076, label %for.cond288.preheader.loopexit, label %for.cond3.preheader

for.cond293.preheader:                            ; preds = %for.inc1256, %for.cond293.preheader.lr.ph
  %indvars.iv2057 = phi i64 [ 4, %for.cond293.preheader.lr.ph ], [ %indvars.iv.next2058, %for.inc1256 ]
  br i1 %cmp2952036, label %for.body297.lr.ph, label %for.inc1256

for.body297.lr.ph:                                ; preds = %for.cond293.preheader
  %80 = mul nsw i64 %indvars.iv2057, %6
  %81 = add nsw i64 %indvars.iv2057, -3
  %82 = mul nsw i64 %81, %6
  %add.ptr323 = getelementptr inbounds i8, i8* %in, i64 %82
  %83 = trunc i64 %80 to i32
  %84 = trunc i64 %indvars.iv2057 to i32
  %85 = trunc i64 %indvars.iv2057 to i32
  br label %for.body297

for.body297:                                      ; preds = %for.inc1253, %for.body297.lr.ph
  %indvars.iv = phi i64 [ 4, %for.body297.lr.ph ], [ %indvars.iv.next, %for.inc1253 ]
  %j.12037 = phi i32 [ 4, %for.body297.lr.ph ], [ %inc1254, %for.inc1253 ]
  %add299 = add nsw i32 %j.12037, %83
  %idxprom300 = sext i32 %add299 to i64
  %arrayidx301 = getelementptr inbounds i32, i32* %r, i64 %idxprom300
  %86 = load i32, i32* %arrayidx301, align 4, !tbaa !5
  %cmp302 = icmp sgt i32 %86, 0
  br i1 %cmp302, label %if.then304, label %for.inc1253

if.then304:                                       ; preds = %for.body297
  %sub309 = sub nsw i32 %max_no, %86
  %arrayidx313 = getelementptr inbounds i8, i8* %in, i64 %idxprom300
  %87 = load i8, i8* %arrayidx313, align 1, !tbaa !12
  %idx.ext315 = zext i8 %87 to i64
  %add.ptr316 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext315
  %cmp317 = icmp sgt i32 %sub309, 600
  %add.ptr325 = getelementptr inbounds i8, i8* %add.ptr323, i64 %indvars.iv
  %add.ptr326 = getelementptr inbounds i8, i8* %add.ptr325, i64 -1
  %incdec.ptr327 = getelementptr inbounds i8, i8* %add.ptr326, i64 1
  br i1 %cmp317, label %if.then319, label %if.then304.if.then762_crit_edge

if.then304.if.then762_crit_edge:                  ; preds = %if.then304
  %.pre2079 = getelementptr inbounds i8, i8* %incdec.ptr327, i64 1
  %.pre2080 = getelementptr inbounds i8, i8* %.pre2079, i64 %idx.ext355
  %.pre2081 = getelementptr inbounds i8, i8* %.pre2080, i64 1
  %.pre2082 = getelementptr inbounds i8, i8* %.pre2081, i64 1
  %.pre2083 = getelementptr inbounds i8, i8* %.pre2082, i64 1
  %.pre2084 = getelementptr inbounds i8, i8* %.pre2083, i64 1
  %.pre2085 = getelementptr inbounds i8, i8* %.pre2084, i64 %idx.ext407
  %.pre2086 = getelementptr inbounds i8, i8* %.pre2085, i64 1
  %.pre2087 = getelementptr inbounds i8, i8* %.pre2086, i64 1
  %.pre2088 = getelementptr inbounds i8, i8* %.pre2087, i64 1
  %.pre2089 = getelementptr inbounds i8, i8* %.pre2088, i64 1
  %.pre2090 = getelementptr inbounds i8, i8* %.pre2089, i64 1
  %.pre2091 = getelementptr inbounds i8, i8* %.pre2090, i64 1
  %.pre2092 = getelementptr inbounds i8, i8* %.pre2091, i64 %idx.ext474
  %.pre2093 = getelementptr inbounds i8, i8* %.pre2092, i64 1
  %.pre2094 = getelementptr inbounds i8, i8* %.pre2093, i64 1
  %.pre2095 = getelementptr inbounds i8, i8* %.pre2094, i64 2
  %.pre2096 = getelementptr inbounds i8, i8* %.pre2095, i64 1
  %.pre2097 = getelementptr inbounds i8, i8* %.pre2096, i64 1
  %.pre2098 = getelementptr inbounds i8, i8* %.pre2097, i64 %idx.ext474
  %.pre2099 = getelementptr inbounds i8, i8* %.pre2098, i64 1
  %.pre2100 = getelementptr inbounds i8, i8* %.pre2099, i64 1
  %.pre2101 = getelementptr inbounds i8, i8* %.pre2100, i64 1
  %.pre2102 = getelementptr inbounds i8, i8* %.pre2101, i64 1
  %.pre2103 = getelementptr inbounds i8, i8* %.pre2102, i64 1
  %.pre2104 = getelementptr inbounds i8, i8* %.pre2103, i64 1
  %.pre2105 = getelementptr inbounds i8, i8* %.pre2104, i64 %idx.ext407
  %.pre2106 = getelementptr inbounds i8, i8* %.pre2105, i64 1
  %.pre2107 = getelementptr inbounds i8, i8* %.pre2106, i64 1
  %.pre2108 = getelementptr inbounds i8, i8* %.pre2107, i64 1
  %.pre2109 = getelementptr inbounds i8, i8* %.pre2108, i64 1
  %.pre2110 = getelementptr inbounds i8, i8* %.pre2109, i64 %idx.ext355
  %.pre2111 = getelementptr inbounds i8, i8* %.pre2110, i64 1
  %.pre2112 = getelementptr inbounds i8, i8* %.pre2111, i64 1
  br label %if.then762

if.then319:                                       ; preds = %if.then304
  %88 = load i8, i8* %add.ptr326, align 1, !tbaa !12
  %idx.ext329 = zext i8 %88 to i64
  %idx.neg330 = sub nsw i64 0, %idx.ext329
  %add.ptr331 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg330
  %89 = load i8, i8* %add.ptr331, align 1, !tbaa !12
  %conv332 = zext i8 %89 to i32
  %incdec.ptr337 = getelementptr inbounds i8, i8* %incdec.ptr327, i64 1
  %90 = load i8, i8* %incdec.ptr327, align 1, !tbaa !12
  %idx.ext339 = zext i8 %90 to i64
  %idx.neg340 = sub nsw i64 0, %idx.ext339
  %add.ptr341 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg340
  %91 = load i8, i8* %add.ptr341, align 1, !tbaa !12
  %conv342 = zext i8 %91 to i32
  %92 = add nuw nsw i32 %conv342, %conv332
  %93 = load i8, i8* %incdec.ptr337, align 1, !tbaa !12
  %idx.ext346 = zext i8 %93 to i64
  %idx.neg347 = sub nsw i64 0, %idx.ext346
  %add.ptr348 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg347
  %94 = load i8, i8* %add.ptr348, align 1, !tbaa !12
  %conv349 = zext i8 %94 to i32
  %sub3441973 = add nuw nsw i32 %92, %conv349
  %add.ptr356 = getelementptr inbounds i8, i8* %incdec.ptr337, i64 %idx.ext355
  %incdec.ptr357 = getelementptr inbounds i8, i8* %add.ptr356, i64 1
  %95 = load i8, i8* %add.ptr356, align 1, !tbaa !12
  %idx.ext359 = zext i8 %95 to i64
  %idx.neg360 = sub nsw i64 0, %idx.ext359
  %add.ptr361 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg360
  %96 = load i8, i8* %add.ptr361, align 1, !tbaa !12
  %conv362 = zext i8 %96 to i32
  %mul363 = shl nuw nsw i32 %conv362, 1
  %incdec.ptr368 = getelementptr inbounds i8, i8* %incdec.ptr357, i64 1
  %97 = load i8, i8* %incdec.ptr357, align 1, !tbaa !12
  %idx.ext370 = zext i8 %97 to i64
  %idx.neg371 = sub nsw i64 0, %idx.ext370
  %add.ptr372 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg371
  %98 = load i8, i8* %add.ptr372, align 1, !tbaa !12
  %conv373 = zext i8 %98 to i32
  %mul376 = shl nuw nsw i32 %conv373, 1
  %incdec.ptr378 = getelementptr inbounds i8, i8* %incdec.ptr368, i64 1
  %99 = load i8, i8* %incdec.ptr368, align 1, !tbaa !12
  %idx.ext380 = zext i8 %99 to i64
  %idx.neg381 = sub nsw i64 0, %idx.ext380
  %add.ptr382 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg381
  %100 = load i8, i8* %add.ptr382, align 1, !tbaa !12
  %conv383 = zext i8 %100 to i32
  %mul384 = shl nuw nsw i32 %conv383, 1
  %incdec.ptr386 = getelementptr inbounds i8, i8* %incdec.ptr378, i64 1
  %101 = load i8, i8* %incdec.ptr378, align 1, !tbaa !12
  %idx.ext388 = zext i8 %101 to i64
  %idx.neg389 = sub nsw i64 0, %idx.ext388
  %add.ptr390 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg389
  %102 = load i8, i8* %add.ptr390, align 1, !tbaa !12
  %conv391 = zext i8 %102 to i32
  %mul394 = shl nuw nsw i32 %conv391, 1
  %103 = load i8, i8* %incdec.ptr386, align 1, !tbaa !12
  %idx.ext397 = zext i8 %103 to i64
  %idx.neg398 = sub nsw i64 0, %idx.ext397
  %add.ptr399 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg398
  %104 = load i8, i8* %add.ptr399, align 1, !tbaa !12
  %conv400 = zext i8 %104 to i32
  %mul401 = shl nuw nsw i32 %conv400, 1
  %add.ptr408 = getelementptr inbounds i8, i8* %incdec.ptr386, i64 %idx.ext407
  %incdec.ptr409 = getelementptr inbounds i8, i8* %add.ptr408, i64 1
  %105 = load i8, i8* %add.ptr408, align 1, !tbaa !12
  %idx.ext411 = zext i8 %105 to i64
  %idx.neg412 = sub nsw i64 0, %idx.ext411
  %add.ptr413 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg412
  %106 = load i8, i8* %add.ptr413, align 1, !tbaa !12
  %conv414 = zext i8 %106 to i32
  %incdec.ptr419 = getelementptr inbounds i8, i8* %incdec.ptr409, i64 1
  %107 = load i8, i8* %incdec.ptr409, align 1, !tbaa !12
  %idx.ext421 = zext i8 %107 to i64
  %idx.neg422 = sub nsw i64 0, %idx.ext421
  %add.ptr423 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg422
  %108 = load i8, i8* %add.ptr423, align 1, !tbaa !12
  %conv424 = zext i8 %108 to i32
  %mul425 = shl nuw nsw i32 %conv424, 1
  %incdec.ptr429 = getelementptr inbounds i8, i8* %incdec.ptr419, i64 1
  %109 = load i8, i8* %incdec.ptr419, align 1, !tbaa !12
  %idx.ext431 = zext i8 %109 to i64
  %idx.neg432 = sub nsw i64 0, %idx.ext431
  %add.ptr433 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg432
  %110 = load i8, i8* %add.ptr433, align 1, !tbaa !12
  %conv434 = zext i8 %110 to i32
  %incdec.ptr438 = getelementptr inbounds i8, i8* %incdec.ptr429, i64 1
  %111 = load i8, i8* %incdec.ptr429, align 1, !tbaa !12
  %idx.ext440 = zext i8 %111 to i64
  %idx.neg441 = sub nsw i64 0, %idx.ext440
  %add.ptr442 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg441
  %112 = load i8, i8* %add.ptr442, align 1, !tbaa !12
  %conv443 = zext i8 %112 to i32
  %incdec.ptr445 = getelementptr inbounds i8, i8* %incdec.ptr438, i64 1
  %113 = load i8, i8* %incdec.ptr438, align 1, !tbaa !12
  %idx.ext447 = zext i8 %113 to i64
  %idx.neg448 = sub nsw i64 0, %idx.ext447
  %add.ptr449 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg448
  %114 = load i8, i8* %add.ptr449, align 1, !tbaa !12
  %conv450 = zext i8 %114 to i32
  %incdec.ptr454 = getelementptr inbounds i8, i8* %incdec.ptr445, i64 1
  %115 = load i8, i8* %incdec.ptr445, align 1, !tbaa !12
  %idx.ext456 = zext i8 %115 to i64
  %idx.neg457 = sub nsw i64 0, %idx.ext456
  %add.ptr458 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg457
  %116 = load i8, i8* %add.ptr458, align 1, !tbaa !12
  %conv459 = zext i8 %116 to i32
  %117 = load i8, i8* %incdec.ptr454, align 1, !tbaa !12
  %idx.ext465 = zext i8 %117 to i64
  %idx.neg466 = sub nsw i64 0, %idx.ext465
  %add.ptr467 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg466
  %118 = load i8, i8* %add.ptr467, align 1, !tbaa !12
  %conv468 = zext i8 %118 to i32
  %add.ptr475 = getelementptr inbounds i8, i8* %incdec.ptr454, i64 %idx.ext474
  %incdec.ptr476 = getelementptr inbounds i8, i8* %add.ptr475, i64 1
  %119 = load i8, i8* %add.ptr475, align 1, !tbaa !12
  %idx.ext478 = zext i8 %119 to i64
  %idx.neg479 = sub nsw i64 0, %idx.ext478
  %add.ptr480 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg479
  %120 = load i8, i8* %add.ptr480, align 1, !tbaa !12
  %conv481 = zext i8 %120 to i32
  %incdec.ptr484 = getelementptr inbounds i8, i8* %incdec.ptr476, i64 1
  %121 = load i8, i8* %incdec.ptr476, align 1, !tbaa !12
  %idx.ext486 = zext i8 %121 to i64
  %idx.neg487 = sub nsw i64 0, %idx.ext486
  %add.ptr488 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg487
  %122 = load i8, i8* %add.ptr488, align 1, !tbaa !12
  %conv489 = zext i8 %122 to i32
  %mul490 = shl nuw nsw i32 %conv489, 1
  %123 = load i8, i8* %incdec.ptr484, align 1, !tbaa !12
  %idx.ext493 = zext i8 %123 to i64
  %idx.neg494 = sub nsw i64 0, %idx.ext493
  %add.ptr495 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg494
  %124 = load i8, i8* %add.ptr495, align 1, !tbaa !12
  %conv496 = zext i8 %124 to i32
  %add.ptr498 = getelementptr inbounds i8, i8* %incdec.ptr484, i64 2
  %incdec.ptr499 = getelementptr inbounds i8, i8* %add.ptr498, i64 1
  %125 = load i8, i8* %add.ptr498, align 1, !tbaa !12
  %idx.ext501 = zext i8 %125 to i64
  %idx.neg502 = sub nsw i64 0, %idx.ext501
  %add.ptr503 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg502
  %126 = load i8, i8* %add.ptr503, align 1, !tbaa !12
  %conv504 = zext i8 %126 to i32
  %incdec.ptr506 = getelementptr inbounds i8, i8* %incdec.ptr499, i64 1
  %127 = load i8, i8* %incdec.ptr499, align 1, !tbaa !12
  %idx.ext508 = zext i8 %127 to i64
  %idx.neg509 = sub nsw i64 0, %idx.ext508
  %add.ptr510 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg509
  %128 = load i8, i8* %add.ptr510, align 1, !tbaa !12
  %conv511 = zext i8 %128 to i32
  %129 = load i8, i8* %incdec.ptr506, align 1, !tbaa !12
  %idx.ext515 = zext i8 %129 to i64
  %idx.neg516 = sub nsw i64 0, %idx.ext515
  %add.ptr517 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg516
  %130 = load i8, i8* %add.ptr517, align 1, !tbaa !12
  %conv518 = zext i8 %130 to i32
  %add.ptr523 = getelementptr inbounds i8, i8* %incdec.ptr506, i64 %idx.ext474
  %incdec.ptr524 = getelementptr inbounds i8, i8* %add.ptr523, i64 1
  %131 = load i8, i8* %add.ptr523, align 1, !tbaa !12
  %idx.ext526 = zext i8 %131 to i64
  %idx.neg527 = sub nsw i64 0, %idx.ext526
  %add.ptr528 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg527
  %132 = load i8, i8* %add.ptr528, align 1, !tbaa !12
  %conv529 = zext i8 %132 to i32
  %incdec.ptr534 = getelementptr inbounds i8, i8* %incdec.ptr524, i64 1
  %133 = load i8, i8* %incdec.ptr524, align 1, !tbaa !12
  %idx.ext536 = zext i8 %133 to i64
  %idx.neg537 = sub nsw i64 0, %idx.ext536
  %add.ptr538 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg537
  %134 = load i8, i8* %add.ptr538, align 1, !tbaa !12
  %conv539 = zext i8 %134 to i32
  %mul540 = shl nuw nsw i32 %conv539, 1
  %incdec.ptr544 = getelementptr inbounds i8, i8* %incdec.ptr534, i64 1
  %135 = load i8, i8* %incdec.ptr534, align 1, !tbaa !12
  %idx.ext546 = zext i8 %135 to i64
  %idx.neg547 = sub nsw i64 0, %idx.ext546
  %add.ptr548 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg547
  %136 = load i8, i8* %add.ptr548, align 1, !tbaa !12
  %conv549 = zext i8 %136 to i32
  %incdec.ptr553 = getelementptr inbounds i8, i8* %incdec.ptr544, i64 1
  %137 = load i8, i8* %incdec.ptr544, align 1, !tbaa !12
  %idx.ext555 = zext i8 %137 to i64
  %idx.neg556 = sub nsw i64 0, %idx.ext555
  %add.ptr557 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg556
  %138 = load i8, i8* %add.ptr557, align 1, !tbaa !12
  %conv558 = zext i8 %138 to i32
  %incdec.ptr560 = getelementptr inbounds i8, i8* %incdec.ptr553, i64 1
  %139 = load i8, i8* %incdec.ptr553, align 1, !tbaa !12
  %idx.ext562 = zext i8 %139 to i64
  %idx.neg563 = sub nsw i64 0, %idx.ext562
  %add.ptr564 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg563
  %140 = load i8, i8* %add.ptr564, align 1, !tbaa !12
  %conv565 = zext i8 %140 to i32
  %incdec.ptr569 = getelementptr inbounds i8, i8* %incdec.ptr560, i64 1
  %141 = load i8, i8* %incdec.ptr560, align 1, !tbaa !12
  %idx.ext571 = zext i8 %141 to i64
  %idx.neg572 = sub nsw i64 0, %idx.ext571
  %add.ptr573 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg572
  %142 = load i8, i8* %add.ptr573, align 1, !tbaa !12
  %conv574 = zext i8 %142 to i32
  %143 = load i8, i8* %incdec.ptr569, align 1, !tbaa !12
  %idx.ext580 = zext i8 %143 to i64
  %idx.neg581 = sub nsw i64 0, %idx.ext580
  %add.ptr582 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg581
  %144 = load i8, i8* %add.ptr582, align 1, !tbaa !12
  %conv583 = zext i8 %144 to i32
  %add.ptr590 = getelementptr inbounds i8, i8* %incdec.ptr569, i64 %idx.ext407
  %incdec.ptr591 = getelementptr inbounds i8, i8* %add.ptr590, i64 1
  %145 = load i8, i8* %add.ptr590, align 1, !tbaa !12
  %idx.ext593 = zext i8 %145 to i64
  %idx.neg594 = sub nsw i64 0, %idx.ext593
  %add.ptr595 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg594
  %146 = load i8, i8* %add.ptr595, align 1, !tbaa !12
  %conv596 = zext i8 %146 to i32
  %mul597 = shl nuw nsw i32 %conv596, 1
  %incdec.ptr602 = getelementptr inbounds i8, i8* %incdec.ptr591, i64 1
  %147 = load i8, i8* %incdec.ptr591, align 1, !tbaa !12
  %idx.ext604 = zext i8 %147 to i64
  %idx.neg605 = sub nsw i64 0, %idx.ext604
  %add.ptr606 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg605
  %148 = load i8, i8* %add.ptr606, align 1, !tbaa !12
  %conv607 = zext i8 %148 to i32
  %incdec.ptr612 = getelementptr inbounds i8, i8* %incdec.ptr602, i64 1
  %149 = load i8, i8* %incdec.ptr602, align 1, !tbaa !12
  %idx.ext614 = zext i8 %149 to i64
  %idx.neg615 = sub nsw i64 0, %idx.ext614
  %add.ptr616 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg615
  %150 = load i8, i8* %add.ptr616, align 1, !tbaa !12
  %conv617 = zext i8 %150 to i32
  %incdec.ptr620 = getelementptr inbounds i8, i8* %incdec.ptr612, i64 1
  %151 = load i8, i8* %incdec.ptr612, align 1, !tbaa !12
  %idx.ext622 = zext i8 %151 to i64
  %idx.neg623 = sub nsw i64 0, %idx.ext622
  %add.ptr624 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg623
  %152 = load i8, i8* %add.ptr624, align 1, !tbaa !12
  %conv625 = zext i8 %152 to i32
  %153 = load i8, i8* %incdec.ptr620, align 1, !tbaa !12
  %idx.ext631 = zext i8 %153 to i64
  %idx.neg632 = sub nsw i64 0, %idx.ext631
  %add.ptr633 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg632
  %154 = load i8, i8* %add.ptr633, align 1, !tbaa !12
  %conv634 = zext i8 %154 to i32
  %mul635 = shl nuw nsw i32 %conv634, 1
  %add.ptr642 = getelementptr inbounds i8, i8* %incdec.ptr620, i64 %idx.ext355
  %incdec.ptr643 = getelementptr inbounds i8, i8* %add.ptr642, i64 1
  %155 = load i8, i8* %add.ptr642, align 1, !tbaa !12
  %idx.ext645 = zext i8 %155 to i64
  %idx.neg646 = sub nsw i64 0, %idx.ext645
  %add.ptr647 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg646
  %156 = load i8, i8* %add.ptr647, align 1, !tbaa !12
  %conv648 = zext i8 %156 to i32
  %incdec.ptr653 = getelementptr inbounds i8, i8* %incdec.ptr643, i64 1
  %157 = load i8, i8* %incdec.ptr643, align 1, !tbaa !12
  %idx.ext655 = zext i8 %157 to i64
  %idx.neg656 = sub nsw i64 0, %idx.ext655
  %add.ptr657 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg656
  %158 = load i8, i8* %add.ptr657, align 1, !tbaa !12
  %conv658 = zext i8 %158 to i32
  %159 = load i8, i8* %incdec.ptr653, align 1, !tbaa !12
  %idx.ext662 = zext i8 %159 to i64
  %idx.neg663 = sub nsw i64 0, %idx.ext662
  %add.ptr664 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg663
  %160 = load i8, i8* %add.ptr664, align 1, !tbaa !12
  %conv665 = zext i8 %160 to i32
  %tmp = sub nsw i32 %conv468, %conv414
  %tmp1984 = sub nsw i32 %tmp, %conv481
  %tmp1985 = add nsw i32 %tmp1984, %conv518
  %tmp1986 = sub nsw i32 %tmp1985, %conv529
  %tmp1987 = add nsw i32 %tmp1986, %conv583
  %tmp1988 = mul nsw i32 %tmp1987, 3
  %tmp1989 = add nuw nsw i32 %conv511, %conv459
  %tmp1990 = add nuw nsw i32 %tmp1989, %conv574
  %tmp1991 = shl nuw nsw i32 %tmp1990, 1
  %sub435 = sub nsw i32 %conv349, %conv332
  %add451 = sub nsw i32 %sub435, %mul363
  %add461 = sub nsw i32 %add451, %conv373
  %add470 = add nsw i32 %add461, %conv391
  %sub483 = add nsw i32 %add470, %mul401
  %sub491 = sub nsw i32 %sub483, %mul425
  %sub497 = sub i32 %sub491, %conv434
  %add505 = add i32 %sub497, %conv450
  %add513 = sub i32 %add505, %mul490
  %add520 = sub i32 %add513, %conv496
  %sub531 = add i32 %add520, %conv504
  %sub541 = sub i32 %sub531, %mul540
  %sub550 = sub i32 %sub541, %conv549
  %add566 = add i32 %sub550, %conv565
  %add576 = add i32 %add566, %tmp1991
  %add585 = sub i32 %add576, %mul597
  %sub598 = sub i32 %add585, %conv607
  %sub608 = add i32 %sub598, %tmp1988
  %add626 = add i32 %sub608, %conv625
  %add636 = add i32 %add626, %mul635
  %sub649 = sub i32 %add636, %conv648
  %add666 = add i32 %sub649, %conv665
  %tmp1993 = sub nsw i32 %conv648, %sub3441973
  %tmp1994 = add nsw i32 %tmp1993, %conv658
  %tmp1995 = add nsw i32 %tmp1994, %conv665
  %tmp1996 = mul nsw i32 %tmp1995, 3
  %tmp1997 = add nuw nsw i32 %conv617, %conv607
  %tmp1998 = add nuw nsw i32 %tmp1997, %conv625
  %tmp1999 = shl nuw nsw i32 %tmp1998, 1
  %sum = add nuw nsw i32 %mul376, %mul363
  %sum2047 = add nuw nsw i32 %sum, %mul384
  %sum2048 = add nuw nsw i32 %sum2047, %mul394
  %sum2049 = add nuw nsw i32 %sum2048, %mul401
  %sum2050 = add nuw nsw i32 %sum2049, %conv414
  %sum2051 = add i32 %sum2050, %conv424
  %sum2052 = add i32 %sum2051, %conv434
  %sum2053 = add i32 %sum2052, %conv443
  %sum2054 = add i32 %sum2053, %conv450
  %sum2055 = add i32 %sum2054, %conv459
  %sum2056 = add i32 %sum2055, %conv468
  %add568 = sub i32 %conv529, %sum2056
  %add578 = add i32 %add568, %conv539
  %add587 = add i32 %add578, %conv549
  %add601 = add i32 %add587, %conv558
  %add611 = add i32 %add601, %conv565
  %add619 = add i32 %add611, %conv574
  %add629 = add i32 %add619, %conv583
  %add639 = add i32 %add629, %mul597
  %add652 = add i32 %add639, %mul635
  %add660 = add i32 %add652, %tmp1999
  %add669 = add i32 %add660, %tmp1996
  %mul670 = mul nsw i32 %add666, %add666
  %mul671 = mul nsw i32 %add669, %add669
  %add672 = add nuw nsw i32 %mul671, %mul670
  %conv673 = sitofp i32 %add672 to float
  %sqrtf = tail call float @sqrtf(float %conv673) #1
  %conv676 = fpext float %sqrtf to double
  %conv677 = sitofp i32 %sub309 to float
  %conv678 = fpext float %conv677 to double
  %mul679 = fmul double %conv678, 9.000000e-01
  %cmp680 = fcmp ogt double %conv676, %mul679
  br i1 %cmp680, label %if.then682, label %if.then762

if.then682:                                       ; preds = %if.then319
  %cmp683 = icmp eq i32 %add666, 0
  br i1 %cmp683, label %if.end688, label %if.else

if.else:                                          ; preds = %if.then682
  %conv686 = sitofp i32 %add669 to float
  %conv687 = sitofp i32 %add666 to float
  %div = fdiv float %conv686, %conv687
  br label %if.end688

if.end688:                                        ; preds = %if.then682, %if.else
  %z.0 = phi float [ %div, %if.else ], [ 1.000000e+06, %if.then682 ]
  %cmp689 = fcmp olt float %z.0, 0.000000e+00
  %sub692 = fsub float -0.000000e+00, %z.0
  %z.1 = select i1 %cmp689, float %sub692, float %z.0
  %cmp696 = fcmp olt float %z.1, 5.000000e-01
  br i1 %cmp696, label %if.end711, label %if.else699

if.else699:                                       ; preds = %if.end688
  %cmp701 = fcmp ogt float %z.1, 2.000000e+00
  br i1 %cmp701, label %if.end711, label %if.else704

if.else704:                                       ; preds = %if.else699
  %. = select i1 %cmp689, i32 -1, i32 1
  br label %if.end711

if.end711:                                        ; preds = %if.else704, %if.else699, %if.end688
  %a.0 = phi i32 [ 0, %if.end688 ], [ 1, %if.else699 ], [ %., %if.else704 ]
  %b.0 = phi i32 [ 1, %if.end688 ], [ 0, %if.else699 ], [ 1, %if.else704 ]
  %add712 = add nsw i32 %a.0, %84
  %mul713 = mul nsw i32 %add712, %x_size
  %161 = trunc i64 %indvars.iv to i32
  %add714 = add i32 %b.0, %161
  %add715 = add i32 %add714, %mul713
  %idxprom716 = sext i32 %add715 to i64
  %arrayidx717 = getelementptr inbounds i32, i32* %r, i64 %idxprom716
  %162 = load i32, i32* %arrayidx717, align 4, !tbaa !5
  %cmp718 = icmp sgt i32 %86, %162
  br i1 %cmp718, label %land.lhs.true, label %for.inc1253

land.lhs.true:                                    ; preds = %if.end711
  %sub720 = sub nsw i32 %84, %a.0
  %mul721 = mul nsw i32 %sub720, %x_size
  %add722 = sub i32 %161, %b.0
  %sub723 = add i32 %add722, %mul721
  %idxprom724 = sext i32 %sub723 to i64
  %arrayidx725 = getelementptr inbounds i32, i32* %r, i64 %idxprom724
  %163 = load i32, i32* %arrayidx725, align 4, !tbaa !5
  %cmp726 = icmp slt i32 %86, %163
  br i1 %cmp726, label %for.inc1253, label %land.lhs.true728

land.lhs.true728:                                 ; preds = %land.lhs.true
  %mul729 = shl nsw i32 %a.0, 1
  %add730 = add nsw i32 %mul729, %84
  %mul731 = mul nsw i32 %add730, %x_size
  %mul733 = shl nuw nsw i32 %b.0, 1
  %add732 = add i32 %mul733, %161
  %add734 = add i32 %add732, %mul731
  %idxprom735 = sext i32 %add734 to i64
  %arrayidx736 = getelementptr inbounds i32, i32* %r, i64 %idxprom735
  %164 = load i32, i32* %arrayidx736, align 4, !tbaa !5
  %cmp737 = icmp sgt i32 %86, %164
  br i1 %cmp737, label %land.lhs.true739, label %for.inc1253

land.lhs.true739:                                 ; preds = %land.lhs.true728
  %sub741 = sub nsw i32 %84, %mul729
  %mul742 = mul nsw i32 %sub741, %x_size
  %add743 = sub i32 %161, %mul733
  %sub745 = add i32 %add743, %mul742
  %idxprom746 = sext i32 %sub745 to i64
  %arrayidx747 = getelementptr inbounds i32, i32* %r, i64 %idxprom746
  %165 = load i32, i32* %arrayidx747, align 4, !tbaa !5
  %cmp748 = icmp slt i32 %86, %165
  br i1 %cmp748, label %for.inc1253, label %if.then750

if.then750:                                       ; preds = %land.lhs.true739
  %arrayidx754 = getelementptr inbounds i8, i8* %mid, i64 %idxprom300
  store i8 1, i8* %arrayidx754, align 1, !tbaa !12
  br label %for.inc1253

if.then762:                                       ; preds = %if.then304.if.then762_crit_edge, %if.then319
  %incdec.ptr1161.pre-phi = phi i8* [ %.pre2112, %if.then304.if.then762_crit_edge ], [ %incdec.ptr653, %if.then319 ]
  %incdec.ptr1148.pre-phi = phi i8* [ %.pre2111, %if.then304.if.then762_crit_edge ], [ %incdec.ptr643, %if.then319 ]
  %add.ptr1147.pre-phi = phi i8* [ %.pre2110, %if.then304.if.then762_crit_edge ], [ %add.ptr642, %if.then319 ]
  %incdec.ptr1119.pre-phi = phi i8* [ %.pre2109, %if.then304.if.then762_crit_edge ], [ %incdec.ptr620, %if.then319 ]
  %incdec.ptr1111.pre-phi = phi i8* [ %.pre2108, %if.then304.if.then762_crit_edge ], [ %incdec.ptr612, %if.then319 ]
  %incdec.ptr1098.pre-phi = phi i8* [ %.pre2107, %if.then304.if.then762_crit_edge ], [ %incdec.ptr602, %if.then319 ]
  %incdec.ptr1084.pre-phi = phi i8* [ %.pre2106, %if.then304.if.then762_crit_edge ], [ %incdec.ptr591, %if.then319 ]
  %add.ptr1083.pre-phi = phi i8* [ %.pre2105, %if.then304.if.then762_crit_edge ], [ %add.ptr590, %if.then319 ]
  %incdec.ptr1056.pre-phi = phi i8* [ %.pre2104, %if.then304.if.then762_crit_edge ], [ %incdec.ptr569, %if.then319 ]
  %incdec.ptr1045.pre-phi = phi i8* [ %.pre2103, %if.then304.if.then762_crit_edge ], [ %incdec.ptr560, %if.then319 ]
  %incdec.ptr1038.pre-phi = phi i8* [ %.pre2102, %if.then304.if.then762_crit_edge ], [ %incdec.ptr553, %if.then319 ]
  %incdec.ptr1027.pre-phi = phi i8* [ %.pre2101, %if.then304.if.then762_crit_edge ], [ %incdec.ptr544, %if.then319 ]
  %incdec.ptr1014.pre-phi = phi i8* [ %.pre2100, %if.then304.if.then762_crit_edge ], [ %incdec.ptr534, %if.then319 ]
  %incdec.ptr1001.pre-phi = phi i8* [ %.pre2099, %if.then304.if.then762_crit_edge ], [ %incdec.ptr524, %if.then319 ]
  %add.ptr1000.pre-phi = phi i8* [ %.pre2098, %if.then304.if.then762_crit_edge ], [ %add.ptr523, %if.then319 ]
  %incdec.ptr983.pre-phi = phi i8* [ %.pre2097, %if.then304.if.then762_crit_edge ], [ %incdec.ptr506, %if.then319 ]
  %incdec.ptr976.pre-phi = phi i8* [ %.pre2096, %if.then304.if.then762_crit_edge ], [ %incdec.ptr499, %if.then319 ]
  %add.ptr975.pre-phi = phi i8* [ %.pre2095, %if.then304.if.then762_crit_edge ], [ %add.ptr498, %if.then319 ]
  %incdec.ptr961.pre-phi = phi i8* [ %.pre2094, %if.then304.if.then762_crit_edge ], [ %incdec.ptr484, %if.then319 ]
  %incdec.ptr953.pre-phi = phi i8* [ %.pre2093, %if.then304.if.then762_crit_edge ], [ %incdec.ptr476, %if.then319 ]
  %add.ptr952.pre-phi = phi i8* [ %.pre2092, %if.then304.if.then762_crit_edge ], [ %add.ptr475, %if.then319 ]
  %incdec.ptr925.pre-phi = phi i8* [ %.pre2091, %if.then304.if.then762_crit_edge ], [ %incdec.ptr454, %if.then319 ]
  %incdec.ptr914.pre-phi = phi i8* [ %.pre2090, %if.then304.if.then762_crit_edge ], [ %incdec.ptr445, %if.then319 ]
  %incdec.ptr907.pre-phi = phi i8* [ %.pre2089, %if.then304.if.then762_crit_edge ], [ %incdec.ptr438, %if.then319 ]
  %incdec.ptr896.pre-phi = phi i8* [ %.pre2088, %if.then304.if.then762_crit_edge ], [ %incdec.ptr429, %if.then319 ]
  %incdec.ptr883.pre-phi = phi i8* [ %.pre2087, %if.then304.if.then762_crit_edge ], [ %incdec.ptr419, %if.then319 ]
  %incdec.ptr870.pre-phi = phi i8* [ %.pre2086, %if.then304.if.then762_crit_edge ], [ %incdec.ptr409, %if.then319 ]
  %add.ptr869.pre-phi = phi i8* [ %.pre2085, %if.then304.if.then762_crit_edge ], [ %add.ptr408, %if.then319 ]
  %incdec.ptr841.pre-phi = phi i8* [ %.pre2084, %if.then304.if.then762_crit_edge ], [ %incdec.ptr386, %if.then319 ]
  %incdec.ptr833.pre-phi = phi i8* [ %.pre2083, %if.then304.if.then762_crit_edge ], [ %incdec.ptr378, %if.then319 ]
  %incdec.ptr820.pre-phi = phi i8* [ %.pre2082, %if.then304.if.then762_crit_edge ], [ %incdec.ptr368, %if.then319 ]
  %incdec.ptr806.pre-phi = phi i8* [ %.pre2081, %if.then304.if.then762_crit_edge ], [ %incdec.ptr357, %if.then319 ]
  %add.ptr805.pre-phi = phi i8* [ %.pre2080, %if.then304.if.then762_crit_edge ], [ %add.ptr356, %if.then319 ]
  %incdec.ptr783.pre-phi = phi i8* [ %.pre2079, %if.then304.if.then762_crit_edge ], [ %incdec.ptr337, %if.then319 ]
  %166 = load i8, i8* %add.ptr326, align 1, !tbaa !12
  %idx.ext772 = zext i8 %166 to i64
  %idx.neg773 = sub nsw i64 0, %idx.ext772
  %add.ptr774 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg773
  %167 = load i8, i8* %add.ptr774, align 1, !tbaa !12
  %conv775 = zext i8 %167 to i32
  %168 = load i8, i8* %incdec.ptr327, align 1, !tbaa !12
  %idx.ext785 = zext i8 %168 to i64
  %idx.neg786 = sub nsw i64 0, %idx.ext785
  %add.ptr787 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg786
  %169 = load i8, i8* %add.ptr787, align 1, !tbaa !12
  %conv788 = zext i8 %169 to i32
  %170 = load i8, i8* %incdec.ptr783.pre-phi, align 1, !tbaa !12
  %idx.ext792 = zext i8 %170 to i64
  %idx.neg793 = sub nsw i64 0, %idx.ext792
  %add.ptr794 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg793
  %171 = load i8, i8* %add.ptr794, align 1, !tbaa !12
  %conv795 = zext i8 %171 to i32
  %mul7811972 = sub nsw i32 %conv775, %conv795
  %172 = load i8, i8* %add.ptr805.pre-phi, align 1, !tbaa !12
  %idx.ext808 = zext i8 %172 to i64
  %idx.neg809 = sub nsw i64 0, %idx.ext808
  %add.ptr810 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg809
  %173 = load i8, i8* %add.ptr810, align 1, !tbaa !12
  %conv811 = zext i8 %173 to i32
  %mul812 = shl nuw nsw i32 %conv811, 2
  %174 = load i8, i8* %incdec.ptr806.pre-phi, align 1, !tbaa !12
  %idx.ext822 = zext i8 %174 to i64
  %idx.neg823 = sub nsw i64 0, %idx.ext822
  %add.ptr824 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg823
  %175 = load i8, i8* %add.ptr824, align 1, !tbaa !12
  %conv825 = zext i8 %175 to i32
  %176 = load i8, i8* %incdec.ptr820.pre-phi, align 1, !tbaa !12
  %idx.ext835 = zext i8 %176 to i64
  %idx.neg836 = sub nsw i64 0, %idx.ext835
  %add.ptr837 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg836
  %177 = load i8, i8* %add.ptr837, align 1, !tbaa !12
  %conv838 = zext i8 %177 to i32
  %178 = load i8, i8* %incdec.ptr833.pre-phi, align 1, !tbaa !12
  %idx.ext843 = zext i8 %178 to i64
  %idx.neg844 = sub nsw i64 0, %idx.ext843
  %add.ptr845 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg844
  %179 = load i8, i8* %add.ptr845, align 1, !tbaa !12
  %conv846 = zext i8 %179 to i32
  %mul852 = shl nuw nsw i32 %conv846, 1
  %180 = load i8, i8* %incdec.ptr841.pre-phi, align 1, !tbaa !12
  %idx.ext855 = zext i8 %180 to i64
  %idx.neg856 = sub nsw i64 0, %idx.ext855
  %add.ptr857 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg856
  %181 = load i8, i8* %add.ptr857, align 1, !tbaa !12
  %conv858 = zext i8 %181 to i32
  %mul859 = shl nuw nsw i32 %conv858, 2
  %182 = load i8, i8* %add.ptr869.pre-phi, align 1, !tbaa !12
  %idx.ext872 = zext i8 %182 to i64
  %idx.neg873 = sub nsw i64 0, %idx.ext872
  %add.ptr874 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg873
  %183 = load i8, i8* %add.ptr874, align 1, !tbaa !12
  %conv875 = zext i8 %183 to i32
  %184 = load i8, i8* %incdec.ptr870.pre-phi, align 1, !tbaa !12
  %idx.ext885 = zext i8 %184 to i64
  %idx.neg886 = sub nsw i64 0, %idx.ext885
  %add.ptr887 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg886
  %185 = load i8, i8* %add.ptr887, align 1, !tbaa !12
  %conv888 = zext i8 %185 to i32
  %186 = load i8, i8* %incdec.ptr883.pre-phi, align 1, !tbaa !12
  %idx.ext898 = zext i8 %186 to i64
  %idx.neg899 = sub nsw i64 0, %idx.ext898
  %add.ptr900 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg899
  %187 = load i8, i8* %add.ptr900, align 1, !tbaa !12
  %conv901 = zext i8 %187 to i32
  %188 = load i8, i8* %incdec.ptr896.pre-phi, align 1, !tbaa !12
  %idx.ext909 = zext i8 %188 to i64
  %idx.neg910 = sub nsw i64 0, %idx.ext909
  %add.ptr911 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg910
  %189 = load i8, i8* %add.ptr911, align 1, !tbaa !12
  %conv912 = zext i8 %189 to i32
  %190 = load i8, i8* %incdec.ptr907.pre-phi, align 1, !tbaa !12
  %idx.ext916 = zext i8 %190 to i64
  %idx.neg917 = sub nsw i64 0, %idx.ext916
  %add.ptr918 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg917
  %191 = load i8, i8* %add.ptr918, align 1, !tbaa !12
  %conv919 = zext i8 %191 to i32
  %192 = load i8, i8* %incdec.ptr914.pre-phi, align 1, !tbaa !12
  %idx.ext927 = zext i8 %192 to i64
  %idx.neg928 = sub nsw i64 0, %idx.ext927
  %add.ptr929 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg928
  %193 = load i8, i8* %add.ptr929, align 1, !tbaa !12
  %conv930 = zext i8 %193 to i32
  %mul936 = shl nuw nsw i32 %conv930, 1
  %194 = load i8, i8* %incdec.ptr925.pre-phi, align 1, !tbaa !12
  %idx.ext939 = zext i8 %194 to i64
  %idx.neg940 = sub nsw i64 0, %idx.ext939
  %add.ptr941 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg940
  %195 = load i8, i8* %add.ptr941, align 1, !tbaa !12
  %conv942 = zext i8 %195 to i32
  %196 = load i8, i8* %add.ptr1000.pre-phi, align 1, !tbaa !12
  %idx.ext1003 = zext i8 %196 to i64
  %idx.neg1004 = sub nsw i64 0, %idx.ext1003
  %add.ptr1005 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1004
  %197 = load i8, i8* %add.ptr1005, align 1, !tbaa !12
  %conv1006 = zext i8 %197 to i32
  %198 = load i8, i8* %incdec.ptr1001.pre-phi, align 1, !tbaa !12
  %idx.ext1016 = zext i8 %198 to i64
  %idx.neg1017 = sub nsw i64 0, %idx.ext1016
  %add.ptr1018 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1017
  %199 = load i8, i8* %add.ptr1018, align 1, !tbaa !12
  %conv1019 = zext i8 %199 to i32
  %mul1025 = shl nuw nsw i32 %conv1019, 1
  %200 = load i8, i8* %incdec.ptr1014.pre-phi, align 1, !tbaa !12
  %idx.ext1029 = zext i8 %200 to i64
  %idx.neg1030 = sub nsw i64 0, %idx.ext1029
  %add.ptr1031 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1030
  %201 = load i8, i8* %add.ptr1031, align 1, !tbaa !12
  %conv1032 = zext i8 %201 to i32
  %202 = load i8, i8* %incdec.ptr1027.pre-phi, align 1, !tbaa !12
  %idx.ext1040 = zext i8 %202 to i64
  %idx.neg1041 = sub nsw i64 0, %idx.ext1040
  %add.ptr1042 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1041
  %203 = load i8, i8* %add.ptr1042, align 1, !tbaa !12
  %conv1043 = zext i8 %203 to i32
  %204 = load i8, i8* %incdec.ptr1038.pre-phi, align 1, !tbaa !12
  %idx.ext1047 = zext i8 %204 to i64
  %idx.neg1048 = sub nsw i64 0, %idx.ext1047
  %add.ptr1049 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1048
  %205 = load i8, i8* %add.ptr1049, align 1, !tbaa !12
  %conv1050 = zext i8 %205 to i32
  %206 = load i8, i8* %incdec.ptr1045.pre-phi, align 1, !tbaa !12
  %idx.ext1058 = zext i8 %206 to i64
  %idx.neg1059 = sub nsw i64 0, %idx.ext1058
  %add.ptr1060 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1059
  %207 = load i8, i8* %add.ptr1060, align 1, !tbaa !12
  %conv1061 = zext i8 %207 to i32
  %208 = load i8, i8* %incdec.ptr1056.pre-phi, align 1, !tbaa !12
  %idx.ext1070 = zext i8 %208 to i64
  %idx.neg1071 = sub nsw i64 0, %idx.ext1070
  %add.ptr1072 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1071
  %209 = load i8, i8* %add.ptr1072, align 1, !tbaa !12
  %conv1073 = zext i8 %209 to i32
  %210 = load i8, i8* %add.ptr1083.pre-phi, align 1, !tbaa !12
  %idx.ext1086 = zext i8 %210 to i64
  %idx.neg1087 = sub nsw i64 0, %idx.ext1086
  %add.ptr1088 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1087
  %211 = load i8, i8* %add.ptr1088, align 1, !tbaa !12
  %conv1089 = zext i8 %211 to i32
  %mul1090 = shl nuw nsw i32 %conv1089, 2
  %212 = load i8, i8* %incdec.ptr1084.pre-phi, align 1, !tbaa !12
  %idx.ext1100 = zext i8 %212 to i64
  %idx.neg1101 = sub nsw i64 0, %idx.ext1100
  %add.ptr1102 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1101
  %213 = load i8, i8* %add.ptr1102, align 1, !tbaa !12
  %conv1103 = zext i8 %213 to i32
  %mul1109 = shl nuw nsw i32 %conv1103, 1
  %214 = load i8, i8* %incdec.ptr1098.pre-phi, align 1, !tbaa !12
  %idx.ext1113 = zext i8 %214 to i64
  %idx.neg1114 = sub nsw i64 0, %idx.ext1113
  %add.ptr1115 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1114
  %215 = load i8, i8* %add.ptr1115, align 1, !tbaa !12
  %conv1116 = zext i8 %215 to i32
  %216 = load i8, i8* %incdec.ptr1111.pre-phi, align 1, !tbaa !12
  %idx.ext1121 = zext i8 %216 to i64
  %idx.neg1122 = sub nsw i64 0, %idx.ext1121
  %add.ptr1123 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1122
  %217 = load i8, i8* %add.ptr1123, align 1, !tbaa !12
  %conv1124 = zext i8 %217 to i32
  %218 = load i8, i8* %incdec.ptr1119.pre-phi, align 1, !tbaa !12
  %idx.ext1133 = zext i8 %218 to i64
  %idx.neg1134 = sub nsw i64 0, %idx.ext1133
  %add.ptr1135 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1134
  %219 = load i8, i8* %add.ptr1135, align 1, !tbaa !12
  %conv1136 = zext i8 %219 to i32
  %mul1137 = shl nuw nsw i32 %conv1136, 2
  %220 = load i8, i8* %add.ptr1147.pre-phi, align 1, !tbaa !12
  %idx.ext1150 = zext i8 %220 to i64
  %idx.neg1151 = sub nsw i64 0, %idx.ext1150
  %add.ptr1152 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1151
  %221 = load i8, i8* %add.ptr1152, align 1, !tbaa !12
  %conv1153 = zext i8 %221 to i32
  %222 = load i8, i8* %incdec.ptr1148.pre-phi, align 1, !tbaa !12
  %idx.ext1163 = zext i8 %222 to i64
  %idx.neg1164 = sub nsw i64 0, %idx.ext1163
  %add.ptr1165 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1164
  %223 = load i8, i8* %add.ptr1165, align 1, !tbaa !12
  %conv1166 = zext i8 %223 to i32
  %224 = load i8, i8* %incdec.ptr1161.pre-phi, align 1, !tbaa !12
  %idx.ext1170 = zext i8 %224 to i64
  %idx.neg1171 = sub nsw i64 0, %idx.ext1170
  %add.ptr1172 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1171
  %225 = load i8, i8* %add.ptr1172, align 1, !tbaa !12
  %conv1173 = zext i8 %225 to i32
  %tmp2000 = add nuw nsw i32 %conv838, %conv825
  %tmp2001 = add nuw nsw i32 %tmp2000, %conv846
  %tmp2002 = add nuw nsw i32 %tmp2001, %conv1103
  %tmp2003 = add nuw nsw i32 %tmp2002, %conv1116
  %tmp2004 = add nuw nsw i32 %tmp2003, %conv1124
  %tmp2005 = shl nuw nsw i32 %tmp2004, 2
  %tmp2006 = add nuw nsw i32 %conv788, %conv775
  %tmp2007 = add nuw nsw i32 %tmp2006, %conv795
  %mul7781970 = add nuw nsw i32 %tmp2007, %conv1153
  %add7901971 = add nuw nsw i32 %mul7781970, %conv1166
  %tmp2008 = add nuw nsw i32 %add7901971, %conv1173
  %tmp2009 = mul nuw nsw i32 %tmp2008, 9
  %add913 = add nuw nsw i32 %mul859, %mul812
  %add922 = add nuw nsw i32 %add913, %conv875
  %add934 = add nuw nsw i32 %add922, %conv888
  %add946 = add nuw nsw i32 %add934, %conv901
  %add1010 = add nuw nsw i32 %add946, %conv912
  %add1023 = add i32 %add1010, %conv919
  %add1035 = add i32 %add1023, %conv930
  %add1044 = add i32 %add1035, %conv942
  %add1053 = add i32 %add1044, %conv1006
  %add1065 = add i32 %add1053, %conv1019
  %add1077 = add i32 %add1065, %conv1032
  %add1094 = add i32 %add1077, %conv1043
  %add1107 = add i32 %add1094, %conv1050
  %add1118 = add i32 %add1107, %conv1061
  %add1128 = add i32 %add1118, %conv1073
  %add1141 = add i32 %add1128, %mul1090
  %add1157 = add i32 %add1141, %mul1137
  %add1168 = add i32 %add1157, %tmp2005
  %add1177 = add i32 %add1168, %tmp2009
  %tmp2013 = add nsw i32 %conv875, %mul7811972
  %tmp2014 = sub nsw i32 %tmp2013, %conv942
  %tmp2015 = sub nsw i32 %tmp2014, %conv1006
  %tmp2016 = add nsw i32 %tmp2015, %conv1073
  %tmp2017 = sub nsw i32 %tmp2016, %conv1153
  %tmp2018 = add i32 %tmp2017, %conv1173
  %tmp2019 = mul i32 %tmp2018, 3
  %tmp2020 = add nuw nsw i32 %conv888, %conv825
  %tmp2021 = add nuw nsw i32 %tmp2020, %conv1061
  %tmp2022 = add nuw nsw i32 %tmp2021, %conv1124
  %tmp2023 = shl nuw nsw i32 %tmp2022, 1
  %sub949 = sub nsw i32 %mul812, %mul852
  %sub1013 = sub nsw i32 %sub949, %mul859
  %sub1026 = add nsw i32 %sub1013, %conv901
  %sub1037 = sub nsw i32 %sub1026, %conv919
  %add1055 = sub nsw i32 %sub1037, %mul936
  %add1068 = sub i32 %add1055, %mul1025
  %add1080 = sub i32 %add1068, %conv1032
  %sub1097 = add i32 %add1080, %conv1050
  %sub1110 = sub i32 %sub1097, %mul1090
  %add1131 = sub i32 %sub1110, %mul1109
  %add1144 = add i32 %add1131, %mul1137
  %sub1160 = add i32 %add1144, %tmp2023
  %add1180 = add i32 %sub1160, %tmp2019
  %cmp1181 = icmp eq i32 %add1177, 0
  br i1 %cmp1181, label %if.end1205, label %if.end1188

if.end1188:                                       ; preds = %if.then762
  %226 = load i8, i8* %add.ptr952.pre-phi, align 1, !tbaa !12
  %idx.ext955 = zext i8 %226 to i64
  %idx.neg956 = sub nsw i64 0, %idx.ext955
  %add.ptr957 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg956
  %227 = load i8, i8* %add.ptr957, align 1, !tbaa !12
  %conv958 = zext i8 %227 to i32
  %228 = load i8, i8* %incdec.ptr953.pre-phi, align 1, !tbaa !12
  %idx.ext963 = zext i8 %228 to i64
  %idx.neg964 = sub nsw i64 0, %idx.ext963
  %add.ptr965 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg964
  %229 = load i8, i8* %add.ptr965, align 1, !tbaa !12
  %conv966 = zext i8 %229 to i32
  %230 = load i8, i8* %incdec.ptr961.pre-phi, align 1, !tbaa !12
  %idx.ext970 = zext i8 %230 to i64
  %idx.neg971 = sub nsw i64 0, %idx.ext970
  %add.ptr972 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg971
  %231 = load i8, i8* %add.ptr972, align 1, !tbaa !12
  %conv973 = zext i8 %231 to i32
  %232 = load i8, i8* %add.ptr975.pre-phi, align 1, !tbaa !12
  %idx.ext978 = zext i8 %232 to i64
  %idx.neg979 = sub nsw i64 0, %idx.ext978
  %add.ptr980 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg979
  %233 = load i8, i8* %add.ptr980, align 1, !tbaa !12
  %conv981 = zext i8 %233 to i32
  %234 = load i8, i8* %incdec.ptr976.pre-phi, align 1, !tbaa !12
  %idx.ext985 = zext i8 %234 to i64
  %idx.neg986 = sub nsw i64 0, %idx.ext985
  %add.ptr987 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg986
  %235 = load i8, i8* %add.ptr987, align 1, !tbaa !12
  %conv988 = zext i8 %235 to i32
  %236 = load i8, i8* %incdec.ptr983.pre-phi, align 1, !tbaa !12
  %idx.ext992 = zext i8 %236 to i64
  %idx.neg993 = sub nsw i64 0, %idx.ext992
  %add.ptr994 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg993
  %237 = load i8, i8* %add.ptr994, align 1, !tbaa !12
  %conv995 = zext i8 %237 to i32
  %tmp2024 = add nuw nsw i32 %conv930, %conv888
  %tmp2025 = add nuw nsw i32 %tmp2024, %conv1019
  %tmp2026 = add nuw nsw i32 %tmp2025, %conv1061
  %tmp2027 = add nuw nsw i32 %tmp2026, %conv966
  %tmp2028 = add nuw nsw i32 %tmp2027, %conv988
  %tmp2029 = shl nuw nsw i32 %tmp2028, 2
  %tmp2030 = add nuw nsw i32 %conv942, %conv875
  %tmp2031 = add nuw nsw i32 %tmp2030, %conv1006
  %tmp2032 = add nuw nsw i32 %tmp2031, %conv1073
  %tmp2033 = add nuw nsw i32 %tmp2032, %conv958
  %tmp2034 = add nuw nsw i32 %tmp2033, %conv995
  %tmp2035 = mul nuw nsw i32 %tmp2034, 9
  %add944 = add nuw nsw i32 %conv795, %conv775
  %add960 = add nuw nsw i32 %add944, %mul812
  %add968 = add nuw nsw i32 %add960, %conv825
  %add974 = add nuw nsw i32 %add968, %conv846
  %add982 = add nuw nsw i32 %add974, %mul859
  %add990 = add nuw nsw i32 %add982, %conv901
  %add997 = add i32 %add990, %conv919
  %add1008 = add i32 %add997, %conv1032
  %add1021 = add i32 %add1008, %conv1050
  %add1033 = add i32 %add1021, %mul1090
  %add1051 = add i32 %add1033, %conv1103
  %add1063 = add i32 %add1051, %conv1124
  %add1075 = add i32 %add1063, %mul1137
  %add1091 = add i32 %add1075, %conv1153
  %add1104 = add i32 %add1091, %conv1173
  %add1125 = add i32 %add1104, %conv973
  %add1138 = add i32 %add1125, %conv981
  %add1154 = add i32 %add1138, %tmp2029
  %add1174 = add i32 %add1154, %tmp2035
  %conv1185 = sitofp i32 %add1174 to float
  %conv1186 = sitofp i32 %add1177 to float
  %div1187 = fdiv float %conv1185, %conv1186
  %cmp1190 = fcmp olt float %div1187, 5.000000e-01
  br i1 %cmp1190, label %if.end1205, label %if.else1193

if.else1193:                                      ; preds = %if.end1188
  %cmp1195 = fcmp ogt float %div1187, 2.000000e+00
  br i1 %cmp1195, label %if.end1205, label %if.else1198

if.else1198:                                      ; preds = %if.else1193
  %cmp1199 = icmp sgt i32 %add1180, 0
  %.1978 = select i1 %cmp1199, i32 -1, i32 1
  br label %if.end1205

if.end1205:                                       ; preds = %if.then762, %if.else1198, %if.else1193, %if.end1188
  %a.1 = phi i32 [ 0, %if.end1188 ], [ 1, %if.else1193 ], [ %.1978, %if.else1198 ], [ 1, %if.then762 ]
  %b.1 = phi i32 [ 1, %if.end1188 ], [ 0, %if.else1193 ], [ 1, %if.else1198 ], [ 0, %if.then762 ]
  %add1206 = add nsw i32 %a.1, %85
  %mul1207 = mul nsw i32 %add1206, %x_size
  %238 = trunc i64 %indvars.iv to i32
  %add1208 = add i32 %b.1, %238
  %add1209 = add i32 %add1208, %mul1207
  %idxprom1210 = sext i32 %add1209 to i64
  %arrayidx1211 = getelementptr inbounds i32, i32* %r, i64 %idxprom1210
  %239 = load i32, i32* %arrayidx1211, align 4, !tbaa !5
  %cmp1212 = icmp sgt i32 %86, %239
  br i1 %cmp1212, label %land.lhs.true1214, label %for.inc1253

land.lhs.true1214:                                ; preds = %if.end1205
  %sub1215 = sub nsw i32 %85, %a.1
  %mul1216 = mul nsw i32 %sub1215, %x_size
  %add1217 = sub i32 %238, %b.1
  %sub1218 = add i32 %add1217, %mul1216
  %idxprom1219 = sext i32 %sub1218 to i64
  %arrayidx1220 = getelementptr inbounds i32, i32* %r, i64 %idxprom1219
  %240 = load i32, i32* %arrayidx1220, align 4, !tbaa !5
  %cmp1221 = icmp slt i32 %86, %240
  br i1 %cmp1221, label %for.inc1253, label %land.lhs.true1223

land.lhs.true1223:                                ; preds = %land.lhs.true1214
  %mul1224 = shl nsw i32 %a.1, 1
  %add1225 = add nsw i32 %mul1224, %85
  %mul1226 = mul nsw i32 %add1225, %x_size
  %mul1228 = shl nuw nsw i32 %b.1, 1
  %add1227 = add i32 %mul1228, %238
  %add1229 = add i32 %add1227, %mul1226
  %idxprom1230 = sext i32 %add1229 to i64
  %arrayidx1231 = getelementptr inbounds i32, i32* %r, i64 %idxprom1230
  %241 = load i32, i32* %arrayidx1231, align 4, !tbaa !5
  %cmp1232 = icmp sgt i32 %86, %241
  br i1 %cmp1232, label %land.lhs.true1234, label %for.inc1253

land.lhs.true1234:                                ; preds = %land.lhs.true1223
  %sub1236 = sub nsw i32 %85, %mul1224
  %mul1237 = mul nsw i32 %sub1236, %x_size
  %add1238 = sub i32 %238, %mul1228
  %sub1240 = add i32 %add1238, %mul1237
  %idxprom1241 = sext i32 %sub1240 to i64
  %arrayidx1242 = getelementptr inbounds i32, i32* %r, i64 %idxprom1241
  %242 = load i32, i32* %arrayidx1242, align 4, !tbaa !5
  %cmp1243 = icmp slt i32 %86, %242
  br i1 %cmp1243, label %for.inc1253, label %if.then1245

if.then1245:                                      ; preds = %land.lhs.true1234
  %arrayidx1249 = getelementptr inbounds i8, i8* %mid, i64 %idxprom300
  store i8 2, i8* %arrayidx1249, align 1, !tbaa !12
  br label %for.inc1253

for.inc1253:                                      ; preds = %if.end711, %land.lhs.true, %land.lhs.true728, %land.lhs.true739, %if.then750, %land.lhs.true1234, %land.lhs.true1214, %for.body297, %if.end1205, %land.lhs.true1223, %if.then1245
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc1254 = add nuw nsw i32 %j.12037, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub294
  br i1 %exitcond, label %for.inc1256.loopexit, label %for.body297

for.inc1256.loopexit:                             ; preds = %for.inc1253
  br label %for.inc1256

for.inc1256:                                      ; preds = %for.inc1256.loopexit, %for.cond293.preheader
  %indvars.iv.next2058 = add nuw nsw i64 %indvars.iv2057, 1
  %lftr.wideiv2064 = trunc i64 %indvars.iv.next2058 to i32
  %exitcond2065 = icmp eq i32 %lftr.wideiv2064, %sub289
  br i1 %exitcond2065, label %for.end1258.loopexit, label %for.cond293.preheader

for.end1258.loopexit:                             ; preds = %for.inc1256
  br label %for.end1258

for.end1258:                                      ; preds = %for.end1258.loopexit, %for.cond288.preheader
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define i32 @susan_edges_small(i8* nocapture readonly %in, i32* nocapture %r, i8* nocapture %mid, i8* nocapture readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #3 {
entry:
  %0 = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %mul1, i32 4, i1 false)
  %sub = add i32 %y_size, -1
  %cmp644 = icmp sgt i32 %sub, 1
  br i1 %cmp644, label %for.cond3.preheader.lr.ph, label %for.cond84.preheader

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add nsw i32 %x_size, -1
  %cmp5642 = icmp sgt i32 %sub4, 1
  %sub35 = add nsw i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  %1 = sext i32 %x_size to i64
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc81, %for.cond3.preheader.lr.ph
  %indvars.iv661 = phi i64 [ 1, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next662, %for.inc81 ]
  br i1 %cmp5642, label %for.body7.lr.ph, label %for.inc81

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %2 = add nsw i64 %indvars.iv661, -1
  %3 = mul nsw i64 %2, %1
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %3
  %4 = mul nsw i64 %indvars.iv661, %1
  %5 = trunc i64 %4 to i32
  br label %for.body7

for.cond84.preheader.loopexit:                    ; preds = %for.inc81
  br label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %for.cond84.preheader.loopexit, %entry
  %sub85 = add i32 %y_size, -2
  %cmp86639 = icmp sgt i32 %sub85, 2
  br i1 %cmp86639, label %for.cond89.preheader.lr.ph, label %for.end398

for.cond89.preheader.lr.ph:                       ; preds = %for.cond84.preheader
  %sub90 = add nsw i32 %x_size, -2
  %cmp91636 = icmp sgt i32 %sub90, 2
  %idx.ext148 = sext i32 %sub90 to i64
  %6 = sext i32 %x_size to i64
  br label %for.cond89.preheader

for.body7:                                        ; preds = %for.inc, %for.body7.lr.ph
  %indvars.iv657 = phi i64 [ 1, %for.body7.lr.ph ], [ %indvars.iv.next658, %for.inc ]
  %j.0643 = phi i32 [ 1, %for.body7.lr.ph ], [ %inc, %for.inc ]
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv657
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %add = add nsw i32 %j.0643, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %idx.ext15 = zext i8 %7 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %8 = load i8, i8* %add.ptr12, align 1, !tbaa !12
  %idx.ext18 = zext i8 %8 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %9 = load i8, i8* %add.ptr19, align 1, !tbaa !12
  %conv20 = zext i8 %9 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %10 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %idx.ext24 = zext i8 %10 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %11 = load i8, i8* %add.ptr26, align 1, !tbaa !12
  %conv27 = zext i8 %11 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %12 = load i8, i8* %incdec.ptr22, align 1, !tbaa !12
  %idx.ext30 = zext i8 %12 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %13 = load i8, i8* %add.ptr32, align 1, !tbaa !12
  %conv33 = zext i8 %13 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %idx.ext36
  %14 = load i8, i8* %add.ptr37, align 1, !tbaa !12
  %idx.ext39 = zext i8 %14 to i64
  %idx.neg40 = sub nsw i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg40
  %15 = load i8, i8* %add.ptr41, align 1, !tbaa !12
  %conv42 = zext i8 %15 to i32
  %add43 = add nuw nsw i32 %add34, %conv42
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr37, i64 2
  %16 = load i8, i8* %add.ptr44, align 1, !tbaa !12
  %idx.ext46 = zext i8 %16 to i64
  %idx.neg47 = sub nsw i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg47
  %17 = load i8, i8* %add.ptr48, align 1, !tbaa !12
  %conv49 = zext i8 %17 to i32
  %add50 = add nuw nsw i32 %add43, %conv49
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr44, i64 %idx.ext36
  %incdec.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 1
  %18 = load i8, i8* %add.ptr53, align 1, !tbaa !12
  %idx.ext56 = zext i8 %18 to i64
  %idx.neg57 = sub nsw i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg57
  %19 = load i8, i8* %add.ptr58, align 1, !tbaa !12
  %conv59 = zext i8 %19 to i32
  %add60 = add nuw nsw i32 %add50, %conv59
  %incdec.ptr61 = getelementptr inbounds i8, i8* %incdec.ptr54, i64 1
  %20 = load i8, i8* %incdec.ptr54, align 1, !tbaa !12
  %idx.ext63 = zext i8 %20 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg64
  %21 = load i8, i8* %add.ptr65, align 1, !tbaa !12
  %conv66 = zext i8 %21 to i32
  %add67 = add nsw i32 %add60, %conv66
  %22 = load i8, i8* %incdec.ptr61, align 1, !tbaa !12
  %idx.ext69 = zext i8 %22 to i64
  %idx.neg70 = sub nsw i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg70
  %23 = load i8, i8* %add.ptr71, align 1, !tbaa !12
  %conv72 = zext i8 %23 to i32
  %add73 = add nsw i32 %add67, %conv72
  %cmp74 = icmp slt i32 %add73, 731
  br i1 %cmp74, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %sub76 = sub nsw i32 730, %add73
  %arrayidx80 = getelementptr inbounds i32, i32* %r, i64 %idxprom
  store i32 %sub76, i32* %arrayidx80, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1
  %inc = add nuw nsw i32 %j.0643, 1
  %lftr.wideiv659 = trunc i64 %indvars.iv.next658 to i32
  %exitcond660 = icmp eq i32 %lftr.wideiv659, %sub4
  br i1 %exitcond660, label %for.inc81.loopexit, label %for.body7

for.inc81.loopexit:                               ; preds = %for.inc
  br label %for.inc81

for.inc81:                                        ; preds = %for.inc81.loopexit, %for.cond3.preheader
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1
  %lftr.wideiv666 = trunc i64 %indvars.iv.next662 to i32
  %exitcond667 = icmp eq i32 %lftr.wideiv666, %sub
  br i1 %exitcond667, label %for.cond84.preheader.loopexit, label %for.cond3.preheader

for.cond89.preheader:                             ; preds = %for.inc396, %for.cond89.preheader.lr.ph
  %indvars.iv648 = phi i64 [ 2, %for.cond89.preheader.lr.ph ], [ %indvars.iv.next649, %for.inc396 ]
  br i1 %cmp91636, label %for.body93.lr.ph, label %for.inc396

for.body93.lr.ph:                                 ; preds = %for.cond89.preheader
  %24 = mul nsw i64 %indvars.iv648, %6
  %25 = add nsw i64 %indvars.iv648, -1
  %26 = mul nsw i64 %25, %6
  %add.ptr119 = getelementptr inbounds i8, i8* %in, i64 %26
  %27 = trunc i64 %24 to i32
  %28 = trunc i64 %indvars.iv648 to i32
  %29 = trunc i64 %indvars.iv648 to i32
  br label %for.body93

for.body93:                                       ; preds = %for.inc393, %for.body93.lr.ph
  %indvars.iv = phi i64 [ 2, %for.body93.lr.ph ], [ %indvars.iv.next, %for.inc393 ]
  %j.1637 = phi i32 [ 2, %for.body93.lr.ph ], [ %inc394, %for.inc393 ]
  %add95 = add nsw i32 %j.1637, %27
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds i32, i32* %r, i64 %idxprom96
  %30 = load i32, i32* %arrayidx97, align 4, !tbaa !5
  %cmp98 = icmp sgt i32 %30, 0
  br i1 %cmp98, label %if.then100, label %for.inc393

if.then100:                                       ; preds = %for.body93
  %sub105 = sub nsw i32 730, %30
  %arrayidx109 = getelementptr inbounds i8, i8* %in, i64 %idxprom96
  %31 = load i8, i8* %arrayidx109, align 1, !tbaa !12
  %idx.ext111 = zext i8 %31 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext111
  %cmp113 = icmp sgt i32 %sub105, 250
  %add.ptr121 = getelementptr inbounds i8, i8* %add.ptr119, i64 %indvars.iv
  %add.ptr122 = getelementptr inbounds i8, i8* %add.ptr121, i64 -1
  %incdec.ptr123 = getelementptr inbounds i8, i8* %add.ptr122, i64 1
  br i1 %cmp113, label %if.then115, label %if.then100.if.then260_crit_edge

if.then100.if.then260_crit_edge:                  ; preds = %if.then100
  %.pre670 = getelementptr inbounds i8, i8* %incdec.ptr123, i64 1
  %.pre671 = getelementptr inbounds i8, i8* %.pre670, i64 %idx.ext148
  %.pre672 = getelementptr inbounds i8, i8* %.pre671, i64 2
  %.pre673 = getelementptr inbounds i8, i8* %.pre672, i64 %idx.ext148
  %.pre674 = getelementptr inbounds i8, i8* %.pre673, i64 1
  %.pre675 = getelementptr inbounds i8, i8* %.pre674, i64 1
  br label %if.then260

if.then115:                                       ; preds = %if.then100
  %32 = load i8, i8* %add.ptr122, align 1, !tbaa !12
  %idx.ext125 = zext i8 %32 to i64
  %idx.neg126 = sub nsw i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg126
  %33 = load i8, i8* %add.ptr127, align 1, !tbaa !12
  %conv128 = zext i8 %33 to i32
  %incdec.ptr132 = getelementptr inbounds i8, i8* %incdec.ptr123, i64 1
  %34 = load i8, i8* %incdec.ptr123, align 1, !tbaa !12
  %idx.ext134 = zext i8 %34 to i64
  %idx.neg135 = sub nsw i64 0, %idx.ext134
  %add.ptr136 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg135
  %35 = load i8, i8* %add.ptr136, align 1, !tbaa !12
  %conv137 = zext i8 %35 to i32
  %sum = add nuw nsw i32 %conv137, %conv128
  %36 = load i8, i8* %incdec.ptr132, align 1, !tbaa !12
  %idx.ext140 = zext i8 %36 to i64
  %idx.neg141 = sub nsw i64 0, %idx.ext140
  %add.ptr142 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg141
  %37 = load i8, i8* %add.ptr142, align 1, !tbaa !12
  %conv143 = zext i8 %37 to i32
  %add144 = sub nsw i32 %conv143, %conv128
  %sum647 = add nuw nsw i32 %sum, %conv143
  %add.ptr149 = getelementptr inbounds i8, i8* %incdec.ptr132, i64 %idx.ext148
  %38 = load i8, i8* %add.ptr149, align 1, !tbaa !12
  %idx.ext151 = zext i8 %38 to i64
  %idx.neg152 = sub nsw i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg152
  %39 = load i8, i8* %add.ptr153, align 1, !tbaa !12
  %conv154 = zext i8 %39 to i32
  %sub155 = sub nsw i32 %add144, %conv154
  %add.ptr156 = getelementptr inbounds i8, i8* %add.ptr149, i64 2
  %40 = load i8, i8* %add.ptr156, align 1, !tbaa !12
  %idx.ext158 = zext i8 %40 to i64
  %idx.neg159 = sub nsw i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg159
  %41 = load i8, i8* %add.ptr160, align 1, !tbaa !12
  %conv161 = zext i8 %41 to i32
  %add162 = add nsw i32 %sub155, %conv161
  %add.ptr165 = getelementptr inbounds i8, i8* %add.ptr156, i64 %idx.ext148
  %incdec.ptr166 = getelementptr inbounds i8, i8* %add.ptr165, i64 1
  %42 = load i8, i8* %add.ptr165, align 1, !tbaa !12
  %idx.ext168 = zext i8 %42 to i64
  %idx.neg169 = sub nsw i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg169
  %43 = load i8, i8* %add.ptr170, align 1, !tbaa !12
  %conv171 = zext i8 %43 to i32
  %sub172 = sub nsw i32 %add162, %conv171
  %add174 = sub nsw i32 %conv171, %sum647
  %incdec.ptr175 = getelementptr inbounds i8, i8* %incdec.ptr166, i64 1
  %44 = load i8, i8* %incdec.ptr166, align 1, !tbaa !12
  %idx.ext177 = zext i8 %44 to i64
  %idx.neg178 = sub nsw i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg178
  %45 = load i8, i8* %add.ptr179, align 1, !tbaa !12
  %conv180 = zext i8 %45 to i32
  %add181 = add nsw i32 %add174, %conv180
  %46 = load i8, i8* %incdec.ptr175, align 1, !tbaa !12
  %idx.ext183 = zext i8 %46 to i64
  %idx.neg184 = sub nsw i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg184
  %47 = load i8, i8* %add.ptr185, align 1, !tbaa !12
  %conv186 = zext i8 %47 to i32
  %add187 = add nsw i32 %sub172, %conv186
  %add189 = add nsw i32 %add181, %conv186
  %mul190 = mul nsw i32 %add187, %add187
  %mul191 = mul nsw i32 %add189, %add189
  %add192 = add nuw nsw i32 %mul190, %mul191
  %conv193 = sitofp i32 %add192 to float
  %sqrtf = tail call float @sqrtf(float %conv193) #1
  %conv196 = fpext float %sqrtf to double
  %conv197 = sitofp i32 %sub105 to float
  %conv198 = fpext float %conv197 to double
  %mul199 = fmul double %conv198, 4.000000e-01
  %cmp200 = fcmp ogt double %conv196, %mul199
  br i1 %cmp200, label %if.then202, label %if.then260

if.then202:                                       ; preds = %if.then115
  %cmp203 = icmp eq i32 %add187, 0
  br i1 %cmp203, label %if.end208, label %if.else

if.else:                                          ; preds = %if.then202
  %conv206 = sitofp i32 %add189 to float
  %conv207 = sitofp i32 %add187 to float
  %div = fdiv float %conv206, %conv207
  br label %if.end208

if.end208:                                        ; preds = %if.then202, %if.else
  %z.0 = phi float [ %div, %if.else ], [ 1.000000e+06, %if.then202 ]
  %cmp209 = fcmp olt float %z.0, 0.000000e+00
  %sub212 = fsub float -0.000000e+00, %z.0
  %z.1 = select i1 %cmp209, float %sub212, float %z.0
  %cmp216 = fcmp olt float %z.1, 5.000000e-01
  br i1 %cmp216, label %if.end231, label %if.else219

if.else219:                                       ; preds = %if.end208
  %cmp221 = fcmp ogt float %z.1, 2.000000e+00
  br i1 %cmp221, label %if.end231, label %if.else224

if.else224:                                       ; preds = %if.else219
  %. = select i1 %cmp209, i32 -1, i32 1
  br label %if.end231

if.end231:                                        ; preds = %if.else224, %if.else219, %if.end208
  %a.0 = phi i32 [ 0, %if.end208 ], [ 1, %if.else219 ], [ %., %if.else224 ]
  %b.0 = phi i32 [ 1, %if.end208 ], [ 0, %if.else219 ], [ 1, %if.else224 ]
  %add232 = add nsw i32 %a.0, %28
  %mul233 = mul nsw i32 %add232, %x_size
  %48 = trunc i64 %indvars.iv to i32
  %add234 = add i32 %b.0, %48
  %add235 = add i32 %add234, %mul233
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds i32, i32* %r, i64 %idxprom236
  %49 = load i32, i32* %arrayidx237, align 4, !tbaa !5
  %cmp238 = icmp sgt i32 %30, %49
  br i1 %cmp238, label %land.lhs.true, label %for.inc393

land.lhs.true:                                    ; preds = %if.end231
  %sub240 = sub nsw i32 %28, %a.0
  %mul241 = mul nsw i32 %sub240, %x_size
  %add242 = sub i32 %48, %b.0
  %sub243 = add i32 %add242, %mul241
  %idxprom244 = sext i32 %sub243 to i64
  %arrayidx245 = getelementptr inbounds i32, i32* %r, i64 %idxprom244
  %50 = load i32, i32* %arrayidx245, align 4, !tbaa !5
  %cmp246 = icmp slt i32 %30, %50
  br i1 %cmp246, label %for.inc393, label %if.then248

if.then248:                                       ; preds = %land.lhs.true
  %arrayidx252 = getelementptr inbounds i8, i8* %mid, i64 %idxprom96
  store i8 1, i8* %arrayidx252, align 1, !tbaa !12
  br label %for.inc393

if.then260:                                       ; preds = %if.then100.if.then260_crit_edge, %if.then115
  %incdec.ptr326.pre-phi = phi i8* [ %.pre675, %if.then100.if.then260_crit_edge ], [ %incdec.ptr175, %if.then115 ]
  %incdec.ptr315.pre-phi = phi i8* [ %.pre674, %if.then100.if.then260_crit_edge ], [ %incdec.ptr166, %if.then115 ]
  %add.ptr314.pre-phi = phi i8* [ %.pre673, %if.then100.if.then260_crit_edge ], [ %add.ptr165, %if.then115 ]
  %add.ptr305.pre-phi = phi i8* [ %.pre672, %if.then100.if.then260_crit_edge ], [ %add.ptr156, %if.then115 ]
  %add.ptr298.pre-phi = phi i8* [ %.pre671, %if.then100.if.then260_crit_edge ], [ %add.ptr149, %if.then115 ]
  %incdec.ptr279.pre-phi = phi i8* [ %.pre670, %if.then100.if.then260_crit_edge ], [ %incdec.ptr132, %if.then115 ]
  %51 = load i8, i8* %add.ptr122, align 1, !tbaa !12
  %idx.ext270 = zext i8 %51 to i64
  %idx.neg271 = sub nsw i64 0, %idx.ext270
  %add.ptr272 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg271
  %52 = load i8, i8* %add.ptr272, align 1, !tbaa !12
  %conv273 = zext i8 %52 to i32
  %53 = load i8, i8* %incdec.ptr123, align 1, !tbaa !12
  %idx.ext281 = zext i8 %53 to i64
  %idx.neg282 = sub nsw i64 0, %idx.ext281
  %add.ptr283 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg282
  %54 = load i8, i8* %add.ptr283, align 1, !tbaa !12
  %conv284 = zext i8 %54 to i32
  %add285 = add nuw nsw i32 %conv284, %conv273
  %55 = load i8, i8* %incdec.ptr279.pre-phi, align 1, !tbaa !12
  %idx.ext287 = zext i8 %55 to i64
  %idx.neg288 = sub nsw i64 0, %idx.ext287
  %add.ptr289 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg288
  %56 = load i8, i8* %add.ptr289, align 1, !tbaa !12
  %conv290 = zext i8 %56 to i32
  %add293 = add nuw nsw i32 %add285, %conv290
  %sub295 = sub nsw i32 %conv273, %conv290
  %57 = load i8, i8* %add.ptr314.pre-phi, align 1, !tbaa !12
  %idx.ext317 = zext i8 %57 to i64
  %idx.neg318 = sub nsw i64 0, %idx.ext317
  %add.ptr319 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg318
  %58 = load i8, i8* %add.ptr319, align 1, !tbaa !12
  %conv320 = zext i8 %58 to i32
  %add323 = add nuw nsw i32 %add293, %conv320
  %sub325 = sub nsw i32 %sub295, %conv320
  %59 = load i8, i8* %incdec.ptr315.pre-phi, align 1, !tbaa !12
  %idx.ext328 = zext i8 %59 to i64
  %idx.neg329 = sub nsw i64 0, %idx.ext328
  %add.ptr330 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg329
  %60 = load i8, i8* %add.ptr330, align 1, !tbaa !12
  %conv331 = zext i8 %60 to i32
  %add332 = add nuw nsw i32 %add323, %conv331
  %61 = load i8, i8* %incdec.ptr326.pre-phi, align 1, !tbaa !12
  %idx.ext334 = zext i8 %61 to i64
  %idx.neg335 = sub nsw i64 0, %idx.ext334
  %add.ptr336 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg335
  %62 = load i8, i8* %add.ptr336, align 1, !tbaa !12
  %conv337 = zext i8 %62 to i32
  %add340 = add nuw nsw i32 %add332, %conv337
  %add342 = add nsw i32 %sub325, %conv337
  %cmp343 = icmp eq i32 %add340, 0
  br i1 %cmp343, label %if.end367, label %if.end350

if.end350:                                        ; preds = %if.then260
  %add291 = add nuw nsw i32 %conv290, %conv273
  %63 = load i8, i8* %add.ptr298.pre-phi, align 1, !tbaa !12
  %idx.ext300 = zext i8 %63 to i64
  %idx.neg301 = sub nsw i64 0, %idx.ext300
  %add.ptr302 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg301
  %64 = load i8, i8* %add.ptr302, align 1, !tbaa !12
  %conv303 = zext i8 %64 to i32
  %65 = load i8, i8* %add.ptr305.pre-phi, align 1, !tbaa !12
  %idx.ext307 = zext i8 %65 to i64
  %idx.neg308 = sub nsw i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg308
  %66 = load i8, i8* %add.ptr309, align 1, !tbaa !12
  %conv310 = zext i8 %66 to i32
  %add304 = add nuw nsw i32 %add291, %conv320
  %add311 = add nuw nsw i32 %add304, %conv337
  %add321 = add nuw nsw i32 %add311, %conv303
  %add338 = add nuw nsw i32 %add321, %conv310
  %conv347 = sitofp i32 %add338 to float
  %conv348 = sitofp i32 %add340 to float
  %div349 = fdiv float %conv347, %conv348
  %cmp352 = fcmp olt float %div349, 5.000000e-01
  br i1 %cmp352, label %if.end367, label %if.else355

if.else355:                                       ; preds = %if.end350
  %cmp357 = fcmp ogt float %div349, 2.000000e+00
  br i1 %cmp357, label %if.end367, label %if.else360

if.else360:                                       ; preds = %if.else355
  %cmp361 = icmp sgt i32 %add342, 0
  %.632 = select i1 %cmp361, i32 -1, i32 1
  br label %if.end367

if.end367:                                        ; preds = %if.then260, %if.else360, %if.else355, %if.end350
  %a.1 = phi i32 [ 0, %if.end350 ], [ 1, %if.else355 ], [ %.632, %if.else360 ], [ 1, %if.then260 ]
  %b.1 = phi i32 [ 1, %if.end350 ], [ 0, %if.else355 ], [ 1, %if.else360 ], [ 0, %if.then260 ]
  %add368 = add nsw i32 %a.1, %29
  %mul369 = mul nsw i32 %add368, %x_size
  %67 = trunc i64 %indvars.iv to i32
  %add370 = add i32 %b.1, %67
  %add371 = add i32 %add370, %mul369
  %idxprom372 = sext i32 %add371 to i64
  %arrayidx373 = getelementptr inbounds i32, i32* %r, i64 %idxprom372
  %68 = load i32, i32* %arrayidx373, align 4, !tbaa !5
  %cmp374 = icmp sgt i32 %30, %68
  br i1 %cmp374, label %land.lhs.true376, label %for.inc393

land.lhs.true376:                                 ; preds = %if.end367
  %sub377 = sub nsw i32 %29, %a.1
  %mul378 = mul nsw i32 %sub377, %x_size
  %add379 = sub i32 %67, %b.1
  %sub380 = add i32 %add379, %mul378
  %idxprom381 = sext i32 %sub380 to i64
  %arrayidx382 = getelementptr inbounds i32, i32* %r, i64 %idxprom381
  %69 = load i32, i32* %arrayidx382, align 4, !tbaa !5
  %cmp383 = icmp slt i32 %30, %69
  br i1 %cmp383, label %for.inc393, label %if.then385

if.then385:                                       ; preds = %land.lhs.true376
  %arrayidx389 = getelementptr inbounds i8, i8* %mid, i64 %idxprom96
  store i8 2, i8* %arrayidx389, align 1, !tbaa !12
  br label %for.inc393

for.inc393:                                       ; preds = %if.end231, %land.lhs.true, %if.then248, %land.lhs.true376, %for.body93, %if.end367, %if.then385
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc394 = add nuw nsw i32 %j.1637, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub90
  br i1 %exitcond, label %for.inc396.loopexit, label %for.body93

for.inc396.loopexit:                              ; preds = %for.inc393
  br label %for.inc396

for.inc396:                                       ; preds = %for.inc396.loopexit, %for.cond89.preheader
  %indvars.iv.next649 = add nuw nsw i64 %indvars.iv648, 1
  %lftr.wideiv655 = trunc i64 %indvars.iv.next649 to i32
  %exitcond656 = icmp eq i32 %lftr.wideiv655, %sub85
  br i1 %exitcond656, label %for.end398.loopexit, label %for.cond89.preheader

for.end398.loopexit:                              ; preds = %for.inc396
  br label %for.end398

for.end398:                                       ; preds = %for.end398.loopexit, %for.cond84.preheader
  ret i32 undef
}

; Function Attrs: norecurse nounwind uwtable
define i32 @corner_draw(i8* nocapture %in, %struct.anon* nocapture readonly %corner_list, i32 %x_size, i32 %drawing_mode) #5 {
entry:
  %info56 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 0, i32 2
  %0 = load i32, i32* %info56, align 4, !tbaa !13
  %cmp57 = icmp eq i32 %0, 7
  br i1 %cmp57, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp1 = icmp eq i32 %drawing_mode, 0
  %sub10 = add nsw i32 %x_size, -2
  %idx.ext11 = sext i32 %sub10 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %indvars.iv = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next, %while.cond.backedge ]
  %arrayidx60 = phi %struct.anon* [ %corner_list, %while.body.lr.ph ], [ %arrayidx, %while.cond.backedge ]
  %y = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %indvars.iv, i32 1
  %1 = load i32, i32* %y, align 4, !tbaa !15
  %2 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx60, i64 0, i32 0
  %3 = load i32, i32* %2, align 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %1, -1
  %mul = mul nsw i32 %sub, %x_size
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %idx.ext
  %idx.ext6 = sext i32 %3 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr7, i64 -1
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr8, i64 1
  store i8 -1, i8* %add.ptr8, align 1, !tbaa !12
  %incdec.ptr9 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  store i8 -1, i8* %incdec.ptr, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr9, align 1, !tbaa !12
  %add.ptr12 = getelementptr inbounds i8, i8* %incdec.ptr9, i64 %idx.ext11
  %incdec.ptr13 = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  store i8 -1, i8* %add.ptr12, align 1, !tbaa !12
  %incdec.ptr14 = getelementptr inbounds i8, i8* %incdec.ptr13, i64 1
  store i8 0, i8* %incdec.ptr13, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr14, align 1, !tbaa !12
  %add.ptr17 = getelementptr inbounds i8, i8* %incdec.ptr14, i64 %idx.ext11
  %incdec.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i64 1
  store i8 -1, i8* %add.ptr17, align 1, !tbaa !12
  %incdec.ptr19 = getelementptr inbounds i8, i8* %incdec.ptr18, i64 1
  store i8 -1, i8* %incdec.ptr18, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr19, align 1, !tbaa !12
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %mul23 = mul nsw i32 %1, %x_size
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %in, i64 %idx.ext24
  %idx.ext29 = sext i32 %3 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr25, i64 %idx.ext29
  store i8 0, i8* %add.ptr30, align 1, !tbaa !12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %indvars.iv.next
  %info = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %indvars.iv.next, i32 2
  %4 = load i32, i32* %info, align 4, !tbaa !13
  %cmp = icmp eq i32 %4, 7
  br i1 %cmp, label %while.end.loopexit, label %while.body

while.end.loopexit:                               ; preds = %while.cond.backedge
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define i32 @susan_corners(i8* nocapture readonly %in, i32* %r, i8* readonly %bp, i32 %max_no, %struct.anon* nocapture %corner_list, i32 %x_size, i32 %y_size) #3 {
entry:
  %0 = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %mul1, i32 4, i1 false)
  %call = tail call noalias i8* @malloc(i64 %mul1) #7
  %1 = bitcast i8* %call to i32*
  %call8 = tail call noalias i8* @malloc(i64 %mul1) #7
  %2 = bitcast i8* %call8 to i32*
  %sub = add i32 %y_size, -5
  %cmp2175 = icmp sgt i32 %sub, 5
  br i1 %cmp2175, label %for.cond10.preheader.lr.ph, label %for.end1387

for.cond10.preheader.lr.ph:                       ; preds = %entry
  %sub11 = add i32 %x_size, -5
  %cmp122173 = icmp sgt i32 %sub11, 5
  %sub42 = add nsw i32 %x_size, -3
  %idx.ext43 = sext i32 %sub42 to i64
  %idx.ext80 = sext i32 %sub11 to i64
  %sub130 = add nsw i32 %x_size, -6
  %idx.ext131 = sext i32 %sub130 to i64
  %3 = sext i32 %x_size to i64
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.inc908, %for.cond10.preheader.lr.ph
  %indvars.iv2248 = phi i64 [ 5, %for.cond10.preheader.lr.ph ], [ %indvars.iv.next2249, %for.inc908 ]
  br i1 %cmp122173, label %for.body14.lr.ph, label %for.inc908

for.body14.lr.ph:                                 ; preds = %for.cond10.preheader
  %4 = add nsw i64 %indvars.iv2248, -3
  %5 = mul nsw i64 %4, %3
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %5
  %6 = mul nsw i64 %indvars.iv2248, %3
  %7 = trunc i64 %6 to i32
  %8 = trunc i64 %indvars.iv2248 to i32
  %9 = trunc i64 %indvars.iv2248 to i32
  br label %for.body14

for.cond911.preheader:                            ; preds = %for.inc908
  br i1 %cmp2175, label %for.cond916.preheader.lr.ph, label %for.end1387

for.cond916.preheader.lr.ph:                      ; preds = %for.cond911.preheader
  %sub917 = add nsw i32 %x_size, -5
  %cmp9182165 = icmp sgt i32 %sub917, 5
  %10 = sext i32 %sub917 to i64
  %11 = sext i32 %x_size to i64
  %12 = sext i32 %sub to i64
  br label %for.cond916.preheader

for.body14:                                       ; preds = %for.inc, %for.body14.lr.ph
  %indvars.iv2246 = phi i64 [ 5, %for.body14.lr.ph ], [ %indvars.iv.next2247, %for.inc ]
  %j.02174 = phi i32 [ 5, %for.body14.lr.ph ], [ %inc, %for.inc ]
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv2246
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 -1
  %add = add nsw i32 %j.02174, %7
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %idx.ext22 = zext i8 %13 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext22
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr19, i64 1
  %14 = load i8, i8* %add.ptr19, align 1, !tbaa !12
  %idx.ext25 = zext i8 %14 to i64
  %idx.neg = sub nsw i64 0, %idx.ext25
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg
  %15 = load i8, i8* %add.ptr26, align 1, !tbaa !12
  %conv27 = zext i8 %15 to i32
  %add28 = add nuw nsw i32 %conv27, 100
  %incdec.ptr29 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %16 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %idx.ext31 = zext i8 %16 to i64
  %idx.neg32 = sub nsw i64 0, %idx.ext31
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg32
  %17 = load i8, i8* %add.ptr33, align 1, !tbaa !12
  %conv34 = zext i8 %17 to i32
  %add35 = add nuw nsw i32 %add28, %conv34
  %18 = load i8, i8* %incdec.ptr29, align 1, !tbaa !12
  %idx.ext37 = zext i8 %18 to i64
  %idx.neg38 = sub nsw i64 0, %idx.ext37
  %add.ptr39 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg38
  %19 = load i8, i8* %add.ptr39, align 1, !tbaa !12
  %conv40 = zext i8 %19 to i32
  %add41 = add nuw nsw i32 %add35, %conv40
  %add.ptr44 = getelementptr inbounds i8, i8* %incdec.ptr29, i64 %idx.ext43
  %incdec.ptr45 = getelementptr inbounds i8, i8* %add.ptr44, i64 1
  %20 = load i8, i8* %add.ptr44, align 1, !tbaa !12
  %idx.ext47 = zext i8 %20 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg48
  %21 = load i8, i8* %add.ptr49, align 1, !tbaa !12
  %conv50 = zext i8 %21 to i32
  %add51 = add nuw nsw i32 %add41, %conv50
  %incdec.ptr52 = getelementptr inbounds i8, i8* %incdec.ptr45, i64 1
  %22 = load i8, i8* %incdec.ptr45, align 1, !tbaa !12
  %idx.ext54 = zext i8 %22 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg55
  %23 = load i8, i8* %add.ptr56, align 1, !tbaa !12
  %conv57 = zext i8 %23 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds i8, i8* %incdec.ptr52, i64 1
  %24 = load i8, i8* %incdec.ptr52, align 1, !tbaa !12
  %idx.ext61 = zext i8 %24 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg62
  %25 = load i8, i8* %add.ptr63, align 1, !tbaa !12
  %conv64 = zext i8 %25 to i32
  %add65 = add nuw nsw i32 %add58, %conv64
  %incdec.ptr66 = getelementptr inbounds i8, i8* %incdec.ptr59, i64 1
  %26 = load i8, i8* %incdec.ptr59, align 1, !tbaa !12
  %idx.ext68 = zext i8 %26 to i64
  %idx.neg69 = sub nsw i64 0, %idx.ext68
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg69
  %27 = load i8, i8* %add.ptr70, align 1, !tbaa !12
  %conv71 = zext i8 %27 to i32
  %add72 = add nsw i32 %add65, %conv71
  %28 = load i8, i8* %incdec.ptr66, align 1, !tbaa !12
  %idx.ext74 = zext i8 %28 to i64
  %idx.neg75 = sub nsw i64 0, %idx.ext74
  %add.ptr76 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg75
  %29 = load i8, i8* %add.ptr76, align 1, !tbaa !12
  %conv77 = zext i8 %29 to i32
  %add78 = add nsw i32 %add72, %conv77
  %add.ptr81 = getelementptr inbounds i8, i8* %incdec.ptr66, i64 %idx.ext80
  %incdec.ptr82 = getelementptr inbounds i8, i8* %add.ptr81, i64 1
  %30 = load i8, i8* %add.ptr81, align 1, !tbaa !12
  %idx.ext84 = zext i8 %30 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg85
  %31 = load i8, i8* %add.ptr86, align 1, !tbaa !12
  %conv87 = zext i8 %31 to i32
  %add88 = add nsw i32 %add78, %conv87
  %incdec.ptr89 = getelementptr inbounds i8, i8* %incdec.ptr82, i64 1
  %32 = load i8, i8* %incdec.ptr82, align 1, !tbaa !12
  %idx.ext91 = zext i8 %32 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg92
  %33 = load i8, i8* %add.ptr93, align 1, !tbaa !12
  %conv94 = zext i8 %33 to i32
  %add95 = add nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds i8, i8* %incdec.ptr89, i64 1
  %34 = load i8, i8* %incdec.ptr89, align 1, !tbaa !12
  %idx.ext98 = zext i8 %34 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg99
  %35 = load i8, i8* %add.ptr100, align 1, !tbaa !12
  %conv101 = zext i8 %35 to i32
  %add102 = add nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds i8, i8* %incdec.ptr96, i64 1
  %36 = load i8, i8* %incdec.ptr96, align 1, !tbaa !12
  %idx.ext105 = zext i8 %36 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg106
  %37 = load i8, i8* %add.ptr107, align 1, !tbaa !12
  %conv108 = zext i8 %37 to i32
  %add109 = add nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds i8, i8* %incdec.ptr103, i64 1
  %38 = load i8, i8* %incdec.ptr103, align 1, !tbaa !12
  %idx.ext112 = zext i8 %38 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg113
  %39 = load i8, i8* %add.ptr114, align 1, !tbaa !12
  %conv115 = zext i8 %39 to i32
  %add116 = add nsw i32 %add109, %conv115
  %incdec.ptr117 = getelementptr inbounds i8, i8* %incdec.ptr110, i64 1
  %40 = load i8, i8* %incdec.ptr110, align 1, !tbaa !12
  %idx.ext119 = zext i8 %40 to i64
  %idx.neg120 = sub nsw i64 0, %idx.ext119
  %add.ptr121 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg120
  %41 = load i8, i8* %add.ptr121, align 1, !tbaa !12
  %conv122 = zext i8 %41 to i32
  %add123 = add nsw i32 %add116, %conv122
  %42 = load i8, i8* %incdec.ptr117, align 1, !tbaa !12
  %idx.ext125 = zext i8 %42 to i64
  %idx.neg126 = sub nsw i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg126
  %43 = load i8, i8* %add.ptr127, align 1, !tbaa !12
  %conv128 = zext i8 %43 to i32
  %add129 = add nsw i32 %add123, %conv128
  %add.ptr132 = getelementptr inbounds i8, i8* %incdec.ptr117, i64 %idx.ext131
  %incdec.ptr133 = getelementptr inbounds i8, i8* %add.ptr132, i64 1
  %44 = load i8, i8* %add.ptr132, align 1, !tbaa !12
  %idx.ext135 = zext i8 %44 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg136
  %45 = load i8, i8* %add.ptr137, align 1, !tbaa !12
  %conv138 = zext i8 %45 to i32
  %add139 = add nsw i32 %add129, %conv138
  %incdec.ptr140 = getelementptr inbounds i8, i8* %incdec.ptr133, i64 1
  %46 = load i8, i8* %incdec.ptr133, align 1, !tbaa !12
  %idx.ext142 = zext i8 %46 to i64
  %idx.neg143 = sub nsw i64 0, %idx.ext142
  %add.ptr144 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg143
  %47 = load i8, i8* %add.ptr144, align 1, !tbaa !12
  %conv145 = zext i8 %47 to i32
  %add146 = add nsw i32 %add139, %conv145
  %48 = load i8, i8* %incdec.ptr140, align 1, !tbaa !12
  %idx.ext148 = zext i8 %48 to i64
  %idx.neg149 = sub nsw i64 0, %idx.ext148
  %add.ptr150 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg149
  %49 = load i8, i8* %add.ptr150, align 1, !tbaa !12
  %conv151 = zext i8 %49 to i32
  %add152 = add nsw i32 %add146, %conv151
  %cmp153 = icmp slt i32 %add152, %max_no
  br i1 %cmp153, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body14
  %add.ptr155 = getelementptr inbounds i8, i8* %incdec.ptr140, i64 2
  %incdec.ptr156 = getelementptr inbounds i8, i8* %add.ptr155, i64 1
  %50 = load i8, i8* %add.ptr155, align 1, !tbaa !12
  %idx.ext158 = zext i8 %50 to i64
  %idx.neg159 = sub nsw i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg159
  %51 = load i8, i8* %add.ptr160, align 1, !tbaa !12
  %conv161 = zext i8 %51 to i32
  %add162 = add nsw i32 %conv161, %add152
  %cmp163 = icmp slt i32 %add162, %max_no
  br i1 %cmp163, label %if.then165, label %for.inc

if.then165:                                       ; preds = %if.then
  %incdec.ptr166 = getelementptr inbounds i8, i8* %incdec.ptr156, i64 1
  %52 = load i8, i8* %incdec.ptr156, align 1, !tbaa !12
  %idx.ext168 = zext i8 %52 to i64
  %idx.neg169 = sub nsw i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg169
  %53 = load i8, i8* %add.ptr170, align 1, !tbaa !12
  %conv171 = zext i8 %53 to i32
  %add172 = add nsw i32 %conv171, %add162
  %cmp173 = icmp slt i32 %add172, %max_no
  br i1 %cmp173, label %if.then175, label %for.inc

if.then175:                                       ; preds = %if.then165
  %54 = load i8, i8* %incdec.ptr166, align 1, !tbaa !12
  %idx.ext177 = zext i8 %54 to i64
  %idx.neg178 = sub nsw i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg178
  %55 = load i8, i8* %add.ptr179, align 1, !tbaa !12
  %conv180 = zext i8 %55 to i32
  %add181 = add nsw i32 %conv180, %add172
  %cmp182 = icmp slt i32 %add181, %max_no
  br i1 %cmp182, label %if.then184, label %for.inc

if.then184:                                       ; preds = %if.then175
  %add.ptr187 = getelementptr inbounds i8, i8* %incdec.ptr166, i64 %idx.ext131
  %incdec.ptr188 = getelementptr inbounds i8, i8* %add.ptr187, i64 1
  %56 = load i8, i8* %add.ptr187, align 1, !tbaa !12
  %idx.ext190 = zext i8 %56 to i64
  %idx.neg191 = sub nsw i64 0, %idx.ext190
  %add.ptr192 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg191
  %57 = load i8, i8* %add.ptr192, align 1, !tbaa !12
  %conv193 = zext i8 %57 to i32
  %add194 = add nsw i32 %conv193, %add181
  %cmp195 = icmp slt i32 %add194, %max_no
  br i1 %cmp195, label %if.then197, label %for.inc

if.then197:                                       ; preds = %if.then184
  %incdec.ptr198 = getelementptr inbounds i8, i8* %incdec.ptr188, i64 1
  %58 = load i8, i8* %incdec.ptr188, align 1, !tbaa !12
  %idx.ext200 = zext i8 %58 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg201
  %59 = load i8, i8* %add.ptr202, align 1, !tbaa !12
  %conv203 = zext i8 %59 to i32
  %add204 = add nsw i32 %conv203, %add194
  %cmp205 = icmp slt i32 %add204, %max_no
  br i1 %cmp205, label %if.then207, label %for.inc

if.then207:                                       ; preds = %if.then197
  %incdec.ptr208 = getelementptr inbounds i8, i8* %incdec.ptr198, i64 1
  %60 = load i8, i8* %incdec.ptr198, align 1, !tbaa !12
  %idx.ext210 = zext i8 %60 to i64
  %idx.neg211 = sub nsw i64 0, %idx.ext210
  %add.ptr212 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg211
  %61 = load i8, i8* %add.ptr212, align 1, !tbaa !12
  %conv213 = zext i8 %61 to i32
  %add214 = add nsw i32 %conv213, %add204
  %cmp215 = icmp slt i32 %add214, %max_no
  br i1 %cmp215, label %if.then217, label %for.inc

if.then217:                                       ; preds = %if.then207
  %incdec.ptr218 = getelementptr inbounds i8, i8* %incdec.ptr208, i64 1
  %62 = load i8, i8* %incdec.ptr208, align 1, !tbaa !12
  %idx.ext220 = zext i8 %62 to i64
  %idx.neg221 = sub nsw i64 0, %idx.ext220
  %add.ptr222 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg221
  %63 = load i8, i8* %add.ptr222, align 1, !tbaa !12
  %conv223 = zext i8 %63 to i32
  %add224 = add nsw i32 %conv223, %add214
  %cmp225 = icmp slt i32 %add224, %max_no
  br i1 %cmp225, label %if.then227, label %for.inc

if.then227:                                       ; preds = %if.then217
  %incdec.ptr228 = getelementptr inbounds i8, i8* %incdec.ptr218, i64 1
  %64 = load i8, i8* %incdec.ptr218, align 1, !tbaa !12
  %idx.ext230 = zext i8 %64 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg231
  %65 = load i8, i8* %add.ptr232, align 1, !tbaa !12
  %conv233 = zext i8 %65 to i32
  %add234 = add nsw i32 %conv233, %add224
  %cmp235 = icmp slt i32 %add234, %max_no
  br i1 %cmp235, label %if.then237, label %for.inc

if.then237:                                       ; preds = %if.then227
  %incdec.ptr238 = getelementptr inbounds i8, i8* %incdec.ptr228, i64 1
  %66 = load i8, i8* %incdec.ptr228, align 1, !tbaa !12
  %idx.ext240 = zext i8 %66 to i64
  %idx.neg241 = sub nsw i64 0, %idx.ext240
  %add.ptr242 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg241
  %67 = load i8, i8* %add.ptr242, align 1, !tbaa !12
  %conv243 = zext i8 %67 to i32
  %add244 = add nsw i32 %conv243, %add234
  %cmp245 = icmp slt i32 %add244, %max_no
  br i1 %cmp245, label %if.then247, label %for.inc

if.then247:                                       ; preds = %if.then237
  %68 = load i8, i8* %incdec.ptr238, align 1, !tbaa !12
  %idx.ext249 = zext i8 %68 to i64
  %idx.neg250 = sub nsw i64 0, %idx.ext249
  %add.ptr251 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg250
  %69 = load i8, i8* %add.ptr251, align 1, !tbaa !12
  %conv252 = zext i8 %69 to i32
  %add253 = add nsw i32 %conv252, %add244
  %cmp254 = icmp slt i32 %add253, %max_no
  br i1 %cmp254, label %if.then256, label %for.inc

if.then256:                                       ; preds = %if.then247
  %add.ptr259 = getelementptr inbounds i8, i8* %incdec.ptr238, i64 %idx.ext80
  %incdec.ptr260 = getelementptr inbounds i8, i8* %add.ptr259, i64 1
  %70 = load i8, i8* %add.ptr259, align 1, !tbaa !12
  %idx.ext262 = zext i8 %70 to i64
  %idx.neg263 = sub nsw i64 0, %idx.ext262
  %add.ptr264 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg263
  %71 = load i8, i8* %add.ptr264, align 1, !tbaa !12
  %conv265 = zext i8 %71 to i32
  %add266 = add nsw i32 %conv265, %add253
  %cmp267 = icmp slt i32 %add266, %max_no
  br i1 %cmp267, label %if.then269, label %for.inc

if.then269:                                       ; preds = %if.then256
  %incdec.ptr270 = getelementptr inbounds i8, i8* %incdec.ptr260, i64 1
  %72 = load i8, i8* %incdec.ptr260, align 1, !tbaa !12
  %idx.ext272 = zext i8 %72 to i64
  %idx.neg273 = sub nsw i64 0, %idx.ext272
  %add.ptr274 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg273
  %73 = load i8, i8* %add.ptr274, align 1, !tbaa !12
  %conv275 = zext i8 %73 to i32
  %add276 = add nsw i32 %conv275, %add266
  %cmp277 = icmp slt i32 %add276, %max_no
  br i1 %cmp277, label %if.then279, label %for.inc

if.then279:                                       ; preds = %if.then269
  %incdec.ptr280 = getelementptr inbounds i8, i8* %incdec.ptr270, i64 1
  %74 = load i8, i8* %incdec.ptr270, align 1, !tbaa !12
  %idx.ext282 = zext i8 %74 to i64
  %idx.neg283 = sub nsw i64 0, %idx.ext282
  %add.ptr284 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg283
  %75 = load i8, i8* %add.ptr284, align 1, !tbaa !12
  %conv285 = zext i8 %75 to i32
  %add286 = add nsw i32 %conv285, %add276
  %cmp287 = icmp slt i32 %add286, %max_no
  br i1 %cmp287, label %if.then289, label %for.inc

if.then289:                                       ; preds = %if.then279
  %incdec.ptr290 = getelementptr inbounds i8, i8* %incdec.ptr280, i64 1
  %76 = load i8, i8* %incdec.ptr280, align 1, !tbaa !12
  %idx.ext292 = zext i8 %76 to i64
  %idx.neg293 = sub nsw i64 0, %idx.ext292
  %add.ptr294 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg293
  %77 = load i8, i8* %add.ptr294, align 1, !tbaa !12
  %conv295 = zext i8 %77 to i32
  %add296 = add nsw i32 %conv295, %add286
  %cmp297 = icmp slt i32 %add296, %max_no
  br i1 %cmp297, label %if.then299, label %for.inc

if.then299:                                       ; preds = %if.then289
  %78 = load i8, i8* %incdec.ptr290, align 1, !tbaa !12
  %idx.ext301 = zext i8 %78 to i64
  %idx.neg302 = sub nsw i64 0, %idx.ext301
  %add.ptr303 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg302
  %79 = load i8, i8* %add.ptr303, align 1, !tbaa !12
  %conv304 = zext i8 %79 to i32
  %add305 = add nsw i32 %conv304, %add296
  %cmp306 = icmp slt i32 %add305, %max_no
  br i1 %cmp306, label %if.then308, label %for.inc

if.then308:                                       ; preds = %if.then299
  %add.ptr311 = getelementptr inbounds i8, i8* %incdec.ptr290, i64 %idx.ext43
  %incdec.ptr312 = getelementptr inbounds i8, i8* %add.ptr311, i64 1
  %80 = load i8, i8* %add.ptr311, align 1, !tbaa !12
  %idx.ext314 = zext i8 %80 to i64
  %idx.neg315 = sub nsw i64 0, %idx.ext314
  %add.ptr316 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg315
  %81 = load i8, i8* %add.ptr316, align 1, !tbaa !12
  %conv317 = zext i8 %81 to i32
  %add318 = add nsw i32 %conv317, %add305
  %cmp319 = icmp slt i32 %add318, %max_no
  br i1 %cmp319, label %if.then321, label %for.inc

if.then321:                                       ; preds = %if.then308
  %82 = load i8, i8* %incdec.ptr312, align 1, !tbaa !12
  %idx.ext324 = zext i8 %82 to i64
  %idx.neg325 = sub nsw i64 0, %idx.ext324
  %add.ptr326 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg325
  %83 = load i8, i8* %add.ptr326, align 1, !tbaa !12
  %conv327 = zext i8 %83 to i32
  %add328 = add nsw i32 %conv327, %add318
  %cmp329 = icmp slt i32 %add328, %max_no
  br i1 %cmp329, label %if.then331, label %for.inc

if.then331:                                       ; preds = %if.then321
  %incdec.ptr322 = getelementptr inbounds i8, i8* %incdec.ptr312, i64 1
  %84 = load i8, i8* %incdec.ptr322, align 1, !tbaa !12
  %idx.ext333 = zext i8 %84 to i64
  %idx.neg334 = sub nsw i64 0, %idx.ext333
  %add.ptr335 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg334
  %85 = load i8, i8* %add.ptr335, align 1, !tbaa !12
  %conv336 = zext i8 %85 to i32
  %add337 = add nsw i32 %conv336, %add328
  %cmp338 = icmp slt i32 %add337, %max_no
  br i1 %cmp338, label %if.then340, label %for.inc

if.then340:                                       ; preds = %if.then331
  %86 = add nuw nsw i32 %conv34, %conv27
  %sub3652141 = add nuw nsw i32 %86, %conv40
  %mul384 = shl nuw nsw i32 %conv50, 1
  %mul397 = shl nuw nsw i32 %conv57, 1
  %mul405 = shl nuw nsw i32 %conv64, 1
  %mul415 = shl nuw nsw i32 %conv71, 1
  %mul422 = shl nuw nsw i32 %conv77, 1
  %mul446 = shl nuw nsw i32 %conv94, 1
  %mul511 = shl nuw nsw i32 %conv145, 1
  %mul561 = shl nuw nsw i32 %conv203, 1
  %mul618 = shl nuw nsw i32 %conv265, 1
  %mul656 = shl nuw nsw i32 %conv304, 1
  %tmp = sub nsw i32 %conv128, %conv87
  %tmp2147 = sub nsw i32 %tmp, %conv138
  %tmp2148 = add nsw i32 %tmp2147, %conv180
  %tmp2149 = sub nsw i32 %tmp2148, %conv193
  %tmp2150 = add nsw i32 %tmp2149, %conv252
  %tmp2151 = mul nsw i32 %tmp2150, 3
  %tmp2152 = add nuw nsw i32 %conv171, %conv122
  %tmp2153 = add nuw nsw i32 %tmp2152, %conv243
  %tmp2154 = shl nuw nsw i32 %tmp2153, 1
  %sub456 = sub nsw i32 %conv40, %conv27
  %add472 = sub nsw i32 %sub456, %mul384
  %add482 = sub nsw i32 %add472, %conv57
  %add491 = add nsw i32 %add482, %conv71
  %sub504 = add nsw i32 %add491, %mul422
  %sub512 = sub nsw i32 %sub504, %mul446
  %sub518 = sub i32 %sub512, %conv101
  %add526 = add i32 %sub518, %conv115
  %add534 = sub i32 %add526, %mul511
  %add541 = sub i32 %add534, %conv151
  %sub552 = add i32 %add541, %conv161
  %sub562 = sub i32 %sub552, %mul561
  %sub571 = sub i32 %sub562, %conv213
  %add587 = add i32 %sub571, %conv233
  %add597 = add i32 %add587, %tmp2154
  %add606 = add i32 %add597, %tmp2151
  %sub619 = sub i32 %add606, %mul618
  %sub629 = sub i32 %sub619, %conv275
  %add647 = add i32 %sub629, %conv295
  %add657 = add i32 %add647, %mul656
  %sub670 = sub i32 %add657, %conv317
  %add687 = add i32 %sub670, %conv336
  %tmp2156 = sub nsw i32 %conv317, %sub3652141
  %tmp2157 = add nsw i32 %tmp2156, %conv327
  %tmp2158 = add nsw i32 %tmp2157, %conv336
  %tmp2159 = mul nsw i32 %tmp2158, 3
  %tmp2160 = add nuw nsw i32 %conv285, %conv275
  %tmp2161 = add nuw nsw i32 %tmp2160, %conv295
  %tmp2162 = shl nuw nsw i32 %tmp2161, 1
  %sum = add nuw nsw i32 %mul397, %mul384
  %sum2179 = add nuw nsw i32 %sum, %mul405
  %sum2180 = add nuw nsw i32 %sum2179, %mul415
  %sum2181 = add nuw nsw i32 %sum2180, %mul422
  %sum2182 = add nuw nsw i32 %sum2181, %conv87
  %sum2183 = add i32 %sum2182, %conv94
  %sum2184 = add i32 %sum2183, %conv101
  %sum2185 = add i32 %sum2184, %conv108
  %sum2186 = add i32 %sum2185, %conv115
  %sum2187 = add i32 %sum2186, %conv122
  %sum2188 = add i32 %sum2187, %conv128
  %add589 = sub i32 %conv193, %sum2188
  %add599 = add i32 %add589, %conv203
  %add608 = add i32 %add599, %conv213
  %add622 = add i32 %add608, %conv223
  %add632 = add i32 %add622, %conv233
  %add640 = add i32 %add632, %conv243
  %add650 = add i32 %add640, %conv252
  %add660 = add i32 %add650, %mul618
  %add673 = add i32 %add660, %tmp2162
  %add681 = add i32 %add673, %mul656
  %add690 = add i32 %add681, %tmp2159
  %mul691 = mul nsw i32 %add687, %add687
  %mul692 = mul nsw i32 %add690, %add690
  %add693 = add nuw nsw i32 %mul692, %mul691
  %mul694 = mul nsw i32 %add337, %add337
  %div = lshr i32 %mul694, 1
  %cmp695 = icmp ugt i32 %add693, %div
  br i1 %cmp695, label %if.then697, label %for.inc

if.then697:                                       ; preds = %if.then340
  %cmp698 = icmp ult i32 %mul692, %mul691
  br i1 %cmp698, label %if.then700, label %if.else

if.then700:                                       ; preds = %if.then697
  %conv701 = sitofp i32 %add690 to float
  %ispos2142 = icmp sgt i32 %add687, -1
  %neg2143 = sub i32 0, %add687
  %87 = select i1 %ispos2142, i32 %add687, i32 %neg2143
  %conv703 = sitofp i32 %87 to float
  %div704 = fdiv float %conv701, %conv703
  %div706 = sdiv i32 %87, %add687
  %cmp707 = fcmp olt float %div704, 0.000000e+00
  %conv709 = fpext float %div704 to double
  %sub710.sink.v = select i1 %cmp707, double -5.000000e-01, double 5.000000e-01
  %sub710.sink = fadd double %conv709, %sub710.sink.v
  %conv711 = fptosi double %sub710.sink to i32
  %add715 = add nsw i32 %conv711, %8
  %mul716 = mul nsw i32 %add715, %x_size
  %88 = trunc i64 %indvars.iv2246 to i32
  %add717 = add nsw i32 %mul716, %88
  %add718 = add nsw i32 %add717, %div706
  %idxprom719 = sext i32 %add718 to i64
  %arrayidx720 = getelementptr inbounds i8, i8* %in, i64 %idxprom719
  %89 = load i8, i8* %arrayidx720, align 1, !tbaa !12
  %idx.ext722 = zext i8 %89 to i64
  %idx.neg723 = sub nsw i64 0, %idx.ext722
  %add.ptr724 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg723
  %90 = load i8, i8* %add.ptr724, align 1, !tbaa !12
  %conv725 = zext i8 %90 to i32
  %mul726 = fmul float %div704, 2.000000e+00
  %cmp727 = fcmp olt float %mul726, 0.000000e+00
  %conv731 = fpext float %mul726 to double
  %sub732.sink.v = select i1 %cmp727, double -5.000000e-01, double 5.000000e-01
  %sub732.sink = fadd double %conv731, %sub732.sink.v
  %conv733 = fptosi double %sub732.sink to i32
  %add741 = add nsw i32 %conv733, %8
  %mul742 = mul nsw i32 %add741, %x_size
  %add743 = add nsw i32 %mul742, %88
  %mul744 = shl i32 %div706, 1
  %add745 = add nsw i32 %add743, %mul744
  %idxprom746 = sext i32 %add745 to i64
  %arrayidx747 = getelementptr inbounds i8, i8* %in, i64 %idxprom746
  %91 = load i8, i8* %arrayidx747, align 1, !tbaa !12
  %idx.ext749 = zext i8 %91 to i64
  %idx.neg750 = sub nsw i64 0, %idx.ext749
  %add.ptr751 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg750
  %92 = load i8, i8* %add.ptr751, align 1, !tbaa !12
  %conv752 = zext i8 %92 to i32
  %add753 = add nuw nsw i32 %conv752, %conv725
  %mul754 = fmul float %div704, 3.000000e+00
  %cmp755 = fcmp olt float %mul754, 0.000000e+00
  %conv759 = fpext float %mul754 to double
  %sub760.sink.v = select i1 %cmp755, double -5.000000e-01, double 5.000000e-01
  %sub760.sink = fadd double %conv759, %sub760.sink.v
  %conv761 = fptosi double %sub760.sink to i32
  %add769 = add nsw i32 %conv761, %8
  %mul770 = mul nsw i32 %add769, %x_size
  %add771 = add nsw i32 %mul770, %88
  %mul772 = mul nsw i32 %div706, 3
  %add773 = add nsw i32 %add771, %mul772
  %idxprom774 = sext i32 %add773 to i64
  %arrayidx775 = getelementptr inbounds i8, i8* %in, i64 %idxprom774
  %93 = load i8, i8* %arrayidx775, align 1, !tbaa !12
  %idx.ext777 = zext i8 %93 to i64
  %idx.neg778 = sub nsw i64 0, %idx.ext777
  %add.ptr779 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg778
  %94 = load i8, i8* %add.ptr779, align 1, !tbaa !12
  %conv780 = zext i8 %94 to i32
  %add781 = add nuw nsw i32 %add753, %conv780
  br label %if.end

if.else:                                          ; preds = %if.then697
  %conv782 = sitofp i32 %add687 to float
  %ispos = icmp sgt i32 %add690, -1
  %neg = sub i32 0, %add690
  %95 = select i1 %ispos, i32 %add690, i32 %neg
  %conv784 = sitofp i32 %95 to float
  %div785 = fdiv float %conv782, %conv784
  %div787 = sdiv i32 %95, %add690
  %add788 = add nsw i32 %div787, %9
  %mul789 = mul nsw i32 %add788, %x_size
  %cmp791 = fcmp olt float %div785, 0.000000e+00
  %conv794 = fpext float %div785 to double
  %sub795.sink.v = select i1 %cmp791, double -5.000000e-01, double 5.000000e-01
  %sub795.sink = fadd double %conv794, %sub795.sink.v
  %conv796 = fptosi double %sub795.sink to i32
  %96 = trunc i64 %indvars.iv2246 to i32
  %add790 = add i32 %conv796, %96
  %add803 = add i32 %add790, %mul789
  %idxprom804 = sext i32 %add803 to i64
  %arrayidx805 = getelementptr inbounds i8, i8* %in, i64 %idxprom804
  %97 = load i8, i8* %arrayidx805, align 1, !tbaa !12
  %idx.ext807 = zext i8 %97 to i64
  %idx.neg808 = sub nsw i64 0, %idx.ext807
  %add.ptr809 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg808
  %98 = load i8, i8* %add.ptr809, align 1, !tbaa !12
  %conv810 = zext i8 %98 to i32
  %mul811 = shl i32 %div787, 1
  %add812 = add nsw i32 %mul811, %9
  %mul813 = mul nsw i32 %add812, %x_size
  %mul815 = fmul float %div785, 2.000000e+00
  %cmp816 = fcmp olt float %mul815, 0.000000e+00
  %conv820 = fpext float %mul815 to double
  %sub821.sink.v = select i1 %cmp816, double -5.000000e-01, double 5.000000e-01
  %sub821.sink = fadd double %conv820, %sub821.sink.v
  %conv822 = fptosi double %sub821.sink to i32
  %add814 = add i32 %conv822, %96
  %add830 = add i32 %add814, %mul813
  %idxprom831 = sext i32 %add830 to i64
  %arrayidx832 = getelementptr inbounds i8, i8* %in, i64 %idxprom831
  %99 = load i8, i8* %arrayidx832, align 1, !tbaa !12
  %idx.ext834 = zext i8 %99 to i64
  %idx.neg835 = sub nsw i64 0, %idx.ext834
  %add.ptr836 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg835
  %100 = load i8, i8* %add.ptr836, align 1, !tbaa !12
  %conv837 = zext i8 %100 to i32
  %add838 = add nuw nsw i32 %conv837, %conv810
  %mul839 = mul nsw i32 %div787, 3
  %add840 = add nsw i32 %mul839, %9
  %mul841 = mul nsw i32 %add840, %x_size
  %mul843 = fmul float %div785, 3.000000e+00
  %cmp844 = fcmp olt float %mul843, 0.000000e+00
  %conv848 = fpext float %mul843 to double
  %sub849.sink.v = select i1 %cmp844, double -5.000000e-01, double 5.000000e-01
  %sub849.sink = fadd double %conv848, %sub849.sink.v
  %conv850 = fptosi double %sub849.sink to i32
  %add842 = add i32 %conv850, %96
  %add858 = add i32 %add842, %mul841
  %idxprom859 = sext i32 %add858 to i64
  %arrayidx860 = getelementptr inbounds i8, i8* %in, i64 %idxprom859
  %101 = load i8, i8* %arrayidx860, align 1, !tbaa !12
  %idx.ext862 = zext i8 %101 to i64
  %idx.neg863 = sub nsw i64 0, %idx.ext862
  %add.ptr864 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg863
  %102 = load i8, i8* %add.ptr864, align 1, !tbaa !12
  %conv865 = zext i8 %102 to i32
  %add866 = add nuw nsw i32 %add838, %conv865
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then700
  %sq.0 = phi i32 [ %add781, %if.then700 ], [ %add866, %if.else ]
  %cmp867 = icmp sgt i32 %sq.0, 290
  br i1 %cmp867, label %if.then869, label %for.inc

if.then869:                                       ; preds = %if.end
  %sub870 = sub nsw i32 %max_no, %add337
  %arrayidx874 = getelementptr inbounds i32, i32* %r, i64 %idxprom
  store i32 %sub870, i32* %arrayidx874, align 4, !tbaa !5
  %mul875 = mul nsw i32 %add687, 51
  %div876 = sdiv i32 %mul875, %add337
  %arrayidx880 = getelementptr inbounds i32, i32* %1, i64 %idxprom
  store i32 %div876, i32* %arrayidx880, align 4, !tbaa !5
  %mul881 = mul nsw i32 %add690, 51
  %div882 = sdiv i32 %mul881, %add337
  %arrayidx886 = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %div882, i32* %arrayidx886, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body14, %if.then165, %if.then184, %if.then207, %if.then227, %if.then247, %if.then269, %if.then289, %if.then308, %if.then331, %if.end, %if.then869, %if.then340, %if.then321, %if.then299, %if.then279, %if.then256, %if.then237, %if.then217, %if.then197, %if.then175, %if.then
  %indvars.iv.next2247 = add nuw nsw i64 %indvars.iv2246, 1
  %inc = add nuw nsw i32 %j.02174, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next2247 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub11
  br i1 %exitcond, label %for.inc908.loopexit, label %for.body14

for.inc908.loopexit:                              ; preds = %for.inc
  br label %for.inc908

for.inc908:                                       ; preds = %for.inc908.loopexit, %for.cond10.preheader
  %indvars.iv.next2249 = add nuw nsw i64 %indvars.iv2248, 1
  %lftr.wideiv2253 = trunc i64 %indvars.iv.next2249 to i32
  %exitcond2254 = icmp eq i32 %lftr.wideiv2253, %sub
  br i1 %exitcond2254, label %for.cond911.preheader, label %for.cond10.preheader

for.cond916.preheader:                            ; preds = %for.cond916.preheader.lr.ph, %for.inc1385
  %indvars.iv2231 = phi i64 [ 5, %for.cond916.preheader.lr.ph ], [ %indvars.iv.next2232.pre-phi, %for.inc1385 ]
  %n.02171 = phi i32 [ 0, %for.cond916.preheader.lr.ph ], [ %n.1.lcssa, %for.inc1385 ]
  br i1 %cmp9182165, label %for.body920.lr.ph, label %for.cond916.preheader.for.inc1385_crit_edge

for.cond916.preheader.for.inc1385_crit_edge:      ; preds = %for.cond916.preheader
  %.pre = add nuw nsw i64 %indvars.iv2231, 1
  br label %for.inc1385

for.body920.lr.ph:                                ; preds = %for.cond916.preheader
  %103 = mul nsw i64 %indvars.iv2231, %11
  %104 = add nsw i64 %indvars.iv2231, -3
  %105 = mul nsw i64 %104, %11
  %106 = add nsw i64 %indvars.iv2231, -2
  %107 = mul nsw i64 %106, %11
  %108 = add nsw i64 %indvars.iv2231, -1
  %109 = mul nsw i64 %108, %11
  %110 = add nuw nsw i64 %indvars.iv2231, 1
  %111 = mul nsw i64 %110, %11
  %112 = add nuw nsw i64 %indvars.iv2231, 2
  %113 = mul nsw i64 %112, %11
  %114 = add nuw nsw i64 %indvars.iv2231, 3
  %115 = mul nsw i64 %114, %11
  %116 = trunc i64 %103 to i32
  %117 = trunc i64 %indvars.iv2231 to i32
  br label %for.body920

for.body920:                                      ; preds = %for.body920.lr.ph, %for.inc1382
  %indvars.iv = phi i64 [ 5, %for.body920.lr.ph ], [ %indvars.iv.next, %for.inc1382 ]
  %n.12167 = phi i32 [ %n.02171, %for.body920.lr.ph ], [ %n.2, %for.inc1382 ]
  %j.12166 = phi i32 [ 5, %for.body920.lr.ph ], [ %inc1383, %for.inc1382 ]
  %add922 = add nsw i32 %j.12166, %116
  %idxprom923 = sext i32 %add922 to i64
  %arrayidx924 = getelementptr inbounds i32, i32* %r, i64 %idxprom923
  %118 = load i32, i32* %arrayidx924, align 4, !tbaa !5
  %cmp925 = icmp sgt i32 %118, 0
  br i1 %cmp925, label %if.then927, label %for.inc1382

if.then927:                                       ; preds = %for.body920
  %119 = add nsw i64 %indvars.iv, %105
  %120 = add nsw i64 %119, -3
  %arrayidx933 = getelementptr inbounds i32, i32* %r, i64 %120
  %121 = load i32, i32* %arrayidx933, align 4, !tbaa !5
  %cmp934 = icmp sgt i32 %118, %121
  br i1 %cmp934, label %land.lhs.true, label %for.inc1382

land.lhs.true:                                    ; preds = %if.then927
  %122 = add nsw i64 %119, -2
  %arrayidx941 = getelementptr inbounds i32, i32* %r, i64 %122
  %123 = load i32, i32* %arrayidx941, align 4, !tbaa !5
  %cmp942 = icmp sgt i32 %118, %123
  br i1 %cmp942, label %land.lhs.true944, label %for.inc1382

land.lhs.true944:                                 ; preds = %land.lhs.true
  %124 = add nsw i64 %119, -1
  %arrayidx950 = getelementptr inbounds i32, i32* %r, i64 %124
  %125 = load i32, i32* %arrayidx950, align 4, !tbaa !5
  %cmp951 = icmp sgt i32 %118, %125
  br i1 %cmp951, label %land.lhs.true953, label %for.inc1382

land.lhs.true953:                                 ; preds = %land.lhs.true944
  %arrayidx958 = getelementptr inbounds i32, i32* %r, i64 %119
  %126 = load i32, i32* %arrayidx958, align 4, !tbaa !5
  %cmp959 = icmp sgt i32 %118, %126
  br i1 %cmp959, label %land.lhs.true961, label %for.inc1382

land.lhs.true961:                                 ; preds = %land.lhs.true953
  %127 = add nsw i64 %119, 1
  %arrayidx967 = getelementptr inbounds i32, i32* %r, i64 %127
  %128 = load i32, i32* %arrayidx967, align 4, !tbaa !5
  %cmp968 = icmp sgt i32 %118, %128
  br i1 %cmp968, label %land.lhs.true970, label %for.inc1382

land.lhs.true970:                                 ; preds = %land.lhs.true961
  %129 = add nsw i64 %119, 2
  %arrayidx976 = getelementptr inbounds i32, i32* %r, i64 %129
  %130 = load i32, i32* %arrayidx976, align 4, !tbaa !5
  %cmp977 = icmp sgt i32 %118, %130
  br i1 %cmp977, label %land.lhs.true979, label %for.inc1382

land.lhs.true979:                                 ; preds = %land.lhs.true970
  %131 = add nsw i64 %119, 3
  %arrayidx985 = getelementptr inbounds i32, i32* %r, i64 %131
  %132 = load i32, i32* %arrayidx985, align 4, !tbaa !5
  %cmp986 = icmp sgt i32 %118, %132
  br i1 %cmp986, label %land.lhs.true988, label %for.inc1382

land.lhs.true988:                                 ; preds = %land.lhs.true979
  %133 = add nsw i64 %indvars.iv, %107
  %134 = add nsw i64 %133, -3
  %arrayidx994 = getelementptr inbounds i32, i32* %r, i64 %134
  %135 = load i32, i32* %arrayidx994, align 4, !tbaa !5
  %cmp995 = icmp sgt i32 %118, %135
  br i1 %cmp995, label %land.lhs.true997, label %for.inc1382

land.lhs.true997:                                 ; preds = %land.lhs.true988
  %136 = add nsw i64 %133, -2
  %arrayidx1003 = getelementptr inbounds i32, i32* %r, i64 %136
  %137 = load i32, i32* %arrayidx1003, align 4, !tbaa !5
  %cmp1004 = icmp sgt i32 %118, %137
  br i1 %cmp1004, label %land.lhs.true1006, label %for.inc1382

land.lhs.true1006:                                ; preds = %land.lhs.true997
  %138 = add nsw i64 %133, -1
  %arrayidx1012 = getelementptr inbounds i32, i32* %r, i64 %138
  %139 = load i32, i32* %arrayidx1012, align 4, !tbaa !5
  %cmp1013 = icmp sgt i32 %118, %139
  br i1 %cmp1013, label %land.lhs.true1015, label %for.inc1382

land.lhs.true1015:                                ; preds = %land.lhs.true1006
  %arrayidx1020 = getelementptr inbounds i32, i32* %r, i64 %133
  %140 = load i32, i32* %arrayidx1020, align 4, !tbaa !5
  %cmp1021 = icmp sgt i32 %118, %140
  br i1 %cmp1021, label %land.lhs.true1023, label %for.inc1382

land.lhs.true1023:                                ; preds = %land.lhs.true1015
  %141 = add nsw i64 %133, 1
  %arrayidx1029 = getelementptr inbounds i32, i32* %r, i64 %141
  %142 = load i32, i32* %arrayidx1029, align 4, !tbaa !5
  %cmp1030 = icmp sgt i32 %118, %142
  br i1 %cmp1030, label %land.lhs.true1032, label %for.inc1382

land.lhs.true1032:                                ; preds = %land.lhs.true1023
  %143 = add nsw i64 %133, 2
  %arrayidx1038 = getelementptr inbounds i32, i32* %r, i64 %143
  %144 = load i32, i32* %arrayidx1038, align 4, !tbaa !5
  %cmp1039 = icmp sgt i32 %118, %144
  br i1 %cmp1039, label %land.lhs.true1041, label %for.inc1382

land.lhs.true1041:                                ; preds = %land.lhs.true1032
  %145 = add nsw i64 %133, 3
  %arrayidx1047 = getelementptr inbounds i32, i32* %r, i64 %145
  %146 = load i32, i32* %arrayidx1047, align 4, !tbaa !5
  %cmp1048 = icmp sgt i32 %118, %146
  br i1 %cmp1048, label %land.lhs.true1050, label %for.inc1382

land.lhs.true1050:                                ; preds = %land.lhs.true1041
  %147 = add nsw i64 %indvars.iv, %109
  %148 = add nsw i64 %147, -3
  %arrayidx1056 = getelementptr inbounds i32, i32* %r, i64 %148
  %149 = load i32, i32* %arrayidx1056, align 4, !tbaa !5
  %cmp1057 = icmp sgt i32 %118, %149
  br i1 %cmp1057, label %land.lhs.true1059, label %for.inc1382

land.lhs.true1059:                                ; preds = %land.lhs.true1050
  %150 = add nsw i64 %147, -2
  %arrayidx1065 = getelementptr inbounds i32, i32* %r, i64 %150
  %151 = load i32, i32* %arrayidx1065, align 4, !tbaa !5
  %cmp1066 = icmp sgt i32 %118, %151
  br i1 %cmp1066, label %land.lhs.true1068, label %for.inc1382

land.lhs.true1068:                                ; preds = %land.lhs.true1059
  %152 = add nsw i64 %147, -1
  %arrayidx1074 = getelementptr inbounds i32, i32* %r, i64 %152
  %153 = load i32, i32* %arrayidx1074, align 4, !tbaa !5
  %cmp1075 = icmp sgt i32 %118, %153
  br i1 %cmp1075, label %land.lhs.true1077, label %for.inc1382

land.lhs.true1077:                                ; preds = %land.lhs.true1068
  %arrayidx1082 = getelementptr inbounds i32, i32* %r, i64 %147
  %154 = load i32, i32* %arrayidx1082, align 4, !tbaa !5
  %cmp1083 = icmp sgt i32 %118, %154
  br i1 %cmp1083, label %land.lhs.true1085, label %for.inc1382

land.lhs.true1085:                                ; preds = %land.lhs.true1077
  %155 = add nsw i64 %147, 1
  %arrayidx1091 = getelementptr inbounds i32, i32* %r, i64 %155
  %156 = load i32, i32* %arrayidx1091, align 4, !tbaa !5
  %cmp1092 = icmp sgt i32 %118, %156
  br i1 %cmp1092, label %land.lhs.true1094, label %for.inc1382

land.lhs.true1094:                                ; preds = %land.lhs.true1085
  %157 = add nsw i64 %147, 2
  %arrayidx1100 = getelementptr inbounds i32, i32* %r, i64 %157
  %158 = load i32, i32* %arrayidx1100, align 4, !tbaa !5
  %cmp1101 = icmp sgt i32 %118, %158
  br i1 %cmp1101, label %land.lhs.true1103, label %for.inc1382

land.lhs.true1103:                                ; preds = %land.lhs.true1094
  %159 = add nsw i64 %147, 3
  %arrayidx1109 = getelementptr inbounds i32, i32* %r, i64 %159
  %160 = load i32, i32* %arrayidx1109, align 4, !tbaa !5
  %cmp1110 = icmp sgt i32 %118, %160
  br i1 %cmp1110, label %land.lhs.true1112, label %for.inc1382

land.lhs.true1112:                                ; preds = %land.lhs.true1103
  %sub1115 = add nsw i32 %add922, -3
  %idxprom1116 = sext i32 %sub1115 to i64
  %arrayidx1117 = getelementptr inbounds i32, i32* %r, i64 %idxprom1116
  %161 = load i32, i32* %arrayidx1117, align 4, !tbaa !5
  %cmp1118 = icmp sgt i32 %118, %161
  br i1 %cmp1118, label %land.lhs.true1120, label %for.inc1382

land.lhs.true1120:                                ; preds = %land.lhs.true1112
  %sub1123 = add nsw i32 %add922, -2
  %idxprom1124 = sext i32 %sub1123 to i64
  %arrayidx1125 = getelementptr inbounds i32, i32* %r, i64 %idxprom1124
  %162 = load i32, i32* %arrayidx1125, align 4, !tbaa !5
  %cmp1126 = icmp sgt i32 %118, %162
  br i1 %cmp1126, label %land.lhs.true1128, label %for.inc1382

land.lhs.true1128:                                ; preds = %land.lhs.true1120
  %sub1131 = add nsw i32 %add922, -1
  %idxprom1132 = sext i32 %sub1131 to i64
  %arrayidx1133 = getelementptr inbounds i32, i32* %r, i64 %idxprom1132
  %163 = load i32, i32* %arrayidx1133, align 4, !tbaa !5
  %cmp1134 = icmp sgt i32 %118, %163
  br i1 %cmp1134, label %land.lhs.true1136, label %for.inc1382

land.lhs.true1136:                                ; preds = %land.lhs.true1128
  %add1139 = add nsw i32 %add922, 1
  %idxprom1140 = sext i32 %add1139 to i64
  %arrayidx1141 = getelementptr inbounds i32, i32* %r, i64 %idxprom1140
  %164 = load i32, i32* %arrayidx1141, align 4, !tbaa !5
  %cmp1142 = icmp slt i32 %118, %164
  br i1 %cmp1142, label %for.inc1382, label %land.lhs.true1144

land.lhs.true1144:                                ; preds = %land.lhs.true1136
  %add1147 = add nsw i32 %add922, 2
  %idxprom1148 = sext i32 %add1147 to i64
  %arrayidx1149 = getelementptr inbounds i32, i32* %r, i64 %idxprom1148
  %165 = load i32, i32* %arrayidx1149, align 4, !tbaa !5
  %cmp1150 = icmp slt i32 %118, %165
  br i1 %cmp1150, label %for.inc1382, label %land.lhs.true1152

land.lhs.true1152:                                ; preds = %land.lhs.true1144
  %add1155 = add nsw i32 %add922, 3
  %idxprom1156 = sext i32 %add1155 to i64
  %arrayidx1157 = getelementptr inbounds i32, i32* %r, i64 %idxprom1156
  %166 = load i32, i32* %arrayidx1157, align 4, !tbaa !5
  %cmp1158 = icmp slt i32 %118, %166
  br i1 %cmp1158, label %for.inc1382, label %land.lhs.true1160

land.lhs.true1160:                                ; preds = %land.lhs.true1152
  %167 = add nsw i64 %indvars.iv, %111
  %168 = add nsw i64 %167, -3
  %arrayidx1166 = getelementptr inbounds i32, i32* %r, i64 %168
  %169 = load i32, i32* %arrayidx1166, align 4, !tbaa !5
  %cmp1167 = icmp slt i32 %118, %169
  br i1 %cmp1167, label %for.inc1382, label %land.lhs.true1169

land.lhs.true1169:                                ; preds = %land.lhs.true1160
  %170 = add nsw i64 %167, -2
  %arrayidx1175 = getelementptr inbounds i32, i32* %r, i64 %170
  %171 = load i32, i32* %arrayidx1175, align 4, !tbaa !5
  %cmp1176 = icmp slt i32 %118, %171
  br i1 %cmp1176, label %for.inc1382, label %land.lhs.true1178

land.lhs.true1178:                                ; preds = %land.lhs.true1169
  %172 = add nsw i64 %167, -1
  %arrayidx1184 = getelementptr inbounds i32, i32* %r, i64 %172
  %173 = load i32, i32* %arrayidx1184, align 4, !tbaa !5
  %cmp1185 = icmp slt i32 %118, %173
  br i1 %cmp1185, label %for.inc1382, label %land.lhs.true1187

land.lhs.true1187:                                ; preds = %land.lhs.true1178
  %arrayidx1192 = getelementptr inbounds i32, i32* %r, i64 %167
  %174 = load i32, i32* %arrayidx1192, align 4, !tbaa !5
  %cmp1193 = icmp slt i32 %118, %174
  br i1 %cmp1193, label %for.inc1382, label %land.lhs.true1195

land.lhs.true1195:                                ; preds = %land.lhs.true1187
  %175 = add nsw i64 %167, 1
  %arrayidx1201 = getelementptr inbounds i32, i32* %r, i64 %175
  %176 = load i32, i32* %arrayidx1201, align 4, !tbaa !5
  %cmp1202 = icmp slt i32 %118, %176
  br i1 %cmp1202, label %for.inc1382, label %land.lhs.true1204

land.lhs.true1204:                                ; preds = %land.lhs.true1195
  %177 = add nsw i64 %167, 2
  %arrayidx1210 = getelementptr inbounds i32, i32* %r, i64 %177
  %178 = load i32, i32* %arrayidx1210, align 4, !tbaa !5
  %cmp1211 = icmp slt i32 %118, %178
  br i1 %cmp1211, label %for.inc1382, label %land.lhs.true1213

land.lhs.true1213:                                ; preds = %land.lhs.true1204
  %179 = add nsw i64 %167, 3
  %arrayidx1219 = getelementptr inbounds i32, i32* %r, i64 %179
  %180 = load i32, i32* %arrayidx1219, align 4, !tbaa !5
  %cmp1220 = icmp slt i32 %118, %180
  br i1 %cmp1220, label %for.inc1382, label %land.lhs.true1222

land.lhs.true1222:                                ; preds = %land.lhs.true1213
  %181 = add nsw i64 %indvars.iv, %113
  %182 = add nsw i64 %181, -3
  %arrayidx1228 = getelementptr inbounds i32, i32* %r, i64 %182
  %183 = load i32, i32* %arrayidx1228, align 4, !tbaa !5
  %cmp1229 = icmp slt i32 %118, %183
  br i1 %cmp1229, label %for.inc1382, label %land.lhs.true1231

land.lhs.true1231:                                ; preds = %land.lhs.true1222
  %184 = add nsw i64 %181, -2
  %arrayidx1237 = getelementptr inbounds i32, i32* %r, i64 %184
  %185 = load i32, i32* %arrayidx1237, align 4, !tbaa !5
  %cmp1238 = icmp slt i32 %118, %185
  br i1 %cmp1238, label %for.inc1382, label %land.lhs.true1240

land.lhs.true1240:                                ; preds = %land.lhs.true1231
  %186 = add nsw i64 %181, -1
  %arrayidx1246 = getelementptr inbounds i32, i32* %r, i64 %186
  %187 = load i32, i32* %arrayidx1246, align 4, !tbaa !5
  %cmp1247 = icmp slt i32 %118, %187
  br i1 %cmp1247, label %for.inc1382, label %land.lhs.true1249

land.lhs.true1249:                                ; preds = %land.lhs.true1240
  %arrayidx1254 = getelementptr inbounds i32, i32* %r, i64 %181
  %188 = load i32, i32* %arrayidx1254, align 4, !tbaa !5
  %cmp1255 = icmp slt i32 %118, %188
  br i1 %cmp1255, label %for.inc1382, label %land.lhs.true1257

land.lhs.true1257:                                ; preds = %land.lhs.true1249
  %189 = add nsw i64 %181, 1
  %arrayidx1263 = getelementptr inbounds i32, i32* %r, i64 %189
  %190 = load i32, i32* %arrayidx1263, align 4, !tbaa !5
  %cmp1264 = icmp slt i32 %118, %190
  br i1 %cmp1264, label %for.inc1382, label %land.lhs.true1266

land.lhs.true1266:                                ; preds = %land.lhs.true1257
  %191 = add nsw i64 %181, 2
  %arrayidx1272 = getelementptr inbounds i32, i32* %r, i64 %191
  %192 = load i32, i32* %arrayidx1272, align 4, !tbaa !5
  %cmp1273 = icmp slt i32 %118, %192
  br i1 %cmp1273, label %for.inc1382, label %land.lhs.true1275

land.lhs.true1275:                                ; preds = %land.lhs.true1266
  %193 = add nsw i64 %181, 3
  %arrayidx1281 = getelementptr inbounds i32, i32* %r, i64 %193
  %194 = load i32, i32* %arrayidx1281, align 4, !tbaa !5
  %cmp1282 = icmp slt i32 %118, %194
  br i1 %cmp1282, label %for.inc1382, label %land.lhs.true1284

land.lhs.true1284:                                ; preds = %land.lhs.true1275
  %195 = add nsw i64 %indvars.iv, %115
  %196 = add nsw i64 %195, -3
  %arrayidx1290 = getelementptr inbounds i32, i32* %r, i64 %196
  %197 = load i32, i32* %arrayidx1290, align 4, !tbaa !5
  %cmp1291 = icmp slt i32 %118, %197
  br i1 %cmp1291, label %for.inc1382, label %land.lhs.true1293

land.lhs.true1293:                                ; preds = %land.lhs.true1284
  %198 = add nsw i64 %195, -2
  %arrayidx1299 = getelementptr inbounds i32, i32* %r, i64 %198
  %199 = load i32, i32* %arrayidx1299, align 4, !tbaa !5
  %cmp1300 = icmp slt i32 %118, %199
  br i1 %cmp1300, label %for.inc1382, label %land.lhs.true1302

land.lhs.true1302:                                ; preds = %land.lhs.true1293
  %200 = add nsw i64 %195, -1
  %arrayidx1308 = getelementptr inbounds i32, i32* %r, i64 %200
  %201 = load i32, i32* %arrayidx1308, align 4, !tbaa !5
  %cmp1309 = icmp slt i32 %118, %201
  br i1 %cmp1309, label %for.inc1382, label %land.lhs.true1311

land.lhs.true1311:                                ; preds = %land.lhs.true1302
  %arrayidx1316 = getelementptr inbounds i32, i32* %r, i64 %195
  %202 = load i32, i32* %arrayidx1316, align 4, !tbaa !5
  %cmp1317 = icmp slt i32 %118, %202
  br i1 %cmp1317, label %for.inc1382, label %land.lhs.true1319

land.lhs.true1319:                                ; preds = %land.lhs.true1311
  %203 = add nsw i64 %195, 1
  %arrayidx1325 = getelementptr inbounds i32, i32* %r, i64 %203
  %204 = load i32, i32* %arrayidx1325, align 4, !tbaa !5
  %cmp1326 = icmp slt i32 %118, %204
  br i1 %cmp1326, label %for.inc1382, label %land.lhs.true1328

land.lhs.true1328:                                ; preds = %land.lhs.true1319
  %205 = add nsw i64 %195, 2
  %arrayidx1334 = getelementptr inbounds i32, i32* %r, i64 %205
  %206 = load i32, i32* %arrayidx1334, align 4, !tbaa !5
  %cmp1335 = icmp slt i32 %118, %206
  br i1 %cmp1335, label %for.inc1382, label %land.lhs.true1337

land.lhs.true1337:                                ; preds = %land.lhs.true1328
  %207 = add nsw i64 %195, 3
  %arrayidx1343 = getelementptr inbounds i32, i32* %r, i64 %207
  %208 = load i32, i32* %arrayidx1343, align 4, !tbaa !5
  %cmp1344 = icmp slt i32 %118, %208
  br i1 %cmp1344, label %for.inc1382, label %if.then1346

if.then1346:                                      ; preds = %land.lhs.true1337
  %idxprom1347 = sext i32 %n.12167 to i64
  %info = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1347, i32 2
  store i32 0, i32* %info, align 4, !tbaa !13
  %x1351 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1347, i32 0
  %209 = trunc i64 %indvars.iv to i32
  store i32 %209, i32* %x1351, align 4, !tbaa !16
  %y1354 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1347, i32 1
  store i32 %117, i32* %y1354, align 4, !tbaa !15
  %arrayidx1358 = getelementptr inbounds i32, i32* %1, i64 %idxprom923
  %210 = load i32, i32* %arrayidx1358, align 4, !tbaa !5
  %dx = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1347, i32 3
  store i32 %210, i32* %dx, align 4, !tbaa !17
  %arrayidx1364 = getelementptr inbounds i32, i32* %2, i64 %idxprom923
  %211 = load i32, i32* %arrayidx1364, align 4, !tbaa !5
  %dy = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1347, i32 4
  store i32 %211, i32* %dy, align 4, !tbaa !18
  %arrayidx1370 = getelementptr inbounds i8, i8* %in, i64 %idxprom923
  %212 = load i8, i8* %arrayidx1370, align 1, !tbaa !12
  %conv1371 = zext i8 %212 to i32
  %I = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1347, i32 5
  store i32 %conv1371, i32* %I, align 4, !tbaa !19
  %inc1374 = add nsw i32 %n.12167, 1
  %cmp1375 = icmp eq i32 %inc1374, 15000
  br i1 %cmp1375, label %if.then1377, label %for.inc1382

if.then1377:                                      ; preds = %if.then1346
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %214 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %213) #9
  tail call void @exit(i32 1) #8
  unreachable

for.inc1382:                                      ; preds = %land.lhs.true1337, %land.lhs.true1328, %land.lhs.true1319, %land.lhs.true1311, %land.lhs.true1302, %land.lhs.true1293, %land.lhs.true1284, %land.lhs.true1275, %land.lhs.true1266, %land.lhs.true1257, %land.lhs.true1249, %land.lhs.true1240, %land.lhs.true1231, %land.lhs.true1222, %land.lhs.true1213, %land.lhs.true1204, %land.lhs.true1195, %land.lhs.true1187, %land.lhs.true1178, %land.lhs.true1169, %land.lhs.true1160, %land.lhs.true1152, %land.lhs.true1144, %land.lhs.true1136, %for.body920, %if.then1346, %land.lhs.true1128, %land.lhs.true1120, %land.lhs.true1112, %land.lhs.true1103, %land.lhs.true1094, %land.lhs.true1085, %land.lhs.true1077, %land.lhs.true1068, %land.lhs.true1059, %land.lhs.true1050, %land.lhs.true1041, %land.lhs.true1032, %land.lhs.true1023, %land.lhs.true1015, %land.lhs.true1006, %land.lhs.true997, %land.lhs.true988, %land.lhs.true979, %land.lhs.true970, %land.lhs.true961, %land.lhs.true953, %land.lhs.true944, %land.lhs.true, %if.then927
  %n.2 = phi i32 [ %inc1374, %if.then1346 ], [ %n.12167, %land.lhs.true1337 ], [ %n.12167, %land.lhs.true1328 ], [ %n.12167, %land.lhs.true1319 ], [ %n.12167, %land.lhs.true1311 ], [ %n.12167, %land.lhs.true1302 ], [ %n.12167, %land.lhs.true1293 ], [ %n.12167, %land.lhs.true1284 ], [ %n.12167, %land.lhs.true1275 ], [ %n.12167, %land.lhs.true1266 ], [ %n.12167, %land.lhs.true1257 ], [ %n.12167, %land.lhs.true1249 ], [ %n.12167, %land.lhs.true1240 ], [ %n.12167, %land.lhs.true1231 ], [ %n.12167, %land.lhs.true1222 ], [ %n.12167, %land.lhs.true1213 ], [ %n.12167, %land.lhs.true1204 ], [ %n.12167, %land.lhs.true1195 ], [ %n.12167, %land.lhs.true1187 ], [ %n.12167, %land.lhs.true1178 ], [ %n.12167, %land.lhs.true1169 ], [ %n.12167, %land.lhs.true1160 ], [ %n.12167, %land.lhs.true1152 ], [ %n.12167, %land.lhs.true1144 ], [ %n.12167, %land.lhs.true1136 ], [ %n.12167, %land.lhs.true1128 ], [ %n.12167, %land.lhs.true1120 ], [ %n.12167, %land.lhs.true1112 ], [ %n.12167, %land.lhs.true1103 ], [ %n.12167, %land.lhs.true1094 ], [ %n.12167, %land.lhs.true1085 ], [ %n.12167, %land.lhs.true1077 ], [ %n.12167, %land.lhs.true1068 ], [ %n.12167, %land.lhs.true1059 ], [ %n.12167, %land.lhs.true1050 ], [ %n.12167, %land.lhs.true1041 ], [ %n.12167, %land.lhs.true1032 ], [ %n.12167, %land.lhs.true1023 ], [ %n.12167, %land.lhs.true1015 ], [ %n.12167, %land.lhs.true1006 ], [ %n.12167, %land.lhs.true997 ], [ %n.12167, %land.lhs.true988 ], [ %n.12167, %land.lhs.true979 ], [ %n.12167, %land.lhs.true970 ], [ %n.12167, %land.lhs.true961 ], [ %n.12167, %land.lhs.true953 ], [ %n.12167, %land.lhs.true944 ], [ %n.12167, %land.lhs.true ], [ %n.12167, %if.then927 ], [ %n.12167, %for.body920 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc1383 = add nuw nsw i32 %j.12166, 1
  %cmp918 = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp918, label %for.body920, label %for.inc1385.loopexit

for.inc1385.loopexit:                             ; preds = %for.inc1382
  %n.2.lcssa = phi i32 [ %n.2, %for.inc1382 ]
  br label %for.inc1385

for.inc1385:                                      ; preds = %for.inc1385.loopexit, %for.cond916.preheader.for.inc1385_crit_edge
  %indvars.iv.next2232.pre-phi = phi i64 [ %.pre, %for.cond916.preheader.for.inc1385_crit_edge ], [ %110, %for.inc1385.loopexit ]
  %n.1.lcssa = phi i32 [ %n.02171, %for.cond916.preheader.for.inc1385_crit_edge ], [ %n.2.lcssa, %for.inc1385.loopexit ]
  %cmp913 = icmp slt i64 %indvars.iv.next2232.pre-phi, %12
  br i1 %cmp913, label %for.cond916.preheader, label %for.end1387.loopexit

for.end1387.loopexit:                             ; preds = %for.inc1385
  %n.1.lcssa.lcssa = phi i32 [ %n.1.lcssa, %for.inc1385 ]
  br label %for.end1387

for.end1387:                                      ; preds = %for.end1387.loopexit, %entry, %for.cond911.preheader
  %n.0.lcssa = phi i32 [ 0, %for.cond911.preheader ], [ 0, %entry ], [ %n.1.lcssa.lcssa, %for.end1387.loopexit ]
  %idxprom1388 = sext i32 %n.0.lcssa to i64
  %info1390 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1388, i32 2
  store i32 7, i32* %info1390, align 4, !tbaa !13
  tail call void @free(i8* %call) #7
  tail call void @free(i8* %call8) #7
  ret i32 undef
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @susan_corners_quick(i8* readonly %in, i32* %r, i8* readonly %bp, i32 %max_no, %struct.anon* nocapture %corner_list, i32 %x_size, i32 %y_size) #3 {
entry:
  %0 = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %mul1, i32 4, i1 false)
  %sub = add i32 %y_size, -7
  %cmp2053 = icmp sgt i32 %sub, 7
  br i1 %cmp2053, label %for.cond3.preheader.lr.ph, label %for.end1325

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add i32 %x_size, -7
  %cmp52051 = icmp sgt i32 %sub4, 7
  %sub35 = add nsw i32 %x_size, -3
  %idx.ext36 = sext i32 %sub35 to i64
  %sub72 = add nsw i32 %x_size, -5
  %idx.ext73 = sext i32 %sub72 to i64
  %sub123 = add nsw i32 %x_size, -6
  %idx.ext124 = sext i32 %sub123 to i64
  %1 = sext i32 %x_size to i64
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc357, %for.cond3.preheader.lr.ph
  %indvars.iv2116 = phi i64 [ 7, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next2117, %for.inc357 ]
  br i1 %cmp52051, label %for.body7.lr.ph, label %for.inc357

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %2 = add nsw i64 %indvars.iv2116, -3
  %3 = mul nsw i64 %2, %1
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %3
  %4 = mul nsw i64 %indvars.iv2116, %1
  %5 = trunc i64 %4 to i32
  br label %for.body7

for.cond360.preheader:                            ; preds = %for.inc357
  br i1 %cmp2053, label %for.cond365.preheader.lr.ph, label %for.end1325

for.cond365.preheader.lr.ph:                      ; preds = %for.cond360.preheader
  %sub366 = add nsw i32 %x_size, -7
  %cmp3672043 = icmp sgt i32 %sub366, 7
  %6 = sext i32 %sub366 to i64
  %7 = sext i32 %x_size to i64
  %8 = sext i32 %sub to i64
  br label %for.cond365.preheader

for.body7:                                        ; preds = %for.inc, %for.body7.lr.ph
  %indvars.iv2114 = phi i64 [ 7, %for.body7.lr.ph ], [ %indvars.iv.next2115, %for.inc ]
  %j.02052 = phi i32 [ 7, %for.body7.lr.ph ], [ %inc, %for.inc ]
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv2114
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %add = add nsw i32 %j.02052, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !12
  %idx.ext15 = zext i8 %9 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %bp, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %10 = load i8, i8* %add.ptr12, align 1, !tbaa !12
  %idx.ext18 = zext i8 %10 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %11 = load i8, i8* %add.ptr19, align 1, !tbaa !12
  %conv20 = zext i8 %11 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %12 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %idx.ext24 = zext i8 %12 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %13 = load i8, i8* %add.ptr26, align 1, !tbaa !12
  %conv27 = zext i8 %13 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %14 = load i8, i8* %incdec.ptr22, align 1, !tbaa !12
  %idx.ext30 = zext i8 %14 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %15 = load i8, i8* %add.ptr32, align 1, !tbaa !12
  %conv33 = zext i8 %15 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %idx.ext36
  %incdec.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 1
  %16 = load i8, i8* %add.ptr37, align 1, !tbaa !12
  %idx.ext40 = zext i8 %16 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg41
  %17 = load i8, i8* %add.ptr42, align 1, !tbaa !12
  %conv43 = zext i8 %17 to i32
  %add44 = add nuw nsw i32 %add34, %conv43
  %incdec.ptr45 = getelementptr inbounds i8, i8* %incdec.ptr38, i64 1
  %18 = load i8, i8* %incdec.ptr38, align 1, !tbaa !12
  %idx.ext47 = zext i8 %18 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg48
  %19 = load i8, i8* %add.ptr49, align 1, !tbaa !12
  %conv50 = zext i8 %19 to i32
  %add51 = add nuw nsw i32 %add44, %conv50
  %incdec.ptr52 = getelementptr inbounds i8, i8* %incdec.ptr45, i64 1
  %20 = load i8, i8* %incdec.ptr45, align 1, !tbaa !12
  %idx.ext54 = zext i8 %20 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg55
  %21 = load i8, i8* %add.ptr56, align 1, !tbaa !12
  %conv57 = zext i8 %21 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds i8, i8* %incdec.ptr52, i64 1
  %22 = load i8, i8* %incdec.ptr52, align 1, !tbaa !12
  %idx.ext61 = zext i8 %22 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg62
  %23 = load i8, i8* %add.ptr63, align 1, !tbaa !12
  %conv64 = zext i8 %23 to i32
  %add65 = add nsw i32 %add58, %conv64
  %24 = load i8, i8* %incdec.ptr59, align 1, !tbaa !12
  %idx.ext67 = zext i8 %24 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg68
  %25 = load i8, i8* %add.ptr69, align 1, !tbaa !12
  %conv70 = zext i8 %25 to i32
  %add71 = add nsw i32 %add65, %conv70
  %add.ptr74 = getelementptr inbounds i8, i8* %incdec.ptr59, i64 %idx.ext73
  %incdec.ptr75 = getelementptr inbounds i8, i8* %add.ptr74, i64 1
  %26 = load i8, i8* %add.ptr74, align 1, !tbaa !12
  %idx.ext77 = zext i8 %26 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg78
  %27 = load i8, i8* %add.ptr79, align 1, !tbaa !12
  %conv80 = zext i8 %27 to i32
  %add81 = add nsw i32 %add71, %conv80
  %incdec.ptr82 = getelementptr inbounds i8, i8* %incdec.ptr75, i64 1
  %28 = load i8, i8* %incdec.ptr75, align 1, !tbaa !12
  %idx.ext84 = zext i8 %28 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg85
  %29 = load i8, i8* %add.ptr86, align 1, !tbaa !12
  %conv87 = zext i8 %29 to i32
  %add88 = add nsw i32 %add81, %conv87
  %incdec.ptr89 = getelementptr inbounds i8, i8* %incdec.ptr82, i64 1
  %30 = load i8, i8* %incdec.ptr82, align 1, !tbaa !12
  %idx.ext91 = zext i8 %30 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg92
  %31 = load i8, i8* %add.ptr93, align 1, !tbaa !12
  %conv94 = zext i8 %31 to i32
  %add95 = add nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds i8, i8* %incdec.ptr89, i64 1
  %32 = load i8, i8* %incdec.ptr89, align 1, !tbaa !12
  %idx.ext98 = zext i8 %32 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg99
  %33 = load i8, i8* %add.ptr100, align 1, !tbaa !12
  %conv101 = zext i8 %33 to i32
  %add102 = add nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds i8, i8* %incdec.ptr96, i64 1
  %34 = load i8, i8* %incdec.ptr96, align 1, !tbaa !12
  %idx.ext105 = zext i8 %34 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg106
  %35 = load i8, i8* %add.ptr107, align 1, !tbaa !12
  %conv108 = zext i8 %35 to i32
  %add109 = add nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds i8, i8* %incdec.ptr103, i64 1
  %36 = load i8, i8* %incdec.ptr103, align 1, !tbaa !12
  %idx.ext112 = zext i8 %36 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg113
  %37 = load i8, i8* %add.ptr114, align 1, !tbaa !12
  %conv115 = zext i8 %37 to i32
  %add116 = add nsw i32 %add109, %conv115
  %38 = load i8, i8* %incdec.ptr110, align 1, !tbaa !12
  %idx.ext118 = zext i8 %38 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg119
  %39 = load i8, i8* %add.ptr120, align 1, !tbaa !12
  %conv121 = zext i8 %39 to i32
  %add122 = add nsw i32 %add116, %conv121
  %add.ptr125 = getelementptr inbounds i8, i8* %incdec.ptr110, i64 %idx.ext124
  %incdec.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 1
  %40 = load i8, i8* %add.ptr125, align 1, !tbaa !12
  %idx.ext128 = zext i8 %40 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg129
  %41 = load i8, i8* %add.ptr130, align 1, !tbaa !12
  %conv131 = zext i8 %41 to i32
  %add132 = add nsw i32 %add122, %conv131
  %incdec.ptr133 = getelementptr inbounds i8, i8* %incdec.ptr126, i64 1
  %42 = load i8, i8* %incdec.ptr126, align 1, !tbaa !12
  %idx.ext135 = zext i8 %42 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg136
  %43 = load i8, i8* %add.ptr137, align 1, !tbaa !12
  %conv138 = zext i8 %43 to i32
  %add139 = add nsw i32 %add132, %conv138
  %44 = load i8, i8* %incdec.ptr133, align 1, !tbaa !12
  %idx.ext141 = zext i8 %44 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg142
  %45 = load i8, i8* %add.ptr143, align 1, !tbaa !12
  %conv144 = zext i8 %45 to i32
  %add145 = add nsw i32 %add139, %conv144
  %cmp146 = icmp slt i32 %add145, %max_no
  br i1 %cmp146, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %add.ptr148 = getelementptr inbounds i8, i8* %incdec.ptr133, i64 2
  %incdec.ptr149 = getelementptr inbounds i8, i8* %add.ptr148, i64 1
  %46 = load i8, i8* %add.ptr148, align 1, !tbaa !12
  %idx.ext151 = zext i8 %46 to i64
  %idx.neg152 = sub nsw i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg152
  %47 = load i8, i8* %add.ptr153, align 1, !tbaa !12
  %conv154 = zext i8 %47 to i32
  %add155 = add nsw i32 %conv154, %add145
  %cmp156 = icmp slt i32 %add155, %max_no
  br i1 %cmp156, label %if.then158, label %for.inc

if.then158:                                       ; preds = %if.then
  %incdec.ptr159 = getelementptr inbounds i8, i8* %incdec.ptr149, i64 1
  %48 = load i8, i8* %incdec.ptr149, align 1, !tbaa !12
  %idx.ext161 = zext i8 %48 to i64
  %idx.neg162 = sub nsw i64 0, %idx.ext161
  %add.ptr163 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg162
  %49 = load i8, i8* %add.ptr163, align 1, !tbaa !12
  %conv164 = zext i8 %49 to i32
  %add165 = add nsw i32 %conv164, %add155
  %cmp166 = icmp slt i32 %add165, %max_no
  br i1 %cmp166, label %if.then168, label %for.inc

if.then168:                                       ; preds = %if.then158
  %50 = load i8, i8* %incdec.ptr159, align 1, !tbaa !12
  %idx.ext170 = zext i8 %50 to i64
  %idx.neg171 = sub nsw i64 0, %idx.ext170
  %add.ptr172 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg171
  %51 = load i8, i8* %add.ptr172, align 1, !tbaa !12
  %conv173 = zext i8 %51 to i32
  %add174 = add nsw i32 %conv173, %add165
  %cmp175 = icmp slt i32 %add174, %max_no
  br i1 %cmp175, label %if.then177, label %for.inc

if.then177:                                       ; preds = %if.then168
  %add.ptr180 = getelementptr inbounds i8, i8* %incdec.ptr159, i64 %idx.ext124
  %incdec.ptr181 = getelementptr inbounds i8, i8* %add.ptr180, i64 1
  %52 = load i8, i8* %add.ptr180, align 1, !tbaa !12
  %idx.ext183 = zext i8 %52 to i64
  %idx.neg184 = sub nsw i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg184
  %53 = load i8, i8* %add.ptr185, align 1, !tbaa !12
  %conv186 = zext i8 %53 to i32
  %add187 = add nsw i32 %conv186, %add174
  %cmp188 = icmp slt i32 %add187, %max_no
  br i1 %cmp188, label %if.then190, label %for.inc

if.then190:                                       ; preds = %if.then177
  %incdec.ptr191 = getelementptr inbounds i8, i8* %incdec.ptr181, i64 1
  %54 = load i8, i8* %incdec.ptr181, align 1, !tbaa !12
  %idx.ext193 = zext i8 %54 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg194
  %55 = load i8, i8* %add.ptr195, align 1, !tbaa !12
  %conv196 = zext i8 %55 to i32
  %add197 = add nsw i32 %conv196, %add187
  %cmp198 = icmp slt i32 %add197, %max_no
  br i1 %cmp198, label %if.then200, label %for.inc

if.then200:                                       ; preds = %if.then190
  %incdec.ptr201 = getelementptr inbounds i8, i8* %incdec.ptr191, i64 1
  %56 = load i8, i8* %incdec.ptr191, align 1, !tbaa !12
  %idx.ext203 = zext i8 %56 to i64
  %idx.neg204 = sub nsw i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg204
  %57 = load i8, i8* %add.ptr205, align 1, !tbaa !12
  %conv206 = zext i8 %57 to i32
  %add207 = add nsw i32 %conv206, %add197
  %cmp208 = icmp slt i32 %add207, %max_no
  br i1 %cmp208, label %if.then210, label %for.inc

if.then210:                                       ; preds = %if.then200
  %incdec.ptr211 = getelementptr inbounds i8, i8* %incdec.ptr201, i64 1
  %58 = load i8, i8* %incdec.ptr201, align 1, !tbaa !12
  %idx.ext213 = zext i8 %58 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg214
  %59 = load i8, i8* %add.ptr215, align 1, !tbaa !12
  %conv216 = zext i8 %59 to i32
  %add217 = add nsw i32 %conv216, %add207
  %cmp218 = icmp slt i32 %add217, %max_no
  br i1 %cmp218, label %if.then220, label %for.inc

if.then220:                                       ; preds = %if.then210
  %incdec.ptr221 = getelementptr inbounds i8, i8* %incdec.ptr211, i64 1
  %60 = load i8, i8* %incdec.ptr211, align 1, !tbaa !12
  %idx.ext223 = zext i8 %60 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg224
  %61 = load i8, i8* %add.ptr225, align 1, !tbaa !12
  %conv226 = zext i8 %61 to i32
  %add227 = add nsw i32 %conv226, %add217
  %cmp228 = icmp slt i32 %add227, %max_no
  br i1 %cmp228, label %if.then230, label %for.inc

if.then230:                                       ; preds = %if.then220
  %incdec.ptr231 = getelementptr inbounds i8, i8* %incdec.ptr221, i64 1
  %62 = load i8, i8* %incdec.ptr221, align 1, !tbaa !12
  %idx.ext233 = zext i8 %62 to i64
  %idx.neg234 = sub nsw i64 0, %idx.ext233
  %add.ptr235 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg234
  %63 = load i8, i8* %add.ptr235, align 1, !tbaa !12
  %conv236 = zext i8 %63 to i32
  %add237 = add nsw i32 %conv236, %add227
  %cmp238 = icmp slt i32 %add237, %max_no
  br i1 %cmp238, label %if.then240, label %for.inc

if.then240:                                       ; preds = %if.then230
  %64 = load i8, i8* %incdec.ptr231, align 1, !tbaa !12
  %idx.ext242 = zext i8 %64 to i64
  %idx.neg243 = sub nsw i64 0, %idx.ext242
  %add.ptr244 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg243
  %65 = load i8, i8* %add.ptr244, align 1, !tbaa !12
  %conv245 = zext i8 %65 to i32
  %add246 = add nsw i32 %conv245, %add237
  %cmp247 = icmp slt i32 %add246, %max_no
  br i1 %cmp247, label %if.then249, label %for.inc

if.then249:                                       ; preds = %if.then240
  %add.ptr252 = getelementptr inbounds i8, i8* %incdec.ptr231, i64 %idx.ext73
  %incdec.ptr253 = getelementptr inbounds i8, i8* %add.ptr252, i64 1
  %66 = load i8, i8* %add.ptr252, align 1, !tbaa !12
  %idx.ext255 = zext i8 %66 to i64
  %idx.neg256 = sub nsw i64 0, %idx.ext255
  %add.ptr257 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg256
  %67 = load i8, i8* %add.ptr257, align 1, !tbaa !12
  %conv258 = zext i8 %67 to i32
  %add259 = add nsw i32 %conv258, %add246
  %cmp260 = icmp slt i32 %add259, %max_no
  br i1 %cmp260, label %if.then262, label %for.inc

if.then262:                                       ; preds = %if.then249
  %incdec.ptr263 = getelementptr inbounds i8, i8* %incdec.ptr253, i64 1
  %68 = load i8, i8* %incdec.ptr253, align 1, !tbaa !12
  %idx.ext265 = zext i8 %68 to i64
  %idx.neg266 = sub nsw i64 0, %idx.ext265
  %add.ptr267 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg266
  %69 = load i8, i8* %add.ptr267, align 1, !tbaa !12
  %conv268 = zext i8 %69 to i32
  %add269 = add nsw i32 %conv268, %add259
  %cmp270 = icmp slt i32 %add269, %max_no
  br i1 %cmp270, label %if.then272, label %for.inc

if.then272:                                       ; preds = %if.then262
  %incdec.ptr273 = getelementptr inbounds i8, i8* %incdec.ptr263, i64 1
  %70 = load i8, i8* %incdec.ptr263, align 1, !tbaa !12
  %idx.ext275 = zext i8 %70 to i64
  %idx.neg276 = sub nsw i64 0, %idx.ext275
  %add.ptr277 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg276
  %71 = load i8, i8* %add.ptr277, align 1, !tbaa !12
  %conv278 = zext i8 %71 to i32
  %add279 = add nsw i32 %conv278, %add269
  %cmp280 = icmp slt i32 %add279, %max_no
  br i1 %cmp280, label %if.then282, label %for.inc

if.then282:                                       ; preds = %if.then272
  %incdec.ptr283 = getelementptr inbounds i8, i8* %incdec.ptr273, i64 1
  %72 = load i8, i8* %incdec.ptr273, align 1, !tbaa !12
  %idx.ext285 = zext i8 %72 to i64
  %idx.neg286 = sub nsw i64 0, %idx.ext285
  %add.ptr287 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg286
  %73 = load i8, i8* %add.ptr287, align 1, !tbaa !12
  %conv288 = zext i8 %73 to i32
  %add289 = add nsw i32 %conv288, %add279
  %cmp290 = icmp slt i32 %add289, %max_no
  br i1 %cmp290, label %if.then292, label %for.inc

if.then292:                                       ; preds = %if.then282
  %74 = load i8, i8* %incdec.ptr283, align 1, !tbaa !12
  %idx.ext294 = zext i8 %74 to i64
  %idx.neg295 = sub nsw i64 0, %idx.ext294
  %add.ptr296 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg295
  %75 = load i8, i8* %add.ptr296, align 1, !tbaa !12
  %conv297 = zext i8 %75 to i32
  %add298 = add nsw i32 %conv297, %add289
  %cmp299 = icmp slt i32 %add298, %max_no
  br i1 %cmp299, label %if.then301, label %for.inc

if.then301:                                       ; preds = %if.then292
  %add.ptr304 = getelementptr inbounds i8, i8* %incdec.ptr283, i64 %idx.ext36
  %incdec.ptr305 = getelementptr inbounds i8, i8* %add.ptr304, i64 1
  %76 = load i8, i8* %add.ptr304, align 1, !tbaa !12
  %idx.ext307 = zext i8 %76 to i64
  %idx.neg308 = sub nsw i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg308
  %77 = load i8, i8* %add.ptr309, align 1, !tbaa !12
  %conv310 = zext i8 %77 to i32
  %add311 = add nsw i32 %conv310, %add298
  %cmp312 = icmp slt i32 %add311, %max_no
  br i1 %cmp312, label %if.then314, label %for.inc

if.then314:                                       ; preds = %if.then301
  %78 = load i8, i8* %incdec.ptr305, align 1, !tbaa !12
  %idx.ext317 = zext i8 %78 to i64
  %idx.neg318 = sub nsw i64 0, %idx.ext317
  %add.ptr319 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg318
  %79 = load i8, i8* %add.ptr319, align 1, !tbaa !12
  %conv320 = zext i8 %79 to i32
  %add321 = add nsw i32 %conv320, %add311
  %cmp322 = icmp slt i32 %add321, %max_no
  br i1 %cmp322, label %if.then324, label %for.inc

if.then324:                                       ; preds = %if.then314
  %incdec.ptr315 = getelementptr inbounds i8, i8* %incdec.ptr305, i64 1
  %80 = load i8, i8* %incdec.ptr315, align 1, !tbaa !12
  %idx.ext326 = zext i8 %80 to i64
  %idx.neg327 = sub nsw i64 0, %idx.ext326
  %add.ptr328 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg327
  %81 = load i8, i8* %add.ptr328, align 1, !tbaa !12
  %conv329 = zext i8 %81 to i32
  %add330 = add nsw i32 %conv329, %add321
  %cmp331 = icmp slt i32 %add330, %max_no
  br i1 %cmp331, label %if.then333, label %for.inc

if.then333:                                       ; preds = %if.then324
  %sub334 = sub nsw i32 %max_no, %add330
  %arrayidx338 = getelementptr inbounds i32, i32* %r, i64 %idxprom
  store i32 %sub334, i32* %arrayidx338, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then158, %if.then177, %if.then200, %if.then220, %if.then240, %if.then262, %if.then282, %if.then301, %if.then324, %if.then333, %if.then314, %if.then292, %if.then272, %if.then249, %if.then230, %if.then210, %if.then190, %if.then168, %if.then
  %indvars.iv.next2115 = add nuw nsw i64 %indvars.iv2114, 1
  %inc = add nuw nsw i32 %j.02052, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next2115 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub4
  br i1 %exitcond, label %for.inc357.loopexit, label %for.body7

for.inc357.loopexit:                              ; preds = %for.inc
  br label %for.inc357

for.inc357:                                       ; preds = %for.inc357.loopexit, %for.cond3.preheader
  %indvars.iv.next2117 = add nuw nsw i64 %indvars.iv2116, 1
  %lftr.wideiv2121 = trunc i64 %indvars.iv.next2117 to i32
  %exitcond2122 = icmp eq i32 %lftr.wideiv2121, %sub
  br i1 %exitcond2122, label %for.cond360.preheader, label %for.cond3.preheader

for.cond365.preheader:                            ; preds = %for.cond365.preheader.lr.ph, %for.inc1323
  %indvars.iv2099 = phi i64 [ 7, %for.cond365.preheader.lr.ph ], [ %indvars.iv.next2100.pre-phi, %for.inc1323 ]
  %n.02049 = phi i32 [ 0, %for.cond365.preheader.lr.ph ], [ %n.1.lcssa, %for.inc1323 ]
  br i1 %cmp3672043, label %for.body369.lr.ph, label %for.cond365.preheader.for.inc1323_crit_edge

for.cond365.preheader.for.inc1323_crit_edge:      ; preds = %for.cond365.preheader
  %.pre = add nuw nsw i64 %indvars.iv2099, 1
  br label %for.inc1323

for.body369.lr.ph:                                ; preds = %for.cond365.preheader
  %82 = mul nsw i64 %indvars.iv2099, %7
  %83 = add nsw i64 %indvars.iv2099, -3
  %84 = mul nsw i64 %83, %7
  %85 = add nsw i64 %indvars.iv2099, -2
  %86 = mul nsw i64 %85, %7
  %87 = add nsw i64 %indvars.iv2099, -1
  %88 = mul nsw i64 %87, %7
  %89 = add nuw nsw i64 %indvars.iv2099, 1
  %90 = mul nsw i64 %89, %7
  %91 = add nuw nsw i64 %indvars.iv2099, 2
  %92 = mul nsw i64 %91, %7
  %93 = add nuw nsw i64 %indvars.iv2099, 3
  %94 = mul nsw i64 %93, %7
  %95 = trunc i64 %82 to i32
  %96 = trunc i64 %indvars.iv2099 to i32
  br label %for.body369

for.body369:                                      ; preds = %for.body369.lr.ph, %for.inc1320
  %indvars.iv = phi i64 [ 7, %for.body369.lr.ph ], [ %indvars.iv.next, %for.inc1320 ]
  %n.12045 = phi i32 [ %n.02049, %for.body369.lr.ph ], [ %n.2, %for.inc1320 ]
  %j.12044 = phi i32 [ 7, %for.body369.lr.ph ], [ %inc1321, %for.inc1320 ]
  %add371 = add nsw i32 %j.12044, %95
  %idxprom372 = sext i32 %add371 to i64
  %arrayidx373 = getelementptr inbounds i32, i32* %r, i64 %idxprom372
  %97 = load i32, i32* %arrayidx373, align 4, !tbaa !5
  %cmp374 = icmp sgt i32 %97, 0
  br i1 %cmp374, label %if.then376, label %for.inc1320

if.then376:                                       ; preds = %for.body369
  %98 = add nsw i64 %indvars.iv, %84
  %99 = add nsw i64 %98, -3
  %arrayidx382 = getelementptr inbounds i32, i32* %r, i64 %99
  %100 = load i32, i32* %arrayidx382, align 4, !tbaa !5
  %cmp383 = icmp sgt i32 %97, %100
  br i1 %cmp383, label %land.lhs.true, label %for.inc1320

land.lhs.true:                                    ; preds = %if.then376
  %101 = add nsw i64 %98, -2
  %arrayidx390 = getelementptr inbounds i32, i32* %r, i64 %101
  %102 = load i32, i32* %arrayidx390, align 4, !tbaa !5
  %cmp391 = icmp sgt i32 %97, %102
  br i1 %cmp391, label %land.lhs.true393, label %for.inc1320

land.lhs.true393:                                 ; preds = %land.lhs.true
  %103 = add nsw i64 %98, -1
  %arrayidx399 = getelementptr inbounds i32, i32* %r, i64 %103
  %104 = load i32, i32* %arrayidx399, align 4, !tbaa !5
  %cmp400 = icmp sgt i32 %97, %104
  br i1 %cmp400, label %land.lhs.true402, label %for.inc1320

land.lhs.true402:                                 ; preds = %land.lhs.true393
  %arrayidx407 = getelementptr inbounds i32, i32* %r, i64 %98
  %105 = load i32, i32* %arrayidx407, align 4, !tbaa !5
  %cmp408 = icmp sgt i32 %97, %105
  br i1 %cmp408, label %land.lhs.true410, label %for.inc1320

land.lhs.true410:                                 ; preds = %land.lhs.true402
  %106 = add nsw i64 %98, 1
  %arrayidx416 = getelementptr inbounds i32, i32* %r, i64 %106
  %107 = load i32, i32* %arrayidx416, align 4, !tbaa !5
  %cmp417 = icmp sgt i32 %97, %107
  br i1 %cmp417, label %land.lhs.true419, label %for.inc1320

land.lhs.true419:                                 ; preds = %land.lhs.true410
  %108 = add nsw i64 %98, 2
  %arrayidx425 = getelementptr inbounds i32, i32* %r, i64 %108
  %109 = load i32, i32* %arrayidx425, align 4, !tbaa !5
  %cmp426 = icmp sgt i32 %97, %109
  br i1 %cmp426, label %land.lhs.true428, label %for.inc1320

land.lhs.true428:                                 ; preds = %land.lhs.true419
  %110 = add nsw i64 %98, 3
  %arrayidx434 = getelementptr inbounds i32, i32* %r, i64 %110
  %111 = load i32, i32* %arrayidx434, align 4, !tbaa !5
  %cmp435 = icmp sgt i32 %97, %111
  br i1 %cmp435, label %land.lhs.true437, label %for.inc1320

land.lhs.true437:                                 ; preds = %land.lhs.true428
  %112 = add nsw i64 %indvars.iv, %86
  %113 = add nsw i64 %112, -3
  %arrayidx443 = getelementptr inbounds i32, i32* %r, i64 %113
  %114 = load i32, i32* %arrayidx443, align 4, !tbaa !5
  %cmp444 = icmp sgt i32 %97, %114
  br i1 %cmp444, label %land.lhs.true446, label %for.inc1320

land.lhs.true446:                                 ; preds = %land.lhs.true437
  %115 = add nsw i64 %112, -2
  %arrayidx452 = getelementptr inbounds i32, i32* %r, i64 %115
  %116 = load i32, i32* %arrayidx452, align 4, !tbaa !5
  %cmp453 = icmp sgt i32 %97, %116
  br i1 %cmp453, label %land.lhs.true455, label %for.inc1320

land.lhs.true455:                                 ; preds = %land.lhs.true446
  %117 = add nsw i64 %112, -1
  %arrayidx461 = getelementptr inbounds i32, i32* %r, i64 %117
  %118 = load i32, i32* %arrayidx461, align 4, !tbaa !5
  %cmp462 = icmp sgt i32 %97, %118
  br i1 %cmp462, label %land.lhs.true464, label %for.inc1320

land.lhs.true464:                                 ; preds = %land.lhs.true455
  %arrayidx469 = getelementptr inbounds i32, i32* %r, i64 %112
  %119 = load i32, i32* %arrayidx469, align 4, !tbaa !5
  %cmp470 = icmp sgt i32 %97, %119
  br i1 %cmp470, label %land.lhs.true472, label %for.inc1320

land.lhs.true472:                                 ; preds = %land.lhs.true464
  %120 = add nsw i64 %112, 1
  %arrayidx478 = getelementptr inbounds i32, i32* %r, i64 %120
  %121 = load i32, i32* %arrayidx478, align 4, !tbaa !5
  %cmp479 = icmp sgt i32 %97, %121
  br i1 %cmp479, label %land.lhs.true481, label %for.inc1320

land.lhs.true481:                                 ; preds = %land.lhs.true472
  %122 = add nsw i64 %112, 2
  %arrayidx487 = getelementptr inbounds i32, i32* %r, i64 %122
  %123 = load i32, i32* %arrayidx487, align 4, !tbaa !5
  %cmp488 = icmp sgt i32 %97, %123
  br i1 %cmp488, label %land.lhs.true490, label %for.inc1320

land.lhs.true490:                                 ; preds = %land.lhs.true481
  %124 = add nsw i64 %112, 3
  %arrayidx496 = getelementptr inbounds i32, i32* %r, i64 %124
  %125 = load i32, i32* %arrayidx496, align 4, !tbaa !5
  %cmp497 = icmp sgt i32 %97, %125
  br i1 %cmp497, label %land.lhs.true499, label %for.inc1320

land.lhs.true499:                                 ; preds = %land.lhs.true490
  %126 = add nsw i64 %indvars.iv, %88
  %127 = add nsw i64 %126, -3
  %arrayidx505 = getelementptr inbounds i32, i32* %r, i64 %127
  %128 = load i32, i32* %arrayidx505, align 4, !tbaa !5
  %cmp506 = icmp sgt i32 %97, %128
  br i1 %cmp506, label %land.lhs.true508, label %for.inc1320

land.lhs.true508:                                 ; preds = %land.lhs.true499
  %129 = add nsw i64 %126, -2
  %arrayidx514 = getelementptr inbounds i32, i32* %r, i64 %129
  %130 = load i32, i32* %arrayidx514, align 4, !tbaa !5
  %cmp515 = icmp sgt i32 %97, %130
  br i1 %cmp515, label %land.lhs.true517, label %for.inc1320

land.lhs.true517:                                 ; preds = %land.lhs.true508
  %131 = add nsw i64 %126, -1
  %arrayidx523 = getelementptr inbounds i32, i32* %r, i64 %131
  %132 = load i32, i32* %arrayidx523, align 4, !tbaa !5
  %cmp524 = icmp sgt i32 %97, %132
  br i1 %cmp524, label %land.lhs.true526, label %for.inc1320

land.lhs.true526:                                 ; preds = %land.lhs.true517
  %arrayidx531 = getelementptr inbounds i32, i32* %r, i64 %126
  %133 = load i32, i32* %arrayidx531, align 4, !tbaa !5
  %cmp532 = icmp sgt i32 %97, %133
  br i1 %cmp532, label %land.lhs.true534, label %for.inc1320

land.lhs.true534:                                 ; preds = %land.lhs.true526
  %134 = add nsw i64 %126, 1
  %arrayidx540 = getelementptr inbounds i32, i32* %r, i64 %134
  %135 = load i32, i32* %arrayidx540, align 4, !tbaa !5
  %cmp541 = icmp sgt i32 %97, %135
  br i1 %cmp541, label %land.lhs.true543, label %for.inc1320

land.lhs.true543:                                 ; preds = %land.lhs.true534
  %136 = add nsw i64 %126, 2
  %arrayidx549 = getelementptr inbounds i32, i32* %r, i64 %136
  %137 = load i32, i32* %arrayidx549, align 4, !tbaa !5
  %cmp550 = icmp sgt i32 %97, %137
  br i1 %cmp550, label %land.lhs.true552, label %for.inc1320

land.lhs.true552:                                 ; preds = %land.lhs.true543
  %138 = add nsw i64 %126, 3
  %arrayidx558 = getelementptr inbounds i32, i32* %r, i64 %138
  %139 = load i32, i32* %arrayidx558, align 4, !tbaa !5
  %cmp559 = icmp sgt i32 %97, %139
  br i1 %cmp559, label %land.lhs.true561, label %for.inc1320

land.lhs.true561:                                 ; preds = %land.lhs.true552
  %sub564 = add nsw i32 %add371, -3
  %idxprom565 = sext i32 %sub564 to i64
  %arrayidx566 = getelementptr inbounds i32, i32* %r, i64 %idxprom565
  %140 = load i32, i32* %arrayidx566, align 4, !tbaa !5
  %cmp567 = icmp sgt i32 %97, %140
  br i1 %cmp567, label %land.lhs.true569, label %for.inc1320

land.lhs.true569:                                 ; preds = %land.lhs.true561
  %sub572 = add nsw i32 %add371, -2
  %idxprom573 = sext i32 %sub572 to i64
  %arrayidx574 = getelementptr inbounds i32, i32* %r, i64 %idxprom573
  %141 = load i32, i32* %arrayidx574, align 4, !tbaa !5
  %cmp575 = icmp sgt i32 %97, %141
  br i1 %cmp575, label %land.lhs.true577, label %for.inc1320

land.lhs.true577:                                 ; preds = %land.lhs.true569
  %sub580 = add nsw i32 %add371, -1
  %idxprom581 = sext i32 %sub580 to i64
  %arrayidx582 = getelementptr inbounds i32, i32* %r, i64 %idxprom581
  %142 = load i32, i32* %arrayidx582, align 4, !tbaa !5
  %cmp583 = icmp sgt i32 %97, %142
  br i1 %cmp583, label %land.lhs.true585, label %for.inc1320

land.lhs.true585:                                 ; preds = %land.lhs.true577
  %add588 = add nsw i32 %add371, 1
  %idxprom589 = sext i32 %add588 to i64
  %arrayidx590 = getelementptr inbounds i32, i32* %r, i64 %idxprom589
  %143 = load i32, i32* %arrayidx590, align 4, !tbaa !5
  %cmp591 = icmp slt i32 %97, %143
  br i1 %cmp591, label %for.inc1320, label %land.lhs.true593

land.lhs.true593:                                 ; preds = %land.lhs.true585
  %add596 = add nsw i32 %add371, 2
  %idxprom597 = sext i32 %add596 to i64
  %arrayidx598 = getelementptr inbounds i32, i32* %r, i64 %idxprom597
  %144 = load i32, i32* %arrayidx598, align 4, !tbaa !5
  %cmp599 = icmp slt i32 %97, %144
  br i1 %cmp599, label %for.inc1320, label %land.lhs.true601

land.lhs.true601:                                 ; preds = %land.lhs.true593
  %add604 = add nsw i32 %add371, 3
  %idxprom605 = sext i32 %add604 to i64
  %arrayidx606 = getelementptr inbounds i32, i32* %r, i64 %idxprom605
  %145 = load i32, i32* %arrayidx606, align 4, !tbaa !5
  %cmp607 = icmp slt i32 %97, %145
  br i1 %cmp607, label %for.inc1320, label %land.lhs.true609

land.lhs.true609:                                 ; preds = %land.lhs.true601
  %146 = add nsw i64 %indvars.iv, %90
  %147 = add nsw i64 %146, -3
  %arrayidx615 = getelementptr inbounds i32, i32* %r, i64 %147
  %148 = load i32, i32* %arrayidx615, align 4, !tbaa !5
  %cmp616 = icmp slt i32 %97, %148
  br i1 %cmp616, label %for.inc1320, label %land.lhs.true618

land.lhs.true618:                                 ; preds = %land.lhs.true609
  %149 = add nsw i64 %146, -2
  %arrayidx624 = getelementptr inbounds i32, i32* %r, i64 %149
  %150 = load i32, i32* %arrayidx624, align 4, !tbaa !5
  %cmp625 = icmp slt i32 %97, %150
  br i1 %cmp625, label %for.inc1320, label %land.lhs.true627

land.lhs.true627:                                 ; preds = %land.lhs.true618
  %151 = add nsw i64 %146, -1
  %arrayidx633 = getelementptr inbounds i32, i32* %r, i64 %151
  %152 = load i32, i32* %arrayidx633, align 4, !tbaa !5
  %cmp634 = icmp slt i32 %97, %152
  br i1 %cmp634, label %for.inc1320, label %land.lhs.true636

land.lhs.true636:                                 ; preds = %land.lhs.true627
  %arrayidx641 = getelementptr inbounds i32, i32* %r, i64 %146
  %153 = load i32, i32* %arrayidx641, align 4, !tbaa !5
  %cmp642 = icmp slt i32 %97, %153
  br i1 %cmp642, label %for.inc1320, label %land.lhs.true644

land.lhs.true644:                                 ; preds = %land.lhs.true636
  %154 = add nsw i64 %146, 1
  %arrayidx650 = getelementptr inbounds i32, i32* %r, i64 %154
  %155 = load i32, i32* %arrayidx650, align 4, !tbaa !5
  %cmp651 = icmp slt i32 %97, %155
  br i1 %cmp651, label %for.inc1320, label %land.lhs.true653

land.lhs.true653:                                 ; preds = %land.lhs.true644
  %156 = add nsw i64 %146, 2
  %arrayidx659 = getelementptr inbounds i32, i32* %r, i64 %156
  %157 = load i32, i32* %arrayidx659, align 4, !tbaa !5
  %cmp660 = icmp slt i32 %97, %157
  br i1 %cmp660, label %for.inc1320, label %land.lhs.true662

land.lhs.true662:                                 ; preds = %land.lhs.true653
  %158 = add nsw i64 %146, 3
  %arrayidx668 = getelementptr inbounds i32, i32* %r, i64 %158
  %159 = load i32, i32* %arrayidx668, align 4, !tbaa !5
  %cmp669 = icmp slt i32 %97, %159
  br i1 %cmp669, label %for.inc1320, label %land.lhs.true671

land.lhs.true671:                                 ; preds = %land.lhs.true662
  %160 = add nsw i64 %indvars.iv, %92
  %161 = add nsw i64 %160, -3
  %arrayidx677 = getelementptr inbounds i32, i32* %r, i64 %161
  %162 = load i32, i32* %arrayidx677, align 4, !tbaa !5
  %cmp678 = icmp slt i32 %97, %162
  br i1 %cmp678, label %for.inc1320, label %land.lhs.true680

land.lhs.true680:                                 ; preds = %land.lhs.true671
  %163 = add nsw i64 %160, -2
  %arrayidx686 = getelementptr inbounds i32, i32* %r, i64 %163
  %164 = load i32, i32* %arrayidx686, align 4, !tbaa !5
  %cmp687 = icmp slt i32 %97, %164
  br i1 %cmp687, label %for.inc1320, label %land.lhs.true689

land.lhs.true689:                                 ; preds = %land.lhs.true680
  %165 = add nsw i64 %160, -1
  %arrayidx695 = getelementptr inbounds i32, i32* %r, i64 %165
  %166 = load i32, i32* %arrayidx695, align 4, !tbaa !5
  %cmp696 = icmp slt i32 %97, %166
  br i1 %cmp696, label %for.inc1320, label %land.lhs.true698

land.lhs.true698:                                 ; preds = %land.lhs.true689
  %arrayidx703 = getelementptr inbounds i32, i32* %r, i64 %160
  %167 = load i32, i32* %arrayidx703, align 4, !tbaa !5
  %cmp704 = icmp slt i32 %97, %167
  br i1 %cmp704, label %for.inc1320, label %land.lhs.true706

land.lhs.true706:                                 ; preds = %land.lhs.true698
  %168 = add nsw i64 %160, 1
  %arrayidx712 = getelementptr inbounds i32, i32* %r, i64 %168
  %169 = load i32, i32* %arrayidx712, align 4, !tbaa !5
  %cmp713 = icmp slt i32 %97, %169
  br i1 %cmp713, label %for.inc1320, label %land.lhs.true715

land.lhs.true715:                                 ; preds = %land.lhs.true706
  %170 = add nsw i64 %160, 2
  %arrayidx721 = getelementptr inbounds i32, i32* %r, i64 %170
  %171 = load i32, i32* %arrayidx721, align 4, !tbaa !5
  %cmp722 = icmp slt i32 %97, %171
  br i1 %cmp722, label %for.inc1320, label %land.lhs.true724

land.lhs.true724:                                 ; preds = %land.lhs.true715
  %172 = add nsw i64 %160, 3
  %arrayidx730 = getelementptr inbounds i32, i32* %r, i64 %172
  %173 = load i32, i32* %arrayidx730, align 4, !tbaa !5
  %cmp731 = icmp slt i32 %97, %173
  br i1 %cmp731, label %for.inc1320, label %land.lhs.true733

land.lhs.true733:                                 ; preds = %land.lhs.true724
  %174 = add nsw i64 %indvars.iv, %94
  %175 = add nsw i64 %174, -3
  %arrayidx739 = getelementptr inbounds i32, i32* %r, i64 %175
  %176 = load i32, i32* %arrayidx739, align 4, !tbaa !5
  %cmp740 = icmp slt i32 %97, %176
  br i1 %cmp740, label %for.inc1320, label %land.lhs.true742

land.lhs.true742:                                 ; preds = %land.lhs.true733
  %177 = add nsw i64 %174, -2
  %arrayidx748 = getelementptr inbounds i32, i32* %r, i64 %177
  %178 = load i32, i32* %arrayidx748, align 4, !tbaa !5
  %cmp749 = icmp slt i32 %97, %178
  br i1 %cmp749, label %for.inc1320, label %land.lhs.true751

land.lhs.true751:                                 ; preds = %land.lhs.true742
  %179 = add nsw i64 %174, -1
  %arrayidx757 = getelementptr inbounds i32, i32* %r, i64 %179
  %180 = load i32, i32* %arrayidx757, align 4, !tbaa !5
  %cmp758 = icmp slt i32 %97, %180
  br i1 %cmp758, label %for.inc1320, label %land.lhs.true760

land.lhs.true760:                                 ; preds = %land.lhs.true751
  %arrayidx765 = getelementptr inbounds i32, i32* %r, i64 %174
  %181 = load i32, i32* %arrayidx765, align 4, !tbaa !5
  %cmp766 = icmp slt i32 %97, %181
  br i1 %cmp766, label %for.inc1320, label %land.lhs.true768

land.lhs.true768:                                 ; preds = %land.lhs.true760
  %182 = add nsw i64 %174, 1
  %arrayidx774 = getelementptr inbounds i32, i32* %r, i64 %182
  %183 = load i32, i32* %arrayidx774, align 4, !tbaa !5
  %cmp775 = icmp slt i32 %97, %183
  br i1 %cmp775, label %for.inc1320, label %land.lhs.true777

land.lhs.true777:                                 ; preds = %land.lhs.true768
  %184 = add nsw i64 %174, 2
  %arrayidx783 = getelementptr inbounds i32, i32* %r, i64 %184
  %185 = load i32, i32* %arrayidx783, align 4, !tbaa !5
  %cmp784 = icmp slt i32 %97, %185
  br i1 %cmp784, label %for.inc1320, label %land.lhs.true786

land.lhs.true786:                                 ; preds = %land.lhs.true777
  %186 = add nsw i64 %174, 3
  %arrayidx792 = getelementptr inbounds i32, i32* %r, i64 %186
  %187 = load i32, i32* %arrayidx792, align 4, !tbaa !5
  %cmp793 = icmp slt i32 %97, %187
  br i1 %cmp793, label %for.inc1320, label %if.then795

if.then795:                                       ; preds = %land.lhs.true786
  %idxprom796 = sext i32 %n.12045 to i64
  %info = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom796, i32 2
  store i32 0, i32* %info, align 4, !tbaa !13
  %x800 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom796, i32 0
  %188 = trunc i64 %indvars.iv to i32
  store i32 %188, i32* %x800, align 4, !tbaa !16
  %y803 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom796, i32 1
  store i32 %96, i32* %y803, align 4, !tbaa !15
  %arrayidx809 = getelementptr inbounds i8, i8* %in, i64 %115
  %189 = load i8, i8* %arrayidx809, align 1, !tbaa !12
  %conv810 = zext i8 %189 to i32
  %arrayidx816 = getelementptr inbounds i8, i8* %in, i64 %117
  %190 = load i8, i8* %arrayidx816, align 1, !tbaa !12
  %conv817 = zext i8 %190 to i32
  %add818 = add nuw nsw i32 %conv817, %conv810
  %arrayidx823 = getelementptr inbounds i8, i8* %in, i64 %112
  %191 = load i8, i8* %arrayidx823, align 1, !tbaa !12
  %conv824 = zext i8 %191 to i32
  %add825 = add nuw nsw i32 %add818, %conv824
  %arrayidx831 = getelementptr inbounds i8, i8* %in, i64 %120
  %192 = load i8, i8* %arrayidx831, align 1, !tbaa !12
  %conv832 = zext i8 %192 to i32
  %add833 = add nuw nsw i32 %add825, %conv832
  %arrayidx839 = getelementptr inbounds i8, i8* %in, i64 %122
  %193 = load i8, i8* %arrayidx839, align 1, !tbaa !12
  %conv840 = zext i8 %193 to i32
  %add841 = add nuw nsw i32 %add833, %conv840
  %arrayidx847 = getelementptr inbounds i8, i8* %in, i64 %129
  %194 = load i8, i8* %arrayidx847, align 1, !tbaa !12
  %conv848 = zext i8 %194 to i32
  %add849 = add nuw nsw i32 %add841, %conv848
  %arrayidx855 = getelementptr inbounds i8, i8* %in, i64 %131
  %195 = load i8, i8* %arrayidx855, align 1, !tbaa !12
  %conv856 = zext i8 %195 to i32
  %add857 = add nuw nsw i32 %add849, %conv856
  %arrayidx862 = getelementptr inbounds i8, i8* %in, i64 %126
  %196 = load i8, i8* %arrayidx862, align 1, !tbaa !12
  %conv863 = zext i8 %196 to i32
  %add864 = add nsw i32 %add857, %conv863
  %arrayidx870 = getelementptr inbounds i8, i8* %in, i64 %134
  %197 = load i8, i8* %arrayidx870, align 1, !tbaa !12
  %conv871 = zext i8 %197 to i32
  %add872 = add nsw i32 %add864, %conv871
  %arrayidx878 = getelementptr inbounds i8, i8* %in, i64 %136
  %198 = load i8, i8* %arrayidx878, align 1, !tbaa !12
  %conv879 = zext i8 %198 to i32
  %add880 = add nsw i32 %add872, %conv879
  %arrayidx885 = getelementptr inbounds i8, i8* %in, i64 %idxprom573
  %199 = load i8, i8* %arrayidx885, align 1, !tbaa !12
  %conv886 = zext i8 %199 to i32
  %add887 = add nsw i32 %add880, %conv886
  %arrayidx892 = getelementptr inbounds i8, i8* %in, i64 %idxprom581
  %200 = load i8, i8* %arrayidx892, align 1, !tbaa !12
  %conv893 = zext i8 %200 to i32
  %add894 = add nsw i32 %add887, %conv893
  %arrayidx898 = getelementptr inbounds i8, i8* %in, i64 %idxprom372
  %201 = load i8, i8* %arrayidx898, align 1, !tbaa !12
  %conv899 = zext i8 %201 to i32
  %add900 = add nsw i32 %add894, %conv899
  %arrayidx905 = getelementptr inbounds i8, i8* %in, i64 %idxprom589
  %202 = load i8, i8* %arrayidx905, align 1, !tbaa !12
  %conv906 = zext i8 %202 to i32
  %add907 = add nsw i32 %add900, %conv906
  %arrayidx912 = getelementptr inbounds i8, i8* %in, i64 %idxprom597
  %203 = load i8, i8* %arrayidx912, align 1, !tbaa !12
  %conv913 = zext i8 %203 to i32
  %add914 = add nsw i32 %add907, %conv913
  %arrayidx920 = getelementptr inbounds i8, i8* %in, i64 %149
  %204 = load i8, i8* %arrayidx920, align 1, !tbaa !12
  %conv921 = zext i8 %204 to i32
  %add922 = add nsw i32 %add914, %conv921
  %arrayidx928 = getelementptr inbounds i8, i8* %in, i64 %151
  %205 = load i8, i8* %arrayidx928, align 1, !tbaa !12
  %conv929 = zext i8 %205 to i32
  %add930 = add nsw i32 %add922, %conv929
  %arrayidx935 = getelementptr inbounds i8, i8* %in, i64 %146
  %206 = load i8, i8* %arrayidx935, align 1, !tbaa !12
  %conv936 = zext i8 %206 to i32
  %add937 = add nsw i32 %add930, %conv936
  %arrayidx943 = getelementptr inbounds i8, i8* %in, i64 %154
  %207 = load i8, i8* %arrayidx943, align 1, !tbaa !12
  %conv944 = zext i8 %207 to i32
  %add945 = add nsw i32 %add937, %conv944
  %arrayidx951 = getelementptr inbounds i8, i8* %in, i64 %156
  %208 = load i8, i8* %arrayidx951, align 1, !tbaa !12
  %conv952 = zext i8 %208 to i32
  %add953 = add nsw i32 %add945, %conv952
  %arrayidx959 = getelementptr inbounds i8, i8* %in, i64 %163
  %209 = load i8, i8* %arrayidx959, align 1, !tbaa !12
  %conv960 = zext i8 %209 to i32
  %add961 = add nsw i32 %add953, %conv960
  %arrayidx967 = getelementptr inbounds i8, i8* %in, i64 %165
  %210 = load i8, i8* %arrayidx967, align 1, !tbaa !12
  %conv968 = zext i8 %210 to i32
  %add969 = add nsw i32 %add961, %conv968
  %arrayidx974 = getelementptr inbounds i8, i8* %in, i64 %160
  %211 = load i8, i8* %arrayidx974, align 1, !tbaa !12
  %conv975 = zext i8 %211 to i32
  %add976 = add nsw i32 %add969, %conv975
  %arrayidx982 = getelementptr inbounds i8, i8* %in, i64 %168
  %212 = load i8, i8* %arrayidx982, align 1, !tbaa !12
  %conv983 = zext i8 %212 to i32
  %add984 = add nsw i32 %add976, %conv983
  %arrayidx990 = getelementptr inbounds i8, i8* %in, i64 %170
  %213 = load i8, i8* %arrayidx990, align 1, !tbaa !12
  %conv991 = zext i8 %213 to i32
  %add992 = add nsw i32 %add984, %conv991
  %div = sdiv i32 %add992, 25
  %I = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom796, i32 5
  store i32 %div, i32* %I, align 4, !tbaa !19
  %214 = load i8, i8* %arrayidx839, align 1, !tbaa !12
  %conv1001 = zext i8 %214 to i32
  %215 = load i8, i8* %arrayidx878, align 1, !tbaa !12
  %conv1008 = zext i8 %215 to i32
  %216 = load i8, i8* %arrayidx912, align 1, !tbaa !12
  %conv1015 = zext i8 %216 to i32
  %217 = load i8, i8* %arrayidx951, align 1, !tbaa !12
  %conv1023 = zext i8 %217 to i32
  %218 = load i8, i8* %arrayidx990, align 1, !tbaa !12
  %conv1031 = zext i8 %218 to i32
  %219 = load i8, i8* %arrayidx809, align 1, !tbaa !12
  %conv1039 = zext i8 %219 to i32
  %220 = load i8, i8* %arrayidx847, align 1, !tbaa !12
  %conv1046 = zext i8 %220 to i32
  %221 = load i8, i8* %arrayidx885, align 1, !tbaa !12
  %conv1053 = zext i8 %221 to i32
  %222 = load i8, i8* %arrayidx920, align 1, !tbaa !12
  %conv1061 = zext i8 %222 to i32
  %223 = load i8, i8* %arrayidx959, align 1, !tbaa !12
  %conv1069 = zext i8 %223 to i32
  %add1047.neg = add nuw nsw i32 %conv1008, %conv1001
  %add1054.neg = add nuw nsw i32 %add1047.neg, %conv1015
  %add1062.neg = add nuw nsw i32 %add1054.neg, %conv1023
  %add1070.neg = add nuw nsw i32 %add1062.neg, %conv1031
  %add1009 = sub nsw i32 %add1070.neg, %conv1039
  %add1016 = sub nsw i32 %add1009, %conv1046
  %add1024 = sub i32 %add1016, %conv1053
  %add1032 = sub i32 %add1024, %conv1061
  %sub1071 = sub i32 %add1032, %conv1069
  %224 = load i8, i8* %arrayidx831, align 1, !tbaa !12
  %conv1078 = zext i8 %224 to i32
  %225 = load i8, i8* %arrayidx870, align 1, !tbaa !12
  %conv1086 = zext i8 %225 to i32
  %226 = load i8, i8* %arrayidx905, align 1, !tbaa !12
  %conv1093 = zext i8 %226 to i32
  %227 = load i8, i8* %arrayidx943, align 1, !tbaa !12
  %conv1101 = zext i8 %227 to i32
  %228 = load i8, i8* %arrayidx982, align 1, !tbaa !12
  %conv1109 = zext i8 %228 to i32
  %229 = load i8, i8* %arrayidx816, align 1, !tbaa !12
  %conv1117 = zext i8 %229 to i32
  %230 = load i8, i8* %arrayidx855, align 1, !tbaa !12
  %conv1124 = zext i8 %230 to i32
  %231 = load i8, i8* %arrayidx892, align 1, !tbaa !12
  %conv1131 = zext i8 %231 to i32
  %232 = load i8, i8* %arrayidx928, align 1, !tbaa !12
  %conv1139 = zext i8 %232 to i32
  %233 = load i8, i8* %arrayidx967, align 1, !tbaa !12
  %conv1147 = zext i8 %233 to i32
  %factor = shl i32 %sub1071, 1
  %add1132.neg = add nuw nsw i32 %conv1086, %conv1078
  %add1140.neg = add i32 %add1132.neg, %factor
  %add1148.neg = add i32 %add1140.neg, %conv1093
  %add1079 = add i32 %add1148.neg, %conv1101
  %add1087 = add i32 %add1079, %conv1109
  %add1094 = sub i32 %add1087, %conv1117
  %add1102 = sub i32 %add1094, %conv1124
  %add1110 = sub i32 %add1102, %conv1131
  %sub1149 = sub i32 %add1110, %conv1139
  %add1150 = sub i32 %sub1149, %conv1147
  %234 = load i8, i8* %arrayidx974, align 1, !tbaa !12
  %conv1171 = zext i8 %234 to i32
  %235 = load i8, i8* %arrayidx823, align 1, !tbaa !12
  %conv1209 = zext i8 %235 to i32
  %add1203.neg = sub nsw i32 %conv1031, %conv1001
  %add1210.neg = sub nsw i32 %add1203.neg, %conv1039
  %add1218.neg = add nsw i32 %add1210.neg, %conv1069
  %add1226.neg = sub nsw i32 %add1218.neg, %conv1078
  %add1165 = add nsw i32 %add1226.neg, %conv1109
  %add1172 = sub nsw i32 %add1165, %conv1117
  %add1180 = add i32 %add1172, %conv1147
  %add1188 = add i32 %add1180, %conv1171
  %sub1227 = sub i32 %add1188, %conv1209
  %236 = load i8, i8* %arrayidx935, align 1, !tbaa !12
  %conv1249 = zext i8 %236 to i32
  %237 = load i8, i8* %arrayidx862, align 1, !tbaa !12
  %conv1287 = zext i8 %237 to i32
  %factor2040 = shl i32 %sub1227, 1
  %add1288.neg = sub nsw i32 %conv1023, %conv1008
  %add1296.neg = sub nsw i32 %add1288.neg, %conv1046
  %add1304.neg = add nsw i32 %add1296.neg, %conv1061
  %add1235 = sub nsw i32 %add1304.neg, %conv1086
  %add1243 = add nsw i32 %add1235, %conv1101
  %add1250 = sub nsw i32 %add1243, %conv1124
  %add1258 = add i32 %add1250, %conv1139
  %add1266 = add i32 %add1258, %conv1249
  %sub1305 = sub i32 %add1266, %conv1287
  %add1306 = add i32 %sub1305, %factor2040
  %div1307 = sdiv i32 %add1150, 15
  %dx = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom796, i32 3
  store i32 %div1307, i32* %dx, align 4, !tbaa !17
  %div1310 = sdiv i32 %add1306, 15
  %dy = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom796, i32 4
  store i32 %div1310, i32* %dy, align 4, !tbaa !18
  %inc1313 = add nsw i32 %n.12045, 1
  %cmp1314 = icmp eq i32 %inc1313, 15000
  br i1 %cmp1314, label %if.then1316, label %for.inc1320

if.then1316:                                      ; preds = %if.then795
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %239 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %238) #9
  tail call void @exit(i32 1) #8
  unreachable

for.inc1320:                                      ; preds = %land.lhs.true786, %land.lhs.true777, %land.lhs.true768, %land.lhs.true760, %land.lhs.true751, %land.lhs.true742, %land.lhs.true733, %land.lhs.true724, %land.lhs.true715, %land.lhs.true706, %land.lhs.true698, %land.lhs.true689, %land.lhs.true680, %land.lhs.true671, %land.lhs.true662, %land.lhs.true653, %land.lhs.true644, %land.lhs.true636, %land.lhs.true627, %land.lhs.true618, %land.lhs.true609, %land.lhs.true601, %land.lhs.true593, %land.lhs.true585, %for.body369, %if.then795, %land.lhs.true577, %land.lhs.true569, %land.lhs.true561, %land.lhs.true552, %land.lhs.true543, %land.lhs.true534, %land.lhs.true526, %land.lhs.true517, %land.lhs.true508, %land.lhs.true499, %land.lhs.true490, %land.lhs.true481, %land.lhs.true472, %land.lhs.true464, %land.lhs.true455, %land.lhs.true446, %land.lhs.true437, %land.lhs.true428, %land.lhs.true419, %land.lhs.true410, %land.lhs.true402, %land.lhs.true393, %land.lhs.true, %if.then376
  %n.2 = phi i32 [ %inc1313, %if.then795 ], [ %n.12045, %land.lhs.true786 ], [ %n.12045, %land.lhs.true777 ], [ %n.12045, %land.lhs.true768 ], [ %n.12045, %land.lhs.true760 ], [ %n.12045, %land.lhs.true751 ], [ %n.12045, %land.lhs.true742 ], [ %n.12045, %land.lhs.true733 ], [ %n.12045, %land.lhs.true724 ], [ %n.12045, %land.lhs.true715 ], [ %n.12045, %land.lhs.true706 ], [ %n.12045, %land.lhs.true698 ], [ %n.12045, %land.lhs.true689 ], [ %n.12045, %land.lhs.true680 ], [ %n.12045, %land.lhs.true671 ], [ %n.12045, %land.lhs.true662 ], [ %n.12045, %land.lhs.true653 ], [ %n.12045, %land.lhs.true644 ], [ %n.12045, %land.lhs.true636 ], [ %n.12045, %land.lhs.true627 ], [ %n.12045, %land.lhs.true618 ], [ %n.12045, %land.lhs.true609 ], [ %n.12045, %land.lhs.true601 ], [ %n.12045, %land.lhs.true593 ], [ %n.12045, %land.lhs.true585 ], [ %n.12045, %land.lhs.true577 ], [ %n.12045, %land.lhs.true569 ], [ %n.12045, %land.lhs.true561 ], [ %n.12045, %land.lhs.true552 ], [ %n.12045, %land.lhs.true543 ], [ %n.12045, %land.lhs.true534 ], [ %n.12045, %land.lhs.true526 ], [ %n.12045, %land.lhs.true517 ], [ %n.12045, %land.lhs.true508 ], [ %n.12045, %land.lhs.true499 ], [ %n.12045, %land.lhs.true490 ], [ %n.12045, %land.lhs.true481 ], [ %n.12045, %land.lhs.true472 ], [ %n.12045, %land.lhs.true464 ], [ %n.12045, %land.lhs.true455 ], [ %n.12045, %land.lhs.true446 ], [ %n.12045, %land.lhs.true437 ], [ %n.12045, %land.lhs.true428 ], [ %n.12045, %land.lhs.true419 ], [ %n.12045, %land.lhs.true410 ], [ %n.12045, %land.lhs.true402 ], [ %n.12045, %land.lhs.true393 ], [ %n.12045, %land.lhs.true ], [ %n.12045, %if.then376 ], [ %n.12045, %for.body369 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc1321 = add nuw nsw i32 %j.12044, 1
  %cmp367 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp367, label %for.body369, label %for.inc1323.loopexit

for.inc1323.loopexit:                             ; preds = %for.inc1320
  %n.2.lcssa = phi i32 [ %n.2, %for.inc1320 ]
  br label %for.inc1323

for.inc1323:                                      ; preds = %for.inc1323.loopexit, %for.cond365.preheader.for.inc1323_crit_edge
  %indvars.iv.next2100.pre-phi = phi i64 [ %.pre, %for.cond365.preheader.for.inc1323_crit_edge ], [ %89, %for.inc1323.loopexit ]
  %n.1.lcssa = phi i32 [ %n.02049, %for.cond365.preheader.for.inc1323_crit_edge ], [ %n.2.lcssa, %for.inc1323.loopexit ]
  %cmp362 = icmp slt i64 %indvars.iv.next2100.pre-phi, %8
  br i1 %cmp362, label %for.cond365.preheader, label %for.end1325.loopexit

for.end1325.loopexit:                             ; preds = %for.inc1323
  %n.1.lcssa.lcssa = phi i32 [ %n.1.lcssa, %for.inc1323 ]
  br label %for.end1325

for.end1325:                                      ; preds = %for.end1325.loopexit, %entry, %for.cond360.preheader
  %n.0.lcssa = phi i32 [ 0, %for.cond360.preheader ], [ 0, %entry ], [ %n.1.lcssa.lcssa, %for.end1325.loopexit ]
  %idxprom1326 = sext i32 %n.0.lcssa to i64
  %info1328 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1326, i32 2
  store i32 7, i32* %info1328, align 4, !tbaa !13
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #3 {
entry:
  %in = alloca i8*, align 8
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %corner_list = alloca [15000 x %struct.anon], align 16
  %0 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #7
  %1 = bitcast i32* %x_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #7
  %2 = bitcast i32* %y_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #7
  %3 = bitcast [15000 x %struct.anon]* %corner_list to i8*
  call void @llvm.lifetime.start(i64 360000, i8* %3) #7
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @usage()
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  call void @get_image(i8* %4, i8** nonnull %in, i32* nonnull %x_size, i32* nonnull %y_size)
  %cmp1310 = icmp sgt i32 %argc, 3
  br i1 %cmp1310, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end39
  %mode.0319 = phi i32 [ %mode.1, %if.end39 ], [ 0, %while.body.preheader ]
  %dt.0318 = phi float [ %dt.1, %if.end39 ], [ 4.000000e+00, %while.body.preheader ]
  %susan_quick.0317 = phi i32 [ %susan_quick.1, %if.end39 ], [ 0, %while.body.preheader ]
  %drawing_mode.0316 = phi i32 [ %drawing_mode.1, %if.end39 ], [ 0, %while.body.preheader ]
  %three_by_three.0315 = phi i32 [ %three_by_three.1, %if.end39 ], [ 0, %while.body.preheader ]
  %thin_post_proc.0314 = phi i32 [ %thin_post_proc.1, %if.end39 ], [ 1, %while.body.preheader ]
  %principle.0313 = phi i32 [ %principle.1, %if.end39 ], [ 0, %while.body.preheader ]
  %bt.0312 = phi i32 [ %bt.1, %if.end39 ], [ 20, %while.body.preheader ]
  %argindex.0311 = phi i32 [ %inc40, %if.end39 ], [ 3, %while.body.preheader ]
  %idxprom = sext i32 %argindex.0311 to i64
  %arrayidx2 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom
  %5 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  %6 = load i8, i8* %5, align 1, !tbaa !12
  %cmp3 = icmp eq i8 %6, 45
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i64 1
  %7 = load i8, i8* %incdec.ptr, align 1, !tbaa !12
  %conv6 = sext i8 %7 to i32
  switch i32 %conv6, label %if.end39 [
    i32 115, label %sw.bb
    i32 101, label %sw.bb7
    i32 99, label %sw.bb8
    i32 112, label %sw.bb9
    i32 110, label %sw.bb10
    i32 98, label %sw.bb11
    i32 51, label %sw.bb12
    i32 113, label %sw.bb13
    i32 100, label %sw.bb14
    i32 116, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.then5
  br label %if.end39

sw.bb7:                                           ; preds = %if.then5
  br label %if.end39

sw.bb8:                                           ; preds = %if.then5
  br label %if.end39

sw.bb9:                                           ; preds = %if.then5
  br label %if.end39

sw.bb10:                                          ; preds = %if.then5
  br label %if.end39

sw.bb11:                                          ; preds = %if.then5
  br label %if.end39

sw.bb12:                                          ; preds = %if.then5
  br label %if.end39

sw.bb13:                                          ; preds = %if.then5
  br label %if.end39

sw.bb14:                                          ; preds = %if.then5
  %inc = add nsw i32 %argindex.0311, 1
  %cmp15 = icmp slt i32 %inc, %argc
  br i1 %cmp15, label %if.end19, label %if.then17

if.then17:                                        ; preds = %sw.bb14
  %puts155 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @str.47, i64 0, i64 0))
  tail call void @exit(i32 0) #8
  unreachable

if.end19:                                         ; preds = %sw.bb14
  %idxprom20 = sext i32 %inc to i64
  %arrayidx21 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom20
  %8 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  %call.i = tail call double @strtod(i8* nocapture nonnull %8, i8** null) #7
  %conv23 = fptrunc double %call.i to float
  %cmp24 = fcmp olt float %conv23, 0.000000e+00
  br i1 %cmp24, label %if.then26, label %if.end39

if.then26:                                        ; preds = %if.end19
  br label %if.end39

sw.bb28:                                          ; preds = %if.then5
  %inc29 = add nsw i32 %argindex.0311, 1
  %cmp30 = icmp slt i32 %inc29, %argc
  br i1 %cmp30, label %if.end34, label %if.then32

if.then32:                                        ; preds = %sw.bb28
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @str.46, i64 0, i64 0))
  tail call void @exit(i32 0) #8
  unreachable

if.end34:                                         ; preds = %sw.bb28
  %idxprom35 = sext i32 %inc29 to i64
  %arrayidx36 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom35
  %9 = load i8*, i8** %arrayidx36, align 8, !tbaa !1
  %call.i156 = tail call i64 @strtol(i8* nocapture nonnull %9, i8** null, i32 10) #7
  %conv.i = trunc i64 %call.i156 to i32
  br label %if.end39

if.else:                                          ; preds = %while.body
  %call38 = tail call i32 @usage()
  unreachable

if.end39:                                         ; preds = %sw.bb, %sw.bb7, %sw.bb8, %sw.bb9, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %if.end34, %if.then5, %if.then26, %if.end19
  %argindex.1 = phi i32 [ %argindex.0311, %if.then5 ], [ %inc29, %if.end34 ], [ %inc, %if.then26 ], [ %inc, %if.end19 ], [ %argindex.0311, %sw.bb13 ], [ %argindex.0311, %sw.bb12 ], [ %argindex.0311, %sw.bb11 ], [ %argindex.0311, %sw.bb10 ], [ %argindex.0311, %sw.bb9 ], [ %argindex.0311, %sw.bb8 ], [ %argindex.0311, %sw.bb7 ], [ %argindex.0311, %sw.bb ]
  %bt.1 = phi i32 [ %bt.0312, %if.then5 ], [ %conv.i, %if.end34 ], [ %bt.0312, %if.then26 ], [ %bt.0312, %if.end19 ], [ %bt.0312, %sw.bb13 ], [ %bt.0312, %sw.bb12 ], [ %bt.0312, %sw.bb11 ], [ %bt.0312, %sw.bb10 ], [ %bt.0312, %sw.bb9 ], [ %bt.0312, %sw.bb8 ], [ %bt.0312, %sw.bb7 ], [ %bt.0312, %sw.bb ]
  %principle.1 = phi i32 [ %principle.0313, %if.then5 ], [ %principle.0313, %if.end34 ], [ %principle.0313, %if.then26 ], [ %principle.0313, %if.end19 ], [ %principle.0313, %sw.bb13 ], [ %principle.0313, %sw.bb12 ], [ %principle.0313, %sw.bb11 ], [ %principle.0313, %sw.bb10 ], [ 1, %sw.bb9 ], [ %principle.0313, %sw.bb8 ], [ %principle.0313, %sw.bb7 ], [ %principle.0313, %sw.bb ]
  %thin_post_proc.1 = phi i32 [ %thin_post_proc.0314, %if.then5 ], [ %thin_post_proc.0314, %if.end34 ], [ %thin_post_proc.0314, %if.then26 ], [ %thin_post_proc.0314, %if.end19 ], [ %thin_post_proc.0314, %sw.bb13 ], [ %thin_post_proc.0314, %sw.bb12 ], [ %thin_post_proc.0314, %sw.bb11 ], [ 0, %sw.bb10 ], [ %thin_post_proc.0314, %sw.bb9 ], [ %thin_post_proc.0314, %sw.bb8 ], [ %thin_post_proc.0314, %sw.bb7 ], [ %thin_post_proc.0314, %sw.bb ]
  %three_by_three.1 = phi i32 [ %three_by_three.0315, %if.then5 ], [ %three_by_three.0315, %if.end34 ], [ 1, %if.then26 ], [ %three_by_three.0315, %if.end19 ], [ %three_by_three.0315, %sw.bb13 ], [ 1, %sw.bb12 ], [ %three_by_three.0315, %sw.bb11 ], [ %three_by_three.0315, %sw.bb10 ], [ %three_by_three.0315, %sw.bb9 ], [ %three_by_three.0315, %sw.bb8 ], [ %three_by_three.0315, %sw.bb7 ], [ %three_by_three.0315, %sw.bb ]
  %drawing_mode.1 = phi i32 [ %drawing_mode.0316, %if.then5 ], [ %drawing_mode.0316, %if.end34 ], [ %drawing_mode.0316, %if.then26 ], [ %drawing_mode.0316, %if.end19 ], [ %drawing_mode.0316, %sw.bb13 ], [ %drawing_mode.0316, %sw.bb12 ], [ 1, %sw.bb11 ], [ %drawing_mode.0316, %sw.bb10 ], [ %drawing_mode.0316, %sw.bb9 ], [ %drawing_mode.0316, %sw.bb8 ], [ %drawing_mode.0316, %sw.bb7 ], [ %drawing_mode.0316, %sw.bb ]
  %susan_quick.1 = phi i32 [ %susan_quick.0317, %if.then5 ], [ %susan_quick.0317, %if.end34 ], [ %susan_quick.0317, %if.then26 ], [ %susan_quick.0317, %if.end19 ], [ 1, %sw.bb13 ], [ %susan_quick.0317, %sw.bb12 ], [ %susan_quick.0317, %sw.bb11 ], [ %susan_quick.0317, %sw.bb10 ], [ %susan_quick.0317, %sw.bb9 ], [ %susan_quick.0317, %sw.bb8 ], [ %susan_quick.0317, %sw.bb7 ], [ %susan_quick.0317, %sw.bb ]
  %dt.1 = phi float [ %dt.0318, %if.then5 ], [ %dt.0318, %if.end34 ], [ %conv23, %if.then26 ], [ %conv23, %if.end19 ], [ %dt.0318, %sw.bb13 ], [ %dt.0318, %sw.bb12 ], [ %dt.0318, %sw.bb11 ], [ %dt.0318, %sw.bb10 ], [ %dt.0318, %sw.bb9 ], [ %dt.0318, %sw.bb8 ], [ %dt.0318, %sw.bb7 ], [ %dt.0318, %sw.bb ]
  %mode.1 = phi i32 [ %mode.0319, %if.then5 ], [ %mode.0319, %if.end34 ], [ %mode.0319, %if.then26 ], [ %mode.0319, %if.end19 ], [ %mode.0319, %sw.bb13 ], [ %mode.0319, %sw.bb12 ], [ %mode.0319, %sw.bb11 ], [ %mode.0319, %sw.bb10 ], [ %mode.0319, %sw.bb9 ], [ 2, %sw.bb8 ], [ 1, %sw.bb7 ], [ 0, %sw.bb ]
  %inc40 = add nsw i32 %argindex.1, 1
  %cmp1 = icmp slt i32 %inc40, %argc
  br i1 %cmp1, label %while.body, label %while.end.loopexit

while.end.loopexit:                               ; preds = %if.end39
  %mode.1.lcssa = phi i32 [ %mode.1, %if.end39 ]
  %dt.1.lcssa = phi float [ %dt.1, %if.end39 ]
  %susan_quick.1.lcssa = phi i32 [ %susan_quick.1, %if.end39 ]
  %drawing_mode.1.lcssa = phi i32 [ %drawing_mode.1, %if.end39 ]
  %three_by_three.1.lcssa = phi i32 [ %three_by_three.1, %if.end39 ]
  %thin_post_proc.1.lcssa = phi i32 [ %thin_post_proc.1, %if.end39 ]
  %principle.1.lcssa = phi i32 [ %principle.1, %if.end39 ]
  %bt.1.lcssa = phi i32 [ %bt.1, %if.end39 ]
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %mode.0.lcssa = phi i32 [ 0, %if.end ], [ %mode.1.lcssa, %while.end.loopexit ]
  %dt.0.lcssa = phi float [ 4.000000e+00, %if.end ], [ %dt.1.lcssa, %while.end.loopexit ]
  %susan_quick.0.lcssa = phi i32 [ 0, %if.end ], [ %susan_quick.1.lcssa, %while.end.loopexit ]
  %drawing_mode.0.lcssa = phi i32 [ 0, %if.end ], [ %drawing_mode.1.lcssa, %while.end.loopexit ]
  %three_by_three.0.lcssa = phi i32 [ 0, %if.end ], [ %three_by_three.1.lcssa, %while.end.loopexit ]
  %thin_post_proc.0.lcssa = phi i32 [ 1, %if.end ], [ %thin_post_proc.1.lcssa, %while.end.loopexit ]
  %principle.0.lcssa = phi i32 [ 0, %if.end ], [ %principle.1.lcssa, %while.end.loopexit ]
  %bt.0.lcssa = phi i32 [ 20, %if.end ], [ %bt.1.lcssa, %while.end.loopexit ]
  %cmp41 = icmp eq i32 %principle.0.lcssa, 1
  %cmp43 = icmp eq i32 %mode.0.lcssa, 0
  %or.cond = and i1 %cmp41, %cmp43
  %.mode.0 = select i1 %or.cond, i32 1, i32 %mode.0.lcssa
  switch i32 %.mode.0, label %while.end.sw.epilog101_crit_edge [
    i32 0, label %sw.bb47
    i32 1, label %sw.bb49
    i32 2, label %sw.bb80
  ]

while.end.sw.epilog101_crit_edge:                 ; preds = %while.end
  %.pre = load i8*, i8** %in, align 8, !tbaa !1
  %.pre341 = load i32, i32* %x_size, align 4, !tbaa !5
  %.pre342 = load i32, i32* %y_size, align 4, !tbaa !5
  br label %sw.epilog101

sw.bb47:                                          ; preds = %while.end
  %call.i157 = tail call noalias i8* @malloc(i64 516) #7
  %add.ptr.i = getelementptr inbounds i8, i8* %call.i157, i64 258
  %conv1.i = sitofp i32 %bt.0.lcssa to float
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %sw.bb47
  %indvars.iv.i = phi i64 [ -256, %sw.bb47 ], [ %indvars.iv.next.i, %for.body.i ]
  %10 = trunc i64 %indvars.iv.i to i32
  %conv.i158 = sitofp i32 %10 to float
  %div.i = fdiv float %conv.i158, %conv1.i
  %mul.i = fmul float %div.i, %div.i
  %sub.i = fsub float -0.000000e+00, %mul.i
  %conv6.i = fpext float %sub.i to double
  %call7.i = tail call double @exp(double %conv6.i) #7
  %mul8.i = fmul double %call7.i, 1.000000e+02
  %conv9.i = fptrunc double %mul8.i to float
  %conv10.i = fptoui float %conv9.i to i8
  %add.ptr11.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 %indvars.iv.i
  store i8 %conv10.i, i8* %add.ptr11.i, align 1, !tbaa !12
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 257
  br i1 %exitcond.i, label %setup_brightness_lut.exit, label %for.body.i

setup_brightness_lut.exit:                        ; preds = %for.body.i
  %11 = load i8*, i8** %in, align 8, !tbaa !1
  %conv48 = fpext float %dt.0.lcssa to double
  %12 = load i32, i32* %x_size, align 4, !tbaa !5
  %13 = load i32, i32* %y_size, align 4, !tbaa !5
  tail call void @susan_smoothing(i32 %three_by_three.0.lcssa, i8* %11, double %conv48, i32 %12, i32 %13, i8* nonnull %add.ptr.i)
  br label %sw.epilog101

sw.bb49:                                          ; preds = %while.end
  %14 = load i32, i32* %x_size, align 4, !tbaa !5
  %15 = load i32, i32* %y_size, align 4, !tbaa !5
  %mul = mul i32 %15, %14
  %conv50 = sext i32 %mul to i64
  %mul51 = shl nsw i64 %conv50, 2
  %call52 = tail call noalias i8* @malloc(i64 %mul51) #7
  %call.i159 = tail call noalias i8* @malloc(i64 516) #7
  %add.ptr.i160 = getelementptr inbounds i8, i8* %call.i159, i64 258
  %conv1.i161 = sitofp i32 %bt.0.lcssa to float
  br label %for.body.i177

for.body.i177:                                    ; preds = %for.body.i177, %sw.bb49
  %indvars.iv.i162 = phi i64 [ -256, %sw.bb49 ], [ %indvars.iv.next.i175, %for.body.i177 ]
  %16 = trunc i64 %indvars.iv.i162 to i32
  %conv.i163 = sitofp i32 %16 to float
  %div.i164 = fdiv float %conv.i163, %conv1.i161
  %mul.i165 = fmul float %div.i164, %div.i164
  %mul4.i166 = fmul float %mul.i165, %mul.i165
  %mul5.i167 = fmul float %mul.i165, %mul4.i166
  %sub.i168 = fsub float -0.000000e+00, %mul5.i167
  %conv6.i169 = fpext float %sub.i168 to double
  %call7.i170 = tail call double @exp(double %conv6.i169) #7
  %mul8.i171 = fmul double %call7.i170, 1.000000e+02
  %conv9.i172 = fptrunc double %mul8.i171 to float
  %conv10.i173 = fptoui float %conv9.i172 to i8
  %add.ptr11.i174 = getelementptr inbounds i8, i8* %add.ptr.i160, i64 %indvars.iv.i162
  store i8 %conv10.i173, i8* %add.ptr11.i174, align 1, !tbaa !12
  %indvars.iv.next.i175 = add nsw i64 %indvars.iv.i162, 1
  %exitcond.i176 = icmp eq i64 %indvars.iv.next.i175, 257
  br i1 %exitcond.i176, label %setup_brightness_lut.exit178, label %for.body.i177

setup_brightness_lut.exit178:                     ; preds = %for.body.i177
  %17 = bitcast i8* %call52 to i32*
  %tobool = icmp eq i32 %principle.0.lcssa, 0
  br i1 %tobool, label %if.else62, label %if.then53

if.then53:                                        ; preds = %setup_brightness_lut.exit178
  %tobool54 = icmp eq i32 %three_by_three.0.lcssa, 0
  %18 = load i8*, i8** %in, align 8, !tbaa !1
  br i1 %tobool54, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.then53
  %call56 = tail call i32 @susan_principle_small(i8* %18, i32* %17, i8* nonnull %add.ptr.i160, i32 undef, i32 %14, i32 %15)
  br label %if.end59

if.else57:                                        ; preds = %if.then53
  %call58 = tail call i32 @susan_principle(i8* %18, i32* %17, i8* nonnull %add.ptr.i160, i32 2650, i32 %14, i32 %15)
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  %19 = load i32, i32* %17, align 4, !tbaa !5
  %cmp49.i = icmp sgt i32 %mul, 0
  br i1 %cmp49.i, label %for.body.i179.preheader, label %sw.epilog101

for.body.i179.preheader:                          ; preds = %if.end59
  %exitcond57.i293 = icmp eq i32 %mul, 1
  br i1 %exitcond57.i293, label %sw.epilog101, label %for.body.for.body_crit_edge.i.preheader

for.body.for.body_crit_edge.i.preheader:          ; preds = %for.body.i179.preheader
  %20 = mul i32 %15, %14
  %21 = add i32 %20, -2
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1
  %min.iters.check385 = icmp ult i64 %23, 8
  br i1 %min.iters.check385, label %for.body.for.body_crit_edge.i.preheader432, label %min.iters.checked386

min.iters.checked386:                             ; preds = %for.body.for.body_crit_edge.i.preheader
  %n.vec388 = and i64 %23, 8589934584
  %cmp.zero389 = icmp eq i64 %n.vec388, 0
  %ind.end394 = or i64 %n.vec388, 1
  %minmax.ident.splatinsert409 = insertelement <4 x i32> undef, i32 %19, i32 0
  %minmax.ident.splat410 = shufflevector <4 x i32> %minmax.ident.splatinsert409, <4 x i32> undef, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert420 = insertelement <4 x i32> undef, i32 %19, i32 0
  %minmax.ident.splat421 = shufflevector <4 x i32> %minmax.ident.splatinsert420, <4 x i32> undef, <4 x i32> zeroinitializer
  br i1 %cmp.zero389, label %for.body.for.body_crit_edge.i.preheader432, label %vector.body382.preheader

vector.body382.preheader:                         ; preds = %min.iters.checked386
  %24 = mul i32 %15, %14
  %25 = add i32 %24, -2
  %26 = zext i32 %25 to i64
  %27 = add nuw nsw i64 %26, 1
  %28 = and i64 %27, 8589934584
  %29 = add nsw i64 %28, -8
  %30 = lshr exact i64 %29, 3
  %31 = and i64 %30, 1
  %lcmp.mod450 = icmp eq i64 %31, 0
  br i1 %lcmp.mod450, label %vector.body382.prol, label %vector.body382.preheader.split

vector.body382.prol:                              ; preds = %vector.body382.preheader
  %32 = getelementptr inbounds i8, i8* %call52, i64 4
  %33 = bitcast i8* %32 to <4 x i32>*
  %wide.load405.prol = load <4 x i32>, <4 x i32>* %33, align 4, !tbaa !5
  %34 = getelementptr i8, i8* %call52, i64 20
  %35 = bitcast i8* %34 to <4 x i32>*
  %wide.load406.prol = load <4 x i32>, <4 x i32>* %35, align 4, !tbaa !5
  %36 = icmp sgt <4 x i32> %wide.load405.prol, %minmax.ident.splat421
  %37 = icmp sgt <4 x i32> %wide.load406.prol, %minmax.ident.splat421
  %38 = select <4 x i1> %36, <4 x i32> %wide.load405.prol, <4 x i32> %minmax.ident.splat421
  %39 = select <4 x i1> %37, <4 x i32> %wide.load406.prol, <4 x i32> %minmax.ident.splat421
  %40 = icmp slt <4 x i32> %wide.load405.prol, %minmax.ident.splat410
  %41 = icmp slt <4 x i32> %wide.load406.prol, %minmax.ident.splat410
  %42 = select <4 x i1> %40, <4 x i32> %wide.load405.prol, <4 x i32> %minmax.ident.splat410
  %43 = select <4 x i1> %41, <4 x i32> %wide.load406.prol, <4 x i32> %minmax.ident.splat410
  br label %vector.body382.preheader.split

vector.body382.preheader.split:                   ; preds = %vector.body382.prol, %vector.body382.preheader
  %.lcssa440.unr = phi <4 x i32> [ undef, %vector.body382.preheader ], [ %43, %vector.body382.prol ]
  %.lcssa439.unr = phi <4 x i32> [ undef, %vector.body382.preheader ], [ %42, %vector.body382.prol ]
  %.lcssa438.unr = phi <4 x i32> [ undef, %vector.body382.preheader ], [ %39, %vector.body382.prol ]
  %.lcssa.unr = phi <4 x i32> [ undef, %vector.body382.preheader ], [ %38, %vector.body382.prol ]
  %index391.unr = phi i64 [ 0, %vector.body382.preheader ], [ 8, %vector.body382.prol ]
  %vec.phi401.unr = phi <4 x i32> [ %minmax.ident.splat410, %vector.body382.preheader ], [ %42, %vector.body382.prol ]
  %vec.phi402.unr = phi <4 x i32> [ %minmax.ident.splat410, %vector.body382.preheader ], [ %43, %vector.body382.prol ]
  %vec.phi403.unr = phi <4 x i32> [ %minmax.ident.splat421, %vector.body382.preheader ], [ %38, %vector.body382.prol ]
  %vec.phi404.unr = phi <4 x i32> [ %minmax.ident.splat421, %vector.body382.preheader ], [ %39, %vector.body382.prol ]
  %44 = icmp eq i64 %30, 0
  br i1 %44, label %middle.block383, label %vector.body382.preheader.split.split

vector.body382.preheader.split.split:             ; preds = %vector.body382.preheader.split
  br label %vector.body382

vector.body382:                                   ; preds = %vector.body382, %vector.body382.preheader.split.split
  %index391 = phi i64 [ %index391.unr, %vector.body382.preheader.split.split ], [ %index.next392.1, %vector.body382 ]
  %vec.phi401 = phi <4 x i32> [ %vec.phi401.unr, %vector.body382.preheader.split.split ], [ %67, %vector.body382 ]
  %vec.phi402 = phi <4 x i32> [ %vec.phi402.unr, %vector.body382.preheader.split.split ], [ %68, %vector.body382 ]
  %vec.phi403 = phi <4 x i32> [ %vec.phi403.unr, %vector.body382.preheader.split.split ], [ %63, %vector.body382 ]
  %vec.phi404 = phi <4 x i32> [ %vec.phi404.unr, %vector.body382.preheader.split.split ], [ %64, %vector.body382 ]
  %offset.idx396 = or i64 %index391, 1
  %45 = getelementptr inbounds i32, i32* %17, i64 %offset.idx396
  %46 = bitcast i32* %45 to <4 x i32>*
  %wide.load405 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !5
  %47 = getelementptr i32, i32* %45, i64 4
  %48 = bitcast i32* %47 to <4 x i32>*
  %wide.load406 = load <4 x i32>, <4 x i32>* %48, align 4, !tbaa !5
  %49 = icmp sgt <4 x i32> %wide.load405, %vec.phi403
  %50 = icmp sgt <4 x i32> %wide.load406, %vec.phi404
  %51 = select <4 x i1> %49, <4 x i32> %wide.load405, <4 x i32> %vec.phi403
  %52 = select <4 x i1> %50, <4 x i32> %wide.load406, <4 x i32> %vec.phi404
  %53 = icmp slt <4 x i32> %wide.load405, %vec.phi401
  %54 = icmp slt <4 x i32> %wide.load406, %vec.phi402
  %55 = select <4 x i1> %53, <4 x i32> %wide.load405, <4 x i32> %vec.phi401
  %56 = select <4 x i1> %54, <4 x i32> %wide.load406, <4 x i32> %vec.phi402
  %index.next392 = add i64 %index391, 8
  %offset.idx396.1 = or i64 %index.next392, 1
  %57 = getelementptr inbounds i32, i32* %17, i64 %offset.idx396.1
  %58 = bitcast i32* %57 to <4 x i32>*
  %wide.load405.1 = load <4 x i32>, <4 x i32>* %58, align 4, !tbaa !5
  %59 = getelementptr i32, i32* %57, i64 4
  %60 = bitcast i32* %59 to <4 x i32>*
  %wide.load406.1 = load <4 x i32>, <4 x i32>* %60, align 4, !tbaa !5
  %61 = icmp sgt <4 x i32> %wide.load405.1, %51
  %62 = icmp sgt <4 x i32> %wide.load406.1, %52
  %63 = select <4 x i1> %61, <4 x i32> %wide.load405.1, <4 x i32> %51
  %64 = select <4 x i1> %62, <4 x i32> %wide.load406.1, <4 x i32> %52
  %65 = icmp slt <4 x i32> %wide.load405.1, %55
  %66 = icmp slt <4 x i32> %wide.load406.1, %56
  %67 = select <4 x i1> %65, <4 x i32> %wide.load405.1, <4 x i32> %55
  %68 = select <4 x i1> %66, <4 x i32> %wide.load406.1, <4 x i32> %56
  %index.next392.1 = add i64 %index391, 16
  %69 = icmp eq i64 %index.next392.1, %n.vec388
  br i1 %69, label %middle.block383.unr-lcssa, label %vector.body382, !llvm.loop !20

middle.block383.unr-lcssa:                        ; preds = %vector.body382
  %.lcssa460 = phi <4 x i32> [ %68, %vector.body382 ]
  %.lcssa459 = phi <4 x i32> [ %67, %vector.body382 ]
  %.lcssa458 = phi <4 x i32> [ %64, %vector.body382 ]
  %.lcssa457 = phi <4 x i32> [ %63, %vector.body382 ]
  br label %middle.block383

middle.block383:                                  ; preds = %vector.body382.preheader.split, %middle.block383.unr-lcssa
  %.lcssa440 = phi <4 x i32> [ %.lcssa440.unr, %vector.body382.preheader.split ], [ %.lcssa460, %middle.block383.unr-lcssa ]
  %.lcssa439 = phi <4 x i32> [ %.lcssa439.unr, %vector.body382.preheader.split ], [ %.lcssa459, %middle.block383.unr-lcssa ]
  %.lcssa438 = phi <4 x i32> [ %.lcssa438.unr, %vector.body382.preheader.split ], [ %.lcssa458, %middle.block383.unr-lcssa ]
  %.lcssa = phi <4 x i32> [ %.lcssa.unr, %vector.body382.preheader.split ], [ %.lcssa457, %middle.block383.unr-lcssa ]
  %rdx.minmax.cmp422 = icmp sgt <4 x i32> %.lcssa, %.lcssa438
  %rdx.minmax.select423 = select <4 x i1> %rdx.minmax.cmp422, <4 x i32> %.lcssa, <4 x i32> %.lcssa438
  %rdx.shuf424 = shufflevector <4 x i32> %rdx.minmax.select423, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp425 = icmp sgt <4 x i32> %rdx.minmax.select423, %rdx.shuf424
  %rdx.minmax.select426 = select <4 x i1> %rdx.minmax.cmp425, <4 x i32> %rdx.minmax.select423, <4 x i32> %rdx.shuf424
  %rdx.shuf427 = shufflevector <4 x i32> %rdx.minmax.select426, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp428 = icmp sgt <4 x i32> %rdx.minmax.select426, %rdx.shuf427
  %rdx.minmax.cmp428.elt = extractelement <4 x i1> %rdx.minmax.cmp428, i32 0
  %rdx.minmax.select426.elt = extractelement <4 x i32> %rdx.minmax.select426, i32 0
  %rdx.shuf427.elt = extractelement <4 x i32> %rdx.minmax.select426, i32 1
  %70 = select i1 %rdx.minmax.cmp428.elt, i32 %rdx.minmax.select426.elt, i32 %rdx.shuf427.elt
  %rdx.minmax.cmp411 = icmp slt <4 x i32> %.lcssa439, %.lcssa440
  %rdx.minmax.select412 = select <4 x i1> %rdx.minmax.cmp411, <4 x i32> %.lcssa439, <4 x i32> %.lcssa440
  %rdx.shuf413 = shufflevector <4 x i32> %rdx.minmax.select412, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp414 = icmp slt <4 x i32> %rdx.minmax.select412, %rdx.shuf413
  %rdx.minmax.select415 = select <4 x i1> %rdx.minmax.cmp414, <4 x i32> %rdx.minmax.select412, <4 x i32> %rdx.shuf413
  %rdx.shuf416 = shufflevector <4 x i32> %rdx.minmax.select415, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp417 = icmp slt <4 x i32> %rdx.minmax.select415, %rdx.shuf416
  %rdx.minmax.cmp417.elt = extractelement <4 x i1> %rdx.minmax.cmp417, i32 0
  %rdx.minmax.select415.elt = extractelement <4 x i32> %rdx.minmax.select415, i32 0
  %rdx.shuf416.elt = extractelement <4 x i32> %rdx.minmax.select415, i32 1
  %71 = select i1 %rdx.minmax.cmp417.elt, i32 %rdx.minmax.select415.elt, i32 %rdx.shuf416.elt
  %cmp.n395 = icmp eq i64 %23, %n.vec388
  br i1 %cmp.n395, label %for.body15.i.preheader, label %for.body.for.body_crit_edge.i.preheader432

for.body.for.body_crit_edge.i.preheader432:       ; preds = %middle.block383, %min.iters.checked386, %for.body.for.body_crit_edge.i.preheader
  %indvars.iv.next55.i296.ph = phi i64 [ 1, %min.iters.checked386 ], [ 1, %for.body.for.body_crit_edge.i.preheader ], [ %ind.end394, %middle.block383 ]
  %min_r.1.i295.ph = phi i32 [ %19, %min.iters.checked386 ], [ %19, %for.body.for.body_crit_edge.i.preheader ], [ %71, %middle.block383 ]
  %.max_r.0.i294.ph = phi i32 [ %19, %min.iters.checked386 ], [ %19, %for.body.for.body_crit_edge.i.preheader ], [ %70, %middle.block383 ]
  br label %for.body.for.body_crit_edge.i

for.body.for.body_crit_edge.i:                    ; preds = %for.body.for.body_crit_edge.i.preheader432, %for.body.for.body_crit_edge.i
  %indvars.iv.next55.i296 = phi i64 [ %indvars.iv.next55.i, %for.body.for.body_crit_edge.i ], [ %indvars.iv.next55.i296.ph, %for.body.for.body_crit_edge.i.preheader432 ]
  %min_r.1.i295 = phi i32 [ %min_r.1.i, %for.body.for.body_crit_edge.i ], [ %min_r.1.i295.ph, %for.body.for.body_crit_edge.i.preheader432 ]
  %.max_r.0.i294 = phi i32 [ %.max_r.0.i, %for.body.for.body_crit_edge.i ], [ %.max_r.0.i294.ph, %for.body.for.body_crit_edge.i.preheader432 ]
  %arrayidx2.phi.trans.insert.i = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next55.i296
  %.pre.i = load i32, i32* %arrayidx2.phi.trans.insert.i, align 4, !tbaa !5
  %cmp3.i = icmp sgt i32 %.pre.i, %.max_r.0.i294
  %.max_r.0.i = select i1 %cmp3.i, i32 %.pre.i, i32 %.max_r.0.i294
  %cmp8.i = icmp slt i32 %.pre.i, %min_r.1.i295
  %min_r.1.i = select i1 %cmp8.i, i32 %.pre.i, i32 %min_r.1.i295
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv.next55.i296, 1
  %lftr.wideiv335 = trunc i64 %indvars.iv.next55.i to i32
  %exitcond336 = icmp eq i32 %lftr.wideiv335, %mul
  br i1 %exitcond336, label %for.body15.i.preheader.loopexit, label %for.body.for.body_crit_edge.i, !llvm.loop !21

for.body15.i.preheader.loopexit:                  ; preds = %for.body.for.body_crit_edge.i
  %min_r.1.i.lcssa456 = phi i32 [ %min_r.1.i, %for.body.for.body_crit_edge.i ]
  %.max_r.0.i.lcssa455 = phi i32 [ %.max_r.0.i, %for.body.for.body_crit_edge.i ]
  br label %for.body15.i.preheader

for.body15.i.preheader:                           ; preds = %for.body15.i.preheader.loopexit, %middle.block383
  %min_r.1.i.lcssa = phi i32 [ %71, %middle.block383 ], [ %min_r.1.i.lcssa456, %for.body15.i.preheader.loopexit ]
  %.max_r.0.i.lcssa = phi i32 [ %70, %middle.block383 ], [ %.max_r.0.i.lcssa455, %for.body15.i.preheader.loopexit ]
  %sub.i180 = sub nsw i32 %.max_r.0.i.lcssa, %min_r.1.i.lcssa
  %sub18.i287 = sub nsw i32 %19, %min_r.1.i.lcssa
  %mul.i182288 = mul nsw i32 %sub18.i287, 255
  %div.i183289 = sdiv i32 %mul.i182288, %sub.i180
  %conv.i184290 = trunc i32 %div.i183289 to i8
  store i8 %conv.i184290, i8* %18, align 1, !tbaa !12
  br i1 %exitcond57.i293, label %sw.epilog101, label %for.body15.for.body15_crit_edge.i.preheader

for.body15.for.body15_crit_edge.i.preheader:      ; preds = %for.body15.i.preheader
  %72 = mul i32 %15, %14
  %73 = and i32 %72, 1
  %lcmp.mod448 = icmp eq i32 %73, 0
  br i1 %lcmp.mod448, label %for.body15.for.body15_crit_edge.i.prol, label %for.body15.for.body15_crit_edge.i.preheader.split

for.body15.for.body15_crit_edge.i.prol:           ; preds = %for.body15.for.body15_crit_edge.i.preheader
  %arrayidx17.phi.trans.insert.i.prol = getelementptr inbounds i8, i8* %call52, i64 4
  %74 = bitcast i8* %arrayidx17.phi.trans.insert.i.prol to i32*
  %.pre58.i.prol = load i32, i32* %74, align 4, !tbaa !5
  %sub18.i.prol = sub nsw i32 %.pre58.i.prol, %min_r.1.i.lcssa
  %mul.i182.prol = mul nsw i32 %sub18.i.prol, 255
  %div.i183.prol = sdiv i32 %mul.i182.prol, %sub.i180
  %conv.i184.prol = trunc i32 %div.i183.prol to i8
  %arrayidx20.i.prol = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %conv.i184.prol, i8* %arrayidx20.i.prol, align 1, !tbaa !12
  br label %for.body15.for.body15_crit_edge.i.preheader.split

for.body15.for.body15_crit_edge.i.preheader.split: ; preds = %for.body15.for.body15_crit_edge.i.prol, %for.body15.for.body15_crit_edge.i.preheader
  %indvars.iv.next.i185292.unr = phi i64 [ 1, %for.body15.for.body15_crit_edge.i.preheader ], [ 2, %for.body15.for.body15_crit_edge.i.prol ]
  %75 = icmp eq i32 %72, 2
  br i1 %75, label %sw.epilog101.loopexit431, label %for.body15.for.body15_crit_edge.i.preheader.split.split

for.body15.for.body15_crit_edge.i.preheader.split.split: ; preds = %for.body15.for.body15_crit_edge.i.preheader.split
  br label %for.body15.for.body15_crit_edge.i

for.body15.for.body15_crit_edge.i:                ; preds = %for.body15.for.body15_crit_edge.i, %for.body15.for.body15_crit_edge.i.preheader.split.split
  %indvars.iv.next.i185292 = phi i64 [ %indvars.iv.next.i185292.unr, %for.body15.for.body15_crit_edge.i.preheader.split.split ], [ %indvars.iv.next.i185.1, %for.body15.for.body15_crit_edge.i ]
  %arrayidx17.phi.trans.insert.i = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next.i185292
  %.pre58.i = load i32, i32* %arrayidx17.phi.trans.insert.i, align 4, !tbaa !5
  %sub18.i = sub nsw i32 %.pre58.i, %min_r.1.i.lcssa
  %mul.i182 = mul nsw i32 %sub18.i, 255
  %div.i183 = sdiv i32 %mul.i182, %sub.i180
  %conv.i184 = trunc i32 %div.i183 to i8
  %arrayidx20.i = getelementptr inbounds i8, i8* %18, i64 %indvars.iv.next.i185292
  store i8 %conv.i184, i8* %arrayidx20.i, align 1, !tbaa !12
  %indvars.iv.next.i185 = add nuw nsw i64 %indvars.iv.next.i185292, 1
  %arrayidx17.phi.trans.insert.i.1 = getelementptr inbounds i32, i32* %17, i64 %indvars.iv.next.i185
  %.pre58.i.1 = load i32, i32* %arrayidx17.phi.trans.insert.i.1, align 4, !tbaa !5
  %sub18.i.1 = sub nsw i32 %.pre58.i.1, %min_r.1.i.lcssa
  %mul.i182.1 = mul nsw i32 %sub18.i.1, 255
  %div.i183.1 = sdiv i32 %mul.i182.1, %sub.i180
  %conv.i184.1 = trunc i32 %div.i183.1 to i8
  %arrayidx20.i.1 = getelementptr inbounds i8, i8* %18, i64 %indvars.iv.next.i185
  store i8 %conv.i184.1, i8* %arrayidx20.i.1, align 1, !tbaa !12
  %indvars.iv.next.i185.1 = add nsw i64 %indvars.iv.next.i185292, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.i185.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %mul
  br i1 %exitcond.1, label %sw.epilog101.loopexit431.unr-lcssa, label %for.body15.for.body15_crit_edge.i

if.else62:                                        ; preds = %setup_brightness_lut.exit178
  %call65 = tail call noalias i8* @malloc(i64 %conv50) #7
  tail call void @llvm.memset.p0i8.i64(i8* %call65, i8 100, i64 %conv50, i32 1, i1 false)
  %tobool68 = icmp eq i32 %three_by_three.0.lcssa, 0
  %76 = load i8*, i8** %in, align 8, !tbaa !1
  br i1 %tobool68, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.else62
  %call70 = tail call i32 @susan_edges_small(i8* %76, i32* %17, i8* %call65, i8* nonnull %add.ptr.i160, i32 undef, i32 %14, i32 %15)
  br label %if.end73

if.else71:                                        ; preds = %if.else62
  %call72 = tail call i32 @susan_edges(i8* %76, i32* %17, i8* %call65, i8* nonnull %add.ptr.i160, i32 2650, i32 %14, i32 %15)
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  %tobool74 = icmp eq i32 %thin_post_proc.0.lcssa, 0
  br i1 %tobool74, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.end73
  %call76 = tail call i32 @susan_thin(i32* %17, i8* %call65, i32 %14, i32 %15)
  br label %if.end77

if.end77:                                         ; preds = %if.end73, %if.then75
  %cmp.i = icmp eq i32 %drawing_mode.0.lcssa, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond19.preheader.i

for.cond.preheader.i:                             ; preds = %if.end77
  %cmp170.i = icmp sgt i32 %mul, 0
  br i1 %cmp170.i, label %for.body.lr.ph.i, label %sw.epilog101

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub.ptr.rhs.cast.i = ptrtoint i8* %call65 to i64
  %idx.ext.i = sext i32 %14 to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %sub.i188 = add nsw i32 %14, -2
  %idx.ext8.i = sext i32 %sub.i188 to i64
  br label %for.body.i189

for.cond19.preheader.i.loopexit:                  ; preds = %if.end.i
  br label %for.cond19.preheader.i

for.cond19.preheader.i:                           ; preds = %for.cond19.preheader.i.loopexit, %if.end77
  %cmp2167.i = icmp sgt i32 %mul, 0
  br i1 %cmp2167.i, label %for.body23.lr.ph.i, label %sw.epilog101

for.body23.lr.ph.i:                               ; preds = %for.cond19.preheader.i
  %sub.ptr.rhs.cast29.i = ptrtoint i8* %call65 to i64
  %77 = mul i32 %15, %14
  %xtraiter = and i32 %77, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body23.lr.ph.i.split, label %for.body23.i.prol

for.body23.i.prol:                                ; preds = %for.body23.lr.ph.i
  %78 = load i8, i8* %call65, align 1, !tbaa !12
  %cmp25.i.prol = icmp ult i8 %78, 8
  br i1 %cmp25.i.prol, label %if.then27.i.prol, label %if.end32.i.prol

if.then27.i.prol:                                 ; preds = %for.body23.i.prol
  store i8 0, i8* %76, align 1, !tbaa !12
  br label %if.end32.i.prol

if.end32.i.prol:                                  ; preds = %if.then27.i.prol, %for.body23.i.prol
  %incdec.ptr33.i.prol = getelementptr inbounds i8, i8* %call65, i64 1
  br label %for.body23.lr.ph.i.split

for.body23.lr.ph.i.split:                         ; preds = %for.body23.lr.ph.i, %if.end32.i.prol
  %midp.169.i.unr = phi i8* [ %call65, %for.body23.lr.ph.i ], [ %incdec.ptr33.i.prol, %if.end32.i.prol ]
  %i.168.i.unr = phi i32 [ 0, %for.body23.lr.ph.i ], [ 1, %if.end32.i.prol ]
  %79 = icmp eq i32 %77, 1
  br i1 %79, label %sw.epilog101.loopexit, label %for.body23.lr.ph.i.split.split

for.body23.lr.ph.i.split.split:                   ; preds = %for.body23.lr.ph.i.split
  br label %for.body23.i

for.body.i189:                                    ; preds = %if.end.i, %for.body.lr.ph.i
  %midp.072.i = phi i8* [ %call65, %for.body.lr.ph.i ], [ %incdec.ptr17.i, %if.end.i ]
  %i.071.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i ]
  %80 = load i8, i8* %midp.072.i, align 1, !tbaa !12
  %cmp2.i = icmp ult i8 %80, 8
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i

if.then4.i:                                       ; preds = %for.body.i189
  %sub.ptr.lhs.cast.i = ptrtoint i8* %midp.072.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr.i190 = getelementptr inbounds i8, i8* %76, i64 %sub.ptr.sub.i
  %add.ptr5.i = getelementptr inbounds i8, i8* %add.ptr.i190, i64 %idx.neg.i
  %add.ptr6.i = getelementptr inbounds i8, i8* %add.ptr5.i, i64 -1
  %incdec.ptr.i = getelementptr inbounds i8, i8* %add.ptr6.i, i64 1
  store i8 -1, i8* %add.ptr6.i, align 1, !tbaa !12
  %incdec.ptr7.i = getelementptr inbounds i8, i8* %incdec.ptr.i, i64 1
  store i8 -1, i8* %incdec.ptr.i, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr7.i, align 1, !tbaa !12
  %add.ptr9.i = getelementptr inbounds i8, i8* %incdec.ptr7.i, i64 %idx.ext8.i
  %incdec.ptr10.i = getelementptr inbounds i8, i8* %add.ptr9.i, i64 1
  store i8 -1, i8* %add.ptr9.i, align 1, !tbaa !12
  %incdec.ptr11.i = getelementptr inbounds i8, i8* %incdec.ptr10.i, i64 1
  store i8 -1, i8* %incdec.ptr11.i, align 1, !tbaa !12
  %add.ptr14.i = getelementptr inbounds i8, i8* %incdec.ptr11.i, i64 %idx.ext8.i
  %incdec.ptr15.i = getelementptr inbounds i8, i8* %add.ptr14.i, i64 1
  store i8 -1, i8* %add.ptr14.i, align 1, !tbaa !12
  %incdec.ptr16.i = getelementptr inbounds i8, i8* %incdec.ptr15.i, i64 1
  store i8 -1, i8* %incdec.ptr15.i, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr16.i, align 1, !tbaa !12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %for.body.i189
  %incdec.ptr17.i = getelementptr inbounds i8, i8* %midp.072.i, i64 1
  %inc.i = add nuw nsw i32 %i.071.i, 1
  %exitcond73.i = icmp eq i32 %inc.i, %mul
  br i1 %exitcond73.i, label %for.cond19.preheader.i.loopexit, label %for.body.i189

for.body23.i:                                     ; preds = %if.end32.i.1, %for.body23.lr.ph.i.split.split
  %midp.169.i = phi i8* [ %midp.169.i.unr, %for.body23.lr.ph.i.split.split ], [ %incdec.ptr33.i.1, %if.end32.i.1 ]
  %i.168.i = phi i32 [ %i.168.i.unr, %for.body23.lr.ph.i.split.split ], [ %inc35.i.1, %if.end32.i.1 ]
  %81 = load i8, i8* %midp.169.i, align 1, !tbaa !12
  %cmp25.i = icmp ult i8 %81, 8
  br i1 %cmp25.i, label %if.then27.i, label %if.end32.i

if.then27.i:                                      ; preds = %for.body23.i
  %sub.ptr.lhs.cast28.i = ptrtoint i8* %midp.169.i to i64
  %sub.ptr.sub30.i = sub i64 %sub.ptr.lhs.cast28.i, %sub.ptr.rhs.cast29.i
  %add.ptr31.i = getelementptr inbounds i8, i8* %76, i64 %sub.ptr.sub30.i
  store i8 0, i8* %add.ptr31.i, align 1, !tbaa !12
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %for.body23.i
  %incdec.ptr33.i = getelementptr inbounds i8, i8* %midp.169.i, i64 1
  %82 = load i8, i8* %incdec.ptr33.i, align 1, !tbaa !12
  %cmp25.i.1 = icmp ult i8 %82, 8
  br i1 %cmp25.i.1, label %if.then27.i.1, label %if.end32.i.1

sw.bb80:                                          ; preds = %while.end
  %83 = load i32, i32* %x_size, align 4, !tbaa !5
  %84 = load i32, i32* %y_size, align 4, !tbaa !5
  %mul81 = mul i32 %84, %83
  %conv82 = sext i32 %mul81 to i64
  %mul83 = shl nsw i64 %conv82, 2
  %call84 = tail call noalias i8* @malloc(i64 %mul83) #7
  %call.i192 = tail call noalias i8* @malloc(i64 516) #7
  %add.ptr.i193 = getelementptr inbounds i8, i8* %call.i192, i64 258
  %conv1.i194 = sitofp i32 %bt.0.lcssa to float
  br label %for.body.i210

for.body.i210:                                    ; preds = %for.body.i210, %sw.bb80
  %indvars.iv.i195 = phi i64 [ -256, %sw.bb80 ], [ %indvars.iv.next.i208, %for.body.i210 ]
  %85 = trunc i64 %indvars.iv.i195 to i32
  %conv.i196 = sitofp i32 %85 to float
  %div.i197 = fdiv float %conv.i196, %conv1.i194
  %mul.i198 = fmul float %div.i197, %div.i197
  %mul4.i199 = fmul float %mul.i198, %mul.i198
  %mul5.i200 = fmul float %mul.i198, %mul4.i199
  %sub.i201 = fsub float -0.000000e+00, %mul5.i200
  %conv6.i202 = fpext float %sub.i201 to double
  %call7.i203 = tail call double @exp(double %conv6.i202) #7
  %mul8.i204 = fmul double %call7.i203, 1.000000e+02
  %conv9.i205 = fptrunc double %mul8.i204 to float
  %conv10.i206 = fptoui float %conv9.i205 to i8
  %add.ptr11.i207 = getelementptr inbounds i8, i8* %add.ptr.i193, i64 %indvars.iv.i195
  store i8 %conv10.i206, i8* %add.ptr11.i207, align 1, !tbaa !12
  %indvars.iv.next.i208 = add nsw i64 %indvars.iv.i195, 1
  %exitcond.i209 = icmp eq i64 %indvars.iv.next.i208, 257
  br i1 %exitcond.i209, label %setup_brightness_lut.exit212, label %for.body.i210

setup_brightness_lut.exit212:                     ; preds = %for.body.i210
  %86 = bitcast i8* %call84 to i32*
  %tobool85 = icmp eq i32 %principle.0.lcssa, 0
  br i1 %tobool85, label %if.else90, label %if.then86

if.then86:                                        ; preds = %setup_brightness_lut.exit212
  %87 = load i8*, i8** %in, align 8, !tbaa !1
  %call87 = tail call i32 @susan_principle(i8* %87, i32* %86, i8* nonnull %add.ptr.i193, i32 1850, i32 %83, i32 %84)
  %88 = load i32, i32* %86, align 4, !tbaa !5
  %cmp49.i213 = icmp sgt i32 %mul81, 0
  br i1 %cmp49.i213, label %for.body.i224.preheader, label %sw.epilog101

for.body.i224.preheader:                          ; preds = %if.then86
  %exitcond57.i223304 = icmp eq i32 %mul81, 1
  br i1 %exitcond57.i223304, label %sw.epilog101, label %for.body.for.body_crit_edge.i227.preheader

for.body.for.body_crit_edge.i227.preheader:       ; preds = %for.body.i224.preheader
  %89 = mul i32 %84, %83
  %90 = add i32 %89, -2
  %91 = zext i32 %90 to i64
  %92 = add nuw nsw i64 %91, 1
  %min.iters.check = icmp ult i64 %92, 8
  br i1 %min.iters.check, label %for.body.for.body_crit_edge.i227.preheader435, label %min.iters.checked

min.iters.checked:                                ; preds = %for.body.for.body_crit_edge.i227.preheader
  %n.vec = and i64 %92, 8589934584
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = or i64 %n.vec, 1
  %minmax.ident.splatinsert = insertelement <4 x i32> undef, i32 %88, i32 0
  %minmax.ident.splat = shufflevector <4 x i32> %minmax.ident.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert371 = insertelement <4 x i32> undef, i32 %88, i32 0
  %minmax.ident.splat372 = shufflevector <4 x i32> %minmax.ident.splatinsert371, <4 x i32> undef, <4 x i32> zeroinitializer
  br i1 %cmp.zero, label %for.body.for.body_crit_edge.i227.preheader435, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %93 = mul i32 %84, %83
  %94 = add i32 %93, -2
  %95 = zext i32 %94 to i64
  %96 = add nuw nsw i64 %95, 1
  %97 = and i64 %96, 8589934584
  %98 = add nsw i64 %97, -8
  %99 = lshr exact i64 %98, 3
  %100 = and i64 %99, 1
  %lcmp.mod454 = icmp eq i64 %100, 0
  br i1 %lcmp.mod454, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %101 = getelementptr inbounds i8, i8* %call84, i64 4
  %102 = bitcast i8* %101 to <4 x i32>*
  %wide.load.prol = load <4 x i32>, <4 x i32>* %102, align 4, !tbaa !5
  %103 = getelementptr i8, i8* %call84, i64 20
  %104 = bitcast i8* %103 to <4 x i32>*
  %wide.load363.prol = load <4 x i32>, <4 x i32>* %104, align 4, !tbaa !5
  %105 = icmp sgt <4 x i32> %wide.load.prol, %minmax.ident.splat372
  %106 = icmp sgt <4 x i32> %wide.load363.prol, %minmax.ident.splat372
  %107 = select <4 x i1> %105, <4 x i32> %wide.load.prol, <4 x i32> %minmax.ident.splat372
  %108 = select <4 x i1> %106, <4 x i32> %wide.load363.prol, <4 x i32> %minmax.ident.splat372
  %109 = icmp slt <4 x i32> %wide.load.prol, %minmax.ident.splat
  %110 = icmp slt <4 x i32> %wide.load363.prol, %minmax.ident.splat
  %111 = select <4 x i1> %109, <4 x i32> %wide.load.prol, <4 x i32> %minmax.ident.splat
  %112 = select <4 x i1> %110, <4 x i32> %wide.load363.prol, <4 x i32> %minmax.ident.splat
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %.lcssa446.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %112, %vector.body.prol ]
  %.lcssa445.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %111, %vector.body.prol ]
  %.lcssa444.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %108, %vector.body.prol ]
  %.lcssa443.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %107, %vector.body.prol ]
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 8, %vector.body.prol ]
  %vec.phi.unr = phi <4 x i32> [ %minmax.ident.splat, %vector.body.preheader ], [ %111, %vector.body.prol ]
  %vec.phi360.unr = phi <4 x i32> [ %minmax.ident.splat, %vector.body.preheader ], [ %112, %vector.body.prol ]
  %vec.phi361.unr = phi <4 x i32> [ %minmax.ident.splat372, %vector.body.preheader ], [ %107, %vector.body.prol ]
  %vec.phi362.unr = phi <4 x i32> [ %minmax.ident.splat372, %vector.body.preheader ], [ %108, %vector.body.prol ]
  %113 = icmp eq i64 %99, 0
  br i1 %113, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i32> [ %vec.phi.unr, %vector.body.preheader.split.split ], [ %136, %vector.body ]
  %vec.phi360 = phi <4 x i32> [ %vec.phi360.unr, %vector.body.preheader.split.split ], [ %137, %vector.body ]
  %vec.phi361 = phi <4 x i32> [ %vec.phi361.unr, %vector.body.preheader.split.split ], [ %132, %vector.body ]
  %vec.phi362 = phi <4 x i32> [ %vec.phi362.unr, %vector.body.preheader.split.split ], [ %133, %vector.body ]
  %offset.idx = or i64 %index, 1
  %114 = getelementptr inbounds i32, i32* %86, i64 %offset.idx
  %115 = bitcast i32* %114 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %115, align 4, !tbaa !5
  %116 = getelementptr i32, i32* %114, i64 4
  %117 = bitcast i32* %116 to <4 x i32>*
  %wide.load363 = load <4 x i32>, <4 x i32>* %117, align 4, !tbaa !5
  %118 = icmp sgt <4 x i32> %wide.load, %vec.phi361
  %119 = icmp sgt <4 x i32> %wide.load363, %vec.phi362
  %120 = select <4 x i1> %118, <4 x i32> %wide.load, <4 x i32> %vec.phi361
  %121 = select <4 x i1> %119, <4 x i32> %wide.load363, <4 x i32> %vec.phi362
  %122 = icmp slt <4 x i32> %wide.load, %vec.phi
  %123 = icmp slt <4 x i32> %wide.load363, %vec.phi360
  %124 = select <4 x i1> %122, <4 x i32> %wide.load, <4 x i32> %vec.phi
  %125 = select <4 x i1> %123, <4 x i32> %wide.load363, <4 x i32> %vec.phi360
  %index.next = add i64 %index, 8
  %offset.idx.1 = or i64 %index.next, 1
  %126 = getelementptr inbounds i32, i32* %86, i64 %offset.idx.1
  %127 = bitcast i32* %126 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %127, align 4, !tbaa !5
  %128 = getelementptr i32, i32* %126, i64 4
  %129 = bitcast i32* %128 to <4 x i32>*
  %wide.load363.1 = load <4 x i32>, <4 x i32>* %129, align 4, !tbaa !5
  %130 = icmp sgt <4 x i32> %wide.load.1, %120
  %131 = icmp sgt <4 x i32> %wide.load363.1, %121
  %132 = select <4 x i1> %130, <4 x i32> %wide.load.1, <4 x i32> %120
  %133 = select <4 x i1> %131, <4 x i32> %wide.load363.1, <4 x i32> %121
  %134 = icmp slt <4 x i32> %wide.load.1, %124
  %135 = icmp slt <4 x i32> %wide.load363.1, %125
  %136 = select <4 x i1> %134, <4 x i32> %wide.load.1, <4 x i32> %124
  %137 = select <4 x i1> %135, <4 x i32> %wide.load363.1, <4 x i32> %125
  %index.next.1 = add i64 %index, 16
  %138 = icmp eq i64 %index.next.1, %n.vec
  br i1 %138, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !22

middle.block.unr-lcssa:                           ; preds = %vector.body
  %.lcssa466 = phi <4 x i32> [ %137, %vector.body ]
  %.lcssa465 = phi <4 x i32> [ %136, %vector.body ]
  %.lcssa464 = phi <4 x i32> [ %133, %vector.body ]
  %.lcssa463 = phi <4 x i32> [ %132, %vector.body ]
  br label %middle.block

middle.block:                                     ; preds = %vector.body.preheader.split, %middle.block.unr-lcssa
  %.lcssa446 = phi <4 x i32> [ %.lcssa446.unr, %vector.body.preheader.split ], [ %.lcssa466, %middle.block.unr-lcssa ]
  %.lcssa445 = phi <4 x i32> [ %.lcssa445.unr, %vector.body.preheader.split ], [ %.lcssa465, %middle.block.unr-lcssa ]
  %.lcssa444 = phi <4 x i32> [ %.lcssa444.unr, %vector.body.preheader.split ], [ %.lcssa464, %middle.block.unr-lcssa ]
  %.lcssa443 = phi <4 x i32> [ %.lcssa443.unr, %vector.body.preheader.split ], [ %.lcssa463, %middle.block.unr-lcssa ]
  %rdx.minmax.cmp373 = icmp sgt <4 x i32> %.lcssa443, %.lcssa444
  %rdx.minmax.select374 = select <4 x i1> %rdx.minmax.cmp373, <4 x i32> %.lcssa443, <4 x i32> %.lcssa444
  %rdx.shuf375 = shufflevector <4 x i32> %rdx.minmax.select374, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp376 = icmp sgt <4 x i32> %rdx.minmax.select374, %rdx.shuf375
  %rdx.minmax.select377 = select <4 x i1> %rdx.minmax.cmp376, <4 x i32> %rdx.minmax.select374, <4 x i32> %rdx.shuf375
  %rdx.shuf378 = shufflevector <4 x i32> %rdx.minmax.select377, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp379 = icmp sgt <4 x i32> %rdx.minmax.select377, %rdx.shuf378
  %rdx.minmax.cmp379.elt = extractelement <4 x i1> %rdx.minmax.cmp379, i32 0
  %rdx.minmax.select377.elt = extractelement <4 x i32> %rdx.minmax.select377, i32 0
  %rdx.shuf378.elt = extractelement <4 x i32> %rdx.minmax.select377, i32 1
  %139 = select i1 %rdx.minmax.cmp379.elt, i32 %rdx.minmax.select377.elt, i32 %rdx.shuf378.elt
  %rdx.minmax.cmp = icmp slt <4 x i32> %.lcssa445, %.lcssa446
  %rdx.minmax.select = select <4 x i1> %rdx.minmax.cmp, <4 x i32> %.lcssa445, <4 x i32> %.lcssa446
  %rdx.shuf = shufflevector <4 x i32> %rdx.minmax.select, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp366 = icmp slt <4 x i32> %rdx.minmax.select, %rdx.shuf
  %rdx.minmax.select367 = select <4 x i1> %rdx.minmax.cmp366, <4 x i32> %rdx.minmax.select, <4 x i32> %rdx.shuf
  %rdx.shuf368 = shufflevector <4 x i32> %rdx.minmax.select367, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp369 = icmp slt <4 x i32> %rdx.minmax.select367, %rdx.shuf368
  %rdx.minmax.cmp369.elt = extractelement <4 x i1> %rdx.minmax.cmp369, i32 0
  %rdx.minmax.select367.elt = extractelement <4 x i32> %rdx.minmax.select367, i32 0
  %rdx.shuf368.elt = extractelement <4 x i32> %rdx.minmax.select367, i32 1
  %140 = select i1 %rdx.minmax.cmp369.elt, i32 %rdx.minmax.select367.elt, i32 %rdx.shuf368.elt
  %cmp.n = icmp eq i64 %92, %n.vec
  br i1 %cmp.n, label %for.body15.i239.preheader, label %for.body.for.body_crit_edge.i227.preheader435

for.body.for.body_crit_edge.i227.preheader435:    ; preds = %middle.block, %min.iters.checked, %for.body.for.body_crit_edge.i227.preheader
  %indvars.iv.next55.i221307.ph = phi i64 [ 1, %min.iters.checked ], [ 1, %for.body.for.body_crit_edge.i227.preheader ], [ %ind.end, %middle.block ]
  %min_r.1.i220306.ph = phi i32 [ %88, %min.iters.checked ], [ %88, %for.body.for.body_crit_edge.i227.preheader ], [ %140, %middle.block ]
  %.max_r.0.i218305.ph = phi i32 [ %88, %min.iters.checked ], [ %88, %for.body.for.body_crit_edge.i227.preheader ], [ %139, %middle.block ]
  br label %for.body.for.body_crit_edge.i227

for.body.for.body_crit_edge.i227:                 ; preds = %for.body.for.body_crit_edge.i227.preheader435, %for.body.for.body_crit_edge.i227
  %indvars.iv.next55.i221307 = phi i64 [ %indvars.iv.next55.i221, %for.body.for.body_crit_edge.i227 ], [ %indvars.iv.next55.i221307.ph, %for.body.for.body_crit_edge.i227.preheader435 ]
  %min_r.1.i220306 = phi i32 [ %min_r.1.i220, %for.body.for.body_crit_edge.i227 ], [ %min_r.1.i220306.ph, %for.body.for.body_crit_edge.i227.preheader435 ]
  %.max_r.0.i218305 = phi i32 [ %.max_r.0.i218, %for.body.for.body_crit_edge.i227 ], [ %.max_r.0.i218305.ph, %for.body.for.body_crit_edge.i227.preheader435 ]
  %arrayidx2.phi.trans.insert.i225 = getelementptr inbounds i32, i32* %86, i64 %indvars.iv.next55.i221307
  %.pre.i226 = load i32, i32* %arrayidx2.phi.trans.insert.i225, align 4, !tbaa !5
  %cmp3.i217 = icmp sgt i32 %.pre.i226, %.max_r.0.i218305
  %.max_r.0.i218 = select i1 %cmp3.i217, i32 %.pre.i226, i32 %.max_r.0.i218305
  %cmp8.i219 = icmp slt i32 %.pre.i226, %min_r.1.i220306
  %min_r.1.i220 = select i1 %cmp8.i219, i32 %.pre.i226, i32 %min_r.1.i220306
  %indvars.iv.next55.i221 = add nuw nsw i64 %indvars.iv.next55.i221307, 1
  %lftr.wideiv339 = trunc i64 %indvars.iv.next55.i221 to i32
  %exitcond340 = icmp eq i32 %lftr.wideiv339, %mul81
  br i1 %exitcond340, label %for.body15.i239.preheader.loopexit, label %for.body.for.body_crit_edge.i227, !llvm.loop !23

for.body15.i239.preheader.loopexit:               ; preds = %for.body.for.body_crit_edge.i227
  %min_r.1.i220.lcssa462 = phi i32 [ %min_r.1.i220, %for.body.for.body_crit_edge.i227 ]
  %.max_r.0.i218.lcssa461 = phi i32 [ %.max_r.0.i218, %for.body.for.body_crit_edge.i227 ]
  br label %for.body15.i239.preheader

for.body15.i239.preheader:                        ; preds = %for.body15.i239.preheader.loopexit, %middle.block
  %min_r.1.i220.lcssa = phi i32 [ %140, %middle.block ], [ %min_r.1.i220.lcssa462, %for.body15.i239.preheader.loopexit ]
  %.max_r.0.i218.lcssa = phi i32 [ %139, %middle.block ], [ %.max_r.0.i218.lcssa461, %for.body15.i239.preheader.loopexit ]
  %sub.i228 = sub nsw i32 %.max_r.0.i218.lcssa, %min_r.1.i220.lcssa
  %sub18.i231298 = sub nsw i32 %88, %min_r.1.i220.lcssa
  %mul.i232299 = mul nsw i32 %sub18.i231298, 255
  %div.i233300 = sdiv i32 %mul.i232299, %sub.i228
  %conv.i234301 = trunc i32 %div.i233300 to i8
  store i8 %conv.i234301, i8* %87, align 1, !tbaa !12
  br i1 %exitcond57.i223304, label %sw.epilog101, label %for.body15.for.body15_crit_edge.i242.preheader

for.body15.for.body15_crit_edge.i242.preheader:   ; preds = %for.body15.i239.preheader
  %141 = mul i32 %84, %83
  %142 = and i32 %141, 1
  %lcmp.mod452 = icmp eq i32 %142, 0
  br i1 %lcmp.mod452, label %for.body15.for.body15_crit_edge.i242.prol, label %for.body15.for.body15_crit_edge.i242.preheader.split

for.body15.for.body15_crit_edge.i242.prol:        ; preds = %for.body15.for.body15_crit_edge.i242.preheader
  %arrayidx17.phi.trans.insert.i240.prol = getelementptr inbounds i8, i8* %call84, i64 4
  %143 = bitcast i8* %arrayidx17.phi.trans.insert.i240.prol to i32*
  %.pre58.i241.prol = load i32, i32* %143, align 4, !tbaa !5
  %sub18.i231.prol = sub nsw i32 %.pre58.i241.prol, %min_r.1.i220.lcssa
  %mul.i232.prol = mul nsw i32 %sub18.i231.prol, 255
  %div.i233.prol = sdiv i32 %mul.i232.prol, %sub.i228
  %conv.i234.prol = trunc i32 %div.i233.prol to i8
  %arrayidx20.i235.prol = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %conv.i234.prol, i8* %arrayidx20.i235.prol, align 1, !tbaa !12
  br label %for.body15.for.body15_crit_edge.i242.preheader.split

for.body15.for.body15_crit_edge.i242.preheader.split: ; preds = %for.body15.for.body15_crit_edge.i242.prol, %for.body15.for.body15_crit_edge.i242.preheader
  %indvars.iv.next.i236303.unr = phi i64 [ 1, %for.body15.for.body15_crit_edge.i242.preheader ], [ 2, %for.body15.for.body15_crit_edge.i242.prol ]
  %144 = icmp eq i32 %141, 2
  br i1 %144, label %sw.epilog101.loopexit434, label %for.body15.for.body15_crit_edge.i242.preheader.split.split

for.body15.for.body15_crit_edge.i242.preheader.split.split: ; preds = %for.body15.for.body15_crit_edge.i242.preheader.split
  br label %for.body15.for.body15_crit_edge.i242

for.body15.for.body15_crit_edge.i242:             ; preds = %for.body15.for.body15_crit_edge.i242, %for.body15.for.body15_crit_edge.i242.preheader.split.split
  %indvars.iv.next.i236303 = phi i64 [ %indvars.iv.next.i236303.unr, %for.body15.for.body15_crit_edge.i242.preheader.split.split ], [ %indvars.iv.next.i236.1, %for.body15.for.body15_crit_edge.i242 ]
  %arrayidx17.phi.trans.insert.i240 = getelementptr inbounds i32, i32* %86, i64 %indvars.iv.next.i236303
  %.pre58.i241 = load i32, i32* %arrayidx17.phi.trans.insert.i240, align 4, !tbaa !5
  %sub18.i231 = sub nsw i32 %.pre58.i241, %min_r.1.i220.lcssa
  %mul.i232 = mul nsw i32 %sub18.i231, 255
  %div.i233 = sdiv i32 %mul.i232, %sub.i228
  %conv.i234 = trunc i32 %div.i233 to i8
  %arrayidx20.i235 = getelementptr inbounds i8, i8* %87, i64 %indvars.iv.next.i236303
  store i8 %conv.i234, i8* %arrayidx20.i235, align 1, !tbaa !12
  %indvars.iv.next.i236 = add nuw nsw i64 %indvars.iv.next.i236303, 1
  %arrayidx17.phi.trans.insert.i240.1 = getelementptr inbounds i32, i32* %86, i64 %indvars.iv.next.i236
  %.pre58.i241.1 = load i32, i32* %arrayidx17.phi.trans.insert.i240.1, align 4, !tbaa !5
  %sub18.i231.1 = sub nsw i32 %.pre58.i241.1, %min_r.1.i220.lcssa
  %mul.i232.1 = mul nsw i32 %sub18.i231.1, 255
  %div.i233.1 = sdiv i32 %mul.i232.1, %sub.i228
  %conv.i234.1 = trunc i32 %div.i233.1 to i8
  %arrayidx20.i235.1 = getelementptr inbounds i8, i8* %87, i64 %indvars.iv.next.i236
  store i8 %conv.i234.1, i8* %arrayidx20.i235.1, align 1, !tbaa !12
  %indvars.iv.next.i236.1 = add nsw i64 %indvars.iv.next.i236303, 2
  %lftr.wideiv337.1 = trunc i64 %indvars.iv.next.i236.1 to i32
  %exitcond338.1 = icmp eq i32 %lftr.wideiv337.1, %mul81
  br i1 %exitcond338.1, label %sw.epilog101.loopexit434.unr-lcssa, label %for.body15.for.body15_crit_edge.i242

if.else90:                                        ; preds = %setup_brightness_lut.exit212
  %tobool91 = icmp eq i32 %susan_quick.0.lcssa, 0
  %145 = load i8*, i8** %in, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 0
  br i1 %tobool91, label %if.else94, label %if.then92

if.then92:                                        ; preds = %if.else90
  %call93 = call i32 @susan_corners_quick(i8* %145, i32* %86, i8* nonnull %add.ptr.i193, i32 1850, %struct.anon* %arraydecay, i32 %83, i32 %84)
  br label %if.end97

if.else94:                                        ; preds = %if.else90
  %call96 = call i32 @susan_corners(i8* %145, i32* %86, i8* nonnull %add.ptr.i193, i32 1850, %struct.anon* %arraydecay, i32 %83, i32 %84)
  br label %if.end97

if.end97:                                         ; preds = %if.else94, %if.then92
  %info56.i = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 0, i32 2
  %146 = load i32, i32* %info56.i, align 8, !tbaa !13
  %cmp57.i = icmp eq i32 %146, 7
  br i1 %cmp57.i, label %sw.epilog101, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end97
  %cmp1.i = icmp eq i32 %drawing_mode.0.lcssa, 0
  %sub10.i = add nsw i32 %83, -2
  %idx.ext11.i = sext i32 %sub10.i to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i, %while.body.lr.ph.i
  %indvars.iv.i244 = phi i64 [ 0, %while.body.lr.ph.i ], [ %indvars.iv.next.i250, %while.cond.backedge.i ]
  %y.i = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 %indvars.iv.i244, i32 1
  %147 = load i32, i32* %y.i, align 4, !tbaa !15
  %148 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 %indvars.iv.i244, i32 0
  %149 = load i32, i32* %148, align 8
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  %sub.i245 = add nsw i32 %147, -1
  %mul.i246 = mul nsw i32 %sub.i245, %83
  %idx.ext.i247 = sext i32 %mul.i246 to i64
  %add.ptr.i248 = getelementptr inbounds i8, i8* %145, i64 %idx.ext.i247
  %idx.ext6.i = sext i32 %149 to i64
  %add.ptr7.i = getelementptr inbounds i8, i8* %add.ptr.i248, i64 %idx.ext6.i
  %add.ptr8.i = getelementptr inbounds i8, i8* %add.ptr7.i, i64 -1
  %incdec.ptr.i249 = getelementptr inbounds i8, i8* %add.ptr8.i, i64 1
  store i8 -1, i8* %add.ptr8.i, align 1, !tbaa !12
  %incdec.ptr9.i = getelementptr inbounds i8, i8* %incdec.ptr.i249, i64 1
  store i8 -1, i8* %incdec.ptr.i249, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr9.i, align 1, !tbaa !12
  %add.ptr12.i = getelementptr inbounds i8, i8* %incdec.ptr9.i, i64 %idx.ext11.i
  %incdec.ptr13.i = getelementptr inbounds i8, i8* %add.ptr12.i, i64 1
  store i8 -1, i8* %add.ptr12.i, align 1, !tbaa !12
  %incdec.ptr14.i = getelementptr inbounds i8, i8* %incdec.ptr13.i, i64 1
  store i8 0, i8* %incdec.ptr13.i, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr14.i, align 1, !tbaa !12
  %add.ptr17.i = getelementptr inbounds i8, i8* %incdec.ptr14.i, i64 %idx.ext11.i
  %incdec.ptr18.i = getelementptr inbounds i8, i8* %add.ptr17.i, i64 1
  store i8 -1, i8* %add.ptr17.i, align 1, !tbaa !12
  %incdec.ptr19.i = getelementptr inbounds i8, i8* %incdec.ptr18.i, i64 1
  store i8 -1, i8* %incdec.ptr18.i, align 1, !tbaa !12
  store i8 -1, i8* %incdec.ptr19.i, align 1, !tbaa !12
  br label %while.cond.backedge.i

if.else.i:                                        ; preds = %while.body.i
  %mul23.i = mul nsw i32 %147, %83
  %idx.ext24.i = sext i32 %mul23.i to i64
  %add.ptr25.i = getelementptr inbounds i8, i8* %145, i64 %idx.ext24.i
  %idx.ext29.i = sext i32 %149 to i64
  %add.ptr30.i = getelementptr inbounds i8, i8* %add.ptr25.i, i64 %idx.ext29.i
  store i8 0, i8* %add.ptr30.i, align 1, !tbaa !12
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.else.i, %if.then.i
  %indvars.iv.next.i250 = add nuw nsw i64 %indvars.iv.i244, 1
  %info.i = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 %indvars.iv.next.i250, i32 2
  %150 = load i32, i32* %info.i, align 8, !tbaa !13
  %cmp.i251 = icmp eq i32 %150, 7
  br i1 %cmp.i251, label %sw.epilog101.loopexit433, label %while.body.i

sw.epilog101.loopexit.unr-lcssa:                  ; preds = %if.end32.i.1
  br label %sw.epilog101.loopexit

sw.epilog101.loopexit:                            ; preds = %for.body23.lr.ph.i.split, %sw.epilog101.loopexit.unr-lcssa
  br label %sw.epilog101

sw.epilog101.loopexit431.unr-lcssa:               ; preds = %for.body15.for.body15_crit_edge.i
  br label %sw.epilog101.loopexit431

sw.epilog101.loopexit431:                         ; preds = %for.body15.for.body15_crit_edge.i.preheader.split, %sw.epilog101.loopexit431.unr-lcssa
  br label %sw.epilog101

sw.epilog101.loopexit433:                         ; preds = %while.cond.backedge.i
  br label %sw.epilog101

sw.epilog101.loopexit434.unr-lcssa:               ; preds = %for.body15.for.body15_crit_edge.i242
  br label %sw.epilog101.loopexit434

sw.epilog101.loopexit434:                         ; preds = %for.body15.for.body15_crit_edge.i242.preheader.split, %sw.epilog101.loopexit434.unr-lcssa
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %sw.epilog101.loopexit434, %sw.epilog101.loopexit433, %sw.epilog101.loopexit431, %sw.epilog101.loopexit, %for.body.i224.preheader, %for.body.i179.preheader, %while.end.sw.epilog101_crit_edge, %for.body15.i239.preheader, %for.body15.i.preheader, %if.end97, %if.then86, %for.cond19.preheader.i, %for.cond.preheader.i, %if.end59, %setup_brightness_lut.exit
  %151 = phi i32 [ %.pre342, %while.end.sw.epilog101_crit_edge ], [ %84, %for.body15.i239.preheader ], [ %15, %for.body15.i.preheader ], [ %84, %if.end97 ], [ %84, %if.then86 ], [ %15, %for.cond19.preheader.i ], [ %15, %for.cond.preheader.i ], [ %15, %if.end59 ], [ %13, %setup_brightness_lut.exit ], [ %15, %for.body.i179.preheader ], [ %84, %for.body.i224.preheader ], [ %15, %sw.epilog101.loopexit ], [ %15, %sw.epilog101.loopexit431 ], [ %84, %sw.epilog101.loopexit433 ], [ %84, %sw.epilog101.loopexit434 ]
  %152 = phi i32 [ %.pre341, %while.end.sw.epilog101_crit_edge ], [ %83, %for.body15.i239.preheader ], [ %14, %for.body15.i.preheader ], [ %83, %if.end97 ], [ %83, %if.then86 ], [ %14, %for.cond19.preheader.i ], [ %14, %for.cond.preheader.i ], [ %14, %if.end59 ], [ %12, %setup_brightness_lut.exit ], [ %14, %for.body.i179.preheader ], [ %83, %for.body.i224.preheader ], [ %14, %sw.epilog101.loopexit ], [ %14, %sw.epilog101.loopexit431 ], [ %83, %sw.epilog101.loopexit433 ], [ %83, %sw.epilog101.loopexit434 ]
  %153 = phi i8* [ %.pre, %while.end.sw.epilog101_crit_edge ], [ %87, %for.body15.i239.preheader ], [ %18, %for.body15.i.preheader ], [ %145, %if.end97 ], [ %87, %if.then86 ], [ %76, %for.cond19.preheader.i ], [ %76, %for.cond.preheader.i ], [ %18, %if.end59 ], [ %11, %setup_brightness_lut.exit ], [ %18, %for.body.i179.preheader ], [ %87, %for.body.i224.preheader ], [ %76, %sw.epilog101.loopexit ], [ %18, %sw.epilog101.loopexit431 ], [ %145, %sw.epilog101.loopexit433 ], [ %87, %sw.epilog101.loopexit434 ]
  %arrayidx102 = getelementptr inbounds i8*, i8** %argv, i64 2
  %154 = load i8*, i8** %arrayidx102, align 8, !tbaa !1
  %call103 = tail call i32 @put_image(i8* %154, i8* %153, i32 %152, i32 %151)
  call void @llvm.lifetime.end(i64 360000, i8* %3) #7
  call void @llvm.lifetime.end(i64 4, i8* %2) #7
  call void @llvm.lifetime.end(i64 4, i8* %1) #7
  call void @llvm.lifetime.end(i64 8, i8* %0) #7
  ret i32 0

if.then27.i.1:                                    ; preds = %if.end32.i
  %sub.ptr.lhs.cast28.i.1 = ptrtoint i8* %incdec.ptr33.i to i64
  %sub.ptr.sub30.i.1 = sub i64 %sub.ptr.lhs.cast28.i.1, %sub.ptr.rhs.cast29.i
  %add.ptr31.i.1 = getelementptr inbounds i8, i8* %76, i64 %sub.ptr.sub30.i.1
  store i8 0, i8* %add.ptr31.i.1, align 1, !tbaa !12
  br label %if.end32.i.1

if.end32.i.1:                                     ; preds = %if.then27.i.1, %if.end32.i
  %incdec.ptr33.i.1 = getelementptr inbounds i8, i8* %midp.169.i, i64 2
  %inc35.i.1 = add nsw i32 %i.168.i, 2
  %exitcond.i191.1 = icmp eq i32 %inc35.i.1, %mul
  br i1 %exitcond.i191.1, label %sw.epilog101.loopexit.unr-lcssa, label %for.body23.i
}

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) #1

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #7

declare float @sqrtf(float)

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { cold }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.vectorize.width", i32 1}
!9 = !{!"llvm.loop.interleave.count", i32 1}
!10 = distinct !{!10, !11, !8, !9}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!3, !3, i64 0}
!13 = !{!14, !6, i64 8}
!14 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!15 = !{!14, !6, i64 4}
!16 = !{!14, !6, i64 0}
!17 = !{!14, !6, i64 12}
!18 = !{!14, !6, i64 16}
!19 = !{!14, !6, i64 20}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !11, !8, !9}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{!23, !11, !8, !9}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.loop2recursion.disable"}
