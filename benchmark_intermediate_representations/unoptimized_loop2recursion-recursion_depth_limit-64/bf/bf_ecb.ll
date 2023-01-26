; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion-recursion_depth_limit-64/bf/bf_ecb.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf_ecb.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@.str = private unnamed_addr constant [42 x i8] c"BlowFish part of SSLeay 0.7.0 30-Jan-1997\00", align 1
@BF_version = global i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"blowfish(idx)\00", align 1

; Function Attrs: norecurse nounwind readnone uwtable
define i8* @BF_options() #0 {
entry:
  ret i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
}

; Function Attrs: nounwind uwtable
define void @BF_ecb_encrypt(i8* nocapture readonly %in, i8* nocapture %out, %struct.bf_key_st* %ks, i32 %encrypt) #1 {
entry:
  %d = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %d to [2 x i64]*
  %i = bitcast <2 x i64>* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %i) #4
  %incdec.ptr = getelementptr inbounds i8, i8* %in, i64 1
  %i1 = load i8, i8* %in, align 1, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %in, i64 2
  %i2 = load i8, i8* %incdec.ptr, align 1, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %in, i64 3
  %i3 = load i8, i8* %incdec.ptr1, align 1, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %in, i64 4
  %i4 = load i8, i8* %incdec.ptr4, align 1, !tbaa !1
  %arrayidx = getelementptr inbounds <2 x i64>, <2 x i64>* %d, i64 0, i64 0
  %incdec.ptr11 = getelementptr inbounds i8, i8* %in, i64 5
  %i5 = load i8, i8* %incdec.ptr8, align 1, !tbaa !1
  %i6 = insertelement <2 x i8> undef, i8 %i1, i32 0
  %i7 = insertelement <2 x i8> %i6, i8 %i5, i32 1
  %i8 = zext <2 x i8> %i7 to <2 x i64>
  %i9 = shl nuw nsw <2 x i64> %i8, <i64 24, i64 24>
  %incdec.ptr14 = getelementptr inbounds i8, i8* %in, i64 6
  %i10 = load i8, i8* %incdec.ptr11, align 1, !tbaa !1
  %i11 = insertelement <2 x i8> undef, i8 %i2, i32 0
  %i12 = insertelement <2 x i8> %i11, i8 %i10, i32 1
  %i13 = zext <2 x i8> %i12 to <2 x i64>
  %i14 = shl nuw nsw <2 x i64> %i13, <i64 16, i64 16>
  %i15 = or <2 x i64> %i14, %i9
  %incdec.ptr18 = getelementptr inbounds i8, i8* %in, i64 7
  %i16 = load i8, i8* %incdec.ptr14, align 1, !tbaa !1
  %i17 = insertelement <2 x i8> undef, i8 %i3, i32 0
  %i18 = insertelement <2 x i8> %i17, i8 %i16, i32 1
  %i19 = zext <2 x i8> %i18 to <2 x i64>
  %i20 = shl nuw nsw <2 x i64> %i19, <i64 8, i64 8>
  %i21 = or <2 x i64> %i15, %i20
  %i22 = load i8, i8* %incdec.ptr18, align 1, !tbaa !1
  %i23 = insertelement <2 x i8> undef, i8 %i4, i32 0
  %i24 = insertelement <2 x i8> %i23, i8 %i22, i32 1
  %i25 = zext <2 x i8> %i24 to <2 x i64>
  %i26 = or <2 x i64> %i21, %i25
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %tmpcast, i64 0, i64 1
  store <2 x i64> %i26, <2 x i64>* %d, align 16, !tbaa !4
  call void @BF_encrypt(i64* %arrayidx, %struct.bf_key_st* %ks, i32 %encrypt) #4
  %i27 = load i64, i64* %arrayidx, align 16, !tbaa !4
  %shr = lshr i64 %i27, 24
  %conv27 = trunc i64 %shr to i8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %out, i64 1
  store i8 %conv27, i8* %out, align 1, !tbaa !1
  %shr29 = lshr i64 %i27, 16
  %conv31 = trunc i64 %shr29 to i8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %out, i64 2
  store i8 %conv31, i8* %incdec.ptr28, align 1, !tbaa !1
  %shr33 = lshr i64 %i27, 8
  %conv35 = trunc i64 %shr33 to i8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %out, i64 3
  store i8 %conv35, i8* %incdec.ptr32, align 1, !tbaa !1
  %conv38 = trunc i64 %i27 to i8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %out, i64 4
  store i8 %conv38, i8* %incdec.ptr36, align 1, !tbaa !1
  %i28 = load i64, i64* %arrayidx25, align 8, !tbaa !4
  %shr41 = lshr i64 %i28, 24
  %conv43 = trunc i64 %shr41 to i8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %out, i64 5
  store i8 %conv43, i8* %incdec.ptr39, align 1, !tbaa !1
  %shr45 = lshr i64 %i28, 16
  %conv47 = trunc i64 %shr45 to i8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %out, i64 6
  store i8 %conv47, i8* %incdec.ptr44, align 1, !tbaa !1
  %shr49 = lshr i64 %i28, 8
  %conv51 = trunc i64 %shr49 to i8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %out, i64 7
  store i8 %conv51, i8* %incdec.ptr48, align 1, !tbaa !1
  %conv54 = trunc i64 %i28 to i8
  store i8 %conv54, i8* %incdec.ptr52, align 1, !tbaa !1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %i) #4
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !2, i64 0}
