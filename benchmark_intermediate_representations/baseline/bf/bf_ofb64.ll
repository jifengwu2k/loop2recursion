; ModuleID = 'bf_ofb64.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: nounwind uwtable
define void @BF_ofb64_encrypt(i8* nocapture readonly %in, i8* nocapture %out, i64 %length, %struct.bf_key_st* %schedule, i8* nocapture %ivec, i32* nocapture %num) #0 {
entry:
  %d = alloca [8 x i8], align 1
  %ti = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %ti to [2 x i64]*
  %0 = load i32, i32* %num, align 4, !tbaa !1
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start(i64 8, i8* %1) #3
  %2 = bitcast <2 x i64>* %ti to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #3
  %incdec.ptr = getelementptr inbounds i8, i8* %ivec, i64 1
  %3 = load i8, i8* %ivec, align 1, !tbaa !5
  %incdec.ptr1 = getelementptr inbounds i8, i8* %ivec, i64 2
  %4 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds i8, i8* %ivec, i64 3
  %5 = load i8, i8* %incdec.ptr1, align 1, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds i8, i8* %ivec, i64 4
  %6 = load i8, i8* %incdec.ptr4, align 1, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds i8, i8* %ivec, i64 5
  %7 = load i8, i8* %incdec.ptr8, align 1, !tbaa !5
  %8 = insertelement <2 x i8> undef, i8 %3, i32 0
  %9 = insertelement <2 x i8> %8, i8 %7, i32 1
  %10 = zext <2 x i8> %9 to <2 x i64>
  %11 = shl nuw nsw <2 x i64> %10, <i64 24, i64 24>
  %incdec.ptr14 = getelementptr inbounds i8, i8* %ivec, i64 6
  %12 = load i8, i8* %incdec.ptr11, align 1, !tbaa !5
  %13 = insertelement <2 x i8> undef, i8 %4, i32 0
  %14 = insertelement <2 x i8> %13, i8 %12, i32 1
  %15 = zext <2 x i8> %14 to <2 x i64>
  %16 = shl nuw nsw <2 x i64> %15, <i64 16, i64 16>
  %17 = or <2 x i64> %16, %11
  %incdec.ptr18 = getelementptr inbounds i8, i8* %ivec, i64 7
  %18 = load i8, i8* %incdec.ptr14, align 1, !tbaa !5
  %19 = insertelement <2 x i8> undef, i8 %5, i32 0
  %20 = insertelement <2 x i8> %19, i8 %18, i32 1
  %21 = zext <2 x i8> %20 to <2 x i64>
  %22 = shl nuw nsw <2 x i64> %21, <i64 8, i64 8>
  %23 = or <2 x i64> %17, %22
  %24 = load i8, i8* %incdec.ptr18, align 1, !tbaa !5
  %25 = insertelement <2 x i8> undef, i8 %6, i32 0
  %26 = insertelement <2 x i8> %25, i8 %24, i32 1
  %27 = zext <2 x i8> %26 to <2 x i64>
  %28 = or <2 x i64> %23, %27
  %arrayidx = getelementptr inbounds <2 x i64>, <2 x i64>* %ti, i64 0, i64 0
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  store <2 x i64> %28, <2 x i64>* %ti, align 16, !tbaa !6
  %incdec.ptr27 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 1
  store i8 %3, i8* %1, align 1, !tbaa !5
  %incdec.ptr31 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 2
  store i8 %4, i8* %incdec.ptr27, align 1, !tbaa !5
  %incdec.ptr35 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 3
  store i8 %5, i8* %incdec.ptr31, align 1, !tbaa !5
  %incdec.ptr38 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 4
  store i8 %6, i8* %incdec.ptr35, align 1, !tbaa !5
  %incdec.ptr42 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 5
  store i8 %7, i8* %incdec.ptr38, align 1, !tbaa !5
  %incdec.ptr46 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 6
  store i8 %12, i8* %incdec.ptr42, align 1, !tbaa !5
  %incdec.ptr50 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 7
  store i8 %18, i8* %incdec.ptr46, align 1, !tbaa !5
  store i8 %24, i8* %incdec.ptr50, align 1, !tbaa !5
  %tobool208 = icmp eq i64 %length, 0
  br i1 %tobool208, label %if.end130, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %dec213.in = phi i64 [ %dec213, %if.end ], [ %length, %while.body.preheader ]
  %save.0212 = phi i32 [ %save.1, %if.end ], [ 0, %while.body.preheader ]
  %n.0211 = phi i32 [ %and95, %if.end ], [ %0, %while.body.preheader ]
  %in.addr.0210 = phi i8* [ %incdec.ptr89, %if.end ], [ %in, %while.body.preheader ]
  %out.addr.0209 = phi i8* [ %incdec.ptr94, %if.end ], [ %out, %while.body.preheader ]
  %dec213 = add nsw i64 %dec213.in, -1
  %cmp = icmp eq i32 %n.0211, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @BF_encrypt(i64* %arrayidx, %struct.bf_key_st* %schedule, i32 1) #3
  %29 = load i64, i64* %arrayidx, align 16, !tbaa !6
  %shr58 = lshr i64 %29, 24
  %conv60 = trunc i64 %shr58 to i8
  store i8 %conv60, i8* %1, align 1, !tbaa !5
  %shr62 = lshr i64 %29, 16
  %conv64 = trunc i64 %shr62 to i8
  store i8 %conv64, i8* %incdec.ptr27, align 1, !tbaa !5
  %shr66 = lshr i64 %29, 8
  %conv68 = trunc i64 %shr66 to i8
  store i8 %conv68, i8* %incdec.ptr31, align 1, !tbaa !5
  %conv71 = trunc i64 %29 to i8
  store i8 %conv71, i8* %incdec.ptr35, align 1, !tbaa !5
  %30 = load i64, i64* %arrayidx25, align 8, !tbaa !6
  %shr74 = lshr i64 %30, 24
  %conv76 = trunc i64 %shr74 to i8
  store i8 %conv76, i8* %incdec.ptr38, align 1, !tbaa !5
  %shr78 = lshr i64 %30, 16
  %conv80 = trunc i64 %shr78 to i8
  store i8 %conv80, i8* %incdec.ptr42, align 1, !tbaa !5
  %shr82 = lshr i64 %30, 8
  %conv84 = trunc i64 %shr82 to i8
  store i8 %conv84, i8* %incdec.ptr46, align 1, !tbaa !5
  %conv87 = trunc i64 %30 to i8
  store i8 %conv87, i8* %incdec.ptr50, align 1, !tbaa !5
  %inc = add nsw i32 %save.0212, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %save.1 = phi i32 [ %inc, %if.then ], [ %save.0212, %while.body ]
  %incdec.ptr89 = getelementptr inbounds i8, i8* %in.addr.0210, i64 1
  %31 = load i8, i8* %in.addr.0210, align 1, !tbaa !5
  %idxprom = sext i32 %n.0211 to i64
  %arrayidx91 = getelementptr inbounds [8 x i8], [8 x i8]* %d, i64 0, i64 %idxprom
  %32 = load i8, i8* %arrayidx91, align 1, !tbaa !5
  %xor206 = xor i8 %32, %31
  %incdec.ptr94 = getelementptr inbounds i8, i8* %out.addr.0209, i64 1
  store i8 %xor206, i8* %out.addr.0209, align 1, !tbaa !5
  %add = add nsw i32 %n.0211, 1
  %and95 = and i32 %add, 7
  %tobool = icmp eq i64 %dec213, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %if.end
  %and95.lcssa = phi i32 [ %and95, %if.end ]
  %save.1.lcssa = phi i32 [ %save.1, %if.end ]
  %tobool96 = icmp eq i32 %save.1.lcssa, 0
  br i1 %tobool96, label %if.end130, label %if.then97

if.then97:                                        ; preds = %while.end
  %33 = load i64, i64* %arrayidx, align 16, !tbaa !6
  %34 = load i64, i64* %arrayidx25, align 8, !tbaa !6
  %shr100 = lshr i64 %33, 24
  %conv102 = trunc i64 %shr100 to i8
  store i8 %conv102, i8* %ivec, align 1, !tbaa !5
  %shr104 = lshr i64 %33, 16
  %conv106 = trunc i64 %shr104 to i8
  store i8 %conv106, i8* %incdec.ptr, align 1, !tbaa !5
  %shr108 = lshr i64 %33, 8
  %conv110 = trunc i64 %shr108 to i8
  store i8 %conv110, i8* %incdec.ptr1, align 1, !tbaa !5
  %conv113 = trunc i64 %33 to i8
  store i8 %conv113, i8* %incdec.ptr4, align 1, !tbaa !5
  %shr115 = lshr i64 %34, 24
  %conv117 = trunc i64 %shr115 to i8
  store i8 %conv117, i8* %incdec.ptr8, align 1, !tbaa !5
  %shr119 = lshr i64 %34, 16
  %conv121 = trunc i64 %shr119 to i8
  store i8 %conv121, i8* %incdec.ptr11, align 1, !tbaa !5
  %shr123 = lshr i64 %34, 8
  %conv125 = trunc i64 %shr123 to i8
  store i8 %conv125, i8* %incdec.ptr14, align 1, !tbaa !5
  %conv128 = trunc i64 %34 to i8
  store i8 %conv128, i8* %incdec.ptr18, align 1, !tbaa !5
  br label %if.end130

if.end130:                                        ; preds = %entry, %while.end, %if.then97
  %n.0.lcssa216 = phi i32 [ %and95.lcssa, %while.end ], [ %and95.lcssa, %if.then97 ], [ %0, %entry ]
  store i32 %n.0.lcssa216, i32* %num, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 16, i8* %2) #3
  call void @llvm.lifetime.end(i64 8, i8* %1) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !3, i64 0}
