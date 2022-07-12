; ModuleID = 'bf_cbc.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: nounwind uwtable
define void @BF_cbc_encrypt(i8* nocapture readonly %in, i8* nocapture %out, i64 %length, %struct.bf_key_st* %ks, i8* %iv, i32 %encrypt) #0 {
entry:
  %tin = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %tin to [2 x i64]*
  %0 = bitcast <2 x i64>* %tin to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #3
  %tobool = icmp eq i32 %encrypt, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %iv, i64 1
  %1 = load i8, i8* %iv, align 1, !tbaa !1
  %incdec.ptr197 = getelementptr inbounds i8, i8* %iv, i64 2
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !1
  %incdec.ptr201 = getelementptr inbounds i8, i8* %iv, i64 3
  %3 = load i8, i8* %incdec.ptr197, align 1, !tbaa !1
  %incdec.ptr205 = getelementptr inbounds i8, i8* %iv, i64 4
  %4 = load i8, i8* %incdec.ptr201, align 1, !tbaa !1
  %incdec.ptr208 = getelementptr inbounds i8, i8* %iv, i64 5
  %5 = load i8, i8* %incdec.ptr205, align 1, !tbaa !1
  %6 = insertelement <2 x i8> undef, i8 %1, i32 0
  %7 = insertelement <2 x i8> %6, i8 %5, i32 1
  %8 = zext <2 x i8> %7 to <2 x i64>
  %9 = shl nuw nsw <2 x i64> %8, <i64 24, i64 24>
  %incdec.ptr211 = getelementptr inbounds i8, i8* %iv, i64 6
  %10 = load i8, i8* %incdec.ptr208, align 1, !tbaa !1
  %11 = insertelement <2 x i8> undef, i8 %2, i32 0
  %12 = insertelement <2 x i8> %11, i8 %10, i32 1
  %13 = zext <2 x i8> %12 to <2 x i64>
  %14 = shl nuw nsw <2 x i64> %13, <i64 16, i64 16>
  %15 = or <2 x i64> %14, %9
  %incdec.ptr215 = getelementptr inbounds i8, i8* %iv, i64 7
  %16 = load i8, i8* %incdec.ptr211, align 1, !tbaa !1
  %17 = insertelement <2 x i8> undef, i8 %3, i32 0
  %18 = insertelement <2 x i8> %17, i8 %16, i32 1
  %19 = zext <2 x i8> %18 to <2 x i64>
  %20 = shl nuw nsw <2 x i64> %19, <i64 8, i64 8>
  %21 = or <2 x i64> %15, %20
  %22 = load i8, i8* %incdec.ptr215, align 1, !tbaa !1
  %23 = insertelement <2 x i8> undef, i8 %4, i32 0
  %24 = insertelement <2 x i8> %23, i8 %22, i32 1
  %25 = zext <2 x i8> %24 to <2 x i64>
  %26 = or <2 x i64> %21, %25
  %l.1636 = add i64 %length, -8
  %cmp225637 = icmp sgt i64 %l.1636, -1
  %27 = extractelement <2 x i64> %26, i32 0
  %28 = extractelement <2 x i64> %26, i32 1
  br i1 %tobool, label %for.cond224.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp225637, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx = getelementptr inbounds <2 x i64>, <2 x i64>* %tin, i64 0, i64 0
  %29 = and i64 %l.1636, -8
  %30 = add i64 %29, 8
  %scevgep662 = getelementptr i8, i8* %in, i64 %30
  br label %for.body

for.cond224.preheader:                            ; preds = %entry
  br i1 %cmp225637, label %for.body227.lr.ph, label %for.end295

for.body227.lr.ph:                                ; preds = %for.cond224.preheader
  %arrayidx256 = getelementptr inbounds <2 x i64>, <2 x i64>* %tin, i64 0, i64 0
  %arrayidx257 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  %31 = and i64 %l.1636, -8
  %32 = add i64 %31, 8
  %scevgep660 = getelementptr i8, i8* %in, i64 %32
  br label %for.body227

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %l.0653 = phi i64 [ %l.1636, %for.body.lr.ph ], [ %l.0, %for.body ]
  %in.addr.0650 = phi i8* [ %in, %for.body.lr.ph ], [ %incdec.ptr51, %for.body ]
  %out.addr.0649 = phi i8* [ %out, %for.body.lr.ph ], [ %incdec.ptr85, %for.body ]
  %33 = phi <2 x i64> [ %26, %for.body.lr.ph ], [ %61, %for.body ]
  %incdec.ptr26 = getelementptr inbounds i8, i8* %in.addr.0650, i64 1
  %34 = load i8, i8* %in.addr.0650, align 1, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8, i8* %in.addr.0650, i64 2
  %35 = load i8, i8* %incdec.ptr26, align 1, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %in.addr.0650, i64 3
  %36 = load i8, i8* %incdec.ptr29, align 1, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %in.addr.0650, i64 4
  %37 = load i8, i8* %incdec.ptr33, align 1, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i8, i8* %in.addr.0650, i64 5
  %38 = load i8, i8* %incdec.ptr37, align 1, !tbaa !1
  %39 = insertelement <2 x i8> undef, i8 %34, i32 0
  %40 = insertelement <2 x i8> %39, i8 %38, i32 1
  %41 = zext <2 x i8> %40 to <2 x i64>
  %42 = shl nuw nsw <2 x i64> %41, <i64 24, i64 24>
  %incdec.ptr43 = getelementptr inbounds i8, i8* %in.addr.0650, i64 6
  %43 = load i8, i8* %incdec.ptr40, align 1, !tbaa !1
  %44 = insertelement <2 x i8> undef, i8 %35, i32 0
  %45 = insertelement <2 x i8> %44, i8 %43, i32 1
  %46 = zext <2 x i8> %45 to <2 x i64>
  %47 = shl nuw nsw <2 x i64> %46, <i64 16, i64 16>
  %48 = or <2 x i64> %47, %42
  %incdec.ptr47 = getelementptr inbounds i8, i8* %in.addr.0650, i64 7
  %49 = load i8, i8* %incdec.ptr43, align 1, !tbaa !1
  %50 = insertelement <2 x i8> undef, i8 %36, i32 0
  %51 = insertelement <2 x i8> %50, i8 %49, i32 1
  %52 = zext <2 x i8> %51 to <2 x i64>
  %53 = shl nuw nsw <2 x i64> %52, <i64 8, i64 8>
  %54 = or <2 x i64> %48, %53
  %incdec.ptr51 = getelementptr inbounds i8, i8* %in.addr.0650, i64 8
  %55 = load i8, i8* %incdec.ptr47, align 1, !tbaa !1
  %56 = insertelement <2 x i8> undef, i8 %37, i32 0
  %57 = insertelement <2 x i8> %56, i8 %55, i32 1
  %58 = zext <2 x i8> %57 to <2 x i64>
  %59 = or <2 x i64> %54, %58
  %60 = xor <2 x i64> %59, %33
  store <2 x i64> %60, <2 x i64>* %tin, align 16, !tbaa !4
  call void @BF_encrypt(i64* %arrayidx, %struct.bf_key_st* %ks, i32 1) #3
  %61 = load <2 x i64>, <2 x i64>* %tin, align 16, !tbaa !4
  %62 = extractelement <2 x i64> %61, i32 0
  %shr = lshr i64 %62, 24
  %conv58 = trunc i64 %shr to i8
  %incdec.ptr59 = getelementptr inbounds i8, i8* %out.addr.0649, i64 1
  store i8 %conv58, i8* %out.addr.0649, align 1, !tbaa !1
  %shr60 = lshr i64 %62, 16
  %conv62 = trunc i64 %shr60 to i8
  %incdec.ptr63 = getelementptr inbounds i8, i8* %out.addr.0649, i64 2
  store i8 %conv62, i8* %incdec.ptr59, align 1, !tbaa !1
  %shr64 = lshr i64 %62, 8
  %conv66 = trunc i64 %shr64 to i8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %out.addr.0649, i64 3
  store i8 %conv66, i8* %incdec.ptr63, align 1, !tbaa !1
  %conv69 = trunc i64 %62 to i8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %out.addr.0649, i64 4
  store i8 %conv69, i8* %incdec.ptr67, align 1, !tbaa !1
  %63 = extractelement <2 x i64> %61, i32 1
  %shr71 = lshr i64 %63, 24
  %conv73 = trunc i64 %shr71 to i8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %out.addr.0649, i64 5
  store i8 %conv73, i8* %incdec.ptr70, align 1, !tbaa !1
  %shr75 = lshr i64 %63, 16
  %conv77 = trunc i64 %shr75 to i8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %out.addr.0649, i64 6
  store i8 %conv77, i8* %incdec.ptr74, align 1, !tbaa !1
  %shr79 = lshr i64 %63, 8
  %conv81 = trunc i64 %shr79 to i8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %out.addr.0649, i64 7
  store i8 %conv81, i8* %incdec.ptr78, align 1, !tbaa !1
  %conv84 = trunc i64 %63 to i8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %out.addr.0649, i64 8
  store i8 %conv84, i8* %incdec.ptr82, align 1, !tbaa !1
  %l.0 = add nsw i64 %l.0653, -8
  %cmp = icmp sgt i64 %l.0, -1
  br i1 %cmp, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  %.lcssa670 = phi i64 [ %63, %for.body ]
  %.lcssa669 = phi i64 [ %62, %for.body ]
  %scevgep661 = getelementptr i8, i8* %out, i64 %30
  %64 = sub i64 %l.1636, %29
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %l.0.in.lcssa = phi i64 [ %length, %for.cond.preheader ], [ %64, %for.end.loopexit ]
  %tout1.0.lcssa = phi i64 [ %28, %for.cond.preheader ], [ %.lcssa670, %for.end.loopexit ]
  %tout0.0.lcssa = phi i64 [ %27, %for.cond.preheader ], [ %.lcssa669, %for.end.loopexit ]
  %in.addr.0.lcssa = phi i8* [ %in, %for.cond.preheader ], [ %scevgep662, %for.end.loopexit ]
  %out.addr.0.lcssa = phi i8* [ %out, %for.cond.preheader ], [ %scevgep661, %for.end.loopexit ]
  %cmp87 = icmp eq i64 %l.0.in.lcssa, 0
  br i1 %cmp87, label %if.end407, label %if.then89

if.then89:                                        ; preds = %for.end
  %add.ptr90 = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %l.0.in.lcssa
  switch i64 %l.0.in.lcssa, label %sw.epilog [
    i64 8, label %sw.bb
    i64 7, label %sw.bb94
    i64 6, label %sw.bb99
    i64 5, label %sw.bb104
    i64 4, label %sw.bb109
    i64 3, label %sw.bb112
    i64 2, label %sw.bb117
    i64 1, label %sw.bb122
  ]

sw.bb:                                            ; preds = %if.then89
  %incdec.ptr92 = getelementptr inbounds i8, i8* %add.ptr90, i64 -1
  %65 = load i8, i8* %incdec.ptr92, align 1, !tbaa !1
  %conv93 = zext i8 %65 to i64
  br label %sw.bb94

sw.bb94:                                          ; preds = %if.then89, %sw.bb
  %in.addr.1 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr92, %sw.bb ]
  %tin1.0 = phi i64 [ 0, %if.then89 ], [ %conv93, %sw.bb ]
  %incdec.ptr95 = getelementptr inbounds i8, i8* %in.addr.1, i64 -1
  %66 = load i8, i8* %incdec.ptr95, align 1, !tbaa !1
  %conv96 = zext i8 %66 to i64
  %shl97 = shl nuw nsw i64 %conv96, 8
  %or98 = or i64 %shl97, %tin1.0
  br label %sw.bb99

sw.bb99:                                          ; preds = %if.then89, %sw.bb94
  %in.addr.2 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr95, %sw.bb94 ]
  %tin1.1 = phi i64 [ 0, %if.then89 ], [ %or98, %sw.bb94 ]
  %incdec.ptr100 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %67 = load i8, i8* %incdec.ptr100, align 1, !tbaa !1
  %conv101 = zext i8 %67 to i64
  %shl102 = shl nuw nsw i64 %conv101, 16
  %or103 = or i64 %shl102, %tin1.1
  br label %sw.bb104

sw.bb104:                                         ; preds = %if.then89, %sw.bb99
  %in.addr.3 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr100, %sw.bb99 ]
  %tin1.2 = phi i64 [ 0, %if.then89 ], [ %or103, %sw.bb99 ]
  %incdec.ptr105 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %68 = load i8, i8* %incdec.ptr105, align 1, !tbaa !1
  %conv106 = zext i8 %68 to i64
  %shl107 = shl nuw nsw i64 %conv106, 24
  %or108 = or i64 %shl107, %tin1.2
  br label %sw.bb109

sw.bb109:                                         ; preds = %if.then89, %sw.bb104
  %in.addr.4 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr105, %sw.bb104 ]
  %tin1.3 = phi i64 [ 0, %if.then89 ], [ %or108, %sw.bb104 ]
  %incdec.ptr110 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %69 = load i8, i8* %incdec.ptr110, align 1, !tbaa !1
  %conv111 = zext i8 %69 to i64
  br label %sw.bb112

sw.bb112:                                         ; preds = %if.then89, %sw.bb109
  %in.addr.5 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr110, %sw.bb109 ]
  %tin0.0 = phi i64 [ 0, %if.then89 ], [ %conv111, %sw.bb109 ]
  %tin1.4 = phi i64 [ 0, %if.then89 ], [ %tin1.3, %sw.bb109 ]
  %incdec.ptr113 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %70 = load i8, i8* %incdec.ptr113, align 1, !tbaa !1
  %conv114 = zext i8 %70 to i64
  %shl115 = shl nuw nsw i64 %conv114, 8
  %or116 = or i64 %shl115, %tin0.0
  br label %sw.bb117

sw.bb117:                                         ; preds = %if.then89, %sw.bb112
  %in.addr.6 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr113, %sw.bb112 ]
  %tin0.1 = phi i64 [ 0, %if.then89 ], [ %or116, %sw.bb112 ]
  %tin1.5 = phi i64 [ 0, %if.then89 ], [ %tin1.4, %sw.bb112 ]
  %incdec.ptr118 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %71 = load i8, i8* %incdec.ptr118, align 1, !tbaa !1
  %conv119 = zext i8 %71 to i64
  %shl120 = shl nuw nsw i64 %conv119, 16
  %or121 = or i64 %shl120, %tin0.1
  br label %sw.bb122

sw.bb122:                                         ; preds = %if.then89, %sw.bb117
  %in.addr.7 = phi i8* [ %add.ptr90, %if.then89 ], [ %incdec.ptr118, %sw.bb117 ]
  %tin0.2 = phi i64 [ 0, %if.then89 ], [ %or121, %sw.bb117 ]
  %tin1.6 = phi i64 [ 0, %if.then89 ], [ %tin1.5, %sw.bb117 ]
  %incdec.ptr123 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %72 = load i8, i8* %incdec.ptr123, align 1, !tbaa !1
  %conv124 = zext i8 %72 to i64
  %shl125 = shl nuw nsw i64 %conv124, 24
  %or126 = or i64 %shl125, %tin0.2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb122, %if.then89
  %tin0.3 = phi i64 [ 0, %if.then89 ], [ %or126, %sw.bb122 ]
  %tin1.7 = phi i64 [ 0, %if.then89 ], [ %tin1.6, %sw.bb122 ]
  %xor127 = xor i64 %tin0.3, %tout0.0.lcssa
  %xor128 = xor i64 %tin1.7, %tout1.0.lcssa
  %arrayidx129 = getelementptr inbounds <2 x i64>, <2 x i64>* %tin, i64 0, i64 0
  store i64 %xor127, i64* %arrayidx129, align 16, !tbaa !4
  %arrayidx130 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  store i64 %xor128, i64* %arrayidx130, align 8, !tbaa !4
  call void @BF_encrypt(i64* %arrayidx129, %struct.bf_key_st* %ks, i32 1) #3
  %73 = load i64, i64* %arrayidx129, align 16, !tbaa !4
  %74 = load i64, i64* %arrayidx130, align 8, !tbaa !4
  %shr134 = lshr i64 %73, 24
  %conv136 = trunc i64 %shr134 to i8
  %incdec.ptr137 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 1
  store i8 %conv136, i8* %out.addr.0.lcssa, align 1, !tbaa !1
  %shr138 = lshr i64 %73, 16
  %conv140 = trunc i64 %shr138 to i8
  %incdec.ptr141 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 2
  store i8 %conv140, i8* %incdec.ptr137, align 1, !tbaa !1
  %shr142 = lshr i64 %73, 8
  %conv144 = trunc i64 %shr142 to i8
  %incdec.ptr145 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 3
  store i8 %conv144, i8* %incdec.ptr141, align 1, !tbaa !1
  %conv147 = trunc i64 %73 to i8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 4
  store i8 %conv147, i8* %incdec.ptr145, align 1, !tbaa !1
  %shr149 = lshr i64 %74, 24
  %conv151 = trunc i64 %shr149 to i8
  %incdec.ptr152 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 5
  store i8 %conv151, i8* %incdec.ptr148, align 1, !tbaa !1
  %shr153 = lshr i64 %74, 16
  %conv155 = trunc i64 %shr153 to i8
  %incdec.ptr156 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 6
  store i8 %conv155, i8* %incdec.ptr152, align 1, !tbaa !1
  %shr157 = lshr i64 %74, 8
  %conv159 = trunc i64 %shr157 to i8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 7
  store i8 %conv159, i8* %incdec.ptr156, align 1, !tbaa !1
  %conv162 = trunc i64 %74 to i8
  store i8 %conv162, i8* %incdec.ptr160, align 1, !tbaa !1
  br label %if.end407

for.body227:                                      ; preds = %for.body227.lr.ph, %for.body227
  %l.1642 = phi i64 [ %l.1636, %for.body227.lr.ph ], [ %l.1, %for.body227 ]
  %xor1.0641 = phi i64 [ %28, %for.body227.lr.ph ], [ %104, %for.body227 ]
  %xor0.0640 = phi i64 [ %27, %for.body227.lr.ph ], [ %103, %for.body227 ]
  %in.addr.8639 = phi i8* [ %in, %for.body227.lr.ph ], [ %incdec.ptr253, %for.body227 ]
  %out.addr.1638 = phi i8* [ %out, %for.body227.lr.ph ], [ %incdec.ptr292, %for.body227 ]
  %incdec.ptr228 = getelementptr inbounds i8, i8* %in.addr.8639, i64 1
  %75 = load i8, i8* %in.addr.8639, align 1, !tbaa !1
  %incdec.ptr231 = getelementptr inbounds i8, i8* %in.addr.8639, i64 2
  %76 = load i8, i8* %incdec.ptr228, align 1, !tbaa !1
  %incdec.ptr235 = getelementptr inbounds i8, i8* %in.addr.8639, i64 3
  %77 = load i8, i8* %incdec.ptr231, align 1, !tbaa !1
  %incdec.ptr239 = getelementptr inbounds i8, i8* %in.addr.8639, i64 4
  %78 = load i8, i8* %incdec.ptr235, align 1, !tbaa !1
  %incdec.ptr242 = getelementptr inbounds i8, i8* %in.addr.8639, i64 5
  %79 = load i8, i8* %incdec.ptr239, align 1, !tbaa !1
  %80 = insertelement <2 x i8> undef, i8 %75, i32 0
  %81 = insertelement <2 x i8> %80, i8 %79, i32 1
  %82 = zext <2 x i8> %81 to <2 x i64>
  %83 = shl nuw nsw <2 x i64> %82, <i64 24, i64 24>
  %incdec.ptr245 = getelementptr inbounds i8, i8* %in.addr.8639, i64 6
  %84 = load i8, i8* %incdec.ptr242, align 1, !tbaa !1
  %85 = insertelement <2 x i8> undef, i8 %76, i32 0
  %86 = insertelement <2 x i8> %85, i8 %84, i32 1
  %87 = zext <2 x i8> %86 to <2 x i64>
  %88 = shl nuw nsw <2 x i64> %87, <i64 16, i64 16>
  %89 = or <2 x i64> %88, %83
  %incdec.ptr249 = getelementptr inbounds i8, i8* %in.addr.8639, i64 7
  %90 = load i8, i8* %incdec.ptr245, align 1, !tbaa !1
  %91 = insertelement <2 x i8> undef, i8 %77, i32 0
  %92 = insertelement <2 x i8> %91, i8 %90, i32 1
  %93 = zext <2 x i8> %92 to <2 x i64>
  %94 = shl nuw nsw <2 x i64> %93, <i64 8, i64 8>
  %95 = or <2 x i64> %89, %94
  %incdec.ptr253 = getelementptr inbounds i8, i8* %in.addr.8639, i64 8
  %96 = load i8, i8* %incdec.ptr249, align 1, !tbaa !1
  %97 = insertelement <2 x i8> undef, i8 %78, i32 0
  %98 = insertelement <2 x i8> %97, i8 %96, i32 1
  %99 = zext <2 x i8> %98 to <2 x i64>
  %100 = or <2 x i64> %95, %99
  store <2 x i64> %100, <2 x i64>* %tin, align 16, !tbaa !4
  call void @BF_encrypt(i64* %arrayidx256, %struct.bf_key_st* %ks, i32 0) #3
  %101 = load i64, i64* %arrayidx256, align 16, !tbaa !4
  %xor260 = xor i64 %101, %xor0.0640
  %102 = load i64, i64* %arrayidx257, align 8, !tbaa !4
  %xor262 = xor i64 %102, %xor1.0641
  %shr263 = lshr i64 %xor260, 24
  %conv265 = trunc i64 %shr263 to i8
  %incdec.ptr266 = getelementptr inbounds i8, i8* %out.addr.1638, i64 1
  store i8 %conv265, i8* %out.addr.1638, align 1, !tbaa !1
  %shr267 = lshr i64 %xor260, 16
  %conv269 = trunc i64 %shr267 to i8
  %incdec.ptr270 = getelementptr inbounds i8, i8* %out.addr.1638, i64 2
  store i8 %conv269, i8* %incdec.ptr266, align 1, !tbaa !1
  %shr271 = lshr i64 %xor260, 8
  %conv273 = trunc i64 %shr271 to i8
  %incdec.ptr274 = getelementptr inbounds i8, i8* %out.addr.1638, i64 3
  store i8 %conv273, i8* %incdec.ptr270, align 1, !tbaa !1
  %conv276 = trunc i64 %xor260 to i8
  %incdec.ptr277 = getelementptr inbounds i8, i8* %out.addr.1638, i64 4
  store i8 %conv276, i8* %incdec.ptr274, align 1, !tbaa !1
  %shr278 = lshr i64 %xor262, 24
  %conv280 = trunc i64 %shr278 to i8
  %incdec.ptr281 = getelementptr inbounds i8, i8* %out.addr.1638, i64 5
  store i8 %conv280, i8* %incdec.ptr277, align 1, !tbaa !1
  %shr282 = lshr i64 %xor262, 16
  %conv284 = trunc i64 %shr282 to i8
  %incdec.ptr285 = getelementptr inbounds i8, i8* %out.addr.1638, i64 6
  store i8 %conv284, i8* %incdec.ptr281, align 1, !tbaa !1
  %shr286 = lshr i64 %xor262, 8
  %conv288 = trunc i64 %shr286 to i8
  %incdec.ptr289 = getelementptr inbounds i8, i8* %out.addr.1638, i64 7
  store i8 %conv288, i8* %incdec.ptr285, align 1, !tbaa !1
  %conv291 = trunc i64 %xor262 to i8
  %incdec.ptr292 = getelementptr inbounds i8, i8* %out.addr.1638, i64 8
  store i8 %conv291, i8* %incdec.ptr289, align 1, !tbaa !1
  %l.1 = add nsw i64 %l.1642, -8
  %cmp225 = icmp sgt i64 %l.1, -1
  %103 = extractelement <2 x i64> %100, i32 0
  %104 = extractelement <2 x i64> %100, i32 1
  br i1 %cmp225, label %for.body227, label %for.end295.loopexit

for.end295.loopexit:                              ; preds = %for.body227
  %.lcssa668 = phi i64 [ %104, %for.body227 ]
  %.lcssa = phi i64 [ %103, %for.body227 ]
  %scevgep = getelementptr i8, i8* %out, i64 %32
  %105 = sub i64 %l.1636, %31
  br label %for.end295

for.end295:                                       ; preds = %for.end295.loopexit, %for.cond224.preheader
  %l.1.in.lcssa = phi i64 [ %length, %for.cond224.preheader ], [ %105, %for.end295.loopexit ]
  %xor1.0.lcssa = phi i64 [ %28, %for.cond224.preheader ], [ %.lcssa668, %for.end295.loopexit ]
  %xor0.0.lcssa = phi i64 [ %27, %for.cond224.preheader ], [ %.lcssa, %for.end295.loopexit ]
  %in.addr.8.lcssa = phi i8* [ %in, %for.cond224.preheader ], [ %scevgep660, %for.end295.loopexit ]
  %out.addr.1.lcssa = phi i8* [ %out, %for.cond224.preheader ], [ %scevgep, %for.end295.loopexit ]
  %cmp296 = icmp eq i64 %l.1.in.lcssa, 0
  br i1 %cmp296, label %if.end407, label %if.then298

if.then298:                                       ; preds = %for.end295
  %incdec.ptr299 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 1
  %106 = load i8, i8* %in.addr.8.lcssa, align 1, !tbaa !1
  %incdec.ptr302 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 2
  %107 = load i8, i8* %incdec.ptr299, align 1, !tbaa !1
  %incdec.ptr306 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 3
  %108 = load i8, i8* %incdec.ptr302, align 1, !tbaa !1
  %incdec.ptr310 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 4
  %109 = load i8, i8* %incdec.ptr306, align 1, !tbaa !1
  %incdec.ptr313 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 5
  %110 = load i8, i8* %incdec.ptr310, align 1, !tbaa !1
  %111 = insertelement <2 x i8> undef, i8 %106, i32 0
  %112 = insertelement <2 x i8> %111, i8 %110, i32 1
  %113 = zext <2 x i8> %112 to <2 x i64>
  %114 = shl nuw nsw <2 x i64> %113, <i64 24, i64 24>
  %incdec.ptr316 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 6
  %115 = load i8, i8* %incdec.ptr313, align 1, !tbaa !1
  %116 = insertelement <2 x i8> undef, i8 %107, i32 0
  %117 = insertelement <2 x i8> %116, i8 %115, i32 1
  %118 = zext <2 x i8> %117 to <2 x i64>
  %119 = shl nuw nsw <2 x i64> %118, <i64 16, i64 16>
  %120 = or <2 x i64> %119, %114
  %incdec.ptr320 = getelementptr inbounds i8, i8* %in.addr.8.lcssa, i64 7
  %121 = load i8, i8* %incdec.ptr316, align 1, !tbaa !1
  %122 = insertelement <2 x i8> undef, i8 %108, i32 0
  %123 = insertelement <2 x i8> %122, i8 %121, i32 1
  %124 = zext <2 x i8> %123 to <2 x i64>
  %125 = shl nuw nsw <2 x i64> %124, <i64 8, i64 8>
  %126 = or <2 x i64> %120, %125
  %127 = load i8, i8* %incdec.ptr320, align 1, !tbaa !1
  %128 = insertelement <2 x i8> undef, i8 %109, i32 0
  %129 = insertelement <2 x i8> %128, i8 %127, i32 1
  %130 = zext <2 x i8> %129 to <2 x i64>
  %131 = or <2 x i64> %126, %130
  %arrayidx327 = getelementptr inbounds <2 x i64>, <2 x i64>* %tin, i64 0, i64 0
  %arrayidx328 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  store <2 x i64> %131, <2 x i64>* %tin, align 16, !tbaa !4
  call void @BF_encrypt(i64* %arrayidx327, %struct.bf_key_st* %ks, i32 0) #3
  %132 = load i64, i64* %arrayidx327, align 16, !tbaa !4
  %xor331 = xor i64 %132, %xor0.0.lcssa
  %133 = load i64, i64* %arrayidx328, align 8, !tbaa !4
  %xor333 = xor i64 %133, %xor1.0.lcssa
  %add.ptr335 = getelementptr inbounds i8, i8* %out.addr.1.lcssa, i64 %l.1.in.lcssa
  %134 = extractelement <2 x i64> %131, i32 0
  %135 = extractelement <2 x i64> %131, i32 1
  switch i64 %l.1.in.lcssa, label %if.end407 [
    i64 8, label %sw.bb337
    i64 7, label %sw.bb341
    i64 6, label %sw.bb346
    i64 5, label %sw.bb351
    i64 4, label %sw.bb356
    i64 3, label %sw.bb360
    i64 2, label %sw.bb365
    i64 1, label %sw.bb370
  ]

sw.bb337:                                         ; preds = %if.then298
  %conv339 = trunc i64 %xor333 to i8
  %incdec.ptr340 = getelementptr inbounds i8, i8* %add.ptr335, i64 -1
  store i8 %conv339, i8* %incdec.ptr340, align 1, !tbaa !1
  br label %sw.bb341

sw.bb341:                                         ; preds = %if.then298, %sw.bb337
  %out.addr.2 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr340, %sw.bb337 ]
  %shr342 = lshr i64 %xor333, 8
  %conv344 = trunc i64 %shr342 to i8
  %incdec.ptr345 = getelementptr inbounds i8, i8* %out.addr.2, i64 -1
  store i8 %conv344, i8* %incdec.ptr345, align 1, !tbaa !1
  br label %sw.bb346

sw.bb346:                                         ; preds = %if.then298, %sw.bb341
  %out.addr.3 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr345, %sw.bb341 ]
  %shr347 = lshr i64 %xor333, 16
  %conv349 = trunc i64 %shr347 to i8
  %incdec.ptr350 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv349, i8* %incdec.ptr350, align 1, !tbaa !1
  br label %sw.bb351

sw.bb351:                                         ; preds = %if.then298, %sw.bb346
  %out.addr.4 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr350, %sw.bb346 ]
  %shr352 = lshr i64 %xor333, 24
  %conv354 = trunc i64 %shr352 to i8
  %incdec.ptr355 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv354, i8* %incdec.ptr355, align 1, !tbaa !1
  br label %sw.bb356

sw.bb356:                                         ; preds = %if.then298, %sw.bb351
  %out.addr.5 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr355, %sw.bb351 ]
  %conv358 = trunc i64 %xor331 to i8
  %incdec.ptr359 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv358, i8* %incdec.ptr359, align 1, !tbaa !1
  br label %sw.bb360

sw.bb360:                                         ; preds = %if.then298, %sw.bb356
  %out.addr.6 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr359, %sw.bb356 ]
  %shr361 = lshr i64 %xor331, 8
  %conv363 = trunc i64 %shr361 to i8
  %incdec.ptr364 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv363, i8* %incdec.ptr364, align 1, !tbaa !1
  br label %sw.bb365

sw.bb365:                                         ; preds = %if.then298, %sw.bb360
  %out.addr.7 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr364, %sw.bb360 ]
  %shr366 = lshr i64 %xor331, 16
  %conv368 = trunc i64 %shr366 to i8
  %incdec.ptr369 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv368, i8* %incdec.ptr369, align 1, !tbaa !1
  br label %sw.bb370

sw.bb370:                                         ; preds = %if.then298, %sw.bb365
  %out.addr.8 = phi i8* [ %add.ptr335, %if.then298 ], [ %incdec.ptr369, %sw.bb365 ]
  %shr371 = lshr i64 %xor331, 24
  %conv373 = trunc i64 %shr371 to i8
  %incdec.ptr374 = getelementptr inbounds i8, i8* %out.addr.8, i64 -1
  store i8 %conv373, i8* %incdec.ptr374, align 1, !tbaa !1
  br label %if.end407

if.end407:                                        ; preds = %for.end295, %sw.bb370, %if.then298, %sw.epilog, %for.end
  %storemerge635.in.in = phi i64 [ %73, %sw.epilog ], [ %tout0.0.lcssa, %for.end ], [ %xor0.0.lcssa, %for.end295 ], [ %134, %sw.bb370 ], [ %134, %if.then298 ]
  %storemerge631.in.in = phi i64 [ %74, %sw.epilog ], [ %tout1.0.lcssa, %for.end ], [ %xor1.0.lcssa, %for.end295 ], [ %135, %sw.bb370 ], [ %135, %if.then298 ]
  %storemerge635.in = lshr i64 %storemerge635.in.in, 24
  %storemerge635 = trunc i64 %storemerge635.in to i8
  store i8 %storemerge635, i8* %iv, align 1, !tbaa !1
  %storemerge634.in = lshr i64 %storemerge635.in.in, 16
  %storemerge634 = trunc i64 %storemerge634.in to i8
  store i8 %storemerge634, i8* %incdec.ptr, align 1, !tbaa !1
  %storemerge633.in = lshr i64 %storemerge635.in.in, 8
  %storemerge633 = trunc i64 %storemerge633.in to i8
  store i8 %storemerge633, i8* %incdec.ptr197, align 1, !tbaa !1
  %storemerge632 = trunc i64 %storemerge635.in.in to i8
  store i8 %storemerge632, i8* %incdec.ptr201, align 1, !tbaa !1
  %storemerge631.in = lshr i64 %storemerge631.in.in, 24
  %storemerge631 = trunc i64 %storemerge631.in to i8
  store i8 %storemerge631, i8* %incdec.ptr205, align 1, !tbaa !1
  %storemerge630.in = lshr i64 %storemerge631.in.in, 16
  %storemerge630 = trunc i64 %storemerge630.in to i8
  store i8 %storemerge630, i8* %incdec.ptr208, align 1, !tbaa !1
  %storemerge629.in = lshr i64 %storemerge631.in.in, 8
  %storemerge629 = trunc i64 %storemerge629.in to i8
  store i8 %storemerge629, i8* %incdec.ptr211, align 1, !tbaa !1
  %storemerge = trunc i64 %storemerge631.in.in to i8
  store i8 %storemerge, i8* %incdec.ptr215, align 1, !tbaa !1
  call void @llvm.lifetime.end(i64 16, i8* %0) #3
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
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !2, i64 0}
