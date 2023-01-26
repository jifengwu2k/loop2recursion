; ModuleID = './benchmark_intermediate_representations/loop2recursion/susan/susan.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/susan/susan.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32, i8 }
%1 = type { i32 }
%2 = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> }
%3 = type { i32, i32 }
%4 = type { i32, i8 }
%5 = type { i32, i8 }
%6 = type { i32, i32, i32, i32, i32, i32, float, i32, i8 }
%7 = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> }
%8 = type { i32, i32 }
%9 = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> }
%10 = type { i32, i32 }
%11 = type { i32 }
%12 = type { i8* }
%13 = type { i8* }
%14 = type { i8*, i32 }
%15 = type { i32, i32, i32 }
%16 = type { i32, i8 }
%17 = type { i32, i8 }
%18 = type { i32, i32 }
%19 = type { i8*, i8*, i32, i32 }
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
@"getint$1_return_value_struct" = dso_local global %0 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$0" = dso_local global %struct._IO_FILE* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$1" = dso_local global i8* null
@"getint$0_return_value_struct" = dso_local global %1 zeroinitializer
@"int_to_uchar$2_return_value_struct" = dso_local global %2 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$2" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$3" = dso_local global i32* null
@"int_to_uchar$1_return_value_struct" = dso_local global %3 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$4" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$5" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$6" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$7" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$8" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$9" = dso_local global i8** null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$10" = dso_local global float 0.000000e+00
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$11" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$12" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$13" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$14" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$15" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$16" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$17" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$18" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$19" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$20" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$21" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$22" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$23" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$24" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$25" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$26" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$27" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$28" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$29" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$30" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$31" = dso_local global i8** null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$32" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$34" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$35" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$37" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$38" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$39" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$40" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$42" = dso_local global float 0.000000e+00
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$43" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$44" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$45" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$46" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$47" = dso_local global i8** null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$48" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$49" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$50" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$51" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$52" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$53" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$54" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$55" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$56" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$57" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$58" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$59" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$60" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$61" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$65" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$66" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$67" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$69" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$70" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$71" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$72" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$73" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$74" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$75" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$76" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$77" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$79" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$80" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$81" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$82" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$83" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$84" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$85" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$86" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$87" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$88" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$89" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$90" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$91" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$92" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$93" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$94" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$95" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$96" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$97" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$98" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$99" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$100" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$101" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$102" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$103" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$104" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$105" = dso_local global %struct.anon* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$106" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$107" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$108" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$109" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$111" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$112" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$114" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$116" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$117" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$118" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$119" = dso_local global i32 0
@"susan_corners$0_return_value_struct" = dso_local global %4 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$120" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$121" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$122" = dso_local global %struct.anon* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$123" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$124" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$125" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126" = dso_local global i32* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$128" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$129" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$130" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$131" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$132" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$134" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$135" = dso_local global i1 false
@"susan_corners_quick$0_return_value_struct" = dso_local global %5 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$136" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$137" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$138" = dso_local global %struct.anon* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$139" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$140" = dso_local global i1 false
@"main$12_return_value_struct" = dso_local global %6 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$141" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$142" = dso_local global i8** null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$143" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$144" = dso_local global float 0.000000e+00
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$145" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$146" = dso_local global float 0.000000e+00
@"main$5_return_value_struct" = dso_local global %7 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$147" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$148" = dso_local global i32* null
@"main$4_return_value_struct" = dso_local global %8 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$149" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$150" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$151" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$152" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$153" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$154" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$155" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$156" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$157" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$158" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$159" = dso_local global float 0.000000e+00
@"main$10_return_value_struct" = dso_local global %9 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$160" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$161" = dso_local global i32* null
@"main$9_return_value_struct" = dso_local global %10 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$162" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$163" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$164" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$165" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$166" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$167" = dso_local global i1 false
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$168" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$169" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$170" = dso_local global [15000 x %struct.anon]* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$171" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$172" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$173" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$174" = dso_local global i8* null
@"enlarge$0$0_return_value_struct" = dso_local global %11 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$175" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$176" = dso_local global i32 0
@"susan_smoothing$1$0_return_value_struct" = dso_local global %12 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$177" = dso_local global i32 0
@"susan_smoothing$0$0_return_value_struct" = dso_local global %13 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$178" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$179" = dso_local global i32 0
@"susan_smoothing$2$0_return_value_struct" = dso_local global %14 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$180" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$181" = dso_local global i32 0
@"susan_thin$0$0_return_value_struct" = dso_local global %15 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$182" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$183" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$184" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$185" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$186" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$187" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$188" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$189" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$190" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$191" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$192" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$193" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$194" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$195" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$196" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$197" = dso_local global i8* null
@"susan_corners$0$0_return_value_struct" = dso_local global %16 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$198" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$199" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$200" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$201" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$202" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$203" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$204" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$205" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$206" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$207" = dso_local global i8* null
@"susan_corners_quick$0$0_return_value_struct" = dso_local global %17 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$208" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$209" = dso_local global i32 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$210" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$211" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$212" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$213" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$214" = dso_local global i64 0
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$215" = dso_local global i32 0
@"susan_smoothing$0$0$0_return_value_struct" = dso_local global %18 zeroinitializer
@"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$216" = dso_local global i8* null
@"susan_smoothing$0$0$0$0_return_value_struct" = dso_local global %19 zeroinitializer

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
  %tmp = getelementptr inbounds [10000 x i8], [10000 x i8]* %dummy, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10000, i8* %tmp) #6
  %call = tail call i32 @_IO_getc(%struct._IO_FILE* %fd)
  br label %"getint$1_initialize_context"

"getint$1_initialize_context":                    ; preds = %entry
  store %struct._IO_FILE* %fd, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$0"
  store i8* %tmp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$1"
  br label %"getint$1_call_recursive_function"

"getint$1_call_recursive_function":               ; preds = %"getint$1_initialize_context"
  call void @"getint$1"(i32 %call)
  br label %"getint$1_branch_to_exit"

"getint$1_branch_to_exit":                        ; preds = %"getint$1_call_recursive_function"
  %tmp1 = getelementptr %0, %0* @"getint$1_return_value_struct", i32 0, i32 1
  %tmp2 = load i8, i8* %tmp1
  switch i8 %tmp2, label %"getint$1_extract_return_values$0" [
    i8 1, label %"getint$1_extract_return_values$0"
    i8 0, label %"getint$1_extract_return_values$1"
  ]

"getint$1_extract_return_values$0":               ; preds = %"getint$1_branch_to_exit", %"getint$1_branch_to_exit"
  %tmp3 = getelementptr %0, %0* @"getint$1_return_value_struct", i32 0, i32 0
  %tmp4 = load i32, i32* %tmp3
  br label %while.body12.preheader

"getint$1_extract_return_values$1":               ; preds = %"getint$1_branch_to_exit"
  br label %if.then3

if.then3:                                         ; preds = %"getint$1_extract_return_values$1"
  %tmp5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp5, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0)) #9
  call void @exit(i32 0) #8
  unreachable

while.body12.preheader:                           ; preds = %"getint$1_extract_return_values$0"
  br label %"getint$0_initialize_context"

"getint$0_initialize_context":                    ; preds = %while.body12.preheader
  store %struct._IO_FILE* %fd, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$0"
  br label %"getint$0_call_recursive_function"

"getint$0_call_recursive_function":               ; preds = %"getint$0_initialize_context"
  call void @"getint$0"(i32 0, i32 %tmp4)
  br label %"getint$0_extract_return_values$0"

"getint$0_extract_return_values$0":               ; preds = %"getint$0_call_recursive_function"
  %tmp6 = getelementptr %1, %1* @"getint$0_return_value_struct", i32 0, i32 0
  %tmp7 = load i32, i32* %tmp6
  br label %cleanup

cleanup:                                          ; preds = %"getint$0_extract_return_values$0"
  call void @llvm.lifetime.end.p0i8(i64 10000, i8* %tmp) #6
  ret i32 %tmp7
}

; Function Attrs: nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind uwtable
define void @get_image(i8* %filename, i8** nocapture %in, i32* nocapture %x_size, i32* nocapture %y_size) #3 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %filename) #9
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
  %tmp1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp1, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i8* %filename) #9
  tail call void @exit(i32 0) #8
  unreachable

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @getint(%struct._IO_FILE* nonnull %call)
  store i32 %call17, i32* %x_size, align 4, !tbaa !5
  %call18 = tail call i32 @getint(%struct._IO_FILE* nonnull %call)
  store i32 %call18, i32* %y_size, align 4, !tbaa !5
  %call19 = tail call i32 @getint(%struct._IO_FILE* nonnull %call)
  %tmp2 = load i32, i32* %x_size, align 4, !tbaa !5
  %tmp3 = load i32, i32* %y_size, align 4, !tbaa !5
  %mul = mul nsw i32 %tmp3, %tmp2
  %conv20 = sext i32 %mul to i64
  %call21 = tail call noalias i8* @malloc(i64 %conv20) #6
  store i8* %call21, i8** %in, align 8, !tbaa !1
  %call24 = tail call i64 @fread(i8* %call21, i64 1, i64 %conv20, %struct._IO_FILE* nonnull %call)
  %cmp25 = icmp eq i64 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end16
  %tmp4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp4, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %filename) #9
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
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %filename) #9
  tail call void @exit(i32 0) #8
  unreachable

if.end:                                           ; preds = %entry
  %tmp1 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* nonnull %call)
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %call, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %x_size, i32 %y_size)
  %tmp2 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* nonnull %call)
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %call5 = tail call i64 @fwrite(i8* %in, i64 %conv, i64 1, %struct._IO_FILE* nonnull %call)
  %cmp6 = icmp eq i64 %call5, 1
  br i1 %cmp6, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %tmp3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %tmp3, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8* %filename) #9
  tail call void @exit(i32 0) #8
  unreachable

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @fclose(%struct._IO_FILE* nonnull %call)
  ret i32 undef
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define i32 @int_to_uchar(i32* nocapture readonly %r, i8* nocapture %in, i32 %size) #4 {
entry:
  %tmp = load i32, i32* %r, align 4, !tbaa !5
  %cmp49 = icmp sgt i32 %size, 0
  br i1 %cmp49, label %for.body.preheader, label %for.end23

for.body.preheader:                               ; preds = %entry
  %exitcond5766 = icmp eq i32 %size, 1
  br i1 %exitcond5766, label %for.end, label %for.body.for.body_crit_edge.lr.ph

for.body.for.body_crit_edge.lr.ph:                ; preds = %for.body.preheader
  %tmp1 = add i32 %size, -2
  %tmp2 = zext i32 %tmp1 to i64
  %tmp3 = add nuw nsw i64 %tmp2, 1
  %min.iters.check = icmp ult i64 %tmp3, 8
  br i1 %min.iters.check, label %for.body.for.body_crit_edge.preheader, label %min.iters.checked

min.iters.checked:                                ; preds = %for.body.for.body_crit_edge.lr.ph
  %n.vec = and i64 %tmp3, 8589934584
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = or i64 %n.vec, 1
  %minmax.ident.splatinsert = insertelement <4 x i32> undef, i32 %tmp, i32 0
  %minmax.ident.splat = shufflevector <4 x i32> %minmax.ident.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert83 = insertelement <4 x i32> undef, i32 %tmp, i32 0
  %minmax.ident.splat84 = shufflevector <4 x i32> %minmax.ident.splatinsert83, <4 x i32> undef, <4 x i32> zeroinitializer
  br i1 %cmp.zero, label %for.body.for.body_crit_edge.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %tmp4 = add i32 %size, -2
  %tmp5 = zext i32 %tmp4 to i64
  %tmp6 = add nuw nsw i64 %tmp5, 1
  %tmp7 = and i64 %tmp6, 8589934584
  %tmp8 = add nsw i64 %tmp7, -8
  %tmp9 = lshr exact i64 %tmp8, 3
  %tmp10 = and i64 %tmp9, 1
  %lcmp.mod100 = icmp eq i64 %tmp10, 0
  br i1 %lcmp.mod100, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %tmp11 = getelementptr inbounds i32, i32* %r, i64 1
  %tmp12 = bitcast i32* %tmp11 to <4 x i32>*
  %wide.load.prol = load <4 x i32>, <4 x i32>* %tmp12, align 4, !tbaa !5
  %tmp13 = getelementptr i32, i32* %r, i64 5
  %tmp14 = bitcast i32* %tmp13 to <4 x i32>*
  %wide.load75.prol = load <4 x i32>, <4 x i32>* %tmp14, align 4, !tbaa !5
  %tmp15 = icmp sgt <4 x i32> %wide.load.prol, %minmax.ident.splat84
  %tmp16 = icmp sgt <4 x i32> %wide.load75.prol, %minmax.ident.splat84
  %tmp17 = select <4 x i1> %tmp15, <4 x i32> %wide.load.prol, <4 x i32> %minmax.ident.splat84
  %tmp18 = select <4 x i1> %tmp16, <4 x i32> %wide.load75.prol, <4 x i32> %minmax.ident.splat84
  %tmp19 = icmp slt <4 x i32> %wide.load.prol, %minmax.ident.splat
  %tmp20 = icmp slt <4 x i32> %wide.load75.prol, %minmax.ident.splat
  %tmp21 = select <4 x i1> %tmp19, <4 x i32> %wide.load.prol, <4 x i32> %minmax.ident.splat
  %tmp22 = select <4 x i1> %tmp20, <4 x i32> %wide.load75.prol, <4 x i32> %minmax.ident.splat
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %.lcssa98.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %tmp22, %vector.body.prol ]
  %.lcssa97.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %tmp21, %vector.body.prol ]
  %.lcssa96.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %tmp18, %vector.body.prol ]
  %.lcssa.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %tmp17, %vector.body.prol ]
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 8, %vector.body.prol ]
  %vec.phi.unr = phi <4 x i32> [ %minmax.ident.splat, %vector.body.preheader ], [ %tmp21, %vector.body.prol ]
  %vec.phi72.unr = phi <4 x i32> [ %minmax.ident.splat, %vector.body.preheader ], [ %tmp22, %vector.body.prol ]
  %vec.phi73.unr = phi <4 x i32> [ %minmax.ident.splat84, %vector.body.preheader ], [ %tmp17, %vector.body.prol ]
  %vec.phi74.unr = phi <4 x i32> [ %minmax.ident.splat84, %vector.body.preheader ], [ %tmp18, %vector.body.prol ]
  %tmp23 = icmp eq i64 %tmp9, 0
  br i1 %tmp23, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %"int_to_uchar$2_initialize_context"

"int_to_uchar$2_initialize_context":              ; preds = %vector.body.preheader.split.split
  store i64 %n.vec, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$2"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$3"
  br label %"int_to_uchar$2_call_recursive_function"

"int_to_uchar$2_call_recursive_function":         ; preds = %"int_to_uchar$2_initialize_context"
  call void @"int_to_uchar$2"(<4 x i32> %vec.phi74.unr, <4 x i32> %vec.phi73.unr, <4 x i32> %vec.phi.unr, <4 x i32> %vec.phi72.unr, i64 %index.unr)
  br label %"int_to_uchar$2_extract_return_values$0"

"int_to_uchar$2_extract_return_values$0":         ; preds = %"int_to_uchar$2_call_recursive_function"
  %tmp24 = getelementptr %2, %2* @"int_to_uchar$2_return_value_struct", i32 0, i32 0
  %tmp25 = load <4 x i32>, <4 x i32>* %tmp24
  %tmp26 = getelementptr %2, %2* @"int_to_uchar$2_return_value_struct", i32 0, i32 1
  %tmp27 = load <4 x i32>, <4 x i32>* %tmp26
  %tmp28 = getelementptr %2, %2* @"int_to_uchar$2_return_value_struct", i32 0, i32 2
  %tmp29 = load <4 x i32>, <4 x i32>* %tmp28
  %tmp30 = getelementptr %2, %2* @"int_to_uchar$2_return_value_struct", i32 0, i32 3
  %tmp31 = load <4 x i32>, <4 x i32>* %tmp30
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %"int_to_uchar$2_extract_return_values$0"
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  %.lcssa98 = phi <4 x i32> [ %.lcssa98.unr, %vector.body.preheader.split ], [ %tmp31, %middle.block.unr-lcssa ]
  %.lcssa97 = phi <4 x i32> [ %.lcssa97.unr, %vector.body.preheader.split ], [ %tmp29, %middle.block.unr-lcssa ]
  %.lcssa96 = phi <4 x i32> [ %.lcssa96.unr, %vector.body.preheader.split ], [ %tmp27, %middle.block.unr-lcssa ]
  %.lcssa = phi <4 x i32> [ %.lcssa.unr, %vector.body.preheader.split ], [ %tmp25, %middle.block.unr-lcssa ]
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
  %tmp32 = select i1 %rdx.minmax.cmp91.elt, i32 %rdx.minmax.select89.elt, i32 %rdx.shuf90.elt
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
  %tmp33 = select i1 %rdx.minmax.cmp81.elt, i32 %rdx.minmax.select79.elt, i32 %rdx.shuf80.elt
  %cmp.n = icmp eq i64 %tmp3, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.for.body_crit_edge.preheader

for.body.for.body_crit_edge.preheader:            ; preds = %middle.block, %min.iters.checked, %for.body.for.body_crit_edge.lr.ph
  %indvars.iv.next5569.ph = phi i64 [ 1, %min.iters.checked ], [ 1, %for.body.for.body_crit_edge.lr.ph ], [ %ind.end, %middle.block ]
  %min_r.168.ph = phi i32 [ %tmp, %min.iters.checked ], [ %tmp, %for.body.for.body_crit_edge.lr.ph ], [ %tmp33, %middle.block ]
  %.max_r.067.ph = phi i32 [ %tmp, %min.iters.checked ], [ %tmp, %for.body.for.body_crit_edge.lr.ph ], [ %tmp32, %middle.block ]
  br label %"int_to_uchar$1_initialize_context"

"int_to_uchar$1_initialize_context":              ; preds = %for.body.for.body_crit_edge.preheader
  store i32 %size, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$4"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$3"
  br label %"int_to_uchar$1_call_recursive_function"

"int_to_uchar$1_call_recursive_function":         ; preds = %"int_to_uchar$1_initialize_context"
  call void @"int_to_uchar$1"(i32 %.max_r.067.ph, i32 %min_r.168.ph, i64 %indvars.iv.next5569.ph)
  br label %"int_to_uchar$1_extract_return_values$0"

"int_to_uchar$1_extract_return_values$0":         ; preds = %"int_to_uchar$1_call_recursive_function"
  %tmp34 = getelementptr %3, %3* @"int_to_uchar$1_return_value_struct", i32 0, i32 0
  %tmp35 = load i32, i32* %tmp34
  %tmp36 = getelementptr %3, %3* @"int_to_uchar$1_return_value_struct", i32 0, i32 1
  %tmp37 = load i32, i32* %tmp36
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %"int_to_uchar$1_extract_return_values$0"
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %middle.block, %for.body.preheader
  %min_r.1.lcssa = phi i32 [ %tmp, %for.body.preheader ], [ %tmp33, %middle.block ], [ %tmp37, %for.end.loopexit ]
  %.max_r.0.lcssa = phi i32 [ %tmp, %for.body.preheader ], [ %tmp32, %middle.block ], [ %tmp35, %for.end.loopexit ]
  %sub = sub nsw i32 %.max_r.0.lcssa, %min_r.1.lcssa
  br i1 %cmp49, label %for.body15.preheader, label %for.end23

for.body15.preheader:                             ; preds = %for.end
  %sub1860 = sub nsw i32 %tmp, %min_r.1.lcssa
  %mul61 = mul nsw i32 %sub1860, 255
  %div62 = sdiv i32 %mul61, %sub
  %conv63 = trunc i32 %div62 to i8
  store i8 %conv63, i8* %in, align 1, !tbaa !7
  %exitcond64 = icmp eq i32 %size, 1
  br i1 %exitcond64, label %for.end23, label %for.body15.for.body15_crit_edge.preheader

for.body15.for.body15_crit_edge.preheader:        ; preds = %for.body15.preheader
  %tmp38 = and i32 %size, 1
  %lcmp.mod = icmp eq i32 %tmp38, 0
  br i1 %lcmp.mod, label %for.body15.for.body15_crit_edge.prol, label %for.body15.for.body15_crit_edge.preheader.split

for.body15.for.body15_crit_edge.prol:             ; preds = %for.body15.for.body15_crit_edge.preheader
  %arrayidx17.phi.trans.insert.prol = getelementptr inbounds i32, i32* %r, i64 1
  %.pre58.prol = load i32, i32* %arrayidx17.phi.trans.insert.prol, align 4, !tbaa !5
  %sub18.prol = sub nsw i32 %.pre58.prol, %min_r.1.lcssa
  %mul.prol = mul nsw i32 %sub18.prol, 255
  %div.prol = sdiv i32 %mul.prol, %sub
  %conv.prol = trunc i32 %div.prol to i8
  %arrayidx20.prol = getelementptr inbounds i8, i8* %in, i64 1
  store i8 %conv.prol, i8* %arrayidx20.prol, align 1, !tbaa !7
  br label %for.body15.for.body15_crit_edge.preheader.split

for.body15.for.body15_crit_edge.preheader.split:  ; preds = %for.body15.for.body15_crit_edge.prol, %for.body15.for.body15_crit_edge.preheader
  %indvars.iv.next65.unr = phi i64 [ 1, %for.body15.for.body15_crit_edge.preheader ], [ 2, %for.body15.for.body15_crit_edge.prol ]
  %tmp39 = icmp eq i32 %size, 2
  br i1 %tmp39, label %for.end23.loopexit, label %for.body15.for.body15_crit_edge.preheader.split.split

for.body15.for.body15_crit_edge.preheader.split.split: ; preds = %for.body15.for.body15_crit_edge.preheader.split
  br label %"int_to_uchar$0_initialize_context"

"int_to_uchar$0_initialize_context":              ; preds = %for.body15.for.body15_crit_edge.preheader.split.split
  store i32 %size, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$4"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$5"
  store i32 %sub, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$6"
  store i32 %min_r.1.lcssa, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$7"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$3"
  br label %"int_to_uchar$0_call_recursive_function"

"int_to_uchar$0_call_recursive_function":         ; preds = %"int_to_uchar$0_initialize_context"
  call void @"int_to_uchar$0"(i64 %indvars.iv.next65.unr)
  br label %for.end23.loopexit.unr-lcssa

for.end23.loopexit.unr-lcssa:                     ; preds = %"int_to_uchar$0_call_recursive_function"
  br label %for.end23.loopexit

for.end23.loopexit:                               ; preds = %for.end23.loopexit.unr-lcssa, %for.body15.for.body15_crit_edge.preheader.split
  br label %for.end23

for.end23:                                        ; preds = %for.end23.loopexit, %for.body15.preheader, %for.end, %entry
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define void @setup_brightness_lut(i8** nocapture %bp, i32 %thresh, i32 %form) #3 {
entry:
  %call = tail call noalias i8* @malloc(i64 516) #6
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 258
  store i8* %add.ptr, i8** %bp, align 8, !tbaa !1
  %conv1 = sitofp i32 %thresh to float
  %cmp2 = icmp eq i32 %form, 6
  br label %"setup_brightness_lut$0_initialize_context"

"setup_brightness_lut$0_initialize_context":      ; preds = %entry
  store i1 %cmp2, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$8"
  store i8** %bp, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$9"
  store float %conv1, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$10"
  br label %"setup_brightness_lut$0_call_recursive_function"

"setup_brightness_lut$0_call_recursive_function": ; preds = %"setup_brightness_lut$0_initialize_context"
  call void @"setup_brightness_lut$0"(i64 -256)
  br label %for.end

for.end:                                          ; preds = %"setup_brightness_lut$0_call_recursive_function"
  ret void
}

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: norecurse nounwind uwtable
define i32 @susan_principle(i8* nocapture readonly %in, i32* nocapture %r, i8* readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #4 {
entry:
  %tmp = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %tmp, i8 0, i64 %mul1, i1 false)
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
  %tmp1 = sext i32 %x_size to i64
  br label %"susan_principle$0_initialize_context"

"susan_principle$0_initialize_context":           ; preds = %for.cond3.preheader.lr.ph
  store i32 %sub, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$11"
  store i32 %sub4, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$12"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$13"
  store i32 %max_no, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$14"
  store i64 %idx.ext124, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$15"
  store i64 %idx.ext73, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$16"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$17"
  store i64 %tmp1, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$18"
  store i64 %idx.ext36, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$19"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$20"
  store i1 %cmp5429, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$21"
  br label %"susan_principle$0_call_recursive_function"

"susan_principle$0_call_recursive_function":      ; preds = %"susan_principle$0_initialize_context"
  call void @"susan_principle$0"(i64 3)
  br label %for.end287.loopexit

for.end287.loopexit:                              ; preds = %"susan_principle$0_call_recursive_function"
  br label %for.end287

for.end287:                                       ; preds = %for.end287.loopexit, %entry
  ret i32 undef
}

; Function Attrs: norecurse nounwind uwtable
define i32 @susan_principle_small(i8* nocapture readonly %in, i32* nocapture %r, i8* nocapture readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #4 {
entry:
  %tmp = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %tmp, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -1
  %cmp135 = icmp sgt i32 %sub, 1
  br i1 %cmp135, label %for.cond3.preheader.lr.ph, label %for.end83

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add nsw i32 %x_size, -1
  %cmp5133 = icmp sgt i32 %sub4, 1
  %sub35 = add nsw i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  %tmp1 = sext i32 %x_size to i64
  br label %"susan_principle_small$0_initialize_context"

"susan_principle_small$0_initialize_context":     ; preds = %for.cond3.preheader.lr.ph
  store i32 %sub, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$22"
  store i32 %sub4, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$23"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$24"
  store i64 %idx.ext36, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$25"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$26"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$27"
  store i64 %tmp1, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$28"
  store i1 %cmp5133, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$29"
  br label %"susan_principle_small$0_call_recursive_function"

"susan_principle_small$0_call_recursive_function": ; preds = %"susan_principle_small$0_initialize_context"
  call void @"susan_principle_small$0"(i64 1)
  br label %for.end83.loopexit

for.end83.loopexit:                               ; preds = %"susan_principle_small$0_call_recursive_function"
  br label %for.end83

for.end83:                                        ; preds = %for.end83.loopexit, %entry
  ret i32 undef
}

; Function Attrs: norecurse nounwind readonly uwtable
define zeroext i8 @median(i8* nocapture readonly %in, i32 %i, i32 %j, i32 %x_size) #5 {
for.body60.preheader:
  %p = alloca [8 x i32], align 16
  %tmp = bitcast [8 x i32]* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %tmp) #6
  %sub = add nsw i32 %i, -1
  %mul = mul nsw i32 %sub, %x_size
  %add = add nsw i32 %mul, %j
  %sub1 = add nsw i32 %add, -1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %idxprom
  %tmp1 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv = zext i8 %tmp1 to i32
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %conv, i32* %arrayidx2, align 16, !tbaa !5
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %in, i64 %idxprom6
  %tmp2 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %add13 = add nsw i32 %add, 1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %in, i64 %idxprom14
  %tmp3 = load i8, i8* %arrayidx15, align 1, !tbaa !7
  %mul18 = mul nsw i32 %x_size, %i
  %add19 = add nsw i32 %mul18, %j
  %sub20 = add nsw i32 %add19, -1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %in, i64 %idxprom21
  %tmp4 = load i8, i8* %arrayidx22, align 1, !tbaa !7
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %add27 = add nsw i32 %add19, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %in, i64 %idxprom28
  %tmp5 = load i8, i8* %arrayidx29, align 1, !tbaa !7
  %tmp6 = insertelement <4 x i8> undef, i8 %tmp2, i32 0
  %tmp7 = insertelement <4 x i8> %tmp6, i8 %tmp3, i32 1
  %tmp8 = insertelement <4 x i8> %tmp7, i8 %tmp4, i32 2
  %tmp9 = insertelement <4 x i8> %tmp8, i8 %tmp5, i32 3
  %tmp10 = zext <4 x i8> %tmp9 to <4 x i32>
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %tmp11 = bitcast i32* %arrayidx9 to <4 x i32>*
  store <4 x i32> %tmp10, <4 x i32>* %tmp11, align 4, !tbaa !5
  %add32 = add nsw i32 %i, 1
  %mul33 = mul nsw i32 %add32, %x_size
  %add34 = add nsw i32 %mul33, %j
  %sub35 = add nsw i32 %add34, -1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %in, i64 %idxprom36
  %tmp12 = load i8, i8* %arrayidx37, align 1, !tbaa !7
  %conv38 = zext i8 %tmp12 to i32
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  store i32 %conv38, i32* %arrayidx39, align 4, !tbaa !5
  %idxprom43 = sext i32 %add34 to i64
  %arrayidx44 = getelementptr inbounds i8, i8* %in, i64 %idxprom43
  %tmp13 = load i8, i8* %arrayidx44, align 1, !tbaa !7
  %conv45 = zext i8 %tmp13 to i32
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 6
  store i32 %conv45, i32* %arrayidx46, align 8, !tbaa !5
  %add50 = add nsw i32 %add34, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, i8* %in, i64 %idxprom51
  %tmp14 = load i8, i8* %arrayidx52, align 1, !tbaa !7
  %conv53 = zext i8 %tmp14 to i32
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 7
  store i32 %conv53, i32* %arrayidx54, align 4, !tbaa !5
  br label %for.body60

for.body60:                                       ; preds = %for.body60.preheader
  %arrayidx65 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %tmp15 = load i32, i32* %arrayidx65, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %conv, %tmp15
  br i1 %cmp66, label %if.then, label %for.cond56.backedge

for.cond56.backedge:                              ; preds = %if.then, %for.body60
  %tmp16 = phi i32 [ %tmp15, %for.body60 ], [ %conv, %if.then ]
  %arrayidx65.1136 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %tmp17 = load i32, i32* %arrayidx65.1136, align 8, !tbaa !5
  %cmp66.1137 = icmp sgt i32 %tmp16, %tmp17
  br i1 %cmp66.1137, label %if.then.1140, label %for.cond56.backedge.1141

if.then:                                          ; preds = %for.body60
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %tmp15, i32* %arrayidx62, align 16, !tbaa !5
  store i32 %conv, i32* %arrayidx65, align 4, !tbaa !5
  br label %for.cond56.backedge

for.body60.1:                                     ; preds = %for.cond56.backedge.6
  %arrayidx65.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %tmp18 = load i32, i32* %arrayidx65.1, align 4, !tbaa !5
  %cmp66.1 = icmp sgt i32 %.pre, %tmp18
  br i1 %cmp66.1, label %if.then.1, label %for.cond56.backedge.1

if.then.1:                                        ; preds = %for.body60.1
  %arrayidx62.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %tmp18, i32* %arrayidx62.1, align 16, !tbaa !5
  store i32 %.pre, i32* %arrayidx65.1, align 4, !tbaa !5
  br label %for.cond56.backedge.1

for.cond56.backedge.1:                            ; preds = %if.then.1, %for.body60.1
  %tmp19 = phi i32 [ %.pre, %if.then.1 ], [ %tmp18, %for.body60.1 ]
  %arrayidx65.1.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %tmp20 = load i32, i32* %arrayidx65.1.1, align 8, !tbaa !5
  %cmp66.1.1 = icmp sgt i32 %tmp19, %tmp20
  br i1 %cmp66.1.1, label %if.then.1.1, label %for.cond56.backedge.1.1

for.body60.2:                                     ; preds = %for.cond56.backedge.1.5
  %arrayidx65.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %tmp21 = load i32, i32* %arrayidx65.2, align 4, !tbaa !5
  %cmp66.2 = icmp sgt i32 %.pre131, %tmp21
  br i1 %cmp66.2, label %if.then.2, label %for.cond56.backedge.2

if.then.2:                                        ; preds = %for.body60.2
  %arrayidx62.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %tmp21, i32* %arrayidx62.2, align 16, !tbaa !5
  store i32 %.pre131, i32* %arrayidx65.2, align 4, !tbaa !5
  br label %for.cond56.backedge.2

for.cond56.backedge.2:                            ; preds = %if.then.2, %for.body60.2
  %tmp22 = phi i32 [ %.pre131, %if.then.2 ], [ %tmp21, %for.body60.2 ]
  %arrayidx65.2.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %tmp23 = load i32, i32* %arrayidx65.2.1, align 8, !tbaa !5
  %cmp66.2.1 = icmp sgt i32 %tmp22, %tmp23
  br i1 %cmp66.2.1, label %if.then.2.1, label %for.cond56.backedge.2.1

for.body60.3:                                     ; preds = %for.cond56.backedge.2.4
  %arrayidx65.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %tmp24 = load i32, i32* %arrayidx65.3, align 4, !tbaa !5
  %cmp66.3 = icmp sgt i32 %.pre132, %tmp24
  br i1 %cmp66.3, label %if.then.3, label %for.cond56.backedge.3

if.then.3:                                        ; preds = %for.body60.3
  %arrayidx62.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %tmp24, i32* %arrayidx62.3, align 16, !tbaa !5
  store i32 %.pre132, i32* %arrayidx65.3, align 4, !tbaa !5
  br label %for.cond56.backedge.3

for.cond56.backedge.3:                            ; preds = %if.then.3, %for.body60.3
  %tmp25 = phi i32 [ %.pre132, %if.then.3 ], [ %tmp24, %for.body60.3 ]
  %arrayidx65.3.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %tmp26 = load i32, i32* %arrayidx65.3.1, align 8, !tbaa !5
  %cmp66.3.1 = icmp sgt i32 %tmp25, %tmp26
  br i1 %cmp66.3.1, label %if.then.3.1, label %for.cond56.backedge.3.1

for.body60.4:                                     ; preds = %for.cond56.backedge.3.3
  %arrayidx65.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %tmp27 = load i32, i32* %arrayidx65.4, align 4, !tbaa !5
  %cmp66.4 = icmp sgt i32 %.pre133, %tmp27
  br i1 %cmp66.4, label %if.then.4, label %for.cond56.backedge.4

if.then.4:                                        ; preds = %for.body60.4
  %arrayidx62.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %tmp27, i32* %arrayidx62.4, align 16, !tbaa !5
  store i32 %.pre133, i32* %arrayidx65.4, align 4, !tbaa !5
  br label %for.cond56.backedge.4

for.cond56.backedge.4:                            ; preds = %if.then.4, %for.body60.4
  %tmp28 = phi i32 [ %.pre133, %if.then.4 ], [ %tmp27, %for.body60.4 ]
  %arrayidx65.4.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %tmp29 = load i32, i32* %arrayidx65.4.1, align 8, !tbaa !5
  %cmp66.4.1 = icmp sgt i32 %tmp28, %tmp29
  br i1 %cmp66.4.1, label %if.then.4.1, label %for.cond56.backedge.4.1

for.body60.5:                                     ; preds = %for.cond56.backedge.4.2
  %arrayidx65.5 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %tmp30 = load i32, i32* %arrayidx65.5, align 4, !tbaa !5
  %cmp66.5 = icmp sgt i32 %.pre134, %tmp30
  br i1 %cmp66.5, label %if.then.5, label %for.cond56.backedge.5

if.then.5:                                        ; preds = %for.body60.5
  %arrayidx62.5 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %tmp30, i32* %arrayidx62.5, align 16, !tbaa !5
  store i32 %.pre134, i32* %arrayidx65.5, align 4, !tbaa !5
  br label %for.cond56.backedge.5

for.cond56.backedge.5:                            ; preds = %if.then.5, %for.body60.5
  %tmp31 = phi i32 [ %.pre134, %if.then.5 ], [ %tmp30, %for.body60.5 ]
  %arrayidx65.5.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  %tmp32 = load i32, i32* %arrayidx65.5.1, align 8, !tbaa !5
  %cmp66.5.1 = icmp sgt i32 %tmp31, %tmp32
  br i1 %cmp66.5.1, label %if.then.5.1, label %for.cond56.backedge.5.1

if.then.6:                                        ; preds = %for.cond56.backedge.5.1
  %arrayidx62.6 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 0
  store i32 %tmp35, i32* %arrayidx62.6, align 16, !tbaa !5
  store i32 %.pre135, i32* %arrayidx65.6, align 4, !tbaa !5
  br label %for.inc78.6

for.inc78.6:                                      ; preds = %for.cond56.backedge.5.1, %if.then.6
  %tmp33 = load i32, i32* %arrayidx24, align 4, !tbaa !5
  %tmp34 = load i32, i32* %arrayidx31, align 16, !tbaa !5
  %add83 = add nsw i32 %tmp34, %tmp33
  %div = sdiv i32 %add83, 2
  %conv84 = trunc i32 %div to i8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %tmp) #6
  ret i8 %conv84

if.then.5.1:                                      ; preds = %for.cond56.backedge.5
  %arrayidx62.5.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %tmp32, i32* %arrayidx62.5.1, align 4, !tbaa !5
  store i32 %tmp31, i32* %arrayidx65.5.1, align 8, !tbaa !5
  br label %for.cond56.backedge.5.1

for.cond56.backedge.5.1:                          ; preds = %if.then.5.1, %for.cond56.backedge.5
  %.pre135 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  %arrayidx65.6 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  %tmp35 = load i32, i32* %arrayidx65.6, align 4, !tbaa !5
  %cmp66.6 = icmp sgt i32 %.pre135, %tmp35
  br i1 %cmp66.6, label %if.then.6, label %for.inc78.6

if.then.4.1:                                      ; preds = %for.cond56.backedge.4
  %arrayidx62.4.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %tmp29, i32* %arrayidx62.4.1, align 4, !tbaa !5
  store i32 %tmp28, i32* %arrayidx65.4.1, align 8, !tbaa !5
  br label %for.cond56.backedge.4.1

for.cond56.backedge.4.1:                          ; preds = %if.then.4.1, %for.cond56.backedge.4
  %tmp36 = phi i32 [ %tmp28, %if.then.4.1 ], [ %tmp29, %for.cond56.backedge.4 ]
  %arrayidx65.4.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %tmp37 = load i32, i32* %arrayidx65.4.2, align 4, !tbaa !5
  %cmp66.4.2 = icmp sgt i32 %tmp36, %tmp37
  br i1 %cmp66.4.2, label %if.then.4.2, label %for.cond56.backedge.4.2

if.then.4.2:                                      ; preds = %for.cond56.backedge.4.1
  %arrayidx62.4.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %tmp37, i32* %arrayidx62.4.2, align 8, !tbaa !5
  store i32 %tmp36, i32* %arrayidx65.4.2, align 4, !tbaa !5
  br label %for.cond56.backedge.4.2

for.cond56.backedge.4.2:                          ; preds = %if.then.4.2, %for.cond56.backedge.4.1
  %.pre134 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.5

if.then.3.1:                                      ; preds = %for.cond56.backedge.3
  %arrayidx62.3.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %tmp26, i32* %arrayidx62.3.1, align 4, !tbaa !5
  store i32 %tmp25, i32* %arrayidx65.3.1, align 8, !tbaa !5
  br label %for.cond56.backedge.3.1

for.cond56.backedge.3.1:                          ; preds = %if.then.3.1, %for.cond56.backedge.3
  %tmp38 = phi i32 [ %tmp25, %if.then.3.1 ], [ %tmp26, %for.cond56.backedge.3 ]
  %arrayidx65.3.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %tmp39 = load i32, i32* %arrayidx65.3.2, align 4, !tbaa !5
  %cmp66.3.2 = icmp sgt i32 %tmp38, %tmp39
  br i1 %cmp66.3.2, label %if.then.3.2, label %for.cond56.backedge.3.2

if.then.3.2:                                      ; preds = %for.cond56.backedge.3.1
  %arrayidx62.3.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %tmp39, i32* %arrayidx62.3.2, align 8, !tbaa !5
  store i32 %tmp38, i32* %arrayidx65.3.2, align 4, !tbaa !5
  br label %for.cond56.backedge.3.2

for.cond56.backedge.3.2:                          ; preds = %if.then.3.2, %for.cond56.backedge.3.1
  %tmp40 = phi i32 [ %tmp38, %if.then.3.2 ], [ %tmp39, %for.cond56.backedge.3.1 ]
  %arrayidx65.3.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %tmp41 = load i32, i32* %arrayidx65.3.3, align 16, !tbaa !5
  %cmp66.3.3 = icmp sgt i32 %tmp40, %tmp41
  br i1 %cmp66.3.3, label %if.then.3.3, label %for.cond56.backedge.3.3

if.then.3.3:                                      ; preds = %for.cond56.backedge.3.2
  %arrayidx62.3.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  store i32 %tmp41, i32* %arrayidx62.3.3, align 4, !tbaa !5
  store i32 %tmp40, i32* %arrayidx65.3.3, align 16, !tbaa !5
  br label %for.cond56.backedge.3.3

for.cond56.backedge.3.3:                          ; preds = %if.then.3.3, %for.cond56.backedge.3.2
  %.pre133 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.4

if.then.2.1:                                      ; preds = %for.cond56.backedge.2
  %arrayidx62.2.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %tmp23, i32* %arrayidx62.2.1, align 4, !tbaa !5
  store i32 %tmp22, i32* %arrayidx65.2.1, align 8, !tbaa !5
  br label %for.cond56.backedge.2.1

for.cond56.backedge.2.1:                          ; preds = %if.then.2.1, %for.cond56.backedge.2
  %tmp42 = phi i32 [ %tmp22, %if.then.2.1 ], [ %tmp23, %for.cond56.backedge.2 ]
  %arrayidx65.2.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %tmp43 = load i32, i32* %arrayidx65.2.2, align 4, !tbaa !5
  %cmp66.2.2 = icmp sgt i32 %tmp42, %tmp43
  br i1 %cmp66.2.2, label %if.then.2.2, label %for.cond56.backedge.2.2

if.then.2.2:                                      ; preds = %for.cond56.backedge.2.1
  %arrayidx62.2.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %tmp43, i32* %arrayidx62.2.2, align 8, !tbaa !5
  store i32 %tmp42, i32* %arrayidx65.2.2, align 4, !tbaa !5
  br label %for.cond56.backedge.2.2

for.cond56.backedge.2.2:                          ; preds = %if.then.2.2, %for.cond56.backedge.2.1
  %tmp44 = phi i32 [ %tmp42, %if.then.2.2 ], [ %tmp43, %for.cond56.backedge.2.1 ]
  %arrayidx65.2.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %tmp45 = load i32, i32* %arrayidx65.2.3, align 16, !tbaa !5
  %cmp66.2.3 = icmp sgt i32 %tmp44, %tmp45
  br i1 %cmp66.2.3, label %if.then.2.3, label %for.cond56.backedge.2.3

if.then.2.3:                                      ; preds = %for.cond56.backedge.2.2
  %arrayidx62.2.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  store i32 %tmp45, i32* %arrayidx62.2.3, align 4, !tbaa !5
  store i32 %tmp44, i32* %arrayidx65.2.3, align 16, !tbaa !5
  br label %for.cond56.backedge.2.3

for.cond56.backedge.2.3:                          ; preds = %if.then.2.3, %for.cond56.backedge.2.2
  %tmp46 = phi i32 [ %tmp44, %if.then.2.3 ], [ %tmp45, %for.cond56.backedge.2.2 ]
  %arrayidx65.2.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  %tmp47 = load i32, i32* %arrayidx65.2.4, align 4, !tbaa !5
  %cmp66.2.4 = icmp sgt i32 %tmp46, %tmp47
  br i1 %cmp66.2.4, label %if.then.2.4, label %for.cond56.backedge.2.4

if.then.2.4:                                      ; preds = %for.cond56.backedge.2.3
  %arrayidx62.2.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  store i32 %tmp47, i32* %arrayidx62.2.4, align 16, !tbaa !5
  store i32 %tmp46, i32* %arrayidx65.2.4, align 4, !tbaa !5
  br label %for.cond56.backedge.2.4

for.cond56.backedge.2.4:                          ; preds = %if.then.2.4, %for.cond56.backedge.2.3
  %.pre132 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.3

if.then.1.1:                                      ; preds = %for.cond56.backedge.1
  %arrayidx62.1.1 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %tmp20, i32* %arrayidx62.1.1, align 4, !tbaa !5
  store i32 %tmp19, i32* %arrayidx65.1.1, align 8, !tbaa !5
  br label %for.cond56.backedge.1.1

for.cond56.backedge.1.1:                          ; preds = %if.then.1.1, %for.cond56.backedge.1
  %tmp48 = phi i32 [ %tmp19, %if.then.1.1 ], [ %tmp20, %for.cond56.backedge.1 ]
  %arrayidx65.1.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %tmp49 = load i32, i32* %arrayidx65.1.2, align 4, !tbaa !5
  %cmp66.1.2 = icmp sgt i32 %tmp48, %tmp49
  br i1 %cmp66.1.2, label %if.then.1.2, label %for.cond56.backedge.1.2

if.then.1.2:                                      ; preds = %for.cond56.backedge.1.1
  %arrayidx62.1.2 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %tmp49, i32* %arrayidx62.1.2, align 8, !tbaa !5
  store i32 %tmp48, i32* %arrayidx65.1.2, align 4, !tbaa !5
  br label %for.cond56.backedge.1.2

for.cond56.backedge.1.2:                          ; preds = %if.then.1.2, %for.cond56.backedge.1.1
  %tmp50 = phi i32 [ %tmp48, %if.then.1.2 ], [ %tmp49, %for.cond56.backedge.1.1 ]
  %arrayidx65.1.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %tmp51 = load i32, i32* %arrayidx65.1.3, align 16, !tbaa !5
  %cmp66.1.3 = icmp sgt i32 %tmp50, %tmp51
  br i1 %cmp66.1.3, label %if.then.1.3, label %for.cond56.backedge.1.3

if.then.1.3:                                      ; preds = %for.cond56.backedge.1.2
  %arrayidx62.1.3 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  store i32 %tmp51, i32* %arrayidx62.1.3, align 4, !tbaa !5
  store i32 %tmp50, i32* %arrayidx65.1.3, align 16, !tbaa !5
  br label %for.cond56.backedge.1.3

for.cond56.backedge.1.3:                          ; preds = %if.then.1.3, %for.cond56.backedge.1.2
  %tmp52 = phi i32 [ %tmp50, %if.then.1.3 ], [ %tmp51, %for.cond56.backedge.1.2 ]
  %arrayidx65.1.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  %tmp53 = load i32, i32* %arrayidx65.1.4, align 4, !tbaa !5
  %cmp66.1.4 = icmp sgt i32 %tmp52, %tmp53
  br i1 %cmp66.1.4, label %if.then.1.4, label %for.cond56.backedge.1.4

if.then.1.4:                                      ; preds = %for.cond56.backedge.1.3
  %arrayidx62.1.4 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  store i32 %tmp53, i32* %arrayidx62.1.4, align 16, !tbaa !5
  store i32 %tmp52, i32* %arrayidx65.1.4, align 4, !tbaa !5
  br label %for.cond56.backedge.1.4

for.cond56.backedge.1.4:                          ; preds = %if.then.1.4, %for.cond56.backedge.1.3
  %tmp54 = phi i32 [ %tmp52, %if.then.1.4 ], [ %tmp53, %for.cond56.backedge.1.3 ]
  %arrayidx65.1.5 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 6
  %tmp55 = load i32, i32* %arrayidx65.1.5, align 8, !tbaa !5
  %cmp66.1.5 = icmp sgt i32 %tmp54, %tmp55
  br i1 %cmp66.1.5, label %if.then.1.5, label %for.cond56.backedge.1.5

if.then.1.5:                                      ; preds = %for.cond56.backedge.1.4
  %arrayidx62.1.5 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  store i32 %tmp55, i32* %arrayidx62.1.5, align 4, !tbaa !5
  store i32 %tmp54, i32* %arrayidx65.1.5, align 8, !tbaa !5
  br label %for.cond56.backedge.1.5

for.cond56.backedge.1.5:                          ; preds = %if.then.1.5, %for.cond56.backedge.1.4
  %.pre131 = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.2

if.then.1140:                                     ; preds = %for.cond56.backedge
  %arrayidx62.1139 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 1
  store i32 %tmp17, i32* %arrayidx62.1139, align 4, !tbaa !5
  store i32 %tmp16, i32* %arrayidx65.1136, align 8, !tbaa !5
  br label %for.cond56.backedge.1141

for.cond56.backedge.1141:                         ; preds = %if.then.1140, %for.cond56.backedge
  %tmp56 = phi i32 [ %tmp17, %for.cond56.backedge ], [ %tmp16, %if.then.1140 ]
  %arrayidx65.2142 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %tmp57 = load i32, i32* %arrayidx65.2142, align 4, !tbaa !5
  %cmp66.2143 = icmp sgt i32 %tmp56, %tmp57
  br i1 %cmp66.2143, label %if.then.2146, label %for.cond56.backedge.2147

if.then.2146:                                     ; preds = %for.cond56.backedge.1141
  %arrayidx62.2145 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 2
  store i32 %tmp57, i32* %arrayidx62.2145, align 8, !tbaa !5
  store i32 %tmp56, i32* %arrayidx65.2142, align 4, !tbaa !5
  br label %for.cond56.backedge.2147

for.cond56.backedge.2147:                         ; preds = %if.then.2146, %for.cond56.backedge.1141
  %tmp58 = phi i32 [ %tmp57, %for.cond56.backedge.1141 ], [ %tmp56, %if.then.2146 ]
  %arrayidx65.3148 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %tmp59 = load i32, i32* %arrayidx65.3148, align 16, !tbaa !5
  %cmp66.3149 = icmp sgt i32 %tmp58, %tmp59
  br i1 %cmp66.3149, label %if.then.3152, label %for.cond56.backedge.3153

if.then.3152:                                     ; preds = %for.cond56.backedge.2147
  %arrayidx62.3151 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  store i32 %tmp59, i32* %arrayidx62.3151, align 4, !tbaa !5
  store i32 %tmp58, i32* %arrayidx65.3148, align 16, !tbaa !5
  br label %for.cond56.backedge.3153

for.cond56.backedge.3153:                         ; preds = %if.then.3152, %for.cond56.backedge.2147
  %tmp60 = phi i32 [ %tmp59, %for.cond56.backedge.2147 ], [ %tmp58, %if.then.3152 ]
  %arrayidx65.4154 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  %tmp61 = load i32, i32* %arrayidx65.4154, align 4, !tbaa !5
  %cmp66.4155 = icmp sgt i32 %tmp60, %tmp61
  br i1 %cmp66.4155, label %if.then.4158, label %for.cond56.backedge.4159

if.then.4158:                                     ; preds = %for.cond56.backedge.3153
  %arrayidx62.4157 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  store i32 %tmp61, i32* %arrayidx62.4157, align 16, !tbaa !5
  store i32 %tmp60, i32* %arrayidx65.4154, align 4, !tbaa !5
  br label %for.cond56.backedge.4159

for.cond56.backedge.4159:                         ; preds = %if.then.4158, %for.cond56.backedge.3153
  %tmp62 = phi i32 [ %tmp61, %for.cond56.backedge.3153 ], [ %tmp60, %if.then.4158 ]
  %arrayidx65.5160 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 6
  %tmp63 = load i32, i32* %arrayidx65.5160, align 8, !tbaa !5
  %cmp66.5161 = icmp sgt i32 %tmp62, %tmp63
  br i1 %cmp66.5161, label %if.then.5164, label %for.cond56.backedge.5165

if.then.5164:                                     ; preds = %for.cond56.backedge.4159
  %arrayidx62.5163 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 5
  store i32 %tmp63, i32* %arrayidx62.5163, align 4, !tbaa !5
  store i32 %tmp62, i32* %arrayidx65.5160, align 8, !tbaa !5
  br label %for.cond56.backedge.5165

for.cond56.backedge.5165:                         ; preds = %if.then.5164, %for.cond56.backedge.4159
  %tmp64 = phi i32 [ %tmp63, %for.cond56.backedge.4159 ], [ %tmp62, %if.then.5164 ]
  %arrayidx65.6166 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 7
  %tmp65 = load i32, i32* %arrayidx65.6166, align 4, !tbaa !5
  %cmp66.6167 = icmp sgt i32 %tmp64, %tmp65
  br i1 %cmp66.6167, label %if.then.6169, label %for.cond56.backedge.6

if.then.6169:                                     ; preds = %for.cond56.backedge.5165
  %arrayidx62.6168 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 6
  store i32 %tmp65, i32* %arrayidx62.6168, align 8, !tbaa !5
  store i32 %tmp64, i32* %arrayidx65.6166, align 4, !tbaa !5
  br label %for.cond56.backedge.6

for.cond56.backedge.6:                            ; preds = %if.then.6169, %for.cond56.backedge.5165
  %.pre = load i32, i32* %arrayidx2, align 16, !tbaa !5
  br label %for.body60.1
}

; Function Attrs: norecurse nounwind uwtable
define i32 @enlarge(i8** nocapture %in, i8* %tmp_image, i32* nocapture %x_size, i32* nocapture %y_size, i32 %border) #4 {
entry:
  %tmp = load i32, i32* %y_size, align 4, !tbaa !5
  %cmp174 = icmp sgt i32 %tmp, 0
  br i1 %cmp174, label %for.body.lr.ph, label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %border, 1
  %idx.ext3 = sext i32 %border to i64
  br label %"enlarge$2_initialize_context"

"enlarge$2_initialize_context":                   ; preds = %for.body.lr.ph
  store i32* %y_size, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$30"
  store i8** %in, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$31"
  store i64 %idx.ext3, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$32"
  store i8* %tmp_image, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  store i32* %x_size, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$34"
  store i32 %mul, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$35"
  store i32 %border, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36"
  br label %"enlarge$2_call_recursive_function"

"enlarge$2_call_recursive_function":              ; preds = %"enlarge$2_initialize_context"
  call void @"enlarge$2"(i32 0)
  br label %for.cond8.preheader.loopexit

for.cond8.preheader.loopexit:                     ; preds = %"enlarge$2_call_recursive_function"
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond8.preheader.loopexit, %entry
  %cmp9171 = icmp sgt i32 %border, 0
  br i1 %cmp9171, label %for.body11.lr.ph, label %for.cond42.preheader.for.end87_crit_edge

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %sub = add nsw i32 %border, -1
  %mul13 = shl nsw i32 %border, 1
  %idx.ext18 = sext i32 %border to i64
  br label %"enlarge$1_initialize_context"

"enlarge$1_initialize_context":                   ; preds = %for.body11.lr.ph
  store i32 %border, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36"
  store i32* %y_size, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$30"
  store i8** %in, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$31"
  store i64 %idx.ext18, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$37"
  store i8* %tmp_image, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  store i32 %mul13, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$38"
  store i32* %x_size, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$34"
  store i32 %sub, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$39"
  br label %"enlarge$1_call_recursive_function"

"enlarge$1_call_recursive_function":              ; preds = %"enlarge$1_initialize_context"
  call void @"enlarge$1"(i32 0, i32 0)
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %"enlarge$1_call_recursive_function"
  br i1 %cmp9171, label %for.cond46.preheader.lr.ph, label %for.cond42.preheader.for.end87_crit_edge

for.cond42.preheader.for.end87_crit_edge:         ; preds = %for.cond42.preheader, %for.cond8.preheader
  %.pre177 = shl nsw i32 %border, 1
  br label %for.end87

for.cond46.preheader.lr.ph:                       ; preds = %for.cond42.preheader
  %mul47 = shl nsw i32 %border, 1
  %.pre = load i32, i32* %y_size, align 4, !tbaa !5
  br label %"enlarge$0_initialize_context"

"enlarge$0_initialize_context":                   ; preds = %for.cond46.preheader.lr.ph
  store i32* %y_size, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$30"
  store i8* %tmp_image, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  store i32 %border, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36"
  store i32* %x_size, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$34"
  store i32 %mul47, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$40"
  br label %"enlarge$0_call_recursive_function"

"enlarge$0_call_recursive_function":              ; preds = %"enlarge$0_initialize_context"
  call void @"enlarge$0"(i32 0, i32 0, i32 %.pre)
  br label %for.end87.loopexit

for.end87.loopexit:                               ; preds = %"enlarge$0_call_recursive_function"
  br label %for.end87

for.end87:                                        ; preds = %for.end87.loopexit, %for.cond42.preheader.for.end87_crit_edge
  %mul88.pre-phi = phi i32 [ %.pre177, %for.cond42.preheader.for.end87_crit_edge ], [ %mul47, %for.end87.loopexit ]
  %tmp1 = load i32, i32* %x_size, align 4, !tbaa !5
  %add89 = add nsw i32 %tmp1, %mul88.pre-phi
  store i32 %add89, i32* %x_size, align 4, !tbaa !5
  %tmp2 = load i32, i32* %y_size, align 4, !tbaa !5
  %add91 = add nsw i32 %tmp2, %mul88.pre-phi
  store i32 %add91, i32* %y_size, align 4, !tbaa !5
  store i8* %tmp_image, i8** %in, align 8, !tbaa !1
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define void @susan_smoothing(i32 %three_by_three, i8* %in, double %arg, i32 %x_size, i32 %y_size, i8* nocapture readonly %bp) #3 {
entry:
  %in.addr = alloca i8*, align 8
  %x_size.addr = alloca i32, align 4
  %y_size.addr = alloca i32, align 4
  %dt = fptrunc double %arg to float
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

if.end:                                           ; preds = %if.then, %entry
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
  %call36 = tail call noalias i8* @malloc(i64 %conv35) #6
  %call37 = call i32 @enlarge(i8** nonnull %in.addr, i8* %call36, i32* nonnull %x_size.addr, i32* nonnull %y_size.addr, i32 %mask_size.0)
  br i1 %cmp, label %if.then40, label %for.cond139.preheader

for.cond139.preheader:                            ; preds = %if.end29
  %tmp = load i32, i32* %y_size.addr, align 4, !tbaa !5
  %sub140479 = add nsw i32 %tmp, -1
  %cmp141480 = icmp sgt i32 %sub140479, 1
  br i1 %cmp141480, label %for.cond144.preheader.preheader, label %if.end266

for.cond144.preheader.preheader:                  ; preds = %for.cond139.preheader
  %.pre = load i32, i32* %x_size.addr, align 4, !tbaa !5
  br label %"susan_smoothing$2_initialize_context"

"susan_smoothing$2_initialize_context":           ; preds = %for.cond144.preheader.preheader
  store i32* %y_size.addr, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$44"
  store i32* %x_size.addr, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$52"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$51"
  store i8** %in.addr, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$47"
  br label %"susan_smoothing$2_call_recursive_function"

"susan_smoothing$2_call_recursive_function":      ; preds = %"susan_smoothing$2_initialize_context"
  call void @"susan_smoothing$2"(i32 1, i8* %in, i32 %.pre, i32 %tmp)
  br label %if.end266.loopexit496

if.then40:                                        ; preds = %if.end29
  %tmp1 = load i32, i32* %x_size.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %tmp1, %add20
  %mul43 = mul nsw i32 %add20, %add20
  %conv44435 = zext i32 %mul43 to i64
  %call45 = tail call noalias i8* @malloc(i64 %conv44435) #6
  %mul46 = fmul float %dt, %dt
  %sub47 = fsub float -0.000000e+00, %mul46
  %sub48 = sub nsw i32 0, %mask_size.0
  %cmp49470 = icmp slt i32 %mask_size.0, %sub48
  br i1 %cmp49470, label %for.cond68.preheader, label %for.body55.lr.ph.preheader

for.body55.lr.ph.preheader:                       ; preds = %if.then40
  br label %"susan_smoothing$1_initialize_context"

"susan_smoothing$1_initialize_context":           ; preds = %for.body55.lr.ph.preheader
  store i32 %mask_size.0, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  store float %sub47, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$42"
  store i32 %sub48, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$43"
  br label %"susan_smoothing$1_call_recursive_function"

"susan_smoothing$1_call_recursive_function":      ; preds = %"susan_smoothing$1_initialize_context"
  call void @"susan_smoothing$1"(i32 %sub48, i8* %call45)
  br label %for.cond68.preheader.loopexit

for.cond68.preheader.loopexit:                    ; preds = %"susan_smoothing$1_call_recursive_function"
  br label %for.cond68.preheader

for.cond68.preheader:                             ; preds = %for.cond68.preheader.loopexit, %if.then40
  %tmp2 = load i32, i32* %y_size.addr, align 4, !tbaa !5
  %sub69461 = sub nsw i32 %tmp2, %mask_size.0
  %cmp70462 = icmp slt i32 %mask_size.0, %sub69461
  br i1 %cmp70462, label %for.cond73.preheader.lr.ph, label %if.end266

for.cond73.preheader.lr.ph:                       ; preds = %for.cond68.preheader
  %idx.ext82 = sext i32 %mask_size.0 to i64
  %idx.neg = sub nsw i64 0, %idx.ext82
  %idx.ext114 = sext i32 %sub to i64
  br label %"susan_smoothing$0_initialize_context"

"susan_smoothing$0_initialize_context":           ; preds = %for.cond73.preheader.lr.ph
  store i32* %y_size.addr, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$44"
  store i64 %idx.ext114, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$45"
  store i32 %sub48, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$43"
  store i1 %cmp49470, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$46"
  store i8** %in.addr, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$47"
  store i8* %call45, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$48"
  store i64 %idx.neg, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$49"
  store i64 %idx.ext82, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$50"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$51"
  store i32 %mask_size.0, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  store i32* %x_size.addr, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$52"
  br label %"susan_smoothing$0_call_recursive_function"

"susan_smoothing$0_call_recursive_function":      ; preds = %"susan_smoothing$0_initialize_context"
  call void @"susan_smoothing$0"(i32 %mask_size.0, i8* %in, i32 %tmp2)
  br label %if.end266.loopexit

if.end266.loopexit:                               ; preds = %"susan_smoothing$0_call_recursive_function"
  br label %if.end266

if.end266.loopexit496:                            ; preds = %"susan_smoothing$2_call_recursive_function"
  br label %if.end266

if.end266:                                        ; preds = %if.end266.loopexit496, %if.end266.loopexit, %for.cond68.preheader, %for.cond139.preheader
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define i32 @edge_draw(i8* nocapture %in, i8* %mid, i32 %x_size, i32 %y_size, i32 %drawing_mode) #4 {
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
  br label %"edge_draw$1_initialize_context"

"edge_draw$1_initialize_context":                 ; preds = %for.body.lr.ph
  store i64 %idx.ext8, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$53"
  store i32 %mul, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$54"
  store i64 %idx.neg, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$55"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$56"
  store i64 %sub.ptr.rhs.cast, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$57"
  br label %"edge_draw$1_call_recursive_function"

"edge_draw$1_call_recursive_function":            ; preds = %"edge_draw$1_initialize_context"
  call void @"edge_draw$1"(i32 0, i8* %mid)
  br label %for.cond19.preheader.loopexit

for.cond19.preheader.loopexit:                    ; preds = %"edge_draw$1_call_recursive_function"
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.loopexit, %entry
  %cmp2167 = icmp sgt i32 %mul, 0
  br i1 %cmp2167, label %for.body23.lr.ph, label %for.end36

for.body23.lr.ph:                                 ; preds = %for.cond19.preheader
  %sub.ptr.rhs.cast29 = ptrtoint i8* %mid to i64
  %tmp = mul i32 %y_size, %x_size
  %xtraiter = and i32 %tmp, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body23.lr.ph.split, label %for.body23.prol

for.body23.prol:                                  ; preds = %for.body23.lr.ph
  %tmp1 = load i8, i8* %mid, align 1, !tbaa !7
  %cmp25.prol = icmp ult i8 %tmp1, 8
  br i1 %cmp25.prol, label %if.then27.prol, label %if.end32.prol

if.then27.prol:                                   ; preds = %for.body23.prol
  store i8 0, i8* %in, align 1, !tbaa !7
  br label %if.end32.prol

if.end32.prol:                                    ; preds = %if.then27.prol, %for.body23.prol
  %incdec.ptr33.prol = getelementptr inbounds i8, i8* %mid, i64 1
  br label %for.body23.lr.ph.split

for.body23.lr.ph.split:                           ; preds = %if.end32.prol, %for.body23.lr.ph
  %midp.169.unr = phi i8* [ %mid, %for.body23.lr.ph ], [ %incdec.ptr33.prol, %if.end32.prol ]
  %i.168.unr = phi i32 [ 0, %for.body23.lr.ph ], [ 1, %if.end32.prol ]
  %tmp2 = icmp eq i32 %tmp, 1
  br i1 %tmp2, label %for.end36.loopexit, label %for.body23.lr.ph.split.split

for.body23.lr.ph.split.split:                     ; preds = %for.body23.lr.ph.split
  br label %"edge_draw$0_initialize_context"

"edge_draw$0_initialize_context":                 ; preds = %for.body23.lr.ph.split.split
  store i32 %mul, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$54"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$56"
  store i64 %sub.ptr.rhs.cast29, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$58"
  br label %"edge_draw$0_call_recursive_function"

"edge_draw$0_call_recursive_function":            ; preds = %"edge_draw$0_initialize_context"
  call void @"edge_draw$0"(i32 %i.168.unr, i8* %midp.169.unr)
  br label %for.end36.loopexit.unr-lcssa

for.end36.loopexit.unr-lcssa:                     ; preds = %"edge_draw$0_call_recursive_function"
  br label %for.end36.loopexit

for.end36.loopexit:                               ; preds = %for.end36.loopexit.unr-lcssa, %for.body23.lr.ph.split
  br label %for.end36

for.end36:                                        ; preds = %for.end36.loopexit, %for.cond19.preheader, %for.cond.preheader
  ret i32 undef
}

; Function Attrs: norecurse nounwind uwtable
define i32 @susan_thin(i32* nocapture readonly %r, i8* %mid, i32 %x_size, i32 %y_size) #4 {
entry:
  %sub = add nsw i32 %y_size, -4
  %cmp1209 = icmp sgt i32 %sub, 4
  br i1 %cmp1209, label %for.cond1.preheader.lr.ph, label %for.end828

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %sub2 = add nsw i32 %x_size, -4
  %cmp31202 = icmp sgt i32 %sub2, 4
  %idx.ext29 = sext i32 %x_size to i64
  br label %"susan_thin$0_initialize_context"

"susan_thin$0_initialize_context":                ; preds = %for.cond1.preheader.lr.ph
  store i32 %sub2, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$59"
  store i64 %idx.ext29, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$60"
  store i32 %sub, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$61"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  store i8* %mid, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  store i32 %x_size, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  store i1 %cmp31202, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$65"
  br label %"susan_thin$0_call_recursive_function"

"susan_thin$0_call_recursive_function":           ; preds = %"susan_thin$0_initialize_context"
  call void @"susan_thin$0"(i32 undef, i32 undef, i32 4)
  br label %for.end828.loopexit

for.end828.loopexit:                              ; preds = %"susan_thin$0_call_recursive_function"
  br label %for.end828

for.end828:                                       ; preds = %for.end828.loopexit, %entry
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define i32 @susan_edges(i8* nocapture readonly %in, i32* nocapture %r, i8* nocapture %mid, i8* readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #3 {
entry:
  %tmp = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %tmp, i8 0, i64 %mul1, i1 false)
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
  %tmp1 = sext i32 %x_size to i64
  br label %"susan_edges$1_initialize_context"

"susan_edges$1_initialize_context":               ; preds = %for.cond3.preheader.lr.ph
  store i32 %sub, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$66"
  store i32 %sub4, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$67"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  store i32 %max_no, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$69"
  store i64 %idx.ext124, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$70"
  store i64 %idx.ext73, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$71"
  store i64 %idx.ext36, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$72"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$73"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$74"
  store i64 %tmp1, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$75"
  store i1 %cmp52042, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$76"
  br label %"susan_edges$1_call_recursive_function"

"susan_edges$1_call_recursive_function":          ; preds = %"susan_edges$1_initialize_context"
  call void @"susan_edges$1"(i64 3)
  br label %for.cond288.preheader.loopexit

for.cond288.preheader.loopexit:                   ; preds = %"susan_edges$1_call_recursive_function"
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
  %tmp2 = sext i32 %x_size to i64
  br label %"susan_edges$0_initialize_context"

"susan_edges$0_initialize_context":               ; preds = %for.cond293.preheader.lr.ph
  store i8* %mid, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$77"
  store i32 %x_size, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78"
  store i64 %idx.ext474, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$79"
  store i32 %sub294, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$80"
  store i64 %idx.ext407, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$81"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$74"
  store i32 %sub289, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$82"
  store i32 %max_no, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$69"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  store i64 %idx.ext355, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$83"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$73"
  store i64 %tmp2, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$84"
  store i1 %cmp2952036, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$85"
  br label %"susan_edges$0_call_recursive_function"

"susan_edges$0_call_recursive_function":          ; preds = %"susan_edges$0_initialize_context"
  call void @"susan_edges$0"(i64 4)
  br label %for.end1258.loopexit

for.end1258.loopexit:                             ; preds = %"susan_edges$0_call_recursive_function"
  br label %for.end1258

for.end1258:                                      ; preds = %for.end1258.loopexit, %for.cond288.preheader
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define i32 @susan_edges_small(i8* nocapture readonly %in, i32* nocapture %r, i8* nocapture %mid, i8* nocapture readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #3 {
entry:
  %tmp = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %tmp, i8 0, i64 %mul1, i1 false)
  %sub = add i32 %y_size, -1
  %cmp644 = icmp sgt i32 %sub, 1
  br i1 %cmp644, label %for.cond3.preheader.lr.ph, label %for.cond84.preheader

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sub4 = add nsw i32 %x_size, -1
  %cmp5642 = icmp sgt i32 %sub4, 1
  %sub35 = add nsw i32 %x_size, -2
  %idx.ext36 = sext i32 %sub35 to i64
  %tmp1 = sext i32 %x_size to i64
  br label %"susan_edges_small$1_initialize_context"

"susan_edges_small$1_initialize_context":         ; preds = %for.cond3.preheader.lr.ph
  store i32 %sub4, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$86"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$87"
  store i64 %idx.ext36, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$88"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$89"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$90"
  store i32 %sub, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$91"
  store i64 %tmp1, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$92"
  store i1 %cmp5642, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$93"
  br label %"susan_edges_small$1_call_recursive_function"

"susan_edges_small$1_call_recursive_function":    ; preds = %"susan_edges_small$1_initialize_context"
  call void @"susan_edges_small$1"(i64 1)
  br label %for.cond84.preheader.loopexit

for.cond84.preheader.loopexit:                    ; preds = %"susan_edges_small$1_call_recursive_function"
  br label %for.cond84.preheader

for.cond84.preheader:                             ; preds = %for.cond84.preheader.loopexit, %entry
  %sub85 = add i32 %y_size, -2
  %cmp86639 = icmp sgt i32 %sub85, 2
  br i1 %cmp86639, label %for.cond89.preheader.lr.ph, label %for.end398

for.cond89.preheader.lr.ph:                       ; preds = %for.cond84.preheader
  %sub90 = add nsw i32 %x_size, -2
  %cmp91636 = icmp sgt i32 %sub90, 2
  %idx.ext148 = sext i32 %sub90 to i64
  %tmp2 = sext i32 %x_size to i64
  br label %"susan_edges_small$0_initialize_context"

"susan_edges_small$0_initialize_context":         ; preds = %for.cond89.preheader.lr.ph
  store i32 %sub85, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$94"
  store i8* %mid, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$95"
  store i32 %x_size, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$96"
  store i32 %sub90, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$97"
  store i64 %idx.ext148, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$98"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$87"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$90"
  store i64 %tmp2, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$99"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$89"
  store i1 %cmp91636, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$100"
  br label %"susan_edges_small$0_call_recursive_function"

"susan_edges_small$0_call_recursive_function":    ; preds = %"susan_edges_small$0_initialize_context"
  call void @"susan_edges_small$0"(i64 2)
  br label %for.end398.loopexit

for.end398.loopexit:                              ; preds = %"susan_edges_small$0_call_recursive_function"
  br label %for.end398

for.end398:                                       ; preds = %for.end398.loopexit, %for.cond84.preheader
  ret i32 undef
}

; Function Attrs: norecurse nounwind uwtable
define i32 @corner_draw(i8* nocapture %in, %struct.anon* nocapture readonly %corner_list, i32 %x_size, i32 %drawing_mode) #4 {
entry:
  %info56 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 0, i32 2
  %tmp = load i32, i32* %info56, align 4, !tbaa !8
  %cmp57 = icmp eq i32 %tmp, 7
  br i1 %cmp57, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %cmp1 = icmp eq i32 %drawing_mode, 0
  %sub10 = add nsw i32 %x_size, -2
  %idx.ext11 = sext i32 %sub10 to i64
  br label %"corner_draw$0_initialize_context"

"corner_draw$0_initialize_context":               ; preds = %while.body.lr.ph
  store i64 %idx.ext11, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$101"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$102"
  store i32 %x_size, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$103"
  store i1 %cmp1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$104"
  store %struct.anon* %corner_list, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$105"
  br label %"corner_draw$0_call_recursive_function"

"corner_draw$0_call_recursive_function":          ; preds = %"corner_draw$0_initialize_context"
  call void @"corner_draw$0"(%struct.anon* %corner_list, i64 0)
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %"corner_draw$0_call_recursive_function"
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define i32 @susan_corners(i8* nocapture readonly %in, i32* %r, i8* readonly %bp, i32 %max_no, %struct.anon* nocapture %corner_list, i32 %x_size, i32 %y_size) #3 {
entry:
  %tmp = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %tmp, i8 0, i64 %mul1, i1 false)
  %call = tail call noalias i8* @malloc(i64 %mul1) #6
  %tmp1 = bitcast i8* %call to i32*
  %call8 = tail call noalias i8* @malloc(i64 %mul1) #6
  %tmp2 = bitcast i8* %call8 to i32*
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
  %tmp3 = sext i32 %x_size to i64
  br label %"susan_corners$1_initialize_context"

"susan_corners$1_initialize_context":             ; preds = %for.cond10.preheader.lr.ph
  store i32 %sub, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$106"
  store i64 %idx.ext131, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$107"
  store i64 %idx.ext43, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$108"
  store i64 %tmp3, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$109"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$111"
  store i32* %tmp1, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$112"
  store i32 %max_no, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  store i32 %x_size, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$114"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  store i1 %cmp122173, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$116"
  store i64 %idx.ext80, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$117"
  store i32* %tmp2, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$118"
  store i32 %sub11, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$119"
  br label %"susan_corners$1_call_recursive_function"

"susan_corners$1_call_recursive_function":        ; preds = %"susan_corners$1_initialize_context"
  call void @"susan_corners$1"(i64 5)
  br label %for.cond911.preheader

for.cond911.preheader:                            ; preds = %"susan_corners$1_call_recursive_function"
  br i1 %cmp2175, label %for.cond916.preheader.lr.ph, label %for.end1387

for.cond916.preheader.lr.ph:                      ; preds = %for.cond911.preheader
  %sub917 = add nsw i32 %x_size, -5
  %cmp9182165 = icmp sgt i32 %sub917, 5
  %tmp4 = sext i32 %sub917 to i64
  %tmp5 = sext i32 %x_size to i64
  %tmp6 = sext i32 %sub to i64
  br label %"susan_corners$0_initialize_context"

"susan_corners$0_initialize_context":             ; preds = %for.cond916.preheader.lr.ph
  store i64 %tmp6, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$120"
  store i64 %tmp4, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$121"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  store i32* %tmp2, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$118"
  store i32* %tmp1, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$112"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  store %struct.anon* %corner_list, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$122"
  store i64 %tmp5, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$123"
  store i1 %cmp9182165, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$124"
  br label %"susan_corners$0_call_recursive_function"

"susan_corners$0_call_recursive_function":        ; preds = %"susan_corners$0_initialize_context"
  call void @"susan_corners$0"(i32 0, i64 5)
  br label %"susan_corners$0_branch_to_exit"

"susan_corners$0_branch_to_exit":                 ; preds = %"susan_corners$0_call_recursive_function"
  %tmp7 = getelementptr %4, %4* @"susan_corners$0_return_value_struct", i32 0, i32 1
  %tmp8 = load i8, i8* %tmp7
  switch i8 %tmp8, label %"susan_corners$0_extract_return_values$0" [
    i8 1, label %"susan_corners$0_extract_return_values$0"
    i8 0, label %"susan_corners$0_extract_return_values$1"
  ]

"susan_corners$0_extract_return_values$0":        ; preds = %"susan_corners$0_branch_to_exit", %"susan_corners$0_branch_to_exit"
  %tmp9 = getelementptr %4, %4* @"susan_corners$0_return_value_struct", i32 0, i32 0
  %tmp10 = load i32, i32* %tmp9
  br label %for.end1387.loopexit

"susan_corners$0_extract_return_values$1":        ; preds = %"susan_corners$0_branch_to_exit"
  br label %if.then1377

if.then1377:                                      ; preds = %"susan_corners$0_extract_return_values$1"
  %tmp11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %tmp12 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %tmp11) #9
  tail call void @exit(i32 1) #8
  unreachable

for.end1387.loopexit:                             ; preds = %"susan_corners$0_extract_return_values$0"
  br label %for.end1387

for.end1387:                                      ; preds = %for.end1387.loopexit, %for.cond911.preheader, %entry
  %n.0.lcssa = phi i32 [ 0, %for.cond911.preheader ], [ 0, %entry ], [ %tmp10, %for.end1387.loopexit ]
  %idxprom1388 = sext i32 %n.0.lcssa to i64
  %info1390 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1388, i32 2
  store i32 7, i32* %info1390, align 4, !tbaa !8
  tail call void @free(i8* %call) #6
  tail call void @free(i8* %call8) #6
  ret i32 undef
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @susan_corners_quick(i8* readonly %in, i32* %r, i8* readonly %bp, i32 %max_no, %struct.anon* nocapture %corner_list, i32 %x_size, i32 %y_size) #3 {
entry:
  %tmp = bitcast i32* %r to i8*
  %mul = mul nsw i32 %y_size, %x_size
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  call void @llvm.memset.p0i8.i64(i8* align 4 %tmp, i8 0, i64 %mul1, i1 false)
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
  %tmp1 = sext i32 %x_size to i64
  br label %"susan_corners_quick$1_initialize_context"

"susan_corners_quick$1_initialize_context":       ; preds = %for.cond3.preheader.lr.ph
  store i32 %sub, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$125"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  store i32 %max_no, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  store i64 %idx.ext124, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$128"
  store i32 %sub4, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$129"
  store i64 %idx.ext73, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$130"
  store i64 %idx.ext36, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$131"
  store i8* %bp, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$132"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  store i64 %tmp1, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$134"
  store i1 %cmp52051, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$135"
  br label %"susan_corners_quick$1_call_recursive_function"

"susan_corners_quick$1_call_recursive_function":  ; preds = %"susan_corners_quick$1_initialize_context"
  call void @"susan_corners_quick$1"(i64 7)
  br label %for.cond360.preheader

for.cond360.preheader:                            ; preds = %"susan_corners_quick$1_call_recursive_function"
  br i1 %cmp2053, label %for.cond365.preheader.lr.ph, label %for.end1325

for.cond365.preheader.lr.ph:                      ; preds = %for.cond360.preheader
  %sub366 = add nsw i32 %x_size, -7
  %cmp3672043 = icmp sgt i32 %sub366, 7
  %tmp2 = sext i32 %sub366 to i64
  %tmp3 = sext i32 %x_size to i64
  %tmp4 = sext i32 %sub to i64
  br label %"susan_corners_quick$0_initialize_context"

"susan_corners_quick$0_initialize_context":       ; preds = %for.cond365.preheader.lr.ph
  store i64 %tmp4, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$136"
  store i8* %in, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  store i64 %tmp2, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$137"
  store %struct.anon* %corner_list, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$138"
  store i32* %r, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  store i64 %tmp3, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$139"
  store i1 %cmp3672043, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$140"
  br label %"susan_corners_quick$0_call_recursive_function"

"susan_corners_quick$0_call_recursive_function":  ; preds = %"susan_corners_quick$0_initialize_context"
  call void @"susan_corners_quick$0"(i32 0, i64 7)
  br label %"susan_corners_quick$0_branch_to_exit"

"susan_corners_quick$0_branch_to_exit":           ; preds = %"susan_corners_quick$0_call_recursive_function"
  %tmp5 = getelementptr %5, %5* @"susan_corners_quick$0_return_value_struct", i32 0, i32 1
  %tmp6 = load i8, i8* %tmp5
  switch i8 %tmp6, label %"susan_corners_quick$0_extract_return_values$0" [
    i8 1, label %"susan_corners_quick$0_extract_return_values$0"
    i8 0, label %"susan_corners_quick$0_extract_return_values$1"
  ]

"susan_corners_quick$0_extract_return_values$0":  ; preds = %"susan_corners_quick$0_branch_to_exit", %"susan_corners_quick$0_branch_to_exit"
  %tmp7 = getelementptr %5, %5* @"susan_corners_quick$0_return_value_struct", i32 0, i32 0
  %tmp8 = load i32, i32* %tmp7
  br label %for.end1325.loopexit

"susan_corners_quick$0_extract_return_values$1":  ; preds = %"susan_corners_quick$0_branch_to_exit"
  br label %if.then1316

if.then1316:                                      ; preds = %"susan_corners_quick$0_extract_return_values$1"
  %tmp9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %tmp10 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %tmp9) #9
  tail call void @exit(i32 1) #8
  unreachable

for.end1325.loopexit:                             ; preds = %"susan_corners_quick$0_extract_return_values$0"
  br label %for.end1325

for.end1325:                                      ; preds = %for.end1325.loopexit, %for.cond360.preheader, %entry
  %n.0.lcssa = phi i32 [ 0, %for.cond360.preheader ], [ 0, %entry ], [ %tmp8, %for.end1325.loopexit ]
  %idxprom1326 = sext i32 %n.0.lcssa to i64
  %info1328 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %idxprom1326, i32 2
  store i32 7, i32* %info1328, align 4, !tbaa !8
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #3 {
entry:
  %in = alloca i8*, align 8
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %corner_list = alloca [15000 x %struct.anon], align 16
  %tmp = bitcast i8** %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %tmp) #6
  %tmp1 = bitcast i32* %x_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %tmp1) #6
  %tmp2 = bitcast i32* %y_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %tmp2) #6
  %tmp3 = bitcast [15000 x %struct.anon]* %corner_list to i8*
  call void @llvm.lifetime.start.p0i8(i64 360000, i8* %tmp3) #6
  %cmp = icmp slt i32 %argc, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @usage()
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %tmp4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  call void @get_image(i8* %tmp4, i8** nonnull %in, i32* nonnull %x_size, i32* nonnull %y_size)
  %cmp1310 = icmp sgt i32 %argc, 3
  br i1 %cmp1310, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.end
  br label %"main$12_initialize_context"

"main$12_initialize_context":                     ; preds = %while.body.preheader
  store i32 %argc, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$141"
  store i8** %argv, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$142"
  br label %"main$12_call_recursive_function"

"main$12_call_recursive_function":                ; preds = %"main$12_initialize_context"
  call void @"main$12"(i32 3, i32 0, i32 0, i32 0, i32 0, i32 20, i32 1, float 4.000000e+00, i32 0)
  br label %"main$12_branch_to_exit"

"main$12_branch_to_exit":                         ; preds = %"main$12_call_recursive_function"
  %tmp5 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 8
  %tmp6 = load i8, i8* %tmp5
  switch i8 %tmp6, label %"main$12_extract_return_values$0" [
    i8 2, label %"main$12_extract_return_values$0"
    i8 3, label %"main$12_extract_return_values$1"
    i8 1, label %"main$12_extract_return_values$2"
    i8 0, label %"main$12_extract_return_values$3"
  ]

"main$12_extract_return_values$0":                ; preds = %"main$12_branch_to_exit", %"main$12_branch_to_exit"
  br label %if.then17

"main$12_extract_return_values$1":                ; preds = %"main$12_branch_to_exit"
  %tmp7 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 0
  %tmp8 = load i32, i32* %tmp7
  %tmp9 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 1
  %tmp10 = load i32, i32* %tmp9
  %tmp11 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 2
  %tmp12 = load i32, i32* %tmp11
  %tmp13 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 3
  %tmp14 = load i32, i32* %tmp13
  %tmp15 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 4
  %tmp16 = load i32, i32* %tmp15
  %tmp17 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 5
  %tmp18 = load i32, i32* %tmp17
  %tmp19 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 6
  %tmp20 = load float, float* %tmp19
  %tmp21 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 7
  %tmp22 = load i32, i32* %tmp21
  br label %while.end.loopexit

"main$12_extract_return_values$2":                ; preds = %"main$12_branch_to_exit"
  br label %if.then32

"main$12_extract_return_values$3":                ; preds = %"main$12_branch_to_exit"
  br label %if.else

if.then17:                                        ; preds = %"main$12_extract_return_values$0"
  %puts155 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @str.47, i64 0, i64 0))
  tail call void @exit(i32 0) #8
  unreachable

if.then32:                                        ; preds = %"main$12_extract_return_values$2"
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @str.46, i64 0, i64 0))
  tail call void @exit(i32 0) #8
  unreachable

if.else:                                          ; preds = %"main$12_extract_return_values$3"
  %call38 = tail call i32 @usage()
  unreachable

while.end.loopexit:                               ; preds = %"main$12_extract_return_values$1"
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end
  %mode.0.lcssa = phi i32 [ 0, %if.end ], [ %tmp22, %while.end.loopexit ]
  %dt.0.lcssa = phi float [ 4.000000e+00, %if.end ], [ %tmp20, %while.end.loopexit ]
  %susan_quick.0.lcssa = phi i32 [ 0, %if.end ], [ %tmp18, %while.end.loopexit ]
  %drawing_mode.0.lcssa = phi i32 [ 0, %if.end ], [ %tmp16, %while.end.loopexit ]
  %three_by_three.0.lcssa = phi i32 [ 0, %if.end ], [ %tmp14, %while.end.loopexit ]
  %thin_post_proc.0.lcssa = phi i32 [ 1, %if.end ], [ %tmp12, %while.end.loopexit ]
  %principle.0.lcssa = phi i32 [ 0, %if.end ], [ %tmp10, %while.end.loopexit ]
  %bt.0.lcssa = phi i32 [ 20, %if.end ], [ %tmp8, %while.end.loopexit ]
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
  %call.i157 = tail call noalias i8* @malloc(i64 516) #6
  %add.ptr.i = getelementptr inbounds i8, i8* %call.i157, i64 258
  %conv1.i = sitofp i32 %bt.0.lcssa to float
  br label %"main$0_initialize_context"

"main$0_initialize_context":                      ; preds = %sw.bb47
  store i8* %add.ptr.i, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$143"
  store float %conv1.i, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$144"
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %"main$0_initialize_context"
  call void @"main$0"(i64 -256)
  br label %setup_brightness_lut.exit

setup_brightness_lut.exit:                        ; preds = %"main$0_call_recursive_function"
  %tmp23 = load i8*, i8** %in, align 8, !tbaa !1
  %conv48 = fpext float %dt.0.lcssa to double
  %tmp24 = load i32, i32* %x_size, align 4, !tbaa !5
  %tmp25 = load i32, i32* %y_size, align 4, !tbaa !5
  tail call void @susan_smoothing(i32 %three_by_three.0.lcssa, i8* %tmp23, double %conv48, i32 %tmp24, i32 %tmp25, i8* nonnull %add.ptr.i)
  br label %sw.epilog101

sw.bb49:                                          ; preds = %while.end
  %tmp26 = load i32, i32* %x_size, align 4, !tbaa !5
  %tmp27 = load i32, i32* %y_size, align 4, !tbaa !5
  %mul = mul i32 %tmp27, %tmp26
  %conv50 = sext i32 %mul to i64
  %mul51 = shl nsw i64 %conv50, 2
  %call52 = tail call noalias i8* @malloc(i64 %mul51) #6
  %call.i159 = tail call noalias i8* @malloc(i64 516) #6
  %add.ptr.i160 = getelementptr inbounds i8, i8* %call.i159, i64 258
  %conv1.i161 = sitofp i32 %bt.0.lcssa to float
  br label %"main$6_initialize_context"

"main$6_initialize_context":                      ; preds = %sw.bb49
  store i8* %add.ptr.i160, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$145"
  store float %conv1.i161, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$146"
  br label %"main$6_call_recursive_function"

"main$6_call_recursive_function":                 ; preds = %"main$6_initialize_context"
  call void @"main$6"(i64 -256)
  br label %setup_brightness_lut.exit178

setup_brightness_lut.exit178:                     ; preds = %"main$6_call_recursive_function"
  %tmp28 = bitcast i8* %call52 to i32*
  %tobool = icmp eq i32 %principle.0.lcssa, 0
  br i1 %tobool, label %if.else62, label %if.then53

if.then53:                                        ; preds = %setup_brightness_lut.exit178
  %tobool54 = icmp eq i32 %three_by_three.0.lcssa, 0
  %tmp29 = load i8*, i8** %in, align 8, !tbaa !1
  br i1 %tobool54, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.then53
  %call56 = tail call i32 @susan_principle_small(i8* %tmp29, i32* %tmp28, i8* nonnull %add.ptr.i160, i32 undef, i32 %tmp26, i32 %tmp27)
  br label %if.end59

if.else57:                                        ; preds = %if.then53
  %call58 = tail call i32 @susan_principle(i8* %tmp29, i32* %tmp28, i8* nonnull %add.ptr.i160, i32 2650, i32 %tmp26, i32 %tmp27)
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then55
  %tmp30 = load i32, i32* %tmp28, align 4, !tbaa !5
  %cmp49.i = icmp sgt i32 %mul, 0
  br i1 %cmp49.i, label %for.body.i179.preheader, label %sw.epilog101

for.body.i179.preheader:                          ; preds = %if.end59
  %exitcond57.i293 = icmp eq i32 %mul, 1
  br i1 %exitcond57.i293, label %sw.epilog101, label %for.body.for.body_crit_edge.i.preheader

for.body.for.body_crit_edge.i.preheader:          ; preds = %for.body.i179.preheader
  %tmp31 = mul i32 %tmp27, %tmp26
  %tmp32 = add i32 %tmp31, -2
  %tmp33 = zext i32 %tmp32 to i64
  %tmp34 = add nuw nsw i64 %tmp33, 1
  %min.iters.check385 = icmp ult i64 %tmp34, 8
  br i1 %min.iters.check385, label %for.body.for.body_crit_edge.i.preheader432, label %min.iters.checked386

min.iters.checked386:                             ; preds = %for.body.for.body_crit_edge.i.preheader
  %n.vec388 = and i64 %tmp34, 8589934584
  %cmp.zero389 = icmp eq i64 %n.vec388, 0
  %ind.end394 = or i64 %n.vec388, 1
  %minmax.ident.splatinsert409 = insertelement <4 x i32> undef, i32 %tmp30, i32 0
  %minmax.ident.splat410 = shufflevector <4 x i32> %minmax.ident.splatinsert409, <4 x i32> undef, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert420 = insertelement <4 x i32> undef, i32 %tmp30, i32 0
  %minmax.ident.splat421 = shufflevector <4 x i32> %minmax.ident.splatinsert420, <4 x i32> undef, <4 x i32> zeroinitializer
  br i1 %cmp.zero389, label %for.body.for.body_crit_edge.i.preheader432, label %vector.body382.preheader

vector.body382.preheader:                         ; preds = %min.iters.checked386
  %tmp35 = mul i32 %tmp27, %tmp26
  %tmp36 = add i32 %tmp35, -2
  %tmp37 = zext i32 %tmp36 to i64
  %tmp38 = add nuw nsw i64 %tmp37, 1
  %tmp39 = and i64 %tmp38, 8589934584
  %tmp40 = add nsw i64 %tmp39, -8
  %tmp41 = lshr exact i64 %tmp40, 3
  %tmp42 = and i64 %tmp41, 1
  %lcmp.mod450 = icmp eq i64 %tmp42, 0
  br i1 %lcmp.mod450, label %vector.body382.prol, label %vector.body382.preheader.split

vector.body382.prol:                              ; preds = %vector.body382.preheader
  %tmp43 = getelementptr inbounds i8, i8* %call52, i64 4
  %tmp44 = bitcast i8* %tmp43 to <4 x i32>*
  %wide.load405.prol = load <4 x i32>, <4 x i32>* %tmp44, align 4, !tbaa !5
  %tmp45 = getelementptr i8, i8* %call52, i64 20
  %tmp46 = bitcast i8* %tmp45 to <4 x i32>*
  %wide.load406.prol = load <4 x i32>, <4 x i32>* %tmp46, align 4, !tbaa !5
  %tmp47 = icmp sgt <4 x i32> %wide.load405.prol, %minmax.ident.splat421
  %tmp48 = icmp sgt <4 x i32> %wide.load406.prol, %minmax.ident.splat421
  %tmp49 = select <4 x i1> %tmp47, <4 x i32> %wide.load405.prol, <4 x i32> %minmax.ident.splat421
  %tmp50 = select <4 x i1> %tmp48, <4 x i32> %wide.load406.prol, <4 x i32> %minmax.ident.splat421
  %tmp51 = icmp slt <4 x i32> %wide.load405.prol, %minmax.ident.splat410
  %tmp52 = icmp slt <4 x i32> %wide.load406.prol, %minmax.ident.splat410
  %tmp53 = select <4 x i1> %tmp51, <4 x i32> %wide.load405.prol, <4 x i32> %minmax.ident.splat410
  %tmp54 = select <4 x i1> %tmp52, <4 x i32> %wide.load406.prol, <4 x i32> %minmax.ident.splat410
  br label %vector.body382.preheader.split

vector.body382.preheader.split:                   ; preds = %vector.body382.prol, %vector.body382.preheader
  %.lcssa440.unr = phi <4 x i32> [ undef, %vector.body382.preheader ], [ %tmp54, %vector.body382.prol ]
  %.lcssa439.unr = phi <4 x i32> [ undef, %vector.body382.preheader ], [ %tmp53, %vector.body382.prol ]
  %.lcssa438.unr = phi <4 x i32> [ undef, %vector.body382.preheader ], [ %tmp50, %vector.body382.prol ]
  %.lcssa.unr = phi <4 x i32> [ undef, %vector.body382.preheader ], [ %tmp49, %vector.body382.prol ]
  %index391.unr = phi i64 [ 0, %vector.body382.preheader ], [ 8, %vector.body382.prol ]
  %vec.phi401.unr = phi <4 x i32> [ %minmax.ident.splat410, %vector.body382.preheader ], [ %tmp53, %vector.body382.prol ]
  %vec.phi402.unr = phi <4 x i32> [ %minmax.ident.splat410, %vector.body382.preheader ], [ %tmp54, %vector.body382.prol ]
  %vec.phi403.unr = phi <4 x i32> [ %minmax.ident.splat421, %vector.body382.preheader ], [ %tmp49, %vector.body382.prol ]
  %vec.phi404.unr = phi <4 x i32> [ %minmax.ident.splat421, %vector.body382.preheader ], [ %tmp50, %vector.body382.prol ]
  %tmp55 = icmp eq i64 %tmp41, 0
  br i1 %tmp55, label %middle.block383, label %vector.body382.preheader.split.split

vector.body382.preheader.split.split:             ; preds = %vector.body382.preheader.split
  br label %"main$5_initialize_context"

"main$5_initialize_context":                      ; preds = %vector.body382.preheader.split.split
  store i64 %n.vec388, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$147"
  store i32* %tmp28, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$148"
  br label %"main$5_call_recursive_function"

"main$5_call_recursive_function":                 ; preds = %"main$5_initialize_context"
  call void @"main$5"(<4 x i32> %vec.phi404.unr, <4 x i32> %vec.phi403.unr, <4 x i32> %vec.phi402.unr, <4 x i32> %vec.phi401.unr, i64 %index391.unr)
  br label %"main$5_extract_return_values$0"

"main$5_extract_return_values$0":                 ; preds = %"main$5_call_recursive_function"
  %tmp56 = getelementptr %7, %7* @"main$5_return_value_struct", i32 0, i32 0
  %tmp57 = load <4 x i32>, <4 x i32>* %tmp56
  %tmp58 = getelementptr %7, %7* @"main$5_return_value_struct", i32 0, i32 1
  %tmp59 = load <4 x i32>, <4 x i32>* %tmp58
  %tmp60 = getelementptr %7, %7* @"main$5_return_value_struct", i32 0, i32 2
  %tmp61 = load <4 x i32>, <4 x i32>* %tmp60
  %tmp62 = getelementptr %7, %7* @"main$5_return_value_struct", i32 0, i32 3
  %tmp63 = load <4 x i32>, <4 x i32>* %tmp62
  br label %middle.block383.unr-lcssa

middle.block383.unr-lcssa:                        ; preds = %"main$5_extract_return_values$0"
  br label %middle.block383

middle.block383:                                  ; preds = %middle.block383.unr-lcssa, %vector.body382.preheader.split
  %.lcssa440 = phi <4 x i32> [ %.lcssa440.unr, %vector.body382.preheader.split ], [ %tmp63, %middle.block383.unr-lcssa ]
  %.lcssa439 = phi <4 x i32> [ %.lcssa439.unr, %vector.body382.preheader.split ], [ %tmp61, %middle.block383.unr-lcssa ]
  %.lcssa438 = phi <4 x i32> [ %.lcssa438.unr, %vector.body382.preheader.split ], [ %tmp59, %middle.block383.unr-lcssa ]
  %.lcssa = phi <4 x i32> [ %.lcssa.unr, %vector.body382.preheader.split ], [ %tmp57, %middle.block383.unr-lcssa ]
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
  %tmp64 = select i1 %rdx.minmax.cmp428.elt, i32 %rdx.minmax.select426.elt, i32 %rdx.shuf427.elt
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
  %tmp65 = select i1 %rdx.minmax.cmp417.elt, i32 %rdx.minmax.select415.elt, i32 %rdx.shuf416.elt
  %cmp.n395 = icmp eq i64 %tmp34, %n.vec388
  br i1 %cmp.n395, label %for.body15.i.preheader, label %for.body.for.body_crit_edge.i.preheader432

for.body.for.body_crit_edge.i.preheader432:       ; preds = %middle.block383, %min.iters.checked386, %for.body.for.body_crit_edge.i.preheader
  %indvars.iv.next55.i296.ph = phi i64 [ 1, %min.iters.checked386 ], [ 1, %for.body.for.body_crit_edge.i.preheader ], [ %ind.end394, %middle.block383 ]
  %min_r.1.i295.ph = phi i32 [ %tmp30, %min.iters.checked386 ], [ %tmp30, %for.body.for.body_crit_edge.i.preheader ], [ %tmp65, %middle.block383 ]
  %.max_r.0.i294.ph = phi i32 [ %tmp30, %min.iters.checked386 ], [ %tmp30, %for.body.for.body_crit_edge.i.preheader ], [ %tmp64, %middle.block383 ]
  br label %"main$4_initialize_context"

"main$4_initialize_context":                      ; preds = %for.body.for.body_crit_edge.i.preheader432
  store i32 %mul, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$149"
  store i32* %tmp28, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$148"
  br label %"main$4_call_recursive_function"

"main$4_call_recursive_function":                 ; preds = %"main$4_initialize_context"
  call void @"main$4"(i32 %.max_r.0.i294.ph, i32 %min_r.1.i295.ph, i64 %indvars.iv.next55.i296.ph)
  br label %"main$4_extract_return_values$0"

"main$4_extract_return_values$0":                 ; preds = %"main$4_call_recursive_function"
  %tmp66 = getelementptr %8, %8* @"main$4_return_value_struct", i32 0, i32 0
  %tmp67 = load i32, i32* %tmp66
  %tmp68 = getelementptr %8, %8* @"main$4_return_value_struct", i32 0, i32 1
  %tmp69 = load i32, i32* %tmp68
  br label %for.body15.i.preheader.loopexit

for.body15.i.preheader.loopexit:                  ; preds = %"main$4_extract_return_values$0"
  br label %for.body15.i.preheader

for.body15.i.preheader:                           ; preds = %for.body15.i.preheader.loopexit, %middle.block383
  %min_r.1.i.lcssa = phi i32 [ %tmp65, %middle.block383 ], [ %tmp69, %for.body15.i.preheader.loopexit ]
  %.max_r.0.i.lcssa = phi i32 [ %tmp64, %middle.block383 ], [ %tmp67, %for.body15.i.preheader.loopexit ]
  %sub.i180 = sub nsw i32 %.max_r.0.i.lcssa, %min_r.1.i.lcssa
  %sub18.i287 = sub nsw i32 %tmp30, %min_r.1.i.lcssa
  %mul.i182288 = mul nsw i32 %sub18.i287, 255
  %div.i183289 = sdiv i32 %mul.i182288, %sub.i180
  %conv.i184290 = trunc i32 %div.i183289 to i8
  store i8 %conv.i184290, i8* %tmp29, align 1, !tbaa !7
  br i1 %exitcond57.i293, label %sw.epilog101, label %for.body15.for.body15_crit_edge.i.preheader

for.body15.for.body15_crit_edge.i.preheader:      ; preds = %for.body15.i.preheader
  %tmp70 = mul i32 %tmp27, %tmp26
  %tmp71 = and i32 %tmp70, 1
  %lcmp.mod448 = icmp eq i32 %tmp71, 0
  br i1 %lcmp.mod448, label %for.body15.for.body15_crit_edge.i.prol, label %for.body15.for.body15_crit_edge.i.preheader.split

for.body15.for.body15_crit_edge.i.prol:           ; preds = %for.body15.for.body15_crit_edge.i.preheader
  %arrayidx17.phi.trans.insert.i.prol = getelementptr inbounds i8, i8* %call52, i64 4
  %tmp72 = bitcast i8* %arrayidx17.phi.trans.insert.i.prol to i32*
  %.pre58.i.prol = load i32, i32* %tmp72, align 4, !tbaa !5
  %sub18.i.prol = sub nsw i32 %.pre58.i.prol, %min_r.1.i.lcssa
  %mul.i182.prol = mul nsw i32 %sub18.i.prol, 255
  %div.i183.prol = sdiv i32 %mul.i182.prol, %sub.i180
  %conv.i184.prol = trunc i32 %div.i183.prol to i8
  %arrayidx20.i.prol = getelementptr inbounds i8, i8* %tmp29, i64 1
  store i8 %conv.i184.prol, i8* %arrayidx20.i.prol, align 1, !tbaa !7
  br label %for.body15.for.body15_crit_edge.i.preheader.split

for.body15.for.body15_crit_edge.i.preheader.split: ; preds = %for.body15.for.body15_crit_edge.i.prol, %for.body15.for.body15_crit_edge.i.preheader
  %indvars.iv.next.i185292.unr = phi i64 [ 1, %for.body15.for.body15_crit_edge.i.preheader ], [ 2, %for.body15.for.body15_crit_edge.i.prol ]
  %tmp73 = icmp eq i32 %tmp70, 2
  br i1 %tmp73, label %sw.epilog101.loopexit431, label %for.body15.for.body15_crit_edge.i.preheader.split.split

for.body15.for.body15_crit_edge.i.preheader.split.split: ; preds = %for.body15.for.body15_crit_edge.i.preheader.split
  br label %"main$3_initialize_context"

"main$3_initialize_context":                      ; preds = %for.body15.for.body15_crit_edge.i.preheader.split.split
  store i32 %mul, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$149"
  store i8* %tmp29, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$150"
  store i32 %sub.i180, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$151"
  store i32 %min_r.1.i.lcssa, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$152"
  store i32* %tmp28, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$148"
  br label %"main$3_call_recursive_function"

"main$3_call_recursive_function":                 ; preds = %"main$3_initialize_context"
  call void @"main$3"(i64 %indvars.iv.next.i185292.unr)
  br label %sw.epilog101.loopexit431.unr-lcssa

if.else62:                                        ; preds = %setup_brightness_lut.exit178
  %call65 = tail call noalias i8* @malloc(i64 %conv50) #6
  call void @llvm.memset.p0i8.i64(i8* align 1 %call65, i8 100, i64 %conv50, i1 false)
  %tobool68 = icmp eq i32 %three_by_three.0.lcssa, 0
  %tmp74 = load i8*, i8** %in, align 8, !tbaa !1
  br i1 %tobool68, label %if.else71, label %if.then69

if.then69:                                        ; preds = %if.else62
  %call70 = tail call i32 @susan_edges_small(i8* %tmp74, i32* %tmp28, i8* %call65, i8* nonnull %add.ptr.i160, i32 undef, i32 %tmp26, i32 %tmp27)
  br label %if.end73

if.else71:                                        ; preds = %if.else62
  %call72 = tail call i32 @susan_edges(i8* %tmp74, i32* %tmp28, i8* %call65, i8* nonnull %add.ptr.i160, i32 2650, i32 %tmp26, i32 %tmp27)
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  %tobool74 = icmp eq i32 %thin_post_proc.0.lcssa, 0
  br i1 %tobool74, label %if.end77, label %if.then75

if.then75:                                        ; preds = %if.end73
  %call76 = tail call i32 @susan_thin(i32* %tmp28, i8* %call65, i32 %tmp26, i32 %tmp27)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73
  %cmp.i = icmp eq i32 %drawing_mode.0.lcssa, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond19.preheader.i

for.cond.preheader.i:                             ; preds = %if.end77
  %cmp170.i = icmp sgt i32 %mul, 0
  br i1 %cmp170.i, label %for.body.lr.ph.i, label %sw.epilog101

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub.ptr.rhs.cast.i = ptrtoint i8* %call65 to i64
  %idx.ext.i = sext i32 %tmp26 to i64
  %idx.neg.i = sub nsw i64 0, %idx.ext.i
  %sub.i188 = add nsw i32 %tmp26, -2
  %idx.ext8.i = sext i32 %sub.i188 to i64
  br label %"main$2_initialize_context"

"main$2_initialize_context":                      ; preds = %for.body.lr.ph.i
  store i64 %idx.ext8.i, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$153"
  store i64 %idx.neg.i, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$154"
  store i32 %mul, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$149"
  store i8* %tmp74, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$155"
  store i64 %sub.ptr.rhs.cast.i, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$156"
  br label %"main$2_call_recursive_function"

"main$2_call_recursive_function":                 ; preds = %"main$2_initialize_context"
  call void @"main$2"(i32 0, i8* %call65)
  br label %for.cond19.preheader.i.loopexit

for.cond19.preheader.i.loopexit:                  ; preds = %"main$2_call_recursive_function"
  br label %for.cond19.preheader.i

for.cond19.preheader.i:                           ; preds = %for.cond19.preheader.i.loopexit, %if.end77
  %cmp2167.i = icmp sgt i32 %mul, 0
  br i1 %cmp2167.i, label %for.body23.lr.ph.i, label %sw.epilog101

for.body23.lr.ph.i:                               ; preds = %for.cond19.preheader.i
  %sub.ptr.rhs.cast29.i = ptrtoint i8* %call65 to i64
  %tmp75 = mul i32 %tmp27, %tmp26
  %xtraiter = and i32 %tmp75, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body23.lr.ph.i.split, label %for.body23.i.prol

for.body23.i.prol:                                ; preds = %for.body23.lr.ph.i
  %tmp76 = load i8, i8* %call65, align 1, !tbaa !7
  %cmp25.i.prol = icmp ult i8 %tmp76, 8
  br i1 %cmp25.i.prol, label %if.then27.i.prol, label %if.end32.i.prol

if.then27.i.prol:                                 ; preds = %for.body23.i.prol
  store i8 0, i8* %tmp74, align 1, !tbaa !7
  br label %if.end32.i.prol

if.end32.i.prol:                                  ; preds = %if.then27.i.prol, %for.body23.i.prol
  %incdec.ptr33.i.prol = getelementptr inbounds i8, i8* %call65, i64 1
  br label %for.body23.lr.ph.i.split

for.body23.lr.ph.i.split:                         ; preds = %if.end32.i.prol, %for.body23.lr.ph.i
  %midp.169.i.unr = phi i8* [ %call65, %for.body23.lr.ph.i ], [ %incdec.ptr33.i.prol, %if.end32.i.prol ]
  %i.168.i.unr = phi i32 [ 0, %for.body23.lr.ph.i ], [ 1, %if.end32.i.prol ]
  %tmp77 = icmp eq i32 %tmp75, 1
  br i1 %tmp77, label %sw.epilog101.loopexit, label %for.body23.lr.ph.i.split.split

for.body23.lr.ph.i.split.split:                   ; preds = %for.body23.lr.ph.i.split
  br label %"main$1_initialize_context"

"main$1_initialize_context":                      ; preds = %for.body23.lr.ph.i.split.split
  store i32 %mul, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$149"
  store i8* %tmp74, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$155"
  store i64 %sub.ptr.rhs.cast29.i, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$157"
  br label %"main$1_call_recursive_function"

"main$1_call_recursive_function":                 ; preds = %"main$1_initialize_context"
  call void @"main$1"(i32 %i.168.i.unr, i8* %midp.169.i.unr)
  br label %sw.epilog101.loopexit.unr-lcssa

sw.bb80:                                          ; preds = %while.end
  %tmp78 = load i32, i32* %x_size, align 4, !tbaa !5
  %tmp79 = load i32, i32* %y_size, align 4, !tbaa !5
  %mul81 = mul i32 %tmp79, %tmp78
  %conv82 = sext i32 %mul81 to i64
  %mul83 = shl nsw i64 %conv82, 2
  %call84 = tail call noalias i8* @malloc(i64 %mul83) #6
  %call.i192 = tail call noalias i8* @malloc(i64 516) #6
  %add.ptr.i193 = getelementptr inbounds i8, i8* %call.i192, i64 258
  %conv1.i194 = sitofp i32 %bt.0.lcssa to float
  br label %"main$11_initialize_context"

"main$11_initialize_context":                     ; preds = %sw.bb80
  store i8* %add.ptr.i193, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$158"
  store float %conv1.i194, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$159"
  br label %"main$11_call_recursive_function"

"main$11_call_recursive_function":                ; preds = %"main$11_initialize_context"
  call void @"main$11"(i64 -256)
  br label %setup_brightness_lut.exit212

setup_brightness_lut.exit212:                     ; preds = %"main$11_call_recursive_function"
  %tmp80 = bitcast i8* %call84 to i32*
  %tobool85 = icmp eq i32 %principle.0.lcssa, 0
  br i1 %tobool85, label %if.else90, label %if.then86

if.then86:                                        ; preds = %setup_brightness_lut.exit212
  %tmp81 = load i8*, i8** %in, align 8, !tbaa !1
  %call87 = tail call i32 @susan_principle(i8* %tmp81, i32* %tmp80, i8* nonnull %add.ptr.i193, i32 1850, i32 %tmp78, i32 %tmp79)
  %tmp82 = load i32, i32* %tmp80, align 4, !tbaa !5
  %cmp49.i213 = icmp sgt i32 %mul81, 0
  br i1 %cmp49.i213, label %for.body.i224.preheader, label %sw.epilog101

for.body.i224.preheader:                          ; preds = %if.then86
  %exitcond57.i223304 = icmp eq i32 %mul81, 1
  br i1 %exitcond57.i223304, label %sw.epilog101, label %for.body.for.body_crit_edge.i227.preheader

for.body.for.body_crit_edge.i227.preheader:       ; preds = %for.body.i224.preheader
  %tmp83 = mul i32 %tmp79, %tmp78
  %tmp84 = add i32 %tmp83, -2
  %tmp85 = zext i32 %tmp84 to i64
  %tmp86 = add nuw nsw i64 %tmp85, 1
  %min.iters.check = icmp ult i64 %tmp86, 8
  br i1 %min.iters.check, label %for.body.for.body_crit_edge.i227.preheader435, label %min.iters.checked

min.iters.checked:                                ; preds = %for.body.for.body_crit_edge.i227.preheader
  %n.vec = and i64 %tmp86, 8589934584
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = or i64 %n.vec, 1
  %minmax.ident.splatinsert = insertelement <4 x i32> undef, i32 %tmp82, i32 0
  %minmax.ident.splat = shufflevector <4 x i32> %minmax.ident.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert371 = insertelement <4 x i32> undef, i32 %tmp82, i32 0
  %minmax.ident.splat372 = shufflevector <4 x i32> %minmax.ident.splatinsert371, <4 x i32> undef, <4 x i32> zeroinitializer
  br i1 %cmp.zero, label %for.body.for.body_crit_edge.i227.preheader435, label %vector.body.preheader

vector.body.preheader:                            ; preds = %min.iters.checked
  %tmp87 = mul i32 %tmp79, %tmp78
  %tmp88 = add i32 %tmp87, -2
  %tmp89 = zext i32 %tmp88 to i64
  %tmp90 = add nuw nsw i64 %tmp89, 1
  %tmp91 = and i64 %tmp90, 8589934584
  %tmp92 = add nsw i64 %tmp91, -8
  %tmp93 = lshr exact i64 %tmp92, 3
  %tmp94 = and i64 %tmp93, 1
  %lcmp.mod454 = icmp eq i64 %tmp94, 0
  br i1 %lcmp.mod454, label %vector.body.prol, label %vector.body.preheader.split

vector.body.prol:                                 ; preds = %vector.body.preheader
  %tmp95 = getelementptr inbounds i8, i8* %call84, i64 4
  %tmp96 = bitcast i8* %tmp95 to <4 x i32>*
  %wide.load.prol = load <4 x i32>, <4 x i32>* %tmp96, align 4, !tbaa !5
  %tmp97 = getelementptr i8, i8* %call84, i64 20
  %tmp98 = bitcast i8* %tmp97 to <4 x i32>*
  %wide.load363.prol = load <4 x i32>, <4 x i32>* %tmp98, align 4, !tbaa !5
  %tmp99 = icmp sgt <4 x i32> %wide.load.prol, %minmax.ident.splat372
  %tmp100 = icmp sgt <4 x i32> %wide.load363.prol, %minmax.ident.splat372
  %tmp101 = select <4 x i1> %tmp99, <4 x i32> %wide.load.prol, <4 x i32> %minmax.ident.splat372
  %tmp102 = select <4 x i1> %tmp100, <4 x i32> %wide.load363.prol, <4 x i32> %minmax.ident.splat372
  %tmp103 = icmp slt <4 x i32> %wide.load.prol, %minmax.ident.splat
  %tmp104 = icmp slt <4 x i32> %wide.load363.prol, %minmax.ident.splat
  %tmp105 = select <4 x i1> %tmp103, <4 x i32> %wide.load.prol, <4 x i32> %minmax.ident.splat
  %tmp106 = select <4 x i1> %tmp104, <4 x i32> %wide.load363.prol, <4 x i32> %minmax.ident.splat
  br label %vector.body.preheader.split

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %.lcssa446.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %tmp106, %vector.body.prol ]
  %.lcssa445.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %tmp105, %vector.body.prol ]
  %.lcssa444.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %tmp102, %vector.body.prol ]
  %.lcssa443.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %tmp101, %vector.body.prol ]
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 8, %vector.body.prol ]
  %vec.phi.unr = phi <4 x i32> [ %minmax.ident.splat, %vector.body.preheader ], [ %tmp105, %vector.body.prol ]
  %vec.phi360.unr = phi <4 x i32> [ %minmax.ident.splat, %vector.body.preheader ], [ %tmp106, %vector.body.prol ]
  %vec.phi361.unr = phi <4 x i32> [ %minmax.ident.splat372, %vector.body.preheader ], [ %tmp101, %vector.body.prol ]
  %vec.phi362.unr = phi <4 x i32> [ %minmax.ident.splat372, %vector.body.preheader ], [ %tmp102, %vector.body.prol ]
  %tmp107 = icmp eq i64 %tmp93, 0
  br i1 %tmp107, label %middle.block, label %vector.body.preheader.split.split

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %"main$10_initialize_context"

"main$10_initialize_context":                     ; preds = %vector.body.preheader.split.split
  store i64 %n.vec, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$160"
  store i32* %tmp80, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$161"
  br label %"main$10_call_recursive_function"

"main$10_call_recursive_function":                ; preds = %"main$10_initialize_context"
  call void @"main$10"(<4 x i32> %vec.phi362.unr, <4 x i32> %vec.phi360.unr, <4 x i32> %vec.phi361.unr, <4 x i32> %vec.phi.unr, i64 %index.unr)
  br label %"main$10_extract_return_values$0"

"main$10_extract_return_values$0":                ; preds = %"main$10_call_recursive_function"
  %tmp108 = getelementptr %9, %9* @"main$10_return_value_struct", i32 0, i32 0
  %tmp109 = load <4 x i32>, <4 x i32>* %tmp108
  %tmp110 = getelementptr %9, %9* @"main$10_return_value_struct", i32 0, i32 1
  %tmp111 = load <4 x i32>, <4 x i32>* %tmp110
  %tmp112 = getelementptr %9, %9* @"main$10_return_value_struct", i32 0, i32 2
  %tmp113 = load <4 x i32>, <4 x i32>* %tmp112
  %tmp114 = getelementptr %9, %9* @"main$10_return_value_struct", i32 0, i32 3
  %tmp115 = load <4 x i32>, <4 x i32>* %tmp114
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %"main$10_extract_return_values$0"
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.preheader.split
  %.lcssa446 = phi <4 x i32> [ %.lcssa446.unr, %vector.body.preheader.split ], [ %tmp115, %middle.block.unr-lcssa ]
  %.lcssa445 = phi <4 x i32> [ %.lcssa445.unr, %vector.body.preheader.split ], [ %tmp111, %middle.block.unr-lcssa ]
  %.lcssa444 = phi <4 x i32> [ %.lcssa444.unr, %vector.body.preheader.split ], [ %tmp113, %middle.block.unr-lcssa ]
  %.lcssa443 = phi <4 x i32> [ %.lcssa443.unr, %vector.body.preheader.split ], [ %tmp109, %middle.block.unr-lcssa ]
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
  %tmp116 = select i1 %rdx.minmax.cmp379.elt, i32 %rdx.minmax.select377.elt, i32 %rdx.shuf378.elt
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
  %tmp117 = select i1 %rdx.minmax.cmp369.elt, i32 %rdx.minmax.select367.elt, i32 %rdx.shuf368.elt
  %cmp.n = icmp eq i64 %tmp86, %n.vec
  br i1 %cmp.n, label %for.body15.i239.preheader, label %for.body.for.body_crit_edge.i227.preheader435

for.body.for.body_crit_edge.i227.preheader435:    ; preds = %middle.block, %min.iters.checked, %for.body.for.body_crit_edge.i227.preheader
  %indvars.iv.next55.i221307.ph = phi i64 [ 1, %min.iters.checked ], [ 1, %for.body.for.body_crit_edge.i227.preheader ], [ %ind.end, %middle.block ]
  %min_r.1.i220306.ph = phi i32 [ %tmp82, %min.iters.checked ], [ %tmp82, %for.body.for.body_crit_edge.i227.preheader ], [ %tmp117, %middle.block ]
  %.max_r.0.i218305.ph = phi i32 [ %tmp82, %min.iters.checked ], [ %tmp82, %for.body.for.body_crit_edge.i227.preheader ], [ %tmp116, %middle.block ]
  br label %"main$9_initialize_context"

"main$9_initialize_context":                      ; preds = %for.body.for.body_crit_edge.i227.preheader435
  store i32 %mul81, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$162"
  store i32* %tmp80, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$161"
  br label %"main$9_call_recursive_function"

"main$9_call_recursive_function":                 ; preds = %"main$9_initialize_context"
  call void @"main$9"(i32 %.max_r.0.i218305.ph, i32 %min_r.1.i220306.ph, i64 %indvars.iv.next55.i221307.ph)
  br label %"main$9_extract_return_values$0"

"main$9_extract_return_values$0":                 ; preds = %"main$9_call_recursive_function"
  %tmp118 = getelementptr %10, %10* @"main$9_return_value_struct", i32 0, i32 0
  %tmp119 = load i32, i32* %tmp118
  %tmp120 = getelementptr %10, %10* @"main$9_return_value_struct", i32 0, i32 1
  %tmp121 = load i32, i32* %tmp120
  br label %for.body15.i239.preheader.loopexit

for.body15.i239.preheader.loopexit:               ; preds = %"main$9_extract_return_values$0"
  br label %for.body15.i239.preheader

for.body15.i239.preheader:                        ; preds = %for.body15.i239.preheader.loopexit, %middle.block
  %min_r.1.i220.lcssa = phi i32 [ %tmp117, %middle.block ], [ %tmp121, %for.body15.i239.preheader.loopexit ]
  %.max_r.0.i218.lcssa = phi i32 [ %tmp116, %middle.block ], [ %tmp119, %for.body15.i239.preheader.loopexit ]
  %sub.i228 = sub nsw i32 %.max_r.0.i218.lcssa, %min_r.1.i220.lcssa
  %sub18.i231298 = sub nsw i32 %tmp82, %min_r.1.i220.lcssa
  %mul.i232299 = mul nsw i32 %sub18.i231298, 255
  %div.i233300 = sdiv i32 %mul.i232299, %sub.i228
  %conv.i234301 = trunc i32 %div.i233300 to i8
  store i8 %conv.i234301, i8* %tmp81, align 1, !tbaa !7
  br i1 %exitcond57.i223304, label %sw.epilog101, label %for.body15.for.body15_crit_edge.i242.preheader

for.body15.for.body15_crit_edge.i242.preheader:   ; preds = %for.body15.i239.preheader
  %tmp122 = mul i32 %tmp79, %tmp78
  %tmp123 = and i32 %tmp122, 1
  %lcmp.mod452 = icmp eq i32 %tmp123, 0
  br i1 %lcmp.mod452, label %for.body15.for.body15_crit_edge.i242.prol, label %for.body15.for.body15_crit_edge.i242.preheader.split

for.body15.for.body15_crit_edge.i242.prol:        ; preds = %for.body15.for.body15_crit_edge.i242.preheader
  %arrayidx17.phi.trans.insert.i240.prol = getelementptr inbounds i8, i8* %call84, i64 4
  %tmp124 = bitcast i8* %arrayidx17.phi.trans.insert.i240.prol to i32*
  %.pre58.i241.prol = load i32, i32* %tmp124, align 4, !tbaa !5
  %sub18.i231.prol = sub nsw i32 %.pre58.i241.prol, %min_r.1.i220.lcssa
  %mul.i232.prol = mul nsw i32 %sub18.i231.prol, 255
  %div.i233.prol = sdiv i32 %mul.i232.prol, %sub.i228
  %conv.i234.prol = trunc i32 %div.i233.prol to i8
  %arrayidx20.i235.prol = getelementptr inbounds i8, i8* %tmp81, i64 1
  store i8 %conv.i234.prol, i8* %arrayidx20.i235.prol, align 1, !tbaa !7
  br label %for.body15.for.body15_crit_edge.i242.preheader.split

for.body15.for.body15_crit_edge.i242.preheader.split: ; preds = %for.body15.for.body15_crit_edge.i242.prol, %for.body15.for.body15_crit_edge.i242.preheader
  %indvars.iv.next.i236303.unr = phi i64 [ 1, %for.body15.for.body15_crit_edge.i242.preheader ], [ 2, %for.body15.for.body15_crit_edge.i242.prol ]
  %tmp125 = icmp eq i32 %tmp122, 2
  br i1 %tmp125, label %sw.epilog101.loopexit434, label %for.body15.for.body15_crit_edge.i242.preheader.split.split

for.body15.for.body15_crit_edge.i242.preheader.split.split: ; preds = %for.body15.for.body15_crit_edge.i242.preheader.split
  br label %"main$8_initialize_context"

"main$8_initialize_context":                      ; preds = %for.body15.for.body15_crit_edge.i242.preheader.split.split
  store i32 %mul81, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$162"
  store i8* %tmp81, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$163"
  store i32 %sub.i228, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$164"
  store i32 %min_r.1.i220.lcssa, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$165"
  store i32* %tmp80, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$161"
  br label %"main$8_call_recursive_function"

"main$8_call_recursive_function":                 ; preds = %"main$8_initialize_context"
  call void @"main$8"(i64 %indvars.iv.next.i236303.unr)
  br label %sw.epilog101.loopexit434.unr-lcssa

if.else90:                                        ; preds = %setup_brightness_lut.exit212
  %tobool91 = icmp eq i32 %susan_quick.0.lcssa, 0
  %tmp126 = load i8*, i8** %in, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 0
  br i1 %tobool91, label %if.else94, label %if.then92

if.then92:                                        ; preds = %if.else90
  %call93 = call i32 @susan_corners_quick(i8* %tmp126, i32* %tmp80, i8* nonnull %add.ptr.i193, i32 1850, %struct.anon* %arraydecay, i32 %tmp78, i32 %tmp79)
  br label %if.end97

if.else94:                                        ; preds = %if.else90
  %call96 = call i32 @susan_corners(i8* %tmp126, i32* %tmp80, i8* nonnull %add.ptr.i193, i32 1850, %struct.anon* %arraydecay, i32 %tmp78, i32 %tmp79)
  br label %if.end97

if.end97:                                         ; preds = %if.else94, %if.then92
  %info56.i = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 0, i32 2
  %tmp127 = load i32, i32* %info56.i, align 8, !tbaa !8
  %cmp57.i = icmp eq i32 %tmp127, 7
  br i1 %cmp57.i, label %sw.epilog101, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.end97
  %cmp1.i = icmp eq i32 %drawing_mode.0.lcssa, 0
  %sub10.i = add nsw i32 %tmp78, -2
  %idx.ext11.i = sext i32 %sub10.i to i64
  br label %"main$7_initialize_context"

"main$7_initialize_context":                      ; preds = %while.body.lr.ph.i
  store i32 %tmp78, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$166"
  store i1 %cmp1.i, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$167"
  store i64 %idx.ext11.i, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$168"
  store i8* %tmp126, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$169"
  store [15000 x %struct.anon]* %corner_list, [15000 x %struct.anon]** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$170"
  br label %"main$7_call_recursive_function"

"main$7_call_recursive_function":                 ; preds = %"main$7_initialize_context"
  call void @"main$7"(i64 0)
  br label %sw.epilog101.loopexit433

sw.epilog101.loopexit.unr-lcssa:                  ; preds = %"main$1_call_recursive_function"
  br label %sw.epilog101.loopexit

sw.epilog101.loopexit:                            ; preds = %sw.epilog101.loopexit.unr-lcssa, %for.body23.lr.ph.i.split
  br label %sw.epilog101

sw.epilog101.loopexit431.unr-lcssa:               ; preds = %"main$3_call_recursive_function"
  br label %sw.epilog101.loopexit431

sw.epilog101.loopexit431:                         ; preds = %sw.epilog101.loopexit431.unr-lcssa, %for.body15.for.body15_crit_edge.i.preheader.split
  br label %sw.epilog101

sw.epilog101.loopexit433:                         ; preds = %"main$7_call_recursive_function"
  br label %sw.epilog101

sw.epilog101.loopexit434.unr-lcssa:               ; preds = %"main$8_call_recursive_function"
  br label %sw.epilog101.loopexit434

sw.epilog101.loopexit434:                         ; preds = %sw.epilog101.loopexit434.unr-lcssa, %for.body15.for.body15_crit_edge.i242.preheader.split
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %sw.epilog101.loopexit434, %sw.epilog101.loopexit433, %sw.epilog101.loopexit431, %sw.epilog101.loopexit, %if.end97, %for.body15.i239.preheader, %for.body.i224.preheader, %if.then86, %for.cond19.preheader.i, %for.cond.preheader.i, %for.body15.i.preheader, %for.body.i179.preheader, %if.end59, %setup_brightness_lut.exit, %while.end.sw.epilog101_crit_edge
  %tmp128 = phi i32 [ %.pre342, %while.end.sw.epilog101_crit_edge ], [ %tmp79, %for.body15.i239.preheader ], [ %tmp27, %for.body15.i.preheader ], [ %tmp79, %if.end97 ], [ %tmp79, %if.then86 ], [ %tmp27, %for.cond19.preheader.i ], [ %tmp27, %for.cond.preheader.i ], [ %tmp27, %if.end59 ], [ %tmp25, %setup_brightness_lut.exit ], [ %tmp27, %for.body.i179.preheader ], [ %tmp79, %for.body.i224.preheader ], [ %tmp27, %sw.epilog101.loopexit ], [ %tmp27, %sw.epilog101.loopexit431 ], [ %tmp79, %sw.epilog101.loopexit433 ], [ %tmp79, %sw.epilog101.loopexit434 ]
  %tmp129 = phi i32 [ %.pre341, %while.end.sw.epilog101_crit_edge ], [ %tmp78, %for.body15.i239.preheader ], [ %tmp26, %for.body15.i.preheader ], [ %tmp78, %if.end97 ], [ %tmp78, %if.then86 ], [ %tmp26, %for.cond19.preheader.i ], [ %tmp26, %for.cond.preheader.i ], [ %tmp26, %if.end59 ], [ %tmp24, %setup_brightness_lut.exit ], [ %tmp26, %for.body.i179.preheader ], [ %tmp78, %for.body.i224.preheader ], [ %tmp26, %sw.epilog101.loopexit ], [ %tmp26, %sw.epilog101.loopexit431 ], [ %tmp78, %sw.epilog101.loopexit433 ], [ %tmp78, %sw.epilog101.loopexit434 ]
  %tmp130 = phi i8* [ %.pre, %while.end.sw.epilog101_crit_edge ], [ %tmp81, %for.body15.i239.preheader ], [ %tmp29, %for.body15.i.preheader ], [ %tmp126, %if.end97 ], [ %tmp81, %if.then86 ], [ %tmp74, %for.cond19.preheader.i ], [ %tmp74, %for.cond.preheader.i ], [ %tmp29, %if.end59 ], [ %tmp23, %setup_brightness_lut.exit ], [ %tmp29, %for.body.i179.preheader ], [ %tmp81, %for.body.i224.preheader ], [ %tmp74, %sw.epilog101.loopexit ], [ %tmp29, %sw.epilog101.loopexit431 ], [ %tmp126, %sw.epilog101.loopexit433 ], [ %tmp81, %sw.epilog101.loopexit434 ]
  %arrayidx102 = getelementptr inbounds i8*, i8** %argv, i64 2
  %tmp131 = load i8*, i8** %arrayidx102, align 8, !tbaa !1
  %call103 = tail call i32 @put_image(i8* %tmp131, i8* %tmp130, i32 %tmp129, i32 %tmp128)
  call void @llvm.lifetime.end.p0i8(i64 360000, i8* %tmp3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %tmp2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %tmp1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %tmp) #6
  ret i32 0
}

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) #1

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #6

declare float @sqrtf(float)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

define void @"getint$1"(i32 %arg) {
"getint$1_exiting$1":
  switch i32 %arg, label %"getint$1_exiting$0" [
    i32 35, label %if.end5.thread
    i32 -1, label %"getint$1_return_from_recursive_function$1"
  ]

if.end5.thread:                                   ; preds = %"getint$1_exiting$1"
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$0"
  %tmp1 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$1"
  %call1 = call i8* @fgets(i8* %tmp1, i32 9000, %struct._IO_FILE* %tmp)
  br label %"getint$1_latch$0"

"getint$1_exiting$0":                             ; preds = %"getint$1_exiting$1"
  %c.0.off = add i32 %arg, -48
  %tmp2 = icmp ult i32 %c.0.off, 10
  br i1 %tmp2, label %"getint$1_return_from_recursive_function$0", label %"getint$1_latch$0"

"getint$1_latch$0":                               ; preds = %"getint$1_exiting$0", %if.end5.thread
  %tmp3 = load %struct._IO_FILE*, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$0"
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %tmp3)
  br label %"getint$1_increment_depth_counter"

"getint$1_increment_depth_counter":               ; preds = %"getint$1_latch$0"
  br label %"getint$1_recursively_call_function"

"getint$1_recursively_call_function":             ; preds = %"getint$1_increment_depth_counter"
  call void @"getint$1"(i32 %call10)
  ret void

"getint$1_return_from_recursive_function$0":      ; preds = %"getint$1_exiting$0"
  %tmp4 = getelementptr %0, %0* @"getint$1_return_value_struct", i32 0, i32 0
  store i32 %arg, i32* %tmp4
  %tmp5 = getelementptr %0, %0* @"getint$1_return_value_struct", i32 0, i32 1
  store i8 1, i8* %tmp5
  ret void

"getint$1_return_from_recursive_function$1":      ; preds = %"getint$1_exiting$1"
  %tmp6 = getelementptr %0, %0* @"getint$1_return_value_struct", i32 0, i32 1
  store i8 0, i8* %tmp6
  ret void
}

define void @"getint$0"(i32 %arg, i32 %arg1) {
"getint$0_latch$0":
  %mul = mul nsw i32 %arg, 10
  %sub = add nsw i32 %arg1, -48
  %add = add nsw i32 %sub, %mul
  %tmp = load %struct._IO_FILE*, %struct._IO_FILE** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$0"
  %call13 = call i32 @_IO_getc(%struct._IO_FILE* %tmp)
  %cmp14 = icmp eq i32 %call13, -1
  %call13.off = add i32 %call13, -48
  %tmp2 = icmp ugt i32 %call13.off, 9
  %or.cond = or i1 %cmp14, %tmp2
  br i1 %or.cond, label %"getint$0_return_from_recursive_function$0", label %"getint$0_increment_depth_counter"

"getint$0_increment_depth_counter":               ; preds = %"getint$0_latch$0"
  br label %"getint$0_recursively_call_function"

"getint$0_recursively_call_function":             ; preds = %"getint$0_increment_depth_counter"
  call void @"getint$0"(i32 %add, i32 %call13)
  ret void

"getint$0_return_from_recursive_function$0":      ; preds = %"getint$0_latch$0"
  %tmp3 = getelementptr %1, %1* @"getint$0_return_value_struct", i32 0, i32 0
  store i32 %add, i32* %tmp3
  ret void
}

define void @"int_to_uchar$2"(<4 x i32> %arg, <4 x i32> %arg1, <4 x i32> %arg2, <4 x i32> %arg3, i64 %arg4) {
"int_to_uchar$2_latch$0":
  %offset.idx = or i64 %arg4, 1
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$3"
  %tmp5 = getelementptr inbounds i32, i32* %tmp, i64 %offset.idx
  %tmp6 = bitcast i32* %tmp5 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %tmp6, align 4, !tbaa !5
  %tmp7 = getelementptr i32, i32* %tmp5, i64 4
  %tmp8 = bitcast i32* %tmp7 to <4 x i32>*
  %wide.load75 = load <4 x i32>, <4 x i32>* %tmp8, align 4, !tbaa !5
  %tmp9 = icmp sgt <4 x i32> %wide.load, %arg1
  %tmp10 = icmp sgt <4 x i32> %wide.load75, %arg
  %tmp11 = select <4 x i1> %tmp9, <4 x i32> %wide.load, <4 x i32> %arg1
  %tmp12 = select <4 x i1> %tmp10, <4 x i32> %wide.load75, <4 x i32> %arg
  %tmp13 = icmp slt <4 x i32> %wide.load, %arg2
  %tmp14 = icmp slt <4 x i32> %wide.load75, %arg3
  %tmp15 = select <4 x i1> %tmp13, <4 x i32> %wide.load, <4 x i32> %arg2
  %tmp16 = select <4 x i1> %tmp14, <4 x i32> %wide.load75, <4 x i32> %arg3
  %index.next = add i64 %arg4, 8
  %offset.idx.1 = or i64 %index.next, 1
  %tmp17 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$3"
  %tmp18 = getelementptr inbounds i32, i32* %tmp17, i64 %offset.idx.1
  %tmp19 = bitcast i32* %tmp18 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %tmp19, align 4, !tbaa !5
  %tmp20 = getelementptr i32, i32* %tmp18, i64 4
  %tmp21 = bitcast i32* %tmp20 to <4 x i32>*
  %wide.load75.1 = load <4 x i32>, <4 x i32>* %tmp21, align 4, !tbaa !5
  %tmp22 = icmp sgt <4 x i32> %wide.load.1, %tmp11
  %tmp23 = icmp sgt <4 x i32> %wide.load75.1, %tmp12
  %tmp24 = select <4 x i1> %tmp22, <4 x i32> %wide.load.1, <4 x i32> %tmp11
  %tmp25 = select <4 x i1> %tmp23, <4 x i32> %wide.load75.1, <4 x i32> %tmp12
  %tmp26 = icmp slt <4 x i32> %wide.load.1, %tmp15
  %tmp27 = icmp slt <4 x i32> %wide.load75.1, %tmp16
  %tmp28 = select <4 x i1> %tmp26, <4 x i32> %wide.load.1, <4 x i32> %tmp15
  %tmp29 = select <4 x i1> %tmp27, <4 x i32> %wide.load75.1, <4 x i32> %tmp16
  %index.next.1 = add i64 %arg4, 16
  %tmp30 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$2"
  %tmp31 = icmp eq i64 %index.next.1, %tmp30
  br i1 %tmp31, label %"int_to_uchar$2_return_from_recursive_function$0", label %"int_to_uchar$2_increment_depth_counter", !llvm.loop !10

"int_to_uchar$2_increment_depth_counter":         ; preds = %"int_to_uchar$2_latch$0"
  br label %"int_to_uchar$2_recursively_call_function"

"int_to_uchar$2_recursively_call_function":       ; preds = %"int_to_uchar$2_increment_depth_counter"
  call void @"int_to_uchar$2"(<4 x i32> %tmp25, <4 x i32> %tmp24, <4 x i32> %tmp28, <4 x i32> %tmp29, i64 %index.next.1)
  ret void

"int_to_uchar$2_return_from_recursive_function$0": ; preds = %"int_to_uchar$2_latch$0"
  %tmp32 = getelementptr %2, %2* @"int_to_uchar$2_return_value_struct", i32 0, i32 0
  store <4 x i32> %tmp24, <4 x i32>* %tmp32
  %tmp33 = getelementptr %2, %2* @"int_to_uchar$2_return_value_struct", i32 0, i32 1
  store <4 x i32> %tmp25, <4 x i32>* %tmp33
  %tmp34 = getelementptr %2, %2* @"int_to_uchar$2_return_value_struct", i32 0, i32 2
  store <4 x i32> %tmp28, <4 x i32>* %tmp34
  %tmp35 = getelementptr %2, %2* @"int_to_uchar$2_return_value_struct", i32 0, i32 3
  store <4 x i32> %tmp29, <4 x i32>* %tmp35
  ret void
}

define void @"int_to_uchar$1"(i32 %arg, i32 %arg1, i64 %arg2) {
"int_to_uchar$1_latch$0":
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$3"
  %arrayidx2.phi.trans.insert = getelementptr inbounds i32, i32* %tmp, i64 %arg2
  %.pre = load i32, i32* %arrayidx2.phi.trans.insert, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %.pre, %arg
  %.max_r.0 = select i1 %cmp3, i32 %.pre, i32 %arg
  %cmp8 = icmp slt i32 %.pre, %arg1
  %min_r.1 = select i1 %cmp8, i32 %.pre, i32 %arg1
  %indvars.iv.next55 = add nuw nsw i64 %arg2, 1
  %lftr.wideiv56 = trunc i64 %indvars.iv.next55 to i32
  %tmp3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$4"
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %tmp3
  br i1 %exitcond57, label %"int_to_uchar$1_return_from_recursive_function$0", label %"int_to_uchar$1_increment_depth_counter", !llvm.loop !13

"int_to_uchar$1_increment_depth_counter":         ; preds = %"int_to_uchar$1_latch$0"
  br label %"int_to_uchar$1_recursively_call_function"

"int_to_uchar$1_recursively_call_function":       ; preds = %"int_to_uchar$1_increment_depth_counter"
  call void @"int_to_uchar$1"(i32 %.max_r.0, i32 %min_r.1, i64 %indvars.iv.next55)
  ret void

"int_to_uchar$1_return_from_recursive_function$0": ; preds = %"int_to_uchar$1_latch$0"
  %tmp4 = getelementptr %3, %3* @"int_to_uchar$1_return_value_struct", i32 0, i32 0
  store i32 %.max_r.0, i32* %tmp4
  %tmp5 = getelementptr %3, %3* @"int_to_uchar$1_return_value_struct", i32 0, i32 1
  store i32 %min_r.1, i32* %tmp5
  ret void
}

define void @"int_to_uchar$0"(i64 %arg) {
"int_to_uchar$0_latch$0":
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$3"
  %arrayidx17.phi.trans.insert = getelementptr inbounds i32, i32* %tmp, i64 %arg
  %.pre58 = load i32, i32* %arrayidx17.phi.trans.insert, align 4, !tbaa !5
  %tmp1 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$7"
  %sub18 = sub nsw i32 %.pre58, %tmp1
  %mul = mul nsw i32 %sub18, 255
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$6"
  %div = sdiv i32 %mul, %tmp2
  %conv = trunc i32 %div to i8
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$5"
  %arrayidx20 = getelementptr inbounds i8, i8* %tmp3, i64 %arg
  store i8 %conv, i8* %arrayidx20, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %tmp4 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$3"
  %arrayidx17.phi.trans.insert.1 = getelementptr inbounds i32, i32* %tmp4, i64 %indvars.iv.next
  %.pre58.1 = load i32, i32* %arrayidx17.phi.trans.insert.1, align 4, !tbaa !5
  %tmp5 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$7"
  %sub18.1 = sub nsw i32 %.pre58.1, %tmp5
  %mul.1 = mul nsw i32 %sub18.1, 255
  %tmp6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$6"
  %div.1 = sdiv i32 %mul.1, %tmp6
  %conv.1 = trunc i32 %div.1 to i8
  %tmp7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$5"
  %arrayidx20.1 = getelementptr inbounds i8, i8* %tmp7, i64 %indvars.iv.next
  store i8 %conv.1, i8* %arrayidx20.1, align 1, !tbaa !7
  %indvars.iv.next.1 = add nsw i64 %arg, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$4"
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %tmp8
  br i1 %exitcond.1, label %"int_to_uchar$0_return_from_recursive_function$0", label %"int_to_uchar$0_increment_depth_counter"

"int_to_uchar$0_increment_depth_counter":         ; preds = %"int_to_uchar$0_latch$0"
  br label %"int_to_uchar$0_recursively_call_function"

"int_to_uchar$0_recursively_call_function":       ; preds = %"int_to_uchar$0_increment_depth_counter"
  call void @"int_to_uchar$0"(i64 %indvars.iv.next.1)
  ret void

"int_to_uchar$0_return_from_recursive_function$0": ; preds = %"int_to_uchar$0_latch$0"
  ret void
}

define void @"setup_brightness_lut$0"(i64 %arg) {
"setup_brightness_lut$0_latch$0":
  %tmp = trunc i64 %arg to i32
  %conv = sitofp i32 %tmp to float
  %tmp1 = load float, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$10"
  %div = fdiv float %conv, %tmp1
  %mul = fmul float %div, %div
  %mul4 = fmul float %mul, %mul
  %mul5 = fmul float %mul, %mul4
  %tmp2 = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$8"
  %temp.0 = select i1 %tmp2, float %mul5, float %mul
  %sub = fsub float -0.000000e+00, %temp.0
  %conv6 = fpext float %sub to double
  %call7 = tail call double @exp(double %conv6) #6
  %mul8 = fmul double %call7, 1.000000e+02
  %conv9 = fptrunc double %mul8 to float
  %conv10 = fptoui float %conv9 to i8
  %tmp3 = load i8**, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$9"
  %tmp4 = load i8*, i8** %tmp3, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %tmp4, i64 %arg
  store i8 %conv10, i8* %add.ptr11, align 1, !tbaa !7
  %indvars.iv.next = add nsw i64 %arg, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond, label %"setup_brightness_lut$0_return_from_recursive_function$0", label %"setup_brightness_lut$0_increment_depth_counter"

"setup_brightness_lut$0_increment_depth_counter": ; preds = %"setup_brightness_lut$0_latch$0"
  br label %"setup_brightness_lut$0_recursively_call_function"

"setup_brightness_lut$0_recursively_call_function": ; preds = %"setup_brightness_lut$0_increment_depth_counter"
  call void @"setup_brightness_lut$0"(i64 %indvars.iv.next)
  ret void

"setup_brightness_lut$0_return_from_recursive_function$0": ; preds = %"setup_brightness_lut$0_latch$0"
  ret void
}

define void @"susan_principle$0"(i64 %arg) {
"susan_principle$0_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$21"
  br i1 %tmp, label %for.body7.lr.ph, label %"susan_principle$0_latch$0"

for.body7.lr.ph:                                  ; preds = %"susan_principle$0_header"
  %tmp1 = add nsw i64 %arg, -3
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$18"
  %tmp3 = mul nsw i64 %tmp1, %tmp2
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$17"
  %add.ptr = getelementptr inbounds i8, i8* %tmp4, i64 %tmp3
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$18"
  %tmp6 = mul nsw i64 %arg, %tmp5
  %tmp7 = trunc i64 %tmp6 to i32
  br label %"susan_principle$0$0_initialize_context"

"susan_principle$0$0_initialize_context":         ; preds = %for.body7.lr.ph
  store i32 %tmp7, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$171"
  store i8* %add.ptr, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$172"
  br label %"susan_principle$0$0_call_recursive_function"

"susan_principle$0$0_call_recursive_function":    ; preds = %"susan_principle$0$0_initialize_context"
  call void @"susan_principle$0$0"(i32 3, i64 3)
  br label %for.inc285.loopexit

for.inc285.loopexit:                              ; preds = %"susan_principle$0$0_call_recursive_function"
  br label %"susan_principle$0_latch$0"

"susan_principle$0_latch$0":                      ; preds = %for.inc285.loopexit, %"susan_principle$0_header"
  %indvars.iv.next435 = add nuw nsw i64 %arg, 1
  %lftr.wideiv439 = trunc i64 %indvars.iv.next435 to i32
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$11"
  %exitcond440 = icmp eq i32 %lftr.wideiv439, %tmp8
  br i1 %exitcond440, label %"susan_principle$0_return_from_recursive_function$0", label %"susan_principle$0_increment_depth_counter"

"susan_principle$0_increment_depth_counter":      ; preds = %"susan_principle$0_latch$0"
  br label %"susan_principle$0_recursively_call_function"

"susan_principle$0_recursively_call_function":    ; preds = %"susan_principle$0_increment_depth_counter"
  call void @"susan_principle$0"(i64 %indvars.iv.next435)
  ret void

"susan_principle$0_return_from_recursive_function$0": ; preds = %"susan_principle$0_latch$0"
  ret void
}

define void @"susan_principle_small$0"(i64 %arg) {
"susan_principle_small$0_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$29"
  br i1 %tmp, label %for.body7.lr.ph, label %"susan_principle_small$0_latch$0"

for.body7.lr.ph:                                  ; preds = %"susan_principle_small$0_header"
  %tmp1 = add nsw i64 %arg, -1
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$28"
  %tmp3 = mul nsw i64 %tmp1, %tmp2
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$27"
  %add.ptr = getelementptr inbounds i8, i8* %tmp4, i64 %tmp3
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$28"
  %tmp6 = mul nsw i64 %arg, %tmp5
  %tmp7 = trunc i64 %tmp6 to i32
  br label %"susan_principle_small$0$0_initialize_context"

"susan_principle_small$0$0_initialize_context":   ; preds = %for.body7.lr.ph
  store i32 %tmp7, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$173"
  store i8* %add.ptr, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$174"
  br label %"susan_principle_small$0$0_call_recursive_function"

"susan_principle_small$0$0_call_recursive_function": ; preds = %"susan_principle_small$0$0_initialize_context"
  call void @"susan_principle_small$0$0"(i32 1, i64 1)
  br label %for.inc81.loopexit

for.inc81.loopexit:                               ; preds = %"susan_principle_small$0$0_call_recursive_function"
  br label %"susan_principle_small$0_latch$0"

"susan_principle_small$0_latch$0":                ; preds = %for.inc81.loopexit, %"susan_principle_small$0_header"
  %indvars.iv.next139 = add nuw nsw i64 %arg, 1
  %lftr.wideiv143 = trunc i64 %indvars.iv.next139 to i32
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$22"
  %exitcond144 = icmp eq i32 %lftr.wideiv143, %tmp8
  br i1 %exitcond144, label %"susan_principle_small$0_return_from_recursive_function$0", label %"susan_principle_small$0_increment_depth_counter"

"susan_principle_small$0_increment_depth_counter": ; preds = %"susan_principle_small$0_latch$0"
  br label %"susan_principle_small$0_recursively_call_function"

"susan_principle_small$0_recursively_call_function": ; preds = %"susan_principle_small$0_increment_depth_counter"
  call void @"susan_principle_small$0"(i64 %indvars.iv.next139)
  ret void

"susan_principle_small$0_return_from_recursive_function$0": ; preds = %"susan_principle_small$0_latch$0"
  ret void
}

define void @"enlarge$2"(i32 %arg) {
"enlarge$2_latch$0":
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36"
  %add = add nsw i32 %arg, %tmp
  %tmp1 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$34"
  %tmp2 = load i32, i32* %tmp1, align 4, !tbaa !5
  %tmp3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$35"
  %add1 = add nsw i32 %tmp2, %tmp3
  %mul2 = mul nsw i32 %add1, %add
  %idx.ext = sext i32 %mul2 to i64
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  %add.ptr = getelementptr inbounds i8, i8* %tmp4, i64 %idx.ext
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$32"
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %tmp5
  %tmp6 = load i8**, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$31"
  %tmp7 = load i8*, i8** %tmp6, align 8, !tbaa !1
  %mul5 = mul nsw i32 %tmp2, %arg
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %tmp7, i64 %idx.ext6
  %conv = sext i32 %tmp2 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr4, i8* align 1 %add.ptr7, i64 %conv, i1 false)
  %inc = add nuw nsw i32 %arg, 1
  %tmp8 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$30"
  %tmp9 = load i32, i32* %tmp8, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc, %tmp9
  br i1 %cmp, label %"enlarge$2_increment_depth_counter", label %"enlarge$2_return_from_recursive_function$0"

"enlarge$2_increment_depth_counter":              ; preds = %"enlarge$2_latch$0"
  br label %"enlarge$2_recursively_call_function"

"enlarge$2_recursively_call_function":            ; preds = %"enlarge$2_increment_depth_counter"
  call void @"enlarge$2"(i32 %inc)
  ret void

"enlarge$2_return_from_recursive_function$0":     ; preds = %"enlarge$2_latch$0"
  ret void
}

define void @"enlarge$1"(i32 %arg, i32 %arg1) {
"enlarge$1_latch$0":
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$39"
  %sub12 = add i32 %tmp, %arg1
  %tmp2 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$34"
  %tmp3 = load i32, i32* %tmp2, align 4, !tbaa !5
  %tmp4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$38"
  %add14 = add nsw i32 %tmp3, %tmp4
  %mul15 = mul nsw i32 %add14, %sub12
  %idx.ext16 = sext i32 %mul15 to i64
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  %add.ptr17 = getelementptr inbounds i8, i8* %tmp5, i64 %idx.ext16
  %tmp6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$37"
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr17, i64 %tmp6
  %tmp7 = load i8**, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$31"
  %tmp8 = load i8*, i8** %tmp7, align 8, !tbaa !1
  %mul20 = mul nsw i32 %tmp3, %arg
  %idx.ext21 = sext i32 %mul20 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %tmp8, i64 %idx.ext21
  %conv23 = sext i32 %tmp3 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr19, i8* align 1 %add.ptr22, i64 %conv23, i1 false)
  %tmp9 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$30"
  %tmp10 = load i32, i32* %tmp9, align 4, !tbaa !5
  %tmp11 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36"
  %add24 = add i32 %arg, %tmp11
  %add25 = add i32 %add24, %tmp10
  %tmp12 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$34"
  %tmp13 = load i32, i32* %tmp12, align 4, !tbaa !5
  %tmp14 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$38"
  %add27 = add nsw i32 %tmp13, %tmp14
  %mul28 = mul nsw i32 %add25, %add27
  %idx.ext29 = sext i32 %mul28 to i64
  %tmp15 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  %add.ptr30 = getelementptr inbounds i8, i8* %tmp15, i64 %idx.ext29
  %tmp16 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$37"
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr30, i64 %tmp16
  %tmp17 = load i8**, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$31"
  %tmp18 = load i8*, i8** %tmp17, align 8, !tbaa !1
  %sub33 = add nsw i32 %arg1, -1
  %sub34 = add i32 %sub33, %tmp10
  %mul35 = mul nsw i32 %sub34, %tmp13
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %tmp18, i64 %idx.ext36
  %conv38 = sext i32 %tmp13 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr32, i8* align 1 %add.ptr37, i64 %conv38, i1 false)
  %inc40 = add nuw nsw i32 %arg, 1
  %i.1.neg = xor i32 %arg, -1
  %tmp19 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36"
  %exitcond176 = icmp eq i32 %inc40, %tmp19
  br i1 %exitcond176, label %"enlarge$1_return_from_recursive_function$0", label %"enlarge$1_increment_depth_counter"

"enlarge$1_increment_depth_counter":              ; preds = %"enlarge$1_latch$0"
  br label %"enlarge$1_recursively_call_function"

"enlarge$1_recursively_call_function":            ; preds = %"enlarge$1_increment_depth_counter"
  call void @"enlarge$1"(i32 %inc40, i32 %i.1.neg)
  ret void

"enlarge$1_return_from_recursive_function$0":     ; preds = %"enlarge$1_latch$0"
  ret void
}

define void @"enlarge$0"(i32 %arg, i32 %arg1, i32 %arg2) {
"enlarge$0_header":
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$40"
  %add48164 = add nsw i32 %arg2, %tmp
  %cmp49165 = icmp sgt i32 %add48164, 0
  br i1 %cmp49165, label %for.body51.lr.ph, label %"enlarge$0_latch$0"

for.body51.lr.ph:                                 ; preds = %"enlarge$0_header"
  %sub61 = add nsw i32 %arg1, -1
  br label %"enlarge$0$0_initialize_context"

"enlarge$0$0_initialize_context":                 ; preds = %for.body51.lr.ph
  store i32 %sub61, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$175"
  store i32 %arg, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$176"
  br label %"enlarge$0$0_call_recursive_function"

"enlarge$0$0_call_recursive_function":            ; preds = %"enlarge$0$0_initialize_context"
  call void @"enlarge$0$0"(i32 0)
  br label %"enlarge$0$0_extract_return_values$0"

"enlarge$0$0_extract_return_values$0":            ; preds = %"enlarge$0$0_call_recursive_function"
  %tmp3 = getelementptr %11, %11* @"enlarge$0$0_return_value_struct", i32 0, i32 0
  %tmp4 = load i32, i32* %tmp3
  br label %for.inc85.loopexit

for.inc85.loopexit:                               ; preds = %"enlarge$0$0_extract_return_values$0"
  br label %"enlarge$0_latch$0"

"enlarge$0_latch$0":                              ; preds = %for.inc85.loopexit, %"enlarge$0_header"
  %tmp5 = phi i32 [ %arg2, %"enlarge$0_header" ], [ %tmp4, %for.inc85.loopexit ]
  %inc86 = add nuw nsw i32 %arg, 1
  %i.2.neg = xor i32 %arg, -1
  %tmp6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36"
  %exitcond = icmp eq i32 %inc86, %tmp6
  br i1 %exitcond, label %"enlarge$0_return_from_recursive_function$0", label %"enlarge$0_increment_depth_counter"

"enlarge$0_increment_depth_counter":              ; preds = %"enlarge$0_latch$0"
  br label %"enlarge$0_recursively_call_function"

"enlarge$0_recursively_call_function":            ; preds = %"enlarge$0_increment_depth_counter"
  call void @"enlarge$0"(i32 %inc86, i32 %i.2.neg, i32 %tmp5)
  ret void

"enlarge$0_return_from_recursive_function$0":     ; preds = %"enlarge$0_latch$0"
  ret void
}

define void @"susan_smoothing$1"(i32 %arg, i8* %arg1) {
"susan_smoothing$1_header":
  %mul56 = mul nsw i32 %arg, %arg
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$43"
  br label %"susan_smoothing$1$0_initialize_context"

"susan_smoothing$1$0_initialize_context":         ; preds = %"susan_smoothing$1_header"
  store i32 %mul56, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$177"
  br label %"susan_smoothing$1$0_call_recursive_function"

"susan_smoothing$1$0_call_recursive_function":    ; preds = %"susan_smoothing$1$0_initialize_context"
  call void @"susan_smoothing$1$0"(i32 %tmp, i8* %arg1)
  br label %"susan_smoothing$1$0_extract_return_values$0"

"susan_smoothing$1$0_extract_return_values$0":    ; preds = %"susan_smoothing$1$0_call_recursive_function"
  %tmp2 = getelementptr %12, %12* @"susan_smoothing$1$0_return_value_struct", i32 0, i32 0
  %tmp3 = load i8*, i8** %tmp2
  br label %"susan_smoothing$1_latch$0"

"susan_smoothing$1_latch$0":                      ; preds = %"susan_smoothing$1$0_extract_return_values$0"
  %inc66 = add nsw i32 %arg, 1
  %tmp4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  %cmp49 = icmp slt i32 %arg, %tmp4
  br i1 %cmp49, label %"susan_smoothing$1_increment_depth_counter", label %"susan_smoothing$1_return_from_recursive_function$0"

"susan_smoothing$1_increment_depth_counter":      ; preds = %"susan_smoothing$1_latch$0"
  br label %"susan_smoothing$1_recursively_call_function"

"susan_smoothing$1_recursively_call_function":    ; preds = %"susan_smoothing$1_increment_depth_counter"
  call void @"susan_smoothing$1"(i32 %inc66, i8* %tmp3)
  ret void

"susan_smoothing$1_return_from_recursive_function$0": ; preds = %"susan_smoothing$1_latch$0"
  ret void
}

define void @"susan_smoothing$0"(i32 %arg, i8* %arg1, i32 %arg2) {
"susan_smoothing$0_header":
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$52"
  %tmp3 = load i32, i32* %tmp, align 4, !tbaa !5
  %tmp4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  %sub74456 = sub nsw i32 %tmp3, %tmp4
  %tmp5 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  %cmp75457 = icmp slt i32 %tmp5, %sub74456
  br i1 %cmp75457, label %for.body77.lr.ph, label %"susan_smoothing$0_latch$0"

for.body77.lr.ph:                                 ; preds = %"susan_smoothing$0_header"
  %tmp6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  %sub78 = sub nsw i32 %arg, %tmp6
  %tmp7 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$50"
  br label %"susan_smoothing$0$0_initialize_context"

"susan_smoothing$0$0_initialize_context":         ; preds = %for.body77.lr.ph
  store i32 %sub78, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$178"
  store i32 %arg, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$179"
  br label %"susan_smoothing$0$0_call_recursive_function"

"susan_smoothing$0$0_call_recursive_function":    ; preds = %"susan_smoothing$0$0_initialize_context"
  call void @"susan_smoothing$0$0"(i8* %arg1, i32 %tmp3, i64 %tmp7)
  br label %"susan_smoothing$0$0_extract_return_values$0"

"susan_smoothing$0$0_extract_return_values$0":    ; preds = %"susan_smoothing$0$0_call_recursive_function"
  %tmp8 = getelementptr %13, %13* @"susan_smoothing$0$0_return_value_struct", i32 0, i32 0
  %tmp9 = load i8*, i8** %tmp8
  br label %for.inc135.loopexit

for.inc135.loopexit:                              ; preds = %"susan_smoothing$0$0_extract_return_values$0"
  %tmp10 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$44"
  %.pre489 = load i32, i32* %tmp10, align 4, !tbaa !5
  br label %"susan_smoothing$0_latch$0"

"susan_smoothing$0_latch$0":                      ; preds = %for.inc135.loopexit, %"susan_smoothing$0_header"
  %tmp11 = phi i32 [ %arg2, %"susan_smoothing$0_header" ], [ %.pre489, %for.inc135.loopexit ]
  %out.1.lcssa = phi i8* [ %arg1, %"susan_smoothing$0_header" ], [ %tmp9, %for.inc135.loopexit ]
  %inc136 = add nsw i32 %arg, 1
  %tmp12 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  %sub69 = sub nsw i32 %tmp11, %tmp12
  %cmp70 = icmp slt i32 %inc136, %sub69
  br i1 %cmp70, label %"susan_smoothing$0_increment_depth_counter", label %"susan_smoothing$0_return_from_recursive_function$0"

"susan_smoothing$0_increment_depth_counter":      ; preds = %"susan_smoothing$0_latch$0"
  br label %"susan_smoothing$0_recursively_call_function"

"susan_smoothing$0_recursively_call_function":    ; preds = %"susan_smoothing$0_increment_depth_counter"
  call void @"susan_smoothing$0"(i32 %inc136, i8* %out.1.lcssa, i32 %tmp11)
  ret void

"susan_smoothing$0_return_from_recursive_function$0": ; preds = %"susan_smoothing$0_latch$0"
  ret void
}

define void @"susan_smoothing$2"(i32 %arg, i8* %arg1, i32 %arg2, i32 %arg3) {
"susan_smoothing$2_header":
  %sub145474 = add nsw i32 %arg2, -1
  %cmp146475 = icmp sgt i32 %sub145474, 1
  br i1 %cmp146475, label %for.body148.lr.ph, label %"susan_smoothing$2_latch$0"

for.body148.lr.ph:                                ; preds = %"susan_smoothing$2_header"
  %sub149 = add nsw i32 %arg, -1
  br label %"susan_smoothing$2$0_initialize_context"

"susan_smoothing$2$0_initialize_context":         ; preds = %for.body148.lr.ph
  store i32 %arg, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$180"
  store i32 %sub149, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$181"
  br label %"susan_smoothing$2$0_call_recursive_function"

"susan_smoothing$2$0_call_recursive_function":    ; preds = %"susan_smoothing$2$0_initialize_context"
  call void @"susan_smoothing$2$0"(i8* %arg1, i32 %arg2, i64 1)
  br label %"susan_smoothing$2$0_extract_return_values$0"

"susan_smoothing$2$0_extract_return_values$0":    ; preds = %"susan_smoothing$2$0_call_recursive_function"
  %tmp = getelementptr %14, %14* @"susan_smoothing$2$0_return_value_struct", i32 0, i32 0
  %tmp4 = load i8*, i8** %tmp
  %tmp5 = getelementptr %14, %14* @"susan_smoothing$2$0_return_value_struct", i32 0, i32 1
  %tmp6 = load i32, i32* %tmp5
  br label %for.inc263.loopexit

for.inc263.loopexit:                              ; preds = %"susan_smoothing$2$0_extract_return_values$0"
  %tmp7 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$44"
  %.pre488 = load i32, i32* %tmp7, align 4, !tbaa !5
  br label %"susan_smoothing$2_latch$0"

"susan_smoothing$2_latch$0":                      ; preds = %for.inc263.loopexit, %"susan_smoothing$2_header"
  %tmp8 = phi i32 [ %arg3, %"susan_smoothing$2_header" ], [ %.pre488, %for.inc263.loopexit ]
  %tmp9 = phi i32 [ %arg2, %"susan_smoothing$2_header" ], [ %tmp6, %for.inc263.loopexit ]
  %out.4.lcssa = phi i8* [ %arg1, %"susan_smoothing$2_header" ], [ %tmp4, %for.inc263.loopexit ]
  %inc264 = add nuw nsw i32 %arg, 1
  %sub140 = add nsw i32 %tmp8, -1
  %cmp141 = icmp slt i32 %inc264, %sub140
  br i1 %cmp141, label %"susan_smoothing$2_increment_depth_counter", label %"susan_smoothing$2_return_from_recursive_function$0"

"susan_smoothing$2_increment_depth_counter":      ; preds = %"susan_smoothing$2_latch$0"
  br label %"susan_smoothing$2_recursively_call_function"

"susan_smoothing$2_recursively_call_function":    ; preds = %"susan_smoothing$2_increment_depth_counter"
  call void @"susan_smoothing$2"(i32 %inc264, i8* %out.4.lcssa, i32 %tmp9, i32 %tmp8)
  ret void

"susan_smoothing$2_return_from_recursive_function$0": ; preds = %"susan_smoothing$2_latch$0"
  ret void
}

define void @"edge_draw$1"(i32 %arg, i8* %arg1) {
"edge_draw$1_header":
  %tmp = load i8, i8* %arg1, align 1, !tbaa !7
  %cmp2 = icmp ult i8 %tmp, 8
  br i1 %cmp2, label %if.then4, label %"edge_draw$1_latch$0"

if.then4:                                         ; preds = %"edge_draw$1_header"
  %sub.ptr.lhs.cast = ptrtoint i8* %arg1 to i64
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$57"
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %tmp2
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$56"
  %add.ptr = getelementptr inbounds i8, i8* %tmp3, i64 %sub.ptr.sub
  %tmp4 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$55"
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 %tmp4
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr5, i64 -1
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr6, i64 1
  store i8 -1, i8* %add.ptr6, align 1, !tbaa !7
  %incdec.ptr7 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  store i8 -1, i8* %incdec.ptr, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr7, align 1, !tbaa !7
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$53"
  %add.ptr9 = getelementptr inbounds i8, i8* %incdec.ptr7, i64 %tmp5
  %incdec.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 1
  store i8 -1, i8* %add.ptr9, align 1, !tbaa !7
  %incdec.ptr11 = getelementptr inbounds i8, i8* %incdec.ptr10, i64 1
  store i8 -1, i8* %incdec.ptr11, align 1, !tbaa !7
  %tmp6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$53"
  %add.ptr14 = getelementptr inbounds i8, i8* %incdec.ptr11, i64 %tmp6
  %incdec.ptr15 = getelementptr inbounds i8, i8* %add.ptr14, i64 1
  store i8 -1, i8* %add.ptr14, align 1, !tbaa !7
  %incdec.ptr16 = getelementptr inbounds i8, i8* %incdec.ptr15, i64 1
  store i8 -1, i8* %incdec.ptr15, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr16, align 1, !tbaa !7
  br label %"edge_draw$1_latch$0"

"edge_draw$1_latch$0":                            ; preds = %if.then4, %"edge_draw$1_header"
  %incdec.ptr17 = getelementptr inbounds i8, i8* %arg1, i64 1
  %inc = add nuw nsw i32 %arg, 1
  %tmp7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$54"
  %exitcond73 = icmp eq i32 %inc, %tmp7
  br i1 %exitcond73, label %"edge_draw$1_return_from_recursive_function$0", label %"edge_draw$1_increment_depth_counter"

"edge_draw$1_increment_depth_counter":            ; preds = %"edge_draw$1_latch$0"
  br label %"edge_draw$1_recursively_call_function"

"edge_draw$1_recursively_call_function":          ; preds = %"edge_draw$1_increment_depth_counter"
  call void @"edge_draw$1"(i32 %inc, i8* %incdec.ptr17)
  ret void

"edge_draw$1_return_from_recursive_function$0":   ; preds = %"edge_draw$1_latch$0"
  ret void
}

define void @"edge_draw$0"(i32 %arg, i8* %arg1) {
"edge_draw$0_header":
  %tmp = load i8, i8* %arg1, align 1, !tbaa !7
  %cmp25 = icmp ult i8 %tmp, 8
  br i1 %cmp25, label %if.then27, label %if.end32

if.then27:                                        ; preds = %"edge_draw$0_header"
  %sub.ptr.lhs.cast28 = ptrtoint i8* %arg1 to i64
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$58"
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %tmp2
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$56"
  %add.ptr31 = getelementptr inbounds i8, i8* %tmp3, i64 %sub.ptr.sub30
  store i8 0, i8* %add.ptr31, align 1, !tbaa !7
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %"edge_draw$0_header"
  %incdec.ptr33 = getelementptr inbounds i8, i8* %arg1, i64 1
  %tmp4 = load i8, i8* %incdec.ptr33, align 1, !tbaa !7
  %cmp25.1 = icmp ult i8 %tmp4, 8
  br i1 %cmp25.1, label %if.then27.1, label %"edge_draw$0_latch$0"

if.then27.1:                                      ; preds = %if.end32
  %sub.ptr.lhs.cast28.1 = ptrtoint i8* %incdec.ptr33 to i64
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$58"
  %sub.ptr.sub30.1 = sub i64 %sub.ptr.lhs.cast28.1, %tmp5
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$56"
  %add.ptr31.1 = getelementptr inbounds i8, i8* %tmp6, i64 %sub.ptr.sub30.1
  store i8 0, i8* %add.ptr31.1, align 1, !tbaa !7
  br label %"edge_draw$0_latch$0"

"edge_draw$0_latch$0":                            ; preds = %if.then27.1, %if.end32
  %incdec.ptr33.1 = getelementptr inbounds i8, i8* %arg1, i64 2
  %inc35.1 = add nsw i32 %arg, 2
  %tmp7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$54"
  %exitcond.1 = icmp eq i32 %inc35.1, %tmp7
  br i1 %exitcond.1, label %"edge_draw$0_return_from_recursive_function$0", label %"edge_draw$0_increment_depth_counter"

"edge_draw$0_increment_depth_counter":            ; preds = %"edge_draw$0_latch$0"
  br label %"edge_draw$0_recursively_call_function"

"edge_draw$0_recursively_call_function":          ; preds = %"edge_draw$0_increment_depth_counter"
  call void @"edge_draw$0"(i32 %inc35.1, i8* %incdec.ptr33.1)
  ret void

"edge_draw$0_return_from_recursive_function$0":   ; preds = %"edge_draw$0_latch$0"
  ret void
}

define void @"susan_thin$0"(i32 %arg, i32 %arg1, i32 %arg2) {
"susan_thin$0_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$65"
  br i1 %tmp, label %for.body4.preheader, label %"susan_thin$0_latch$0"

for.body4.preheader:                              ; preds = %"susan_thin$0_header"
  br label %"susan_thin$0$0_initialize_context"

"susan_thin$0$0_initialize_context":              ; preds = %for.body4.preheader
  br label %"susan_thin$0$0_call_recursive_function"

"susan_thin$0$0_call_recursive_function":         ; preds = %"susan_thin$0$0_initialize_context"
  call void @"susan_thin$0$0"(i32 %arg, i32 %arg1, i32 %arg2, i32 4)
  br label %"susan_thin$0$0_extract_return_values$0"

"susan_thin$0$0_extract_return_values$0":         ; preds = %"susan_thin$0$0_call_recursive_function"
  %tmp3 = getelementptr %15, %15* @"susan_thin$0$0_return_value_struct", i32 0, i32 0
  %tmp4 = load i32, i32* %tmp3
  %tmp5 = getelementptr %15, %15* @"susan_thin$0$0_return_value_struct", i32 0, i32 1
  %tmp6 = load i32, i32* %tmp5
  %tmp7 = getelementptr %15, %15* @"susan_thin$0$0_return_value_struct", i32 0, i32 2
  %tmp8 = load i32, i32* %tmp7
  br label %for.inc826.loopexit

for.inc826.loopexit:                              ; preds = %"susan_thin$0$0_extract_return_values$0"
  br label %"susan_thin$0_latch$0"

"susan_thin$0_latch$0":                           ; preds = %for.inc826.loopexit, %"susan_thin$0_header"
  %i.1.lcssa = phi i32 [ %arg2, %"susan_thin$0_header" ], [ %tmp8, %for.inc826.loopexit ]
  %b.1.lcssa = phi i32 [ %arg1, %"susan_thin$0_header" ], [ %tmp6, %for.inc826.loopexit ]
  %a.1.lcssa = phi i32 [ %arg, %"susan_thin$0_header" ], [ %tmp4, %for.inc826.loopexit ]
  %inc827 = add nsw i32 %i.1.lcssa, 1
  %tmp9 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$61"
  %cmp = icmp slt i32 %inc827, %tmp9
  br i1 %cmp, label %"susan_thin$0_increment_depth_counter", label %"susan_thin$0_return_from_recursive_function$0"

"susan_thin$0_increment_depth_counter":           ; preds = %"susan_thin$0_latch$0"
  br label %"susan_thin$0_recursively_call_function"

"susan_thin$0_recursively_call_function":         ; preds = %"susan_thin$0_increment_depth_counter"
  call void @"susan_thin$0"(i32 %a.1.lcssa, i32 %b.1.lcssa, i32 %inc827)
  ret void

"susan_thin$0_return_from_recursive_function$0":  ; preds = %"susan_thin$0_latch$0"
  ret void
}

define void @"susan_edges$1"(i64 %arg) {
"susan_edges$1_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$76"
  br i1 %tmp, label %for.body7.lr.ph, label %"susan_edges$1_latch$0"

for.body7.lr.ph:                                  ; preds = %"susan_edges$1_header"
  %tmp1 = add nsw i64 %arg, -3
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$75"
  %tmp3 = mul nsw i64 %tmp1, %tmp2
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$73"
  %add.ptr = getelementptr inbounds i8, i8* %tmp4, i64 %tmp3
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$75"
  %tmp6 = mul nsw i64 %arg, %tmp5
  %tmp7 = trunc i64 %tmp6 to i32
  br label %"susan_edges$1$0_initialize_context"

"susan_edges$1$0_initialize_context":             ; preds = %for.body7.lr.ph
  store i32 %tmp7, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$182"
  store i8* %add.ptr, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$183"
  br label %"susan_edges$1$0_call_recursive_function"

"susan_edges$1$0_call_recursive_function":        ; preds = %"susan_edges$1$0_initialize_context"
  call void @"susan_edges$1$0"(i32 3, i64 3)
  br label %for.inc285.loopexit

for.inc285.loopexit:                              ; preds = %"susan_edges$1$0_call_recursive_function"
  br label %"susan_edges$1_latch$0"

"susan_edges$1_latch$0":                          ; preds = %for.inc285.loopexit, %"susan_edges$1_header"
  %indvars.iv.next2071 = add nuw nsw i64 %arg, 1
  %lftr.wideiv2075 = trunc i64 %indvars.iv.next2071 to i32
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$66"
  %exitcond2076 = icmp eq i32 %lftr.wideiv2075, %tmp8
  br i1 %exitcond2076, label %"susan_edges$1_return_from_recursive_function$0", label %"susan_edges$1_increment_depth_counter"

"susan_edges$1_increment_depth_counter":          ; preds = %"susan_edges$1_latch$0"
  br label %"susan_edges$1_recursively_call_function"

"susan_edges$1_recursively_call_function":        ; preds = %"susan_edges$1_increment_depth_counter"
  call void @"susan_edges$1"(i64 %indvars.iv.next2071)
  ret void

"susan_edges$1_return_from_recursive_function$0": ; preds = %"susan_edges$1_latch$0"
  ret void
}

define void @"susan_edges$0"(i64 %arg) {
"susan_edges$0_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$85"
  br i1 %tmp, label %for.body297.lr.ph, label %"susan_edges$0_latch$0"

for.body297.lr.ph:                                ; preds = %"susan_edges$0_header"
  %tmp1 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$84"
  %tmp2 = mul nsw i64 %arg, %tmp1
  %tmp3 = add nsw i64 %arg, -3
  %tmp4 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$84"
  %tmp5 = mul nsw i64 %tmp3, %tmp4
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$73"
  %add.ptr323 = getelementptr inbounds i8, i8* %tmp6, i64 %tmp5
  %tmp7 = trunc i64 %tmp2 to i32
  %tmp8 = trunc i64 %arg to i32
  %tmp9 = trunc i64 %arg to i32
  br label %"susan_edges$0$0_initialize_context"

"susan_edges$0$0_initialize_context":             ; preds = %for.body297.lr.ph
  store i32 %tmp9, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$184"
  store i32 %tmp8, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$185"
  store i8* %add.ptr323, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$186"
  store i32 %tmp7, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$187"
  br label %"susan_edges$0$0_call_recursive_function"

"susan_edges$0$0_call_recursive_function":        ; preds = %"susan_edges$0$0_initialize_context"
  call void @"susan_edges$0$0"(i32 4, i64 4)
  br label %for.inc1256.loopexit

for.inc1256.loopexit:                             ; preds = %"susan_edges$0$0_call_recursive_function"
  br label %"susan_edges$0_latch$0"

"susan_edges$0_latch$0":                          ; preds = %for.inc1256.loopexit, %"susan_edges$0_header"
  %indvars.iv.next2058 = add nuw nsw i64 %arg, 1
  %lftr.wideiv2064 = trunc i64 %indvars.iv.next2058 to i32
  %tmp10 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$82"
  %exitcond2065 = icmp eq i32 %lftr.wideiv2064, %tmp10
  br i1 %exitcond2065, label %"susan_edges$0_return_from_recursive_function$0", label %"susan_edges$0_increment_depth_counter"

"susan_edges$0_increment_depth_counter":          ; preds = %"susan_edges$0_latch$0"
  br label %"susan_edges$0_recursively_call_function"

"susan_edges$0_recursively_call_function":        ; preds = %"susan_edges$0_increment_depth_counter"
  call void @"susan_edges$0"(i64 %indvars.iv.next2058)
  ret void

"susan_edges$0_return_from_recursive_function$0": ; preds = %"susan_edges$0_latch$0"
  ret void
}

define void @"susan_edges_small$1"(i64 %arg) {
"susan_edges_small$1_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$93"
  br i1 %tmp, label %for.body7.lr.ph, label %"susan_edges_small$1_latch$0"

for.body7.lr.ph:                                  ; preds = %"susan_edges_small$1_header"
  %tmp1 = add nsw i64 %arg, -1
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$92"
  %tmp3 = mul nsw i64 %tmp1, %tmp2
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$90"
  %add.ptr = getelementptr inbounds i8, i8* %tmp4, i64 %tmp3
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$92"
  %tmp6 = mul nsw i64 %arg, %tmp5
  %tmp7 = trunc i64 %tmp6 to i32
  br label %"susan_edges_small$1$0_initialize_context"

"susan_edges_small$1$0_initialize_context":       ; preds = %for.body7.lr.ph
  store i32 %tmp7, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$188"
  store i8* %add.ptr, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$189"
  br label %"susan_edges_small$1$0_call_recursive_function"

"susan_edges_small$1$0_call_recursive_function":  ; preds = %"susan_edges_small$1$0_initialize_context"
  call void @"susan_edges_small$1$0"(i32 1, i64 1)
  br label %for.inc81.loopexit

for.inc81.loopexit:                               ; preds = %"susan_edges_small$1$0_call_recursive_function"
  br label %"susan_edges_small$1_latch$0"

"susan_edges_small$1_latch$0":                    ; preds = %for.inc81.loopexit, %"susan_edges_small$1_header"
  %indvars.iv.next662 = add nuw nsw i64 %arg, 1
  %lftr.wideiv666 = trunc i64 %indvars.iv.next662 to i32
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$91"
  %exitcond667 = icmp eq i32 %lftr.wideiv666, %tmp8
  br i1 %exitcond667, label %"susan_edges_small$1_return_from_recursive_function$0", label %"susan_edges_small$1_increment_depth_counter"

"susan_edges_small$1_increment_depth_counter":    ; preds = %"susan_edges_small$1_latch$0"
  br label %"susan_edges_small$1_recursively_call_function"

"susan_edges_small$1_recursively_call_function":  ; preds = %"susan_edges_small$1_increment_depth_counter"
  call void @"susan_edges_small$1"(i64 %indvars.iv.next662)
  ret void

"susan_edges_small$1_return_from_recursive_function$0": ; preds = %"susan_edges_small$1_latch$0"
  ret void
}

define void @"susan_edges_small$0"(i64 %arg) {
"susan_edges_small$0_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$100"
  br i1 %tmp, label %for.body93.lr.ph, label %"susan_edges_small$0_latch$0"

for.body93.lr.ph:                                 ; preds = %"susan_edges_small$0_header"
  %tmp1 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$99"
  %tmp2 = mul nsw i64 %arg, %tmp1
  %tmp3 = add nsw i64 %arg, -1
  %tmp4 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$99"
  %tmp5 = mul nsw i64 %tmp3, %tmp4
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$90"
  %add.ptr119 = getelementptr inbounds i8, i8* %tmp6, i64 %tmp5
  %tmp7 = trunc i64 %tmp2 to i32
  %tmp8 = trunc i64 %arg to i32
  %tmp9 = trunc i64 %arg to i32
  br label %"susan_edges_small$0$0_initialize_context"

"susan_edges_small$0$0_initialize_context":       ; preds = %for.body93.lr.ph
  store i32 %tmp9, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$190"
  store i32 %tmp8, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$191"
  store i8* %add.ptr119, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$192"
  store i32 %tmp7, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$193"
  br label %"susan_edges_small$0$0_call_recursive_function"

"susan_edges_small$0$0_call_recursive_function":  ; preds = %"susan_edges_small$0$0_initialize_context"
  call void @"susan_edges_small$0$0"(i32 2, i64 2)
  br label %for.inc396.loopexit

for.inc396.loopexit:                              ; preds = %"susan_edges_small$0$0_call_recursive_function"
  br label %"susan_edges_small$0_latch$0"

"susan_edges_small$0_latch$0":                    ; preds = %for.inc396.loopexit, %"susan_edges_small$0_header"
  %indvars.iv.next649 = add nuw nsw i64 %arg, 1
  %lftr.wideiv655 = trunc i64 %indvars.iv.next649 to i32
  %tmp10 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$94"
  %exitcond656 = icmp eq i32 %lftr.wideiv655, %tmp10
  br i1 %exitcond656, label %"susan_edges_small$0_return_from_recursive_function$0", label %"susan_edges_small$0_increment_depth_counter"

"susan_edges_small$0_increment_depth_counter":    ; preds = %"susan_edges_small$0_latch$0"
  br label %"susan_edges_small$0_recursively_call_function"

"susan_edges_small$0_recursively_call_function":  ; preds = %"susan_edges_small$0_increment_depth_counter"
  call void @"susan_edges_small$0"(i64 %indvars.iv.next649)
  ret void

"susan_edges_small$0_return_from_recursive_function$0": ; preds = %"susan_edges_small$0_latch$0"
  ret void
}

define void @"corner_draw$0"(%struct.anon* %arg, i64 %arg1) {
"corner_draw$0_header":
  %tmp = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$105"
  %y = getelementptr inbounds %struct.anon, %struct.anon* %tmp, i64 %arg1, i32 1
  %tmp2 = load i32, i32* %y, align 4, !tbaa !15
  %tmp3 = getelementptr inbounds %struct.anon, %struct.anon* %arg, i64 0, i32 0
  %tmp4 = load i32, i32* %tmp3, align 4
  %tmp5 = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$104"
  br i1 %tmp5, label %if.then, label %if.else

if.else:                                          ; preds = %"corner_draw$0_header"
  %tmp6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$103"
  %mul23 = mul nsw i32 %tmp2, %tmp6
  %idx.ext24 = sext i32 %mul23 to i64
  %tmp7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$102"
  %add.ptr25 = getelementptr inbounds i8, i8* %tmp7, i64 %idx.ext24
  %idx.ext29 = sext i32 %tmp4 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr25, i64 %idx.ext29
  store i8 0, i8* %add.ptr30, align 1, !tbaa !7
  br label %"corner_draw$0_latch$0"

if.then:                                          ; preds = %"corner_draw$0_header"
  %sub = add nsw i32 %tmp2, -1
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$103"
  %mul = mul nsw i32 %sub, %tmp8
  %idx.ext = sext i32 %mul to i64
  %tmp9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$102"
  %add.ptr = getelementptr inbounds i8, i8* %tmp9, i64 %idx.ext
  %idx.ext6 = sext i32 %tmp4 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr7, i64 -1
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr8, i64 1
  store i8 -1, i8* %add.ptr8, align 1, !tbaa !7
  %incdec.ptr9 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  store i8 -1, i8* %incdec.ptr, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr9, align 1, !tbaa !7
  %tmp10 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$101"
  %add.ptr12 = getelementptr inbounds i8, i8* %incdec.ptr9, i64 %tmp10
  %incdec.ptr13 = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  store i8 -1, i8* %add.ptr12, align 1, !tbaa !7
  %incdec.ptr14 = getelementptr inbounds i8, i8* %incdec.ptr13, i64 1
  store i8 0, i8* %incdec.ptr13, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr14, align 1, !tbaa !7
  %tmp11 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$101"
  %add.ptr17 = getelementptr inbounds i8, i8* %incdec.ptr14, i64 %tmp11
  %incdec.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i64 1
  store i8 -1, i8* %add.ptr17, align 1, !tbaa !7
  %incdec.ptr19 = getelementptr inbounds i8, i8* %incdec.ptr18, i64 1
  store i8 -1, i8* %incdec.ptr18, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr19, align 1, !tbaa !7
  br label %"corner_draw$0_latch$0"

"corner_draw$0_latch$0":                          ; preds = %if.then, %if.else
  %indvars.iv.next = add nuw nsw i64 %arg1, 1
  %tmp12 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$105"
  %arrayidx = getelementptr inbounds %struct.anon, %struct.anon* %tmp12, i64 %indvars.iv.next
  %tmp13 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$105"
  %info = getelementptr inbounds %struct.anon, %struct.anon* %tmp13, i64 %indvars.iv.next, i32 2
  %tmp14 = load i32, i32* %info, align 4, !tbaa !8
  %cmp = icmp eq i32 %tmp14, 7
  br i1 %cmp, label %"corner_draw$0_return_from_recursive_function$0", label %"corner_draw$0_increment_depth_counter"

"corner_draw$0_increment_depth_counter":          ; preds = %"corner_draw$0_latch$0"
  br label %"corner_draw$0_recursively_call_function"

"corner_draw$0_recursively_call_function":        ; preds = %"corner_draw$0_increment_depth_counter"
  call void @"corner_draw$0"(%struct.anon* %arrayidx, i64 %indvars.iv.next)
  ret void

"corner_draw$0_return_from_recursive_function$0": ; preds = %"corner_draw$0_latch$0"
  ret void
}

define void @"susan_corners$1"(i64 %arg) {
"susan_corners$1_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$116"
  br i1 %tmp, label %for.body14.lr.ph, label %"susan_corners$1_latch$0"

for.body14.lr.ph:                                 ; preds = %"susan_corners$1_header"
  %tmp1 = add nsw i64 %arg, -3
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$109"
  %tmp3 = mul nsw i64 %tmp1, %tmp2
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  %add.ptr = getelementptr inbounds i8, i8* %tmp4, i64 %tmp3
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$109"
  %tmp6 = mul nsw i64 %arg, %tmp5
  %tmp7 = trunc i64 %tmp6 to i32
  %tmp8 = trunc i64 %arg to i32
  %tmp9 = trunc i64 %arg to i32
  br label %"susan_corners$1$0_initialize_context"

"susan_corners$1$0_initialize_context":           ; preds = %for.body14.lr.ph
  store i32 %tmp8, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$194"
  store i32 %tmp9, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$195"
  store i32 %tmp7, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$196"
  store i8* %add.ptr, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$197"
  br label %"susan_corners$1$0_call_recursive_function"

"susan_corners$1$0_call_recursive_function":      ; preds = %"susan_corners$1$0_initialize_context"
  call void @"susan_corners$1$0"(i32 5, i64 5)
  br label %for.inc908.loopexit

for.inc908.loopexit:                              ; preds = %"susan_corners$1$0_call_recursive_function"
  br label %"susan_corners$1_latch$0"

"susan_corners$1_latch$0":                        ; preds = %for.inc908.loopexit, %"susan_corners$1_header"
  %indvars.iv.next2249 = add nuw nsw i64 %arg, 1
  %lftr.wideiv2253 = trunc i64 %indvars.iv.next2249 to i32
  %tmp10 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$106"
  %exitcond2254 = icmp eq i32 %lftr.wideiv2253, %tmp10
  br i1 %exitcond2254, label %"susan_corners$1_return_from_recursive_function$0", label %"susan_corners$1_increment_depth_counter"

"susan_corners$1_increment_depth_counter":        ; preds = %"susan_corners$1_latch$0"
  br label %"susan_corners$1_recursively_call_function"

"susan_corners$1_recursively_call_function":      ; preds = %"susan_corners$1_increment_depth_counter"
  call void @"susan_corners$1"(i64 %indvars.iv.next2249)
  ret void

"susan_corners$1_return_from_recursive_function$0": ; preds = %"susan_corners$1_latch$0"
  ret void
}

define void @"susan_corners$0"(i32 %arg, i64 %arg1) {
"susan_corners$0_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$124"
  br i1 %tmp, label %for.body920.lr.ph, label %for.cond916.preheader.for.inc1385_crit_edge

for.cond916.preheader.for.inc1385_crit_edge:      ; preds = %"susan_corners$0_header"
  %.pre = add nuw nsw i64 %arg1, 1
  br label %"susan_corners$0_latch$0"

for.body920.lr.ph:                                ; preds = %"susan_corners$0_header"
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$123"
  %tmp3 = mul nsw i64 %arg1, %tmp2
  %tmp4 = add nsw i64 %arg1, -3
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$123"
  %tmp6 = mul nsw i64 %tmp4, %tmp5
  %tmp7 = add nsw i64 %arg1, -2
  %tmp8 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$123"
  %tmp9 = mul nsw i64 %tmp7, %tmp8
  %tmp10 = add nsw i64 %arg1, -1
  %tmp11 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$123"
  %tmp12 = mul nsw i64 %tmp10, %tmp11
  %tmp13 = add nuw nsw i64 %arg1, 1
  %tmp14 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$123"
  %tmp15 = mul nsw i64 %tmp13, %tmp14
  %tmp16 = add nuw nsw i64 %arg1, 2
  %tmp17 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$123"
  %tmp18 = mul nsw i64 %tmp16, %tmp17
  %tmp19 = add nuw nsw i64 %arg1, 3
  %tmp20 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$123"
  %tmp21 = mul nsw i64 %tmp19, %tmp20
  %tmp22 = trunc i64 %tmp3 to i32
  %tmp23 = trunc i64 %arg1 to i32
  br label %"susan_corners$0$0_initialize_context"

"susan_corners$0$0_initialize_context":           ; preds = %for.body920.lr.ph
  store i64 %tmp21, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$198"
  store i32 %tmp23, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$199"
  store i64 %tmp18, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$200"
  store i64 %tmp15, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$201"
  store i64 %tmp12, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$202"
  store i64 %tmp9, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$203"
  store i64 %tmp6, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$204"
  store i32 %tmp22, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$205"
  br label %"susan_corners$0$0_call_recursive_function"

"susan_corners$0$0_call_recursive_function":      ; preds = %"susan_corners$0$0_initialize_context"
  call void @"susan_corners$0$0"(i32 5, i32 %arg, i64 5)
  br label %"susan_corners$0$0_branch_to_exit"

"susan_corners$0$0_branch_to_exit":               ; preds = %"susan_corners$0$0_call_recursive_function"
  %tmp24 = getelementptr %16, %16* @"susan_corners$0$0_return_value_struct", i32 0, i32 1
  %tmp25 = load i8, i8* %tmp24
  switch i8 %tmp25, label %"susan_corners$0$0_extract_return_values$0" [
    i8 1, label %"susan_corners$0$0_extract_return_values$0"
    i8 0, label %"susan_corners$0$0_extract_return_values$1"
  ]

"susan_corners$0$0_extract_return_values$0":      ; preds = %"susan_corners$0$0_branch_to_exit", %"susan_corners$0$0_branch_to_exit"
  %tmp26 = getelementptr %16, %16* @"susan_corners$0$0_return_value_struct", i32 0, i32 0
  %tmp27 = load i32, i32* %tmp26
  br label %for.inc1385.loopexit

"susan_corners$0$0_extract_return_values$1":      ; preds = %"susan_corners$0$0_branch_to_exit"
  br label %"susan_corners$0_return_from_recursive_function$1"

for.inc1385.loopexit:                             ; preds = %"susan_corners$0$0_extract_return_values$0"
  br label %"susan_corners$0_latch$0"

"susan_corners$0_latch$0":                        ; preds = %for.inc1385.loopexit, %for.cond916.preheader.for.inc1385_crit_edge
  %indvars.iv.next2232.pre-phi = phi i64 [ %.pre, %for.cond916.preheader.for.inc1385_crit_edge ], [ %tmp13, %for.inc1385.loopexit ]
  %n.1.lcssa = phi i32 [ %arg, %for.cond916.preheader.for.inc1385_crit_edge ], [ %tmp27, %for.inc1385.loopexit ]
  %tmp28 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$120"
  %cmp913 = icmp slt i64 %indvars.iv.next2232.pre-phi, %tmp28
  br i1 %cmp913, label %"susan_corners$0_increment_depth_counter", label %"susan_corners$0_return_from_recursive_function$0"

"susan_corners$0_increment_depth_counter":        ; preds = %"susan_corners$0_latch$0"
  br label %"susan_corners$0_recursively_call_function"

"susan_corners$0_recursively_call_function":      ; preds = %"susan_corners$0_increment_depth_counter"
  call void @"susan_corners$0"(i32 %n.1.lcssa, i64 %indvars.iv.next2232.pre-phi)
  ret void

"susan_corners$0_return_from_recursive_function$0": ; preds = %"susan_corners$0_latch$0"
  %tmp29 = getelementptr %4, %4* @"susan_corners$0_return_value_struct", i32 0, i32 0
  store i32 %n.1.lcssa, i32* %tmp29
  %tmp30 = getelementptr %4, %4* @"susan_corners$0_return_value_struct", i32 0, i32 1
  store i8 1, i8* %tmp30
  ret void

"susan_corners$0_return_from_recursive_function$1": ; preds = %"susan_corners$0$0_extract_return_values$1"
  %tmp31 = getelementptr %4, %4* @"susan_corners$0_return_value_struct", i32 0, i32 1
  store i8 0, i8* %tmp31
  ret void
}

define void @"susan_corners_quick$1"(i64 %arg) {
"susan_corners_quick$1_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$135"
  br i1 %tmp, label %for.body7.lr.ph, label %"susan_corners_quick$1_latch$0"

for.body7.lr.ph:                                  ; preds = %"susan_corners_quick$1_header"
  %tmp1 = add nsw i64 %arg, -3
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$134"
  %tmp3 = mul nsw i64 %tmp1, %tmp2
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %add.ptr = getelementptr inbounds i8, i8* %tmp4, i64 %tmp3
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$134"
  %tmp6 = mul nsw i64 %arg, %tmp5
  %tmp7 = trunc i64 %tmp6 to i32
  br label %"susan_corners_quick$1$0_initialize_context"

"susan_corners_quick$1$0_initialize_context":     ; preds = %for.body7.lr.ph
  store i32 %tmp7, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$206"
  store i8* %add.ptr, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$207"
  br label %"susan_corners_quick$1$0_call_recursive_function"

"susan_corners_quick$1$0_call_recursive_function": ; preds = %"susan_corners_quick$1$0_initialize_context"
  call void @"susan_corners_quick$1$0"(i32 7, i64 7)
  br label %for.inc357.loopexit

for.inc357.loopexit:                              ; preds = %"susan_corners_quick$1$0_call_recursive_function"
  br label %"susan_corners_quick$1_latch$0"

"susan_corners_quick$1_latch$0":                  ; preds = %for.inc357.loopexit, %"susan_corners_quick$1_header"
  %indvars.iv.next2117 = add nuw nsw i64 %arg, 1
  %lftr.wideiv2121 = trunc i64 %indvars.iv.next2117 to i32
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$125"
  %exitcond2122 = icmp eq i32 %lftr.wideiv2121, %tmp8
  br i1 %exitcond2122, label %"susan_corners_quick$1_return_from_recursive_function$0", label %"susan_corners_quick$1_increment_depth_counter"

"susan_corners_quick$1_increment_depth_counter":  ; preds = %"susan_corners_quick$1_latch$0"
  br label %"susan_corners_quick$1_recursively_call_function"

"susan_corners_quick$1_recursively_call_function": ; preds = %"susan_corners_quick$1_increment_depth_counter"
  call void @"susan_corners_quick$1"(i64 %indvars.iv.next2117)
  ret void

"susan_corners_quick$1_return_from_recursive_function$0": ; preds = %"susan_corners_quick$1_latch$0"
  ret void
}

define void @"susan_corners_quick$0"(i32 %arg, i64 %arg1) {
"susan_corners_quick$0_header":
  %tmp = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$140"
  br i1 %tmp, label %for.body369.lr.ph, label %for.cond365.preheader.for.inc1323_crit_edge

for.cond365.preheader.for.inc1323_crit_edge:      ; preds = %"susan_corners_quick$0_header"
  %.pre = add nuw nsw i64 %arg1, 1
  br label %"susan_corners_quick$0_latch$0"

for.body369.lr.ph:                                ; preds = %"susan_corners_quick$0_header"
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$139"
  %tmp3 = mul nsw i64 %arg1, %tmp2
  %tmp4 = add nsw i64 %arg1, -3
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$139"
  %tmp6 = mul nsw i64 %tmp4, %tmp5
  %tmp7 = add nsw i64 %arg1, -2
  %tmp8 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$139"
  %tmp9 = mul nsw i64 %tmp7, %tmp8
  %tmp10 = add nsw i64 %arg1, -1
  %tmp11 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$139"
  %tmp12 = mul nsw i64 %tmp10, %tmp11
  %tmp13 = add nuw nsw i64 %arg1, 1
  %tmp14 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$139"
  %tmp15 = mul nsw i64 %tmp13, %tmp14
  %tmp16 = add nuw nsw i64 %arg1, 2
  %tmp17 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$139"
  %tmp18 = mul nsw i64 %tmp16, %tmp17
  %tmp19 = add nuw nsw i64 %arg1, 3
  %tmp20 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$139"
  %tmp21 = mul nsw i64 %tmp19, %tmp20
  %tmp22 = trunc i64 %tmp3 to i32
  %tmp23 = trunc i64 %arg1 to i32
  br label %"susan_corners_quick$0$0_initialize_context"

"susan_corners_quick$0$0_initialize_context":     ; preds = %for.body369.lr.ph
  store i64 %tmp21, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$208"
  store i32 %tmp23, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$209"
  store i64 %tmp18, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$210"
  store i64 %tmp15, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$211"
  store i64 %tmp12, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$212"
  store i64 %tmp9, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$213"
  store i64 %tmp6, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$214"
  store i32 %tmp22, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$215"
  br label %"susan_corners_quick$0$0_call_recursive_function"

"susan_corners_quick$0$0_call_recursive_function": ; preds = %"susan_corners_quick$0$0_initialize_context"
  call void @"susan_corners_quick$0$0"(i32 7, i32 %arg, i64 7)
  br label %"susan_corners_quick$0$0_branch_to_exit"

"susan_corners_quick$0$0_branch_to_exit":         ; preds = %"susan_corners_quick$0$0_call_recursive_function"
  %tmp24 = getelementptr %17, %17* @"susan_corners_quick$0$0_return_value_struct", i32 0, i32 1
  %tmp25 = load i8, i8* %tmp24
  switch i8 %tmp25, label %"susan_corners_quick$0$0_extract_return_values$0" [
    i8 1, label %"susan_corners_quick$0$0_extract_return_values$0"
    i8 0, label %"susan_corners_quick$0$0_extract_return_values$1"
  ]

"susan_corners_quick$0$0_extract_return_values$0": ; preds = %"susan_corners_quick$0$0_branch_to_exit", %"susan_corners_quick$0$0_branch_to_exit"
  %tmp26 = getelementptr %17, %17* @"susan_corners_quick$0$0_return_value_struct", i32 0, i32 0
  %tmp27 = load i32, i32* %tmp26
  br label %for.inc1323.loopexit

"susan_corners_quick$0$0_extract_return_values$1": ; preds = %"susan_corners_quick$0$0_branch_to_exit"
  br label %"susan_corners_quick$0_return_from_recursive_function$1"

for.inc1323.loopexit:                             ; preds = %"susan_corners_quick$0$0_extract_return_values$0"
  br label %"susan_corners_quick$0_latch$0"

"susan_corners_quick$0_latch$0":                  ; preds = %for.inc1323.loopexit, %for.cond365.preheader.for.inc1323_crit_edge
  %indvars.iv.next2100.pre-phi = phi i64 [ %.pre, %for.cond365.preheader.for.inc1323_crit_edge ], [ %tmp13, %for.inc1323.loopexit ]
  %n.1.lcssa = phi i32 [ %arg, %for.cond365.preheader.for.inc1323_crit_edge ], [ %tmp27, %for.inc1323.loopexit ]
  %tmp28 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$136"
  %cmp362 = icmp slt i64 %indvars.iv.next2100.pre-phi, %tmp28
  br i1 %cmp362, label %"susan_corners_quick$0_increment_depth_counter", label %"susan_corners_quick$0_return_from_recursive_function$0"

"susan_corners_quick$0_increment_depth_counter":  ; preds = %"susan_corners_quick$0_latch$0"
  br label %"susan_corners_quick$0_recursively_call_function"

"susan_corners_quick$0_recursively_call_function": ; preds = %"susan_corners_quick$0_increment_depth_counter"
  call void @"susan_corners_quick$0"(i32 %n.1.lcssa, i64 %indvars.iv.next2100.pre-phi)
  ret void

"susan_corners_quick$0_return_from_recursive_function$0": ; preds = %"susan_corners_quick$0_latch$0"
  %tmp29 = getelementptr %5, %5* @"susan_corners_quick$0_return_value_struct", i32 0, i32 0
  store i32 %n.1.lcssa, i32* %tmp29
  %tmp30 = getelementptr %5, %5* @"susan_corners_quick$0_return_value_struct", i32 0, i32 1
  store i8 1, i8* %tmp30
  ret void

"susan_corners_quick$0_return_from_recursive_function$1": ; preds = %"susan_corners_quick$0$0_extract_return_values$1"
  %tmp31 = getelementptr %5, %5* @"susan_corners_quick$0_return_value_struct", i32 0, i32 1
  store i8 0, i8* %tmp31
  ret void
}

define void @"main$12"(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 %arg5, i32 %arg6, float %arg7, i32 %arg8) {
"main$12_exiting$3":
  %idxprom = sext i32 %arg to i64
  %tmp = load i8**, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$142"
  %arrayidx2 = getelementptr inbounds i8*, i8** %tmp, i64 %idxprom
  %tmp9 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  %tmp10 = load i8, i8* %tmp9, align 1, !tbaa !7
  %cmp3 = icmp eq i8 %tmp10, 45
  br i1 %cmp3, label %if.then5, label %"main$12_return_from_recursive_function$3"

if.then5:                                         ; preds = %"main$12_exiting$3"
  %incdec.ptr = getelementptr inbounds i8, i8* %tmp9, i64 1
  %tmp11 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %conv6 = sext i8 %tmp11 to i32
  switch i32 %conv6, label %"main$12_latch$0" [
    i32 115, label %sw.bb
    i32 101, label %sw.bb7
    i32 99, label %sw.bb8
    i32 112, label %sw.bb9
    i32 110, label %sw.bb10
    i32 98, label %sw.bb11
    i32 51, label %sw.bb12
    i32 113, label %sw.bb13
    i32 100, label %"main$12_exiting$1"
    i32 116, label %"main$12_exiting$2"
  ]

"main$12_exiting$2":                              ; preds = %if.then5
  %inc29 = add nsw i32 %arg, 1
  %tmp12 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$141"
  %cmp30 = icmp slt i32 %inc29, %tmp12
  br i1 %cmp30, label %if.end34, label %"main$12_return_from_recursive_function$2"

if.end34:                                         ; preds = %"main$12_exiting$2"
  %idxprom35 = sext i32 %inc29 to i64
  %tmp13 = load i8**, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$142"
  %arrayidx36 = getelementptr inbounds i8*, i8** %tmp13, i64 %idxprom35
  %tmp14 = load i8*, i8** %arrayidx36, align 8, !tbaa !1
  %call.i156 = tail call i64 @strtol(i8* nocapture nonnull %tmp14, i8** null, i32 10) #6
  %conv.i = trunc i64 %call.i156 to i32
  br label %"main$12_latch$0"

"main$12_exiting$1":                              ; preds = %if.then5
  %inc = add nsw i32 %arg, 1
  %tmp15 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$141"
  %cmp15 = icmp slt i32 %inc, %tmp15
  br i1 %cmp15, label %if.end19, label %"main$12_return_from_recursive_function$0"

if.end19:                                         ; preds = %"main$12_exiting$1"
  %idxprom20 = sext i32 %inc to i64
  %tmp16 = load i8**, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$142"
  %arrayidx21 = getelementptr inbounds i8*, i8** %tmp16, i64 %idxprom20
  %tmp17 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  %call.i = tail call double @strtod(i8* nocapture nonnull %tmp17, i8** null) #6
  %conv23 = fptrunc double %call.i to float
  %cmp24 = fcmp olt float %conv23, 0.000000e+00
  br i1 %cmp24, label %if.then26, label %"main$12_latch$0"

if.then26:                                        ; preds = %if.end19
  br label %"main$12_latch$0"

sw.bb13:                                          ; preds = %if.then5
  br label %"main$12_latch$0"

sw.bb12:                                          ; preds = %if.then5
  br label %"main$12_latch$0"

sw.bb11:                                          ; preds = %if.then5
  br label %"main$12_latch$0"

sw.bb10:                                          ; preds = %if.then5
  br label %"main$12_latch$0"

sw.bb9:                                           ; preds = %if.then5
  br label %"main$12_latch$0"

sw.bb8:                                           ; preds = %if.then5
  br label %"main$12_latch$0"

sw.bb7:                                           ; preds = %if.then5
  br label %"main$12_latch$0"

sw.bb:                                            ; preds = %if.then5
  br label %"main$12_latch$0"

"main$12_latch$0":                                ; preds = %sw.bb, %sw.bb7, %sw.bb8, %sw.bb9, %sw.bb10, %sw.bb11, %sw.bb12, %sw.bb13, %if.then26, %if.end19, %if.end34, %if.then5
  %argindex.1 = phi i32 [ %arg, %if.then5 ], [ %inc29, %if.end34 ], [ %inc, %if.then26 ], [ %inc, %if.end19 ], [ %arg, %sw.bb13 ], [ %arg, %sw.bb12 ], [ %arg, %sw.bb11 ], [ %arg, %sw.bb10 ], [ %arg, %sw.bb9 ], [ %arg, %sw.bb8 ], [ %arg, %sw.bb7 ], [ %arg, %sw.bb ]
  %bt.1 = phi i32 [ %arg5, %if.then5 ], [ %conv.i, %if.end34 ], [ %arg5, %if.then26 ], [ %arg5, %if.end19 ], [ %arg5, %sw.bb13 ], [ %arg5, %sw.bb12 ], [ %arg5, %sw.bb11 ], [ %arg5, %sw.bb10 ], [ %arg5, %sw.bb9 ], [ %arg5, %sw.bb8 ], [ %arg5, %sw.bb7 ], [ %arg5, %sw.bb ]
  %principle.1 = phi i32 [ %arg2, %if.then5 ], [ %arg2, %if.end34 ], [ %arg2, %if.then26 ], [ %arg2, %if.end19 ], [ %arg2, %sw.bb13 ], [ %arg2, %sw.bb12 ], [ %arg2, %sw.bb11 ], [ %arg2, %sw.bb10 ], [ 1, %sw.bb9 ], [ %arg2, %sw.bb8 ], [ %arg2, %sw.bb7 ], [ %arg2, %sw.bb ]
  %thin_post_proc.1 = phi i32 [ %arg6, %if.then5 ], [ %arg6, %if.end34 ], [ %arg6, %if.then26 ], [ %arg6, %if.end19 ], [ %arg6, %sw.bb13 ], [ %arg6, %sw.bb12 ], [ %arg6, %sw.bb11 ], [ 0, %sw.bb10 ], [ %arg6, %sw.bb9 ], [ %arg6, %sw.bb8 ], [ %arg6, %sw.bb7 ], [ %arg6, %sw.bb ]
  %three_by_three.1 = phi i32 [ %arg3, %if.then5 ], [ %arg3, %if.end34 ], [ 1, %if.then26 ], [ %arg3, %if.end19 ], [ %arg3, %sw.bb13 ], [ 1, %sw.bb12 ], [ %arg3, %sw.bb11 ], [ %arg3, %sw.bb10 ], [ %arg3, %sw.bb9 ], [ %arg3, %sw.bb8 ], [ %arg3, %sw.bb7 ], [ %arg3, %sw.bb ]
  %drawing_mode.1 = phi i32 [ %arg1, %if.then5 ], [ %arg1, %if.end34 ], [ %arg1, %if.then26 ], [ %arg1, %if.end19 ], [ %arg1, %sw.bb13 ], [ %arg1, %sw.bb12 ], [ 1, %sw.bb11 ], [ %arg1, %sw.bb10 ], [ %arg1, %sw.bb9 ], [ %arg1, %sw.bb8 ], [ %arg1, %sw.bb7 ], [ %arg1, %sw.bb ]
  %susan_quick.1 = phi i32 [ %arg4, %if.then5 ], [ %arg4, %if.end34 ], [ %arg4, %if.then26 ], [ %arg4, %if.end19 ], [ 1, %sw.bb13 ], [ %arg4, %sw.bb12 ], [ %arg4, %sw.bb11 ], [ %arg4, %sw.bb10 ], [ %arg4, %sw.bb9 ], [ %arg4, %sw.bb8 ], [ %arg4, %sw.bb7 ], [ %arg4, %sw.bb ]
  %dt.1 = phi float [ %arg7, %if.then5 ], [ %arg7, %if.end34 ], [ %conv23, %if.then26 ], [ %conv23, %if.end19 ], [ %arg7, %sw.bb13 ], [ %arg7, %sw.bb12 ], [ %arg7, %sw.bb11 ], [ %arg7, %sw.bb10 ], [ %arg7, %sw.bb9 ], [ %arg7, %sw.bb8 ], [ %arg7, %sw.bb7 ], [ %arg7, %sw.bb ]
  %mode.1 = phi i32 [ %arg8, %if.then5 ], [ %arg8, %if.end34 ], [ %arg8, %if.then26 ], [ %arg8, %if.end19 ], [ %arg8, %sw.bb13 ], [ %arg8, %sw.bb12 ], [ %arg8, %sw.bb11 ], [ %arg8, %sw.bb10 ], [ %arg8, %sw.bb9 ], [ 2, %sw.bb8 ], [ 1, %sw.bb7 ], [ 0, %sw.bb ]
  %inc40 = add nsw i32 %argindex.1, 1
  %tmp18 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$141"
  %cmp1 = icmp slt i32 %inc40, %tmp18
  br i1 %cmp1, label %"main$12_increment_depth_counter", label %"main$12_return_from_recursive_function$1"

"main$12_increment_depth_counter":                ; preds = %"main$12_latch$0"
  br label %"main$12_recursively_call_function"

"main$12_recursively_call_function":              ; preds = %"main$12_increment_depth_counter"
  call void @"main$12"(i32 %inc40, i32 %drawing_mode.1, i32 %principle.1, i32 %three_by_three.1, i32 %susan_quick.1, i32 %bt.1, i32 %thin_post_proc.1, float %dt.1, i32 %mode.1)
  ret void

"main$12_return_from_recursive_function$0":       ; preds = %"main$12_exiting$1"
  %tmp19 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 8
  store i8 2, i8* %tmp19
  ret void

"main$12_return_from_recursive_function$1":       ; preds = %"main$12_latch$0"
  %tmp20 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 0
  store i32 %bt.1, i32* %tmp20
  %tmp21 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 1
  store i32 %principle.1, i32* %tmp21
  %tmp22 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 2
  store i32 %thin_post_proc.1, i32* %tmp22
  %tmp23 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 3
  store i32 %three_by_three.1, i32* %tmp23
  %tmp24 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 4
  store i32 %drawing_mode.1, i32* %tmp24
  %tmp25 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 5
  store i32 %susan_quick.1, i32* %tmp25
  %tmp26 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 6
  store float %dt.1, float* %tmp26
  %tmp27 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 7
  store i32 %mode.1, i32* %tmp27
  %tmp28 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 8
  store i8 3, i8* %tmp28
  ret void

"main$12_return_from_recursive_function$2":       ; preds = %"main$12_exiting$2"
  %tmp29 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 8
  store i8 1, i8* %tmp29
  ret void

"main$12_return_from_recursive_function$3":       ; preds = %"main$12_exiting$3"
  %tmp30 = getelementptr %6, %6* @"main$12_return_value_struct", i32 0, i32 8
  store i8 0, i8* %tmp30
  ret void
}

define void @"main$0"(i64 %arg) {
"main$0_latch$0":
  %tmp = trunc i64 %arg to i32
  %conv.i158 = sitofp i32 %tmp to float
  %tmp1 = load float, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$144"
  %div.i = fdiv float %conv.i158, %tmp1
  %mul.i = fmul float %div.i, %div.i
  %sub.i = fsub float -0.000000e+00, %mul.i
  %conv6.i = fpext float %sub.i to double
  %call7.i = tail call double @exp(double %conv6.i) #6
  %mul8.i = fmul double %call7.i, 1.000000e+02
  %conv9.i = fptrunc double %mul8.i to float
  %conv10.i = fptoui float %conv9.i to i8
  %tmp2 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$143"
  %add.ptr11.i = getelementptr inbounds i8, i8* %tmp2, i64 %arg
  store i8 %conv10.i, i8* %add.ptr11.i, align 1, !tbaa !7
  %indvars.iv.next.i = add nsw i64 %arg, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 257
  br i1 %exitcond.i, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  br label %"main$0_recursively_call_function"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(i64 %indvars.iv.next.i)
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  ret void
}

define void @"main$6"(i64 %arg) {
"main$6_latch$0":
  %tmp = trunc i64 %arg to i32
  %conv.i163 = sitofp i32 %tmp to float
  %tmp1 = load float, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$146"
  %div.i164 = fdiv float %conv.i163, %tmp1
  %mul.i165 = fmul float %div.i164, %div.i164
  %mul4.i166 = fmul float %mul.i165, %mul.i165
  %mul5.i167 = fmul float %mul.i165, %mul4.i166
  %sub.i168 = fsub float -0.000000e+00, %mul5.i167
  %conv6.i169 = fpext float %sub.i168 to double
  %call7.i170 = tail call double @exp(double %conv6.i169) #6
  %mul8.i171 = fmul double %call7.i170, 1.000000e+02
  %conv9.i172 = fptrunc double %mul8.i171 to float
  %conv10.i173 = fptoui float %conv9.i172 to i8
  %tmp2 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$145"
  %add.ptr11.i174 = getelementptr inbounds i8, i8* %tmp2, i64 %arg
  store i8 %conv10.i173, i8* %add.ptr11.i174, align 1, !tbaa !7
  %indvars.iv.next.i175 = add nsw i64 %arg, 1
  %exitcond.i176 = icmp eq i64 %indvars.iv.next.i175, 257
  br i1 %exitcond.i176, label %"main$6_return_from_recursive_function$0", label %"main$6_increment_depth_counter"

"main$6_increment_depth_counter":                 ; preds = %"main$6_latch$0"
  br label %"main$6_recursively_call_function"

"main$6_recursively_call_function":               ; preds = %"main$6_increment_depth_counter"
  call void @"main$6"(i64 %indvars.iv.next.i175)
  ret void

"main$6_return_from_recursive_function$0":        ; preds = %"main$6_latch$0"
  ret void
}

define void @"main$5"(<4 x i32> %arg, <4 x i32> %arg1, <4 x i32> %arg2, <4 x i32> %arg3, i64 %arg4) {
"main$5_latch$0":
  %offset.idx396 = or i64 %arg4, 1
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$148"
  %tmp5 = getelementptr inbounds i32, i32* %tmp, i64 %offset.idx396
  %tmp6 = bitcast i32* %tmp5 to <4 x i32>*
  %wide.load405 = load <4 x i32>, <4 x i32>* %tmp6, align 4, !tbaa !5
  %tmp7 = getelementptr i32, i32* %tmp5, i64 4
  %tmp8 = bitcast i32* %tmp7 to <4 x i32>*
  %wide.load406 = load <4 x i32>, <4 x i32>* %tmp8, align 4, !tbaa !5
  %tmp9 = icmp sgt <4 x i32> %wide.load405, %arg1
  %tmp10 = icmp sgt <4 x i32> %wide.load406, %arg
  %tmp11 = select <4 x i1> %tmp9, <4 x i32> %wide.load405, <4 x i32> %arg1
  %tmp12 = select <4 x i1> %tmp10, <4 x i32> %wide.load406, <4 x i32> %arg
  %tmp13 = icmp slt <4 x i32> %wide.load405, %arg3
  %tmp14 = icmp slt <4 x i32> %wide.load406, %arg2
  %tmp15 = select <4 x i1> %tmp13, <4 x i32> %wide.load405, <4 x i32> %arg3
  %tmp16 = select <4 x i1> %tmp14, <4 x i32> %wide.load406, <4 x i32> %arg2
  %index.next392 = add i64 %arg4, 8
  %offset.idx396.1 = or i64 %index.next392, 1
  %tmp17 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$148"
  %tmp18 = getelementptr inbounds i32, i32* %tmp17, i64 %offset.idx396.1
  %tmp19 = bitcast i32* %tmp18 to <4 x i32>*
  %wide.load405.1 = load <4 x i32>, <4 x i32>* %tmp19, align 4, !tbaa !5
  %tmp20 = getelementptr i32, i32* %tmp18, i64 4
  %tmp21 = bitcast i32* %tmp20 to <4 x i32>*
  %wide.load406.1 = load <4 x i32>, <4 x i32>* %tmp21, align 4, !tbaa !5
  %tmp22 = icmp sgt <4 x i32> %wide.load405.1, %tmp11
  %tmp23 = icmp sgt <4 x i32> %wide.load406.1, %tmp12
  %tmp24 = select <4 x i1> %tmp22, <4 x i32> %wide.load405.1, <4 x i32> %tmp11
  %tmp25 = select <4 x i1> %tmp23, <4 x i32> %wide.load406.1, <4 x i32> %tmp12
  %tmp26 = icmp slt <4 x i32> %wide.load405.1, %tmp15
  %tmp27 = icmp slt <4 x i32> %wide.load406.1, %tmp16
  %tmp28 = select <4 x i1> %tmp26, <4 x i32> %wide.load405.1, <4 x i32> %tmp15
  %tmp29 = select <4 x i1> %tmp27, <4 x i32> %wide.load406.1, <4 x i32> %tmp16
  %index.next392.1 = add i64 %arg4, 16
  %tmp30 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$147"
  %tmp31 = icmp eq i64 %index.next392.1, %tmp30
  br i1 %tmp31, label %"main$5_return_from_recursive_function$0", label %"main$5_increment_depth_counter", !llvm.loop !16

"main$5_increment_depth_counter":                 ; preds = %"main$5_latch$0"
  br label %"main$5_recursively_call_function"

"main$5_recursively_call_function":               ; preds = %"main$5_increment_depth_counter"
  call void @"main$5"(<4 x i32> %tmp25, <4 x i32> %tmp24, <4 x i32> %tmp29, <4 x i32> %tmp28, i64 %index.next392.1)
  ret void

"main$5_return_from_recursive_function$0":        ; preds = %"main$5_latch$0"
  %tmp32 = getelementptr %7, %7* @"main$5_return_value_struct", i32 0, i32 0
  store <4 x i32> %tmp24, <4 x i32>* %tmp32
  %tmp33 = getelementptr %7, %7* @"main$5_return_value_struct", i32 0, i32 1
  store <4 x i32> %tmp25, <4 x i32>* %tmp33
  %tmp34 = getelementptr %7, %7* @"main$5_return_value_struct", i32 0, i32 2
  store <4 x i32> %tmp28, <4 x i32>* %tmp34
  %tmp35 = getelementptr %7, %7* @"main$5_return_value_struct", i32 0, i32 3
  store <4 x i32> %tmp29, <4 x i32>* %tmp35
  ret void
}

define void @"main$4"(i32 %arg, i32 %arg1, i64 %arg2) {
"main$4_latch$0":
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$148"
  %arrayidx2.phi.trans.insert.i = getelementptr inbounds i32, i32* %tmp, i64 %arg2
  %.pre.i = load i32, i32* %arrayidx2.phi.trans.insert.i, align 4, !tbaa !5
  %cmp3.i = icmp sgt i32 %.pre.i, %arg
  %.max_r.0.i = select i1 %cmp3.i, i32 %.pre.i, i32 %arg
  %cmp8.i = icmp slt i32 %.pre.i, %arg1
  %min_r.1.i = select i1 %cmp8.i, i32 %.pre.i, i32 %arg1
  %indvars.iv.next55.i = add nuw nsw i64 %arg2, 1
  %lftr.wideiv335 = trunc i64 %indvars.iv.next55.i to i32
  %tmp3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$149"
  %exitcond336 = icmp eq i32 %lftr.wideiv335, %tmp3
  br i1 %exitcond336, label %"main$4_return_from_recursive_function$0", label %"main$4_increment_depth_counter", !llvm.loop !17

"main$4_increment_depth_counter":                 ; preds = %"main$4_latch$0"
  br label %"main$4_recursively_call_function"

"main$4_recursively_call_function":               ; preds = %"main$4_increment_depth_counter"
  call void @"main$4"(i32 %.max_r.0.i, i32 %min_r.1.i, i64 %indvars.iv.next55.i)
  ret void

"main$4_return_from_recursive_function$0":        ; preds = %"main$4_latch$0"
  %tmp4 = getelementptr %8, %8* @"main$4_return_value_struct", i32 0, i32 0
  store i32 %.max_r.0.i, i32* %tmp4
  %tmp5 = getelementptr %8, %8* @"main$4_return_value_struct", i32 0, i32 1
  store i32 %min_r.1.i, i32* %tmp5
  ret void
}

define void @"main$3"(i64 %arg) {
"main$3_latch$0":
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$148"
  %arrayidx17.phi.trans.insert.i = getelementptr inbounds i32, i32* %tmp, i64 %arg
  %.pre58.i = load i32, i32* %arrayidx17.phi.trans.insert.i, align 4, !tbaa !5
  %tmp1 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$152"
  %sub18.i = sub nsw i32 %.pre58.i, %tmp1
  %mul.i182 = mul nsw i32 %sub18.i, 255
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$151"
  %div.i183 = sdiv i32 %mul.i182, %tmp2
  %conv.i184 = trunc i32 %div.i183 to i8
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$150"
  %arrayidx20.i = getelementptr inbounds i8, i8* %tmp3, i64 %arg
  store i8 %conv.i184, i8* %arrayidx20.i, align 1, !tbaa !7
  %indvars.iv.next.i185 = add nuw nsw i64 %arg, 1
  %tmp4 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$148"
  %arrayidx17.phi.trans.insert.i.1 = getelementptr inbounds i32, i32* %tmp4, i64 %indvars.iv.next.i185
  %.pre58.i.1 = load i32, i32* %arrayidx17.phi.trans.insert.i.1, align 4, !tbaa !5
  %tmp5 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$152"
  %sub18.i.1 = sub nsw i32 %.pre58.i.1, %tmp5
  %mul.i182.1 = mul nsw i32 %sub18.i.1, 255
  %tmp6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$151"
  %div.i183.1 = sdiv i32 %mul.i182.1, %tmp6
  %conv.i184.1 = trunc i32 %div.i183.1 to i8
  %tmp7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$150"
  %arrayidx20.i.1 = getelementptr inbounds i8, i8* %tmp7, i64 %indvars.iv.next.i185
  store i8 %conv.i184.1, i8* %arrayidx20.i.1, align 1, !tbaa !7
  %indvars.iv.next.i185.1 = add nsw i64 %arg, 2
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.i185.1 to i32
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$149"
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %tmp8
  br i1 %exitcond.1, label %"main$3_return_from_recursive_function$0", label %"main$3_increment_depth_counter"

"main$3_increment_depth_counter":                 ; preds = %"main$3_latch$0"
  br label %"main$3_recursively_call_function"

"main$3_recursively_call_function":               ; preds = %"main$3_increment_depth_counter"
  call void @"main$3"(i64 %indvars.iv.next.i185.1)
  ret void

"main$3_return_from_recursive_function$0":        ; preds = %"main$3_latch$0"
  ret void
}

define void @"main$2"(i32 %arg, i8* %arg1) {
"main$2_header":
  %tmp = load i8, i8* %arg1, align 1, !tbaa !7
  %cmp2.i = icmp ult i8 %tmp, 8
  br i1 %cmp2.i, label %if.then4.i, label %"main$2_latch$0"

if.then4.i:                                       ; preds = %"main$2_header"
  %sub.ptr.lhs.cast.i = ptrtoint i8* %arg1 to i64
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$156"
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %tmp2
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$155"
  %add.ptr.i190 = getelementptr inbounds i8, i8* %tmp3, i64 %sub.ptr.sub.i
  %tmp4 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$154"
  %add.ptr5.i = getelementptr inbounds i8, i8* %add.ptr.i190, i64 %tmp4
  %add.ptr6.i = getelementptr inbounds i8, i8* %add.ptr5.i, i64 -1
  %incdec.ptr.i = getelementptr inbounds i8, i8* %add.ptr6.i, i64 1
  store i8 -1, i8* %add.ptr6.i, align 1, !tbaa !7
  %incdec.ptr7.i = getelementptr inbounds i8, i8* %incdec.ptr.i, i64 1
  store i8 -1, i8* %incdec.ptr.i, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr7.i, align 1, !tbaa !7
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$153"
  %add.ptr9.i = getelementptr inbounds i8, i8* %incdec.ptr7.i, i64 %tmp5
  %incdec.ptr10.i = getelementptr inbounds i8, i8* %add.ptr9.i, i64 1
  store i8 -1, i8* %add.ptr9.i, align 1, !tbaa !7
  %incdec.ptr11.i = getelementptr inbounds i8, i8* %incdec.ptr10.i, i64 1
  store i8 -1, i8* %incdec.ptr11.i, align 1, !tbaa !7
  %tmp6 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$153"
  %add.ptr14.i = getelementptr inbounds i8, i8* %incdec.ptr11.i, i64 %tmp6
  %incdec.ptr15.i = getelementptr inbounds i8, i8* %add.ptr14.i, i64 1
  store i8 -1, i8* %add.ptr14.i, align 1, !tbaa !7
  %incdec.ptr16.i = getelementptr inbounds i8, i8* %incdec.ptr15.i, i64 1
  store i8 -1, i8* %incdec.ptr15.i, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr16.i, align 1, !tbaa !7
  br label %"main$2_latch$0"

"main$2_latch$0":                                 ; preds = %if.then4.i, %"main$2_header"
  %incdec.ptr17.i = getelementptr inbounds i8, i8* %arg1, i64 1
  %inc.i = add nuw nsw i32 %arg, 1
  %tmp7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$149"
  %exitcond73.i = icmp eq i32 %inc.i, %tmp7
  br i1 %exitcond73.i, label %"main$2_return_from_recursive_function$0", label %"main$2_increment_depth_counter"

"main$2_increment_depth_counter":                 ; preds = %"main$2_latch$0"
  br label %"main$2_recursively_call_function"

"main$2_recursively_call_function":               ; preds = %"main$2_increment_depth_counter"
  call void @"main$2"(i32 %inc.i, i8* %incdec.ptr17.i)
  ret void

"main$2_return_from_recursive_function$0":        ; preds = %"main$2_latch$0"
  ret void
}

define void @"main$1"(i32 %arg, i8* %arg1) {
"main$1_header":
  %tmp = load i8, i8* %arg1, align 1, !tbaa !7
  %cmp25.i = icmp ult i8 %tmp, 8
  br i1 %cmp25.i, label %if.then27.i, label %if.end32.i

if.then27.i:                                      ; preds = %"main$1_header"
  %sub.ptr.lhs.cast28.i = ptrtoint i8* %arg1 to i64
  %tmp2 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$157"
  %sub.ptr.sub30.i = sub i64 %sub.ptr.lhs.cast28.i, %tmp2
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$155"
  %add.ptr31.i = getelementptr inbounds i8, i8* %tmp3, i64 %sub.ptr.sub30.i
  store i8 0, i8* %add.ptr31.i, align 1, !tbaa !7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %"main$1_header"
  %incdec.ptr33.i = getelementptr inbounds i8, i8* %arg1, i64 1
  %tmp4 = load i8, i8* %incdec.ptr33.i, align 1, !tbaa !7
  %cmp25.i.1 = icmp ult i8 %tmp4, 8
  br i1 %cmp25.i.1, label %if.then27.i.1, label %"main$1_latch$0"

if.then27.i.1:                                    ; preds = %if.end32.i
  %sub.ptr.lhs.cast28.i.1 = ptrtoint i8* %incdec.ptr33.i to i64
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$157"
  %sub.ptr.sub30.i.1 = sub i64 %sub.ptr.lhs.cast28.i.1, %tmp5
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$155"
  %add.ptr31.i.1 = getelementptr inbounds i8, i8* %tmp6, i64 %sub.ptr.sub30.i.1
  store i8 0, i8* %add.ptr31.i.1, align 1, !tbaa !7
  br label %"main$1_latch$0"

"main$1_latch$0":                                 ; preds = %if.then27.i.1, %if.end32.i
  %incdec.ptr33.i.1 = getelementptr inbounds i8, i8* %arg1, i64 2
  %inc35.i.1 = add nsw i32 %arg, 2
  %tmp7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$149"
  %exitcond.i191.1 = icmp eq i32 %inc35.i.1, %tmp7
  br i1 %exitcond.i191.1, label %"main$1_return_from_recursive_function$0", label %"main$1_increment_depth_counter"

"main$1_increment_depth_counter":                 ; preds = %"main$1_latch$0"
  br label %"main$1_recursively_call_function"

"main$1_recursively_call_function":               ; preds = %"main$1_increment_depth_counter"
  call void @"main$1"(i32 %inc35.i.1, i8* %incdec.ptr33.i.1)
  ret void

"main$1_return_from_recursive_function$0":        ; preds = %"main$1_latch$0"
  ret void
}

define void @"main$11"(i64 %arg) {
"main$11_latch$0":
  %tmp = trunc i64 %arg to i32
  %conv.i196 = sitofp i32 %tmp to float
  %tmp1 = load float, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$159"
  %div.i197 = fdiv float %conv.i196, %tmp1
  %mul.i198 = fmul float %div.i197, %div.i197
  %mul4.i199 = fmul float %mul.i198, %mul.i198
  %mul5.i200 = fmul float %mul.i198, %mul4.i199
  %sub.i201 = fsub float -0.000000e+00, %mul5.i200
  %conv6.i202 = fpext float %sub.i201 to double
  %call7.i203 = tail call double @exp(double %conv6.i202) #6
  %mul8.i204 = fmul double %call7.i203, 1.000000e+02
  %conv9.i205 = fptrunc double %mul8.i204 to float
  %conv10.i206 = fptoui float %conv9.i205 to i8
  %tmp2 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$158"
  %add.ptr11.i207 = getelementptr inbounds i8, i8* %tmp2, i64 %arg
  store i8 %conv10.i206, i8* %add.ptr11.i207, align 1, !tbaa !7
  %indvars.iv.next.i208 = add nsw i64 %arg, 1
  %exitcond.i209 = icmp eq i64 %indvars.iv.next.i208, 257
  br i1 %exitcond.i209, label %"main$11_return_from_recursive_function$0", label %"main$11_increment_depth_counter"

"main$11_increment_depth_counter":                ; preds = %"main$11_latch$0"
  br label %"main$11_recursively_call_function"

"main$11_recursively_call_function":              ; preds = %"main$11_increment_depth_counter"
  call void @"main$11"(i64 %indvars.iv.next.i208)
  ret void

"main$11_return_from_recursive_function$0":       ; preds = %"main$11_latch$0"
  ret void
}

define void @"main$10"(<4 x i32> %arg, <4 x i32> %arg1, <4 x i32> %arg2, <4 x i32> %arg3, i64 %arg4) {
"main$10_latch$0":
  %offset.idx = or i64 %arg4, 1
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$161"
  %tmp5 = getelementptr inbounds i32, i32* %tmp, i64 %offset.idx
  %tmp6 = bitcast i32* %tmp5 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %tmp6, align 4, !tbaa !5
  %tmp7 = getelementptr i32, i32* %tmp5, i64 4
  %tmp8 = bitcast i32* %tmp7 to <4 x i32>*
  %wide.load363 = load <4 x i32>, <4 x i32>* %tmp8, align 4, !tbaa !5
  %tmp9 = icmp sgt <4 x i32> %wide.load, %arg2
  %tmp10 = icmp sgt <4 x i32> %wide.load363, %arg
  %tmp11 = select <4 x i1> %tmp9, <4 x i32> %wide.load, <4 x i32> %arg2
  %tmp12 = select <4 x i1> %tmp10, <4 x i32> %wide.load363, <4 x i32> %arg
  %tmp13 = icmp slt <4 x i32> %wide.load, %arg3
  %tmp14 = icmp slt <4 x i32> %wide.load363, %arg1
  %tmp15 = select <4 x i1> %tmp13, <4 x i32> %wide.load, <4 x i32> %arg3
  %tmp16 = select <4 x i1> %tmp14, <4 x i32> %wide.load363, <4 x i32> %arg1
  %index.next = add i64 %arg4, 8
  %offset.idx.1 = or i64 %index.next, 1
  %tmp17 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$161"
  %tmp18 = getelementptr inbounds i32, i32* %tmp17, i64 %offset.idx.1
  %tmp19 = bitcast i32* %tmp18 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %tmp19, align 4, !tbaa !5
  %tmp20 = getelementptr i32, i32* %tmp18, i64 4
  %tmp21 = bitcast i32* %tmp20 to <4 x i32>*
  %wide.load363.1 = load <4 x i32>, <4 x i32>* %tmp21, align 4, !tbaa !5
  %tmp22 = icmp sgt <4 x i32> %wide.load.1, %tmp11
  %tmp23 = icmp sgt <4 x i32> %wide.load363.1, %tmp12
  %tmp24 = select <4 x i1> %tmp22, <4 x i32> %wide.load.1, <4 x i32> %tmp11
  %tmp25 = select <4 x i1> %tmp23, <4 x i32> %wide.load363.1, <4 x i32> %tmp12
  %tmp26 = icmp slt <4 x i32> %wide.load.1, %tmp15
  %tmp27 = icmp slt <4 x i32> %wide.load363.1, %tmp16
  %tmp28 = select <4 x i1> %tmp26, <4 x i32> %wide.load.1, <4 x i32> %tmp15
  %tmp29 = select <4 x i1> %tmp27, <4 x i32> %wide.load363.1, <4 x i32> %tmp16
  %index.next.1 = add i64 %arg4, 16
  %tmp30 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$160"
  %tmp31 = icmp eq i64 %index.next.1, %tmp30
  br i1 %tmp31, label %"main$10_return_from_recursive_function$0", label %"main$10_increment_depth_counter", !llvm.loop !18

"main$10_increment_depth_counter":                ; preds = %"main$10_latch$0"
  br label %"main$10_recursively_call_function"

"main$10_recursively_call_function":              ; preds = %"main$10_increment_depth_counter"
  call void @"main$10"(<4 x i32> %tmp25, <4 x i32> %tmp29, <4 x i32> %tmp24, <4 x i32> %tmp28, i64 %index.next.1)
  ret void

"main$10_return_from_recursive_function$0":       ; preds = %"main$10_latch$0"
  %tmp32 = getelementptr %9, %9* @"main$10_return_value_struct", i32 0, i32 0
  store <4 x i32> %tmp24, <4 x i32>* %tmp32
  %tmp33 = getelementptr %9, %9* @"main$10_return_value_struct", i32 0, i32 1
  store <4 x i32> %tmp28, <4 x i32>* %tmp33
  %tmp34 = getelementptr %9, %9* @"main$10_return_value_struct", i32 0, i32 2
  store <4 x i32> %tmp25, <4 x i32>* %tmp34
  %tmp35 = getelementptr %9, %9* @"main$10_return_value_struct", i32 0, i32 3
  store <4 x i32> %tmp29, <4 x i32>* %tmp35
  ret void
}

define void @"main$9"(i32 %arg, i32 %arg1, i64 %arg2) {
"main$9_latch$0":
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$161"
  %arrayidx2.phi.trans.insert.i225 = getelementptr inbounds i32, i32* %tmp, i64 %arg2
  %.pre.i226 = load i32, i32* %arrayidx2.phi.trans.insert.i225, align 4, !tbaa !5
  %cmp3.i217 = icmp sgt i32 %.pre.i226, %arg
  %.max_r.0.i218 = select i1 %cmp3.i217, i32 %.pre.i226, i32 %arg
  %cmp8.i219 = icmp slt i32 %.pre.i226, %arg1
  %min_r.1.i220 = select i1 %cmp8.i219, i32 %.pre.i226, i32 %arg1
  %indvars.iv.next55.i221 = add nuw nsw i64 %arg2, 1
  %lftr.wideiv339 = trunc i64 %indvars.iv.next55.i221 to i32
  %tmp3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$162"
  %exitcond340 = icmp eq i32 %lftr.wideiv339, %tmp3
  br i1 %exitcond340, label %"main$9_return_from_recursive_function$0", label %"main$9_increment_depth_counter", !llvm.loop !19

"main$9_increment_depth_counter":                 ; preds = %"main$9_latch$0"
  br label %"main$9_recursively_call_function"

"main$9_recursively_call_function":               ; preds = %"main$9_increment_depth_counter"
  call void @"main$9"(i32 %.max_r.0.i218, i32 %min_r.1.i220, i64 %indvars.iv.next55.i221)
  ret void

"main$9_return_from_recursive_function$0":        ; preds = %"main$9_latch$0"
  %tmp4 = getelementptr %10, %10* @"main$9_return_value_struct", i32 0, i32 0
  store i32 %.max_r.0.i218, i32* %tmp4
  %tmp5 = getelementptr %10, %10* @"main$9_return_value_struct", i32 0, i32 1
  store i32 %min_r.1.i220, i32* %tmp5
  ret void
}

define void @"main$8"(i64 %arg) {
"main$8_latch$0":
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$161"
  %arrayidx17.phi.trans.insert.i240 = getelementptr inbounds i32, i32* %tmp, i64 %arg
  %.pre58.i241 = load i32, i32* %arrayidx17.phi.trans.insert.i240, align 4, !tbaa !5
  %tmp1 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$165"
  %sub18.i231 = sub nsw i32 %.pre58.i241, %tmp1
  %mul.i232 = mul nsw i32 %sub18.i231, 255
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$164"
  %div.i233 = sdiv i32 %mul.i232, %tmp2
  %conv.i234 = trunc i32 %div.i233 to i8
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$163"
  %arrayidx20.i235 = getelementptr inbounds i8, i8* %tmp3, i64 %arg
  store i8 %conv.i234, i8* %arrayidx20.i235, align 1, !tbaa !7
  %indvars.iv.next.i236 = add nuw nsw i64 %arg, 1
  %tmp4 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$161"
  %arrayidx17.phi.trans.insert.i240.1 = getelementptr inbounds i32, i32* %tmp4, i64 %indvars.iv.next.i236
  %.pre58.i241.1 = load i32, i32* %arrayidx17.phi.trans.insert.i240.1, align 4, !tbaa !5
  %tmp5 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$165"
  %sub18.i231.1 = sub nsw i32 %.pre58.i241.1, %tmp5
  %mul.i232.1 = mul nsw i32 %sub18.i231.1, 255
  %tmp6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$164"
  %div.i233.1 = sdiv i32 %mul.i232.1, %tmp6
  %conv.i234.1 = trunc i32 %div.i233.1 to i8
  %tmp7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$163"
  %arrayidx20.i235.1 = getelementptr inbounds i8, i8* %tmp7, i64 %indvars.iv.next.i236
  store i8 %conv.i234.1, i8* %arrayidx20.i235.1, align 1, !tbaa !7
  %indvars.iv.next.i236.1 = add nsw i64 %arg, 2
  %lftr.wideiv337.1 = trunc i64 %indvars.iv.next.i236.1 to i32
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$162"
  %exitcond338.1 = icmp eq i32 %lftr.wideiv337.1, %tmp8
  br i1 %exitcond338.1, label %"main$8_return_from_recursive_function$0", label %"main$8_increment_depth_counter"

"main$8_increment_depth_counter":                 ; preds = %"main$8_latch$0"
  br label %"main$8_recursively_call_function"

"main$8_recursively_call_function":               ; preds = %"main$8_increment_depth_counter"
  call void @"main$8"(i64 %indvars.iv.next.i236.1)
  ret void

"main$8_return_from_recursive_function$0":        ; preds = %"main$8_latch$0"
  ret void
}

define void @"main$7"(i64 %arg) {
"main$7_header":
  %tmp = load [15000 x %struct.anon]*, [15000 x %struct.anon]** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$170"
  %y.i = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %tmp, i64 0, i64 %arg, i32 1
  %tmp1 = load i32, i32* %y.i, align 4, !tbaa !15
  %tmp2 = load [15000 x %struct.anon]*, [15000 x %struct.anon]** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$170"
  %tmp3 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %tmp2, i64 0, i64 %arg, i32 0
  %tmp4 = load i32, i32* %tmp3, align 8
  %tmp5 = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$167"
  br i1 %tmp5, label %if.then.i, label %if.else.i

if.else.i:                                        ; preds = %"main$7_header"
  %tmp6 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$166"
  %mul23.i = mul nsw i32 %tmp1, %tmp6
  %idx.ext24.i = sext i32 %mul23.i to i64
  %tmp7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$169"
  %add.ptr25.i = getelementptr inbounds i8, i8* %tmp7, i64 %idx.ext24.i
  %idx.ext29.i = sext i32 %tmp4 to i64
  %add.ptr30.i = getelementptr inbounds i8, i8* %add.ptr25.i, i64 %idx.ext29.i
  store i8 0, i8* %add.ptr30.i, align 1, !tbaa !7
  br label %"main$7_latch$0"

if.then.i:                                        ; preds = %"main$7_header"
  %sub.i245 = add nsw i32 %tmp1, -1
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$166"
  %mul.i246 = mul nsw i32 %sub.i245, %tmp8
  %idx.ext.i247 = sext i32 %mul.i246 to i64
  %tmp9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$169"
  %add.ptr.i248 = getelementptr inbounds i8, i8* %tmp9, i64 %idx.ext.i247
  %idx.ext6.i = sext i32 %tmp4 to i64
  %add.ptr7.i = getelementptr inbounds i8, i8* %add.ptr.i248, i64 %idx.ext6.i
  %add.ptr8.i = getelementptr inbounds i8, i8* %add.ptr7.i, i64 -1
  %incdec.ptr.i249 = getelementptr inbounds i8, i8* %add.ptr8.i, i64 1
  store i8 -1, i8* %add.ptr8.i, align 1, !tbaa !7
  %incdec.ptr9.i = getelementptr inbounds i8, i8* %incdec.ptr.i249, i64 1
  store i8 -1, i8* %incdec.ptr.i249, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr9.i, align 1, !tbaa !7
  %tmp10 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$168"
  %add.ptr12.i = getelementptr inbounds i8, i8* %incdec.ptr9.i, i64 %tmp10
  %incdec.ptr13.i = getelementptr inbounds i8, i8* %add.ptr12.i, i64 1
  store i8 -1, i8* %add.ptr12.i, align 1, !tbaa !7
  %incdec.ptr14.i = getelementptr inbounds i8, i8* %incdec.ptr13.i, i64 1
  store i8 0, i8* %incdec.ptr13.i, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr14.i, align 1, !tbaa !7
  %tmp11 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$168"
  %add.ptr17.i = getelementptr inbounds i8, i8* %incdec.ptr14.i, i64 %tmp11
  %incdec.ptr18.i = getelementptr inbounds i8, i8* %add.ptr17.i, i64 1
  store i8 -1, i8* %add.ptr17.i, align 1, !tbaa !7
  %incdec.ptr19.i = getelementptr inbounds i8, i8* %incdec.ptr18.i, i64 1
  store i8 -1, i8* %incdec.ptr18.i, align 1, !tbaa !7
  store i8 -1, i8* %incdec.ptr19.i, align 1, !tbaa !7
  br label %"main$7_latch$0"

"main$7_latch$0":                                 ; preds = %if.then.i, %if.else.i
  %indvars.iv.next.i250 = add nuw nsw i64 %arg, 1
  %tmp12 = load [15000 x %struct.anon]*, [15000 x %struct.anon]** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$170"
  %info.i = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %tmp12, i64 0, i64 %indvars.iv.next.i250, i32 2
  %tmp13 = load i32, i32* %info.i, align 8, !tbaa !8
  %cmp.i251 = icmp eq i32 %tmp13, 7
  br i1 %cmp.i251, label %"main$7_return_from_recursive_function$0", label %"main$7_increment_depth_counter"

"main$7_increment_depth_counter":                 ; preds = %"main$7_latch$0"
  br label %"main$7_recursively_call_function"

"main$7_recursively_call_function":               ; preds = %"main$7_increment_depth_counter"
  call void @"main$7"(i64 %indvars.iv.next.i250)
  ret void

"main$7_return_from_recursive_function$0":        ; preds = %"main$7_latch$0"
  ret void
}

define void @"susan_principle$0$0"(i32 %arg, i64 %arg1) {
"susan_principle$0$0_header":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$172"
  %add.ptr11 = getelementptr inbounds i8, i8* %tmp, i64 %arg1
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$171"
  %add = add nsw i32 %arg, %tmp2
  %idxprom = sext i32 %add to i64
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$17"
  %arrayidx = getelementptr inbounds i8, i8* %tmp3, i64 %idxprom
  %tmp4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idx.ext15 = zext i8 %tmp4 to i64
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$20"
  %add.ptr16 = getelementptr inbounds i8, i8* %tmp5, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %tmp6 = load i8, i8* %add.ptr12, align 1, !tbaa !7
  %idx.ext18 = zext i8 %tmp6 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %tmp7 = load i8, i8* %add.ptr19, align 1, !tbaa !7
  %conv20 = zext i8 %tmp7 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %tmp8 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %idx.ext24 = zext i8 %tmp8 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %tmp9 = load i8, i8* %add.ptr26, align 1, !tbaa !7
  %conv27 = zext i8 %tmp9 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %tmp10 = load i8, i8* %incdec.ptr22, align 1, !tbaa !7
  %idx.ext30 = zext i8 %tmp10 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %tmp11 = load i8, i8* %add.ptr32, align 1, !tbaa !7
  %conv33 = zext i8 %tmp11 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %tmp12 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$19"
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %tmp12
  %incdec.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 1
  %tmp13 = load i8, i8* %add.ptr37, align 1, !tbaa !7
  %idx.ext40 = zext i8 %tmp13 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg41
  %tmp14 = load i8, i8* %add.ptr42, align 1, !tbaa !7
  %conv43 = zext i8 %tmp14 to i32
  %add44 = add nuw nsw i32 %add34, %conv43
  %incdec.ptr45 = getelementptr inbounds i8, i8* %incdec.ptr38, i64 1
  %tmp15 = load i8, i8* %incdec.ptr38, align 1, !tbaa !7
  %idx.ext47 = zext i8 %tmp15 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg48
  %tmp16 = load i8, i8* %add.ptr49, align 1, !tbaa !7
  %conv50 = zext i8 %tmp16 to i32
  %add51 = add nuw nsw i32 %add44, %conv50
  %incdec.ptr52 = getelementptr inbounds i8, i8* %incdec.ptr45, i64 1
  %tmp17 = load i8, i8* %incdec.ptr45, align 1, !tbaa !7
  %idx.ext54 = zext i8 %tmp17 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg55
  %tmp18 = load i8, i8* %add.ptr56, align 1, !tbaa !7
  %conv57 = zext i8 %tmp18 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds i8, i8* %incdec.ptr52, i64 1
  %tmp19 = load i8, i8* %incdec.ptr52, align 1, !tbaa !7
  %idx.ext61 = zext i8 %tmp19 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg62
  %tmp20 = load i8, i8* %add.ptr63, align 1, !tbaa !7
  %conv64 = zext i8 %tmp20 to i32
  %add65 = add nsw i32 %add58, %conv64
  %tmp21 = load i8, i8* %incdec.ptr59, align 1, !tbaa !7
  %idx.ext67 = zext i8 %tmp21 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg68
  %tmp22 = load i8, i8* %add.ptr69, align 1, !tbaa !7
  %conv70 = zext i8 %tmp22 to i32
  %add71 = add nsw i32 %add65, %conv70
  %tmp23 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$16"
  %add.ptr74 = getelementptr inbounds i8, i8* %incdec.ptr59, i64 %tmp23
  %incdec.ptr75 = getelementptr inbounds i8, i8* %add.ptr74, i64 1
  %tmp24 = load i8, i8* %add.ptr74, align 1, !tbaa !7
  %idx.ext77 = zext i8 %tmp24 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg78
  %tmp25 = load i8, i8* %add.ptr79, align 1, !tbaa !7
  %conv80 = zext i8 %tmp25 to i32
  %add81 = add nsw i32 %add71, %conv80
  %incdec.ptr82 = getelementptr inbounds i8, i8* %incdec.ptr75, i64 1
  %tmp26 = load i8, i8* %incdec.ptr75, align 1, !tbaa !7
  %idx.ext84 = zext i8 %tmp26 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg85
  %tmp27 = load i8, i8* %add.ptr86, align 1, !tbaa !7
  %conv87 = zext i8 %tmp27 to i32
  %add88 = add nsw i32 %add81, %conv87
  %incdec.ptr89 = getelementptr inbounds i8, i8* %incdec.ptr82, i64 1
  %tmp28 = load i8, i8* %incdec.ptr82, align 1, !tbaa !7
  %idx.ext91 = zext i8 %tmp28 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg92
  %tmp29 = load i8, i8* %add.ptr93, align 1, !tbaa !7
  %conv94 = zext i8 %tmp29 to i32
  %add95 = add nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds i8, i8* %incdec.ptr89, i64 1
  %tmp30 = load i8, i8* %incdec.ptr89, align 1, !tbaa !7
  %idx.ext98 = zext i8 %tmp30 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg99
  %tmp31 = load i8, i8* %add.ptr100, align 1, !tbaa !7
  %conv101 = zext i8 %tmp31 to i32
  %add102 = add nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds i8, i8* %incdec.ptr96, i64 1
  %tmp32 = load i8, i8* %incdec.ptr96, align 1, !tbaa !7
  %idx.ext105 = zext i8 %tmp32 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg106
  %tmp33 = load i8, i8* %add.ptr107, align 1, !tbaa !7
  %conv108 = zext i8 %tmp33 to i32
  %add109 = add nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds i8, i8* %incdec.ptr103, i64 1
  %tmp34 = load i8, i8* %incdec.ptr103, align 1, !tbaa !7
  %idx.ext112 = zext i8 %tmp34 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg113
  %tmp35 = load i8, i8* %add.ptr114, align 1, !tbaa !7
  %conv115 = zext i8 %tmp35 to i32
  %add116 = add nsw i32 %add109, %conv115
  %tmp36 = load i8, i8* %incdec.ptr110, align 1, !tbaa !7
  %idx.ext118 = zext i8 %tmp36 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg119
  %tmp37 = load i8, i8* %add.ptr120, align 1, !tbaa !7
  %conv121 = zext i8 %tmp37 to i32
  %add122 = add nsw i32 %add116, %conv121
  %tmp38 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$15"
  %add.ptr125 = getelementptr inbounds i8, i8* %incdec.ptr110, i64 %tmp38
  %incdec.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 1
  %tmp39 = load i8, i8* %add.ptr125, align 1, !tbaa !7
  %idx.ext128 = zext i8 %tmp39 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg129
  %tmp40 = load i8, i8* %add.ptr130, align 1, !tbaa !7
  %conv131 = zext i8 %tmp40 to i32
  %add132 = add nsw i32 %add122, %conv131
  %incdec.ptr133 = getelementptr inbounds i8, i8* %incdec.ptr126, i64 1
  %tmp41 = load i8, i8* %incdec.ptr126, align 1, !tbaa !7
  %idx.ext135 = zext i8 %tmp41 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg136
  %tmp42 = load i8, i8* %add.ptr137, align 1, !tbaa !7
  %conv138 = zext i8 %tmp42 to i32
  %add139 = add nsw i32 %add132, %conv138
  %tmp43 = load i8, i8* %incdec.ptr133, align 1, !tbaa !7
  %idx.ext141 = zext i8 %tmp43 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg142
  %tmp44 = load i8, i8* %add.ptr143, align 1, !tbaa !7
  %conv144 = zext i8 %tmp44 to i32
  %add145 = add nsw i32 %add139, %conv144
  %add.ptr146 = getelementptr inbounds i8, i8* %incdec.ptr133, i64 2
  %incdec.ptr147 = getelementptr inbounds i8, i8* %add.ptr146, i64 1
  %tmp45 = load i8, i8* %add.ptr146, align 1, !tbaa !7
  %idx.ext149 = zext i8 %tmp45 to i64
  %idx.neg150 = sub nsw i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg150
  %tmp46 = load i8, i8* %add.ptr151, align 1, !tbaa !7
  %conv152 = zext i8 %tmp46 to i32
  %add153 = add nsw i32 %add145, %conv152
  %incdec.ptr154 = getelementptr inbounds i8, i8* %incdec.ptr147, i64 1
  %tmp47 = load i8, i8* %incdec.ptr147, align 1, !tbaa !7
  %idx.ext156 = zext i8 %tmp47 to i64
  %idx.neg157 = sub nsw i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg157
  %tmp48 = load i8, i8* %add.ptr158, align 1, !tbaa !7
  %conv159 = zext i8 %tmp48 to i32
  %add160 = add nsw i32 %add153, %conv159
  %tmp49 = load i8, i8* %incdec.ptr154, align 1, !tbaa !7
  %idx.ext162 = zext i8 %tmp49 to i64
  %idx.neg163 = sub nsw i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg163
  %tmp50 = load i8, i8* %add.ptr164, align 1, !tbaa !7
  %conv165 = zext i8 %tmp50 to i32
  %add166 = add nsw i32 %add160, %conv165
  %tmp51 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$15"
  %add.ptr169 = getelementptr inbounds i8, i8* %incdec.ptr154, i64 %tmp51
  %incdec.ptr170 = getelementptr inbounds i8, i8* %add.ptr169, i64 1
  %tmp52 = load i8, i8* %add.ptr169, align 1, !tbaa !7
  %idx.ext172 = zext i8 %tmp52 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg173
  %tmp53 = load i8, i8* %add.ptr174, align 1, !tbaa !7
  %conv175 = zext i8 %tmp53 to i32
  %add176 = add nsw i32 %add166, %conv175
  %incdec.ptr177 = getelementptr inbounds i8, i8* %incdec.ptr170, i64 1
  %tmp54 = load i8, i8* %incdec.ptr170, align 1, !tbaa !7
  %idx.ext179 = zext i8 %tmp54 to i64
  %idx.neg180 = sub nsw i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg180
  %tmp55 = load i8, i8* %add.ptr181, align 1, !tbaa !7
  %conv182 = zext i8 %tmp55 to i32
  %add183 = add nsw i32 %add176, %conv182
  %incdec.ptr184 = getelementptr inbounds i8, i8* %incdec.ptr177, i64 1
  %tmp56 = load i8, i8* %incdec.ptr177, align 1, !tbaa !7
  %idx.ext186 = zext i8 %tmp56 to i64
  %idx.neg187 = sub nsw i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg187
  %tmp57 = load i8, i8* %add.ptr188, align 1, !tbaa !7
  %conv189 = zext i8 %tmp57 to i32
  %add190 = add nsw i32 %add183, %conv189
  %incdec.ptr191 = getelementptr inbounds i8, i8* %incdec.ptr184, i64 1
  %tmp58 = load i8, i8* %incdec.ptr184, align 1, !tbaa !7
  %idx.ext193 = zext i8 %tmp58 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg194
  %tmp59 = load i8, i8* %add.ptr195, align 1, !tbaa !7
  %conv196 = zext i8 %tmp59 to i32
  %add197 = add nsw i32 %add190, %conv196
  %incdec.ptr198 = getelementptr inbounds i8, i8* %incdec.ptr191, i64 1
  %tmp60 = load i8, i8* %incdec.ptr191, align 1, !tbaa !7
  %idx.ext200 = zext i8 %tmp60 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg201
  %tmp61 = load i8, i8* %add.ptr202, align 1, !tbaa !7
  %conv203 = zext i8 %tmp61 to i32
  %add204 = add nsw i32 %add197, %conv203
  %incdec.ptr205 = getelementptr inbounds i8, i8* %incdec.ptr198, i64 1
  %tmp62 = load i8, i8* %incdec.ptr198, align 1, !tbaa !7
  %idx.ext207 = zext i8 %tmp62 to i64
  %idx.neg208 = sub nsw i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg208
  %tmp63 = load i8, i8* %add.ptr209, align 1, !tbaa !7
  %conv210 = zext i8 %tmp63 to i32
  %add211 = add nsw i32 %add204, %conv210
  %tmp64 = load i8, i8* %incdec.ptr205, align 1, !tbaa !7
  %idx.ext213 = zext i8 %tmp64 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg214
  %tmp65 = load i8, i8* %add.ptr215, align 1, !tbaa !7
  %conv216 = zext i8 %tmp65 to i32
  %add217 = add nsw i32 %add211, %conv216
  %tmp66 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$16"
  %add.ptr220 = getelementptr inbounds i8, i8* %incdec.ptr205, i64 %tmp66
  %incdec.ptr221 = getelementptr inbounds i8, i8* %add.ptr220, i64 1
  %tmp67 = load i8, i8* %add.ptr220, align 1, !tbaa !7
  %idx.ext223 = zext i8 %tmp67 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg224
  %tmp68 = load i8, i8* %add.ptr225, align 1, !tbaa !7
  %conv226 = zext i8 %tmp68 to i32
  %add227 = add nsw i32 %add217, %conv226
  %incdec.ptr228 = getelementptr inbounds i8, i8* %incdec.ptr221, i64 1
  %tmp69 = load i8, i8* %incdec.ptr221, align 1, !tbaa !7
  %idx.ext230 = zext i8 %tmp69 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg231
  %tmp70 = load i8, i8* %add.ptr232, align 1, !tbaa !7
  %conv233 = zext i8 %tmp70 to i32
  %add234 = add nsw i32 %add227, %conv233
  %incdec.ptr235 = getelementptr inbounds i8, i8* %incdec.ptr228, i64 1
  %tmp71 = load i8, i8* %incdec.ptr228, align 1, !tbaa !7
  %idx.ext237 = zext i8 %tmp71 to i64
  %idx.neg238 = sub nsw i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg238
  %tmp72 = load i8, i8* %add.ptr239, align 1, !tbaa !7
  %conv240 = zext i8 %tmp72 to i32
  %add241 = add nsw i32 %add234, %conv240
  %incdec.ptr242 = getelementptr inbounds i8, i8* %incdec.ptr235, i64 1
  %tmp73 = load i8, i8* %incdec.ptr235, align 1, !tbaa !7
  %idx.ext244 = zext i8 %tmp73 to i64
  %idx.neg245 = sub nsw i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg245
  %tmp74 = load i8, i8* %add.ptr246, align 1, !tbaa !7
  %conv247 = zext i8 %tmp74 to i32
  %add248 = add nsw i32 %add241, %conv247
  %tmp75 = load i8, i8* %incdec.ptr242, align 1, !tbaa !7
  %idx.ext250 = zext i8 %tmp75 to i64
  %idx.neg251 = sub nsw i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg251
  %tmp76 = load i8, i8* %add.ptr252, align 1, !tbaa !7
  %conv253 = zext i8 %tmp76 to i32
  %add254 = add nsw i32 %add248, %conv253
  %tmp77 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$19"
  %add.ptr257 = getelementptr inbounds i8, i8* %incdec.ptr242, i64 %tmp77
  %incdec.ptr258 = getelementptr inbounds i8, i8* %add.ptr257, i64 1
  %tmp78 = load i8, i8* %add.ptr257, align 1, !tbaa !7
  %idx.ext260 = zext i8 %tmp78 to i64
  %idx.neg261 = sub nsw i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg261
  %tmp79 = load i8, i8* %add.ptr262, align 1, !tbaa !7
  %conv263 = zext i8 %tmp79 to i32
  %add264 = add nsw i32 %add254, %conv263
  %incdec.ptr265 = getelementptr inbounds i8, i8* %incdec.ptr258, i64 1
  %tmp80 = load i8, i8* %incdec.ptr258, align 1, !tbaa !7
  %idx.ext267 = zext i8 %tmp80 to i64
  %idx.neg268 = sub nsw i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg268
  %tmp81 = load i8, i8* %add.ptr269, align 1, !tbaa !7
  %conv270 = zext i8 %tmp81 to i32
  %add271 = add nsw i32 %add264, %conv270
  %tmp82 = load i8, i8* %incdec.ptr265, align 1, !tbaa !7
  %idx.ext273 = zext i8 %tmp82 to i64
  %idx.neg274 = sub nsw i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg274
  %tmp83 = load i8, i8* %add.ptr275, align 1, !tbaa !7
  %conv276 = zext i8 %tmp83 to i32
  %add277 = add nsw i32 %add271, %conv276
  %tmp84 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$14"
  %cmp278 = icmp sgt i32 %add277, %tmp84
  br i1 %cmp278, label %"susan_principle$0$0_latch$0", label %if.then

if.then:                                          ; preds = %"susan_principle$0$0_header"
  %tmp85 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$14"
  %sub280 = sub nsw i32 %tmp85, %add277
  %tmp86 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$13"
  %arrayidx284 = getelementptr inbounds i32, i32* %tmp86, i64 %idxprom
  store i32 %sub280, i32* %arrayidx284, align 4, !tbaa !5
  br label %"susan_principle$0$0_latch$0"

"susan_principle$0$0_latch$0":                    ; preds = %if.then, %"susan_principle$0$0_header"
  %indvars.iv.next = add nuw nsw i64 %arg1, 1
  %inc = add nuw nsw i32 %arg, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %tmp87 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$12"
  %exitcond = icmp eq i32 %lftr.wideiv, %tmp87
  br i1 %exitcond, label %"susan_principle$0$0_return_from_recursive_function$0", label %"susan_principle$0$0_increment_depth_counter"

"susan_principle$0$0_increment_depth_counter":    ; preds = %"susan_principle$0$0_latch$0"
  br label %"susan_principle$0$0_recursively_call_function"

"susan_principle$0$0_recursively_call_function":  ; preds = %"susan_principle$0$0_increment_depth_counter"
  call void @"susan_principle$0$0"(i32 %inc, i64 %indvars.iv.next)
  ret void

"susan_principle$0$0_return_from_recursive_function$0": ; preds = %"susan_principle$0$0_latch$0"
  ret void
}

define void @"susan_principle_small$0$0"(i32 %arg, i64 %arg1) {
"susan_principle_small$0$0_header":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$174"
  %add.ptr11 = getelementptr inbounds i8, i8* %tmp, i64 %arg1
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$173"
  %add = add nsw i32 %arg, %tmp2
  %idxprom = sext i32 %add to i64
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$27"
  %arrayidx = getelementptr inbounds i8, i8* %tmp3, i64 %idxprom
  %tmp4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idx.ext15 = zext i8 %tmp4 to i64
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$26"
  %add.ptr16 = getelementptr inbounds i8, i8* %tmp5, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %tmp6 = load i8, i8* %add.ptr12, align 1, !tbaa !7
  %idx.ext18 = zext i8 %tmp6 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %tmp7 = load i8, i8* %add.ptr19, align 1, !tbaa !7
  %conv20 = zext i8 %tmp7 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %tmp8 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %idx.ext24 = zext i8 %tmp8 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %tmp9 = load i8, i8* %add.ptr26, align 1, !tbaa !7
  %conv27 = zext i8 %tmp9 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %tmp10 = load i8, i8* %incdec.ptr22, align 1, !tbaa !7
  %idx.ext30 = zext i8 %tmp10 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %tmp11 = load i8, i8* %add.ptr32, align 1, !tbaa !7
  %conv33 = zext i8 %tmp11 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %tmp12 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$25"
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %tmp12
  %tmp13 = load i8, i8* %add.ptr37, align 1, !tbaa !7
  %idx.ext39 = zext i8 %tmp13 to i64
  %idx.neg40 = sub nsw i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg40
  %tmp14 = load i8, i8* %add.ptr41, align 1, !tbaa !7
  %conv42 = zext i8 %tmp14 to i32
  %add43 = add nuw nsw i32 %add34, %conv42
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr37, i64 2
  %tmp15 = load i8, i8* %add.ptr44, align 1, !tbaa !7
  %idx.ext46 = zext i8 %tmp15 to i64
  %idx.neg47 = sub nsw i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg47
  %tmp16 = load i8, i8* %add.ptr48, align 1, !tbaa !7
  %conv49 = zext i8 %tmp16 to i32
  %add50 = add nuw nsw i32 %add43, %conv49
  %tmp17 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$25"
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr44, i64 %tmp17
  %incdec.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 1
  %tmp18 = load i8, i8* %add.ptr53, align 1, !tbaa !7
  %idx.ext56 = zext i8 %tmp18 to i64
  %idx.neg57 = sub nsw i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg57
  %tmp19 = load i8, i8* %add.ptr58, align 1, !tbaa !7
  %conv59 = zext i8 %tmp19 to i32
  %add60 = add nuw nsw i32 %add50, %conv59
  %incdec.ptr61 = getelementptr inbounds i8, i8* %incdec.ptr54, i64 1
  %tmp20 = load i8, i8* %incdec.ptr54, align 1, !tbaa !7
  %idx.ext63 = zext i8 %tmp20 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg64
  %tmp21 = load i8, i8* %add.ptr65, align 1, !tbaa !7
  %conv66 = zext i8 %tmp21 to i32
  %add67 = add nsw i32 %add60, %conv66
  %tmp22 = load i8, i8* %incdec.ptr61, align 1, !tbaa !7
  %idx.ext69 = zext i8 %tmp22 to i64
  %idx.neg70 = sub nsw i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg70
  %tmp23 = load i8, i8* %add.ptr71, align 1, !tbaa !7
  %conv72 = zext i8 %tmp23 to i32
  %add73 = add nsw i32 %add67, %conv72
  %cmp74 = icmp slt i32 %add73, 731
  br i1 %cmp74, label %if.then, label %"susan_principle_small$0$0_latch$0"

if.then:                                          ; preds = %"susan_principle_small$0$0_header"
  %sub76 = sub nsw i32 730, %add73
  %tmp24 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$24"
  %arrayidx80 = getelementptr inbounds i32, i32* %tmp24, i64 %idxprom
  store i32 %sub76, i32* %arrayidx80, align 4, !tbaa !5
  br label %"susan_principle_small$0$0_latch$0"

"susan_principle_small$0$0_latch$0":              ; preds = %if.then, %"susan_principle_small$0$0_header"
  %indvars.iv.next = add nuw nsw i64 %arg1, 1
  %inc = add nuw nsw i32 %arg, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %tmp25 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$23"
  %exitcond = icmp eq i32 %lftr.wideiv, %tmp25
  br i1 %exitcond, label %"susan_principle_small$0$0_return_from_recursive_function$0", label %"susan_principle_small$0$0_increment_depth_counter"

"susan_principle_small$0$0_increment_depth_counter": ; preds = %"susan_principle_small$0$0_latch$0"
  br label %"susan_principle_small$0$0_recursively_call_function"

"susan_principle_small$0$0_recursively_call_function": ; preds = %"susan_principle_small$0$0_increment_depth_counter"
  call void @"susan_principle_small$0$0"(i32 %inc, i64 %indvars.iv.next)
  ret void

"susan_principle_small$0$0_return_from_recursive_function$0": ; preds = %"susan_principle_small$0$0_latch$0"
  ret void
}

define void @"enlarge$0$0"(i32 %arg) {
"enlarge$0$0_latch$0":
  %tmp = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$34"
  %tmp1 = load i32, i32* %tmp, align 4, !tbaa !5
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$40"
  %add53 = add nsw i32 %tmp1, %tmp2
  %mul54 = mul nsw i32 %add53, %arg
  %tmp3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36"
  %add55 = add nsw i32 %mul54, %tmp3
  %tmp4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$176"
  %add56 = add nsw i32 %add55, %tmp4
  %idxprom = sext i32 %add56 to i64
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  %arrayidx = getelementptr inbounds i8, i8* %tmp5, i64 %idxprom
  %tmp6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %tmp7 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$175"
  %sub62 = add i32 %tmp7, %add55
  %idxprom63 = sext i32 %sub62 to i64
  %tmp8 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  %arrayidx64 = getelementptr inbounds i8, i8* %tmp8, i64 %idxprom63
  store i8 %tmp6, i8* %arrayidx64, align 1, !tbaa !7
  %tmp9 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$34"
  %tmp10 = load i32, i32* %tmp9, align 4, !tbaa !5
  %tmp11 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$40"
  %add66 = add nsw i32 %tmp10, %tmp11
  %mul67 = mul nsw i32 %add66, %arg
  %tmp12 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$36"
  %add68 = add i32 %tmp10, %tmp12
  %add69 = add i32 %add68, %mul67
  %tmp13 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$175"
  %sub71 = add i32 %tmp13, %add69
  %idxprom72 = sext i32 %sub71 to i64
  %tmp14 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  %arrayidx73 = getelementptr inbounds i8, i8* %tmp14, i64 %idxprom72
  %tmp15 = load i8, i8* %arrayidx73, align 1, !tbaa !7
  %tmp16 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$176"
  %add79 = add nsw i32 %add69, %tmp16
  %idxprom80 = sext i32 %add79 to i64
  %tmp17 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$33"
  %arrayidx81 = getelementptr inbounds i8, i8* %tmp17, i64 %idxprom80
  store i8 %tmp15, i8* %arrayidx81, align 1, !tbaa !7
  %inc83 = add nuw nsw i32 %arg, 1
  %tmp18 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$30"
  %tmp19 = load i32, i32* %tmp18, align 4, !tbaa !5
  %tmp20 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$40"
  %add48 = add nsw i32 %tmp19, %tmp20
  %cmp49 = icmp slt i32 %inc83, %add48
  br i1 %cmp49, label %"enlarge$0$0_increment_depth_counter", label %"enlarge$0$0_return_from_recursive_function$0"

"enlarge$0$0_increment_depth_counter":            ; preds = %"enlarge$0$0_latch$0"
  br label %"enlarge$0$0_recursively_call_function"

"enlarge$0$0_recursively_call_function":          ; preds = %"enlarge$0$0_increment_depth_counter"
  call void @"enlarge$0$0"(i32 %inc83)
  ret void

"enlarge$0$0_return_from_recursive_function$0":   ; preds = %"enlarge$0$0_latch$0"
  %tmp21 = getelementptr %11, %11* @"enlarge$0$0_return_value_struct", i32 0, i32 0
  store i32 %tmp19, i32* %tmp21
  ret void
}

define void @"susan_smoothing$1$0"(i32 %arg, i8* %arg1) {
"susan_smoothing$1$0_latch$0":
  %mul57 = mul nsw i32 %arg, %arg
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$177"
  %add58 = add nuw nsw i32 %mul57, %tmp
  %conv59 = sitofp i32 %add58 to float
  %tmp2 = load float, float* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$42"
  %div = fdiv float %conv59, %tmp2
  %conv60 = fpext float %div to double
  %call61 = tail call double @exp(double %conv60) #6
  %mul62 = fmul double %call61, 1.000000e+02
  %conv63 = fptosi double %mul62 to i32
  %conv64 = trunc i32 %conv63 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %arg1, i64 1
  store i8 %conv64, i8* %arg1, align 1, !tbaa !7
  %inc = add nsw i32 %arg, 1
  %tmp3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  %cmp53 = icmp slt i32 %arg, %tmp3
  br i1 %cmp53, label %"susan_smoothing$1$0_increment_depth_counter", label %"susan_smoothing$1$0_return_from_recursive_function$0"

"susan_smoothing$1$0_increment_depth_counter":    ; preds = %"susan_smoothing$1$0_latch$0"
  br label %"susan_smoothing$1$0_recursively_call_function"

"susan_smoothing$1$0_recursively_call_function":  ; preds = %"susan_smoothing$1$0_increment_depth_counter"
  call void @"susan_smoothing$1$0"(i32 %inc, i8* %incdec.ptr)
  ret void

"susan_smoothing$1$0_return_from_recursive_function$0": ; preds = %"susan_smoothing$1$0_latch$0"
  %tmp4 = getelementptr %12, %12* @"susan_smoothing$1$0_return_value_struct", i32 0, i32 0
  store i8* %incdec.ptr, i8** %tmp4
  ret void
}

define void @"susan_smoothing$0$0"(i8* %arg, i32 %arg1, i64 %arg2) {
"susan_smoothing$0$0_header":
  %tmp = load i8**, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$47"
  %tmp3 = load i8*, i8** %tmp, align 8, !tbaa !1
  %tmp4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$179"
  %mul84 = mul nsw i32 %arg1, %tmp4
  %tmp5 = trunc i64 %arg2 to i32
  %add85 = add nsw i32 %mul84, %tmp5
  %idxprom = sext i32 %add85 to i64
  %arrayidx = getelementptr inbounds i8, i8* %tmp3, i64 %idxprom
  %tmp6 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %conv86 = zext i8 %tmp6 to i32
  %idx.ext87 = zext i8 %tmp6 to i64
  %tmp7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$51"
  %add.ptr88 = getelementptr inbounds i8, i8* %tmp7, i64 %idx.ext87
  %tmp8 = load i1, i1* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$46"
  br i1 %tmp8, label %if.else125, label %for.cond95.preheader.preheader

for.cond95.preheader.preheader:                   ; preds = %"susan_smoothing$0$0_header"
  %tmp9 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$178"
  %mul79 = mul nsw i32 %arg1, %tmp9
  %idx.ext = sext i32 %mul79 to i64
  %add.ptr = getelementptr inbounds i8, i8* %tmp3, i64 %idx.ext
  %add.ptr81 = getelementptr inbounds i8, i8* %add.ptr, i64 %arg2
  %tmp10 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$49"
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr81, i64 %tmp10
  %tmp11 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$43"
  %tmp12 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$48"
  br label %"susan_smoothing$0$0$0_initialize_context"

"susan_smoothing$0$0$0_initialize_context":       ; preds = %for.cond95.preheader.preheader
  store i8* %add.ptr88, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$216"
  br label %"susan_smoothing$0$0$0_call_recursive_function"

"susan_smoothing$0$0$0_call_recursive_function":  ; preds = %"susan_smoothing$0$0$0_initialize_context"
  call void @"susan_smoothing$0$0$0"(i32 %tmp11, i32 0, i8* %add.ptr83, i8* %tmp12, i32 0)
  br label %"susan_smoothing$0$0$0_extract_return_values$0"

"susan_smoothing$0$0$0_extract_return_values$0":  ; preds = %"susan_smoothing$0$0$0_call_recursive_function"
  %tmp13 = getelementptr %18, %18* @"susan_smoothing$0$0$0_return_value_struct", i32 0, i32 0
  %tmp14 = load i32, i32* %tmp13
  %tmp15 = getelementptr %18, %18* @"susan_smoothing$0$0$0_return_value_struct", i32 0, i32 1
  %tmp16 = load i32, i32* %tmp15
  br label %for.end118

for.end118:                                       ; preds = %"susan_smoothing$0$0$0_extract_return_values$0"
  %sub119 = add nsw i32 %tmp14, -10000
  %cmp120 = icmp eq i32 %sub119, 0
  br i1 %cmp120, label %if.then122, label %if.else125

if.then122:                                       ; preds = %for.end118
  %tmp17 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$179"
  %call123 = tail call zeroext i8 @median(i8* %tmp3, i32 %tmp17, i32 %tmp5, i32 %arg1)
  br label %"susan_smoothing$0$0_latch$0"

if.else125:                                       ; preds = %for.end118, %"susan_smoothing$0$0_header"
  %sub119493 = phi i32 [ %sub119, %for.end118 ], [ -10000, %"susan_smoothing$0$0_header" ]
  %total.0.lcssa492 = phi i32 [ %tmp16, %for.end118 ], [ 0, %"susan_smoothing$0$0_header" ]
  %tmp18 = mul nsw i32 %conv86, -10000
  %sub127 = add i32 %total.0.lcssa492, %tmp18
  %div128 = sdiv i32 %sub127, %sub119493
  %conv129 = trunc i32 %div128 to i8
  br label %"susan_smoothing$0$0_latch$0"

"susan_smoothing$0$0_latch$0":                    ; preds = %if.else125, %if.then122
  %storemerge436 = phi i8 [ %conv129, %if.else125 ], [ %call123, %if.then122 ]
  %out.2 = getelementptr inbounds i8, i8* %arg, i64 1
  store i8 %storemerge436, i8* %arg, align 1, !tbaa !7
  %indvars.iv.next = add i64 %arg2, 1
  %tmp19 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$52"
  %tmp20 = load i32, i32* %tmp19, align 4, !tbaa !5
  %tmp21 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  %sub74 = sub nsw i32 %tmp20, %tmp21
  %tmp22 = sext i32 %sub74 to i64
  %cmp75 = icmp slt i64 %indvars.iv.next, %tmp22
  br i1 %cmp75, label %"susan_smoothing$0$0_increment_depth_counter", label %"susan_smoothing$0$0_return_from_recursive_function$0"

"susan_smoothing$0$0_increment_depth_counter":    ; preds = %"susan_smoothing$0$0_latch$0"
  br label %"susan_smoothing$0$0_recursively_call_function"

"susan_smoothing$0$0_recursively_call_function":  ; preds = %"susan_smoothing$0$0_increment_depth_counter"
  call void @"susan_smoothing$0$0"(i8* %out.2, i32 %tmp20, i64 %indvars.iv.next)
  ret void

"susan_smoothing$0$0_return_from_recursive_function$0": ; preds = %"susan_smoothing$0$0_latch$0"
  %tmp23 = getelementptr %13, %13* @"susan_smoothing$0$0_return_value_struct", i32 0, i32 0
  store i8* %out.2, i8** %tmp23
  ret void
}

define void @"susan_smoothing$2$0"(i8* %arg, i32 %arg1, i64 %arg2) {
"susan_smoothing$2$0_header":
  %tmp = load i8**, i8*** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$47"
  %tmp3 = load i8*, i8** %tmp, align 8, !tbaa !1
  %tmp4 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$181"
  %mul150 = mul nsw i32 %arg1, %tmp4
  %idx.ext151 = sext i32 %mul150 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %tmp3, i64 %idx.ext151
  %add.ptr154 = getelementptr inbounds i8, i8* %add.ptr152, i64 %arg2
  %add.ptr155 = getelementptr inbounds i8, i8* %add.ptr154, i64 -1
  %tmp5 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$180"
  %mul156 = mul nsw i32 %arg1, %tmp5
  %tmp6 = trunc i64 %arg2 to i32
  %add157 = add nsw i32 %mul156, %tmp6
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds i8, i8* %tmp3, i64 %idxprom158
  %tmp7 = load i8, i8* %arrayidx159, align 1, !tbaa !7
  %idx.ext161 = zext i8 %tmp7 to i64
  %tmp8 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$51"
  %add.ptr162 = getelementptr inbounds i8, i8* %tmp8, i64 %idx.ext161
  %incdec.ptr163 = getelementptr inbounds i8, i8* %add.ptr155, i64 1
  %tmp9 = load i8, i8* %add.ptr155, align 1, !tbaa !7
  %idx.ext165 = zext i8 %tmp9 to i64
  %idx.neg166 = sub nsw i64 0, %idx.ext165
  %add.ptr167 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg166
  %tmp10 = load i8, i8* %add.ptr167, align 1, !tbaa !7
  %conv168 = zext i8 %tmp10 to i32
  %incdec.ptr172 = getelementptr inbounds i8, i8* %incdec.ptr163, i64 1
  %tmp11 = load i8, i8* %incdec.ptr163, align 1, !tbaa !7
  %idx.ext174 = zext i8 %tmp11 to i64
  %idx.neg175 = sub nsw i64 0, %idx.ext174
  %add.ptr176 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg175
  %tmp12 = load i8, i8* %add.ptr176, align 1, !tbaa !7
  %conv177 = zext i8 %tmp12 to i32
  %tmp13 = load i8, i8* %incdec.ptr172, align 1, !tbaa !7
  %idx.ext182 = zext i8 %tmp13 to i64
  %idx.neg183 = sub nsw i64 0, %idx.ext182
  %add.ptr184 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg183
  %tmp14 = load i8, i8* %add.ptr184, align 1, !tbaa !7
  %conv185 = zext i8 %tmp14 to i32
  %sub189 = add nsw i32 %arg1, -2
  %idx.ext190 = sext i32 %sub189 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %incdec.ptr172, i64 %idx.ext190
  %incdec.ptr192 = getelementptr inbounds i8, i8* %add.ptr191, i64 1
  %tmp15 = load i8, i8* %add.ptr191, align 1, !tbaa !7
  %idx.ext194 = zext i8 %tmp15 to i64
  %idx.neg195 = sub nsw i64 0, %idx.ext194
  %add.ptr196 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg195
  %tmp16 = load i8, i8* %add.ptr196, align 1, !tbaa !7
  %conv197 = zext i8 %tmp16 to i32
  %incdec.ptr201 = getelementptr inbounds i8, i8* %incdec.ptr192, i64 1
  %tmp17 = load i8, i8* %incdec.ptr192, align 1, !tbaa !7
  %idx.ext203 = zext i8 %tmp17 to i64
  %idx.neg204 = sub nsw i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg204
  %tmp18 = load i8, i8* %add.ptr205, align 1, !tbaa !7
  %conv206 = zext i8 %tmp18 to i32
  %tmp19 = load i8, i8* %incdec.ptr201, align 1, !tbaa !7
  %idx.ext211 = zext i8 %tmp19 to i64
  %idx.neg212 = sub nsw i64 0, %idx.ext211
  %add.ptr213 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg212
  %tmp20 = load i8, i8* %add.ptr213, align 1, !tbaa !7
  %conv214 = zext i8 %tmp20 to i32
  %add.ptr220 = getelementptr inbounds i8, i8* %incdec.ptr201, i64 %idx.ext190
  %incdec.ptr221 = getelementptr inbounds i8, i8* %add.ptr220, i64 1
  %tmp21 = load i8, i8* %add.ptr220, align 1, !tbaa !7
  %idx.ext223 = zext i8 %tmp21 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg224
  %tmp22 = load i8, i8* %add.ptr225, align 1, !tbaa !7
  %conv226 = zext i8 %tmp22 to i32
  %incdec.ptr230 = getelementptr inbounds i8, i8* %incdec.ptr221, i64 1
  %tmp23 = load i8, i8* %incdec.ptr221, align 1, !tbaa !7
  %idx.ext232 = zext i8 %tmp23 to i64
  %idx.neg233 = sub nsw i64 0, %idx.ext232
  %add.ptr234 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg233
  %tmp24 = load i8, i8* %add.ptr234, align 1, !tbaa !7
  %conv235 = zext i8 %tmp24 to i32
  %tmp25 = load i8, i8* %incdec.ptr230, align 1, !tbaa !7
  %idx.ext240 = zext i8 %tmp25 to i64
  %idx.neg241 = sub nsw i64 0, %idx.ext240
  %add.ptr242 = getelementptr inbounds i8, i8* %add.ptr162, i64 %idx.neg241
  %tmp26 = load i8, i8* %add.ptr242, align 1, !tbaa !7
  %conv243 = zext i8 %tmp26 to i32
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

if.else253:                                       ; preds = %"susan_smoothing$2$0_header"
  %conv164 = zext i8 %tmp9 to i32
  %mul170 = mul nuw nsw i32 %conv168, %conv164
  %conv173 = zext i8 %tmp11 to i32
  %mul179 = mul nuw nsw i32 %conv177, %conv173
  %conv181 = zext i8 %tmp13 to i32
  %mul187 = mul nuw nsw i32 %conv185, %conv181
  %conv193 = zext i8 %tmp15 to i32
  %mul199 = mul nuw nsw i32 %conv197, %conv193
  %conv202 = zext i8 %tmp17 to i32
  %mul208 = mul nuw nsw i32 %conv206, %conv202
  %conv210 = zext i8 %tmp19 to i32
  %mul216 = mul nuw nsw i32 %conv214, %conv210
  %conv222 = zext i8 %tmp21 to i32
  %mul228 = mul nuw nsw i32 %conv226, %conv222
  %conv231 = zext i8 %tmp23 to i32
  %mul237 = mul nuw nsw i32 %conv235, %conv231
  %conv239 = zext i8 %tmp25 to i32
  %mul245 = mul nuw nsw i32 %conv243, %conv239
  %conv160 = zext i8 %tmp7 to i32
  %tmp27 = mul nsw i32 %conv160, -100
  %add180 = add i32 %mul170, %tmp27
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
  br label %"susan_smoothing$2$0_latch$0"

if.then250:                                       ; preds = %"susan_smoothing$2$0_header"
  %tmp28 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$180"
  %call251 = tail call zeroext i8 @median(i8* %tmp3, i32 %tmp28, i32 %tmp6, i32 %arg1)
  br label %"susan_smoothing$2$0_latch$0"

"susan_smoothing$2$0_latch$0":                    ; preds = %if.then250, %if.else253
  %storemerge = phi i8 [ %conv257, %if.else253 ], [ %call251, %if.then250 ]
  %out.5 = getelementptr inbounds i8, i8* %arg, i64 1
  store i8 %storemerge, i8* %arg, align 1, !tbaa !7
  %indvars.iv.next487 = add nuw nsw i64 %arg2, 1
  %tmp29 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$52"
  %tmp30 = load i32, i32* %tmp29, align 4, !tbaa !5
  %sub145 = add nsw i32 %tmp30, -1
  %tmp31 = sext i32 %sub145 to i64
  %cmp146 = icmp slt i64 %indvars.iv.next487, %tmp31
  br i1 %cmp146, label %"susan_smoothing$2$0_increment_depth_counter", label %"susan_smoothing$2$0_return_from_recursive_function$0"

"susan_smoothing$2$0_increment_depth_counter":    ; preds = %"susan_smoothing$2$0_latch$0"
  br label %"susan_smoothing$2$0_recursively_call_function"

"susan_smoothing$2$0_recursively_call_function":  ; preds = %"susan_smoothing$2$0_increment_depth_counter"
  call void @"susan_smoothing$2$0"(i8* %out.5, i32 %tmp30, i64 %indvars.iv.next487)
  ret void

"susan_smoothing$2$0_return_from_recursive_function$0": ; preds = %"susan_smoothing$2$0_latch$0"
  %tmp32 = getelementptr %14, %14* @"susan_smoothing$2$0_return_value_struct", i32 0, i32 0
  store i8* %out.5, i8** %tmp32
  %tmp33 = getelementptr %14, %14* @"susan_smoothing$2$0_return_value_struct", i32 0, i32 1
  store i32 %tmp30, i32* %tmp33
  ret void
}

define void @"susan_thin$0$0"(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3) {
"susan_thin$0$0_header":
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul = mul nsw i32 %arg2, %tmp
  %add = add nsw i32 %mul, %arg3
  %idxprom = sext i32 %add to i64
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx = getelementptr inbounds i8, i8* %tmp4, i64 %idxprom
  %tmp5 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %cmp5 = icmp ult i8 %tmp5, 8
  br i1 %cmp5, label %if.then, label %"susan_thin$0$0_latch$0"

if.then:                                          ; preds = %"susan_thin$0$0_header"
  %tmp6 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx10 = getelementptr inbounds i32, i32* %tmp6, i64 %idxprom
  %tmp7 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  %sub11 = add i32 %arg2, -1
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul12 = mul nsw i32 %sub11, %tmp8
  %idx.ext = sext i32 %mul12 to i64
  %tmp9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %add.ptr = getelementptr inbounds i8, i8* %tmp9, i64 %idx.ext
  %idx.ext13 = sext i32 %arg3 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext13
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr14, i64 -1
  %tmp10 = load i8, i8* %add.ptr15, align 1, !tbaa !7
  %cmp17 = icmp ult i8 %tmp10, 8
  %conv18 = zext i1 %cmp17 to i32
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr15, i64 1
  %tmp11 = load i8, i8* %add.ptr19, align 1, !tbaa !7
  %cmp21 = icmp ult i8 %tmp11, 8
  %conv22 = zext i1 %cmp21 to i32
  %add23 = add nuw nsw i32 %conv22, %conv18
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr15, i64 2
  %tmp12 = load i8, i8* %add.ptr24, align 1, !tbaa !7
  %cmp26 = icmp ult i8 %tmp12, 8
  %conv27 = zext i1 %cmp26 to i32
  %add28 = add nuw nsw i32 %add23, %conv27
  %tmp13 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$60"
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr15, i64 %tmp13
  %tmp14 = load i8, i8* %add.ptr30, align 1, !tbaa !7
  %cmp32 = icmp ult i8 %tmp14, 8
  %conv33 = zext i1 %cmp32 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr30, i64 2
  %tmp15 = load i8, i8* %add.ptr37, align 1, !tbaa !7
  %cmp39 = icmp ult i8 %tmp15, 8
  %conv40 = zext i1 %cmp39 to i32
  %add41 = add nuw nsw i32 %add34, %conv40
  %tmp16 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$60"
  %add.ptr45 = getelementptr inbounds i8, i8* %add.ptr30, i64 %tmp16
  %tmp17 = load i8, i8* %add.ptr45, align 1, !tbaa !7
  %cmp47 = icmp ult i8 %tmp17, 8
  %conv48 = zext i1 %cmp47 to i32
  %add49 = add nuw nsw i32 %add41, %conv48
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr45, i64 1
  %tmp18 = load i8, i8* %add.ptr54, align 1, !tbaa !7
  %cmp56 = icmp ult i8 %tmp18, 8
  %conv57 = zext i1 %cmp56 to i32
  %add58 = add nuw nsw i32 %add49, %conv57
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr45, i64 2
  %tmp19 = load i8, i8* %add.ptr63, align 1, !tbaa !7
  %cmp65 = icmp ult i8 %tmp19, 8
  %conv66 = zext i1 %cmp65 to i32
  %add67 = add nsw i32 %add58, %conv66
  switch i32 %add67, label %if.end412 [
    i32 0, label %if.then70
    i32 1, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %if.then
  %cmp82 = icmp ult i8 %tmp5, 6
  br i1 %cmp82, label %if.then84, label %"susan_thin$0$0_latch$0"

if.then84:                                        ; preds = %land.lhs.true
  %add87 = add nsw i32 %mul12, %arg3
  %sub88 = add nsw i32 %add87, -1
  %idxprom89 = sext i32 %sub88 to i64
  %tmp20 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx90 = getelementptr inbounds i32, i32* %tmp20, i64 %idxprom89
  %tmp21 = load i32, i32* %arrayidx90, align 4, !tbaa !5
  %idxprom95 = sext i32 %add87 to i64
  %tmp22 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx96 = getelementptr inbounds i32, i32* %tmp22, i64 %idxprom95
  %tmp23 = load i32, i32* %arrayidx96, align 4, !tbaa !5
  %add101 = add nsw i32 %add87, 1
  %idxprom102 = sext i32 %add101 to i64
  %tmp24 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx103 = getelementptr inbounds i32, i32* %tmp24, i64 %idxprom102
  %tmp25 = load i32, i32* %arrayidx103, align 4, !tbaa !5
  %sub107 = add nsw i32 %add, -1
  %idxprom108 = sext i32 %sub107 to i64
  %tmp26 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx109 = getelementptr inbounds i32, i32* %tmp26, i64 %idxprom108
  %tmp27 = load i32, i32* %arrayidx109, align 4, !tbaa !5
  %add114 = add nsw i32 %add, 1
  %idxprom115 = sext i32 %add114 to i64
  %tmp28 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx116 = getelementptr inbounds i32, i32* %tmp28, i64 %idxprom115
  %tmp29 = load i32, i32* %arrayidx116, align 4, !tbaa !5
  %add118 = add nsw i32 %arg2, 1
  %tmp30 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul119 = mul nsw i32 %add118, %tmp30
  %add120 = add nsw i32 %mul119, %arg3
  %sub121 = add nsw i32 %add120, -1
  %idxprom122 = sext i32 %sub121 to i64
  %tmp31 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx123 = getelementptr inbounds i32, i32* %tmp31, i64 %idxprom122
  %tmp32 = load i32, i32* %arrayidx123, align 4, !tbaa !5
  %idxprom128 = sext i32 %add120 to i64
  %tmp33 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx129 = getelementptr inbounds i32, i32* %tmp33, i64 %idxprom128
  %tmp34 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  %add134 = add nsw i32 %add120, 1
  %idxprom135 = sext i32 %add134 to i64
  %tmp35 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx136 = getelementptr inbounds i32, i32* %tmp35, i64 %idxprom135
  %tmp36 = load i32, i32* %arrayidx136, align 4, !tbaa !5
  %tmp37 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx143 = getelementptr inbounds i8, i8* %tmp37, i64 %idxprom89
  %tmp38 = load i8, i8* %arrayidx143, align 1, !tbaa !7
  %cmp145 = icmp ult i8 %tmp38, 8
  br i1 %cmp145, label %if.then147, label %if.else

if.else:                                          ; preds = %if.then84
  %tmp39 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx165 = getelementptr inbounds i8, i8* %tmp39, i64 %idxprom95
  %tmp40 = load i8, i8* %arrayidx165, align 1, !tbaa !7
  %cmp167 = icmp ult i8 %tmp40, 8
  br i1 %cmp167, label %if.then169, label %if.else183

if.else183:                                       ; preds = %if.else
  %tmp41 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx189 = getelementptr inbounds i8, i8* %tmp41, i64 %idxprom102
  %tmp42 = load i8, i8* %arrayidx189, align 1, !tbaa !7
  %cmp191 = icmp ult i8 %tmp42, 8
  br i1 %cmp191, label %if.then193, label %if.else207

if.else207:                                       ; preds = %if.else183
  %tmp43 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx212 = getelementptr inbounds i8, i8* %tmp43, i64 %idxprom108
  %tmp44 = load i8, i8* %arrayidx212, align 1, !tbaa !7
  %cmp214 = icmp ult i8 %tmp44, 8
  br i1 %cmp214, label %if.then216, label %if.else230

if.else230:                                       ; preds = %if.else207
  %tmp45 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx235 = getelementptr inbounds i8, i8* %tmp45, i64 %idxprom115
  %tmp46 = load i8, i8* %arrayidx235, align 1, !tbaa !7
  %cmp237 = icmp ult i8 %tmp46, 8
  br i1 %cmp237, label %if.then239, label %if.else253

if.else253:                                       ; preds = %if.else230
  %tmp47 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx259 = getelementptr inbounds i8, i8* %tmp47, i64 %idxprom122
  %tmp48 = load i8, i8* %arrayidx259, align 1, !tbaa !7
  %cmp261 = icmp ult i8 %tmp48, 8
  br i1 %cmp261, label %if.then263, label %if.else277

if.else277:                                       ; preds = %if.else253
  %tmp49 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx282 = getelementptr inbounds i8, i8* %tmp49, i64 %idxprom128
  %tmp50 = load i8, i8* %arrayidx282, align 1, !tbaa !7
  %cmp284 = icmp ult i8 %tmp50, 8
  br i1 %cmp284, label %if.then286, label %if.else300

if.else300:                                       ; preds = %if.else277
  %tmp51 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx306 = getelementptr inbounds i8, i8* %tmp51, i64 %idxprom135
  %tmp52 = load i8, i8* %arrayidx306, align 1, !tbaa !7
  %cmp308 = icmp ult i8 %tmp52, 8
  br i1 %cmp308, label %if.then310, label %for.cond336.preheader.preheader

if.then310:                                       ; preds = %if.else300
  %mul315 = shl nsw i32 %tmp32, 1
  %mul317 = shl nsw i32 %tmp25, 1
  %mul319 = mul nsw i32 %tmp23, 3
  %mul321 = mul nsw i32 %tmp27, 3
  %mul323 = shl nsw i32 %tmp21, 2
  br label %for.cond336.preheader.preheader

if.then286:                                       ; preds = %if.else277
  %mul291 = shl nsw i32 %tmp27, 1
  %mul293 = shl nsw i32 %tmp29, 1
  %mul295 = mul nsw i32 %tmp21, 3
  %mul297 = mul nsw i32 %tmp25, 3
  %mul299 = shl nsw i32 %tmp23, 2
  br label %for.cond336.preheader.preheader

if.then263:                                       ; preds = %if.else253
  %mul268 = shl nsw i32 %tmp21, 1
  %mul270 = shl nsw i32 %tmp36, 1
  %mul272 = mul nsw i32 %tmp23, 3
  %mul274 = mul nsw i32 %tmp29, 3
  %mul276 = shl nsw i32 %tmp25, 2
  br label %for.cond336.preheader.preheader

if.then239:                                       ; preds = %if.else230
  %mul244 = shl nsw i32 %tmp23, 1
  %mul246 = shl nsw i32 %tmp34, 1
  %mul248 = mul nsw i32 %tmp21, 3
  %mul250 = mul nsw i32 %tmp32, 3
  %mul252 = shl nsw i32 %tmp27, 2
  br label %for.cond336.preheader.preheader

if.then216:                                       ; preds = %if.else207
  %mul221 = shl nsw i32 %tmp23, 1
  %mul223 = shl nsw i32 %tmp34, 1
  %mul225 = mul nsw i32 %tmp25, 3
  %mul227 = mul nsw i32 %tmp36, 3
  %mul229 = shl nsw i32 %tmp29, 2
  br label %for.cond336.preheader.preheader

if.then193:                                       ; preds = %if.else183
  %mul198 = shl nsw i32 %tmp21, 1
  %mul200 = shl nsw i32 %tmp36, 1
  %mul202 = mul nsw i32 %tmp27, 3
  %mul204 = mul nsw i32 %tmp34, 3
  %mul206 = shl nsw i32 %tmp32, 2
  br label %for.cond336.preheader.preheader

if.then169:                                       ; preds = %if.else
  %mul174 = shl nsw i32 %tmp27, 1
  %mul176 = shl nsw i32 %tmp29, 1
  %mul178 = mul nsw i32 %tmp32, 3
  %mul180 = mul nsw i32 %tmp36, 3
  %mul182 = shl nsw i32 %tmp34, 2
  br label %for.cond336.preheader.preheader

if.then147:                                       ; preds = %if.then84
  %mul152 = shl nsw i32 %tmp25, 1
  %mul154 = shl nsw i32 %tmp32, 1
  %mul156 = mul nsw i32 %tmp29, 3
  %mul158 = mul nsw i32 %tmp34, 3
  %mul160 = shl nsw i32 %tmp36, 2
  br label %for.cond336.preheader.preheader

for.cond336.preheader.preheader:                  ; preds = %if.then147, %if.then169, %if.then193, %if.then216, %if.then239, %if.then263, %if.then286, %if.then310, %if.else300
  %tmp53 = phi i32 [ %mul180, %if.then169 ], [ %mul227, %if.then216 ], [ %mul270, %if.then263 ], [ %tmp36, %if.else300 ], [ 0, %if.then310 ], [ 0, %if.then286 ], [ 0, %if.then239 ], [ %mul200, %if.then193 ], [ %mul160, %if.then147 ]
  %tmp54 = phi i32 [ %mul182, %if.then169 ], [ %mul223, %if.then216 ], [ 0, %if.then263 ], [ %tmp34, %if.else300 ], [ 0, %if.then310 ], [ 0, %if.then286 ], [ %mul246, %if.then239 ], [ %mul204, %if.then193 ], [ %mul158, %if.then147 ]
  %tmp55 = phi i32 [ %mul178, %if.then169 ], [ 0, %if.then216 ], [ 0, %if.then263 ], [ %tmp32, %if.else300 ], [ %mul315, %if.then310 ], [ 0, %if.then286 ], [ %mul250, %if.then239 ], [ %mul206, %if.then193 ], [ %mul154, %if.then147 ]
  %tmp56 = phi i32 [ %mul176, %if.then169 ], [ %mul229, %if.then216 ], [ %mul274, %if.then263 ], [ %tmp29, %if.else300 ], [ 0, %if.then310 ], [ %mul293, %if.then286 ], [ 0, %if.then239 ], [ 0, %if.then193 ], [ %mul156, %if.then147 ]
  %tmp57 = phi i32 [ %mul174, %if.then169 ], [ 0, %if.then216 ], [ 0, %if.then263 ], [ %tmp27, %if.else300 ], [ %mul321, %if.then310 ], [ %mul291, %if.then286 ], [ %mul252, %if.then239 ], [ %mul202, %if.then193 ], [ 0, %if.then147 ]
  %tmp58 = phi i32 [ 0, %if.then169 ], [ %mul225, %if.then216 ], [ %mul276, %if.then263 ], [ %tmp25, %if.else300 ], [ %mul317, %if.then310 ], [ %mul297, %if.then286 ], [ 0, %if.then239 ], [ 0, %if.then193 ], [ %mul152, %if.then147 ]
  %tmp59 = phi i32 [ 0, %if.then169 ], [ %mul221, %if.then216 ], [ %mul272, %if.then263 ], [ %tmp23, %if.else300 ], [ %mul319, %if.then310 ], [ %mul299, %if.then286 ], [ %mul244, %if.then239 ], [ 0, %if.then193 ], [ 0, %if.then147 ]
  %tmp60 = phi i32 [ 0, %if.then169 ], [ 0, %if.then216 ], [ %mul268, %if.then263 ], [ %tmp21, %if.else300 ], [ %mul323, %if.then310 ], [ %mul295, %if.then286 ], [ %mul248, %if.then239 ], [ %mul198, %if.then193 ], [ 0, %if.then147 ]
  %cmp345 = icmp sgt i32 %tmp60, 0
  %.m.1 = select i1 %cmp345, i32 %tmp60, i32 0
  %x.0.b.3 = select i1 %cmp345, i32 0, i32 %arg1
  %cmp345.1 = icmp sgt i32 %tmp59, %.m.1
  %.m.1.1 = select i1 %cmp345.1, i32 %tmp59, i32 %.m.1
  %tmp61 = or i1 %cmp345.1, %cmp345
  %x.0.b.3.1 = select i1 %cmp345.1, i32 1, i32 %x.0.b.3
  %cmp345.2 = icmp sgt i32 %tmp58, %.m.1.1
  %.m.1.2 = select i1 %cmp345.2, i32 %tmp58, i32 %.m.1.1
  %tmp62 = or i1 %cmp345.2, %tmp61
  %y.0.a.3.2 = select i1 %tmp62, i32 0, i32 %arg
  %x.0.b.3.2 = select i1 %cmp345.2, i32 2, i32 %x.0.b.3.1
  %cmp345.11219 = icmp sgt i32 %tmp57, %.m.1.2
  %.m.1.11220 = select i1 %cmp345.11219, i32 %tmp57, i32 %.m.1.2
  %x.0.b.3.11222 = select i1 %cmp345.11219, i32 0, i32 %x.0.b.3.2
  %cmp345.1.1 = icmp slt i32 %.m.1.11220, 0
  %.m.1.1.1 = select i1 %cmp345.1.1, i32 0, i32 %.m.1.11220
  %tmp63 = or i1 %cmp345.1.1, %cmp345.11219
  %x.0.b.3.1.1 = select i1 %cmp345.1.1, i32 1, i32 %x.0.b.3.11222
  %cmp345.2.1 = icmp sgt i32 %tmp56, %.m.1.1.1
  %.m.1.2.1 = select i1 %cmp345.2.1, i32 %tmp56, i32 %.m.1.1.1
  %tmp64 = or i1 %cmp345.2.1, %tmp63
  %y.0.a.3.2.1 = select i1 %tmp64, i32 1, i32 %y.0.a.3.2
  %x.0.b.3.2.1 = select i1 %cmp345.2.1, i32 2, i32 %x.0.b.3.1.1
  %cmp345.21224 = icmp sgt i32 %tmp55, %.m.1.2.1
  %.m.1.21225 = select i1 %cmp345.21224, i32 %tmp55, i32 %.m.1.2.1
  %x.0.b.3.21227 = select i1 %cmp345.21224, i32 0, i32 %x.0.b.3.2.1
  %cmp345.1.2 = icmp sgt i32 %tmp54, %.m.1.21225
  %.m.1.1.2 = select i1 %cmp345.1.2, i32 %tmp54, i32 %.m.1.21225
  %tmp65 = or i1 %cmp345.1.2, %cmp345.21224
  %x.0.b.3.1.2 = select i1 %cmp345.1.2, i32 1, i32 %x.0.b.3.21227
  %cmp345.2.2 = icmp sgt i32 %tmp53, %.m.1.1.2
  %.m.1.2.2 = select i1 %cmp345.2.2, i32 %tmp53, i32 %.m.1.1.2
  %tmp66 = or i1 %cmp345.2.2, %tmp65
  %y.0.a.3.2.2 = select i1 %tmp66, i32 2, i32 %y.0.a.3.2.1
  %x.0.b.3.2.2 = select i1 %cmp345.2.2, i32 2, i32 %x.0.b.3.1.2
  %cmp357 = icmp sgt i32 %.m.1.2.2, 0
  br i1 %cmp357, label %if.then359, label %if.end412

if.then359:                                       ; preds = %for.cond336.preheader.preheader
  %cmp365 = icmp ult i8 %tmp5, 4
  br i1 %cmp365, label %if.then367, label %if.else376

if.else376:                                       ; preds = %if.then359
  %add382 = add i8 %tmp5, 1
  %sub385 = add i32 %sub11, %y.0.a.3.2.2
  %tmp67 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul386 = mul nsw i32 %sub385, %tmp67
  %add387 = add i32 %arg3, -1
  %add388 = add i32 %add387, %x.0.b.3.2.2
  %sub389 = add i32 %add388, %mul386
  %idxprom390 = sext i32 %sub389 to i64
  %tmp68 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx391 = getelementptr inbounds i8, i8* %tmp68, i64 %idxprom390
  store i8 %add382, i8* %arrayidx391, align 1, !tbaa !7
  br label %if.end392

if.then367:                                       ; preds = %if.then359
  %sub369 = add i32 %sub11, %y.0.a.3.2.2
  %tmp69 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul370 = mul nsw i32 %sub369, %tmp69
  %add371 = add i32 %arg3, -1
  %add372 = add i32 %add371, %x.0.b.3.2.2
  %sub373 = add i32 %add372, %mul370
  %idxprom374 = sext i32 %sub373 to i64
  %tmp70 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx375 = getelementptr inbounds i8, i8* %tmp70, i64 %idxprom374
  store i8 4, i8* %arrayidx375, align 1, !tbaa !7
  br label %if.end392

if.end392:                                        ; preds = %if.then367, %if.else376
  %add393 = shl i32 %y.0.a.3.2.2, 1
  %add394 = add nsw i32 %add393, %x.0.b.3.2.2
  %cmp395 = icmp slt i32 %add394, 3
  br i1 %cmp395, label %if.then397, label %if.end412

if.then397:                                       ; preds = %if.end392
  %add399 = add i32 %sub11, %y.0.a.3.2.2
  %sub400 = add i32 %arg3, -2
  %add401 = add i32 %sub400, %x.0.b.3.2.2
  %cmp402 = icmp slt i32 %add399, 4
  %.add399 = select i1 %cmp402, i32 4, i32 %add399
  %cmp406 = icmp slt i32 %add401, 4
  %.add401 = select i1 %cmp406, i32 4, i32 %add401
  br label %if.end412

if.then70:                                        ; preds = %if.then
  store i8 100, i8* %arrayidx, align 1, !tbaa !7
  br label %"susan_thin$0$0_latch$0"

if.end412:                                        ; preds = %if.then397, %if.end392, %for.cond336.preheader.preheader, %if.then
  %a.5 = phi i32 [ %y.0.a.3.2.2, %if.end392 ], [ %y.0.a.3.2.2, %for.cond336.preheader.preheader ], [ %arg, %if.then ], [ %y.0.a.3.2.2, %if.then397 ]
  %b.5 = phi i32 [ %x.0.b.3.2.2, %if.end392 ], [ %x.0.b.3.2.2, %for.cond336.preheader.preheader ], [ %arg1, %if.then ], [ %x.0.b.3.2.2, %if.then397 ]
  %i.3 = phi i32 [ %arg2, %if.end392 ], [ %arg2, %for.cond336.preheader.preheader ], [ %arg2, %if.then ], [ %.add399, %if.then397 ]
  %j.1 = phi i32 [ %arg3, %if.end392 ], [ %arg3, %for.cond336.preheader.preheader ], [ %arg3, %if.then ], [ %.add401, %if.then397 ]
  %cmp413 = icmp eq i32 %add67, 2
  br i1 %cmp413, label %if.then415, label %if.end709

if.end709:                                        ; preds = %if.end412
  %cmp710 = icmp sgt i32 %add67, 2
  br i1 %cmp710, label %if.then712, label %"susan_thin$0$0_latch$0"

if.then712:                                       ; preds = %if.end709
  %sub713 = add nsw i32 %i.3, -1
  %tmp71 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul714 = mul nsw i32 %sub713, %tmp71
  %add715 = add nsw i32 %mul714, %j.1
  %idxprom716 = sext i32 %add715 to i64
  %tmp72 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx717 = getelementptr inbounds i8, i8* %tmp72, i64 %idxprom716
  %tmp73 = load i8, i8* %arrayidx717, align 1, !tbaa !7
  %cmp719 = icmp ult i8 %tmp73, 8
  %conv720 = zext i1 %cmp719 to i32
  %tmp74 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul721 = mul nsw i32 %i.3, %tmp74
  %add722 = add nsw i32 %mul721, %j.1
  %add723 = add nsw i32 %add722, 1
  %idxprom724 = sext i32 %add723 to i64
  %tmp75 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx725 = getelementptr inbounds i8, i8* %tmp75, i64 %idxprom724
  %tmp76 = load i8, i8* %arrayidx725, align 1, !tbaa !7
  %cmp727 = icmp ult i8 %tmp76, 8
  %conv728 = zext i1 %cmp727 to i32
  %add729 = add nsw i32 %i.3, 1
  %tmp77 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul730 = mul nsw i32 %add729, %tmp77
  %add731 = add nsw i32 %mul730, %j.1
  %idxprom732 = sext i32 %add731 to i64
  %tmp78 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx733 = getelementptr inbounds i8, i8* %tmp78, i64 %idxprom732
  %tmp79 = load i8, i8* %arrayidx733, align 1, !tbaa !7
  %cmp735 = icmp ult i8 %tmp79, 8
  %conv736 = zext i1 %cmp735 to i32
  %sub739 = add nsw i32 %add722, -1
  %idxprom740 = sext i32 %sub739 to i64
  %tmp80 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx741 = getelementptr inbounds i8, i8* %tmp80, i64 %idxprom740
  %tmp81 = load i8, i8* %arrayidx741, align 1, !tbaa !7
  %cmp743 = icmp ult i8 %tmp81, 8
  %conv744 = zext i1 %cmp743 to i32
  %add745 = add nuw nsw i32 %conv728, %conv720
  %add746 = add nuw nsw i32 %add745, %conv736
  %add747 = add nuw nsw i32 %add746, %conv744
  %cmp748 = icmp ugt i32 %add747, 1
  br i1 %cmp748, label %if.then750, label %"susan_thin$0$0_latch$0"

if.then750:                                       ; preds = %if.then712
  %sub754 = add nsw i32 %add715, -1
  %idxprom755 = sext i32 %sub754 to i64
  %tmp82 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx756 = getelementptr inbounds i8, i8* %tmp82, i64 %idxprom755
  %tmp83 = load i8, i8* %arrayidx756, align 1, !tbaa !7
  %cmp758 = icmp ult i8 %tmp83, 8
  %conv759 = zext i1 %cmp758 to i32
  %add763 = add nsw i32 %add715, 1
  %idxprom764 = sext i32 %add763 to i64
  %tmp84 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx765 = getelementptr inbounds i8, i8* %tmp84, i64 %idxprom764
  %tmp85 = load i8, i8* %arrayidx765, align 1, !tbaa !7
  %cmp767 = icmp ult i8 %tmp85, 8
  %conv768 = zext i1 %cmp767 to i32
  %sub772 = add nsw i32 %add731, -1
  %idxprom773 = sext i32 %sub772 to i64
  %tmp86 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx774 = getelementptr inbounds i8, i8* %tmp86, i64 %idxprom773
  %tmp87 = load i8, i8* %arrayidx774, align 1, !tbaa !7
  %cmp776 = icmp ult i8 %tmp87, 8
  %conv777 = zext i1 %cmp776 to i32
  %add781 = add nsw i32 %add731, 1
  %idxprom782 = sext i32 %add781 to i64
  %tmp88 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx783 = getelementptr inbounds i8, i8* %tmp88, i64 %idxprom782
  %tmp89 = load i8, i8* %arrayidx783, align 1, !tbaa !7
  %cmp785 = icmp ult i8 %tmp89, 8
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
  br i1 %cmp802, label %if.then804, label %"susan_thin$0$0_latch$0"

if.then804:                                       ; preds = %if.then750
  %idxprom807 = sext i32 %add722 to i64
  %tmp90 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx808 = getelementptr inbounds i8, i8* %tmp90, i64 %idxprom807
  store i8 100, i8* %arrayidx808, align 1, !tbaa !7
  %sub810 = add nsw i32 %j.1, -2
  %cmp811 = icmp slt i32 %i.3, 5
  %.dec809 = select i1 %cmp811, i32 4, i32 %sub713
  %cmp815 = icmp slt i32 %sub810, 4
  %.sub810 = select i1 %cmp815, i32 4, i32 %sub810
  br label %"susan_thin$0$0_latch$0"

if.then415:                                       ; preds = %if.end412
  %sub416 = add nsw i32 %i.3, -1
  %tmp91 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul417 = mul nsw i32 %sub416, %tmp91
  %add418 = add nsw i32 %mul417, %j.1
  %sub419 = add nsw i32 %add418, -1
  %idxprom420 = sext i32 %sub419 to i64
  %tmp92 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx421 = getelementptr inbounds i8, i8* %tmp92, i64 %idxprom420
  %tmp93 = load i8, i8* %arrayidx421, align 1, !tbaa !7
  %cmp423 = icmp ult i8 %tmp93, 8
  %conv424 = zext i1 %cmp423 to i32
  %add428 = add nsw i32 %add418, 1
  %idxprom429 = sext i32 %add428 to i64
  %tmp94 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx430 = getelementptr inbounds i8, i8* %tmp94, i64 %idxprom429
  %tmp95 = load i8, i8* %arrayidx430, align 1, !tbaa !7
  %cmp432 = icmp ult i8 %tmp95, 8
  %conv433 = zext i1 %cmp432 to i32
  %add434 = add nsw i32 %i.3, 1
  %tmp96 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul435 = mul nsw i32 %add434, %tmp96
  %add436 = add nsw i32 %mul435, %j.1
  %sub437 = add nsw i32 %add436, -1
  %idxprom438 = sext i32 %sub437 to i64
  %tmp97 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx439 = getelementptr inbounds i8, i8* %tmp97, i64 %idxprom438
  %tmp98 = load i8, i8* %arrayidx439, align 1, !tbaa !7
  %cmp441 = icmp ult i8 %tmp98, 8
  %conv442 = zext i1 %cmp441 to i32
  %add446 = add nsw i32 %add436, 1
  %idxprom447 = sext i32 %add446 to i64
  %tmp99 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx448 = getelementptr inbounds i8, i8* %tmp99, i64 %idxprom447
  %tmp100 = load i8, i8* %arrayidx448, align 1, !tbaa !7
  %cmp450 = icmp ult i8 %tmp100, 8
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
  %tmp101 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul473 = mul nsw i32 %add472, %tmp101
  %add474 = add i32 %x.1, %j.1
  %add475 = add i32 %add474, %mul473
  %idxprom476 = sext i32 %add475 to i64
  %tmp102 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$62"
  %arrayidx477 = getelementptr inbounds i32, i32* %tmp102, i64 %idxprom476
  %tmp103 = load i32, i32* %arrayidx477, align 4, !tbaa !5
  %conv478 = sitofp i32 %tmp103 to float
  %conv479 = sitofp i32 %tmp7 to float
  %div = fdiv float %conv478, %conv479
  %conv480 = fpext float %div to double
  %cmp481 = fcmp ogt double %conv480, 0x3FE6666666666666
  br i1 %cmp481, label %if.then483, label %"susan_thin$0$0_latch$0"

if.then483:                                       ; preds = %if.then459
  %cmp484 = icmp eq i32 %x.1, 0
  br i1 %cmp484, label %land.lhs.true486, label %lor.lhs.false

land.lhs.true486:                                 ; preds = %if.then483
  %mul487 = shl nsw i32 %y.1, 1
  %add488 = add nsw i32 %mul487, %i.3
  %tmp104 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul489 = mul nsw i32 %add488, %tmp104
  %add490 = add nsw i32 %mul489, %j.1
  %idxprom491 = sext i32 %add490 to i64
  %tmp105 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx492 = getelementptr inbounds i8, i8* %tmp105, i64 %idxprom491
  %tmp106 = load i8, i8* %arrayidx492, align 1, !tbaa !7
  %cmp494 = icmp ugt i8 %tmp106, 7
  br i1 %cmp494, label %land.lhs.true496, label %lor.lhs.false

land.lhs.true496:                                 ; preds = %land.lhs.true486
  %sub501 = add nsw i32 %add490, -1
  %idxprom502 = sext i32 %sub501 to i64
  %tmp107 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx503 = getelementptr inbounds i8, i8* %tmp107, i64 %idxprom502
  %tmp108 = load i8, i8* %arrayidx503, align 1, !tbaa !7
  %cmp505 = icmp ugt i8 %tmp108, 7
  br i1 %cmp505, label %land.lhs.true507, label %lor.lhs.false

land.lhs.true507:                                 ; preds = %land.lhs.true496
  %add512 = add nsw i32 %add490, 1
  %idxprom513 = sext i32 %add512 to i64
  %tmp109 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx514 = getelementptr inbounds i8, i8* %tmp109, i64 %idxprom513
  %tmp110 = load i8, i8* %arrayidx514, align 1, !tbaa !7
  %cmp516 = icmp ugt i8 %tmp110, 7
  br i1 %cmp516, label %land.lhs.true507.if.then552_crit_edge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true507, %land.lhs.true496, %land.lhs.true486, %if.then483
  %cmp518 = icmp eq i32 %y.1, 0
  br i1 %cmp518, label %land.lhs.true520, label %"susan_thin$0$0_latch$0"

land.lhs.true520:                                 ; preds = %lor.lhs.false
  %tmp111 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul521 = mul nsw i32 %i.3, %tmp111
  %add522 = add nsw i32 %mul521, %j.1
  %mul523 = shl nsw i32 %x.1, 1
  %add524 = add nsw i32 %add522, %mul523
  %idxprom525 = sext i32 %add524 to i64
  %tmp112 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx526 = getelementptr inbounds i8, i8* %tmp112, i64 %idxprom525
  %tmp113 = load i8, i8* %arrayidx526, align 1, !tbaa !7
  %cmp528 = icmp ugt i8 %tmp113, 7
  br i1 %cmp528, label %land.lhs.true530, label %"susan_thin$0$0_latch$0"

land.lhs.true530:                                 ; preds = %land.lhs.true520
  %add535 = add nsw i32 %mul523, %add436
  %idxprom536 = sext i32 %add535 to i64
  %tmp114 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx537 = getelementptr inbounds i8, i8* %tmp114, i64 %idxprom536
  %tmp115 = load i8, i8* %arrayidx537, align 1, !tbaa !7
  %cmp539 = icmp ugt i8 %tmp115, 7
  br i1 %cmp539, label %land.lhs.true541, label %"susan_thin$0$0_latch$0"

land.lhs.true541:                                 ; preds = %land.lhs.true530
  %add546 = add nsw i32 %mul523, %add418
  %idxprom547 = sext i32 %add546 to i64
  %tmp116 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx548 = getelementptr inbounds i8, i8* %tmp116, i64 %idxprom547
  %tmp117 = load i8, i8* %arrayidx548, align 1, !tbaa !7
  %cmp550 = icmp ugt i8 %tmp117, 7
  br i1 %cmp550, label %if.then552, label %"susan_thin$0$0_latch$0"

land.lhs.true507.if.then552_crit_edge:            ; preds = %land.lhs.true507
  %tmp118 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %.pre = mul nsw i32 %i.3, %tmp118
  %.pre1228 = add nsw i32 %.pre, %j.1
  br label %if.then552

if.then552:                                       ; preds = %land.lhs.true507.if.then552_crit_edge, %land.lhs.true541
  %add554.pre-phi = phi i32 [ %.pre1228, %land.lhs.true507.if.then552_crit_edge ], [ %add522, %land.lhs.true541 ]
  %idxprom555 = sext i32 %add554.pre-phi to i64
  %tmp119 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx556 = getelementptr inbounds i8, i8* %tmp119, i64 %idxprom555
  store i8 100, i8* %arrayidx556, align 1, !tbaa !7
  %tmp120 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx562 = getelementptr inbounds i8, i8* %tmp120, i64 %idxprom476
  store i8 3, i8* %arrayidx562, align 1, !tbaa !7
  br label %"susan_thin$0$0_latch$0"

if.else565:                                       ; preds = %land.lhs.true457, %if.then415
  %idxprom569 = sext i32 %add418 to i64
  %tmp121 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx570 = getelementptr inbounds i8, i8* %tmp121, i64 %idxprom569
  %tmp122 = load i8, i8* %arrayidx570, align 1, !tbaa !7
  %cmp572 = icmp ult i8 %tmp122, 8
  %conv573 = zext i1 %cmp572 to i32
  %tmp123 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul574 = mul nsw i32 %i.3, %tmp123
  %add575 = add nsw i32 %mul574, %j.1
  %add576 = add nsw i32 %add575, 1
  %idxprom577 = sext i32 %add576 to i64
  %tmp124 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx578 = getelementptr inbounds i8, i8* %tmp124, i64 %idxprom577
  %tmp125 = load i8, i8* %arrayidx578, align 1, !tbaa !7
  %cmp580 = icmp ult i8 %tmp125, 8
  %conv581 = zext i1 %cmp580 to i32
  %idxprom585 = sext i32 %add436 to i64
  %tmp126 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx586 = getelementptr inbounds i8, i8* %tmp126, i64 %idxprom585
  %tmp127 = load i8, i8* %arrayidx586, align 1, !tbaa !7
  %cmp588 = icmp ult i8 %tmp127, 8
  %conv589 = zext i1 %cmp588 to i32
  %sub592 = add nsw i32 %add575, -1
  %idxprom593 = sext i32 %sub592 to i64
  %tmp128 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx594 = getelementptr inbounds i8, i8* %tmp128, i64 %idxprom593
  %tmp129 = load i8, i8* %arrayidx594, align 1, !tbaa !7
  %cmp596 = icmp ult i8 %tmp129, 8
  %conv597 = zext i1 %cmp596 to i32
  %add598 = add nuw nsw i32 %conv581, %conv573
  %add599 = add nuw nsw i32 %add598, %conv589
  %add600 = add nuw nsw i32 %add599, %conv597
  %cmp601 = icmp eq i32 %add600, 2
  br i1 %cmp601, label %land.lhs.true603, label %"susan_thin$0$0_latch$0"

land.lhs.true603:                                 ; preds = %if.else565
  %or604 = or i32 %conv597, %conv581
  %or605 = or i32 %conv589, %conv573
  %and606 = and i32 %or604, %or605
  %tobool607 = icmp eq i32 %and606, 0
  br i1 %tobool607, label %"susan_thin$0$0_latch$0", label %land.lhs.true608

land.lhs.true608:                                 ; preds = %land.lhs.true603
  %sub609 = add nsw i32 %i.3, -2
  %tmp130 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul610 = mul nsw i32 %sub609, %tmp130
  %add611 = add nsw i32 %mul610, %j.1
  %sub612 = add nsw i32 %add611, -1
  %idxprom613 = sext i32 %sub612 to i64
  %tmp131 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx614 = getelementptr inbounds i8, i8* %tmp131, i64 %idxprom613
  %tmp132 = load i8, i8* %arrayidx614, align 1, !tbaa !7
  %cmp616 = icmp ult i8 %tmp132, 8
  %conv617 = zext i1 %cmp616 to i32
  %add621 = add nsw i32 %add611, 1
  %idxprom622 = sext i32 %add621 to i64
  %tmp133 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx623 = getelementptr inbounds i8, i8* %tmp133, i64 %idxprom622
  %tmp134 = load i8, i8* %arrayidx623, align 1, !tbaa !7
  %cmp625 = icmp ult i8 %tmp134, 8
  %conv626 = zext i1 %cmp625 to i32
  %or627 = or i32 %conv626, %conv617
  %and628 = and i32 %or627, %conv573
  %sub632 = add nsw i32 %add418, -2
  %idxprom633 = sext i32 %sub632 to i64
  %tmp135 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx634 = getelementptr inbounds i8, i8* %tmp135, i64 %idxprom633
  %tmp136 = load i8, i8* %arrayidx634, align 1, !tbaa !7
  %cmp636 = icmp ult i8 %tmp136, 8
  %conv637 = zext i1 %cmp636 to i32
  %sub641 = add nsw i32 %add436, -2
  %idxprom642 = sext i32 %sub641 to i64
  %tmp137 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx643 = getelementptr inbounds i8, i8* %tmp137, i64 %idxprom642
  %tmp138 = load i8, i8* %arrayidx643, align 1, !tbaa !7
  %cmp645 = icmp ult i8 %tmp138, 8
  %conv646 = zext i1 %cmp645 to i32
  %or647 = or i32 %conv646, %conv637
  %and648 = and i32 %or647, %conv597
  %or649 = or i32 %and648, %and628
  %add653 = add nsw i32 %add418, 2
  %idxprom654 = sext i32 %add653 to i64
  %tmp139 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx655 = getelementptr inbounds i8, i8* %tmp139, i64 %idxprom654
  %tmp140 = load i8, i8* %arrayidx655, align 1, !tbaa !7
  %cmp657 = icmp ult i8 %tmp140, 8
  %conv658 = zext i1 %cmp657 to i32
  %add662 = add nsw i32 %add436, 2
  %idxprom663 = sext i32 %add662 to i64
  %tmp141 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx664 = getelementptr inbounds i8, i8* %tmp141, i64 %idxprom663
  %tmp142 = load i8, i8* %arrayidx664, align 1, !tbaa !7
  %cmp666 = icmp ult i8 %tmp142, 8
  %conv667 = zext i1 %cmp666 to i32
  %or668 = or i32 %conv667, %conv658
  %and669 = and i32 %or668, %conv581
  %or670 = or i32 %or649, %and669
  %add671 = add nsw i32 %i.3, 2
  %tmp143 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$64"
  %mul672 = mul nsw i32 %add671, %tmp143
  %add673 = add nsw i32 %mul672, %j.1
  %sub674 = add nsw i32 %add673, -1
  %idxprom675 = sext i32 %sub674 to i64
  %tmp144 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx676 = getelementptr inbounds i8, i8* %tmp144, i64 %idxprom675
  %tmp145 = load i8, i8* %arrayidx676, align 1, !tbaa !7
  %cmp678 = icmp ult i8 %tmp145, 8
  %conv679 = zext i1 %cmp678 to i32
  %add683 = add nsw i32 %add673, 1
  %idxprom684 = sext i32 %add683 to i64
  %tmp146 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx685 = getelementptr inbounds i8, i8* %tmp146, i64 %idxprom684
  %tmp147 = load i8, i8* %arrayidx685, align 1, !tbaa !7
  %cmp687 = icmp ult i8 %tmp147, 8
  %conv688 = zext i1 %cmp687 to i32
  %or689 = or i32 %conv688, %conv679
  %and690 = and i32 %or689, %conv589
  %or691 = or i32 %or670, %and690
  %tobool692 = icmp eq i32 %or691, 0
  br i1 %tobool692, label %"susan_thin$0$0_latch$0", label %if.then693

if.then693:                                       ; preds = %land.lhs.true608
  %idxprom696 = sext i32 %add575 to i64
  %tmp148 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$63"
  %arrayidx697 = getelementptr inbounds i8, i8* %tmp148, i64 %idxprom696
  store i8 100, i8* %arrayidx697, align 1, !tbaa !7
  %sub698 = add nsw i32 %j.1, -2
  %cmp699 = icmp slt i32 %i.3, 5
  %.dec = select i1 %cmp699, i32 4, i32 %sub416
  %cmp703 = icmp slt i32 %sub698, 4
  %.sub698 = select i1 %cmp703, i32 4, i32 %sub698
  br label %"susan_thin$0$0_latch$0"

"susan_thin$0$0_latch$0":                         ; preds = %if.then693, %land.lhs.true608, %land.lhs.true603, %if.else565, %if.then552, %land.lhs.true541, %land.lhs.true530, %land.lhs.true520, %lor.lhs.false, %if.then459, %if.then804, %if.then750, %if.then712, %if.end709, %if.then70, %land.lhs.true, %"susan_thin$0$0_header"
  %a.6 = phi i32 [ %a.5, %if.then750 ], [ %a.5, %if.then712 ], [ %a.5, %if.end709 ], [ %arg, %"susan_thin$0$0_header" ], [ %a.5, %if.then804 ], [ %a.5, %if.then693 ], [ %a.5, %if.else565 ], [ %a.5, %land.lhs.true603 ], [ %a.5, %land.lhs.true608 ], [ %a.5, %if.then459 ], [ %a.5, %lor.lhs.false ], [ %a.5, %land.lhs.true520 ], [ %a.5, %land.lhs.true530 ], [ %a.5, %land.lhs.true541 ], [ %a.5, %if.then552 ], [ %arg, %if.then70 ], [ %arg, %land.lhs.true ]
  %b.6 = phi i32 [ %b.5, %if.then750 ], [ %b.5, %if.then712 ], [ %b.5, %if.end709 ], [ %arg1, %"susan_thin$0$0_header" ], [ %b.5, %if.then804 ], [ %b.5, %if.then693 ], [ %b.5, %if.else565 ], [ %b.5, %land.lhs.true603 ], [ %b.5, %land.lhs.true608 ], [ %b.5, %if.then459 ], [ %b.5, %lor.lhs.false ], [ %b.5, %land.lhs.true520 ], [ %b.5, %land.lhs.true530 ], [ %b.5, %land.lhs.true541 ], [ %b.5, %if.then552 ], [ %arg1, %if.then70 ], [ %arg1, %land.lhs.true ]
  %i.7 = phi i32 [ %i.3, %if.then750 ], [ %i.3, %if.then712 ], [ %i.3, %if.end709 ], [ %arg2, %"susan_thin$0$0_header" ], [ %.dec809, %if.then804 ], [ %.dec, %if.then693 ], [ %i.3, %if.else565 ], [ %i.3, %land.lhs.true603 ], [ %i.3, %land.lhs.true608 ], [ %i.3, %if.then459 ], [ %i.3, %lor.lhs.false ], [ %i.3, %land.lhs.true520 ], [ %i.3, %land.lhs.true530 ], [ %i.3, %land.lhs.true541 ], [ %i.3, %if.then552 ], [ %arg2, %if.then70 ], [ %arg2, %land.lhs.true ]
  %j.3 = phi i32 [ %j.1, %if.then750 ], [ %j.1, %if.then712 ], [ %j.1, %if.end709 ], [ %arg3, %"susan_thin$0$0_header" ], [ %.sub810, %if.then804 ], [ %.sub698, %if.then693 ], [ %j.1, %if.else565 ], [ %j.1, %land.lhs.true603 ], [ %j.1, %land.lhs.true608 ], [ %j.1, %if.then459 ], [ %j.1, %lor.lhs.false ], [ %j.1, %land.lhs.true520 ], [ %j.1, %land.lhs.true530 ], [ %j.1, %land.lhs.true541 ], [ %j.1, %if.then552 ], [ %arg3, %if.then70 ], [ %arg3, %land.lhs.true ]
  %inc824 = add nsw i32 %j.3, 1
  %tmp149 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$59"
  %cmp3 = icmp slt i32 %inc824, %tmp149
  br i1 %cmp3, label %"susan_thin$0$0_increment_depth_counter", label %"susan_thin$0$0_return_from_recursive_function$0"

"susan_thin$0$0_increment_depth_counter":         ; preds = %"susan_thin$0$0_latch$0"
  br label %"susan_thin$0$0_recursively_call_function"

"susan_thin$0$0_recursively_call_function":       ; preds = %"susan_thin$0$0_increment_depth_counter"
  call void @"susan_thin$0$0"(i32 %a.6, i32 %b.6, i32 %i.7, i32 %inc824)
  ret void

"susan_thin$0$0_return_from_recursive_function$0": ; preds = %"susan_thin$0$0_latch$0"
  %tmp150 = getelementptr %15, %15* @"susan_thin$0$0_return_value_struct", i32 0, i32 0
  store i32 %a.6, i32* %tmp150
  %tmp151 = getelementptr %15, %15* @"susan_thin$0$0_return_value_struct", i32 0, i32 1
  store i32 %b.6, i32* %tmp151
  %tmp152 = getelementptr %15, %15* @"susan_thin$0$0_return_value_struct", i32 0, i32 2
  store i32 %i.7, i32* %tmp152
  ret void
}

define void @"susan_edges$1$0"(i32 %arg, i64 %arg1) {
"susan_edges$1$0_header":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$183"
  %add.ptr11 = getelementptr inbounds i8, i8* %tmp, i64 %arg1
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$182"
  %add = add nsw i32 %arg, %tmp2
  %idxprom = sext i32 %add to i64
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$73"
  %arrayidx = getelementptr inbounds i8, i8* %tmp3, i64 %idxprom
  %tmp4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idx.ext15 = zext i8 %tmp4 to i64
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$74"
  %add.ptr16 = getelementptr inbounds i8, i8* %tmp5, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %tmp6 = load i8, i8* %add.ptr12, align 1, !tbaa !7
  %idx.ext18 = zext i8 %tmp6 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %tmp7 = load i8, i8* %add.ptr19, align 1, !tbaa !7
  %conv20 = zext i8 %tmp7 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %tmp8 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %idx.ext24 = zext i8 %tmp8 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %tmp9 = load i8, i8* %add.ptr26, align 1, !tbaa !7
  %conv27 = zext i8 %tmp9 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %tmp10 = load i8, i8* %incdec.ptr22, align 1, !tbaa !7
  %idx.ext30 = zext i8 %tmp10 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %tmp11 = load i8, i8* %add.ptr32, align 1, !tbaa !7
  %conv33 = zext i8 %tmp11 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %tmp12 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$72"
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %tmp12
  %incdec.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 1
  %tmp13 = load i8, i8* %add.ptr37, align 1, !tbaa !7
  %idx.ext40 = zext i8 %tmp13 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg41
  %tmp14 = load i8, i8* %add.ptr42, align 1, !tbaa !7
  %conv43 = zext i8 %tmp14 to i32
  %add44 = add nuw nsw i32 %add34, %conv43
  %incdec.ptr45 = getelementptr inbounds i8, i8* %incdec.ptr38, i64 1
  %tmp15 = load i8, i8* %incdec.ptr38, align 1, !tbaa !7
  %idx.ext47 = zext i8 %tmp15 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg48
  %tmp16 = load i8, i8* %add.ptr49, align 1, !tbaa !7
  %conv50 = zext i8 %tmp16 to i32
  %add51 = add nuw nsw i32 %add44, %conv50
  %incdec.ptr52 = getelementptr inbounds i8, i8* %incdec.ptr45, i64 1
  %tmp17 = load i8, i8* %incdec.ptr45, align 1, !tbaa !7
  %idx.ext54 = zext i8 %tmp17 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg55
  %tmp18 = load i8, i8* %add.ptr56, align 1, !tbaa !7
  %conv57 = zext i8 %tmp18 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds i8, i8* %incdec.ptr52, i64 1
  %tmp19 = load i8, i8* %incdec.ptr52, align 1, !tbaa !7
  %idx.ext61 = zext i8 %tmp19 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg62
  %tmp20 = load i8, i8* %add.ptr63, align 1, !tbaa !7
  %conv64 = zext i8 %tmp20 to i32
  %add65 = add nsw i32 %add58, %conv64
  %tmp21 = load i8, i8* %incdec.ptr59, align 1, !tbaa !7
  %idx.ext67 = zext i8 %tmp21 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg68
  %tmp22 = load i8, i8* %add.ptr69, align 1, !tbaa !7
  %conv70 = zext i8 %tmp22 to i32
  %add71 = add nsw i32 %add65, %conv70
  %tmp23 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$71"
  %add.ptr74 = getelementptr inbounds i8, i8* %incdec.ptr59, i64 %tmp23
  %incdec.ptr75 = getelementptr inbounds i8, i8* %add.ptr74, i64 1
  %tmp24 = load i8, i8* %add.ptr74, align 1, !tbaa !7
  %idx.ext77 = zext i8 %tmp24 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg78
  %tmp25 = load i8, i8* %add.ptr79, align 1, !tbaa !7
  %conv80 = zext i8 %tmp25 to i32
  %add81 = add nsw i32 %add71, %conv80
  %incdec.ptr82 = getelementptr inbounds i8, i8* %incdec.ptr75, i64 1
  %tmp26 = load i8, i8* %incdec.ptr75, align 1, !tbaa !7
  %idx.ext84 = zext i8 %tmp26 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg85
  %tmp27 = load i8, i8* %add.ptr86, align 1, !tbaa !7
  %conv87 = zext i8 %tmp27 to i32
  %add88 = add nsw i32 %add81, %conv87
  %incdec.ptr89 = getelementptr inbounds i8, i8* %incdec.ptr82, i64 1
  %tmp28 = load i8, i8* %incdec.ptr82, align 1, !tbaa !7
  %idx.ext91 = zext i8 %tmp28 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg92
  %tmp29 = load i8, i8* %add.ptr93, align 1, !tbaa !7
  %conv94 = zext i8 %tmp29 to i32
  %add95 = add nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds i8, i8* %incdec.ptr89, i64 1
  %tmp30 = load i8, i8* %incdec.ptr89, align 1, !tbaa !7
  %idx.ext98 = zext i8 %tmp30 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg99
  %tmp31 = load i8, i8* %add.ptr100, align 1, !tbaa !7
  %conv101 = zext i8 %tmp31 to i32
  %add102 = add nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds i8, i8* %incdec.ptr96, i64 1
  %tmp32 = load i8, i8* %incdec.ptr96, align 1, !tbaa !7
  %idx.ext105 = zext i8 %tmp32 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg106
  %tmp33 = load i8, i8* %add.ptr107, align 1, !tbaa !7
  %conv108 = zext i8 %tmp33 to i32
  %add109 = add nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds i8, i8* %incdec.ptr103, i64 1
  %tmp34 = load i8, i8* %incdec.ptr103, align 1, !tbaa !7
  %idx.ext112 = zext i8 %tmp34 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg113
  %tmp35 = load i8, i8* %add.ptr114, align 1, !tbaa !7
  %conv115 = zext i8 %tmp35 to i32
  %add116 = add nsw i32 %add109, %conv115
  %tmp36 = load i8, i8* %incdec.ptr110, align 1, !tbaa !7
  %idx.ext118 = zext i8 %tmp36 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg119
  %tmp37 = load i8, i8* %add.ptr120, align 1, !tbaa !7
  %conv121 = zext i8 %tmp37 to i32
  %add122 = add nsw i32 %add116, %conv121
  %tmp38 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$70"
  %add.ptr125 = getelementptr inbounds i8, i8* %incdec.ptr110, i64 %tmp38
  %incdec.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 1
  %tmp39 = load i8, i8* %add.ptr125, align 1, !tbaa !7
  %idx.ext128 = zext i8 %tmp39 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg129
  %tmp40 = load i8, i8* %add.ptr130, align 1, !tbaa !7
  %conv131 = zext i8 %tmp40 to i32
  %add132 = add nsw i32 %add122, %conv131
  %incdec.ptr133 = getelementptr inbounds i8, i8* %incdec.ptr126, i64 1
  %tmp41 = load i8, i8* %incdec.ptr126, align 1, !tbaa !7
  %idx.ext135 = zext i8 %tmp41 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg136
  %tmp42 = load i8, i8* %add.ptr137, align 1, !tbaa !7
  %conv138 = zext i8 %tmp42 to i32
  %add139 = add nsw i32 %add132, %conv138
  %tmp43 = load i8, i8* %incdec.ptr133, align 1, !tbaa !7
  %idx.ext141 = zext i8 %tmp43 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg142
  %tmp44 = load i8, i8* %add.ptr143, align 1, !tbaa !7
  %conv144 = zext i8 %tmp44 to i32
  %add145 = add nsw i32 %add139, %conv144
  %add.ptr146 = getelementptr inbounds i8, i8* %incdec.ptr133, i64 2
  %incdec.ptr147 = getelementptr inbounds i8, i8* %add.ptr146, i64 1
  %tmp45 = load i8, i8* %add.ptr146, align 1, !tbaa !7
  %idx.ext149 = zext i8 %tmp45 to i64
  %idx.neg150 = sub nsw i64 0, %idx.ext149
  %add.ptr151 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg150
  %tmp46 = load i8, i8* %add.ptr151, align 1, !tbaa !7
  %conv152 = zext i8 %tmp46 to i32
  %add153 = add nsw i32 %add145, %conv152
  %incdec.ptr154 = getelementptr inbounds i8, i8* %incdec.ptr147, i64 1
  %tmp47 = load i8, i8* %incdec.ptr147, align 1, !tbaa !7
  %idx.ext156 = zext i8 %tmp47 to i64
  %idx.neg157 = sub nsw i64 0, %idx.ext156
  %add.ptr158 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg157
  %tmp48 = load i8, i8* %add.ptr158, align 1, !tbaa !7
  %conv159 = zext i8 %tmp48 to i32
  %add160 = add nsw i32 %add153, %conv159
  %tmp49 = load i8, i8* %incdec.ptr154, align 1, !tbaa !7
  %idx.ext162 = zext i8 %tmp49 to i64
  %idx.neg163 = sub nsw i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg163
  %tmp50 = load i8, i8* %add.ptr164, align 1, !tbaa !7
  %conv165 = zext i8 %tmp50 to i32
  %add166 = add nsw i32 %add160, %conv165
  %tmp51 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$70"
  %add.ptr169 = getelementptr inbounds i8, i8* %incdec.ptr154, i64 %tmp51
  %incdec.ptr170 = getelementptr inbounds i8, i8* %add.ptr169, i64 1
  %tmp52 = load i8, i8* %add.ptr169, align 1, !tbaa !7
  %idx.ext172 = zext i8 %tmp52 to i64
  %idx.neg173 = sub nsw i64 0, %idx.ext172
  %add.ptr174 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg173
  %tmp53 = load i8, i8* %add.ptr174, align 1, !tbaa !7
  %conv175 = zext i8 %tmp53 to i32
  %add176 = add nsw i32 %add166, %conv175
  %incdec.ptr177 = getelementptr inbounds i8, i8* %incdec.ptr170, i64 1
  %tmp54 = load i8, i8* %incdec.ptr170, align 1, !tbaa !7
  %idx.ext179 = zext i8 %tmp54 to i64
  %idx.neg180 = sub nsw i64 0, %idx.ext179
  %add.ptr181 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg180
  %tmp55 = load i8, i8* %add.ptr181, align 1, !tbaa !7
  %conv182 = zext i8 %tmp55 to i32
  %add183 = add nsw i32 %add176, %conv182
  %incdec.ptr184 = getelementptr inbounds i8, i8* %incdec.ptr177, i64 1
  %tmp56 = load i8, i8* %incdec.ptr177, align 1, !tbaa !7
  %idx.ext186 = zext i8 %tmp56 to i64
  %idx.neg187 = sub nsw i64 0, %idx.ext186
  %add.ptr188 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg187
  %tmp57 = load i8, i8* %add.ptr188, align 1, !tbaa !7
  %conv189 = zext i8 %tmp57 to i32
  %add190 = add nsw i32 %add183, %conv189
  %incdec.ptr191 = getelementptr inbounds i8, i8* %incdec.ptr184, i64 1
  %tmp58 = load i8, i8* %incdec.ptr184, align 1, !tbaa !7
  %idx.ext193 = zext i8 %tmp58 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg194
  %tmp59 = load i8, i8* %add.ptr195, align 1, !tbaa !7
  %conv196 = zext i8 %tmp59 to i32
  %add197 = add nsw i32 %add190, %conv196
  %incdec.ptr198 = getelementptr inbounds i8, i8* %incdec.ptr191, i64 1
  %tmp60 = load i8, i8* %incdec.ptr191, align 1, !tbaa !7
  %idx.ext200 = zext i8 %tmp60 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg201
  %tmp61 = load i8, i8* %add.ptr202, align 1, !tbaa !7
  %conv203 = zext i8 %tmp61 to i32
  %add204 = add nsw i32 %add197, %conv203
  %incdec.ptr205 = getelementptr inbounds i8, i8* %incdec.ptr198, i64 1
  %tmp62 = load i8, i8* %incdec.ptr198, align 1, !tbaa !7
  %idx.ext207 = zext i8 %tmp62 to i64
  %idx.neg208 = sub nsw i64 0, %idx.ext207
  %add.ptr209 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg208
  %tmp63 = load i8, i8* %add.ptr209, align 1, !tbaa !7
  %conv210 = zext i8 %tmp63 to i32
  %add211 = add nsw i32 %add204, %conv210
  %tmp64 = load i8, i8* %incdec.ptr205, align 1, !tbaa !7
  %idx.ext213 = zext i8 %tmp64 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg214
  %tmp65 = load i8, i8* %add.ptr215, align 1, !tbaa !7
  %conv216 = zext i8 %tmp65 to i32
  %add217 = add nsw i32 %add211, %conv216
  %tmp66 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$71"
  %add.ptr220 = getelementptr inbounds i8, i8* %incdec.ptr205, i64 %tmp66
  %incdec.ptr221 = getelementptr inbounds i8, i8* %add.ptr220, i64 1
  %tmp67 = load i8, i8* %add.ptr220, align 1, !tbaa !7
  %idx.ext223 = zext i8 %tmp67 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg224
  %tmp68 = load i8, i8* %add.ptr225, align 1, !tbaa !7
  %conv226 = zext i8 %tmp68 to i32
  %add227 = add nsw i32 %add217, %conv226
  %incdec.ptr228 = getelementptr inbounds i8, i8* %incdec.ptr221, i64 1
  %tmp69 = load i8, i8* %incdec.ptr221, align 1, !tbaa !7
  %idx.ext230 = zext i8 %tmp69 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg231
  %tmp70 = load i8, i8* %add.ptr232, align 1, !tbaa !7
  %conv233 = zext i8 %tmp70 to i32
  %add234 = add nsw i32 %add227, %conv233
  %incdec.ptr235 = getelementptr inbounds i8, i8* %incdec.ptr228, i64 1
  %tmp71 = load i8, i8* %incdec.ptr228, align 1, !tbaa !7
  %idx.ext237 = zext i8 %tmp71 to i64
  %idx.neg238 = sub nsw i64 0, %idx.ext237
  %add.ptr239 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg238
  %tmp72 = load i8, i8* %add.ptr239, align 1, !tbaa !7
  %conv240 = zext i8 %tmp72 to i32
  %add241 = add nsw i32 %add234, %conv240
  %incdec.ptr242 = getelementptr inbounds i8, i8* %incdec.ptr235, i64 1
  %tmp73 = load i8, i8* %incdec.ptr235, align 1, !tbaa !7
  %idx.ext244 = zext i8 %tmp73 to i64
  %idx.neg245 = sub nsw i64 0, %idx.ext244
  %add.ptr246 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg245
  %tmp74 = load i8, i8* %add.ptr246, align 1, !tbaa !7
  %conv247 = zext i8 %tmp74 to i32
  %add248 = add nsw i32 %add241, %conv247
  %tmp75 = load i8, i8* %incdec.ptr242, align 1, !tbaa !7
  %idx.ext250 = zext i8 %tmp75 to i64
  %idx.neg251 = sub nsw i64 0, %idx.ext250
  %add.ptr252 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg251
  %tmp76 = load i8, i8* %add.ptr252, align 1, !tbaa !7
  %conv253 = zext i8 %tmp76 to i32
  %add254 = add nsw i32 %add248, %conv253
  %tmp77 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$72"
  %add.ptr257 = getelementptr inbounds i8, i8* %incdec.ptr242, i64 %tmp77
  %incdec.ptr258 = getelementptr inbounds i8, i8* %add.ptr257, i64 1
  %tmp78 = load i8, i8* %add.ptr257, align 1, !tbaa !7
  %idx.ext260 = zext i8 %tmp78 to i64
  %idx.neg261 = sub nsw i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg261
  %tmp79 = load i8, i8* %add.ptr262, align 1, !tbaa !7
  %conv263 = zext i8 %tmp79 to i32
  %add264 = add nsw i32 %add254, %conv263
  %incdec.ptr265 = getelementptr inbounds i8, i8* %incdec.ptr258, i64 1
  %tmp80 = load i8, i8* %incdec.ptr258, align 1, !tbaa !7
  %idx.ext267 = zext i8 %tmp80 to i64
  %idx.neg268 = sub nsw i64 0, %idx.ext267
  %add.ptr269 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg268
  %tmp81 = load i8, i8* %add.ptr269, align 1, !tbaa !7
  %conv270 = zext i8 %tmp81 to i32
  %add271 = add nsw i32 %add264, %conv270
  %tmp82 = load i8, i8* %incdec.ptr265, align 1, !tbaa !7
  %idx.ext273 = zext i8 %tmp82 to i64
  %idx.neg274 = sub nsw i64 0, %idx.ext273
  %add.ptr275 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg274
  %tmp83 = load i8, i8* %add.ptr275, align 1, !tbaa !7
  %conv276 = zext i8 %tmp83 to i32
  %add277 = add nsw i32 %add271, %conv276
  %tmp84 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$69"
  %cmp278 = icmp sgt i32 %add277, %tmp84
  br i1 %cmp278, label %"susan_edges$1$0_latch$0", label %if.then

if.then:                                          ; preds = %"susan_edges$1$0_header"
  %tmp85 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$69"
  %sub280 = sub nsw i32 %tmp85, %add277
  %tmp86 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx284 = getelementptr inbounds i32, i32* %tmp86, i64 %idxprom
  store i32 %sub280, i32* %arrayidx284, align 4, !tbaa !5
  br label %"susan_edges$1$0_latch$0"

"susan_edges$1$0_latch$0":                        ; preds = %if.then, %"susan_edges$1$0_header"
  %indvars.iv.next2067 = add nuw nsw i64 %arg1, 1
  %inc = add nuw nsw i32 %arg, 1
  %lftr.wideiv2068 = trunc i64 %indvars.iv.next2067 to i32
  %tmp87 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$67"
  %exitcond2069 = icmp eq i32 %lftr.wideiv2068, %tmp87
  br i1 %exitcond2069, label %"susan_edges$1$0_return_from_recursive_function$0", label %"susan_edges$1$0_increment_depth_counter"

"susan_edges$1$0_increment_depth_counter":        ; preds = %"susan_edges$1$0_latch$0"
  br label %"susan_edges$1$0_recursively_call_function"

"susan_edges$1$0_recursively_call_function":      ; preds = %"susan_edges$1$0_increment_depth_counter"
  call void @"susan_edges$1$0"(i32 %inc, i64 %indvars.iv.next2067)
  ret void

"susan_edges$1$0_return_from_recursive_function$0": ; preds = %"susan_edges$1$0_latch$0"
  ret void
}

define void @"susan_edges$0$0"(i32 %arg, i64 %arg1) {
"susan_edges$0$0_header":
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$187"
  %add299 = add nsw i32 %arg, %tmp2
  %idxprom300 = sext i32 %add299 to i64
  %tmp3 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx301 = getelementptr inbounds i32, i32* %tmp3, i64 %idxprom300
  %tmp4 = load i32, i32* %arrayidx301, align 4, !tbaa !5
  %cmp302 = icmp sgt i32 %tmp4, 0
  br i1 %cmp302, label %if.then304, label %"susan_edges$0$0_latch$0"

if.then304:                                       ; preds = %"susan_edges$0$0_header"
  %tmp5 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$69"
  %sub309 = sub nsw i32 %tmp5, %tmp4
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$73"
  %arrayidx313 = getelementptr inbounds i8, i8* %tmp6, i64 %idxprom300
  %tmp7 = load i8, i8* %arrayidx313, align 1, !tbaa !7
  %idx.ext315 = zext i8 %tmp7 to i64
  %tmp8 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$74"
  %add.ptr316 = getelementptr inbounds i8, i8* %tmp8, i64 %idx.ext315
  %cmp317 = icmp sgt i32 %sub309, 600
  %tmp9 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$186"
  %add.ptr325 = getelementptr inbounds i8, i8* %tmp9, i64 %arg1
  %add.ptr326 = getelementptr inbounds i8, i8* %add.ptr325, i64 -1
  %incdec.ptr327 = getelementptr inbounds i8, i8* %add.ptr326, i64 1
  br i1 %cmp317, label %if.then319, label %if.then304.if.then762_crit_edge

if.then304.if.then762_crit_edge:                  ; preds = %if.then304
  %.pre2079 = getelementptr inbounds i8, i8* %incdec.ptr327, i64 1
  %tmp10 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$83"
  %.pre2080 = getelementptr inbounds i8, i8* %.pre2079, i64 %tmp10
  %.pre2081 = getelementptr inbounds i8, i8* %.pre2080, i64 1
  %.pre2082 = getelementptr inbounds i8, i8* %.pre2081, i64 1
  %.pre2083 = getelementptr inbounds i8, i8* %.pre2082, i64 1
  %.pre2084 = getelementptr inbounds i8, i8* %.pre2083, i64 1
  %tmp11 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$81"
  %.pre2085 = getelementptr inbounds i8, i8* %.pre2084, i64 %tmp11
  %.pre2086 = getelementptr inbounds i8, i8* %.pre2085, i64 1
  %.pre2087 = getelementptr inbounds i8, i8* %.pre2086, i64 1
  %.pre2088 = getelementptr inbounds i8, i8* %.pre2087, i64 1
  %.pre2089 = getelementptr inbounds i8, i8* %.pre2088, i64 1
  %.pre2090 = getelementptr inbounds i8, i8* %.pre2089, i64 1
  %.pre2091 = getelementptr inbounds i8, i8* %.pre2090, i64 1
  %tmp12 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$79"
  %.pre2092 = getelementptr inbounds i8, i8* %.pre2091, i64 %tmp12
  %.pre2093 = getelementptr inbounds i8, i8* %.pre2092, i64 1
  %.pre2094 = getelementptr inbounds i8, i8* %.pre2093, i64 1
  %.pre2095 = getelementptr inbounds i8, i8* %.pre2094, i64 2
  %.pre2096 = getelementptr inbounds i8, i8* %.pre2095, i64 1
  %.pre2097 = getelementptr inbounds i8, i8* %.pre2096, i64 1
  %tmp13 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$79"
  %.pre2098 = getelementptr inbounds i8, i8* %.pre2097, i64 %tmp13
  %.pre2099 = getelementptr inbounds i8, i8* %.pre2098, i64 1
  %.pre2100 = getelementptr inbounds i8, i8* %.pre2099, i64 1
  %.pre2101 = getelementptr inbounds i8, i8* %.pre2100, i64 1
  %.pre2102 = getelementptr inbounds i8, i8* %.pre2101, i64 1
  %.pre2103 = getelementptr inbounds i8, i8* %.pre2102, i64 1
  %.pre2104 = getelementptr inbounds i8, i8* %.pre2103, i64 1
  %tmp14 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$81"
  %.pre2105 = getelementptr inbounds i8, i8* %.pre2104, i64 %tmp14
  %.pre2106 = getelementptr inbounds i8, i8* %.pre2105, i64 1
  %.pre2107 = getelementptr inbounds i8, i8* %.pre2106, i64 1
  %.pre2108 = getelementptr inbounds i8, i8* %.pre2107, i64 1
  %.pre2109 = getelementptr inbounds i8, i8* %.pre2108, i64 1
  %tmp15 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$83"
  %.pre2110 = getelementptr inbounds i8, i8* %.pre2109, i64 %tmp15
  %.pre2111 = getelementptr inbounds i8, i8* %.pre2110, i64 1
  %.pre2112 = getelementptr inbounds i8, i8* %.pre2111, i64 1
  br label %if.then762

if.then319:                                       ; preds = %if.then304
  %tmp16 = load i8, i8* %add.ptr326, align 1, !tbaa !7
  %idx.ext329 = zext i8 %tmp16 to i64
  %idx.neg330 = sub nsw i64 0, %idx.ext329
  %add.ptr331 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg330
  %tmp17 = load i8, i8* %add.ptr331, align 1, !tbaa !7
  %conv332 = zext i8 %tmp17 to i32
  %incdec.ptr337 = getelementptr inbounds i8, i8* %incdec.ptr327, i64 1
  %tmp18 = load i8, i8* %incdec.ptr327, align 1, !tbaa !7
  %idx.ext339 = zext i8 %tmp18 to i64
  %idx.neg340 = sub nsw i64 0, %idx.ext339
  %add.ptr341 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg340
  %tmp19 = load i8, i8* %add.ptr341, align 1, !tbaa !7
  %conv342 = zext i8 %tmp19 to i32
  %tmp20 = add nuw nsw i32 %conv342, %conv332
  %tmp21 = load i8, i8* %incdec.ptr337, align 1, !tbaa !7
  %idx.ext346 = zext i8 %tmp21 to i64
  %idx.neg347 = sub nsw i64 0, %idx.ext346
  %add.ptr348 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg347
  %tmp22 = load i8, i8* %add.ptr348, align 1, !tbaa !7
  %conv349 = zext i8 %tmp22 to i32
  %sub3441973 = add nuw nsw i32 %tmp20, %conv349
  %tmp23 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$83"
  %add.ptr356 = getelementptr inbounds i8, i8* %incdec.ptr337, i64 %tmp23
  %incdec.ptr357 = getelementptr inbounds i8, i8* %add.ptr356, i64 1
  %tmp24 = load i8, i8* %add.ptr356, align 1, !tbaa !7
  %idx.ext359 = zext i8 %tmp24 to i64
  %idx.neg360 = sub nsw i64 0, %idx.ext359
  %add.ptr361 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg360
  %tmp25 = load i8, i8* %add.ptr361, align 1, !tbaa !7
  %conv362 = zext i8 %tmp25 to i32
  %mul363 = shl nuw nsw i32 %conv362, 1
  %incdec.ptr368 = getelementptr inbounds i8, i8* %incdec.ptr357, i64 1
  %tmp26 = load i8, i8* %incdec.ptr357, align 1, !tbaa !7
  %idx.ext370 = zext i8 %tmp26 to i64
  %idx.neg371 = sub nsw i64 0, %idx.ext370
  %add.ptr372 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg371
  %tmp27 = load i8, i8* %add.ptr372, align 1, !tbaa !7
  %conv373 = zext i8 %tmp27 to i32
  %mul376 = shl nuw nsw i32 %conv373, 1
  %incdec.ptr378 = getelementptr inbounds i8, i8* %incdec.ptr368, i64 1
  %tmp28 = load i8, i8* %incdec.ptr368, align 1, !tbaa !7
  %idx.ext380 = zext i8 %tmp28 to i64
  %idx.neg381 = sub nsw i64 0, %idx.ext380
  %add.ptr382 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg381
  %tmp29 = load i8, i8* %add.ptr382, align 1, !tbaa !7
  %conv383 = zext i8 %tmp29 to i32
  %mul384 = shl nuw nsw i32 %conv383, 1
  %incdec.ptr386 = getelementptr inbounds i8, i8* %incdec.ptr378, i64 1
  %tmp30 = load i8, i8* %incdec.ptr378, align 1, !tbaa !7
  %idx.ext388 = zext i8 %tmp30 to i64
  %idx.neg389 = sub nsw i64 0, %idx.ext388
  %add.ptr390 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg389
  %tmp31 = load i8, i8* %add.ptr390, align 1, !tbaa !7
  %conv391 = zext i8 %tmp31 to i32
  %mul394 = shl nuw nsw i32 %conv391, 1
  %tmp32 = load i8, i8* %incdec.ptr386, align 1, !tbaa !7
  %idx.ext397 = zext i8 %tmp32 to i64
  %idx.neg398 = sub nsw i64 0, %idx.ext397
  %add.ptr399 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg398
  %tmp33 = load i8, i8* %add.ptr399, align 1, !tbaa !7
  %conv400 = zext i8 %tmp33 to i32
  %mul401 = shl nuw nsw i32 %conv400, 1
  %tmp34 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$81"
  %add.ptr408 = getelementptr inbounds i8, i8* %incdec.ptr386, i64 %tmp34
  %incdec.ptr409 = getelementptr inbounds i8, i8* %add.ptr408, i64 1
  %tmp35 = load i8, i8* %add.ptr408, align 1, !tbaa !7
  %idx.ext411 = zext i8 %tmp35 to i64
  %idx.neg412 = sub nsw i64 0, %idx.ext411
  %add.ptr413 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg412
  %tmp36 = load i8, i8* %add.ptr413, align 1, !tbaa !7
  %conv414 = zext i8 %tmp36 to i32
  %incdec.ptr419 = getelementptr inbounds i8, i8* %incdec.ptr409, i64 1
  %tmp37 = load i8, i8* %incdec.ptr409, align 1, !tbaa !7
  %idx.ext421 = zext i8 %tmp37 to i64
  %idx.neg422 = sub nsw i64 0, %idx.ext421
  %add.ptr423 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg422
  %tmp38 = load i8, i8* %add.ptr423, align 1, !tbaa !7
  %conv424 = zext i8 %tmp38 to i32
  %mul425 = shl nuw nsw i32 %conv424, 1
  %incdec.ptr429 = getelementptr inbounds i8, i8* %incdec.ptr419, i64 1
  %tmp39 = load i8, i8* %incdec.ptr419, align 1, !tbaa !7
  %idx.ext431 = zext i8 %tmp39 to i64
  %idx.neg432 = sub nsw i64 0, %idx.ext431
  %add.ptr433 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg432
  %tmp40 = load i8, i8* %add.ptr433, align 1, !tbaa !7
  %conv434 = zext i8 %tmp40 to i32
  %incdec.ptr438 = getelementptr inbounds i8, i8* %incdec.ptr429, i64 1
  %tmp41 = load i8, i8* %incdec.ptr429, align 1, !tbaa !7
  %idx.ext440 = zext i8 %tmp41 to i64
  %idx.neg441 = sub nsw i64 0, %idx.ext440
  %add.ptr442 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg441
  %tmp42 = load i8, i8* %add.ptr442, align 1, !tbaa !7
  %conv443 = zext i8 %tmp42 to i32
  %incdec.ptr445 = getelementptr inbounds i8, i8* %incdec.ptr438, i64 1
  %tmp43 = load i8, i8* %incdec.ptr438, align 1, !tbaa !7
  %idx.ext447 = zext i8 %tmp43 to i64
  %idx.neg448 = sub nsw i64 0, %idx.ext447
  %add.ptr449 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg448
  %tmp44 = load i8, i8* %add.ptr449, align 1, !tbaa !7
  %conv450 = zext i8 %tmp44 to i32
  %incdec.ptr454 = getelementptr inbounds i8, i8* %incdec.ptr445, i64 1
  %tmp45 = load i8, i8* %incdec.ptr445, align 1, !tbaa !7
  %idx.ext456 = zext i8 %tmp45 to i64
  %idx.neg457 = sub nsw i64 0, %idx.ext456
  %add.ptr458 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg457
  %tmp46 = load i8, i8* %add.ptr458, align 1, !tbaa !7
  %conv459 = zext i8 %tmp46 to i32
  %tmp47 = load i8, i8* %incdec.ptr454, align 1, !tbaa !7
  %idx.ext465 = zext i8 %tmp47 to i64
  %idx.neg466 = sub nsw i64 0, %idx.ext465
  %add.ptr467 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg466
  %tmp48 = load i8, i8* %add.ptr467, align 1, !tbaa !7
  %conv468 = zext i8 %tmp48 to i32
  %tmp49 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$79"
  %add.ptr475 = getelementptr inbounds i8, i8* %incdec.ptr454, i64 %tmp49
  %incdec.ptr476 = getelementptr inbounds i8, i8* %add.ptr475, i64 1
  %tmp50 = load i8, i8* %add.ptr475, align 1, !tbaa !7
  %idx.ext478 = zext i8 %tmp50 to i64
  %idx.neg479 = sub nsw i64 0, %idx.ext478
  %add.ptr480 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg479
  %tmp51 = load i8, i8* %add.ptr480, align 1, !tbaa !7
  %conv481 = zext i8 %tmp51 to i32
  %incdec.ptr484 = getelementptr inbounds i8, i8* %incdec.ptr476, i64 1
  %tmp52 = load i8, i8* %incdec.ptr476, align 1, !tbaa !7
  %idx.ext486 = zext i8 %tmp52 to i64
  %idx.neg487 = sub nsw i64 0, %idx.ext486
  %add.ptr488 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg487
  %tmp53 = load i8, i8* %add.ptr488, align 1, !tbaa !7
  %conv489 = zext i8 %tmp53 to i32
  %mul490 = shl nuw nsw i32 %conv489, 1
  %tmp54 = load i8, i8* %incdec.ptr484, align 1, !tbaa !7
  %idx.ext493 = zext i8 %tmp54 to i64
  %idx.neg494 = sub nsw i64 0, %idx.ext493
  %add.ptr495 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg494
  %tmp55 = load i8, i8* %add.ptr495, align 1, !tbaa !7
  %conv496 = zext i8 %tmp55 to i32
  %add.ptr498 = getelementptr inbounds i8, i8* %incdec.ptr484, i64 2
  %incdec.ptr499 = getelementptr inbounds i8, i8* %add.ptr498, i64 1
  %tmp56 = load i8, i8* %add.ptr498, align 1, !tbaa !7
  %idx.ext501 = zext i8 %tmp56 to i64
  %idx.neg502 = sub nsw i64 0, %idx.ext501
  %add.ptr503 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg502
  %tmp57 = load i8, i8* %add.ptr503, align 1, !tbaa !7
  %conv504 = zext i8 %tmp57 to i32
  %incdec.ptr506 = getelementptr inbounds i8, i8* %incdec.ptr499, i64 1
  %tmp58 = load i8, i8* %incdec.ptr499, align 1, !tbaa !7
  %idx.ext508 = zext i8 %tmp58 to i64
  %idx.neg509 = sub nsw i64 0, %idx.ext508
  %add.ptr510 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg509
  %tmp59 = load i8, i8* %add.ptr510, align 1, !tbaa !7
  %conv511 = zext i8 %tmp59 to i32
  %tmp60 = load i8, i8* %incdec.ptr506, align 1, !tbaa !7
  %idx.ext515 = zext i8 %tmp60 to i64
  %idx.neg516 = sub nsw i64 0, %idx.ext515
  %add.ptr517 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg516
  %tmp61 = load i8, i8* %add.ptr517, align 1, !tbaa !7
  %conv518 = zext i8 %tmp61 to i32
  %tmp62 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$79"
  %add.ptr523 = getelementptr inbounds i8, i8* %incdec.ptr506, i64 %tmp62
  %incdec.ptr524 = getelementptr inbounds i8, i8* %add.ptr523, i64 1
  %tmp63 = load i8, i8* %add.ptr523, align 1, !tbaa !7
  %idx.ext526 = zext i8 %tmp63 to i64
  %idx.neg527 = sub nsw i64 0, %idx.ext526
  %add.ptr528 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg527
  %tmp64 = load i8, i8* %add.ptr528, align 1, !tbaa !7
  %conv529 = zext i8 %tmp64 to i32
  %incdec.ptr534 = getelementptr inbounds i8, i8* %incdec.ptr524, i64 1
  %tmp65 = load i8, i8* %incdec.ptr524, align 1, !tbaa !7
  %idx.ext536 = zext i8 %tmp65 to i64
  %idx.neg537 = sub nsw i64 0, %idx.ext536
  %add.ptr538 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg537
  %tmp66 = load i8, i8* %add.ptr538, align 1, !tbaa !7
  %conv539 = zext i8 %tmp66 to i32
  %mul540 = shl nuw nsw i32 %conv539, 1
  %incdec.ptr544 = getelementptr inbounds i8, i8* %incdec.ptr534, i64 1
  %tmp67 = load i8, i8* %incdec.ptr534, align 1, !tbaa !7
  %idx.ext546 = zext i8 %tmp67 to i64
  %idx.neg547 = sub nsw i64 0, %idx.ext546
  %add.ptr548 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg547
  %tmp68 = load i8, i8* %add.ptr548, align 1, !tbaa !7
  %conv549 = zext i8 %tmp68 to i32
  %incdec.ptr553 = getelementptr inbounds i8, i8* %incdec.ptr544, i64 1
  %tmp69 = load i8, i8* %incdec.ptr544, align 1, !tbaa !7
  %idx.ext555 = zext i8 %tmp69 to i64
  %idx.neg556 = sub nsw i64 0, %idx.ext555
  %add.ptr557 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg556
  %tmp70 = load i8, i8* %add.ptr557, align 1, !tbaa !7
  %conv558 = zext i8 %tmp70 to i32
  %incdec.ptr560 = getelementptr inbounds i8, i8* %incdec.ptr553, i64 1
  %tmp71 = load i8, i8* %incdec.ptr553, align 1, !tbaa !7
  %idx.ext562 = zext i8 %tmp71 to i64
  %idx.neg563 = sub nsw i64 0, %idx.ext562
  %add.ptr564 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg563
  %tmp72 = load i8, i8* %add.ptr564, align 1, !tbaa !7
  %conv565 = zext i8 %tmp72 to i32
  %incdec.ptr569 = getelementptr inbounds i8, i8* %incdec.ptr560, i64 1
  %tmp73 = load i8, i8* %incdec.ptr560, align 1, !tbaa !7
  %idx.ext571 = zext i8 %tmp73 to i64
  %idx.neg572 = sub nsw i64 0, %idx.ext571
  %add.ptr573 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg572
  %tmp74 = load i8, i8* %add.ptr573, align 1, !tbaa !7
  %conv574 = zext i8 %tmp74 to i32
  %tmp75 = load i8, i8* %incdec.ptr569, align 1, !tbaa !7
  %idx.ext580 = zext i8 %tmp75 to i64
  %idx.neg581 = sub nsw i64 0, %idx.ext580
  %add.ptr582 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg581
  %tmp76 = load i8, i8* %add.ptr582, align 1, !tbaa !7
  %conv583 = zext i8 %tmp76 to i32
  %tmp77 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$81"
  %add.ptr590 = getelementptr inbounds i8, i8* %incdec.ptr569, i64 %tmp77
  %incdec.ptr591 = getelementptr inbounds i8, i8* %add.ptr590, i64 1
  %tmp78 = load i8, i8* %add.ptr590, align 1, !tbaa !7
  %idx.ext593 = zext i8 %tmp78 to i64
  %idx.neg594 = sub nsw i64 0, %idx.ext593
  %add.ptr595 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg594
  %tmp79 = load i8, i8* %add.ptr595, align 1, !tbaa !7
  %conv596 = zext i8 %tmp79 to i32
  %mul597 = shl nuw nsw i32 %conv596, 1
  %incdec.ptr602 = getelementptr inbounds i8, i8* %incdec.ptr591, i64 1
  %tmp80 = load i8, i8* %incdec.ptr591, align 1, !tbaa !7
  %idx.ext604 = zext i8 %tmp80 to i64
  %idx.neg605 = sub nsw i64 0, %idx.ext604
  %add.ptr606 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg605
  %tmp81 = load i8, i8* %add.ptr606, align 1, !tbaa !7
  %conv607 = zext i8 %tmp81 to i32
  %incdec.ptr612 = getelementptr inbounds i8, i8* %incdec.ptr602, i64 1
  %tmp82 = load i8, i8* %incdec.ptr602, align 1, !tbaa !7
  %idx.ext614 = zext i8 %tmp82 to i64
  %idx.neg615 = sub nsw i64 0, %idx.ext614
  %add.ptr616 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg615
  %tmp83 = load i8, i8* %add.ptr616, align 1, !tbaa !7
  %conv617 = zext i8 %tmp83 to i32
  %incdec.ptr620 = getelementptr inbounds i8, i8* %incdec.ptr612, i64 1
  %tmp84 = load i8, i8* %incdec.ptr612, align 1, !tbaa !7
  %idx.ext622 = zext i8 %tmp84 to i64
  %idx.neg623 = sub nsw i64 0, %idx.ext622
  %add.ptr624 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg623
  %tmp85 = load i8, i8* %add.ptr624, align 1, !tbaa !7
  %conv625 = zext i8 %tmp85 to i32
  %tmp86 = load i8, i8* %incdec.ptr620, align 1, !tbaa !7
  %idx.ext631 = zext i8 %tmp86 to i64
  %idx.neg632 = sub nsw i64 0, %idx.ext631
  %add.ptr633 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg632
  %tmp87 = load i8, i8* %add.ptr633, align 1, !tbaa !7
  %conv634 = zext i8 %tmp87 to i32
  %mul635 = shl nuw nsw i32 %conv634, 1
  %tmp88 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$83"
  %add.ptr642 = getelementptr inbounds i8, i8* %incdec.ptr620, i64 %tmp88
  %incdec.ptr643 = getelementptr inbounds i8, i8* %add.ptr642, i64 1
  %tmp89 = load i8, i8* %add.ptr642, align 1, !tbaa !7
  %idx.ext645 = zext i8 %tmp89 to i64
  %idx.neg646 = sub nsw i64 0, %idx.ext645
  %add.ptr647 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg646
  %tmp90 = load i8, i8* %add.ptr647, align 1, !tbaa !7
  %conv648 = zext i8 %tmp90 to i32
  %incdec.ptr653 = getelementptr inbounds i8, i8* %incdec.ptr643, i64 1
  %tmp91 = load i8, i8* %incdec.ptr643, align 1, !tbaa !7
  %idx.ext655 = zext i8 %tmp91 to i64
  %idx.neg656 = sub nsw i64 0, %idx.ext655
  %add.ptr657 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg656
  %tmp92 = load i8, i8* %add.ptr657, align 1, !tbaa !7
  %conv658 = zext i8 %tmp92 to i32
  %tmp93 = load i8, i8* %incdec.ptr653, align 1, !tbaa !7
  %idx.ext662 = zext i8 %tmp93 to i64
  %idx.neg663 = sub nsw i64 0, %idx.ext662
  %add.ptr664 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg663
  %tmp94 = load i8, i8* %add.ptr664, align 1, !tbaa !7
  %conv665 = zext i8 %tmp94 to i32
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

if.then762:                                       ; preds = %if.then319, %if.then304.if.then762_crit_edge
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
  %tmp95 = load i8, i8* %add.ptr326, align 1, !tbaa !7
  %idx.ext772 = zext i8 %tmp95 to i64
  %idx.neg773 = sub nsw i64 0, %idx.ext772
  %add.ptr774 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg773
  %tmp96 = load i8, i8* %add.ptr774, align 1, !tbaa !7
  %conv775 = zext i8 %tmp96 to i32
  %tmp97 = load i8, i8* %incdec.ptr327, align 1, !tbaa !7
  %idx.ext785 = zext i8 %tmp97 to i64
  %idx.neg786 = sub nsw i64 0, %idx.ext785
  %add.ptr787 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg786
  %tmp98 = load i8, i8* %add.ptr787, align 1, !tbaa !7
  %conv788 = zext i8 %tmp98 to i32
  %tmp99 = load i8, i8* %incdec.ptr783.pre-phi, align 1, !tbaa !7
  %idx.ext792 = zext i8 %tmp99 to i64
  %idx.neg793 = sub nsw i64 0, %idx.ext792
  %add.ptr794 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg793
  %tmp100 = load i8, i8* %add.ptr794, align 1, !tbaa !7
  %conv795 = zext i8 %tmp100 to i32
  %mul7811972 = sub nsw i32 %conv775, %conv795
  %tmp101 = load i8, i8* %add.ptr805.pre-phi, align 1, !tbaa !7
  %idx.ext808 = zext i8 %tmp101 to i64
  %idx.neg809 = sub nsw i64 0, %idx.ext808
  %add.ptr810 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg809
  %tmp102 = load i8, i8* %add.ptr810, align 1, !tbaa !7
  %conv811 = zext i8 %tmp102 to i32
  %mul812 = shl nuw nsw i32 %conv811, 2
  %tmp103 = load i8, i8* %incdec.ptr806.pre-phi, align 1, !tbaa !7
  %idx.ext822 = zext i8 %tmp103 to i64
  %idx.neg823 = sub nsw i64 0, %idx.ext822
  %add.ptr824 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg823
  %tmp104 = load i8, i8* %add.ptr824, align 1, !tbaa !7
  %conv825 = zext i8 %tmp104 to i32
  %tmp105 = load i8, i8* %incdec.ptr820.pre-phi, align 1, !tbaa !7
  %idx.ext835 = zext i8 %tmp105 to i64
  %idx.neg836 = sub nsw i64 0, %idx.ext835
  %add.ptr837 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg836
  %tmp106 = load i8, i8* %add.ptr837, align 1, !tbaa !7
  %conv838 = zext i8 %tmp106 to i32
  %tmp107 = load i8, i8* %incdec.ptr833.pre-phi, align 1, !tbaa !7
  %idx.ext843 = zext i8 %tmp107 to i64
  %idx.neg844 = sub nsw i64 0, %idx.ext843
  %add.ptr845 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg844
  %tmp108 = load i8, i8* %add.ptr845, align 1, !tbaa !7
  %conv846 = zext i8 %tmp108 to i32
  %mul852 = shl nuw nsw i32 %conv846, 1
  %tmp109 = load i8, i8* %incdec.ptr841.pre-phi, align 1, !tbaa !7
  %idx.ext855 = zext i8 %tmp109 to i64
  %idx.neg856 = sub nsw i64 0, %idx.ext855
  %add.ptr857 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg856
  %tmp110 = load i8, i8* %add.ptr857, align 1, !tbaa !7
  %conv858 = zext i8 %tmp110 to i32
  %mul859 = shl nuw nsw i32 %conv858, 2
  %tmp111 = load i8, i8* %add.ptr869.pre-phi, align 1, !tbaa !7
  %idx.ext872 = zext i8 %tmp111 to i64
  %idx.neg873 = sub nsw i64 0, %idx.ext872
  %add.ptr874 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg873
  %tmp112 = load i8, i8* %add.ptr874, align 1, !tbaa !7
  %conv875 = zext i8 %tmp112 to i32
  %tmp113 = load i8, i8* %incdec.ptr870.pre-phi, align 1, !tbaa !7
  %idx.ext885 = zext i8 %tmp113 to i64
  %idx.neg886 = sub nsw i64 0, %idx.ext885
  %add.ptr887 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg886
  %tmp114 = load i8, i8* %add.ptr887, align 1, !tbaa !7
  %conv888 = zext i8 %tmp114 to i32
  %tmp115 = load i8, i8* %incdec.ptr883.pre-phi, align 1, !tbaa !7
  %idx.ext898 = zext i8 %tmp115 to i64
  %idx.neg899 = sub nsw i64 0, %idx.ext898
  %add.ptr900 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg899
  %tmp116 = load i8, i8* %add.ptr900, align 1, !tbaa !7
  %conv901 = zext i8 %tmp116 to i32
  %tmp117 = load i8, i8* %incdec.ptr896.pre-phi, align 1, !tbaa !7
  %idx.ext909 = zext i8 %tmp117 to i64
  %idx.neg910 = sub nsw i64 0, %idx.ext909
  %add.ptr911 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg910
  %tmp118 = load i8, i8* %add.ptr911, align 1, !tbaa !7
  %conv912 = zext i8 %tmp118 to i32
  %tmp119 = load i8, i8* %incdec.ptr907.pre-phi, align 1, !tbaa !7
  %idx.ext916 = zext i8 %tmp119 to i64
  %idx.neg917 = sub nsw i64 0, %idx.ext916
  %add.ptr918 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg917
  %tmp120 = load i8, i8* %add.ptr918, align 1, !tbaa !7
  %conv919 = zext i8 %tmp120 to i32
  %tmp121 = load i8, i8* %incdec.ptr914.pre-phi, align 1, !tbaa !7
  %idx.ext927 = zext i8 %tmp121 to i64
  %idx.neg928 = sub nsw i64 0, %idx.ext927
  %add.ptr929 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg928
  %tmp122 = load i8, i8* %add.ptr929, align 1, !tbaa !7
  %conv930 = zext i8 %tmp122 to i32
  %mul936 = shl nuw nsw i32 %conv930, 1
  %tmp123 = load i8, i8* %incdec.ptr925.pre-phi, align 1, !tbaa !7
  %idx.ext939 = zext i8 %tmp123 to i64
  %idx.neg940 = sub nsw i64 0, %idx.ext939
  %add.ptr941 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg940
  %tmp124 = load i8, i8* %add.ptr941, align 1, !tbaa !7
  %conv942 = zext i8 %tmp124 to i32
  %tmp125 = load i8, i8* %add.ptr1000.pre-phi, align 1, !tbaa !7
  %idx.ext1003 = zext i8 %tmp125 to i64
  %idx.neg1004 = sub nsw i64 0, %idx.ext1003
  %add.ptr1005 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1004
  %tmp126 = load i8, i8* %add.ptr1005, align 1, !tbaa !7
  %conv1006 = zext i8 %tmp126 to i32
  %tmp127 = load i8, i8* %incdec.ptr1001.pre-phi, align 1, !tbaa !7
  %idx.ext1016 = zext i8 %tmp127 to i64
  %idx.neg1017 = sub nsw i64 0, %idx.ext1016
  %add.ptr1018 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1017
  %tmp128 = load i8, i8* %add.ptr1018, align 1, !tbaa !7
  %conv1019 = zext i8 %tmp128 to i32
  %mul1025 = shl nuw nsw i32 %conv1019, 1
  %tmp129 = load i8, i8* %incdec.ptr1014.pre-phi, align 1, !tbaa !7
  %idx.ext1029 = zext i8 %tmp129 to i64
  %idx.neg1030 = sub nsw i64 0, %idx.ext1029
  %add.ptr1031 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1030
  %tmp130 = load i8, i8* %add.ptr1031, align 1, !tbaa !7
  %conv1032 = zext i8 %tmp130 to i32
  %tmp131 = load i8, i8* %incdec.ptr1027.pre-phi, align 1, !tbaa !7
  %idx.ext1040 = zext i8 %tmp131 to i64
  %idx.neg1041 = sub nsw i64 0, %idx.ext1040
  %add.ptr1042 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1041
  %tmp132 = load i8, i8* %add.ptr1042, align 1, !tbaa !7
  %conv1043 = zext i8 %tmp132 to i32
  %tmp133 = load i8, i8* %incdec.ptr1038.pre-phi, align 1, !tbaa !7
  %idx.ext1047 = zext i8 %tmp133 to i64
  %idx.neg1048 = sub nsw i64 0, %idx.ext1047
  %add.ptr1049 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1048
  %tmp134 = load i8, i8* %add.ptr1049, align 1, !tbaa !7
  %conv1050 = zext i8 %tmp134 to i32
  %tmp135 = load i8, i8* %incdec.ptr1045.pre-phi, align 1, !tbaa !7
  %idx.ext1058 = zext i8 %tmp135 to i64
  %idx.neg1059 = sub nsw i64 0, %idx.ext1058
  %add.ptr1060 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1059
  %tmp136 = load i8, i8* %add.ptr1060, align 1, !tbaa !7
  %conv1061 = zext i8 %tmp136 to i32
  %tmp137 = load i8, i8* %incdec.ptr1056.pre-phi, align 1, !tbaa !7
  %idx.ext1070 = zext i8 %tmp137 to i64
  %idx.neg1071 = sub nsw i64 0, %idx.ext1070
  %add.ptr1072 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1071
  %tmp138 = load i8, i8* %add.ptr1072, align 1, !tbaa !7
  %conv1073 = zext i8 %tmp138 to i32
  %tmp139 = load i8, i8* %add.ptr1083.pre-phi, align 1, !tbaa !7
  %idx.ext1086 = zext i8 %tmp139 to i64
  %idx.neg1087 = sub nsw i64 0, %idx.ext1086
  %add.ptr1088 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1087
  %tmp140 = load i8, i8* %add.ptr1088, align 1, !tbaa !7
  %conv1089 = zext i8 %tmp140 to i32
  %mul1090 = shl nuw nsw i32 %conv1089, 2
  %tmp141 = load i8, i8* %incdec.ptr1084.pre-phi, align 1, !tbaa !7
  %idx.ext1100 = zext i8 %tmp141 to i64
  %idx.neg1101 = sub nsw i64 0, %idx.ext1100
  %add.ptr1102 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1101
  %tmp142 = load i8, i8* %add.ptr1102, align 1, !tbaa !7
  %conv1103 = zext i8 %tmp142 to i32
  %mul1109 = shl nuw nsw i32 %conv1103, 1
  %tmp143 = load i8, i8* %incdec.ptr1098.pre-phi, align 1, !tbaa !7
  %idx.ext1113 = zext i8 %tmp143 to i64
  %idx.neg1114 = sub nsw i64 0, %idx.ext1113
  %add.ptr1115 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1114
  %tmp144 = load i8, i8* %add.ptr1115, align 1, !tbaa !7
  %conv1116 = zext i8 %tmp144 to i32
  %tmp145 = load i8, i8* %incdec.ptr1111.pre-phi, align 1, !tbaa !7
  %idx.ext1121 = zext i8 %tmp145 to i64
  %idx.neg1122 = sub nsw i64 0, %idx.ext1121
  %add.ptr1123 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1122
  %tmp146 = load i8, i8* %add.ptr1123, align 1, !tbaa !7
  %conv1124 = zext i8 %tmp146 to i32
  %tmp147 = load i8, i8* %incdec.ptr1119.pre-phi, align 1, !tbaa !7
  %idx.ext1133 = zext i8 %tmp147 to i64
  %idx.neg1134 = sub nsw i64 0, %idx.ext1133
  %add.ptr1135 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1134
  %tmp148 = load i8, i8* %add.ptr1135, align 1, !tbaa !7
  %conv1136 = zext i8 %tmp148 to i32
  %mul1137 = shl nuw nsw i32 %conv1136, 2
  %tmp149 = load i8, i8* %add.ptr1147.pre-phi, align 1, !tbaa !7
  %idx.ext1150 = zext i8 %tmp149 to i64
  %idx.neg1151 = sub nsw i64 0, %idx.ext1150
  %add.ptr1152 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1151
  %tmp150 = load i8, i8* %add.ptr1152, align 1, !tbaa !7
  %conv1153 = zext i8 %tmp150 to i32
  %tmp151 = load i8, i8* %incdec.ptr1148.pre-phi, align 1, !tbaa !7
  %idx.ext1163 = zext i8 %tmp151 to i64
  %idx.neg1164 = sub nsw i64 0, %idx.ext1163
  %add.ptr1165 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1164
  %tmp152 = load i8, i8* %add.ptr1165, align 1, !tbaa !7
  %conv1166 = zext i8 %tmp152 to i32
  %tmp153 = load i8, i8* %incdec.ptr1161.pre-phi, align 1, !tbaa !7
  %idx.ext1170 = zext i8 %tmp153 to i64
  %idx.neg1171 = sub nsw i64 0, %idx.ext1170
  %add.ptr1172 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg1171
  %tmp154 = load i8, i8* %add.ptr1172, align 1, !tbaa !7
  %conv1173 = zext i8 %tmp154 to i32
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
  %tmp155 = load i8, i8* %add.ptr952.pre-phi, align 1, !tbaa !7
  %idx.ext955 = zext i8 %tmp155 to i64
  %idx.neg956 = sub nsw i64 0, %idx.ext955
  %add.ptr957 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg956
  %tmp156 = load i8, i8* %add.ptr957, align 1, !tbaa !7
  %conv958 = zext i8 %tmp156 to i32
  %tmp157 = load i8, i8* %incdec.ptr953.pre-phi, align 1, !tbaa !7
  %idx.ext963 = zext i8 %tmp157 to i64
  %idx.neg964 = sub nsw i64 0, %idx.ext963
  %add.ptr965 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg964
  %tmp158 = load i8, i8* %add.ptr965, align 1, !tbaa !7
  %conv966 = zext i8 %tmp158 to i32
  %tmp159 = load i8, i8* %incdec.ptr961.pre-phi, align 1, !tbaa !7
  %idx.ext970 = zext i8 %tmp159 to i64
  %idx.neg971 = sub nsw i64 0, %idx.ext970
  %add.ptr972 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg971
  %tmp160 = load i8, i8* %add.ptr972, align 1, !tbaa !7
  %conv973 = zext i8 %tmp160 to i32
  %tmp161 = load i8, i8* %add.ptr975.pre-phi, align 1, !tbaa !7
  %idx.ext978 = zext i8 %tmp161 to i64
  %idx.neg979 = sub nsw i64 0, %idx.ext978
  %add.ptr980 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg979
  %tmp162 = load i8, i8* %add.ptr980, align 1, !tbaa !7
  %conv981 = zext i8 %tmp162 to i32
  %tmp163 = load i8, i8* %incdec.ptr976.pre-phi, align 1, !tbaa !7
  %idx.ext985 = zext i8 %tmp163 to i64
  %idx.neg986 = sub nsw i64 0, %idx.ext985
  %add.ptr987 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg986
  %tmp164 = load i8, i8* %add.ptr987, align 1, !tbaa !7
  %conv988 = zext i8 %tmp164 to i32
  %tmp165 = load i8, i8* %incdec.ptr983.pre-phi, align 1, !tbaa !7
  %idx.ext992 = zext i8 %tmp165 to i64
  %idx.neg993 = sub nsw i64 0, %idx.ext992
  %add.ptr994 = getelementptr inbounds i8, i8* %add.ptr316, i64 %idx.neg993
  %tmp166 = load i8, i8* %add.ptr994, align 1, !tbaa !7
  %conv995 = zext i8 %tmp166 to i32
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

if.end1205:                                       ; preds = %if.else1198, %if.else1193, %if.end1188, %if.then762
  %a.1 = phi i32 [ 0, %if.end1188 ], [ 1, %if.else1193 ], [ %.1978, %if.else1198 ], [ 1, %if.then762 ]
  %b.1 = phi i32 [ 1, %if.end1188 ], [ 0, %if.else1193 ], [ 1, %if.else1198 ], [ 0, %if.then762 ]
  %tmp167 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$184"
  %add1206 = add nsw i32 %a.1, %tmp167
  %tmp168 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78"
  %mul1207 = mul nsw i32 %add1206, %tmp168
  %tmp169 = trunc i64 %arg1 to i32
  %add1208 = add i32 %b.1, %tmp169
  %add1209 = add i32 %add1208, %mul1207
  %idxprom1210 = sext i32 %add1209 to i64
  %tmp170 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx1211 = getelementptr inbounds i32, i32* %tmp170, i64 %idxprom1210
  %tmp171 = load i32, i32* %arrayidx1211, align 4, !tbaa !5
  %cmp1212 = icmp sgt i32 %tmp4, %tmp171
  br i1 %cmp1212, label %land.lhs.true1214, label %"susan_edges$0$0_latch$0"

land.lhs.true1214:                                ; preds = %if.end1205
  %tmp172 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$184"
  %sub1215 = sub nsw i32 %tmp172, %a.1
  %tmp173 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78"
  %mul1216 = mul nsw i32 %sub1215, %tmp173
  %add1217 = sub i32 %tmp169, %b.1
  %sub1218 = add i32 %add1217, %mul1216
  %idxprom1219 = sext i32 %sub1218 to i64
  %tmp174 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx1220 = getelementptr inbounds i32, i32* %tmp174, i64 %idxprom1219
  %tmp175 = load i32, i32* %arrayidx1220, align 4, !tbaa !5
  %cmp1221 = icmp slt i32 %tmp4, %tmp175
  br i1 %cmp1221, label %"susan_edges$0$0_latch$0", label %land.lhs.true1223

land.lhs.true1223:                                ; preds = %land.lhs.true1214
  %mul1224 = shl nsw i32 %a.1, 1
  %tmp176 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$184"
  %add1225 = add nsw i32 %mul1224, %tmp176
  %tmp177 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78"
  %mul1226 = mul nsw i32 %add1225, %tmp177
  %mul1228 = shl nuw nsw i32 %b.1, 1
  %add1227 = add i32 %mul1228, %tmp169
  %add1229 = add i32 %add1227, %mul1226
  %idxprom1230 = sext i32 %add1229 to i64
  %tmp178 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx1231 = getelementptr inbounds i32, i32* %tmp178, i64 %idxprom1230
  %tmp179 = load i32, i32* %arrayidx1231, align 4, !tbaa !5
  %cmp1232 = icmp sgt i32 %tmp4, %tmp179
  br i1 %cmp1232, label %land.lhs.true1234, label %"susan_edges$0$0_latch$0"

land.lhs.true1234:                                ; preds = %land.lhs.true1223
  %tmp180 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$184"
  %sub1236 = sub nsw i32 %tmp180, %mul1224
  %tmp181 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78"
  %mul1237 = mul nsw i32 %sub1236, %tmp181
  %add1238 = sub i32 %tmp169, %mul1228
  %sub1240 = add i32 %add1238, %mul1237
  %idxprom1241 = sext i32 %sub1240 to i64
  %tmp182 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx1242 = getelementptr inbounds i32, i32* %tmp182, i64 %idxprom1241
  %tmp183 = load i32, i32* %arrayidx1242, align 4, !tbaa !5
  %cmp1243 = icmp slt i32 %tmp4, %tmp183
  br i1 %cmp1243, label %"susan_edges$0$0_latch$0", label %if.then1245

if.then1245:                                      ; preds = %land.lhs.true1234
  %tmp184 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$77"
  %arrayidx1249 = getelementptr inbounds i8, i8* %tmp184, i64 %idxprom300
  store i8 2, i8* %arrayidx1249, align 1, !tbaa !7
  br label %"susan_edges$0$0_latch$0"

if.then682:                                       ; preds = %if.then319
  %cmp683 = icmp eq i32 %add666, 0
  br i1 %cmp683, label %if.end688, label %if.else

if.else:                                          ; preds = %if.then682
  %conv686 = sitofp i32 %add669 to float
  %conv687 = sitofp i32 %add666 to float
  %div = fdiv float %conv686, %conv687
  br label %if.end688

if.end688:                                        ; preds = %if.else, %if.then682
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
  %tmp185 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$185"
  %add712 = add nsw i32 %a.0, %tmp185
  %tmp186 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78"
  %mul713 = mul nsw i32 %add712, %tmp186
  %tmp187 = trunc i64 %arg1 to i32
  %add714 = add i32 %b.0, %tmp187
  %add715 = add i32 %add714, %mul713
  %idxprom716 = sext i32 %add715 to i64
  %tmp188 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx717 = getelementptr inbounds i32, i32* %tmp188, i64 %idxprom716
  %tmp189 = load i32, i32* %arrayidx717, align 4, !tbaa !5
  %cmp718 = icmp sgt i32 %tmp4, %tmp189
  br i1 %cmp718, label %land.lhs.true, label %"susan_edges$0$0_latch$0"

land.lhs.true:                                    ; preds = %if.end711
  %tmp190 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$185"
  %sub720 = sub nsw i32 %tmp190, %a.0
  %tmp191 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78"
  %mul721 = mul nsw i32 %sub720, %tmp191
  %add722 = sub i32 %tmp187, %b.0
  %sub723 = add i32 %add722, %mul721
  %idxprom724 = sext i32 %sub723 to i64
  %tmp192 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx725 = getelementptr inbounds i32, i32* %tmp192, i64 %idxprom724
  %tmp193 = load i32, i32* %arrayidx725, align 4, !tbaa !5
  %cmp726 = icmp slt i32 %tmp4, %tmp193
  br i1 %cmp726, label %"susan_edges$0$0_latch$0", label %land.lhs.true728

land.lhs.true728:                                 ; preds = %land.lhs.true
  %mul729 = shl nsw i32 %a.0, 1
  %tmp194 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$185"
  %add730 = add nsw i32 %mul729, %tmp194
  %tmp195 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78"
  %mul731 = mul nsw i32 %add730, %tmp195
  %mul733 = shl nuw nsw i32 %b.0, 1
  %add732 = add i32 %mul733, %tmp187
  %add734 = add i32 %add732, %mul731
  %idxprom735 = sext i32 %add734 to i64
  %tmp196 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx736 = getelementptr inbounds i32, i32* %tmp196, i64 %idxprom735
  %tmp197 = load i32, i32* %arrayidx736, align 4, !tbaa !5
  %cmp737 = icmp sgt i32 %tmp4, %tmp197
  br i1 %cmp737, label %land.lhs.true739, label %"susan_edges$0$0_latch$0"

land.lhs.true739:                                 ; preds = %land.lhs.true728
  %tmp198 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$185"
  %sub741 = sub nsw i32 %tmp198, %mul729
  %tmp199 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$78"
  %mul742 = mul nsw i32 %sub741, %tmp199
  %add743 = sub i32 %tmp187, %mul733
  %sub745 = add i32 %add743, %mul742
  %idxprom746 = sext i32 %sub745 to i64
  %tmp200 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$68"
  %arrayidx747 = getelementptr inbounds i32, i32* %tmp200, i64 %idxprom746
  %tmp201 = load i32, i32* %arrayidx747, align 4, !tbaa !5
  %cmp748 = icmp slt i32 %tmp4, %tmp201
  br i1 %cmp748, label %"susan_edges$0$0_latch$0", label %if.then750

if.then750:                                       ; preds = %land.lhs.true739
  %tmp202 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$77"
  %arrayidx754 = getelementptr inbounds i8, i8* %tmp202, i64 %idxprom300
  store i8 1, i8* %arrayidx754, align 1, !tbaa !7
  br label %"susan_edges$0$0_latch$0"

"susan_edges$0$0_latch$0":                        ; preds = %if.then750, %land.lhs.true739, %land.lhs.true728, %land.lhs.true, %if.end711, %if.then1245, %land.lhs.true1234, %land.lhs.true1223, %land.lhs.true1214, %if.end1205, %"susan_edges$0$0_header"
  %indvars.iv.next = add nuw nsw i64 %arg1, 1
  %inc1254 = add nuw nsw i32 %arg, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %tmp203 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$80"
  %exitcond = icmp eq i32 %lftr.wideiv, %tmp203
  br i1 %exitcond, label %"susan_edges$0$0_return_from_recursive_function$0", label %"susan_edges$0$0_increment_depth_counter"

"susan_edges$0$0_increment_depth_counter":        ; preds = %"susan_edges$0$0_latch$0"
  br label %"susan_edges$0$0_recursively_call_function"

"susan_edges$0$0_recursively_call_function":      ; preds = %"susan_edges$0$0_increment_depth_counter"
  call void @"susan_edges$0$0"(i32 %inc1254, i64 %indvars.iv.next)
  ret void

"susan_edges$0$0_return_from_recursive_function$0": ; preds = %"susan_edges$0$0_latch$0"
  ret void
}

define void @"susan_edges_small$1$0"(i32 %arg, i64 %arg1) {
"susan_edges_small$1$0_header":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$189"
  %add.ptr11 = getelementptr inbounds i8, i8* %tmp, i64 %arg1
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$188"
  %add = add nsw i32 %arg, %tmp2
  %idxprom = sext i32 %add to i64
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$90"
  %arrayidx = getelementptr inbounds i8, i8* %tmp3, i64 %idxprom
  %tmp4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idx.ext15 = zext i8 %tmp4 to i64
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$89"
  %add.ptr16 = getelementptr inbounds i8, i8* %tmp5, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %tmp6 = load i8, i8* %add.ptr12, align 1, !tbaa !7
  %idx.ext18 = zext i8 %tmp6 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %tmp7 = load i8, i8* %add.ptr19, align 1, !tbaa !7
  %conv20 = zext i8 %tmp7 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %tmp8 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %idx.ext24 = zext i8 %tmp8 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %tmp9 = load i8, i8* %add.ptr26, align 1, !tbaa !7
  %conv27 = zext i8 %tmp9 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %tmp10 = load i8, i8* %incdec.ptr22, align 1, !tbaa !7
  %idx.ext30 = zext i8 %tmp10 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %tmp11 = load i8, i8* %add.ptr32, align 1, !tbaa !7
  %conv33 = zext i8 %tmp11 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %tmp12 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$88"
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %tmp12
  %tmp13 = load i8, i8* %add.ptr37, align 1, !tbaa !7
  %idx.ext39 = zext i8 %tmp13 to i64
  %idx.neg40 = sub nsw i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg40
  %tmp14 = load i8, i8* %add.ptr41, align 1, !tbaa !7
  %conv42 = zext i8 %tmp14 to i32
  %add43 = add nuw nsw i32 %add34, %conv42
  %add.ptr44 = getelementptr inbounds i8, i8* %add.ptr37, i64 2
  %tmp15 = load i8, i8* %add.ptr44, align 1, !tbaa !7
  %idx.ext46 = zext i8 %tmp15 to i64
  %idx.neg47 = sub nsw i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg47
  %tmp16 = load i8, i8* %add.ptr48, align 1, !tbaa !7
  %conv49 = zext i8 %tmp16 to i32
  %add50 = add nuw nsw i32 %add43, %conv49
  %tmp17 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$88"
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr44, i64 %tmp17
  %incdec.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 1
  %tmp18 = load i8, i8* %add.ptr53, align 1, !tbaa !7
  %idx.ext56 = zext i8 %tmp18 to i64
  %idx.neg57 = sub nsw i64 0, %idx.ext56
  %add.ptr58 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg57
  %tmp19 = load i8, i8* %add.ptr58, align 1, !tbaa !7
  %conv59 = zext i8 %tmp19 to i32
  %add60 = add nuw nsw i32 %add50, %conv59
  %incdec.ptr61 = getelementptr inbounds i8, i8* %incdec.ptr54, i64 1
  %tmp20 = load i8, i8* %incdec.ptr54, align 1, !tbaa !7
  %idx.ext63 = zext i8 %tmp20 to i64
  %idx.neg64 = sub nsw i64 0, %idx.ext63
  %add.ptr65 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg64
  %tmp21 = load i8, i8* %add.ptr65, align 1, !tbaa !7
  %conv66 = zext i8 %tmp21 to i32
  %add67 = add nsw i32 %add60, %conv66
  %tmp22 = load i8, i8* %incdec.ptr61, align 1, !tbaa !7
  %idx.ext69 = zext i8 %tmp22 to i64
  %idx.neg70 = sub nsw i64 0, %idx.ext69
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg70
  %tmp23 = load i8, i8* %add.ptr71, align 1, !tbaa !7
  %conv72 = zext i8 %tmp23 to i32
  %add73 = add nsw i32 %add67, %conv72
  %cmp74 = icmp slt i32 %add73, 731
  br i1 %cmp74, label %if.then, label %"susan_edges_small$1$0_latch$0"

if.then:                                          ; preds = %"susan_edges_small$1$0_header"
  %sub76 = sub nsw i32 730, %add73
  %tmp24 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$87"
  %arrayidx80 = getelementptr inbounds i32, i32* %tmp24, i64 %idxprom
  store i32 %sub76, i32* %arrayidx80, align 4, !tbaa !5
  br label %"susan_edges_small$1$0_latch$0"

"susan_edges_small$1$0_latch$0":                  ; preds = %if.then, %"susan_edges_small$1$0_header"
  %indvars.iv.next658 = add nuw nsw i64 %arg1, 1
  %inc = add nuw nsw i32 %arg, 1
  %lftr.wideiv659 = trunc i64 %indvars.iv.next658 to i32
  %tmp25 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$86"
  %exitcond660 = icmp eq i32 %lftr.wideiv659, %tmp25
  br i1 %exitcond660, label %"susan_edges_small$1$0_return_from_recursive_function$0", label %"susan_edges_small$1$0_increment_depth_counter"

"susan_edges_small$1$0_increment_depth_counter":  ; preds = %"susan_edges_small$1$0_latch$0"
  br label %"susan_edges_small$1$0_recursively_call_function"

"susan_edges_small$1$0_recursively_call_function": ; preds = %"susan_edges_small$1$0_increment_depth_counter"
  call void @"susan_edges_small$1$0"(i32 %inc, i64 %indvars.iv.next658)
  ret void

"susan_edges_small$1$0_return_from_recursive_function$0": ; preds = %"susan_edges_small$1$0_latch$0"
  ret void
}

define void @"susan_edges_small$0$0"(i32 %arg, i64 %arg1) {
"susan_edges_small$0$0_header":
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$193"
  %add95 = add nsw i32 %arg, %tmp
  %idxprom96 = sext i32 %add95 to i64
  %tmp2 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$87"
  %arrayidx97 = getelementptr inbounds i32, i32* %tmp2, i64 %idxprom96
  %tmp3 = load i32, i32* %arrayidx97, align 4, !tbaa !5
  %cmp98 = icmp sgt i32 %tmp3, 0
  br i1 %cmp98, label %if.then100, label %"susan_edges_small$0$0_latch$0"

if.then100:                                       ; preds = %"susan_edges_small$0$0_header"
  %sub105 = sub nsw i32 730, %tmp3
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$90"
  %arrayidx109 = getelementptr inbounds i8, i8* %tmp4, i64 %idxprom96
  %tmp5 = load i8, i8* %arrayidx109, align 1, !tbaa !7
  %idx.ext111 = zext i8 %tmp5 to i64
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$89"
  %add.ptr112 = getelementptr inbounds i8, i8* %tmp6, i64 %idx.ext111
  %cmp113 = icmp sgt i32 %sub105, 250
  %tmp7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$192"
  %add.ptr121 = getelementptr inbounds i8, i8* %tmp7, i64 %arg1
  %add.ptr122 = getelementptr inbounds i8, i8* %add.ptr121, i64 -1
  %incdec.ptr123 = getelementptr inbounds i8, i8* %add.ptr122, i64 1
  br i1 %cmp113, label %if.then115, label %if.then100.if.then260_crit_edge

if.then100.if.then260_crit_edge:                  ; preds = %if.then100
  %.pre670 = getelementptr inbounds i8, i8* %incdec.ptr123, i64 1
  %tmp8 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$98"
  %.pre671 = getelementptr inbounds i8, i8* %.pre670, i64 %tmp8
  %.pre672 = getelementptr inbounds i8, i8* %.pre671, i64 2
  %tmp9 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$98"
  %.pre673 = getelementptr inbounds i8, i8* %.pre672, i64 %tmp9
  %.pre674 = getelementptr inbounds i8, i8* %.pre673, i64 1
  %.pre675 = getelementptr inbounds i8, i8* %.pre674, i64 1
  br label %if.then260

if.then115:                                       ; preds = %if.then100
  %tmp10 = load i8, i8* %add.ptr122, align 1, !tbaa !7
  %idx.ext125 = zext i8 %tmp10 to i64
  %idx.neg126 = sub nsw i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg126
  %tmp11 = load i8, i8* %add.ptr127, align 1, !tbaa !7
  %conv128 = zext i8 %tmp11 to i32
  %incdec.ptr132 = getelementptr inbounds i8, i8* %incdec.ptr123, i64 1
  %tmp12 = load i8, i8* %incdec.ptr123, align 1, !tbaa !7
  %idx.ext134 = zext i8 %tmp12 to i64
  %idx.neg135 = sub nsw i64 0, %idx.ext134
  %add.ptr136 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg135
  %tmp13 = load i8, i8* %add.ptr136, align 1, !tbaa !7
  %conv137 = zext i8 %tmp13 to i32
  %sum = add nuw nsw i32 %conv137, %conv128
  %tmp14 = load i8, i8* %incdec.ptr132, align 1, !tbaa !7
  %idx.ext140 = zext i8 %tmp14 to i64
  %idx.neg141 = sub nsw i64 0, %idx.ext140
  %add.ptr142 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg141
  %tmp15 = load i8, i8* %add.ptr142, align 1, !tbaa !7
  %conv143 = zext i8 %tmp15 to i32
  %add144 = sub nsw i32 %conv143, %conv128
  %sum647 = add nuw nsw i32 %sum, %conv143
  %tmp16 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$98"
  %add.ptr149 = getelementptr inbounds i8, i8* %incdec.ptr132, i64 %tmp16
  %tmp17 = load i8, i8* %add.ptr149, align 1, !tbaa !7
  %idx.ext151 = zext i8 %tmp17 to i64
  %idx.neg152 = sub nsw i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg152
  %tmp18 = load i8, i8* %add.ptr153, align 1, !tbaa !7
  %conv154 = zext i8 %tmp18 to i32
  %sub155 = sub nsw i32 %add144, %conv154
  %add.ptr156 = getelementptr inbounds i8, i8* %add.ptr149, i64 2
  %tmp19 = load i8, i8* %add.ptr156, align 1, !tbaa !7
  %idx.ext158 = zext i8 %tmp19 to i64
  %idx.neg159 = sub nsw i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg159
  %tmp20 = load i8, i8* %add.ptr160, align 1, !tbaa !7
  %conv161 = zext i8 %tmp20 to i32
  %add162 = add nsw i32 %sub155, %conv161
  %tmp21 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$98"
  %add.ptr165 = getelementptr inbounds i8, i8* %add.ptr156, i64 %tmp21
  %incdec.ptr166 = getelementptr inbounds i8, i8* %add.ptr165, i64 1
  %tmp22 = load i8, i8* %add.ptr165, align 1, !tbaa !7
  %idx.ext168 = zext i8 %tmp22 to i64
  %idx.neg169 = sub nsw i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg169
  %tmp23 = load i8, i8* %add.ptr170, align 1, !tbaa !7
  %conv171 = zext i8 %tmp23 to i32
  %sub172 = sub nsw i32 %add162, %conv171
  %add174 = sub nsw i32 %conv171, %sum647
  %incdec.ptr175 = getelementptr inbounds i8, i8* %incdec.ptr166, i64 1
  %tmp24 = load i8, i8* %incdec.ptr166, align 1, !tbaa !7
  %idx.ext177 = zext i8 %tmp24 to i64
  %idx.neg178 = sub nsw i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg178
  %tmp25 = load i8, i8* %add.ptr179, align 1, !tbaa !7
  %conv180 = zext i8 %tmp25 to i32
  %add181 = add nsw i32 %add174, %conv180
  %tmp26 = load i8, i8* %incdec.ptr175, align 1, !tbaa !7
  %idx.ext183 = zext i8 %tmp26 to i64
  %idx.neg184 = sub nsw i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg184
  %tmp27 = load i8, i8* %add.ptr185, align 1, !tbaa !7
  %conv186 = zext i8 %tmp27 to i32
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

if.then260:                                       ; preds = %if.then115, %if.then100.if.then260_crit_edge
  %incdec.ptr326.pre-phi = phi i8* [ %.pre675, %if.then100.if.then260_crit_edge ], [ %incdec.ptr175, %if.then115 ]
  %incdec.ptr315.pre-phi = phi i8* [ %.pre674, %if.then100.if.then260_crit_edge ], [ %incdec.ptr166, %if.then115 ]
  %add.ptr314.pre-phi = phi i8* [ %.pre673, %if.then100.if.then260_crit_edge ], [ %add.ptr165, %if.then115 ]
  %add.ptr305.pre-phi = phi i8* [ %.pre672, %if.then100.if.then260_crit_edge ], [ %add.ptr156, %if.then115 ]
  %add.ptr298.pre-phi = phi i8* [ %.pre671, %if.then100.if.then260_crit_edge ], [ %add.ptr149, %if.then115 ]
  %incdec.ptr279.pre-phi = phi i8* [ %.pre670, %if.then100.if.then260_crit_edge ], [ %incdec.ptr132, %if.then115 ]
  %tmp28 = load i8, i8* %add.ptr122, align 1, !tbaa !7
  %idx.ext270 = zext i8 %tmp28 to i64
  %idx.neg271 = sub nsw i64 0, %idx.ext270
  %add.ptr272 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg271
  %tmp29 = load i8, i8* %add.ptr272, align 1, !tbaa !7
  %conv273 = zext i8 %tmp29 to i32
  %tmp30 = load i8, i8* %incdec.ptr123, align 1, !tbaa !7
  %idx.ext281 = zext i8 %tmp30 to i64
  %idx.neg282 = sub nsw i64 0, %idx.ext281
  %add.ptr283 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg282
  %tmp31 = load i8, i8* %add.ptr283, align 1, !tbaa !7
  %conv284 = zext i8 %tmp31 to i32
  %add285 = add nuw nsw i32 %conv284, %conv273
  %tmp32 = load i8, i8* %incdec.ptr279.pre-phi, align 1, !tbaa !7
  %idx.ext287 = zext i8 %tmp32 to i64
  %idx.neg288 = sub nsw i64 0, %idx.ext287
  %add.ptr289 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg288
  %tmp33 = load i8, i8* %add.ptr289, align 1, !tbaa !7
  %conv290 = zext i8 %tmp33 to i32
  %add293 = add nuw nsw i32 %add285, %conv290
  %sub295 = sub nsw i32 %conv273, %conv290
  %tmp34 = load i8, i8* %add.ptr314.pre-phi, align 1, !tbaa !7
  %idx.ext317 = zext i8 %tmp34 to i64
  %idx.neg318 = sub nsw i64 0, %idx.ext317
  %add.ptr319 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg318
  %tmp35 = load i8, i8* %add.ptr319, align 1, !tbaa !7
  %conv320 = zext i8 %tmp35 to i32
  %add323 = add nuw nsw i32 %add293, %conv320
  %sub325 = sub nsw i32 %sub295, %conv320
  %tmp36 = load i8, i8* %incdec.ptr315.pre-phi, align 1, !tbaa !7
  %idx.ext328 = zext i8 %tmp36 to i64
  %idx.neg329 = sub nsw i64 0, %idx.ext328
  %add.ptr330 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg329
  %tmp37 = load i8, i8* %add.ptr330, align 1, !tbaa !7
  %conv331 = zext i8 %tmp37 to i32
  %add332 = add nuw nsw i32 %add323, %conv331
  %tmp38 = load i8, i8* %incdec.ptr326.pre-phi, align 1, !tbaa !7
  %idx.ext334 = zext i8 %tmp38 to i64
  %idx.neg335 = sub nsw i64 0, %idx.ext334
  %add.ptr336 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg335
  %tmp39 = load i8, i8* %add.ptr336, align 1, !tbaa !7
  %conv337 = zext i8 %tmp39 to i32
  %add340 = add nuw nsw i32 %add332, %conv337
  %add342 = add nsw i32 %sub325, %conv337
  %cmp343 = icmp eq i32 %add340, 0
  br i1 %cmp343, label %if.end367, label %if.end350

if.end350:                                        ; preds = %if.then260
  %add291 = add nuw nsw i32 %conv290, %conv273
  %tmp40 = load i8, i8* %add.ptr298.pre-phi, align 1, !tbaa !7
  %idx.ext300 = zext i8 %tmp40 to i64
  %idx.neg301 = sub nsw i64 0, %idx.ext300
  %add.ptr302 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg301
  %tmp41 = load i8, i8* %add.ptr302, align 1, !tbaa !7
  %conv303 = zext i8 %tmp41 to i32
  %tmp42 = load i8, i8* %add.ptr305.pre-phi, align 1, !tbaa !7
  %idx.ext307 = zext i8 %tmp42 to i64
  %idx.neg308 = sub nsw i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, i8* %add.ptr112, i64 %idx.neg308
  %tmp43 = load i8, i8* %add.ptr309, align 1, !tbaa !7
  %conv310 = zext i8 %tmp43 to i32
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

if.end367:                                        ; preds = %if.else360, %if.else355, %if.end350, %if.then260
  %a.1 = phi i32 [ 0, %if.end350 ], [ 1, %if.else355 ], [ %.632, %if.else360 ], [ 1, %if.then260 ]
  %b.1 = phi i32 [ 1, %if.end350 ], [ 0, %if.else355 ], [ 1, %if.else360 ], [ 0, %if.then260 ]
  %tmp44 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$190"
  %add368 = add nsw i32 %a.1, %tmp44
  %tmp45 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$96"
  %mul369 = mul nsw i32 %add368, %tmp45
  %tmp46 = trunc i64 %arg1 to i32
  %add370 = add i32 %b.1, %tmp46
  %add371 = add i32 %add370, %mul369
  %idxprom372 = sext i32 %add371 to i64
  %tmp47 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$87"
  %arrayidx373 = getelementptr inbounds i32, i32* %tmp47, i64 %idxprom372
  %tmp48 = load i32, i32* %arrayidx373, align 4, !tbaa !5
  %cmp374 = icmp sgt i32 %tmp3, %tmp48
  br i1 %cmp374, label %land.lhs.true376, label %"susan_edges_small$0$0_latch$0"

land.lhs.true376:                                 ; preds = %if.end367
  %tmp49 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$190"
  %sub377 = sub nsw i32 %tmp49, %a.1
  %tmp50 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$96"
  %mul378 = mul nsw i32 %sub377, %tmp50
  %add379 = sub i32 %tmp46, %b.1
  %sub380 = add i32 %add379, %mul378
  %idxprom381 = sext i32 %sub380 to i64
  %tmp51 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$87"
  %arrayidx382 = getelementptr inbounds i32, i32* %tmp51, i64 %idxprom381
  %tmp52 = load i32, i32* %arrayidx382, align 4, !tbaa !5
  %cmp383 = icmp slt i32 %tmp3, %tmp52
  br i1 %cmp383, label %"susan_edges_small$0$0_latch$0", label %if.then385

if.then385:                                       ; preds = %land.lhs.true376
  %tmp53 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$95"
  %arrayidx389 = getelementptr inbounds i8, i8* %tmp53, i64 %idxprom96
  store i8 2, i8* %arrayidx389, align 1, !tbaa !7
  br label %"susan_edges_small$0$0_latch$0"

if.then202:                                       ; preds = %if.then115
  %cmp203 = icmp eq i32 %add187, 0
  br i1 %cmp203, label %if.end208, label %if.else

if.else:                                          ; preds = %if.then202
  %conv206 = sitofp i32 %add189 to float
  %conv207 = sitofp i32 %add187 to float
  %div = fdiv float %conv206, %conv207
  br label %if.end208

if.end208:                                        ; preds = %if.else, %if.then202
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
  %tmp54 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$191"
  %add232 = add nsw i32 %a.0, %tmp54
  %tmp55 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$96"
  %mul233 = mul nsw i32 %add232, %tmp55
  %tmp56 = trunc i64 %arg1 to i32
  %add234 = add i32 %b.0, %tmp56
  %add235 = add i32 %add234, %mul233
  %idxprom236 = sext i32 %add235 to i64
  %tmp57 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$87"
  %arrayidx237 = getelementptr inbounds i32, i32* %tmp57, i64 %idxprom236
  %tmp58 = load i32, i32* %arrayidx237, align 4, !tbaa !5
  %cmp238 = icmp sgt i32 %tmp3, %tmp58
  br i1 %cmp238, label %land.lhs.true, label %"susan_edges_small$0$0_latch$0"

land.lhs.true:                                    ; preds = %if.end231
  %tmp59 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$191"
  %sub240 = sub nsw i32 %tmp59, %a.0
  %tmp60 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$96"
  %mul241 = mul nsw i32 %sub240, %tmp60
  %add242 = sub i32 %tmp56, %b.0
  %sub243 = add i32 %add242, %mul241
  %idxprom244 = sext i32 %sub243 to i64
  %tmp61 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$87"
  %arrayidx245 = getelementptr inbounds i32, i32* %tmp61, i64 %idxprom244
  %tmp62 = load i32, i32* %arrayidx245, align 4, !tbaa !5
  %cmp246 = icmp slt i32 %tmp3, %tmp62
  br i1 %cmp246, label %"susan_edges_small$0$0_latch$0", label %if.then248

if.then248:                                       ; preds = %land.lhs.true
  %tmp63 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$95"
  %arrayidx252 = getelementptr inbounds i8, i8* %tmp63, i64 %idxprom96
  store i8 1, i8* %arrayidx252, align 1, !tbaa !7
  br label %"susan_edges_small$0$0_latch$0"

"susan_edges_small$0$0_latch$0":                  ; preds = %if.then248, %land.lhs.true, %if.end231, %if.then385, %land.lhs.true376, %if.end367, %"susan_edges_small$0$0_header"
  %indvars.iv.next = add nuw nsw i64 %arg1, 1
  %inc394 = add nuw nsw i32 %arg, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %tmp64 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$97"
  %exitcond = icmp eq i32 %lftr.wideiv, %tmp64
  br i1 %exitcond, label %"susan_edges_small$0$0_return_from_recursive_function$0", label %"susan_edges_small$0$0_increment_depth_counter"

"susan_edges_small$0$0_increment_depth_counter":  ; preds = %"susan_edges_small$0$0_latch$0"
  br label %"susan_edges_small$0$0_recursively_call_function"

"susan_edges_small$0$0_recursively_call_function": ; preds = %"susan_edges_small$0$0_increment_depth_counter"
  call void @"susan_edges_small$0$0"(i32 %inc394, i64 %indvars.iv.next)
  ret void

"susan_edges_small$0$0_return_from_recursive_function$0": ; preds = %"susan_edges_small$0$0_latch$0"
  ret void
}

define void @"susan_corners$1$0"(i32 %arg, i64 %arg1) {
"susan_corners$1$0_header":
  %tmp2 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$197"
  %add.ptr18 = getelementptr inbounds i8, i8* %tmp2, i64 %arg1
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 -1
  %tmp3 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$196"
  %add = add nsw i32 %arg, %tmp3
  %idxprom = sext i32 %add to i64
  %tmp4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  %arrayidx = getelementptr inbounds i8, i8* %tmp4, i64 %idxprom
  %tmp5 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idx.ext22 = zext i8 %tmp5 to i64
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$111"
  %add.ptr23 = getelementptr inbounds i8, i8* %tmp6, i64 %idx.ext22
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr19, i64 1
  %tmp7 = load i8, i8* %add.ptr19, align 1, !tbaa !7
  %idx.ext25 = zext i8 %tmp7 to i64
  %idx.neg = sub nsw i64 0, %idx.ext25
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg
  %tmp8 = load i8, i8* %add.ptr26, align 1, !tbaa !7
  %conv27 = zext i8 %tmp8 to i32
  %add28 = add nuw nsw i32 %conv27, 100
  %incdec.ptr29 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %tmp9 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %idx.ext31 = zext i8 %tmp9 to i64
  %idx.neg32 = sub nsw i64 0, %idx.ext31
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg32
  %tmp10 = load i8, i8* %add.ptr33, align 1, !tbaa !7
  %conv34 = zext i8 %tmp10 to i32
  %add35 = add nuw nsw i32 %add28, %conv34
  %tmp11 = load i8, i8* %incdec.ptr29, align 1, !tbaa !7
  %idx.ext37 = zext i8 %tmp11 to i64
  %idx.neg38 = sub nsw i64 0, %idx.ext37
  %add.ptr39 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg38
  %tmp12 = load i8, i8* %add.ptr39, align 1, !tbaa !7
  %conv40 = zext i8 %tmp12 to i32
  %add41 = add nuw nsw i32 %add35, %conv40
  %tmp13 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$108"
  %add.ptr44 = getelementptr inbounds i8, i8* %incdec.ptr29, i64 %tmp13
  %incdec.ptr45 = getelementptr inbounds i8, i8* %add.ptr44, i64 1
  %tmp14 = load i8, i8* %add.ptr44, align 1, !tbaa !7
  %idx.ext47 = zext i8 %tmp14 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg48
  %tmp15 = load i8, i8* %add.ptr49, align 1, !tbaa !7
  %conv50 = zext i8 %tmp15 to i32
  %add51 = add nuw nsw i32 %add41, %conv50
  %incdec.ptr52 = getelementptr inbounds i8, i8* %incdec.ptr45, i64 1
  %tmp16 = load i8, i8* %incdec.ptr45, align 1, !tbaa !7
  %idx.ext54 = zext i8 %tmp16 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg55
  %tmp17 = load i8, i8* %add.ptr56, align 1, !tbaa !7
  %conv57 = zext i8 %tmp17 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds i8, i8* %incdec.ptr52, i64 1
  %tmp18 = load i8, i8* %incdec.ptr52, align 1, !tbaa !7
  %idx.ext61 = zext i8 %tmp18 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg62
  %tmp19 = load i8, i8* %add.ptr63, align 1, !tbaa !7
  %conv64 = zext i8 %tmp19 to i32
  %add65 = add nuw nsw i32 %add58, %conv64
  %incdec.ptr66 = getelementptr inbounds i8, i8* %incdec.ptr59, i64 1
  %tmp20 = load i8, i8* %incdec.ptr59, align 1, !tbaa !7
  %idx.ext68 = zext i8 %tmp20 to i64
  %idx.neg69 = sub nsw i64 0, %idx.ext68
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg69
  %tmp21 = load i8, i8* %add.ptr70, align 1, !tbaa !7
  %conv71 = zext i8 %tmp21 to i32
  %add72 = add nsw i32 %add65, %conv71
  %tmp22 = load i8, i8* %incdec.ptr66, align 1, !tbaa !7
  %idx.ext74 = zext i8 %tmp22 to i64
  %idx.neg75 = sub nsw i64 0, %idx.ext74
  %add.ptr76 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg75
  %tmp23 = load i8, i8* %add.ptr76, align 1, !tbaa !7
  %conv77 = zext i8 %tmp23 to i32
  %add78 = add nsw i32 %add72, %conv77
  %tmp24 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$117"
  %add.ptr81 = getelementptr inbounds i8, i8* %incdec.ptr66, i64 %tmp24
  %incdec.ptr82 = getelementptr inbounds i8, i8* %add.ptr81, i64 1
  %tmp25 = load i8, i8* %add.ptr81, align 1, !tbaa !7
  %idx.ext84 = zext i8 %tmp25 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg85
  %tmp26 = load i8, i8* %add.ptr86, align 1, !tbaa !7
  %conv87 = zext i8 %tmp26 to i32
  %add88 = add nsw i32 %add78, %conv87
  %incdec.ptr89 = getelementptr inbounds i8, i8* %incdec.ptr82, i64 1
  %tmp27 = load i8, i8* %incdec.ptr82, align 1, !tbaa !7
  %idx.ext91 = zext i8 %tmp27 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg92
  %tmp28 = load i8, i8* %add.ptr93, align 1, !tbaa !7
  %conv94 = zext i8 %tmp28 to i32
  %add95 = add nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds i8, i8* %incdec.ptr89, i64 1
  %tmp29 = load i8, i8* %incdec.ptr89, align 1, !tbaa !7
  %idx.ext98 = zext i8 %tmp29 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg99
  %tmp30 = load i8, i8* %add.ptr100, align 1, !tbaa !7
  %conv101 = zext i8 %tmp30 to i32
  %add102 = add nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds i8, i8* %incdec.ptr96, i64 1
  %tmp31 = load i8, i8* %incdec.ptr96, align 1, !tbaa !7
  %idx.ext105 = zext i8 %tmp31 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg106
  %tmp32 = load i8, i8* %add.ptr107, align 1, !tbaa !7
  %conv108 = zext i8 %tmp32 to i32
  %add109 = add nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds i8, i8* %incdec.ptr103, i64 1
  %tmp33 = load i8, i8* %incdec.ptr103, align 1, !tbaa !7
  %idx.ext112 = zext i8 %tmp33 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg113
  %tmp34 = load i8, i8* %add.ptr114, align 1, !tbaa !7
  %conv115 = zext i8 %tmp34 to i32
  %add116 = add nsw i32 %add109, %conv115
  %incdec.ptr117 = getelementptr inbounds i8, i8* %incdec.ptr110, i64 1
  %tmp35 = load i8, i8* %incdec.ptr110, align 1, !tbaa !7
  %idx.ext119 = zext i8 %tmp35 to i64
  %idx.neg120 = sub nsw i64 0, %idx.ext119
  %add.ptr121 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg120
  %tmp36 = load i8, i8* %add.ptr121, align 1, !tbaa !7
  %conv122 = zext i8 %tmp36 to i32
  %add123 = add nsw i32 %add116, %conv122
  %tmp37 = load i8, i8* %incdec.ptr117, align 1, !tbaa !7
  %idx.ext125 = zext i8 %tmp37 to i64
  %idx.neg126 = sub nsw i64 0, %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg126
  %tmp38 = load i8, i8* %add.ptr127, align 1, !tbaa !7
  %conv128 = zext i8 %tmp38 to i32
  %add129 = add nsw i32 %add123, %conv128
  %tmp39 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$107"
  %add.ptr132 = getelementptr inbounds i8, i8* %incdec.ptr117, i64 %tmp39
  %incdec.ptr133 = getelementptr inbounds i8, i8* %add.ptr132, i64 1
  %tmp40 = load i8, i8* %add.ptr132, align 1, !tbaa !7
  %idx.ext135 = zext i8 %tmp40 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg136
  %tmp41 = load i8, i8* %add.ptr137, align 1, !tbaa !7
  %conv138 = zext i8 %tmp41 to i32
  %add139 = add nsw i32 %add129, %conv138
  %incdec.ptr140 = getelementptr inbounds i8, i8* %incdec.ptr133, i64 1
  %tmp42 = load i8, i8* %incdec.ptr133, align 1, !tbaa !7
  %idx.ext142 = zext i8 %tmp42 to i64
  %idx.neg143 = sub nsw i64 0, %idx.ext142
  %add.ptr144 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg143
  %tmp43 = load i8, i8* %add.ptr144, align 1, !tbaa !7
  %conv145 = zext i8 %tmp43 to i32
  %add146 = add nsw i32 %add139, %conv145
  %tmp44 = load i8, i8* %incdec.ptr140, align 1, !tbaa !7
  %idx.ext148 = zext i8 %tmp44 to i64
  %idx.neg149 = sub nsw i64 0, %idx.ext148
  %add.ptr150 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg149
  %tmp45 = load i8, i8* %add.ptr150, align 1, !tbaa !7
  %conv151 = zext i8 %tmp45 to i32
  %add152 = add nsw i32 %add146, %conv151
  %tmp46 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp153 = icmp slt i32 %add152, %tmp46
  br i1 %cmp153, label %if.then, label %"susan_corners$1$0_latch$0"

if.then:                                          ; preds = %"susan_corners$1$0_header"
  %add.ptr155 = getelementptr inbounds i8, i8* %incdec.ptr140, i64 2
  %incdec.ptr156 = getelementptr inbounds i8, i8* %add.ptr155, i64 1
  %tmp47 = load i8, i8* %add.ptr155, align 1, !tbaa !7
  %idx.ext158 = zext i8 %tmp47 to i64
  %idx.neg159 = sub nsw i64 0, %idx.ext158
  %add.ptr160 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg159
  %tmp48 = load i8, i8* %add.ptr160, align 1, !tbaa !7
  %conv161 = zext i8 %tmp48 to i32
  %add162 = add nsw i32 %conv161, %add152
  %tmp49 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp163 = icmp slt i32 %add162, %tmp49
  br i1 %cmp163, label %if.then165, label %"susan_corners$1$0_latch$0"

if.then165:                                       ; preds = %if.then
  %incdec.ptr166 = getelementptr inbounds i8, i8* %incdec.ptr156, i64 1
  %tmp50 = load i8, i8* %incdec.ptr156, align 1, !tbaa !7
  %idx.ext168 = zext i8 %tmp50 to i64
  %idx.neg169 = sub nsw i64 0, %idx.ext168
  %add.ptr170 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg169
  %tmp51 = load i8, i8* %add.ptr170, align 1, !tbaa !7
  %conv171 = zext i8 %tmp51 to i32
  %add172 = add nsw i32 %conv171, %add162
  %tmp52 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp173 = icmp slt i32 %add172, %tmp52
  br i1 %cmp173, label %if.then175, label %"susan_corners$1$0_latch$0"

if.then175:                                       ; preds = %if.then165
  %tmp53 = load i8, i8* %incdec.ptr166, align 1, !tbaa !7
  %idx.ext177 = zext i8 %tmp53 to i64
  %idx.neg178 = sub nsw i64 0, %idx.ext177
  %add.ptr179 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg178
  %tmp54 = load i8, i8* %add.ptr179, align 1, !tbaa !7
  %conv180 = zext i8 %tmp54 to i32
  %add181 = add nsw i32 %conv180, %add172
  %tmp55 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp182 = icmp slt i32 %add181, %tmp55
  br i1 %cmp182, label %if.then184, label %"susan_corners$1$0_latch$0"

if.then184:                                       ; preds = %if.then175
  %tmp56 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$107"
  %add.ptr187 = getelementptr inbounds i8, i8* %incdec.ptr166, i64 %tmp56
  %incdec.ptr188 = getelementptr inbounds i8, i8* %add.ptr187, i64 1
  %tmp57 = load i8, i8* %add.ptr187, align 1, !tbaa !7
  %idx.ext190 = zext i8 %tmp57 to i64
  %idx.neg191 = sub nsw i64 0, %idx.ext190
  %add.ptr192 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg191
  %tmp58 = load i8, i8* %add.ptr192, align 1, !tbaa !7
  %conv193 = zext i8 %tmp58 to i32
  %add194 = add nsw i32 %conv193, %add181
  %tmp59 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp195 = icmp slt i32 %add194, %tmp59
  br i1 %cmp195, label %if.then197, label %"susan_corners$1$0_latch$0"

if.then197:                                       ; preds = %if.then184
  %incdec.ptr198 = getelementptr inbounds i8, i8* %incdec.ptr188, i64 1
  %tmp60 = load i8, i8* %incdec.ptr188, align 1, !tbaa !7
  %idx.ext200 = zext i8 %tmp60 to i64
  %idx.neg201 = sub nsw i64 0, %idx.ext200
  %add.ptr202 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg201
  %tmp61 = load i8, i8* %add.ptr202, align 1, !tbaa !7
  %conv203 = zext i8 %tmp61 to i32
  %add204 = add nsw i32 %conv203, %add194
  %tmp62 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp205 = icmp slt i32 %add204, %tmp62
  br i1 %cmp205, label %if.then207, label %"susan_corners$1$0_latch$0"

if.then207:                                       ; preds = %if.then197
  %incdec.ptr208 = getelementptr inbounds i8, i8* %incdec.ptr198, i64 1
  %tmp63 = load i8, i8* %incdec.ptr198, align 1, !tbaa !7
  %idx.ext210 = zext i8 %tmp63 to i64
  %idx.neg211 = sub nsw i64 0, %idx.ext210
  %add.ptr212 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg211
  %tmp64 = load i8, i8* %add.ptr212, align 1, !tbaa !7
  %conv213 = zext i8 %tmp64 to i32
  %add214 = add nsw i32 %conv213, %add204
  %tmp65 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp215 = icmp slt i32 %add214, %tmp65
  br i1 %cmp215, label %if.then217, label %"susan_corners$1$0_latch$0"

if.then217:                                       ; preds = %if.then207
  %incdec.ptr218 = getelementptr inbounds i8, i8* %incdec.ptr208, i64 1
  %tmp66 = load i8, i8* %incdec.ptr208, align 1, !tbaa !7
  %idx.ext220 = zext i8 %tmp66 to i64
  %idx.neg221 = sub nsw i64 0, %idx.ext220
  %add.ptr222 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg221
  %tmp67 = load i8, i8* %add.ptr222, align 1, !tbaa !7
  %conv223 = zext i8 %tmp67 to i32
  %add224 = add nsw i32 %conv223, %add214
  %tmp68 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp225 = icmp slt i32 %add224, %tmp68
  br i1 %cmp225, label %if.then227, label %"susan_corners$1$0_latch$0"

if.then227:                                       ; preds = %if.then217
  %incdec.ptr228 = getelementptr inbounds i8, i8* %incdec.ptr218, i64 1
  %tmp69 = load i8, i8* %incdec.ptr218, align 1, !tbaa !7
  %idx.ext230 = zext i8 %tmp69 to i64
  %idx.neg231 = sub nsw i64 0, %idx.ext230
  %add.ptr232 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg231
  %tmp70 = load i8, i8* %add.ptr232, align 1, !tbaa !7
  %conv233 = zext i8 %tmp70 to i32
  %add234 = add nsw i32 %conv233, %add224
  %tmp71 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp235 = icmp slt i32 %add234, %tmp71
  br i1 %cmp235, label %if.then237, label %"susan_corners$1$0_latch$0"

if.then237:                                       ; preds = %if.then227
  %incdec.ptr238 = getelementptr inbounds i8, i8* %incdec.ptr228, i64 1
  %tmp72 = load i8, i8* %incdec.ptr228, align 1, !tbaa !7
  %idx.ext240 = zext i8 %tmp72 to i64
  %idx.neg241 = sub nsw i64 0, %idx.ext240
  %add.ptr242 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg241
  %tmp73 = load i8, i8* %add.ptr242, align 1, !tbaa !7
  %conv243 = zext i8 %tmp73 to i32
  %add244 = add nsw i32 %conv243, %add234
  %tmp74 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp245 = icmp slt i32 %add244, %tmp74
  br i1 %cmp245, label %if.then247, label %"susan_corners$1$0_latch$0"

if.then247:                                       ; preds = %if.then237
  %tmp75 = load i8, i8* %incdec.ptr238, align 1, !tbaa !7
  %idx.ext249 = zext i8 %tmp75 to i64
  %idx.neg250 = sub nsw i64 0, %idx.ext249
  %add.ptr251 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg250
  %tmp76 = load i8, i8* %add.ptr251, align 1, !tbaa !7
  %conv252 = zext i8 %tmp76 to i32
  %add253 = add nsw i32 %conv252, %add244
  %tmp77 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp254 = icmp slt i32 %add253, %tmp77
  br i1 %cmp254, label %if.then256, label %"susan_corners$1$0_latch$0"

if.then256:                                       ; preds = %if.then247
  %tmp78 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$117"
  %add.ptr259 = getelementptr inbounds i8, i8* %incdec.ptr238, i64 %tmp78
  %incdec.ptr260 = getelementptr inbounds i8, i8* %add.ptr259, i64 1
  %tmp79 = load i8, i8* %add.ptr259, align 1, !tbaa !7
  %idx.ext262 = zext i8 %tmp79 to i64
  %idx.neg263 = sub nsw i64 0, %idx.ext262
  %add.ptr264 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg263
  %tmp80 = load i8, i8* %add.ptr264, align 1, !tbaa !7
  %conv265 = zext i8 %tmp80 to i32
  %add266 = add nsw i32 %conv265, %add253
  %tmp81 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp267 = icmp slt i32 %add266, %tmp81
  br i1 %cmp267, label %if.then269, label %"susan_corners$1$0_latch$0"

if.then269:                                       ; preds = %if.then256
  %incdec.ptr270 = getelementptr inbounds i8, i8* %incdec.ptr260, i64 1
  %tmp82 = load i8, i8* %incdec.ptr260, align 1, !tbaa !7
  %idx.ext272 = zext i8 %tmp82 to i64
  %idx.neg273 = sub nsw i64 0, %idx.ext272
  %add.ptr274 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg273
  %tmp83 = load i8, i8* %add.ptr274, align 1, !tbaa !7
  %conv275 = zext i8 %tmp83 to i32
  %add276 = add nsw i32 %conv275, %add266
  %tmp84 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp277 = icmp slt i32 %add276, %tmp84
  br i1 %cmp277, label %if.then279, label %"susan_corners$1$0_latch$0"

if.then279:                                       ; preds = %if.then269
  %incdec.ptr280 = getelementptr inbounds i8, i8* %incdec.ptr270, i64 1
  %tmp85 = load i8, i8* %incdec.ptr270, align 1, !tbaa !7
  %idx.ext282 = zext i8 %tmp85 to i64
  %idx.neg283 = sub nsw i64 0, %idx.ext282
  %add.ptr284 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg283
  %tmp86 = load i8, i8* %add.ptr284, align 1, !tbaa !7
  %conv285 = zext i8 %tmp86 to i32
  %add286 = add nsw i32 %conv285, %add276
  %tmp87 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp287 = icmp slt i32 %add286, %tmp87
  br i1 %cmp287, label %if.then289, label %"susan_corners$1$0_latch$0"

if.then289:                                       ; preds = %if.then279
  %incdec.ptr290 = getelementptr inbounds i8, i8* %incdec.ptr280, i64 1
  %tmp88 = load i8, i8* %incdec.ptr280, align 1, !tbaa !7
  %idx.ext292 = zext i8 %tmp88 to i64
  %idx.neg293 = sub nsw i64 0, %idx.ext292
  %add.ptr294 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg293
  %tmp89 = load i8, i8* %add.ptr294, align 1, !tbaa !7
  %conv295 = zext i8 %tmp89 to i32
  %add296 = add nsw i32 %conv295, %add286
  %tmp90 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp297 = icmp slt i32 %add296, %tmp90
  br i1 %cmp297, label %if.then299, label %"susan_corners$1$0_latch$0"

if.then299:                                       ; preds = %if.then289
  %tmp91 = load i8, i8* %incdec.ptr290, align 1, !tbaa !7
  %idx.ext301 = zext i8 %tmp91 to i64
  %idx.neg302 = sub nsw i64 0, %idx.ext301
  %add.ptr303 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg302
  %tmp92 = load i8, i8* %add.ptr303, align 1, !tbaa !7
  %conv304 = zext i8 %tmp92 to i32
  %add305 = add nsw i32 %conv304, %add296
  %tmp93 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp306 = icmp slt i32 %add305, %tmp93
  br i1 %cmp306, label %if.then308, label %"susan_corners$1$0_latch$0"

if.then308:                                       ; preds = %if.then299
  %tmp94 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$108"
  %add.ptr311 = getelementptr inbounds i8, i8* %incdec.ptr290, i64 %tmp94
  %incdec.ptr312 = getelementptr inbounds i8, i8* %add.ptr311, i64 1
  %tmp95 = load i8, i8* %add.ptr311, align 1, !tbaa !7
  %idx.ext314 = zext i8 %tmp95 to i64
  %idx.neg315 = sub nsw i64 0, %idx.ext314
  %add.ptr316 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg315
  %tmp96 = load i8, i8* %add.ptr316, align 1, !tbaa !7
  %conv317 = zext i8 %tmp96 to i32
  %add318 = add nsw i32 %conv317, %add305
  %tmp97 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp319 = icmp slt i32 %add318, %tmp97
  br i1 %cmp319, label %if.then321, label %"susan_corners$1$0_latch$0"

if.then321:                                       ; preds = %if.then308
  %tmp98 = load i8, i8* %incdec.ptr312, align 1, !tbaa !7
  %idx.ext324 = zext i8 %tmp98 to i64
  %idx.neg325 = sub nsw i64 0, %idx.ext324
  %add.ptr326 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg325
  %tmp99 = load i8, i8* %add.ptr326, align 1, !tbaa !7
  %conv327 = zext i8 %tmp99 to i32
  %add328 = add nsw i32 %conv327, %add318
  %tmp100 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp329 = icmp slt i32 %add328, %tmp100
  br i1 %cmp329, label %if.then331, label %"susan_corners$1$0_latch$0"

if.then331:                                       ; preds = %if.then321
  %incdec.ptr322 = getelementptr inbounds i8, i8* %incdec.ptr312, i64 1
  %tmp101 = load i8, i8* %incdec.ptr322, align 1, !tbaa !7
  %idx.ext333 = zext i8 %tmp101 to i64
  %idx.neg334 = sub nsw i64 0, %idx.ext333
  %add.ptr335 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg334
  %tmp102 = load i8, i8* %add.ptr335, align 1, !tbaa !7
  %conv336 = zext i8 %tmp102 to i32
  %add337 = add nsw i32 %conv336, %add328
  %tmp103 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %cmp338 = icmp slt i32 %add337, %tmp103
  br i1 %cmp338, label %if.then340, label %"susan_corners$1$0_latch$0"

if.then340:                                       ; preds = %if.then331
  %tmp104 = add nuw nsw i32 %conv34, %conv27
  %sub3652141 = add nuw nsw i32 %tmp104, %conv40
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
  br i1 %cmp695, label %if.then697, label %"susan_corners$1$0_latch$0"

if.then697:                                       ; preds = %if.then340
  %cmp698 = icmp ult i32 %mul692, %mul691
  br i1 %cmp698, label %if.then700, label %if.else

if.else:                                          ; preds = %if.then697
  %conv782 = sitofp i32 %add687 to float
  %ispos = icmp sgt i32 %add690, -1
  %neg = sub i32 0, %add690
  %tmp105 = select i1 %ispos, i32 %add690, i32 %neg
  %conv784 = sitofp i32 %tmp105 to float
  %div785 = fdiv float %conv782, %conv784
  %div787 = sdiv i32 %tmp105, %add690
  %tmp106 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$195"
  %add788 = add nsw i32 %div787, %tmp106
  %tmp107 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$114"
  %mul789 = mul nsw i32 %add788, %tmp107
  %cmp791 = fcmp olt float %div785, 0.000000e+00
  %conv794 = fpext float %div785 to double
  %sub795.sink.v = select i1 %cmp791, double -5.000000e-01, double 5.000000e-01
  %sub795.sink = fadd double %conv794, %sub795.sink.v
  %conv796 = fptosi double %sub795.sink to i32
  %tmp108 = trunc i64 %arg1 to i32
  %add790 = add i32 %conv796, %tmp108
  %add803 = add i32 %add790, %mul789
  %idxprom804 = sext i32 %add803 to i64
  %tmp109 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  %arrayidx805 = getelementptr inbounds i8, i8* %tmp109, i64 %idxprom804
  %tmp110 = load i8, i8* %arrayidx805, align 1, !tbaa !7
  %idx.ext807 = zext i8 %tmp110 to i64
  %idx.neg808 = sub nsw i64 0, %idx.ext807
  %add.ptr809 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg808
  %tmp111 = load i8, i8* %add.ptr809, align 1, !tbaa !7
  %conv810 = zext i8 %tmp111 to i32
  %mul811 = shl i32 %div787, 1
  %tmp112 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$195"
  %add812 = add nsw i32 %mul811, %tmp112
  %tmp113 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$114"
  %mul813 = mul nsw i32 %add812, %tmp113
  %mul815 = fmul float %div785, 2.000000e+00
  %cmp816 = fcmp olt float %mul815, 0.000000e+00
  %conv820 = fpext float %mul815 to double
  %sub821.sink.v = select i1 %cmp816, double -5.000000e-01, double 5.000000e-01
  %sub821.sink = fadd double %conv820, %sub821.sink.v
  %conv822 = fptosi double %sub821.sink to i32
  %add814 = add i32 %conv822, %tmp108
  %add830 = add i32 %add814, %mul813
  %idxprom831 = sext i32 %add830 to i64
  %tmp114 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  %arrayidx832 = getelementptr inbounds i8, i8* %tmp114, i64 %idxprom831
  %tmp115 = load i8, i8* %arrayidx832, align 1, !tbaa !7
  %idx.ext834 = zext i8 %tmp115 to i64
  %idx.neg835 = sub nsw i64 0, %idx.ext834
  %add.ptr836 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg835
  %tmp116 = load i8, i8* %add.ptr836, align 1, !tbaa !7
  %conv837 = zext i8 %tmp116 to i32
  %add838 = add nuw nsw i32 %conv837, %conv810
  %mul839 = mul nsw i32 %div787, 3
  %tmp117 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$195"
  %add840 = add nsw i32 %mul839, %tmp117
  %tmp118 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$114"
  %mul841 = mul nsw i32 %add840, %tmp118
  %mul843 = fmul float %div785, 3.000000e+00
  %cmp844 = fcmp olt float %mul843, 0.000000e+00
  %conv848 = fpext float %mul843 to double
  %sub849.sink.v = select i1 %cmp844, double -5.000000e-01, double 5.000000e-01
  %sub849.sink = fadd double %conv848, %sub849.sink.v
  %conv850 = fptosi double %sub849.sink to i32
  %add842 = add i32 %conv850, %tmp108
  %add858 = add i32 %add842, %mul841
  %idxprom859 = sext i32 %add858 to i64
  %tmp119 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  %arrayidx860 = getelementptr inbounds i8, i8* %tmp119, i64 %idxprom859
  %tmp120 = load i8, i8* %arrayidx860, align 1, !tbaa !7
  %idx.ext862 = zext i8 %tmp120 to i64
  %idx.neg863 = sub nsw i64 0, %idx.ext862
  %add.ptr864 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg863
  %tmp121 = load i8, i8* %add.ptr864, align 1, !tbaa !7
  %conv865 = zext i8 %tmp121 to i32
  %add866 = add nuw nsw i32 %add838, %conv865
  br label %if.end

if.then700:                                       ; preds = %if.then697
  %conv701 = sitofp i32 %add690 to float
  %ispos2142 = icmp sgt i32 %add687, -1
  %neg2143 = sub i32 0, %add687
  %tmp122 = select i1 %ispos2142, i32 %add687, i32 %neg2143
  %conv703 = sitofp i32 %tmp122 to float
  %div704 = fdiv float %conv701, %conv703
  %div706 = sdiv i32 %tmp122, %add687
  %cmp707 = fcmp olt float %div704, 0.000000e+00
  %conv709 = fpext float %div704 to double
  %sub710.sink.v = select i1 %cmp707, double -5.000000e-01, double 5.000000e-01
  %sub710.sink = fadd double %conv709, %sub710.sink.v
  %conv711 = fptosi double %sub710.sink to i32
  %tmp123 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$194"
  %add715 = add nsw i32 %conv711, %tmp123
  %tmp124 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$114"
  %mul716 = mul nsw i32 %add715, %tmp124
  %tmp125 = trunc i64 %arg1 to i32
  %add717 = add nsw i32 %mul716, %tmp125
  %add718 = add nsw i32 %add717, %div706
  %idxprom719 = sext i32 %add718 to i64
  %tmp126 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  %arrayidx720 = getelementptr inbounds i8, i8* %tmp126, i64 %idxprom719
  %tmp127 = load i8, i8* %arrayidx720, align 1, !tbaa !7
  %idx.ext722 = zext i8 %tmp127 to i64
  %idx.neg723 = sub nsw i64 0, %idx.ext722
  %add.ptr724 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg723
  %tmp128 = load i8, i8* %add.ptr724, align 1, !tbaa !7
  %conv725 = zext i8 %tmp128 to i32
  %mul726 = fmul float %div704, 2.000000e+00
  %cmp727 = fcmp olt float %mul726, 0.000000e+00
  %conv731 = fpext float %mul726 to double
  %sub732.sink.v = select i1 %cmp727, double -5.000000e-01, double 5.000000e-01
  %sub732.sink = fadd double %conv731, %sub732.sink.v
  %conv733 = fptosi double %sub732.sink to i32
  %tmp129 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$194"
  %add741 = add nsw i32 %conv733, %tmp129
  %tmp130 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$114"
  %mul742 = mul nsw i32 %add741, %tmp130
  %add743 = add nsw i32 %mul742, %tmp125
  %mul744 = shl i32 %div706, 1
  %add745 = add nsw i32 %add743, %mul744
  %idxprom746 = sext i32 %add745 to i64
  %tmp131 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  %arrayidx747 = getelementptr inbounds i8, i8* %tmp131, i64 %idxprom746
  %tmp132 = load i8, i8* %arrayidx747, align 1, !tbaa !7
  %idx.ext749 = zext i8 %tmp132 to i64
  %idx.neg750 = sub nsw i64 0, %idx.ext749
  %add.ptr751 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg750
  %tmp133 = load i8, i8* %add.ptr751, align 1, !tbaa !7
  %conv752 = zext i8 %tmp133 to i32
  %add753 = add nuw nsw i32 %conv752, %conv725
  %mul754 = fmul float %div704, 3.000000e+00
  %cmp755 = fcmp olt float %mul754, 0.000000e+00
  %conv759 = fpext float %mul754 to double
  %sub760.sink.v = select i1 %cmp755, double -5.000000e-01, double 5.000000e-01
  %sub760.sink = fadd double %conv759, %sub760.sink.v
  %conv761 = fptosi double %sub760.sink to i32
  %tmp134 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$194"
  %add769 = add nsw i32 %conv761, %tmp134
  %tmp135 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$114"
  %mul770 = mul nsw i32 %add769, %tmp135
  %add771 = add nsw i32 %mul770, %tmp125
  %mul772 = mul nsw i32 %div706, 3
  %add773 = add nsw i32 %add771, %mul772
  %idxprom774 = sext i32 %add773 to i64
  %tmp136 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  %arrayidx775 = getelementptr inbounds i8, i8* %tmp136, i64 %idxprom774
  %tmp137 = load i8, i8* %arrayidx775, align 1, !tbaa !7
  %idx.ext777 = zext i8 %tmp137 to i64
  %idx.neg778 = sub nsw i64 0, %idx.ext777
  %add.ptr779 = getelementptr inbounds i8, i8* %add.ptr23, i64 %idx.neg778
  %tmp138 = load i8, i8* %add.ptr779, align 1, !tbaa !7
  %conv780 = zext i8 %tmp138 to i32
  %add781 = add nuw nsw i32 %add753, %conv780
  br label %if.end

if.end:                                           ; preds = %if.then700, %if.else
  %sq.0 = phi i32 [ %add781, %if.then700 ], [ %add866, %if.else ]
  %cmp867 = icmp sgt i32 %sq.0, 290
  br i1 %cmp867, label %if.then869, label %"susan_corners$1$0_latch$0"

if.then869:                                       ; preds = %if.end
  %tmp139 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$113"
  %sub870 = sub nsw i32 %tmp139, %add337
  %tmp140 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx874 = getelementptr inbounds i32, i32* %tmp140, i64 %idxprom
  store i32 %sub870, i32* %arrayidx874, align 4, !tbaa !5
  %mul875 = mul nsw i32 %add687, 51
  %div876 = sdiv i32 %mul875, %add337
  %tmp141 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$112"
  %arrayidx880 = getelementptr inbounds i32, i32* %tmp141, i64 %idxprom
  store i32 %div876, i32* %arrayidx880, align 4, !tbaa !5
  %mul881 = mul nsw i32 %add690, 51
  %div882 = sdiv i32 %mul881, %add337
  %tmp142 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$118"
  %arrayidx886 = getelementptr inbounds i32, i32* %tmp142, i64 %idxprom
  store i32 %div882, i32* %arrayidx886, align 4, !tbaa !5
  br label %"susan_corners$1$0_latch$0"

"susan_corners$1$0_latch$0":                      ; preds = %if.then869, %if.end, %if.then340, %if.then331, %if.then321, %if.then308, %if.then299, %if.then289, %if.then279, %if.then269, %if.then256, %if.then247, %if.then237, %if.then227, %if.then217, %if.then207, %if.then197, %if.then184, %if.then175, %if.then165, %if.then, %"susan_corners$1$0_header"
  %indvars.iv.next2247 = add nuw nsw i64 %arg1, 1
  %inc = add nuw nsw i32 %arg, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next2247 to i32
  %tmp143 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$119"
  %exitcond = icmp eq i32 %lftr.wideiv, %tmp143
  br i1 %exitcond, label %"susan_corners$1$0_return_from_recursive_function$0", label %"susan_corners$1$0_increment_depth_counter"

"susan_corners$1$0_increment_depth_counter":      ; preds = %"susan_corners$1$0_latch$0"
  br label %"susan_corners$1$0_recursively_call_function"

"susan_corners$1$0_recursively_call_function":    ; preds = %"susan_corners$1$0_increment_depth_counter"
  call void @"susan_corners$1$0"(i32 %inc, i64 %indvars.iv.next2247)
  ret void

"susan_corners$1$0_return_from_recursive_function$0": ; preds = %"susan_corners$1$0_latch$0"
  ret void
}

define void @"susan_corners$0$0"(i32 %arg, i32 %arg1, i64 %arg2) {
"susan_corners$0$0_header":
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$205"
  %add922 = add nsw i32 %arg, %tmp
  %idxprom923 = sext i32 %add922 to i64
  %tmp3 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx924 = getelementptr inbounds i32, i32* %tmp3, i64 %idxprom923
  %tmp4 = load i32, i32* %arrayidx924, align 4, !tbaa !5
  %cmp925 = icmp sgt i32 %tmp4, 0
  br i1 %cmp925, label %if.then927, label %"susan_corners$0$0_latch$0"

if.then927:                                       ; preds = %"susan_corners$0$0_header"
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$204"
  %tmp6 = add nsw i64 %arg2, %tmp5
  %tmp7 = add nsw i64 %tmp6, -3
  %tmp8 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx933 = getelementptr inbounds i32, i32* %tmp8, i64 %tmp7
  %tmp9 = load i32, i32* %arrayidx933, align 4, !tbaa !5
  %cmp934 = icmp sgt i32 %tmp4, %tmp9
  br i1 %cmp934, label %land.lhs.true, label %"susan_corners$0$0_latch$0"

land.lhs.true:                                    ; preds = %if.then927
  %tmp10 = add nsw i64 %tmp6, -2
  %tmp11 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx941 = getelementptr inbounds i32, i32* %tmp11, i64 %tmp10
  %tmp12 = load i32, i32* %arrayidx941, align 4, !tbaa !5
  %cmp942 = icmp sgt i32 %tmp4, %tmp12
  br i1 %cmp942, label %land.lhs.true944, label %"susan_corners$0$0_latch$0"

land.lhs.true944:                                 ; preds = %land.lhs.true
  %tmp13 = add nsw i64 %tmp6, -1
  %tmp14 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx950 = getelementptr inbounds i32, i32* %tmp14, i64 %tmp13
  %tmp15 = load i32, i32* %arrayidx950, align 4, !tbaa !5
  %cmp951 = icmp sgt i32 %tmp4, %tmp15
  br i1 %cmp951, label %land.lhs.true953, label %"susan_corners$0$0_latch$0"

land.lhs.true953:                                 ; preds = %land.lhs.true944
  %tmp16 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx958 = getelementptr inbounds i32, i32* %tmp16, i64 %tmp6
  %tmp17 = load i32, i32* %arrayidx958, align 4, !tbaa !5
  %cmp959 = icmp sgt i32 %tmp4, %tmp17
  br i1 %cmp959, label %land.lhs.true961, label %"susan_corners$0$0_latch$0"

land.lhs.true961:                                 ; preds = %land.lhs.true953
  %tmp18 = add nsw i64 %tmp6, 1
  %tmp19 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx967 = getelementptr inbounds i32, i32* %tmp19, i64 %tmp18
  %tmp20 = load i32, i32* %arrayidx967, align 4, !tbaa !5
  %cmp968 = icmp sgt i32 %tmp4, %tmp20
  br i1 %cmp968, label %land.lhs.true970, label %"susan_corners$0$0_latch$0"

land.lhs.true970:                                 ; preds = %land.lhs.true961
  %tmp21 = add nsw i64 %tmp6, 2
  %tmp22 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx976 = getelementptr inbounds i32, i32* %tmp22, i64 %tmp21
  %tmp23 = load i32, i32* %arrayidx976, align 4, !tbaa !5
  %cmp977 = icmp sgt i32 %tmp4, %tmp23
  br i1 %cmp977, label %land.lhs.true979, label %"susan_corners$0$0_latch$0"

land.lhs.true979:                                 ; preds = %land.lhs.true970
  %tmp24 = add nsw i64 %tmp6, 3
  %tmp25 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx985 = getelementptr inbounds i32, i32* %tmp25, i64 %tmp24
  %tmp26 = load i32, i32* %arrayidx985, align 4, !tbaa !5
  %cmp986 = icmp sgt i32 %tmp4, %tmp26
  br i1 %cmp986, label %land.lhs.true988, label %"susan_corners$0$0_latch$0"

land.lhs.true988:                                 ; preds = %land.lhs.true979
  %tmp27 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$203"
  %tmp28 = add nsw i64 %arg2, %tmp27
  %tmp29 = add nsw i64 %tmp28, -3
  %tmp30 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx994 = getelementptr inbounds i32, i32* %tmp30, i64 %tmp29
  %tmp31 = load i32, i32* %arrayidx994, align 4, !tbaa !5
  %cmp995 = icmp sgt i32 %tmp4, %tmp31
  br i1 %cmp995, label %land.lhs.true997, label %"susan_corners$0$0_latch$0"

land.lhs.true997:                                 ; preds = %land.lhs.true988
  %tmp32 = add nsw i64 %tmp28, -2
  %tmp33 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1003 = getelementptr inbounds i32, i32* %tmp33, i64 %tmp32
  %tmp34 = load i32, i32* %arrayidx1003, align 4, !tbaa !5
  %cmp1004 = icmp sgt i32 %tmp4, %tmp34
  br i1 %cmp1004, label %land.lhs.true1006, label %"susan_corners$0$0_latch$0"

land.lhs.true1006:                                ; preds = %land.lhs.true997
  %tmp35 = add nsw i64 %tmp28, -1
  %tmp36 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1012 = getelementptr inbounds i32, i32* %tmp36, i64 %tmp35
  %tmp37 = load i32, i32* %arrayidx1012, align 4, !tbaa !5
  %cmp1013 = icmp sgt i32 %tmp4, %tmp37
  br i1 %cmp1013, label %land.lhs.true1015, label %"susan_corners$0$0_latch$0"

land.lhs.true1015:                                ; preds = %land.lhs.true1006
  %tmp38 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1020 = getelementptr inbounds i32, i32* %tmp38, i64 %tmp28
  %tmp39 = load i32, i32* %arrayidx1020, align 4, !tbaa !5
  %cmp1021 = icmp sgt i32 %tmp4, %tmp39
  br i1 %cmp1021, label %land.lhs.true1023, label %"susan_corners$0$0_latch$0"

land.lhs.true1023:                                ; preds = %land.lhs.true1015
  %tmp40 = add nsw i64 %tmp28, 1
  %tmp41 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1029 = getelementptr inbounds i32, i32* %tmp41, i64 %tmp40
  %tmp42 = load i32, i32* %arrayidx1029, align 4, !tbaa !5
  %cmp1030 = icmp sgt i32 %tmp4, %tmp42
  br i1 %cmp1030, label %land.lhs.true1032, label %"susan_corners$0$0_latch$0"

land.lhs.true1032:                                ; preds = %land.lhs.true1023
  %tmp43 = add nsw i64 %tmp28, 2
  %tmp44 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1038 = getelementptr inbounds i32, i32* %tmp44, i64 %tmp43
  %tmp45 = load i32, i32* %arrayidx1038, align 4, !tbaa !5
  %cmp1039 = icmp sgt i32 %tmp4, %tmp45
  br i1 %cmp1039, label %land.lhs.true1041, label %"susan_corners$0$0_latch$0"

land.lhs.true1041:                                ; preds = %land.lhs.true1032
  %tmp46 = add nsw i64 %tmp28, 3
  %tmp47 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1047 = getelementptr inbounds i32, i32* %tmp47, i64 %tmp46
  %tmp48 = load i32, i32* %arrayidx1047, align 4, !tbaa !5
  %cmp1048 = icmp sgt i32 %tmp4, %tmp48
  br i1 %cmp1048, label %land.lhs.true1050, label %"susan_corners$0$0_latch$0"

land.lhs.true1050:                                ; preds = %land.lhs.true1041
  %tmp49 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$202"
  %tmp50 = add nsw i64 %arg2, %tmp49
  %tmp51 = add nsw i64 %tmp50, -3
  %tmp52 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1056 = getelementptr inbounds i32, i32* %tmp52, i64 %tmp51
  %tmp53 = load i32, i32* %arrayidx1056, align 4, !tbaa !5
  %cmp1057 = icmp sgt i32 %tmp4, %tmp53
  br i1 %cmp1057, label %land.lhs.true1059, label %"susan_corners$0$0_latch$0"

land.lhs.true1059:                                ; preds = %land.lhs.true1050
  %tmp54 = add nsw i64 %tmp50, -2
  %tmp55 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1065 = getelementptr inbounds i32, i32* %tmp55, i64 %tmp54
  %tmp56 = load i32, i32* %arrayidx1065, align 4, !tbaa !5
  %cmp1066 = icmp sgt i32 %tmp4, %tmp56
  br i1 %cmp1066, label %land.lhs.true1068, label %"susan_corners$0$0_latch$0"

land.lhs.true1068:                                ; preds = %land.lhs.true1059
  %tmp57 = add nsw i64 %tmp50, -1
  %tmp58 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1074 = getelementptr inbounds i32, i32* %tmp58, i64 %tmp57
  %tmp59 = load i32, i32* %arrayidx1074, align 4, !tbaa !5
  %cmp1075 = icmp sgt i32 %tmp4, %tmp59
  br i1 %cmp1075, label %land.lhs.true1077, label %"susan_corners$0$0_latch$0"

land.lhs.true1077:                                ; preds = %land.lhs.true1068
  %tmp60 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1082 = getelementptr inbounds i32, i32* %tmp60, i64 %tmp50
  %tmp61 = load i32, i32* %arrayidx1082, align 4, !tbaa !5
  %cmp1083 = icmp sgt i32 %tmp4, %tmp61
  br i1 %cmp1083, label %land.lhs.true1085, label %"susan_corners$0$0_latch$0"

land.lhs.true1085:                                ; preds = %land.lhs.true1077
  %tmp62 = add nsw i64 %tmp50, 1
  %tmp63 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1091 = getelementptr inbounds i32, i32* %tmp63, i64 %tmp62
  %tmp64 = load i32, i32* %arrayidx1091, align 4, !tbaa !5
  %cmp1092 = icmp sgt i32 %tmp4, %tmp64
  br i1 %cmp1092, label %land.lhs.true1094, label %"susan_corners$0$0_latch$0"

land.lhs.true1094:                                ; preds = %land.lhs.true1085
  %tmp65 = add nsw i64 %tmp50, 2
  %tmp66 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1100 = getelementptr inbounds i32, i32* %tmp66, i64 %tmp65
  %tmp67 = load i32, i32* %arrayidx1100, align 4, !tbaa !5
  %cmp1101 = icmp sgt i32 %tmp4, %tmp67
  br i1 %cmp1101, label %land.lhs.true1103, label %"susan_corners$0$0_latch$0"

land.lhs.true1103:                                ; preds = %land.lhs.true1094
  %tmp68 = add nsw i64 %tmp50, 3
  %tmp69 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1109 = getelementptr inbounds i32, i32* %tmp69, i64 %tmp68
  %tmp70 = load i32, i32* %arrayidx1109, align 4, !tbaa !5
  %cmp1110 = icmp sgt i32 %tmp4, %tmp70
  br i1 %cmp1110, label %land.lhs.true1112, label %"susan_corners$0$0_latch$0"

land.lhs.true1112:                                ; preds = %land.lhs.true1103
  %sub1115 = add nsw i32 %add922, -3
  %idxprom1116 = sext i32 %sub1115 to i64
  %tmp71 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1117 = getelementptr inbounds i32, i32* %tmp71, i64 %idxprom1116
  %tmp72 = load i32, i32* %arrayidx1117, align 4, !tbaa !5
  %cmp1118 = icmp sgt i32 %tmp4, %tmp72
  br i1 %cmp1118, label %land.lhs.true1120, label %"susan_corners$0$0_latch$0"

land.lhs.true1120:                                ; preds = %land.lhs.true1112
  %sub1123 = add nsw i32 %add922, -2
  %idxprom1124 = sext i32 %sub1123 to i64
  %tmp73 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1125 = getelementptr inbounds i32, i32* %tmp73, i64 %idxprom1124
  %tmp74 = load i32, i32* %arrayidx1125, align 4, !tbaa !5
  %cmp1126 = icmp sgt i32 %tmp4, %tmp74
  br i1 %cmp1126, label %land.lhs.true1128, label %"susan_corners$0$0_latch$0"

land.lhs.true1128:                                ; preds = %land.lhs.true1120
  %sub1131 = add nsw i32 %add922, -1
  %idxprom1132 = sext i32 %sub1131 to i64
  %tmp75 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1133 = getelementptr inbounds i32, i32* %tmp75, i64 %idxprom1132
  %tmp76 = load i32, i32* %arrayidx1133, align 4, !tbaa !5
  %cmp1134 = icmp sgt i32 %tmp4, %tmp76
  br i1 %cmp1134, label %land.lhs.true1136, label %"susan_corners$0$0_latch$0"

land.lhs.true1136:                                ; preds = %land.lhs.true1128
  %add1139 = add nsw i32 %add922, 1
  %idxprom1140 = sext i32 %add1139 to i64
  %tmp77 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1141 = getelementptr inbounds i32, i32* %tmp77, i64 %idxprom1140
  %tmp78 = load i32, i32* %arrayidx1141, align 4, !tbaa !5
  %cmp1142 = icmp slt i32 %tmp4, %tmp78
  br i1 %cmp1142, label %"susan_corners$0$0_latch$0", label %land.lhs.true1144

land.lhs.true1144:                                ; preds = %land.lhs.true1136
  %add1147 = add nsw i32 %add922, 2
  %idxprom1148 = sext i32 %add1147 to i64
  %tmp79 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1149 = getelementptr inbounds i32, i32* %tmp79, i64 %idxprom1148
  %tmp80 = load i32, i32* %arrayidx1149, align 4, !tbaa !5
  %cmp1150 = icmp slt i32 %tmp4, %tmp80
  br i1 %cmp1150, label %"susan_corners$0$0_latch$0", label %land.lhs.true1152

land.lhs.true1152:                                ; preds = %land.lhs.true1144
  %add1155 = add nsw i32 %add922, 3
  %idxprom1156 = sext i32 %add1155 to i64
  %tmp81 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1157 = getelementptr inbounds i32, i32* %tmp81, i64 %idxprom1156
  %tmp82 = load i32, i32* %arrayidx1157, align 4, !tbaa !5
  %cmp1158 = icmp slt i32 %tmp4, %tmp82
  br i1 %cmp1158, label %"susan_corners$0$0_latch$0", label %land.lhs.true1160

land.lhs.true1160:                                ; preds = %land.lhs.true1152
  %tmp83 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$201"
  %tmp84 = add nsw i64 %arg2, %tmp83
  %tmp85 = add nsw i64 %tmp84, -3
  %tmp86 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1166 = getelementptr inbounds i32, i32* %tmp86, i64 %tmp85
  %tmp87 = load i32, i32* %arrayidx1166, align 4, !tbaa !5
  %cmp1167 = icmp slt i32 %tmp4, %tmp87
  br i1 %cmp1167, label %"susan_corners$0$0_latch$0", label %land.lhs.true1169

land.lhs.true1169:                                ; preds = %land.lhs.true1160
  %tmp88 = add nsw i64 %tmp84, -2
  %tmp89 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1175 = getelementptr inbounds i32, i32* %tmp89, i64 %tmp88
  %tmp90 = load i32, i32* %arrayidx1175, align 4, !tbaa !5
  %cmp1176 = icmp slt i32 %tmp4, %tmp90
  br i1 %cmp1176, label %"susan_corners$0$0_latch$0", label %land.lhs.true1178

land.lhs.true1178:                                ; preds = %land.lhs.true1169
  %tmp91 = add nsw i64 %tmp84, -1
  %tmp92 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1184 = getelementptr inbounds i32, i32* %tmp92, i64 %tmp91
  %tmp93 = load i32, i32* %arrayidx1184, align 4, !tbaa !5
  %cmp1185 = icmp slt i32 %tmp4, %tmp93
  br i1 %cmp1185, label %"susan_corners$0$0_latch$0", label %land.lhs.true1187

land.lhs.true1187:                                ; preds = %land.lhs.true1178
  %tmp94 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1192 = getelementptr inbounds i32, i32* %tmp94, i64 %tmp84
  %tmp95 = load i32, i32* %arrayidx1192, align 4, !tbaa !5
  %cmp1193 = icmp slt i32 %tmp4, %tmp95
  br i1 %cmp1193, label %"susan_corners$0$0_latch$0", label %land.lhs.true1195

land.lhs.true1195:                                ; preds = %land.lhs.true1187
  %tmp96 = add nsw i64 %tmp84, 1
  %tmp97 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1201 = getelementptr inbounds i32, i32* %tmp97, i64 %tmp96
  %tmp98 = load i32, i32* %arrayidx1201, align 4, !tbaa !5
  %cmp1202 = icmp slt i32 %tmp4, %tmp98
  br i1 %cmp1202, label %"susan_corners$0$0_latch$0", label %land.lhs.true1204

land.lhs.true1204:                                ; preds = %land.lhs.true1195
  %tmp99 = add nsw i64 %tmp84, 2
  %tmp100 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1210 = getelementptr inbounds i32, i32* %tmp100, i64 %tmp99
  %tmp101 = load i32, i32* %arrayidx1210, align 4, !tbaa !5
  %cmp1211 = icmp slt i32 %tmp4, %tmp101
  br i1 %cmp1211, label %"susan_corners$0$0_latch$0", label %land.lhs.true1213

land.lhs.true1213:                                ; preds = %land.lhs.true1204
  %tmp102 = add nsw i64 %tmp84, 3
  %tmp103 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1219 = getelementptr inbounds i32, i32* %tmp103, i64 %tmp102
  %tmp104 = load i32, i32* %arrayidx1219, align 4, !tbaa !5
  %cmp1220 = icmp slt i32 %tmp4, %tmp104
  br i1 %cmp1220, label %"susan_corners$0$0_latch$0", label %land.lhs.true1222

land.lhs.true1222:                                ; preds = %land.lhs.true1213
  %tmp105 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$200"
  %tmp106 = add nsw i64 %arg2, %tmp105
  %tmp107 = add nsw i64 %tmp106, -3
  %tmp108 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1228 = getelementptr inbounds i32, i32* %tmp108, i64 %tmp107
  %tmp109 = load i32, i32* %arrayidx1228, align 4, !tbaa !5
  %cmp1229 = icmp slt i32 %tmp4, %tmp109
  br i1 %cmp1229, label %"susan_corners$0$0_latch$0", label %land.lhs.true1231

land.lhs.true1231:                                ; preds = %land.lhs.true1222
  %tmp110 = add nsw i64 %tmp106, -2
  %tmp111 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1237 = getelementptr inbounds i32, i32* %tmp111, i64 %tmp110
  %tmp112 = load i32, i32* %arrayidx1237, align 4, !tbaa !5
  %cmp1238 = icmp slt i32 %tmp4, %tmp112
  br i1 %cmp1238, label %"susan_corners$0$0_latch$0", label %land.lhs.true1240

land.lhs.true1240:                                ; preds = %land.lhs.true1231
  %tmp113 = add nsw i64 %tmp106, -1
  %tmp114 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1246 = getelementptr inbounds i32, i32* %tmp114, i64 %tmp113
  %tmp115 = load i32, i32* %arrayidx1246, align 4, !tbaa !5
  %cmp1247 = icmp slt i32 %tmp4, %tmp115
  br i1 %cmp1247, label %"susan_corners$0$0_latch$0", label %land.lhs.true1249

land.lhs.true1249:                                ; preds = %land.lhs.true1240
  %tmp116 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1254 = getelementptr inbounds i32, i32* %tmp116, i64 %tmp106
  %tmp117 = load i32, i32* %arrayidx1254, align 4, !tbaa !5
  %cmp1255 = icmp slt i32 %tmp4, %tmp117
  br i1 %cmp1255, label %"susan_corners$0$0_latch$0", label %land.lhs.true1257

land.lhs.true1257:                                ; preds = %land.lhs.true1249
  %tmp118 = add nsw i64 %tmp106, 1
  %tmp119 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1263 = getelementptr inbounds i32, i32* %tmp119, i64 %tmp118
  %tmp120 = load i32, i32* %arrayidx1263, align 4, !tbaa !5
  %cmp1264 = icmp slt i32 %tmp4, %tmp120
  br i1 %cmp1264, label %"susan_corners$0$0_latch$0", label %land.lhs.true1266

land.lhs.true1266:                                ; preds = %land.lhs.true1257
  %tmp121 = add nsw i64 %tmp106, 2
  %tmp122 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1272 = getelementptr inbounds i32, i32* %tmp122, i64 %tmp121
  %tmp123 = load i32, i32* %arrayidx1272, align 4, !tbaa !5
  %cmp1273 = icmp slt i32 %tmp4, %tmp123
  br i1 %cmp1273, label %"susan_corners$0$0_latch$0", label %land.lhs.true1275

land.lhs.true1275:                                ; preds = %land.lhs.true1266
  %tmp124 = add nsw i64 %tmp106, 3
  %tmp125 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1281 = getelementptr inbounds i32, i32* %tmp125, i64 %tmp124
  %tmp126 = load i32, i32* %arrayidx1281, align 4, !tbaa !5
  %cmp1282 = icmp slt i32 %tmp4, %tmp126
  br i1 %cmp1282, label %"susan_corners$0$0_latch$0", label %land.lhs.true1284

land.lhs.true1284:                                ; preds = %land.lhs.true1275
  %tmp127 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$198"
  %tmp128 = add nsw i64 %arg2, %tmp127
  %tmp129 = add nsw i64 %tmp128, -3
  %tmp130 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1290 = getelementptr inbounds i32, i32* %tmp130, i64 %tmp129
  %tmp131 = load i32, i32* %arrayidx1290, align 4, !tbaa !5
  %cmp1291 = icmp slt i32 %tmp4, %tmp131
  br i1 %cmp1291, label %"susan_corners$0$0_latch$0", label %land.lhs.true1293

land.lhs.true1293:                                ; preds = %land.lhs.true1284
  %tmp132 = add nsw i64 %tmp128, -2
  %tmp133 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1299 = getelementptr inbounds i32, i32* %tmp133, i64 %tmp132
  %tmp134 = load i32, i32* %arrayidx1299, align 4, !tbaa !5
  %cmp1300 = icmp slt i32 %tmp4, %tmp134
  br i1 %cmp1300, label %"susan_corners$0$0_latch$0", label %land.lhs.true1302

land.lhs.true1302:                                ; preds = %land.lhs.true1293
  %tmp135 = add nsw i64 %tmp128, -1
  %tmp136 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1308 = getelementptr inbounds i32, i32* %tmp136, i64 %tmp135
  %tmp137 = load i32, i32* %arrayidx1308, align 4, !tbaa !5
  %cmp1309 = icmp slt i32 %tmp4, %tmp137
  br i1 %cmp1309, label %"susan_corners$0$0_latch$0", label %land.lhs.true1311

land.lhs.true1311:                                ; preds = %land.lhs.true1302
  %tmp138 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1316 = getelementptr inbounds i32, i32* %tmp138, i64 %tmp128
  %tmp139 = load i32, i32* %arrayidx1316, align 4, !tbaa !5
  %cmp1317 = icmp slt i32 %tmp4, %tmp139
  br i1 %cmp1317, label %"susan_corners$0$0_latch$0", label %land.lhs.true1319

land.lhs.true1319:                                ; preds = %land.lhs.true1311
  %tmp140 = add nsw i64 %tmp128, 1
  %tmp141 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1325 = getelementptr inbounds i32, i32* %tmp141, i64 %tmp140
  %tmp142 = load i32, i32* %arrayidx1325, align 4, !tbaa !5
  %cmp1326 = icmp slt i32 %tmp4, %tmp142
  br i1 %cmp1326, label %"susan_corners$0$0_latch$0", label %land.lhs.true1328

land.lhs.true1328:                                ; preds = %land.lhs.true1319
  %tmp143 = add nsw i64 %tmp128, 2
  %tmp144 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1334 = getelementptr inbounds i32, i32* %tmp144, i64 %tmp143
  %tmp145 = load i32, i32* %arrayidx1334, align 4, !tbaa !5
  %cmp1335 = icmp slt i32 %tmp4, %tmp145
  br i1 %cmp1335, label %"susan_corners$0$0_latch$0", label %land.lhs.true1337

land.lhs.true1337:                                ; preds = %land.lhs.true1328
  %tmp146 = add nsw i64 %tmp128, 3
  %tmp147 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$115"
  %arrayidx1343 = getelementptr inbounds i32, i32* %tmp147, i64 %tmp146
  %tmp148 = load i32, i32* %arrayidx1343, align 4, !tbaa !5
  %cmp1344 = icmp slt i32 %tmp4, %tmp148
  br i1 %cmp1344, label %"susan_corners$0$0_latch$0", label %"susan_corners$0$0_exiting$1"

"susan_corners$0$0_exiting$1":                    ; preds = %land.lhs.true1337
  %idxprom1347 = sext i32 %arg1 to i64
  %tmp149 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$122"
  %info = getelementptr inbounds %struct.anon, %struct.anon* %tmp149, i64 %idxprom1347, i32 2
  store i32 0, i32* %info, align 4, !tbaa !8
  %tmp150 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$122"
  %x1351 = getelementptr inbounds %struct.anon, %struct.anon* %tmp150, i64 %idxprom1347, i32 0
  %tmp151 = trunc i64 %arg2 to i32
  store i32 %tmp151, i32* %x1351, align 4, !tbaa !20
  %tmp152 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$122"
  %y1354 = getelementptr inbounds %struct.anon, %struct.anon* %tmp152, i64 %idxprom1347, i32 1
  %tmp153 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$199"
  store i32 %tmp153, i32* %y1354, align 4, !tbaa !15
  %tmp154 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$112"
  %arrayidx1358 = getelementptr inbounds i32, i32* %tmp154, i64 %idxprom923
  %tmp155 = load i32, i32* %arrayidx1358, align 4, !tbaa !5
  %tmp156 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$122"
  %dx = getelementptr inbounds %struct.anon, %struct.anon* %tmp156, i64 %idxprom1347, i32 3
  store i32 %tmp155, i32* %dx, align 4, !tbaa !21
  %tmp157 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$118"
  %arrayidx1364 = getelementptr inbounds i32, i32* %tmp157, i64 %idxprom923
  %tmp158 = load i32, i32* %arrayidx1364, align 4, !tbaa !5
  %tmp159 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$122"
  %dy = getelementptr inbounds %struct.anon, %struct.anon* %tmp159, i64 %idxprom1347, i32 4
  store i32 %tmp158, i32* %dy, align 4, !tbaa !22
  %tmp160 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$110"
  %arrayidx1370 = getelementptr inbounds i8, i8* %tmp160, i64 %idxprom923
  %tmp161 = load i8, i8* %arrayidx1370, align 1, !tbaa !7
  %conv1371 = zext i8 %tmp161 to i32
  %tmp162 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$122"
  %I = getelementptr inbounds %struct.anon, %struct.anon* %tmp162, i64 %idxprom1347, i32 5
  store i32 %conv1371, i32* %I, align 4, !tbaa !23
  %inc1374 = add nsw i32 %arg1, 1
  %cmp1375 = icmp eq i32 %inc1374, 15000
  br i1 %cmp1375, label %"susan_corners$0$0_return_from_recursive_function$1", label %"susan_corners$0$0_latch$0"

"susan_corners$0$0_latch$0":                      ; preds = %"susan_corners$0$0_exiting$1", %land.lhs.true1337, %land.lhs.true1328, %land.lhs.true1319, %land.lhs.true1311, %land.lhs.true1302, %land.lhs.true1293, %land.lhs.true1284, %land.lhs.true1275, %land.lhs.true1266, %land.lhs.true1257, %land.lhs.true1249, %land.lhs.true1240, %land.lhs.true1231, %land.lhs.true1222, %land.lhs.true1213, %land.lhs.true1204, %land.lhs.true1195, %land.lhs.true1187, %land.lhs.true1178, %land.lhs.true1169, %land.lhs.true1160, %land.lhs.true1152, %land.lhs.true1144, %land.lhs.true1136, %land.lhs.true1128, %land.lhs.true1120, %land.lhs.true1112, %land.lhs.true1103, %land.lhs.true1094, %land.lhs.true1085, %land.lhs.true1077, %land.lhs.true1068, %land.lhs.true1059, %land.lhs.true1050, %land.lhs.true1041, %land.lhs.true1032, %land.lhs.true1023, %land.lhs.true1015, %land.lhs.true1006, %land.lhs.true997, %land.lhs.true988, %land.lhs.true979, %land.lhs.true970, %land.lhs.true961, %land.lhs.true953, %land.lhs.true944, %land.lhs.true, %if.then927, %"susan_corners$0$0_header"
  %n.2 = phi i32 [ %inc1374, %"susan_corners$0$0_exiting$1" ], [ %arg1, %land.lhs.true1337 ], [ %arg1, %land.lhs.true1328 ], [ %arg1, %land.lhs.true1319 ], [ %arg1, %land.lhs.true1311 ], [ %arg1, %land.lhs.true1302 ], [ %arg1, %land.lhs.true1293 ], [ %arg1, %land.lhs.true1284 ], [ %arg1, %land.lhs.true1275 ], [ %arg1, %land.lhs.true1266 ], [ %arg1, %land.lhs.true1257 ], [ %arg1, %land.lhs.true1249 ], [ %arg1, %land.lhs.true1240 ], [ %arg1, %land.lhs.true1231 ], [ %arg1, %land.lhs.true1222 ], [ %arg1, %land.lhs.true1213 ], [ %arg1, %land.lhs.true1204 ], [ %arg1, %land.lhs.true1195 ], [ %arg1, %land.lhs.true1187 ], [ %arg1, %land.lhs.true1178 ], [ %arg1, %land.lhs.true1169 ], [ %arg1, %land.lhs.true1160 ], [ %arg1, %land.lhs.true1152 ], [ %arg1, %land.lhs.true1144 ], [ %arg1, %land.lhs.true1136 ], [ %arg1, %land.lhs.true1128 ], [ %arg1, %land.lhs.true1120 ], [ %arg1, %land.lhs.true1112 ], [ %arg1, %land.lhs.true1103 ], [ %arg1, %land.lhs.true1094 ], [ %arg1, %land.lhs.true1085 ], [ %arg1, %land.lhs.true1077 ], [ %arg1, %land.lhs.true1068 ], [ %arg1, %land.lhs.true1059 ], [ %arg1, %land.lhs.true1050 ], [ %arg1, %land.lhs.true1041 ], [ %arg1, %land.lhs.true1032 ], [ %arg1, %land.lhs.true1023 ], [ %arg1, %land.lhs.true1015 ], [ %arg1, %land.lhs.true1006 ], [ %arg1, %land.lhs.true997 ], [ %arg1, %land.lhs.true988 ], [ %arg1, %land.lhs.true979 ], [ %arg1, %land.lhs.true970 ], [ %arg1, %land.lhs.true961 ], [ %arg1, %land.lhs.true953 ], [ %arg1, %land.lhs.true944 ], [ %arg1, %land.lhs.true ], [ %arg1, %if.then927 ], [ %arg1, %"susan_corners$0$0_header" ]
  %indvars.iv.next = add nuw nsw i64 %arg2, 1
  %inc1383 = add nuw nsw i32 %arg, 1
  %tmp163 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$121"
  %cmp918 = icmp slt i64 %indvars.iv.next, %tmp163
  br i1 %cmp918, label %"susan_corners$0$0_increment_depth_counter", label %"susan_corners$0$0_return_from_recursive_function$0"

"susan_corners$0$0_increment_depth_counter":      ; preds = %"susan_corners$0$0_latch$0"
  br label %"susan_corners$0$0_recursively_call_function"

"susan_corners$0$0_recursively_call_function":    ; preds = %"susan_corners$0$0_increment_depth_counter"
  call void @"susan_corners$0$0"(i32 %inc1383, i32 %n.2, i64 %indvars.iv.next)
  ret void

"susan_corners$0$0_return_from_recursive_function$0": ; preds = %"susan_corners$0$0_latch$0"
  %tmp164 = getelementptr %16, %16* @"susan_corners$0$0_return_value_struct", i32 0, i32 0
  store i32 %n.2, i32* %tmp164
  %tmp165 = getelementptr %16, %16* @"susan_corners$0$0_return_value_struct", i32 0, i32 1
  store i8 1, i8* %tmp165
  ret void

"susan_corners$0$0_return_from_recursive_function$1": ; preds = %"susan_corners$0$0_exiting$1"
  %tmp166 = getelementptr %16, %16* @"susan_corners$0$0_return_value_struct", i32 0, i32 1
  store i8 0, i8* %tmp166
  ret void
}

define void @"susan_corners_quick$1$0"(i32 %arg, i64 %arg1) {
"susan_corners_quick$1$0_header":
  %tmp = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$207"
  %add.ptr11 = getelementptr inbounds i8, i8* %tmp, i64 %arg1
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr11, i64 -1
  %tmp2 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$206"
  %add = add nsw i32 %arg, %tmp2
  %idxprom = sext i32 %add to i64
  %tmp3 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx = getelementptr inbounds i8, i8* %tmp3, i64 %idxprom
  %tmp4 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idx.ext15 = zext i8 %tmp4 to i64
  %tmp5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$132"
  %add.ptr16 = getelementptr inbounds i8, i8* %tmp5, i64 %idx.ext15
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  %tmp6 = load i8, i8* %add.ptr12, align 1, !tbaa !7
  %idx.ext18 = zext i8 %tmp6 to i64
  %idx.neg = sub nsw i64 0, %idx.ext18
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg
  %tmp7 = load i8, i8* %add.ptr19, align 1, !tbaa !7
  %conv20 = zext i8 %tmp7 to i32
  %add21 = add nuw nsw i32 %conv20, 100
  %incdec.ptr22 = getelementptr inbounds i8, i8* %incdec.ptr, i64 1
  %tmp8 = load i8, i8* %incdec.ptr, align 1, !tbaa !7
  %idx.ext24 = zext i8 %tmp8 to i64
  %idx.neg25 = sub nsw i64 0, %idx.ext24
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg25
  %tmp9 = load i8, i8* %add.ptr26, align 1, !tbaa !7
  %conv27 = zext i8 %tmp9 to i32
  %add28 = add nuw nsw i32 %add21, %conv27
  %tmp10 = load i8, i8* %incdec.ptr22, align 1, !tbaa !7
  %idx.ext30 = zext i8 %tmp10 to i64
  %idx.neg31 = sub nsw i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg31
  %tmp11 = load i8, i8* %add.ptr32, align 1, !tbaa !7
  %conv33 = zext i8 %tmp11 to i32
  %add34 = add nuw nsw i32 %add28, %conv33
  %tmp12 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$131"
  %add.ptr37 = getelementptr inbounds i8, i8* %incdec.ptr22, i64 %tmp12
  %incdec.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 1
  %tmp13 = load i8, i8* %add.ptr37, align 1, !tbaa !7
  %idx.ext40 = zext i8 %tmp13 to i64
  %idx.neg41 = sub nsw i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg41
  %tmp14 = load i8, i8* %add.ptr42, align 1, !tbaa !7
  %conv43 = zext i8 %tmp14 to i32
  %add44 = add nuw nsw i32 %add34, %conv43
  %incdec.ptr45 = getelementptr inbounds i8, i8* %incdec.ptr38, i64 1
  %tmp15 = load i8, i8* %incdec.ptr38, align 1, !tbaa !7
  %idx.ext47 = zext i8 %tmp15 to i64
  %idx.neg48 = sub nsw i64 0, %idx.ext47
  %add.ptr49 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg48
  %tmp16 = load i8, i8* %add.ptr49, align 1, !tbaa !7
  %conv50 = zext i8 %tmp16 to i32
  %add51 = add nuw nsw i32 %add44, %conv50
  %incdec.ptr52 = getelementptr inbounds i8, i8* %incdec.ptr45, i64 1
  %tmp17 = load i8, i8* %incdec.ptr45, align 1, !tbaa !7
  %idx.ext54 = zext i8 %tmp17 to i64
  %idx.neg55 = sub nsw i64 0, %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg55
  %tmp18 = load i8, i8* %add.ptr56, align 1, !tbaa !7
  %conv57 = zext i8 %tmp18 to i32
  %add58 = add nuw nsw i32 %add51, %conv57
  %incdec.ptr59 = getelementptr inbounds i8, i8* %incdec.ptr52, i64 1
  %tmp19 = load i8, i8* %incdec.ptr52, align 1, !tbaa !7
  %idx.ext61 = zext i8 %tmp19 to i64
  %idx.neg62 = sub nsw i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg62
  %tmp20 = load i8, i8* %add.ptr63, align 1, !tbaa !7
  %conv64 = zext i8 %tmp20 to i32
  %add65 = add nsw i32 %add58, %conv64
  %tmp21 = load i8, i8* %incdec.ptr59, align 1, !tbaa !7
  %idx.ext67 = zext i8 %tmp21 to i64
  %idx.neg68 = sub nsw i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg68
  %tmp22 = load i8, i8* %add.ptr69, align 1, !tbaa !7
  %conv70 = zext i8 %tmp22 to i32
  %add71 = add nsw i32 %add65, %conv70
  %tmp23 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$130"
  %add.ptr74 = getelementptr inbounds i8, i8* %incdec.ptr59, i64 %tmp23
  %incdec.ptr75 = getelementptr inbounds i8, i8* %add.ptr74, i64 1
  %tmp24 = load i8, i8* %add.ptr74, align 1, !tbaa !7
  %idx.ext77 = zext i8 %tmp24 to i64
  %idx.neg78 = sub nsw i64 0, %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg78
  %tmp25 = load i8, i8* %add.ptr79, align 1, !tbaa !7
  %conv80 = zext i8 %tmp25 to i32
  %add81 = add nsw i32 %add71, %conv80
  %incdec.ptr82 = getelementptr inbounds i8, i8* %incdec.ptr75, i64 1
  %tmp26 = load i8, i8* %incdec.ptr75, align 1, !tbaa !7
  %idx.ext84 = zext i8 %tmp26 to i64
  %idx.neg85 = sub nsw i64 0, %idx.ext84
  %add.ptr86 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg85
  %tmp27 = load i8, i8* %add.ptr86, align 1, !tbaa !7
  %conv87 = zext i8 %tmp27 to i32
  %add88 = add nsw i32 %add81, %conv87
  %incdec.ptr89 = getelementptr inbounds i8, i8* %incdec.ptr82, i64 1
  %tmp28 = load i8, i8* %incdec.ptr82, align 1, !tbaa !7
  %idx.ext91 = zext i8 %tmp28 to i64
  %idx.neg92 = sub nsw i64 0, %idx.ext91
  %add.ptr93 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg92
  %tmp29 = load i8, i8* %add.ptr93, align 1, !tbaa !7
  %conv94 = zext i8 %tmp29 to i32
  %add95 = add nsw i32 %add88, %conv94
  %incdec.ptr96 = getelementptr inbounds i8, i8* %incdec.ptr89, i64 1
  %tmp30 = load i8, i8* %incdec.ptr89, align 1, !tbaa !7
  %idx.ext98 = zext i8 %tmp30 to i64
  %idx.neg99 = sub nsw i64 0, %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg99
  %tmp31 = load i8, i8* %add.ptr100, align 1, !tbaa !7
  %conv101 = zext i8 %tmp31 to i32
  %add102 = add nsw i32 %add95, %conv101
  %incdec.ptr103 = getelementptr inbounds i8, i8* %incdec.ptr96, i64 1
  %tmp32 = load i8, i8* %incdec.ptr96, align 1, !tbaa !7
  %idx.ext105 = zext i8 %tmp32 to i64
  %idx.neg106 = sub nsw i64 0, %idx.ext105
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg106
  %tmp33 = load i8, i8* %add.ptr107, align 1, !tbaa !7
  %conv108 = zext i8 %tmp33 to i32
  %add109 = add nsw i32 %add102, %conv108
  %incdec.ptr110 = getelementptr inbounds i8, i8* %incdec.ptr103, i64 1
  %tmp34 = load i8, i8* %incdec.ptr103, align 1, !tbaa !7
  %idx.ext112 = zext i8 %tmp34 to i64
  %idx.neg113 = sub nsw i64 0, %idx.ext112
  %add.ptr114 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg113
  %tmp35 = load i8, i8* %add.ptr114, align 1, !tbaa !7
  %conv115 = zext i8 %tmp35 to i32
  %add116 = add nsw i32 %add109, %conv115
  %tmp36 = load i8, i8* %incdec.ptr110, align 1, !tbaa !7
  %idx.ext118 = zext i8 %tmp36 to i64
  %idx.neg119 = sub nsw i64 0, %idx.ext118
  %add.ptr120 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg119
  %tmp37 = load i8, i8* %add.ptr120, align 1, !tbaa !7
  %conv121 = zext i8 %tmp37 to i32
  %add122 = add nsw i32 %add116, %conv121
  %tmp38 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$128"
  %add.ptr125 = getelementptr inbounds i8, i8* %incdec.ptr110, i64 %tmp38
  %incdec.ptr126 = getelementptr inbounds i8, i8* %add.ptr125, i64 1
  %tmp39 = load i8, i8* %add.ptr125, align 1, !tbaa !7
  %idx.ext128 = zext i8 %tmp39 to i64
  %idx.neg129 = sub nsw i64 0, %idx.ext128
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg129
  %tmp40 = load i8, i8* %add.ptr130, align 1, !tbaa !7
  %conv131 = zext i8 %tmp40 to i32
  %add132 = add nsw i32 %add122, %conv131
  %incdec.ptr133 = getelementptr inbounds i8, i8* %incdec.ptr126, i64 1
  %tmp41 = load i8, i8* %incdec.ptr126, align 1, !tbaa !7
  %idx.ext135 = zext i8 %tmp41 to i64
  %idx.neg136 = sub nsw i64 0, %idx.ext135
  %add.ptr137 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg136
  %tmp42 = load i8, i8* %add.ptr137, align 1, !tbaa !7
  %conv138 = zext i8 %tmp42 to i32
  %add139 = add nsw i32 %add132, %conv138
  %tmp43 = load i8, i8* %incdec.ptr133, align 1, !tbaa !7
  %idx.ext141 = zext i8 %tmp43 to i64
  %idx.neg142 = sub nsw i64 0, %idx.ext141
  %add.ptr143 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg142
  %tmp44 = load i8, i8* %add.ptr143, align 1, !tbaa !7
  %conv144 = zext i8 %tmp44 to i32
  %add145 = add nsw i32 %add139, %conv144
  %tmp45 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp146 = icmp slt i32 %add145, %tmp45
  br i1 %cmp146, label %if.then, label %"susan_corners_quick$1$0_latch$0"

if.then:                                          ; preds = %"susan_corners_quick$1$0_header"
  %add.ptr148 = getelementptr inbounds i8, i8* %incdec.ptr133, i64 2
  %incdec.ptr149 = getelementptr inbounds i8, i8* %add.ptr148, i64 1
  %tmp46 = load i8, i8* %add.ptr148, align 1, !tbaa !7
  %idx.ext151 = zext i8 %tmp46 to i64
  %idx.neg152 = sub nsw i64 0, %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg152
  %tmp47 = load i8, i8* %add.ptr153, align 1, !tbaa !7
  %conv154 = zext i8 %tmp47 to i32
  %add155 = add nsw i32 %conv154, %add145
  %tmp48 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp156 = icmp slt i32 %add155, %tmp48
  br i1 %cmp156, label %if.then158, label %"susan_corners_quick$1$0_latch$0"

if.then158:                                       ; preds = %if.then
  %incdec.ptr159 = getelementptr inbounds i8, i8* %incdec.ptr149, i64 1
  %tmp49 = load i8, i8* %incdec.ptr149, align 1, !tbaa !7
  %idx.ext161 = zext i8 %tmp49 to i64
  %idx.neg162 = sub nsw i64 0, %idx.ext161
  %add.ptr163 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg162
  %tmp50 = load i8, i8* %add.ptr163, align 1, !tbaa !7
  %conv164 = zext i8 %tmp50 to i32
  %add165 = add nsw i32 %conv164, %add155
  %tmp51 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp166 = icmp slt i32 %add165, %tmp51
  br i1 %cmp166, label %if.then168, label %"susan_corners_quick$1$0_latch$0"

if.then168:                                       ; preds = %if.then158
  %tmp52 = load i8, i8* %incdec.ptr159, align 1, !tbaa !7
  %idx.ext170 = zext i8 %tmp52 to i64
  %idx.neg171 = sub nsw i64 0, %idx.ext170
  %add.ptr172 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg171
  %tmp53 = load i8, i8* %add.ptr172, align 1, !tbaa !7
  %conv173 = zext i8 %tmp53 to i32
  %add174 = add nsw i32 %conv173, %add165
  %tmp54 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp175 = icmp slt i32 %add174, %tmp54
  br i1 %cmp175, label %if.then177, label %"susan_corners_quick$1$0_latch$0"

if.then177:                                       ; preds = %if.then168
  %tmp55 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$128"
  %add.ptr180 = getelementptr inbounds i8, i8* %incdec.ptr159, i64 %tmp55
  %incdec.ptr181 = getelementptr inbounds i8, i8* %add.ptr180, i64 1
  %tmp56 = load i8, i8* %add.ptr180, align 1, !tbaa !7
  %idx.ext183 = zext i8 %tmp56 to i64
  %idx.neg184 = sub nsw i64 0, %idx.ext183
  %add.ptr185 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg184
  %tmp57 = load i8, i8* %add.ptr185, align 1, !tbaa !7
  %conv186 = zext i8 %tmp57 to i32
  %add187 = add nsw i32 %conv186, %add174
  %tmp58 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp188 = icmp slt i32 %add187, %tmp58
  br i1 %cmp188, label %if.then190, label %"susan_corners_quick$1$0_latch$0"

if.then190:                                       ; preds = %if.then177
  %incdec.ptr191 = getelementptr inbounds i8, i8* %incdec.ptr181, i64 1
  %tmp59 = load i8, i8* %incdec.ptr181, align 1, !tbaa !7
  %idx.ext193 = zext i8 %tmp59 to i64
  %idx.neg194 = sub nsw i64 0, %idx.ext193
  %add.ptr195 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg194
  %tmp60 = load i8, i8* %add.ptr195, align 1, !tbaa !7
  %conv196 = zext i8 %tmp60 to i32
  %add197 = add nsw i32 %conv196, %add187
  %tmp61 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp198 = icmp slt i32 %add197, %tmp61
  br i1 %cmp198, label %if.then200, label %"susan_corners_quick$1$0_latch$0"

if.then200:                                       ; preds = %if.then190
  %incdec.ptr201 = getelementptr inbounds i8, i8* %incdec.ptr191, i64 1
  %tmp62 = load i8, i8* %incdec.ptr191, align 1, !tbaa !7
  %idx.ext203 = zext i8 %tmp62 to i64
  %idx.neg204 = sub nsw i64 0, %idx.ext203
  %add.ptr205 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg204
  %tmp63 = load i8, i8* %add.ptr205, align 1, !tbaa !7
  %conv206 = zext i8 %tmp63 to i32
  %add207 = add nsw i32 %conv206, %add197
  %tmp64 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp208 = icmp slt i32 %add207, %tmp64
  br i1 %cmp208, label %if.then210, label %"susan_corners_quick$1$0_latch$0"

if.then210:                                       ; preds = %if.then200
  %incdec.ptr211 = getelementptr inbounds i8, i8* %incdec.ptr201, i64 1
  %tmp65 = load i8, i8* %incdec.ptr201, align 1, !tbaa !7
  %idx.ext213 = zext i8 %tmp65 to i64
  %idx.neg214 = sub nsw i64 0, %idx.ext213
  %add.ptr215 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg214
  %tmp66 = load i8, i8* %add.ptr215, align 1, !tbaa !7
  %conv216 = zext i8 %tmp66 to i32
  %add217 = add nsw i32 %conv216, %add207
  %tmp67 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp218 = icmp slt i32 %add217, %tmp67
  br i1 %cmp218, label %if.then220, label %"susan_corners_quick$1$0_latch$0"

if.then220:                                       ; preds = %if.then210
  %incdec.ptr221 = getelementptr inbounds i8, i8* %incdec.ptr211, i64 1
  %tmp68 = load i8, i8* %incdec.ptr211, align 1, !tbaa !7
  %idx.ext223 = zext i8 %tmp68 to i64
  %idx.neg224 = sub nsw i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg224
  %tmp69 = load i8, i8* %add.ptr225, align 1, !tbaa !7
  %conv226 = zext i8 %tmp69 to i32
  %add227 = add nsw i32 %conv226, %add217
  %tmp70 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp228 = icmp slt i32 %add227, %tmp70
  br i1 %cmp228, label %if.then230, label %"susan_corners_quick$1$0_latch$0"

if.then230:                                       ; preds = %if.then220
  %incdec.ptr231 = getelementptr inbounds i8, i8* %incdec.ptr221, i64 1
  %tmp71 = load i8, i8* %incdec.ptr221, align 1, !tbaa !7
  %idx.ext233 = zext i8 %tmp71 to i64
  %idx.neg234 = sub nsw i64 0, %idx.ext233
  %add.ptr235 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg234
  %tmp72 = load i8, i8* %add.ptr235, align 1, !tbaa !7
  %conv236 = zext i8 %tmp72 to i32
  %add237 = add nsw i32 %conv236, %add227
  %tmp73 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp238 = icmp slt i32 %add237, %tmp73
  br i1 %cmp238, label %if.then240, label %"susan_corners_quick$1$0_latch$0"

if.then240:                                       ; preds = %if.then230
  %tmp74 = load i8, i8* %incdec.ptr231, align 1, !tbaa !7
  %idx.ext242 = zext i8 %tmp74 to i64
  %idx.neg243 = sub nsw i64 0, %idx.ext242
  %add.ptr244 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg243
  %tmp75 = load i8, i8* %add.ptr244, align 1, !tbaa !7
  %conv245 = zext i8 %tmp75 to i32
  %add246 = add nsw i32 %conv245, %add237
  %tmp76 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp247 = icmp slt i32 %add246, %tmp76
  br i1 %cmp247, label %if.then249, label %"susan_corners_quick$1$0_latch$0"

if.then249:                                       ; preds = %if.then240
  %tmp77 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$130"
  %add.ptr252 = getelementptr inbounds i8, i8* %incdec.ptr231, i64 %tmp77
  %incdec.ptr253 = getelementptr inbounds i8, i8* %add.ptr252, i64 1
  %tmp78 = load i8, i8* %add.ptr252, align 1, !tbaa !7
  %idx.ext255 = zext i8 %tmp78 to i64
  %idx.neg256 = sub nsw i64 0, %idx.ext255
  %add.ptr257 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg256
  %tmp79 = load i8, i8* %add.ptr257, align 1, !tbaa !7
  %conv258 = zext i8 %tmp79 to i32
  %add259 = add nsw i32 %conv258, %add246
  %tmp80 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp260 = icmp slt i32 %add259, %tmp80
  br i1 %cmp260, label %if.then262, label %"susan_corners_quick$1$0_latch$0"

if.then262:                                       ; preds = %if.then249
  %incdec.ptr263 = getelementptr inbounds i8, i8* %incdec.ptr253, i64 1
  %tmp81 = load i8, i8* %incdec.ptr253, align 1, !tbaa !7
  %idx.ext265 = zext i8 %tmp81 to i64
  %idx.neg266 = sub nsw i64 0, %idx.ext265
  %add.ptr267 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg266
  %tmp82 = load i8, i8* %add.ptr267, align 1, !tbaa !7
  %conv268 = zext i8 %tmp82 to i32
  %add269 = add nsw i32 %conv268, %add259
  %tmp83 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp270 = icmp slt i32 %add269, %tmp83
  br i1 %cmp270, label %if.then272, label %"susan_corners_quick$1$0_latch$0"

if.then272:                                       ; preds = %if.then262
  %incdec.ptr273 = getelementptr inbounds i8, i8* %incdec.ptr263, i64 1
  %tmp84 = load i8, i8* %incdec.ptr263, align 1, !tbaa !7
  %idx.ext275 = zext i8 %tmp84 to i64
  %idx.neg276 = sub nsw i64 0, %idx.ext275
  %add.ptr277 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg276
  %tmp85 = load i8, i8* %add.ptr277, align 1, !tbaa !7
  %conv278 = zext i8 %tmp85 to i32
  %add279 = add nsw i32 %conv278, %add269
  %tmp86 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp280 = icmp slt i32 %add279, %tmp86
  br i1 %cmp280, label %if.then282, label %"susan_corners_quick$1$0_latch$0"

if.then282:                                       ; preds = %if.then272
  %incdec.ptr283 = getelementptr inbounds i8, i8* %incdec.ptr273, i64 1
  %tmp87 = load i8, i8* %incdec.ptr273, align 1, !tbaa !7
  %idx.ext285 = zext i8 %tmp87 to i64
  %idx.neg286 = sub nsw i64 0, %idx.ext285
  %add.ptr287 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg286
  %tmp88 = load i8, i8* %add.ptr287, align 1, !tbaa !7
  %conv288 = zext i8 %tmp88 to i32
  %add289 = add nsw i32 %conv288, %add279
  %tmp89 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp290 = icmp slt i32 %add289, %tmp89
  br i1 %cmp290, label %if.then292, label %"susan_corners_quick$1$0_latch$0"

if.then292:                                       ; preds = %if.then282
  %tmp90 = load i8, i8* %incdec.ptr283, align 1, !tbaa !7
  %idx.ext294 = zext i8 %tmp90 to i64
  %idx.neg295 = sub nsw i64 0, %idx.ext294
  %add.ptr296 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg295
  %tmp91 = load i8, i8* %add.ptr296, align 1, !tbaa !7
  %conv297 = zext i8 %tmp91 to i32
  %add298 = add nsw i32 %conv297, %add289
  %tmp92 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp299 = icmp slt i32 %add298, %tmp92
  br i1 %cmp299, label %if.then301, label %"susan_corners_quick$1$0_latch$0"

if.then301:                                       ; preds = %if.then292
  %tmp93 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$131"
  %add.ptr304 = getelementptr inbounds i8, i8* %incdec.ptr283, i64 %tmp93
  %incdec.ptr305 = getelementptr inbounds i8, i8* %add.ptr304, i64 1
  %tmp94 = load i8, i8* %add.ptr304, align 1, !tbaa !7
  %idx.ext307 = zext i8 %tmp94 to i64
  %idx.neg308 = sub nsw i64 0, %idx.ext307
  %add.ptr309 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg308
  %tmp95 = load i8, i8* %add.ptr309, align 1, !tbaa !7
  %conv310 = zext i8 %tmp95 to i32
  %add311 = add nsw i32 %conv310, %add298
  %tmp96 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp312 = icmp slt i32 %add311, %tmp96
  br i1 %cmp312, label %if.then314, label %"susan_corners_quick$1$0_latch$0"

if.then314:                                       ; preds = %if.then301
  %tmp97 = load i8, i8* %incdec.ptr305, align 1, !tbaa !7
  %idx.ext317 = zext i8 %tmp97 to i64
  %idx.neg318 = sub nsw i64 0, %idx.ext317
  %add.ptr319 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg318
  %tmp98 = load i8, i8* %add.ptr319, align 1, !tbaa !7
  %conv320 = zext i8 %tmp98 to i32
  %add321 = add nsw i32 %conv320, %add311
  %tmp99 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp322 = icmp slt i32 %add321, %tmp99
  br i1 %cmp322, label %if.then324, label %"susan_corners_quick$1$0_latch$0"

if.then324:                                       ; preds = %if.then314
  %incdec.ptr315 = getelementptr inbounds i8, i8* %incdec.ptr305, i64 1
  %tmp100 = load i8, i8* %incdec.ptr315, align 1, !tbaa !7
  %idx.ext326 = zext i8 %tmp100 to i64
  %idx.neg327 = sub nsw i64 0, %idx.ext326
  %add.ptr328 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg327
  %tmp101 = load i8, i8* %add.ptr328, align 1, !tbaa !7
  %conv329 = zext i8 %tmp101 to i32
  %add330 = add nsw i32 %conv329, %add321
  %tmp102 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %cmp331 = icmp slt i32 %add330, %tmp102
  br i1 %cmp331, label %if.then333, label %"susan_corners_quick$1$0_latch$0"

if.then333:                                       ; preds = %if.then324
  %tmp103 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$127"
  %sub334 = sub nsw i32 %tmp103, %add330
  %tmp104 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx338 = getelementptr inbounds i32, i32* %tmp104, i64 %idxprom
  store i32 %sub334, i32* %arrayidx338, align 4, !tbaa !5
  br label %"susan_corners_quick$1$0_latch$0"

"susan_corners_quick$1$0_latch$0":                ; preds = %if.then333, %if.then324, %if.then314, %if.then301, %if.then292, %if.then282, %if.then272, %if.then262, %if.then249, %if.then240, %if.then230, %if.then220, %if.then210, %if.then200, %if.then190, %if.then177, %if.then168, %if.then158, %if.then, %"susan_corners_quick$1$0_header"
  %indvars.iv.next2115 = add nuw nsw i64 %arg1, 1
  %inc = add nuw nsw i32 %arg, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next2115 to i32
  %tmp105 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$129"
  %exitcond = icmp eq i32 %lftr.wideiv, %tmp105
  br i1 %exitcond, label %"susan_corners_quick$1$0_return_from_recursive_function$0", label %"susan_corners_quick$1$0_increment_depth_counter"

"susan_corners_quick$1$0_increment_depth_counter": ; preds = %"susan_corners_quick$1$0_latch$0"
  br label %"susan_corners_quick$1$0_recursively_call_function"

"susan_corners_quick$1$0_recursively_call_function": ; preds = %"susan_corners_quick$1$0_increment_depth_counter"
  call void @"susan_corners_quick$1$0"(i32 %inc, i64 %indvars.iv.next2115)
  ret void

"susan_corners_quick$1$0_return_from_recursive_function$0": ; preds = %"susan_corners_quick$1$0_latch$0"
  ret void
}

define void @"susan_corners_quick$0$0"(i32 %arg, i32 %arg1, i64 %arg2) {
"susan_corners_quick$0$0_header":
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$215"
  %add371 = add nsw i32 %arg, %tmp
  %idxprom372 = sext i32 %add371 to i64
  %tmp3 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx373 = getelementptr inbounds i32, i32* %tmp3, i64 %idxprom372
  %tmp4 = load i32, i32* %arrayidx373, align 4, !tbaa !5
  %cmp374 = icmp sgt i32 %tmp4, 0
  br i1 %cmp374, label %if.then376, label %"susan_corners_quick$0$0_latch$0"

if.then376:                                       ; preds = %"susan_corners_quick$0$0_header"
  %tmp5 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$214"
  %tmp6 = add nsw i64 %arg2, %tmp5
  %tmp7 = add nsw i64 %tmp6, -3
  %tmp8 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx382 = getelementptr inbounds i32, i32* %tmp8, i64 %tmp7
  %tmp9 = load i32, i32* %arrayidx382, align 4, !tbaa !5
  %cmp383 = icmp sgt i32 %tmp4, %tmp9
  br i1 %cmp383, label %land.lhs.true, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true:                                    ; preds = %if.then376
  %tmp10 = add nsw i64 %tmp6, -2
  %tmp11 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx390 = getelementptr inbounds i32, i32* %tmp11, i64 %tmp10
  %tmp12 = load i32, i32* %arrayidx390, align 4, !tbaa !5
  %cmp391 = icmp sgt i32 %tmp4, %tmp12
  br i1 %cmp391, label %land.lhs.true393, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true393:                                 ; preds = %land.lhs.true
  %tmp13 = add nsw i64 %tmp6, -1
  %tmp14 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx399 = getelementptr inbounds i32, i32* %tmp14, i64 %tmp13
  %tmp15 = load i32, i32* %arrayidx399, align 4, !tbaa !5
  %cmp400 = icmp sgt i32 %tmp4, %tmp15
  br i1 %cmp400, label %land.lhs.true402, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true402:                                 ; preds = %land.lhs.true393
  %tmp16 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx407 = getelementptr inbounds i32, i32* %tmp16, i64 %tmp6
  %tmp17 = load i32, i32* %arrayidx407, align 4, !tbaa !5
  %cmp408 = icmp sgt i32 %tmp4, %tmp17
  br i1 %cmp408, label %land.lhs.true410, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true410:                                 ; preds = %land.lhs.true402
  %tmp18 = add nsw i64 %tmp6, 1
  %tmp19 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx416 = getelementptr inbounds i32, i32* %tmp19, i64 %tmp18
  %tmp20 = load i32, i32* %arrayidx416, align 4, !tbaa !5
  %cmp417 = icmp sgt i32 %tmp4, %tmp20
  br i1 %cmp417, label %land.lhs.true419, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true419:                                 ; preds = %land.lhs.true410
  %tmp21 = add nsw i64 %tmp6, 2
  %tmp22 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx425 = getelementptr inbounds i32, i32* %tmp22, i64 %tmp21
  %tmp23 = load i32, i32* %arrayidx425, align 4, !tbaa !5
  %cmp426 = icmp sgt i32 %tmp4, %tmp23
  br i1 %cmp426, label %land.lhs.true428, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true428:                                 ; preds = %land.lhs.true419
  %tmp24 = add nsw i64 %tmp6, 3
  %tmp25 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx434 = getelementptr inbounds i32, i32* %tmp25, i64 %tmp24
  %tmp26 = load i32, i32* %arrayidx434, align 4, !tbaa !5
  %cmp435 = icmp sgt i32 %tmp4, %tmp26
  br i1 %cmp435, label %land.lhs.true437, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true437:                                 ; preds = %land.lhs.true428
  %tmp27 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$213"
  %tmp28 = add nsw i64 %arg2, %tmp27
  %tmp29 = add nsw i64 %tmp28, -3
  %tmp30 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx443 = getelementptr inbounds i32, i32* %tmp30, i64 %tmp29
  %tmp31 = load i32, i32* %arrayidx443, align 4, !tbaa !5
  %cmp444 = icmp sgt i32 %tmp4, %tmp31
  br i1 %cmp444, label %land.lhs.true446, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true446:                                 ; preds = %land.lhs.true437
  %tmp32 = add nsw i64 %tmp28, -2
  %tmp33 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx452 = getelementptr inbounds i32, i32* %tmp33, i64 %tmp32
  %tmp34 = load i32, i32* %arrayidx452, align 4, !tbaa !5
  %cmp453 = icmp sgt i32 %tmp4, %tmp34
  br i1 %cmp453, label %land.lhs.true455, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true455:                                 ; preds = %land.lhs.true446
  %tmp35 = add nsw i64 %tmp28, -1
  %tmp36 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx461 = getelementptr inbounds i32, i32* %tmp36, i64 %tmp35
  %tmp37 = load i32, i32* %arrayidx461, align 4, !tbaa !5
  %cmp462 = icmp sgt i32 %tmp4, %tmp37
  br i1 %cmp462, label %land.lhs.true464, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true464:                                 ; preds = %land.lhs.true455
  %tmp38 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx469 = getelementptr inbounds i32, i32* %tmp38, i64 %tmp28
  %tmp39 = load i32, i32* %arrayidx469, align 4, !tbaa !5
  %cmp470 = icmp sgt i32 %tmp4, %tmp39
  br i1 %cmp470, label %land.lhs.true472, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true472:                                 ; preds = %land.lhs.true464
  %tmp40 = add nsw i64 %tmp28, 1
  %tmp41 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx478 = getelementptr inbounds i32, i32* %tmp41, i64 %tmp40
  %tmp42 = load i32, i32* %arrayidx478, align 4, !tbaa !5
  %cmp479 = icmp sgt i32 %tmp4, %tmp42
  br i1 %cmp479, label %land.lhs.true481, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true481:                                 ; preds = %land.lhs.true472
  %tmp43 = add nsw i64 %tmp28, 2
  %tmp44 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx487 = getelementptr inbounds i32, i32* %tmp44, i64 %tmp43
  %tmp45 = load i32, i32* %arrayidx487, align 4, !tbaa !5
  %cmp488 = icmp sgt i32 %tmp4, %tmp45
  br i1 %cmp488, label %land.lhs.true490, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true490:                                 ; preds = %land.lhs.true481
  %tmp46 = add nsw i64 %tmp28, 3
  %tmp47 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx496 = getelementptr inbounds i32, i32* %tmp47, i64 %tmp46
  %tmp48 = load i32, i32* %arrayidx496, align 4, !tbaa !5
  %cmp497 = icmp sgt i32 %tmp4, %tmp48
  br i1 %cmp497, label %land.lhs.true499, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true499:                                 ; preds = %land.lhs.true490
  %tmp49 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$212"
  %tmp50 = add nsw i64 %arg2, %tmp49
  %tmp51 = add nsw i64 %tmp50, -3
  %tmp52 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx505 = getelementptr inbounds i32, i32* %tmp52, i64 %tmp51
  %tmp53 = load i32, i32* %arrayidx505, align 4, !tbaa !5
  %cmp506 = icmp sgt i32 %tmp4, %tmp53
  br i1 %cmp506, label %land.lhs.true508, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true508:                                 ; preds = %land.lhs.true499
  %tmp54 = add nsw i64 %tmp50, -2
  %tmp55 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx514 = getelementptr inbounds i32, i32* %tmp55, i64 %tmp54
  %tmp56 = load i32, i32* %arrayidx514, align 4, !tbaa !5
  %cmp515 = icmp sgt i32 %tmp4, %tmp56
  br i1 %cmp515, label %land.lhs.true517, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true517:                                 ; preds = %land.lhs.true508
  %tmp57 = add nsw i64 %tmp50, -1
  %tmp58 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx523 = getelementptr inbounds i32, i32* %tmp58, i64 %tmp57
  %tmp59 = load i32, i32* %arrayidx523, align 4, !tbaa !5
  %cmp524 = icmp sgt i32 %tmp4, %tmp59
  br i1 %cmp524, label %land.lhs.true526, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true526:                                 ; preds = %land.lhs.true517
  %tmp60 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx531 = getelementptr inbounds i32, i32* %tmp60, i64 %tmp50
  %tmp61 = load i32, i32* %arrayidx531, align 4, !tbaa !5
  %cmp532 = icmp sgt i32 %tmp4, %tmp61
  br i1 %cmp532, label %land.lhs.true534, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true534:                                 ; preds = %land.lhs.true526
  %tmp62 = add nsw i64 %tmp50, 1
  %tmp63 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx540 = getelementptr inbounds i32, i32* %tmp63, i64 %tmp62
  %tmp64 = load i32, i32* %arrayidx540, align 4, !tbaa !5
  %cmp541 = icmp sgt i32 %tmp4, %tmp64
  br i1 %cmp541, label %land.lhs.true543, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true543:                                 ; preds = %land.lhs.true534
  %tmp65 = add nsw i64 %tmp50, 2
  %tmp66 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx549 = getelementptr inbounds i32, i32* %tmp66, i64 %tmp65
  %tmp67 = load i32, i32* %arrayidx549, align 4, !tbaa !5
  %cmp550 = icmp sgt i32 %tmp4, %tmp67
  br i1 %cmp550, label %land.lhs.true552, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true552:                                 ; preds = %land.lhs.true543
  %tmp68 = add nsw i64 %tmp50, 3
  %tmp69 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx558 = getelementptr inbounds i32, i32* %tmp69, i64 %tmp68
  %tmp70 = load i32, i32* %arrayidx558, align 4, !tbaa !5
  %cmp559 = icmp sgt i32 %tmp4, %tmp70
  br i1 %cmp559, label %land.lhs.true561, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true561:                                 ; preds = %land.lhs.true552
  %sub564 = add nsw i32 %add371, -3
  %idxprom565 = sext i32 %sub564 to i64
  %tmp71 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx566 = getelementptr inbounds i32, i32* %tmp71, i64 %idxprom565
  %tmp72 = load i32, i32* %arrayidx566, align 4, !tbaa !5
  %cmp567 = icmp sgt i32 %tmp4, %tmp72
  br i1 %cmp567, label %land.lhs.true569, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true569:                                 ; preds = %land.lhs.true561
  %sub572 = add nsw i32 %add371, -2
  %idxprom573 = sext i32 %sub572 to i64
  %tmp73 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx574 = getelementptr inbounds i32, i32* %tmp73, i64 %idxprom573
  %tmp74 = load i32, i32* %arrayidx574, align 4, !tbaa !5
  %cmp575 = icmp sgt i32 %tmp4, %tmp74
  br i1 %cmp575, label %land.lhs.true577, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true577:                                 ; preds = %land.lhs.true569
  %sub580 = add nsw i32 %add371, -1
  %idxprom581 = sext i32 %sub580 to i64
  %tmp75 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx582 = getelementptr inbounds i32, i32* %tmp75, i64 %idxprom581
  %tmp76 = load i32, i32* %arrayidx582, align 4, !tbaa !5
  %cmp583 = icmp sgt i32 %tmp4, %tmp76
  br i1 %cmp583, label %land.lhs.true585, label %"susan_corners_quick$0$0_latch$0"

land.lhs.true585:                                 ; preds = %land.lhs.true577
  %add588 = add nsw i32 %add371, 1
  %idxprom589 = sext i32 %add588 to i64
  %tmp77 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx590 = getelementptr inbounds i32, i32* %tmp77, i64 %idxprom589
  %tmp78 = load i32, i32* %arrayidx590, align 4, !tbaa !5
  %cmp591 = icmp slt i32 %tmp4, %tmp78
  br i1 %cmp591, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true593

land.lhs.true593:                                 ; preds = %land.lhs.true585
  %add596 = add nsw i32 %add371, 2
  %idxprom597 = sext i32 %add596 to i64
  %tmp79 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx598 = getelementptr inbounds i32, i32* %tmp79, i64 %idxprom597
  %tmp80 = load i32, i32* %arrayidx598, align 4, !tbaa !5
  %cmp599 = icmp slt i32 %tmp4, %tmp80
  br i1 %cmp599, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true601

land.lhs.true601:                                 ; preds = %land.lhs.true593
  %add604 = add nsw i32 %add371, 3
  %idxprom605 = sext i32 %add604 to i64
  %tmp81 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx606 = getelementptr inbounds i32, i32* %tmp81, i64 %idxprom605
  %tmp82 = load i32, i32* %arrayidx606, align 4, !tbaa !5
  %cmp607 = icmp slt i32 %tmp4, %tmp82
  br i1 %cmp607, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true609

land.lhs.true609:                                 ; preds = %land.lhs.true601
  %tmp83 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$211"
  %tmp84 = add nsw i64 %arg2, %tmp83
  %tmp85 = add nsw i64 %tmp84, -3
  %tmp86 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx615 = getelementptr inbounds i32, i32* %tmp86, i64 %tmp85
  %tmp87 = load i32, i32* %arrayidx615, align 4, !tbaa !5
  %cmp616 = icmp slt i32 %tmp4, %tmp87
  br i1 %cmp616, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true618

land.lhs.true618:                                 ; preds = %land.lhs.true609
  %tmp88 = add nsw i64 %tmp84, -2
  %tmp89 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx624 = getelementptr inbounds i32, i32* %tmp89, i64 %tmp88
  %tmp90 = load i32, i32* %arrayidx624, align 4, !tbaa !5
  %cmp625 = icmp slt i32 %tmp4, %tmp90
  br i1 %cmp625, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true627

land.lhs.true627:                                 ; preds = %land.lhs.true618
  %tmp91 = add nsw i64 %tmp84, -1
  %tmp92 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx633 = getelementptr inbounds i32, i32* %tmp92, i64 %tmp91
  %tmp93 = load i32, i32* %arrayidx633, align 4, !tbaa !5
  %cmp634 = icmp slt i32 %tmp4, %tmp93
  br i1 %cmp634, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true636

land.lhs.true636:                                 ; preds = %land.lhs.true627
  %tmp94 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx641 = getelementptr inbounds i32, i32* %tmp94, i64 %tmp84
  %tmp95 = load i32, i32* %arrayidx641, align 4, !tbaa !5
  %cmp642 = icmp slt i32 %tmp4, %tmp95
  br i1 %cmp642, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true644

land.lhs.true644:                                 ; preds = %land.lhs.true636
  %tmp96 = add nsw i64 %tmp84, 1
  %tmp97 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx650 = getelementptr inbounds i32, i32* %tmp97, i64 %tmp96
  %tmp98 = load i32, i32* %arrayidx650, align 4, !tbaa !5
  %cmp651 = icmp slt i32 %tmp4, %tmp98
  br i1 %cmp651, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true653

land.lhs.true653:                                 ; preds = %land.lhs.true644
  %tmp99 = add nsw i64 %tmp84, 2
  %tmp100 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx659 = getelementptr inbounds i32, i32* %tmp100, i64 %tmp99
  %tmp101 = load i32, i32* %arrayidx659, align 4, !tbaa !5
  %cmp660 = icmp slt i32 %tmp4, %tmp101
  br i1 %cmp660, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true662

land.lhs.true662:                                 ; preds = %land.lhs.true653
  %tmp102 = add nsw i64 %tmp84, 3
  %tmp103 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx668 = getelementptr inbounds i32, i32* %tmp103, i64 %tmp102
  %tmp104 = load i32, i32* %arrayidx668, align 4, !tbaa !5
  %cmp669 = icmp slt i32 %tmp4, %tmp104
  br i1 %cmp669, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true671

land.lhs.true671:                                 ; preds = %land.lhs.true662
  %tmp105 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$210"
  %tmp106 = add nsw i64 %arg2, %tmp105
  %tmp107 = add nsw i64 %tmp106, -3
  %tmp108 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx677 = getelementptr inbounds i32, i32* %tmp108, i64 %tmp107
  %tmp109 = load i32, i32* %arrayidx677, align 4, !tbaa !5
  %cmp678 = icmp slt i32 %tmp4, %tmp109
  br i1 %cmp678, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true680

land.lhs.true680:                                 ; preds = %land.lhs.true671
  %tmp110 = add nsw i64 %tmp106, -2
  %tmp111 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx686 = getelementptr inbounds i32, i32* %tmp111, i64 %tmp110
  %tmp112 = load i32, i32* %arrayidx686, align 4, !tbaa !5
  %cmp687 = icmp slt i32 %tmp4, %tmp112
  br i1 %cmp687, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true689

land.lhs.true689:                                 ; preds = %land.lhs.true680
  %tmp113 = add nsw i64 %tmp106, -1
  %tmp114 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx695 = getelementptr inbounds i32, i32* %tmp114, i64 %tmp113
  %tmp115 = load i32, i32* %arrayidx695, align 4, !tbaa !5
  %cmp696 = icmp slt i32 %tmp4, %tmp115
  br i1 %cmp696, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true698

land.lhs.true698:                                 ; preds = %land.lhs.true689
  %tmp116 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx703 = getelementptr inbounds i32, i32* %tmp116, i64 %tmp106
  %tmp117 = load i32, i32* %arrayidx703, align 4, !tbaa !5
  %cmp704 = icmp slt i32 %tmp4, %tmp117
  br i1 %cmp704, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true706

land.lhs.true706:                                 ; preds = %land.lhs.true698
  %tmp118 = add nsw i64 %tmp106, 1
  %tmp119 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx712 = getelementptr inbounds i32, i32* %tmp119, i64 %tmp118
  %tmp120 = load i32, i32* %arrayidx712, align 4, !tbaa !5
  %cmp713 = icmp slt i32 %tmp4, %tmp120
  br i1 %cmp713, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true715

land.lhs.true715:                                 ; preds = %land.lhs.true706
  %tmp121 = add nsw i64 %tmp106, 2
  %tmp122 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx721 = getelementptr inbounds i32, i32* %tmp122, i64 %tmp121
  %tmp123 = load i32, i32* %arrayidx721, align 4, !tbaa !5
  %cmp722 = icmp slt i32 %tmp4, %tmp123
  br i1 %cmp722, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true724

land.lhs.true724:                                 ; preds = %land.lhs.true715
  %tmp124 = add nsw i64 %tmp106, 3
  %tmp125 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx730 = getelementptr inbounds i32, i32* %tmp125, i64 %tmp124
  %tmp126 = load i32, i32* %arrayidx730, align 4, !tbaa !5
  %cmp731 = icmp slt i32 %tmp4, %tmp126
  br i1 %cmp731, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true733

land.lhs.true733:                                 ; preds = %land.lhs.true724
  %tmp127 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$208"
  %tmp128 = add nsw i64 %arg2, %tmp127
  %tmp129 = add nsw i64 %tmp128, -3
  %tmp130 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx739 = getelementptr inbounds i32, i32* %tmp130, i64 %tmp129
  %tmp131 = load i32, i32* %arrayidx739, align 4, !tbaa !5
  %cmp740 = icmp slt i32 %tmp4, %tmp131
  br i1 %cmp740, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true742

land.lhs.true742:                                 ; preds = %land.lhs.true733
  %tmp132 = add nsw i64 %tmp128, -2
  %tmp133 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx748 = getelementptr inbounds i32, i32* %tmp133, i64 %tmp132
  %tmp134 = load i32, i32* %arrayidx748, align 4, !tbaa !5
  %cmp749 = icmp slt i32 %tmp4, %tmp134
  br i1 %cmp749, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true751

land.lhs.true751:                                 ; preds = %land.lhs.true742
  %tmp135 = add nsw i64 %tmp128, -1
  %tmp136 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx757 = getelementptr inbounds i32, i32* %tmp136, i64 %tmp135
  %tmp137 = load i32, i32* %arrayidx757, align 4, !tbaa !5
  %cmp758 = icmp slt i32 %tmp4, %tmp137
  br i1 %cmp758, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true760

land.lhs.true760:                                 ; preds = %land.lhs.true751
  %tmp138 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx765 = getelementptr inbounds i32, i32* %tmp138, i64 %tmp128
  %tmp139 = load i32, i32* %arrayidx765, align 4, !tbaa !5
  %cmp766 = icmp slt i32 %tmp4, %tmp139
  br i1 %cmp766, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true768

land.lhs.true768:                                 ; preds = %land.lhs.true760
  %tmp140 = add nsw i64 %tmp128, 1
  %tmp141 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx774 = getelementptr inbounds i32, i32* %tmp141, i64 %tmp140
  %tmp142 = load i32, i32* %arrayidx774, align 4, !tbaa !5
  %cmp775 = icmp slt i32 %tmp4, %tmp142
  br i1 %cmp775, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true777

land.lhs.true777:                                 ; preds = %land.lhs.true768
  %tmp143 = add nsw i64 %tmp128, 2
  %tmp144 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx783 = getelementptr inbounds i32, i32* %tmp144, i64 %tmp143
  %tmp145 = load i32, i32* %arrayidx783, align 4, !tbaa !5
  %cmp784 = icmp slt i32 %tmp4, %tmp145
  br i1 %cmp784, label %"susan_corners_quick$0$0_latch$0", label %land.lhs.true786

land.lhs.true786:                                 ; preds = %land.lhs.true777
  %tmp146 = add nsw i64 %tmp128, 3
  %tmp147 = load i32*, i32** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$126"
  %arrayidx792 = getelementptr inbounds i32, i32* %tmp147, i64 %tmp146
  %tmp148 = load i32, i32* %arrayidx792, align 4, !tbaa !5
  %cmp793 = icmp slt i32 %tmp4, %tmp148
  br i1 %cmp793, label %"susan_corners_quick$0$0_latch$0", label %"susan_corners_quick$0$0_exiting$1"

"susan_corners_quick$0$0_exiting$1":              ; preds = %land.lhs.true786
  %idxprom796 = sext i32 %arg1 to i64
  %tmp149 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$138"
  %info = getelementptr inbounds %struct.anon, %struct.anon* %tmp149, i64 %idxprom796, i32 2
  store i32 0, i32* %info, align 4, !tbaa !8
  %tmp150 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$138"
  %x800 = getelementptr inbounds %struct.anon, %struct.anon* %tmp150, i64 %idxprom796, i32 0
  %tmp151 = trunc i64 %arg2 to i32
  store i32 %tmp151, i32* %x800, align 4, !tbaa !20
  %tmp152 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$138"
  %y803 = getelementptr inbounds %struct.anon, %struct.anon* %tmp152, i64 %idxprom796, i32 1
  %tmp153 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$209"
  store i32 %tmp153, i32* %y803, align 4, !tbaa !15
  %tmp154 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx809 = getelementptr inbounds i8, i8* %tmp154, i64 %tmp32
  %tmp155 = load i8, i8* %arrayidx809, align 1, !tbaa !7
  %conv810 = zext i8 %tmp155 to i32
  %tmp156 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx816 = getelementptr inbounds i8, i8* %tmp156, i64 %tmp35
  %tmp157 = load i8, i8* %arrayidx816, align 1, !tbaa !7
  %conv817 = zext i8 %tmp157 to i32
  %add818 = add nuw nsw i32 %conv817, %conv810
  %tmp158 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx823 = getelementptr inbounds i8, i8* %tmp158, i64 %tmp28
  %tmp159 = load i8, i8* %arrayidx823, align 1, !tbaa !7
  %conv824 = zext i8 %tmp159 to i32
  %add825 = add nuw nsw i32 %add818, %conv824
  %tmp160 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx831 = getelementptr inbounds i8, i8* %tmp160, i64 %tmp40
  %tmp161 = load i8, i8* %arrayidx831, align 1, !tbaa !7
  %conv832 = zext i8 %tmp161 to i32
  %add833 = add nuw nsw i32 %add825, %conv832
  %tmp162 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx839 = getelementptr inbounds i8, i8* %tmp162, i64 %tmp43
  %tmp163 = load i8, i8* %arrayidx839, align 1, !tbaa !7
  %conv840 = zext i8 %tmp163 to i32
  %add841 = add nuw nsw i32 %add833, %conv840
  %tmp164 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx847 = getelementptr inbounds i8, i8* %tmp164, i64 %tmp54
  %tmp165 = load i8, i8* %arrayidx847, align 1, !tbaa !7
  %conv848 = zext i8 %tmp165 to i32
  %add849 = add nuw nsw i32 %add841, %conv848
  %tmp166 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx855 = getelementptr inbounds i8, i8* %tmp166, i64 %tmp57
  %tmp167 = load i8, i8* %arrayidx855, align 1, !tbaa !7
  %conv856 = zext i8 %tmp167 to i32
  %add857 = add nuw nsw i32 %add849, %conv856
  %tmp168 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx862 = getelementptr inbounds i8, i8* %tmp168, i64 %tmp50
  %tmp169 = load i8, i8* %arrayidx862, align 1, !tbaa !7
  %conv863 = zext i8 %tmp169 to i32
  %add864 = add nsw i32 %add857, %conv863
  %tmp170 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx870 = getelementptr inbounds i8, i8* %tmp170, i64 %tmp62
  %tmp171 = load i8, i8* %arrayidx870, align 1, !tbaa !7
  %conv871 = zext i8 %tmp171 to i32
  %add872 = add nsw i32 %add864, %conv871
  %tmp172 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx878 = getelementptr inbounds i8, i8* %tmp172, i64 %tmp65
  %tmp173 = load i8, i8* %arrayidx878, align 1, !tbaa !7
  %conv879 = zext i8 %tmp173 to i32
  %add880 = add nsw i32 %add872, %conv879
  %tmp174 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx885 = getelementptr inbounds i8, i8* %tmp174, i64 %idxprom573
  %tmp175 = load i8, i8* %arrayidx885, align 1, !tbaa !7
  %conv886 = zext i8 %tmp175 to i32
  %add887 = add nsw i32 %add880, %conv886
  %tmp176 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx892 = getelementptr inbounds i8, i8* %tmp176, i64 %idxprom581
  %tmp177 = load i8, i8* %arrayidx892, align 1, !tbaa !7
  %conv893 = zext i8 %tmp177 to i32
  %add894 = add nsw i32 %add887, %conv893
  %tmp178 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx898 = getelementptr inbounds i8, i8* %tmp178, i64 %idxprom372
  %tmp179 = load i8, i8* %arrayidx898, align 1, !tbaa !7
  %conv899 = zext i8 %tmp179 to i32
  %add900 = add nsw i32 %add894, %conv899
  %tmp180 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx905 = getelementptr inbounds i8, i8* %tmp180, i64 %idxprom589
  %tmp181 = load i8, i8* %arrayidx905, align 1, !tbaa !7
  %conv906 = zext i8 %tmp181 to i32
  %add907 = add nsw i32 %add900, %conv906
  %tmp182 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx912 = getelementptr inbounds i8, i8* %tmp182, i64 %idxprom597
  %tmp183 = load i8, i8* %arrayidx912, align 1, !tbaa !7
  %conv913 = zext i8 %tmp183 to i32
  %add914 = add nsw i32 %add907, %conv913
  %tmp184 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx920 = getelementptr inbounds i8, i8* %tmp184, i64 %tmp88
  %tmp185 = load i8, i8* %arrayidx920, align 1, !tbaa !7
  %conv921 = zext i8 %tmp185 to i32
  %add922 = add nsw i32 %add914, %conv921
  %tmp186 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx928 = getelementptr inbounds i8, i8* %tmp186, i64 %tmp91
  %tmp187 = load i8, i8* %arrayidx928, align 1, !tbaa !7
  %conv929 = zext i8 %tmp187 to i32
  %add930 = add nsw i32 %add922, %conv929
  %tmp188 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx935 = getelementptr inbounds i8, i8* %tmp188, i64 %tmp84
  %tmp189 = load i8, i8* %arrayidx935, align 1, !tbaa !7
  %conv936 = zext i8 %tmp189 to i32
  %add937 = add nsw i32 %add930, %conv936
  %tmp190 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx943 = getelementptr inbounds i8, i8* %tmp190, i64 %tmp96
  %tmp191 = load i8, i8* %arrayidx943, align 1, !tbaa !7
  %conv944 = zext i8 %tmp191 to i32
  %add945 = add nsw i32 %add937, %conv944
  %tmp192 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx951 = getelementptr inbounds i8, i8* %tmp192, i64 %tmp99
  %tmp193 = load i8, i8* %arrayidx951, align 1, !tbaa !7
  %conv952 = zext i8 %tmp193 to i32
  %add953 = add nsw i32 %add945, %conv952
  %tmp194 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx959 = getelementptr inbounds i8, i8* %tmp194, i64 %tmp110
  %tmp195 = load i8, i8* %arrayidx959, align 1, !tbaa !7
  %conv960 = zext i8 %tmp195 to i32
  %add961 = add nsw i32 %add953, %conv960
  %tmp196 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx967 = getelementptr inbounds i8, i8* %tmp196, i64 %tmp113
  %tmp197 = load i8, i8* %arrayidx967, align 1, !tbaa !7
  %conv968 = zext i8 %tmp197 to i32
  %add969 = add nsw i32 %add961, %conv968
  %tmp198 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx974 = getelementptr inbounds i8, i8* %tmp198, i64 %tmp106
  %tmp199 = load i8, i8* %arrayidx974, align 1, !tbaa !7
  %conv975 = zext i8 %tmp199 to i32
  %add976 = add nsw i32 %add969, %conv975
  %tmp200 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx982 = getelementptr inbounds i8, i8* %tmp200, i64 %tmp118
  %tmp201 = load i8, i8* %arrayidx982, align 1, !tbaa !7
  %conv983 = zext i8 %tmp201 to i32
  %add984 = add nsw i32 %add976, %conv983
  %tmp202 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$133"
  %arrayidx990 = getelementptr inbounds i8, i8* %tmp202, i64 %tmp121
  %tmp203 = load i8, i8* %arrayidx990, align 1, !tbaa !7
  %conv991 = zext i8 %tmp203 to i32
  %add992 = add nsw i32 %add984, %conv991
  %div = sdiv i32 %add992, 25
  %tmp204 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$138"
  %I = getelementptr inbounds %struct.anon, %struct.anon* %tmp204, i64 %idxprom796, i32 5
  store i32 %div, i32* %I, align 4, !tbaa !23
  %tmp205 = load i8, i8* %arrayidx839, align 1, !tbaa !7
  %conv1001 = zext i8 %tmp205 to i32
  %tmp206 = load i8, i8* %arrayidx878, align 1, !tbaa !7
  %conv1008 = zext i8 %tmp206 to i32
  %tmp207 = load i8, i8* %arrayidx912, align 1, !tbaa !7
  %conv1015 = zext i8 %tmp207 to i32
  %tmp208 = load i8, i8* %arrayidx951, align 1, !tbaa !7
  %conv1023 = zext i8 %tmp208 to i32
  %tmp209 = load i8, i8* %arrayidx990, align 1, !tbaa !7
  %conv1031 = zext i8 %tmp209 to i32
  %tmp210 = load i8, i8* %arrayidx809, align 1, !tbaa !7
  %conv1039 = zext i8 %tmp210 to i32
  %tmp211 = load i8, i8* %arrayidx847, align 1, !tbaa !7
  %conv1046 = zext i8 %tmp211 to i32
  %tmp212 = load i8, i8* %arrayidx885, align 1, !tbaa !7
  %conv1053 = zext i8 %tmp212 to i32
  %tmp213 = load i8, i8* %arrayidx920, align 1, !tbaa !7
  %conv1061 = zext i8 %tmp213 to i32
  %tmp214 = load i8, i8* %arrayidx959, align 1, !tbaa !7
  %conv1069 = zext i8 %tmp214 to i32
  %add1047.neg = add nuw nsw i32 %conv1008, %conv1001
  %add1054.neg = add nuw nsw i32 %add1047.neg, %conv1015
  %add1062.neg = add nuw nsw i32 %add1054.neg, %conv1023
  %add1070.neg = add nuw nsw i32 %add1062.neg, %conv1031
  %add1009 = sub nsw i32 %add1070.neg, %conv1039
  %add1016 = sub nsw i32 %add1009, %conv1046
  %add1024 = sub i32 %add1016, %conv1053
  %add1032 = sub i32 %add1024, %conv1061
  %sub1071 = sub i32 %add1032, %conv1069
  %tmp215 = load i8, i8* %arrayidx831, align 1, !tbaa !7
  %conv1078 = zext i8 %tmp215 to i32
  %tmp216 = load i8, i8* %arrayidx870, align 1, !tbaa !7
  %conv1086 = zext i8 %tmp216 to i32
  %tmp217 = load i8, i8* %arrayidx905, align 1, !tbaa !7
  %conv1093 = zext i8 %tmp217 to i32
  %tmp218 = load i8, i8* %arrayidx943, align 1, !tbaa !7
  %conv1101 = zext i8 %tmp218 to i32
  %tmp219 = load i8, i8* %arrayidx982, align 1, !tbaa !7
  %conv1109 = zext i8 %tmp219 to i32
  %tmp220 = load i8, i8* %arrayidx816, align 1, !tbaa !7
  %conv1117 = zext i8 %tmp220 to i32
  %tmp221 = load i8, i8* %arrayidx855, align 1, !tbaa !7
  %conv1124 = zext i8 %tmp221 to i32
  %tmp222 = load i8, i8* %arrayidx892, align 1, !tbaa !7
  %conv1131 = zext i8 %tmp222 to i32
  %tmp223 = load i8, i8* %arrayidx928, align 1, !tbaa !7
  %conv1139 = zext i8 %tmp223 to i32
  %tmp224 = load i8, i8* %arrayidx967, align 1, !tbaa !7
  %conv1147 = zext i8 %tmp224 to i32
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
  %tmp225 = load i8, i8* %arrayidx974, align 1, !tbaa !7
  %conv1171 = zext i8 %tmp225 to i32
  %tmp226 = load i8, i8* %arrayidx823, align 1, !tbaa !7
  %conv1209 = zext i8 %tmp226 to i32
  %add1203.neg = sub nsw i32 %conv1031, %conv1001
  %add1210.neg = sub nsw i32 %add1203.neg, %conv1039
  %add1218.neg = add nsw i32 %add1210.neg, %conv1069
  %add1226.neg = sub nsw i32 %add1218.neg, %conv1078
  %add1165 = add nsw i32 %add1226.neg, %conv1109
  %add1172 = sub nsw i32 %add1165, %conv1117
  %add1180 = add i32 %add1172, %conv1147
  %add1188 = add i32 %add1180, %conv1171
  %sub1227 = sub i32 %add1188, %conv1209
  %tmp227 = load i8, i8* %arrayidx935, align 1, !tbaa !7
  %conv1249 = zext i8 %tmp227 to i32
  %tmp228 = load i8, i8* %arrayidx862, align 1, !tbaa !7
  %conv1287 = zext i8 %tmp228 to i32
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
  %tmp229 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$138"
  %dx = getelementptr inbounds %struct.anon, %struct.anon* %tmp229, i64 %idxprom796, i32 3
  store i32 %div1307, i32* %dx, align 4, !tbaa !21
  %div1310 = sdiv i32 %add1306, 15
  %tmp230 = load %struct.anon*, %struct.anon** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$138"
  %dy = getelementptr inbounds %struct.anon, %struct.anon* %tmp230, i64 %idxprom796, i32 4
  store i32 %div1310, i32* %dy, align 4, !tbaa !22
  %inc1313 = add nsw i32 %arg1, 1
  %cmp1314 = icmp eq i32 %inc1313, 15000
  br i1 %cmp1314, label %"susan_corners_quick$0$0_return_from_recursive_function$1", label %"susan_corners_quick$0$0_latch$0"

"susan_corners_quick$0$0_latch$0":                ; preds = %"susan_corners_quick$0$0_exiting$1", %land.lhs.true786, %land.lhs.true777, %land.lhs.true768, %land.lhs.true760, %land.lhs.true751, %land.lhs.true742, %land.lhs.true733, %land.lhs.true724, %land.lhs.true715, %land.lhs.true706, %land.lhs.true698, %land.lhs.true689, %land.lhs.true680, %land.lhs.true671, %land.lhs.true662, %land.lhs.true653, %land.lhs.true644, %land.lhs.true636, %land.lhs.true627, %land.lhs.true618, %land.lhs.true609, %land.lhs.true601, %land.lhs.true593, %land.lhs.true585, %land.lhs.true577, %land.lhs.true569, %land.lhs.true561, %land.lhs.true552, %land.lhs.true543, %land.lhs.true534, %land.lhs.true526, %land.lhs.true517, %land.lhs.true508, %land.lhs.true499, %land.lhs.true490, %land.lhs.true481, %land.lhs.true472, %land.lhs.true464, %land.lhs.true455, %land.lhs.true446, %land.lhs.true437, %land.lhs.true428, %land.lhs.true419, %land.lhs.true410, %land.lhs.true402, %land.lhs.true393, %land.lhs.true, %if.then376, %"susan_corners_quick$0$0_header"
  %n.2 = phi i32 [ %inc1313, %"susan_corners_quick$0$0_exiting$1" ], [ %arg1, %land.lhs.true786 ], [ %arg1, %land.lhs.true777 ], [ %arg1, %land.lhs.true768 ], [ %arg1, %land.lhs.true760 ], [ %arg1, %land.lhs.true751 ], [ %arg1, %land.lhs.true742 ], [ %arg1, %land.lhs.true733 ], [ %arg1, %land.lhs.true724 ], [ %arg1, %land.lhs.true715 ], [ %arg1, %land.lhs.true706 ], [ %arg1, %land.lhs.true698 ], [ %arg1, %land.lhs.true689 ], [ %arg1, %land.lhs.true680 ], [ %arg1, %land.lhs.true671 ], [ %arg1, %land.lhs.true662 ], [ %arg1, %land.lhs.true653 ], [ %arg1, %land.lhs.true644 ], [ %arg1, %land.lhs.true636 ], [ %arg1, %land.lhs.true627 ], [ %arg1, %land.lhs.true618 ], [ %arg1, %land.lhs.true609 ], [ %arg1, %land.lhs.true601 ], [ %arg1, %land.lhs.true593 ], [ %arg1, %land.lhs.true585 ], [ %arg1, %land.lhs.true577 ], [ %arg1, %land.lhs.true569 ], [ %arg1, %land.lhs.true561 ], [ %arg1, %land.lhs.true552 ], [ %arg1, %land.lhs.true543 ], [ %arg1, %land.lhs.true534 ], [ %arg1, %land.lhs.true526 ], [ %arg1, %land.lhs.true517 ], [ %arg1, %land.lhs.true508 ], [ %arg1, %land.lhs.true499 ], [ %arg1, %land.lhs.true490 ], [ %arg1, %land.lhs.true481 ], [ %arg1, %land.lhs.true472 ], [ %arg1, %land.lhs.true464 ], [ %arg1, %land.lhs.true455 ], [ %arg1, %land.lhs.true446 ], [ %arg1, %land.lhs.true437 ], [ %arg1, %land.lhs.true428 ], [ %arg1, %land.lhs.true419 ], [ %arg1, %land.lhs.true410 ], [ %arg1, %land.lhs.true402 ], [ %arg1, %land.lhs.true393 ], [ %arg1, %land.lhs.true ], [ %arg1, %if.then376 ], [ %arg1, %"susan_corners_quick$0$0_header" ]
  %indvars.iv.next = add nuw nsw i64 %arg2, 1
  %inc1321 = add nuw nsw i32 %arg, 1
  %tmp231 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$137"
  %cmp367 = icmp slt i64 %indvars.iv.next, %tmp231
  br i1 %cmp367, label %"susan_corners_quick$0$0_increment_depth_counter", label %"susan_corners_quick$0$0_return_from_recursive_function$0"

"susan_corners_quick$0$0_increment_depth_counter": ; preds = %"susan_corners_quick$0$0_latch$0"
  br label %"susan_corners_quick$0$0_recursively_call_function"

"susan_corners_quick$0$0_recursively_call_function": ; preds = %"susan_corners_quick$0$0_increment_depth_counter"
  call void @"susan_corners_quick$0$0"(i32 %inc1321, i32 %n.2, i64 %indvars.iv.next)
  ret void

"susan_corners_quick$0$0_return_from_recursive_function$0": ; preds = %"susan_corners_quick$0$0_latch$0"
  %tmp232 = getelementptr %17, %17* @"susan_corners_quick$0$0_return_value_struct", i32 0, i32 0
  store i32 %n.2, i32* %tmp232
  %tmp233 = getelementptr %17, %17* @"susan_corners_quick$0$0_return_value_struct", i32 0, i32 1
  store i8 1, i8* %tmp233
  ret void

"susan_corners_quick$0$0_return_from_recursive_function$1": ; preds = %"susan_corners_quick$0$0_exiting$1"
  %tmp234 = getelementptr %17, %17* @"susan_corners_quick$0$0_return_value_struct", i32 0, i32 1
  store i8 0, i8* %tmp234
  ret void
}

define void @"susan_smoothing$0$0$0"(i32 %arg, i32 %arg1, i8* %arg2, i8* %arg3, i32 %arg4) {
"susan_smoothing$0$0$0_header":
  %tmp = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$43"
  br label %"susan_smoothing$0$0$0$0_initialize_context"

"susan_smoothing$0$0$0$0_initialize_context":     ; preds = %"susan_smoothing$0$0$0_header"
  br label %"susan_smoothing$0$0$0$0_call_recursive_function"

"susan_smoothing$0$0$0$0_call_recursive_function": ; preds = %"susan_smoothing$0$0$0$0_initialize_context"
  call void @"susan_smoothing$0$0$0$0"(i32 %tmp, i32 %arg1, i8* %arg2, i8* %arg3, i32 %arg4)
  br label %"susan_smoothing$0$0$0$0_extract_return_values$0"

"susan_smoothing$0$0$0$0_extract_return_values$0": ; preds = %"susan_smoothing$0$0$0$0_call_recursive_function"
  %tmp5 = getelementptr %19, %19* @"susan_smoothing$0$0$0$0_return_value_struct", i32 0, i32 0
  %tmp6 = load i8*, i8** %tmp5
  %tmp7 = getelementptr %19, %19* @"susan_smoothing$0$0$0$0_return_value_struct", i32 0, i32 1
  %tmp8 = load i8*, i8** %tmp7
  %tmp9 = getelementptr %19, %19* @"susan_smoothing$0$0$0$0_return_value_struct", i32 0, i32 2
  %tmp10 = load i32, i32* %tmp9
  %tmp11 = getelementptr %19, %19* @"susan_smoothing$0$0$0$0_return_value_struct", i32 0, i32 3
  %tmp12 = load i32, i32* %tmp11
  br label %"susan_smoothing$0$0$0_latch$0"

"susan_smoothing$0$0$0_latch$0":                  ; preds = %"susan_smoothing$0$0$0$0_extract_return_values$0"
  %tmp13 = load i64, i64* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$45"
  %add.ptr115 = getelementptr inbounds i8, i8* %tmp6, i64 %tmp13
  %inc117 = add nsw i32 %arg, 1
  %tmp14 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  %cmp91 = icmp slt i32 %arg, %tmp14
  br i1 %cmp91, label %"susan_smoothing$0$0$0_increment_depth_counter", label %"susan_smoothing$0$0$0_return_from_recursive_function$0", !llvm.loop !24

"susan_smoothing$0$0$0_increment_depth_counter":  ; preds = %"susan_smoothing$0$0$0_latch$0"
  br label %"susan_smoothing$0$0$0_recursively_call_function"

"susan_smoothing$0$0$0_recursively_call_function": ; preds = %"susan_smoothing$0$0$0_increment_depth_counter"
  call void @"susan_smoothing$0$0$0"(i32 %inc117, i32 %tmp10, i8* %add.ptr115, i8* %tmp8, i32 %tmp12)
  ret void

"susan_smoothing$0$0$0_return_from_recursive_function$0": ; preds = %"susan_smoothing$0$0$0_latch$0"
  %tmp15 = getelementptr %18, %18* @"susan_smoothing$0$0$0_return_value_struct", i32 0, i32 0
  store i32 %tmp10, i32* %tmp15
  %tmp16 = getelementptr %18, %18* @"susan_smoothing$0$0$0_return_value_struct", i32 0, i32 1
  store i32 %tmp12, i32* %tmp16
  ret void
}

define void @"susan_smoothing$0$0$0$0"(i32 %arg, i32 %arg1, i8* %arg2, i8* %arg3, i32 %arg4) {
"susan_smoothing$0$0$0$0_latch$0":
  %incdec.ptr99 = getelementptr inbounds i8, i8* %arg2, i64 1
  %tmp = load i8, i8* %arg2, align 1, !tbaa !7
  %conv100 = zext i8 %tmp to i32
  %incdec.ptr101 = getelementptr inbounds i8, i8* %arg3, i64 1
  %tmp5 = load i8, i8* %arg3, align 1, !tbaa !7
  %conv102 = zext i8 %tmp5 to i32
  %idx.ext103 = zext i8 %tmp to i64
  %idx.neg104 = sub nsw i64 0, %idx.ext103
  %tmp6 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$216"
  %add.ptr105 = getelementptr inbounds i8, i8* %tmp6, i64 %idx.neg104
  %tmp7 = load i8, i8* %add.ptr105, align 1, !tbaa !7
  %conv106 = zext i8 %tmp7 to i32
  %mul107 = mul nuw nsw i32 %conv106, %conv102
  %add108 = add nsw i32 %mul107, %arg1
  %mul109 = mul nuw nsw i32 %mul107, %conv100
  %add110 = add nsw i32 %mul109, %arg4
  %inc112 = add nsw i32 %arg, 1
  %tmp8 = load i32, i32* @"./benchmark_intermediate_representations/baseline/susan/susan.ll_invariant_variable$41"
  %cmp96 = icmp slt i32 %arg, %tmp8
  br i1 %cmp96, label %"susan_smoothing$0$0$0$0_increment_depth_counter", label %"susan_smoothing$0$0$0$0_return_from_recursive_function$0", !llvm.loop !24

"susan_smoothing$0$0$0$0_increment_depth_counter": ; preds = %"susan_smoothing$0$0$0$0_latch$0"
  br label %"susan_smoothing$0$0$0$0_recursively_call_function"

"susan_smoothing$0$0$0$0_recursively_call_function": ; preds = %"susan_smoothing$0$0$0$0_increment_depth_counter"
  call void @"susan_smoothing$0$0$0$0"(i32 %inc112, i32 %add108, i8* %incdec.ptr99, i8* %incdec.ptr101, i32 %add110)
  ret void

"susan_smoothing$0$0$0$0_return_from_recursive_function$0": ; preds = %"susan_smoothing$0$0$0$0_latch$0"
  %tmp9 = getelementptr %19, %19* @"susan_smoothing$0$0$0$0_return_value_struct", i32 0, i32 0
  store i8* %incdec.ptr99, i8** %tmp9
  %tmp10 = getelementptr %19, %19* @"susan_smoothing$0$0$0$0_return_value_struct", i32 0, i32 1
  store i8* %incdec.ptr101, i8** %tmp10
  %tmp11 = getelementptr %19, %19* @"susan_smoothing$0$0$0$0_return_value_struct", i32 0, i32 2
  store i32 %add108, i32* %tmp11
  %tmp12 = getelementptr %19, %19* @"susan_smoothing$0$0$0$0_return_value_struct", i32 0, i32 3
  store i32 %add110, i32* %tmp12
  ret void
}

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind willreturn }
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
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 8}
!9 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.vectorize.width", i32 1}
!12 = !{!"llvm.loop.interleave.count", i32 1}
!13 = distinct !{!13, !14, !11, !12}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!9, !6, i64 4}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !14, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !14, !11, !12}
!20 = !{!9, !6, i64 0}
!21 = !{!9, !6, i64 12}
!22 = !{!9, !6, i64 16}
!23 = !{!9, !6, i64 20}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.loop2recursion.disable"}
