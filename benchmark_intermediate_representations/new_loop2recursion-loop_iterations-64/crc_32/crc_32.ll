; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-64/crc_32/crc_32.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64 }
%1 = type { i64 }
%2 = type { i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@crc_32_tab = internal unnamed_addr constant [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%08lX %7ld %s\0A\00", align 1
@"crc32file$0_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$0" = dso_local global %struct._IO_FILE* null
@"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$1" = dso_local global i64* null
@"crc32buf$0_return_value_struct" = dso_local global %1 zeroinitializer
@"main$0_return_value_struct" = dso_local global %2 zeroinitializer
@"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$2" = dso_local global i64* null
@"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$3" = dso_local global i64* null

; Function Attrs: norecurse nounwind readnone uwtable
define i64 @updateCRC32(i8 zeroext %ch, i64 %crc) #0 {
entry:
  %conv = zext i8 %ch to i64
  %crc.masked = and i64 %crc, 255
  %and = xor i64 %crc.masked, %conv
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %and
  %i = load i64, i64* %arrayidx, align 8, !tbaa !1
  %shr = lshr i64 %crc, 8
  %xor1 = xor i64 %i, %shr
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define i32 @crc32file(i8* nocapture readonly %name, i64* nocapture %crc, i64* nocapture %charcnt) #1 {
entry:
  store i64 0, i64* %charcnt, align 8, !tbaa !1
  %call = tail call %struct._IO_FILE* @fopen(i8* %name, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call122 = tail call i32 @_IO_getc(%struct._IO_FILE* nonnull %call)
  %cmp223 = icmp eq i32 %call122, -1
  br i1 %cmp223, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %while.cond.preheader
  br label %"crc32file$0_initialize_context"

"crc32file$0_initialize_context":                 ; preds = %while.body.preheader
  store %struct._IO_FILE* %call, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$0", align 8
  store i64* %charcnt, i64** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$1", align 8
  br label %"crc32file$0_call_recursive_function"

"crc32file$0_call_recursive_function":            ; preds = %"crc32file$0_initialize_context"
  call void @"crc32file$0"(i64 4294967295, i32 %call122)
  br label %"crc32file$0_extract_return_values$0"

"crc32file$0_extract_return_values$0":            ; preds = %"crc32file$0_call_recursive_function"
  %i = getelementptr %0, %0* @"crc32file$0_return_value_struct", i32 0, i32 0
  %i1 = load i64, i64* %i, align 8
  br label %while.end.loopexit

if.then:                                          ; preds = %entry
  tail call void @perror(i8* %name) #6
  br label %cleanup

while.end.loopexit:                               ; preds = %"crc32file$0_extract_return_values$0"
  %phitmp = xor i64 %i1, -1
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %while.cond.preheader
  %oldcrc32.0.lcssa = phi i64 [ -4294967296, %while.cond.preheader ], [ %phitmp, %while.end.loopexit ]
  %call5 = tail call i32 @ferror(%struct._IO_FILE* nonnull %call) #7
  %tobool = icmp eq i32 %call5, 0
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %while.end
  tail call void @perror(i8* %name) #6
  store i64 -1, i64* %charcnt, align 8, !tbaa !1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.end
  %call8 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  store i64 %oldcrc32.0.lcssa, i64* %crc, align 8, !tbaa !1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #2

; Function Attrs: nounwind
declare void @perror(i8* nocapture readonly) #2

; Function Attrs: nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: norecurse nounwind readonly uwtable
define i64 @crc32buf(i8* nocapture readonly %buf, i64 %len) #4 {
entry:
  %tobool6 = icmp eq i64 %len, 0
  br i1 %tobool6, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %xtraiter = and i64 %len, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.preheader.split, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader
  %i = load i8, i8* %buf, align 1, !tbaa !5
  %conv.prol = zext i8 %i to i64
  %and.prol = xor i64 %conv.prol, 255
  %arrayidx.prol = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %and.prol
  %i1 = load i64, i64* %arrayidx.prol, align 8, !tbaa !1
  %xor1.prol = xor i64 %i1, 16777215
  %dec.prol = add i64 %len, -1
  %incdec.ptr.prol = getelementptr inbounds i8, i8* %buf, i64 1
  br label %for.body.preheader.split

for.body.preheader.split:                         ; preds = %for.body.prol, %for.body.preheader
  %xor1.lcssa.unr = phi i64 [ undef, %for.body.preheader ], [ %xor1.prol, %for.body.prol ]
  %oldcrc32.09.unr = phi i64 [ 4294967295, %for.body.preheader ], [ %xor1.prol, %for.body.prol ]
  %len.addr.08.unr = phi i64 [ %len, %for.body.preheader ], [ %dec.prol, %for.body.prol ]
  %buf.addr.07.unr = phi i8* [ %buf, %for.body.preheader ], [ %incdec.ptr.prol, %for.body.prol ]
  %i2 = icmp eq i64 %len, 1
  br i1 %i2, label %for.end.loopexit, label %for.body.preheader.split.split

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  br label %"crc32buf$0_initialize_context"

"crc32buf$0_initialize_context":                  ; preds = %for.body.preheader.split.split
  br label %"crc32buf$0_call_recursive_function"

"crc32buf$0_call_recursive_function":             ; preds = %"crc32buf$0_initialize_context"
  call void @"crc32buf$0"(i8* %buf.addr.07.unr, i64 %oldcrc32.09.unr, i64 %len.addr.08.unr)
  br label %"crc32buf$0_extract_return_values$0"

"crc32buf$0_extract_return_values$0":             ; preds = %"crc32buf$0_call_recursive_function"
  %i3 = getelementptr %1, %1* @"crc32buf$0_return_value_struct", i32 0, i32 0
  %i4 = load i64, i64* %i3, align 8
  br label %for.end.loopexit.unr-lcssa

for.end.loopexit.unr-lcssa:                       ; preds = %"crc32buf$0_extract_return_values$0"
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.end.loopexit.unr-lcssa, %for.body.preheader.split
  %xor1.lcssa = phi i64 [ %xor1.lcssa.unr, %for.body.preheader.split ], [ %i4, %for.end.loopexit.unr-lcssa ]
  %phitmp = xor i64 %xor1.lcssa, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %oldcrc32.0.lcssa = phi i64 [ -4294967296, %entry ], [ %phitmp, %for.end.loopexit ]
  ret i64 %oldcrc32.0.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #1 {
entry:
  %crc = alloca i64, align 8
  %charcnt = alloca i64, align 8
  %i = bitcast i64* %crc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %i) #7
  %i1 = bitcast i64* %charcnt to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %i1) #7
  %cmp6 = icmp sgt i32 %argc, 1
  br i1 %cmp6, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %entry
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %while.body.preheader
  store i64* %charcnt, i64** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$2", align 8
  store i64* %crc, i64** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$3", align 8
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_initialize_context"
  call void @"main$0"(i32 %argc, i32 0, i8** %argv)
  br label %"main$0_extract_return_values$0"

"main$0_extract_return_values$0":                 ; preds = %"main$0_call_recursive_function"
  %i2 = getelementptr %2, %2* @"main$0_return_value_struct", i32 0, i32 0
  %i3 = load i32, i32* %i2, align 4
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %"main$0_extract_return_values$0"
  %phitmp = icmp ne i32 %i3, 0
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  %errors.0.lcssa = phi i1 [ false, %entry ], [ %phitmp, %while.end.loopexit ]
  %conv = zext i1 %errors.0.lcssa to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %i1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %i) #7
  ret i32 %conv
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

define void @"crc32file$0"(i64 %arg, i32 %arg1) {
"crc32file$0_preheader_in_recursion":
  br label %"crc32file$0_latch$0"

"crc32file$0_latch$0":                            ; preds = %"crc32file$0_increment_loop_counter$0", %"crc32file$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"crc32file$0_preheader_in_recursion" ], [ %i6, %"crc32file$0_increment_loop_counter$0" ]
  %call125 = phi i32 [ %call1, %"crc32file$0_increment_loop_counter$0" ], [ %arg1, %"crc32file$0_preheader_in_recursion" ]
  %oldcrc32.024 = phi i64 [ %xor4, %"crc32file$0_increment_loop_counter$0" ], [ %arg, %"crc32file$0_preheader_in_recursion" ]
  %i = load i64*, i64** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$1", align 8
  %i2 = load i64, i64* %i, align 8, !tbaa !1
  %inc = add nsw i64 %i2, 1
  %i3 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$1", align 8
  store i64 %inc, i64* %i3, align 8, !tbaa !1
  %conv = zext i32 %call125 to i64
  %xor = xor i64 %conv, %oldcrc32.024
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %and
  %i4 = load i64, i64* %arrayidx, align 8, !tbaa !1
  %shr = lshr i64 %oldcrc32.024, 8
  %xor4 = xor i64 %i4, %shr
  %i5 = load %struct._IO_FILE*, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$0", align 8
  %call1 = tail call i32 @_IO_getc(%struct._IO_FILE* nonnull %i5)
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %"crc32file$0_return_from_recursive_function$0", label %"crc32file$0_increment_loop_counter$0"

"crc32file$0_increment_loop_counter$0":           ; preds = %"crc32file$0_latch$0"
  %i6 = add i8 %loop_counter, 1
  %i7 = icmp ult i8 %i6, 64
  br i1 %i7, label %"crc32file$0_latch$0", label %"crc32file$0_increment_depth_counter"

"crc32file$0_increment_depth_counter":            ; preds = %"crc32file$0_increment_loop_counter$0"
  %xor4.lcssa2 = phi i64 [ %xor4, %"crc32file$0_increment_loop_counter$0" ]
  %call1.lcssa1 = phi i32 [ %call1, %"crc32file$0_increment_loop_counter$0" ]
  br label %"crc32file$0_recursively_call_function"

"crc32file$0_recursively_call_function":          ; preds = %"crc32file$0_increment_depth_counter"
  call void @"crc32file$0"(i64 %xor4.lcssa2, i32 %call1.lcssa1)
  ret void

"crc32file$0_return_from_recursive_function$0":   ; preds = %"crc32file$0_latch$0"
  %xor4.lcssa = phi i64 [ %xor4, %"crc32file$0_latch$0" ]
  %i8 = getelementptr %0, %0* @"crc32file$0_return_value_struct", i32 0, i32 0
  store i64 %xor4.lcssa, i64* %i8, align 8
  ret void
}

define void @"crc32buf$0"(i8* %arg, i64 %arg1, i64 %arg2) {
"crc32buf$0_preheader_in_recursion":
  br label %"crc32buf$0_latch$0"

"crc32buf$0_latch$0":                             ; preds = %"crc32buf$0_increment_loop_counter$0", %"crc32buf$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"crc32buf$0_preheader_in_recursion" ], [ %i6, %"crc32buf$0_increment_loop_counter$0" ]
  %oldcrc32.09 = phi i64 [ %arg1, %"crc32buf$0_preheader_in_recursion" ], [ %xor1.1, %"crc32buf$0_increment_loop_counter$0" ]
  %len.addr.08 = phi i64 [ %arg2, %"crc32buf$0_preheader_in_recursion" ], [ %dec.1, %"crc32buf$0_increment_loop_counter$0" ]
  %buf.addr.07 = phi i8* [ %arg, %"crc32buf$0_preheader_in_recursion" ], [ %incdec.ptr.1, %"crc32buf$0_increment_loop_counter$0" ]
  %i = load i8, i8* %buf.addr.07, align 1, !tbaa !5
  %conv = zext i8 %i to i64
  %oldcrc32.0.masked = and i64 %oldcrc32.09, 255
  %and = xor i64 %conv, %oldcrc32.0.masked
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %and
  %i3 = load i64, i64* %arrayidx, align 8, !tbaa !1
  %shr = lshr i64 %oldcrc32.09, 8
  %xor1 = xor i64 %i3, %shr
  %incdec.ptr = getelementptr inbounds i8, i8* %buf.addr.07, i64 1
  %i4 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  %conv.1 = zext i8 %i4 to i64
  %oldcrc32.0.masked.1 = and i64 %xor1, 255
  %and.1 = xor i64 %conv.1, %oldcrc32.0.masked.1
  %arrayidx.1 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %and.1
  %i5 = load i64, i64* %arrayidx.1, align 8, !tbaa !1
  %shr.1 = lshr i64 %xor1, 8
  %xor1.1 = xor i64 %i5, %shr.1
  %dec.1 = add i64 %len.addr.08, -2
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %buf.addr.07, i64 2
  %tobool.1 = icmp eq i64 %dec.1, 0
  br i1 %tobool.1, label %"crc32buf$0_return_from_recursive_function$0", label %"crc32buf$0_increment_loop_counter$0"

"crc32buf$0_increment_loop_counter$0":            ; preds = %"crc32buf$0_latch$0"
  %i6 = add i8 %loop_counter, 1
  %i7 = icmp ult i8 %i6, 64
  br i1 %i7, label %"crc32buf$0_latch$0", label %"crc32buf$0_increment_depth_counter"

"crc32buf$0_increment_depth_counter":             ; preds = %"crc32buf$0_increment_loop_counter$0"
  %xor1.1.lcssa3 = phi i64 [ %xor1.1, %"crc32buf$0_increment_loop_counter$0" ]
  %dec.1.lcssa2 = phi i64 [ %dec.1, %"crc32buf$0_increment_loop_counter$0" ]
  %incdec.ptr.1.lcssa1 = phi i8* [ %incdec.ptr.1, %"crc32buf$0_increment_loop_counter$0" ]
  br label %"crc32buf$0_recursively_call_function"

"crc32buf$0_recursively_call_function":           ; preds = %"crc32buf$0_increment_depth_counter"
  call void @"crc32buf$0"(i8* %incdec.ptr.1.lcssa1, i64 %xor1.1.lcssa3, i64 %dec.1.lcssa2)
  ret void

"crc32buf$0_return_from_recursive_function$0":    ; preds = %"crc32buf$0_latch$0"
  %xor1.1.lcssa = phi i64 [ %xor1.1, %"crc32buf$0_latch$0" ]
  %i8 = getelementptr %1, %1* @"crc32buf$0_return_value_struct", i32 0, i32 0
  store i64 %xor1.1.lcssa, i64* %i8, align 8
  ret void
}

define void @"main$0"(i32 %arg, i32 %arg1, i8** %arg2) {
"main$0_preheader_in_recursion":
  br label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %"main$0_increment_loop_counter$0", %"main$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"main$0_preheader_in_recursion" ], [ %i10, %"main$0_increment_loop_counter$0" ]
  %errors.09 = phi i32 [ %or, %"main$0_increment_loop_counter$0" ], [ %arg1, %"main$0_preheader_in_recursion" ]
  %argv.addr.08 = phi i8** [ %incdec.ptr, %"main$0_increment_loop_counter$0" ], [ %arg2, %"main$0_preheader_in_recursion" ]
  %argc.addr.07 = phi i32 [ %dec, %"main$0_increment_loop_counter$0" ], [ %arg, %"main$0_preheader_in_recursion" ]
  %dec = add nsw i32 %argc.addr.07, -1
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv.addr.08, i64 1
  %i = load i8*, i8** %incdec.ptr, align 8, !tbaa !6
  %i3 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$2", align 8
  %i4 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$3", align 8
  %call = call i32 @crc32file(i8* %i, i64* nonnull %i4, i64* nonnull %i3)
  %or = or i32 %call, %errors.09
  %i5 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$3", align 8
  %i6 = load i64, i64* %i5, align 8, !tbaa !1
  %i7 = load i64*, i64** @"./benchmark_intermediate_representations/baseline/crc_32/crc_32.ll_invariant_variable$2", align 8
  %i8 = load i64, i64* %i7, align 8, !tbaa !1
  %i9 = load i8*, i8** %incdec.ptr, align 8, !tbaa !6
  %call1 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %i6, i64 %i8, i8* %i9)
  %cmp = icmp sgt i32 %dec, 1
  br i1 %cmp, label %"main$0_increment_loop_counter$0", label %"main$0_return_from_recursive_function$0"

"main$0_increment_loop_counter$0":                ; preds = %"main$0_latch$0"
  %i10 = add i8 %loop_counter, 1
  %i11 = icmp ult i8 %i10, 64
  br i1 %i11, label %"main$0_latch$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_increment_loop_counter$0"
  %dec.lcssa3 = phi i32 [ %dec, %"main$0_increment_loop_counter$0" ]
  %incdec.ptr.lcssa2 = phi i8** [ %incdec.ptr, %"main$0_increment_loop_counter$0" ]
  %or.lcssa1 = phi i32 [ %or, %"main$0_increment_loop_counter$0" ]
  br label %"main$0_recursively_call_function"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(i32 %dec.lcssa3, i32 %or.lcssa1, i8** %incdec.ptr.lcssa2)
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  %or.lcssa = phi i32 [ %or, %"main$0_latch$0" ]
  %i12 = getelementptr %2, %2* @"main$0_return_value_struct", i32 0, i32 0
  store i32 %or.lcssa, i32* %i12, align 4
  ret void
}

attributes #0 = { norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { cold }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !3, i64 0}
