; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-8/rawdaudio/adpcm.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/rawdaudio/adpcm.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i1, i32, i32, i8* }
%1 = type { i32, i32 }
%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal unnamed_addr constant [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal unnamed_addr constant [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16
@"adpcm_coder$0_return_value_struct" = dso_local global %0 zeroinitializer
@"adpcm_decoder$0_return_value_struct" = dso_local global %1 zeroinitializer

; Function Attrs: norecurse nounwind uwtable
define void @adpcm_coder(i16* nocapture readonly %indata, i8* nocapture %outdata, i32 %len, %struct.adpcm_state* nocapture %state) #0 {
entry:
  %valprev = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %state, i64 0, i32 0
  %i = load i16, i16* %valprev, align 2, !tbaa !1
  %conv = sext i16 %i to i32
  %index1 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %state, i64 0, i32 1
  %i1 = load i8, i8* %index1, align 2, !tbaa !6
  %conv2 = sext i8 %i1 to i32
  %cmp127 = icmp sgt i32 %len, 0
  br i1 %cmp127, label %for.body.preheader, label %if.end68

for.body.preheader:                               ; preds = %entry
  %idxprom = sext i8 %i1 to i64
  %arrayidx = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %idxprom
  %i2 = load i32, i32* %arrayidx, align 4, !tbaa !7
  br label %"adpcm_coder$0_initialize_context"

"adpcm_coder$0_initialize_context":               ; preds = %for.body.preheader
  br label %"adpcm_coder$0_call_recursive_function"

"adpcm_coder$0_call_recursive_function":          ; preds = %"adpcm_coder$0_initialize_context"
  call void @"adpcm_coder$0"(i32 1, i32 %conv2, i32 undef, i32 %conv, i16* %indata, i32 %i2, i8* %outdata, i32 %len)
  br label %"adpcm_coder$0_extract_return_values$0"

"adpcm_coder$0_extract_return_values$0":          ; preds = %"adpcm_coder$0_call_recursive_function"
  %i3 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 0
  %i4 = load i32, i32* %i3, align 4
  %i5 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 1
  %i6 = load i1, i1* %i5, align 1
  %i7 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 2
  %i8 = load i32, i32* %i7, align 4
  %i9 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 3
  %i10 = load i32, i32* %i9, align 4
  %i11 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 4
  %i12 = load i8*, i8** %i11, align 8
  br label %for.end

for.end:                                          ; preds = %"adpcm_coder$0_extract_return_values$0"
  br i1 %i6, label %if.then65, label %if.end68

if.then65:                                        ; preds = %for.end
  %conv66 = trunc i32 %i10 to i8
  store i8 %conv66, i8* %i12, align 1, !tbaa !9
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %for.end, %entry
  %valpred.0.lcssa141 = phi i32 [ %i4, %for.end ], [ %i4, %if.then65 ], [ %conv, %entry ]
  %index.0.lcssa140 = phi i32 [ %i8, %for.end ], [ %i8, %if.then65 ], [ %conv2, %entry ]
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
  %i = load i16, i16* %valprev, align 2, !tbaa !1
  %conv = sext i16 %i to i32
  %index1 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %state, i64 0, i32 1
  %i1 = load i8, i8* %index1, align 2, !tbaa !6
  %conv2 = sext i8 %i1 to i32
  %cmp97 = icmp sgt i32 %len, 0
  br i1 %cmp97, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %idxprom = sext i8 %i1 to i64
  %arrayidx = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %idxprom
  %i2 = load i32, i32* %arrayidx, align 4, !tbaa !7
  br label %"adpcm_decoder$0_initialize_context"

"adpcm_decoder$0_initialize_context":             ; preds = %for.body.preheader
  br label %"adpcm_decoder$0_call_recursive_function"

"adpcm_decoder$0_call_recursive_function":        ; preds = %"adpcm_decoder$0_initialize_context"
  call void @"adpcm_decoder$0"(i8* %indata, i32 %len, i32 undef, i32 0, i32 %conv2, i32 %conv, i16* %outdata, i32 %i2)
  br label %"adpcm_decoder$0_extract_return_values$0"

"adpcm_decoder$0_extract_return_values$0":        ; preds = %"adpcm_decoder$0_call_recursive_function"
  %i3 = getelementptr %1, %1* @"adpcm_decoder$0_return_value_struct", i32 0, i32 0
  %i4 = load i32, i32* %i3, align 4
  %i5 = getelementptr %1, %1* @"adpcm_decoder$0_return_value_struct", i32 0, i32 1
  %i6 = load i32, i32* %i5, align 4
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %"adpcm_decoder$0_extract_return_values$0"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %index.0.lcssa = phi i32 [ %conv2, %entry ], [ %i4, %for.end.loopexit ]
  %valpred.0.lcssa = phi i32 [ %conv, %entry ], [ %i6, %for.end.loopexit ]
  %conv55 = trunc i32 %valpred.0.lcssa to i16
  store i16 %conv55, i16* %valprev, align 2, !tbaa !1
  %conv57 = trunc i32 %index.0.lcssa to i8
  store i8 %conv57, i8* %index1, align 2, !tbaa !6
  ret void
}

define void @"adpcm_coder$0"(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3, i16* %arg4, i32 %arg5, i8* %arg6, i32 %arg7) {
"adpcm_coder$0_preheader_in_recursion":
  br label %"adpcm_coder$0_header"

"adpcm_coder$0_header":                           ; preds = %"adpcm_coder$0_increment_loop_counter$0", %"adpcm_coder$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"adpcm_coder$0_preheader_in_recursion" ], [ %i15, %"adpcm_coder$0_increment_loop_counter$0" ]
  %bufferstep.0135 = phi i32 [ %lnot.ext, %"adpcm_coder$0_increment_loop_counter$0" ], [ %arg, %"adpcm_coder$0_preheader_in_recursion" ]
  %outputbuffer.0134 = phi i32 [ %outputbuffer.1, %"adpcm_coder$0_increment_loop_counter$0" ], [ %arg2, %"adpcm_coder$0_preheader_in_recursion" ]
  %index.0133 = phi i32 [ %..add44, %"adpcm_coder$0_increment_loop_counter$0" ], [ %arg1, %"adpcm_coder$0_preheader_in_recursion" ]
  %valpred.0132 = phi i32 [ %valpred.2, %"adpcm_coder$0_increment_loop_counter$0" ], [ %arg3, %"adpcm_coder$0_preheader_in_recursion" ]
  %step.0131 = phi i32 [ %i13, %"adpcm_coder$0_increment_loop_counter$0" ], [ %arg5, %"adpcm_coder$0_preheader_in_recursion" ]
  %len.addr.0130 = phi i32 [ %dec, %"adpcm_coder$0_increment_loop_counter$0" ], [ %arg7, %"adpcm_coder$0_preheader_in_recursion" ]
  %inp.0129 = phi i16* [ %incdec.ptr, %"adpcm_coder$0_increment_loop_counter$0" ], [ %arg4, %"adpcm_coder$0_preheader_in_recursion" ]
  %outp.0128 = phi i8* [ %outp.1, %"adpcm_coder$0_increment_loop_counter$0" ], [ %arg6, %"adpcm_coder$0_preheader_in_recursion" ]
  %incdec.ptr = getelementptr inbounds i16, i16* %inp.0129, i64 1
  %i = load i16, i16* %inp.0129, align 2, !tbaa !10
  %conv4 = sext i16 %i to i32
  %sub = sub nsw i32 %conv4, %valpred.0132
  %cmp5 = icmp slt i32 %sub, 0
  %i8 = ashr i32 %sub, 31
  %i9 = and i32 %i8, 8
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

if.then16:                                        ; preds = %"adpcm_coder$0_header"
  %or = or i32 %delta.0, 2
  %sub17 = sub nsw i32 %diff.1, %shr13
  %add18 = add nsw i32 %vpdiff.0, %shr13
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %"adpcm_coder$0_header"
  %delta.1 = phi i32 [ %or, %if.then16 ], [ %delta.0, %"adpcm_coder$0_header" ]
  %diff.2 = phi i32 [ %sub17, %if.then16 ], [ %diff.1, %"adpcm_coder$0_header" ]
  %vpdiff.1 = phi i32 [ %add18, %if.then16 ], [ %vpdiff.0, %"adpcm_coder$0_header" ]
  %shr20 = ashr i32 %step.0131, 2
  %cmp21 = icmp slt i32 %diff.2, %shr20
  %i10 = zext i1 %cmp21 to i32
  %or24 = xor i32 %i10, 1
  %add25 = select i1 %cmp21, i32 0, i32 %shr20
  %vpdiff.2 = add nsw i32 %add25, %vpdiff.1
  %i11 = sub i32 0, %vpdiff.2
  %valpred.1.p = select i1 %cmp5, i32 %i11, i32 %vpdiff.2
  %valpred.1 = add i32 %valpred.1.p, %valpred.0132
  %cmp32 = icmp sgt i32 %valpred.1, 32767
  %cmp36 = icmp slt i32 %valpred.1, -32768
  %.valpred.1 = select i1 %cmp36, i32 -32768, i32 %valpred.1
  %valpred.2 = select i1 %cmp32, i32 32767, i32 %.valpred.1
  %delta.2 = or i32 %delta.1, %i9
  %or41 = or i32 %delta.2, %or24
  %idxprom42 = sext i32 %or41 to i64
  %arrayidx43 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i64 0, i64 %idxprom42
  %i12 = load i32, i32* %arrayidx43, align 4, !tbaa !7
  %add44 = add nsw i32 %i12, %index.0133
  %cmp45 = icmp slt i32 %add44, 0
  %.add44 = select i1 %cmp45, i32 0, i32 %add44
  %cmp49 = icmp sgt i32 %.add44, 88
  %..add44 = select i1 %cmp49, i32 88, i32 %.add44
  %idxprom53 = sext i32 %..add44 to i64
  %arrayidx54 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %idxprom53
  %i13 = load i32, i32* %arrayidx54, align 4, !tbaa !7
  %tobool55 = icmp ne i32 %bufferstep.0135, 0
  br i1 %tobool55, label %if.then56, label %if.else57

if.else57:                                        ; preds = %if.end19
  %and58 = and i32 %or41, 15
  %or59 = or i32 %and58, %outputbuffer.0134
  %conv60 = trunc i32 %or59 to i8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %outp.0128, i64 1
  store i8 %conv60, i8* %outp.0128, align 1, !tbaa !9
  br label %"adpcm_coder$0_latch$0"

if.then56:                                        ; preds = %if.end19
  %shl = shl nsw i32 %or41, 4
  %and = and i32 %shl, 240
  br label %"adpcm_coder$0_latch$0"

"adpcm_coder$0_latch$0":                          ; preds = %if.then56, %if.else57
  %outp.1 = phi i8* [ %outp.0128, %if.then56 ], [ %incdec.ptr61, %if.else57 ]
  %outputbuffer.1 = phi i32 [ %and, %if.then56 ], [ %outputbuffer.0134, %if.else57 ]
  %i14 = zext i1 %tobool55 to i32
  %lnot.ext = xor i32 %i14, 1
  %dec = add nsw i32 %len.addr.0130, -1
  %cmp = icmp sgt i32 %len.addr.0130, 1
  br i1 %cmp, label %"adpcm_coder$0_increment_loop_counter$0", label %"adpcm_coder$0_return_from_recursive_function$0"

"adpcm_coder$0_increment_loop_counter$0":         ; preds = %"adpcm_coder$0_latch$0"
  %i15 = add i8 %loop_counter, 1
  %i16 = icmp ult i8 %i15, 8
  br i1 %i16, label %"adpcm_coder$0_header", label %"adpcm_coder$0_increment_depth_counter"

"adpcm_coder$0_increment_depth_counter":          ; preds = %"adpcm_coder$0_increment_loop_counter$0"
  %outp.1.lcssa9 = phi i8* [ %outp.1, %"adpcm_coder$0_increment_loop_counter$0" ]
  %outputbuffer.1.lcssa8 = phi i32 [ %outputbuffer.1, %"adpcm_coder$0_increment_loop_counter$0" ]
  %lnot.ext.lcssa7 = phi i32 [ %lnot.ext, %"adpcm_coder$0_increment_loop_counter$0" ]
  %dec.lcssa6 = phi i32 [ %dec, %"adpcm_coder$0_increment_loop_counter$0" ]
  %valpred.2.lcssa5 = phi i32 [ %valpred.2, %"adpcm_coder$0_increment_loop_counter$0" ]
  %..add44.lcssa4 = phi i32 [ %..add44, %"adpcm_coder$0_increment_loop_counter$0" ]
  %.lcssa3 = phi i32 [ %i13, %"adpcm_coder$0_increment_loop_counter$0" ]
  %incdec.ptr.lcssa1 = phi i16* [ %incdec.ptr, %"adpcm_coder$0_increment_loop_counter$0" ]
  br label %"adpcm_coder$0_recursively_call_function"

"adpcm_coder$0_recursively_call_function":        ; preds = %"adpcm_coder$0_increment_depth_counter"
  call void @"adpcm_coder$0"(i32 %lnot.ext.lcssa7, i32 %..add44.lcssa4, i32 %outputbuffer.1.lcssa8, i32 %valpred.2.lcssa5, i16* %incdec.ptr.lcssa1, i32 %.lcssa3, i8* %outp.1.lcssa9, i32 %dec.lcssa6)
  ret void

"adpcm_coder$0_return_from_recursive_function$0": ; preds = %"adpcm_coder$0_latch$0"
  %outp.1.lcssa = phi i8* [ %outp.1, %"adpcm_coder$0_latch$0" ]
  %outputbuffer.1.lcssa = phi i32 [ %outputbuffer.1, %"adpcm_coder$0_latch$0" ]
  %valpred.2.lcssa = phi i32 [ %valpred.2, %"adpcm_coder$0_latch$0" ]
  %..add44.lcssa = phi i32 [ %..add44, %"adpcm_coder$0_latch$0" ]
  %tobool55.lcssa = phi i1 [ %tobool55, %"adpcm_coder$0_latch$0" ]
  %i17 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 0
  store i32 %valpred.2.lcssa, i32* %i17, align 4
  %i18 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 1
  store i1 %tobool55.lcssa, i1* %i18, align 1
  %i19 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 2
  store i32 %..add44.lcssa, i32* %i19, align 4
  %i20 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 3
  store i32 %outputbuffer.1.lcssa, i32* %i20, align 4
  %i21 = getelementptr %0, %0* @"adpcm_coder$0_return_value_struct", i32 0, i32 4
  store i8* %outp.1.lcssa, i8** %i21, align 8
  ret void
}

define void @"adpcm_decoder$0"(i8* %arg, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 %arg5, i16* %arg6, i32 %arg7) {
"adpcm_decoder$0_preheader_in_recursion":
  br label %"adpcm_decoder$0_header"

"adpcm_decoder$0_header":                         ; preds = %"adpcm_decoder$0_increment_loop_counter$0", %"adpcm_decoder$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"adpcm_decoder$0_preheader_in_recursion" ], [ %i12, %"adpcm_decoder$0_increment_loop_counter$0" ]
  %bufferstep.0105 = phi i32 [ %lnot.ext, %"adpcm_decoder$0_increment_loop_counter$0" ], [ %arg3, %"adpcm_decoder$0_preheader_in_recursion" ]
  %inputbuffer.0104 = phi i32 [ %inputbuffer.1, %"adpcm_decoder$0_increment_loop_counter$0" ], [ %arg2, %"adpcm_decoder$0_preheader_in_recursion" ]
  %index.0103 = phi i32 [ %..add, %"adpcm_decoder$0_increment_loop_counter$0" ], [ %arg4, %"adpcm_decoder$0_preheader_in_recursion" ]
  %valpred.0102 = phi i32 [ %valpred.2, %"adpcm_decoder$0_increment_loop_counter$0" ], [ %arg5, %"adpcm_decoder$0_preheader_in_recursion" ]
  %step.0101 = phi i32 [ %i11, %"adpcm_decoder$0_increment_loop_counter$0" ], [ %arg7, %"adpcm_decoder$0_preheader_in_recursion" ]
  %len.addr.0100 = phi i32 [ %dec, %"adpcm_decoder$0_increment_loop_counter$0" ], [ %arg1, %"adpcm_decoder$0_preheader_in_recursion" ]
  %outp.099 = phi i16* [ %incdec.ptr54, %"adpcm_decoder$0_increment_loop_counter$0" ], [ %arg6, %"adpcm_decoder$0_preheader_in_recursion" ]
  %inp.098 = phi i8* [ %inp.1, %"adpcm_decoder$0_increment_loop_counter$0" ], [ %arg, %"adpcm_decoder$0_preheader_in_recursion" ]
  %tobool = icmp ne i32 %bufferstep.0105, 0
  br i1 %tobool, label %"adpcm_decoder$0_latch$0", label %if.else

if.else:                                          ; preds = %"adpcm_decoder$0_header"
  %incdec.ptr = getelementptr inbounds i8, i8* %inp.098, i64 1
  %i = load i8, i8* %inp.098, align 1, !tbaa !9
  %conv4 = sext i8 %i to i32
  %shr95 = lshr i32 %conv4, 4
  br label %"adpcm_decoder$0_latch$0"

"adpcm_decoder$0_latch$0":                        ; preds = %if.else, %"adpcm_decoder$0_header"
  %inp.1 = phi i8* [ %incdec.ptr, %if.else ], [ %inp.098, %"adpcm_decoder$0_header" ]
  %delta.0.in = phi i32 [ %shr95, %if.else ], [ %inputbuffer.0104, %"adpcm_decoder$0_header" ]
  %inputbuffer.1 = phi i32 [ %conv4, %if.else ], [ %inputbuffer.0104, %"adpcm_decoder$0_header" ]
  %delta.0 = and i32 %delta.0.in, 15
  %i8 = zext i1 %tobool to i32
  %lnot.ext = xor i32 %i8, 1
  %idxprom796 = zext i32 %delta.0 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i64 0, i64 %idxprom796
  %i9 = load i32, i32* %arrayidx8, align 4, !tbaa !7
  %add = add nsw i32 %i9, %index.0103
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
  %i10 = sub i32 0, %vpdiff.2
  %valpred.1.p = select i1 %tobool37, i32 %vpdiff.2, i32 %i10
  %valpred.1 = add i32 %valpred.1.p, %valpred.0102
  %cmp42 = icmp sgt i32 %valpred.1, 32767
  %cmp46 = icmp slt i32 %valpred.1, -32768
  %.valpred.1 = select i1 %cmp46, i32 -32768, i32 %valpred.1
  %valpred.2 = select i1 %cmp42, i32 32767, i32 %.valpred.1
  %idxprom51 = sext i32 %..add to i64
  %arrayidx52 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i64 0, i64 %idxprom51
  %i11 = load i32, i32* %arrayidx52, align 4, !tbaa !7
  %conv53 = trunc i32 %valpred.2 to i16
  %incdec.ptr54 = getelementptr inbounds i16, i16* %outp.099, i64 1
  store i16 %conv53, i16* %outp.099, align 2, !tbaa !10
  %dec = add nsw i32 %len.addr.0100, -1
  %cmp = icmp sgt i32 %len.addr.0100, 1
  br i1 %cmp, label %"adpcm_decoder$0_increment_loop_counter$0", label %"adpcm_decoder$0_return_from_recursive_function$0"

"adpcm_decoder$0_increment_loop_counter$0":       ; preds = %"adpcm_decoder$0_latch$0"
  %i12 = add i8 %loop_counter, 1
  %i13 = icmp ult i8 %i12, 8
  br i1 %i13, label %"adpcm_decoder$0_header", label %"adpcm_decoder$0_increment_depth_counter"

"adpcm_decoder$0_increment_depth_counter":        ; preds = %"adpcm_decoder$0_increment_loop_counter$0"
  %inp.1.lcssa8 = phi i8* [ %inp.1, %"adpcm_decoder$0_increment_loop_counter$0" ]
  %inputbuffer.1.lcssa7 = phi i32 [ %inputbuffer.1, %"adpcm_decoder$0_increment_loop_counter$0" ]
  %lnot.ext.lcssa6 = phi i32 [ %lnot.ext, %"adpcm_decoder$0_increment_loop_counter$0" ]
  %..add.lcssa5 = phi i32 [ %..add, %"adpcm_decoder$0_increment_loop_counter$0" ]
  %valpred.2.lcssa4 = phi i32 [ %valpred.2, %"adpcm_decoder$0_increment_loop_counter$0" ]
  %.lcssa3 = phi i32 [ %i11, %"adpcm_decoder$0_increment_loop_counter$0" ]
  %incdec.ptr54.lcssa2 = phi i16* [ %incdec.ptr54, %"adpcm_decoder$0_increment_loop_counter$0" ]
  %dec.lcssa1 = phi i32 [ %dec, %"adpcm_decoder$0_increment_loop_counter$0" ]
  br label %"adpcm_decoder$0_recursively_call_function"

"adpcm_decoder$0_recursively_call_function":      ; preds = %"adpcm_decoder$0_increment_depth_counter"
  call void @"adpcm_decoder$0"(i8* %inp.1.lcssa8, i32 %dec.lcssa1, i32 %inputbuffer.1.lcssa7, i32 %lnot.ext.lcssa6, i32 %..add.lcssa5, i32 %valpred.2.lcssa4, i16* %incdec.ptr54.lcssa2, i32 %.lcssa3)
  ret void

"adpcm_decoder$0_return_from_recursive_function$0": ; preds = %"adpcm_decoder$0_latch$0"
  %..add.lcssa = phi i32 [ %..add, %"adpcm_decoder$0_latch$0" ]
  %valpred.2.lcssa = phi i32 [ %valpred.2, %"adpcm_decoder$0_latch$0" ]
  %i14 = getelementptr %1, %1* @"adpcm_decoder$0_return_value_struct", i32 0, i32 0
  store i32 %..add.lcssa, i32* %i14, align 4
  %i15 = getelementptr %1, %1* @"adpcm_decoder$0_return_value_struct", i32 0, i32 1
  store i32 %valpred.2.lcssa, i32* %i15, align 4
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
!9 = !{!4, !4, i64 0}
!10 = !{!3, !3, i64 0}
