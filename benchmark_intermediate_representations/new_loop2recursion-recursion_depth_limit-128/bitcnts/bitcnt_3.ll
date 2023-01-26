; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-recursion_depth_limit-128/bitcnts/bitcnt_3.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bitcnts/bitcnt_3.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bits = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @ntbl_bitcount(i64 %x) #0 {
entry:
  %conv = and i64 %x, 15
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv
  %i = load i8, i8* %arrayidx, align 1, !tbaa !1
  %conv1 = sext i8 %i to i32
  %and2 = lshr i64 %x, 4
  %conv3 = and i64 %and2, 15
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv3
  %i1 = load i8, i8* %arrayidx5, align 1, !tbaa !1
  %conv6 = sext i8 %i1 to i32
  %add = add nsw i32 %conv6, %conv1
  %and7 = lshr i64 %x, 8
  %conv9 = and i64 %and7, 15
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv9
  %i2 = load i8, i8* %arrayidx11, align 1, !tbaa !1
  %conv12 = sext i8 %i2 to i32
  %add13 = add nsw i32 %add, %conv12
  %and14 = lshr i64 %x, 12
  %conv16 = and i64 %and14, 15
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv16
  %i3 = load i8, i8* %arrayidx18, align 1, !tbaa !1
  %conv19 = sext i8 %i3 to i32
  %add20 = add nsw i32 %add13, %conv19
  %and21 = lshr i64 %x, 16
  %conv23 = and i64 %and21, 15
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv23
  %i4 = load i8, i8* %arrayidx25, align 1, !tbaa !1
  %conv26 = sext i8 %i4 to i32
  %add27 = add nsw i32 %add20, %conv26
  %and28 = lshr i64 %x, 20
  %conv30 = and i64 %and28, 15
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv30
  %i5 = load i8, i8* %arrayidx32, align 1, !tbaa !1
  %conv33 = sext i8 %i5 to i32
  %add34 = add nsw i32 %add27, %conv33
  %and35 = lshr i64 %x, 24
  %conv37 = and i64 %and35, 15
  %arrayidx39 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv37
  %i6 = load i8, i8* %arrayidx39, align 1, !tbaa !1
  %conv40 = sext i8 %i6 to i32
  %add41 = add nsw i32 %add34, %conv40
  %and42 = lshr i64 %x, 28
  %conv44 = and i64 %and42, 15
  %arrayidx46 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %conv44
  %i7 = load i8, i8* %arrayidx46, align 1, !tbaa !1
  %conv47 = sext i8 %i7 to i32
  %add48 = add nsw i32 %add41, %conv47
  ret i32 %add48
}

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @BW_btbl_bitcount(i64 %x) #0 {
entry:
  %U.sroa.4.0.extract.shift = lshr i64 %x, 8
  %U.sroa.5.0.extract.shift = lshr i64 %x, 16
  %U.sroa.6.0.extract.shift = lshr i64 %x, 24
  %idxprom = and i64 %x, 255
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %idxprom
  %i = load i8, i8* %arrayidx1, align 1, !tbaa !1
  %conv = sext i8 %i to i32
  %idxprom4 = and i64 %U.sroa.4.0.extract.shift, 255
  %arrayidx5 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %idxprom4
  %i1 = load i8, i8* %arrayidx5, align 1, !tbaa !1
  %conv6 = sext i8 %i1 to i32
  %add = add nsw i32 %conv6, %conv
  %idxprom9 = and i64 %U.sroa.6.0.extract.shift, 255
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %idxprom9
  %i2 = load i8, i8* %arrayidx10, align 1, !tbaa !1
  %conv11 = sext i8 %i2 to i32
  %add12 = add nsw i32 %add, %conv11
  %idxprom15 = and i64 %U.sroa.5.0.extract.shift, 255
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %idxprom15
  %i3 = load i8, i8* %arrayidx16, align 1, !tbaa !1
  %conv17 = sext i8 %i3 to i32
  %add18 = add nsw i32 %add12, %conv17
  ret i32 %add18
}

; Function Attrs: norecurse nounwind readnone uwtable
define i32 @AR_btbl_bitcount(i64 %x) #0 {
entry:
  %x.addr.sroa.2.0.extract.shift = lshr i64 %x, 8
  %x.addr.sroa.3.0.extract.shift = lshr i64 %x, 16
  %x.addr.sroa.4.0.extract.shift = lshr i64 %x, 24
  %idxprom = and i64 %x, 255
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %idxprom
  %i = load i8, i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %i to i32
  %idxprom2 = and i64 %x.addr.sroa.2.0.extract.shift, 255
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %idxprom2
  %i1 = load i8, i8* %arrayidx3, align 1, !tbaa !1
  %conv4 = sext i8 %i1 to i32
  %add = add nsw i32 %conv4, %conv
  %idxprom6 = and i64 %x.addr.sroa.3.0.extract.shift, 255
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %idxprom6
  %i2 = load i8, i8* %arrayidx7, align 1, !tbaa !1
  %conv8 = sext i8 %i2 to i32
  %add9 = add nsw i32 %add, %conv8
  %idxprom10 = and i64 %x.addr.sroa.4.0.extract.shift, 255
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @bits, i64 0, i64 %idxprom10
  %i3 = load i8, i8* %arrayidx11, align 1, !tbaa !1
  %conv12 = sext i8 %i3 to i32
  %add13 = add nsw i32 %add9, %conv12
  ret i32 %add13
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
