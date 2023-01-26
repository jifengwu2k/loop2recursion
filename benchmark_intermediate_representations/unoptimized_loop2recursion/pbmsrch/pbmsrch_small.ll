; ModuleID = './benchmark_intermediate_representations/unoptimized_loop2recursion/pbmsrch/pbmsrch_small.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/pbmsrch/pbmsrch_small.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i64 }
%1 = type { i8* }
%2 = type { i64, i64, i64, i8 }
%3 = type { i64 }
%4 = type { i8*, i8 }
%5 = type { i64, i64, i64, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@len = internal unnamed_addr global i64 0, align 8
@table = internal unnamed_addr global [256 x i64] zeroinitializer, align 16
@findme = internal unnamed_addr global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"abb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"it\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dad\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yoo\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"hoo\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"oh\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"row\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"regime\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"boom\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"that\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"impact\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"magnet\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"doom\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"loom\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"appears\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"conductor\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"wavez\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"termed\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"provide\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"about\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"have\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"proper\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"involve\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"describedly\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"thats\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"spaces\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"circumstance\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"the\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"such\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"guide\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"regard\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"officers\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"implement\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"principalities\00", align 1
@main.find_strings = private unnamed_addr constant [58 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i8* null], align 16
@.str.53 = private unnamed_addr constant [7 x i8] c"cabbie\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"your\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"It isn't here\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"But it is here\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"hodad\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"yoohoo\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"In recent years, the field of photonic \00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"crystals has found new\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"applications in the RF and microwave\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"regime. A new type of metallic\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"electromagnetic crystal has been\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"developed that is having a\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"significant impact on the field of\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"antennas. It consists of a\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"conductive surface, covered with a\00", align 1
@.str.69 = private unnamed_addr constant [33 x i8] c"special texture which alters its\00", align 1
@.str.70 = private unnamed_addr constant [42 x i8] c"electromagnetic properties. Made of solid\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"metal, the structure\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"conducts DC currents, but over a\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"particular frequency range it does\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"not conduct AC currents. It does not\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"reverse the phase of reflected\00", align 1
@.str.76 = private unnamed_addr constant [40 x i8] c"waves, and the effective image currents\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"appear in-phase, rather than\00", align 1
@.str.78 = private unnamed_addr constant [35 x i8] c"out-of-phase as they are on normal\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"conductors. Furthermore, surface\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"waves do not propagate, and instead\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"radiate efficiently into free\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"space. This new material, termed a\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"high-impedance surface, provides\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"a useful new ground plane for novel\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"low-profile antennas and other\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"electromagnetic structures.\00", align 1
@.str.87 = private unnamed_addr constant [41 x i8] c"The recent protests about the Michigamua\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"student organization have raised an\00", align 1
@.str.89 = private unnamed_addr constant [43 x i8] c"important question as to the proper nature\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"and scope of University involvement\00", align 1
@.str.91 = private unnamed_addr constant [40 x i8] c"with student organizations. Accordingly\00", align 1
@.str.92 = private unnamed_addr constant [39 x i8] c"the panel described in my Statement of\00", align 1
@.str.93 = private unnamed_addr constant [42 x i8] c"February 25, 2000 that is considering the\00", align 1
@.str.94 = private unnamed_addr constant [39 x i8] c"question of privileged space also will\00", align 1
@.str.95 = private unnamed_addr constant [41 x i8] c"consider under what circumstances and in\00", align 1
@.str.96 = private unnamed_addr constant [30 x i8] c"what ways the University, its\00", align 1
@.str.97 = private unnamed_addr constant [42 x i8] c"administrators and faculty members should\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c"be associated with such organizations\00", align 1
@.str.99 = private unnamed_addr constant [41 x i8] c"and it will recommend guiding principles\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"in this regard. The University's\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"Executive Officers and I will then decide\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"whether and how to implement such\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"principles.\00", align 1
@main.search_strings = private unnamed_addr constant [57 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0)], align 16
@.str.104 = private unnamed_addr constant [18 x i8] c"\22%s\22 is%s in \22%s\22\00", align 1
@.str.105 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.106 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c" [\22%s\22]\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define void @init_search(i8* %string) #0 {
entry:
  %call = tail call i64 @strlen(i8* %string) #4
  store i64 %call, i64* @len, align 8, !tbaa !1
  %broadcast.splatinsert23 = insertelement <2 x i64> undef, i64 %call, i32 0
  %broadcast.splat24 = shufflevector <2 x i64> %broadcast.splatinsert23, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %"init_search$2_call_recursive_function"

"init_search$2_call_recursive_function":          ; preds = %entry
  call void @"init_search$2"(i64 0, <2 x i64> %broadcast.splat24)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %"init_search$2_call_recursive_function"
  %cmp219 = icmp eq i64 %call, 0
  br i1 %cmp219, label %for.end9, label %for.body3.preheader

for.body3.preheader:                              ; preds = %for.cond1.preheader
  %i = add i64 %call, -1
  %xtraiter = and i64 %call, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body3.preheader.split, label %for.body3.prol.preheader

for.body3.prol.preheader:                         ; preds = %for.body3.preheader
  br label %"init_search$1_initialize_context"

"init_search$1_initialize_context":               ; preds = %for.body3.prol.preheader
  %i1 = alloca %0, align 8
  br label %"init_search$1_call_recursive_function"

"init_search$1_call_recursive_function":          ; preds = %"init_search$1_initialize_context"
  call void @"init_search$1"(%0* %i1, i64 %xtraiter, i64 0, i8* %string, i64 %call)
  br label %"init_search$1_extract_return_values$0"

"init_search$1_extract_return_values$0":          ; preds = %"init_search$1_call_recursive_function"
  %i2 = getelementptr %0, %0* %i1, i32 0, i32 0
  %i3 = load i64, i64* %i2, align 8
  br label %for.body3.preheader.split.loopexit

for.body3.preheader.split.loopexit:               ; preds = %"init_search$1_extract_return_values$0"
  br label %for.body3.preheader.split

for.body3.preheader.split:                        ; preds = %for.body3.preheader.split.loopexit, %for.body3.preheader
  %i.120.unr = phi i64 [ 0, %for.body3.preheader ], [ %i3, %for.body3.preheader.split.loopexit ]
  %i4 = icmp ult i64 %i, 3
  br i1 %i4, label %for.end9.loopexit, label %for.body3.preheader.split.split

for.body3.preheader.split.split:                  ; preds = %for.body3.preheader.split
  br label %"init_search$0_call_recursive_function"

"init_search$0_call_recursive_function":          ; preds = %for.body3.preheader.split.split
  call void @"init_search$0"(i64 %i.120.unr, i8* %string, i64 %call)
  br label %for.end9.loopexit.unr-lcssa

for.end9.loopexit.unr-lcssa:                      ; preds = %"init_search$0_call_recursive_function"
  br label %for.end9.loopexit

for.end9.loopexit:                                ; preds = %for.end9.loopexit.unr-lcssa, %for.body3.preheader.split
  br label %for.end9

for.end9:                                         ; preds = %for.end9.loopexit, %for.cond1.preheader
  store i8* %string, i8** @findme, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind readonly uwtable
define i8* @strsearch(i8* readonly %string) #2 {
entry:
  %i = load i64, i64* @len, align 8, !tbaa !1
  %sub = add i64 %i, -1
  %call = tail call i64 @strlen(i8* %string) #4
  %cmp39 = icmp ult i64 %sub, %call
  br i1 %cmp39, label %while.cond1.preheader.lr.ph, label %cleanup

while.cond1.preheader.lr.ph:                      ; preds = %entry
  %i1 = load i8*, i8** @findme, align 8
  br label %"strsearch$0_initialize_context"

"strsearch$0_initialize_context":                 ; preds = %while.cond1.preheader.lr.ph
  %i2 = alloca %1, align 8
  br label %"strsearch$0_call_recursive_function"

"strsearch$0_call_recursive_function":            ; preds = %"strsearch$0_initialize_context"
  call void @"strsearch$0"(%1* %i2, i64 %sub, i64 undef, i8* %i1, i64 %i, i64 %call, i8* %string)
  br label %"strsearch$0_extract_return_values$0"

"strsearch$0_extract_return_values$0":            ; preds = %"strsearch$0_call_recursive_function"
  %i3 = getelementptr %1, %1* %i2, i32 0, i32 0
  %i4 = load i8*, i8** %i3, align 8
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %"strsearch$0_extract_return_values$0"
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %i4, %cleanup.loopexit ]
  ret i8* %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  br label %"main$0_call_recursive_function"

"main$0_call_recursive_function":                 ; preds = %entry
  call void @"main$0"(i64 0)
  br label %for.end

for.end:                                          ; preds = %"main$0_call_recursive_function"
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) #3

define void @"init_search$0"(i64 %arg, i8* %arg1, i64 %arg2) {
"init_search$0_latch$0":
  %sub = xor i64 %arg, -1
  %sub4 = add i64 %arg2, %sub
  %arrayidx5 = getelementptr inbounds i8, i8* %arg1, i64 %arg
  %i = load i8, i8* %arrayidx5, align 1, !tbaa !7
  %idxprom = zext i8 %i to i64
  %arrayidx6 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom
  store i64 %sub4, i64* %arrayidx6, align 8, !tbaa !1
  %inc8 = add nuw i64 %arg, 1
  %sub.1 = sub i64 -2, %arg
  %sub4.1 = add i64 %arg2, %sub.1
  %arrayidx5.1 = getelementptr inbounds i8, i8* %arg1, i64 %inc8
  %i3 = load i8, i8* %arrayidx5.1, align 1, !tbaa !7
  %idxprom.1 = zext i8 %i3 to i64
  %arrayidx6.1 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.1
  store i64 %sub4.1, i64* %arrayidx6.1, align 8, !tbaa !1
  %inc8.1 = add i64 %arg, 2
  %sub.2 = sub i64 -3, %arg
  %sub4.2 = add i64 %arg2, %sub.2
  %arrayidx5.2 = getelementptr inbounds i8, i8* %arg1, i64 %inc8.1
  %i4 = load i8, i8* %arrayidx5.2, align 1, !tbaa !7
  %idxprom.2 = zext i8 %i4 to i64
  %arrayidx6.2 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.2
  store i64 %sub4.2, i64* %arrayidx6.2, align 8, !tbaa !1
  %inc8.2 = add i64 %arg, 3
  %sub.3 = sub i64 -4, %arg
  %sub4.3 = add i64 %arg2, %sub.3
  %arrayidx5.3 = getelementptr inbounds i8, i8* %arg1, i64 %inc8.2
  %i5 = load i8, i8* %arrayidx5.3, align 1, !tbaa !7
  %idxprom.3 = zext i8 %i5 to i64
  %arrayidx6.3 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.3
  store i64 %sub4.3, i64* %arrayidx6.3, align 8, !tbaa !1
  %inc8.3 = add i64 %arg, 4
  %cmp2.3 = icmp ugt i64 %arg2, %inc8.3
  br i1 %cmp2.3, label %"init_search$0_increment_depth_counter", label %"init_search$0_return_from_recursive_function$0"

"init_search$0_increment_depth_counter":          ; preds = %"init_search$0_latch$0"
  br label %"init_search$0_recursively_call_function"

"init_search$0_recursively_call_function":        ; preds = %"init_search$0_increment_depth_counter"
  call void @"init_search$0"(i64 %inc8.3, i8* %arg1, i64 %arg2)
  ret void

"init_search$0_return_from_recursive_function$0": ; preds = %"init_search$0_latch$0"
  ret void
}

define void @"init_search$1"(%0* %arg, i64 %arg1, i64 %arg2, i8* %arg3, i64 %arg4) {
"init_search$1_latch$0":
  %sub.prol = xor i64 %arg2, -1
  %sub4.prol = add i64 %arg4, %sub.prol
  %arrayidx5.prol = getelementptr inbounds i8, i8* %arg3, i64 %arg2
  %i = load i8, i8* %arrayidx5.prol, align 1, !tbaa !7
  %idxprom.prol = zext i8 %i to i64
  %arrayidx6.prol = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.prol
  store i64 %sub4.prol, i64* %arrayidx6.prol, align 8, !tbaa !1
  %inc8.prol = add nuw i64 %arg2, 1
  %prol.iter.sub = add i64 %arg1, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %"init_search$1_return_from_recursive_function$0", label %"init_search$1_increment_depth_counter", !llvm.loop !8

"init_search$1_increment_depth_counter":          ; preds = %"init_search$1_latch$0"
  br label %"init_search$1_recursively_call_function"

"init_search$1_recursively_call_function":        ; preds = %"init_search$1_increment_depth_counter"
  call void @"init_search$1"(%0* %arg, i64 %prol.iter.sub, i64 %inc8.prol, i8* %arg3, i64 %arg4)
  ret void

"init_search$1_return_from_recursive_function$0": ; preds = %"init_search$1_latch$0"
  %i5 = getelementptr %0, %0* %arg, i32 0, i32 0
  store i64 %inc8.prol, i64* %i5, align 8
  ret void
}

define void @"init_search$2"(i64 %arg, <2 x i64> %arg1) {
"init_search$2_latch$0":
  %i = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %arg
  %i2 = bitcast i64* %i to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i2, align 16, !tbaa !1
  %i3 = getelementptr i64, i64* %i, i64 2
  %i4 = bitcast i64* %i3 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i4, align 16, !tbaa !1
  %index.next = or i64 %arg, 4
  %i5 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next
  %i6 = bitcast i64* %i5 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i6, align 16, !tbaa !1
  %i7 = getelementptr i64, i64* %i5, i64 2
  %i8 = bitcast i64* %i7 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i8, align 16, !tbaa !1
  %index.next.1 = or i64 %arg, 8
  %i9 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.1
  %i10 = bitcast i64* %i9 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i10, align 16, !tbaa !1
  %i11 = getelementptr i64, i64* %i9, i64 2
  %i12 = bitcast i64* %i11 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i12, align 16, !tbaa !1
  %index.next.2 = or i64 %arg, 12
  %i13 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.2
  %i14 = bitcast i64* %i13 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i14, align 16, !tbaa !1
  %i15 = getelementptr i64, i64* %i13, i64 2
  %i16 = bitcast i64* %i15 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i16, align 16, !tbaa !1
  %index.next.3 = or i64 %arg, 16
  %i17 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.3
  %i18 = bitcast i64* %i17 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i18, align 16, !tbaa !1
  %i19 = getelementptr i64, i64* %i17, i64 2
  %i20 = bitcast i64* %i19 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i20, align 16, !tbaa !1
  %index.next.4 = or i64 %arg, 20
  %i21 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.4
  %i22 = bitcast i64* %i21 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i22, align 16, !tbaa !1
  %i23 = getelementptr i64, i64* %i21, i64 2
  %i24 = bitcast i64* %i23 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i24, align 16, !tbaa !1
  %index.next.5 = or i64 %arg, 24
  %i25 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.5
  %i26 = bitcast i64* %i25 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i26, align 16, !tbaa !1
  %i27 = getelementptr i64, i64* %i25, i64 2
  %i28 = bitcast i64* %i27 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i28, align 16, !tbaa !1
  %index.next.6 = or i64 %arg, 28
  %i29 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.6
  %i30 = bitcast i64* %i29 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i30, align 16, !tbaa !1
  %i31 = getelementptr i64, i64* %i29, i64 2
  %i32 = bitcast i64* %i31 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i32, align 16, !tbaa !1
  %index.next.7 = add nsw i64 %arg, 32
  %i33 = icmp eq i64 %index.next.7, 256
  br i1 %i33, label %"init_search$2_return_from_recursive_function$0", label %"init_search$2_increment_depth_counter", !llvm.loop !10

"init_search$2_increment_depth_counter":          ; preds = %"init_search$2_latch$0"
  br label %"init_search$2_recursively_call_function"

"init_search$2_recursively_call_function":        ; preds = %"init_search$2_increment_depth_counter"
  call void @"init_search$2"(i64 %index.next.7, <2 x i64> %arg1)
  ret void

"init_search$2_return_from_recursive_function$0": ; preds = %"init_search$2_latch$0"
  ret void
}

define void @"strsearch$0"(%1* %arg, i64 %arg1, i64 %arg2, i8* %arg3, i64 %arg4, i64 %arg5, i8* %arg6) {
"strsearch$0_header":
  %cmp236 = icmp ult i64 %arg1, %arg5
  br i1 %cmp236, label %land.end.preheader, label %while.end

while.end:                                        ; preds = %"strsearch$0_header"
  %cmp6 = icmp eq i64 %arg2, 0
  br i1 %cmp6, label %"strsearch$0_exiting$1", label %"strsearch$0_latch$0"

land.end.preheader:                               ; preds = %"strsearch$0_header"
  br label %"strsearch$0$0_initialize_context"

"strsearch$0$0_initialize_context":               ; preds = %land.end.preheader
  %i = alloca %2, align 8
  br label %"strsearch$0$0_call_recursive_function"

"strsearch$0$0_call_recursive_function":          ; preds = %"strsearch$0$0_initialize_context"
  call void @"strsearch$0$0"(%2* %i, i64 %arg1, i64 %arg5, i8* %arg6)
  br label %"strsearch$0$0_branch_to_exit"

"strsearch$0$0_branch_to_exit":                   ; preds = %"strsearch$0$0_call_recursive_function"
  %i7 = getelementptr %2, %2* %i, i32 0, i32 3
  %i8 = load i8, i8* %i7, align 1
  switch i8 %i8, label %"strsearch$0$0_extract_return_values$0" [
    i8 1, label %"strsearch$0$0_extract_return_values$0"
    i8 0, label %"strsearch$0$0_extract_return_values$1"
  ]

"strsearch$0$0_extract_return_values$0":          ; preds = %"strsearch$0$0_branch_to_exit", %"strsearch$0$0_branch_to_exit"
  %i9 = getelementptr %2, %2* %i, i32 0, i32 2
  %i10 = load i64, i64* %i9, align 8
  %i11 = getelementptr %2, %2* %i, i32 0, i32 1
  %i12 = load i64, i64* %i11, align 8
  br label %while.cond.backedge.loopexit

"strsearch$0$0_extract_return_values$1":          ; preds = %"strsearch$0$0_branch_to_exit"
  %i13 = getelementptr %2, %2* %i, i32 0, i32 0
  %i14 = load i64, i64* %i13, align 8
  br label %if.then.loopexit

while.cond.backedge.loopexit:                     ; preds = %"strsearch$0$0_extract_return_values$0"
  br label %"strsearch$0_latch$0"

if.then.loopexit:                                 ; preds = %"strsearch$0$0_extract_return_values$1"
  br label %"strsearch$0_exiting$1"

"strsearch$0_exiting$1":                          ; preds = %if.then.loopexit, %while.end
  %pos.134 = phi i64 [ %arg1, %while.end ], [ %i14, %if.then.loopexit ]
  %sub7 = add i64 %pos.134, 1
  %add8 = sub i64 %sub7, %arg4
  %arrayidx9 = getelementptr inbounds i8, i8* %arg6, i64 %add8
  %call10 = tail call i32 @strncmp(i8* %arg3, i8* %arrayidx9, i64 %arg4) #4
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %"strsearch$0_return_from_recursive_function$0", label %"strsearch$0_latch$0"

"strsearch$0_latch$0":                            ; preds = %"strsearch$0_exiting$1", %while.cond.backedge.loopexit, %while.end
  %pos.0.be = phi i64 [ %arg1, %while.end ], [ %sub7, %"strsearch$0_exiting$1" ], [ %i12, %while.cond.backedge.loopexit ]
  %shift.0.be = phi i64 [ %arg2, %while.end ], [ 0, %"strsearch$0_exiting$1" ], [ %i10, %while.cond.backedge.loopexit ]
  %cmp = icmp ult i64 %pos.0.be, %arg5
  br i1 %cmp, label %"strsearch$0_increment_depth_counter", label %"strsearch$0_return_from_recursive_function$0"

"strsearch$0_increment_depth_counter":            ; preds = %"strsearch$0_latch$0"
  br label %"strsearch$0_recursively_call_function"

"strsearch$0_recursively_call_function":          ; preds = %"strsearch$0_increment_depth_counter"
  call void @"strsearch$0"(%1* %arg, i64 %pos.0.be, i64 %shift.0.be, i8* %arg3, i64 %arg4, i64 %arg5, i8* %arg6)
  ret void

"strsearch$0_return_from_recursive_function$0":   ; preds = %"strsearch$0_latch$0", %"strsearch$0_exiting$1"
  %i15 = phi i8* [ null, %"strsearch$0_latch$0" ], [ %arrayidx9, %"strsearch$0_exiting$1" ]
  %i16 = getelementptr %1, %1* %arg, i32 0, i32 0
  store i8* %i15, i8** %i16, align 8
  ret void
}

define void @"main$0"(i64 %arg) {
"main$0_header":
  %arrayidx = getelementptr inbounds [58 x i8*], [58 x i8*]* @main.find_strings, i64 0, i64 %arg
  %i = load i8*, i8** %arrayidx, align 8, !tbaa !5
  %call.i = tail call i64 @strlen(i8* %i) #4
  store i64 %call.i, i64* @len, align 8, !tbaa !1
  %broadcast.splatinsert47 = insertelement <2 x i64> undef, i64 %call.i, i32 0
  %broadcast.splat48 = shufflevector <2 x i64> %broadcast.splatinsert47, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %"main$0$3_call_recursive_function"

"main$0$3_call_recursive_function":               ; preds = %"main$0_header"
  call void @"main$0$3"(i64 0, <2 x i64> %broadcast.splat48)
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %"main$0$3_call_recursive_function"
  %cmp219.i = icmp eq i64 %call.i, 0
  br i1 %cmp219.i, label %init_search.exit, label %for.body3.i.preheader

for.body3.i.preheader:                            ; preds = %for.cond1.preheader.i
  %i1 = add i64 %call.i, -1
  %xtraiter = and i64 %call.i, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body3.i.preheader.split, label %for.body3.i.prol.preheader

for.body3.i.prol.preheader:                       ; preds = %for.body3.i.preheader
  br label %"main$0$2_initialize_context"

"main$0$2_initialize_context":                    ; preds = %for.body3.i.prol.preheader
  %i2 = alloca %3, align 8
  br label %"main$0$2_call_recursive_function"

"main$0$2_call_recursive_function":               ; preds = %"main$0$2_initialize_context"
  call void @"main$0$2"(%3* %i2, i64 %xtraiter, i64 0, i8* %i, i64 %call.i)
  br label %"main$0$2_extract_return_values$0"

"main$0$2_extract_return_values$0":               ; preds = %"main$0$2_call_recursive_function"
  %i3 = getelementptr %3, %3* %i2, i32 0, i32 0
  %i4 = load i64, i64* %i3, align 8
  br label %for.body3.i.preheader.split.loopexit

for.body3.i.preheader.split.loopexit:             ; preds = %"main$0$2_extract_return_values$0"
  br label %for.body3.i.preheader.split

for.body3.i.preheader.split:                      ; preds = %for.body3.i.preheader.split.loopexit, %for.body3.i.preheader
  %i.120.i.unr = phi i64 [ 0, %for.body3.i.preheader ], [ %i4, %for.body3.i.preheader.split.loopexit ]
  %i5 = icmp ult i64 %i1, 3
  br i1 %i5, label %init_search.exit.loopexit, label %for.body3.i.preheader.split.split

for.body3.i.preheader.split.split:                ; preds = %for.body3.i.preheader.split
  br label %"main$0$1_call_recursive_function"

"main$0$1_call_recursive_function":               ; preds = %for.body3.i.preheader.split.split
  call void @"main$0$1"(i64 %i.120.i.unr, i8* %i, i64 %call.i)
  br label %init_search.exit.loopexit.unr-lcssa

init_search.exit.loopexit.unr-lcssa:              ; preds = %"main$0$1_call_recursive_function"
  br label %init_search.exit.loopexit

init_search.exit.loopexit:                        ; preds = %init_search.exit.loopexit.unr-lcssa, %for.body3.i.preheader.split
  br label %init_search.exit

init_search.exit:                                 ; preds = %init_search.exit.loopexit, %for.cond1.preheader.i
  store i8* %i, i8** @findme, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds [57 x i8*], [57 x i8*]* @main.search_strings, i64 0, i64 %arg
  %i6 = load i8*, i8** %arrayidx4, align 8, !tbaa !5
  %sub.i23 = add i64 %call.i, -1
  %call.i24 = tail call i64 @strlen(i8* %i6) #4
  %cmp39.i = icmp ult i64 %sub.i23, %call.i24
  br i1 %cmp39.i, label %while.cond1.preheader.i.preheader, label %strsearch.exit.thread

while.cond1.preheader.i.preheader:                ; preds = %init_search.exit
  br label %"main$0$0_initialize_context"

"main$0$0_initialize_context":                    ; preds = %while.cond1.preheader.i.preheader
  %i7 = alloca %4, align 8
  br label %"main$0$0_call_recursive_function"

"main$0$0_call_recursive_function":               ; preds = %"main$0$0_initialize_context"
  call void @"main$0$0"(%4* %i7, i64 %sub.i23, i64 undef, i8* %i, i64 %call.i, i64 %call.i24, i8* %i6)
  br label %"main$0$0_branch_to_exit"

"main$0$0_branch_to_exit":                        ; preds = %"main$0$0_call_recursive_function"
  %i8 = getelementptr %4, %4* %i7, i32 0, i32 1
  %i9 = load i8, i8* %i8, align 1
  switch i8 %i9, label %"main$0$0_extract_return_values$0" [
    i8 1, label %"main$0$0_extract_return_values$0"
    i8 0, label %"main$0$0_extract_return_values$1"
  ]

"main$0$0_extract_return_values$0":               ; preds = %"main$0$0_branch_to_exit", %"main$0$0_branch_to_exit"
  br label %strsearch.exit.thread.loopexit

"main$0$0_extract_return_values$1":               ; preds = %"main$0$0_branch_to_exit"
  %i10 = getelementptr %4, %4* %i7, i32 0, i32 0
  %i11 = load i8*, i8** %i10, align 8
  br label %strsearch.exit

strsearch.exit.thread.loopexit:                   ; preds = %"main$0$0_extract_return_values$0"
  br label %strsearch.exit.thread

strsearch.exit.thread:                            ; preds = %strsearch.exit.thread.loopexit, %init_search.exit
  %call1031 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i64 0, i64 0), i8* %i, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* %i6)
  br label %"main$0_latch$0"

strsearch.exit:                                   ; preds = %"main$0$0_extract_return_values$1"
  %tobool7 = icmp ne i8* %i11, null
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0)
  %call10 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i64 0, i64 0), i8* %i, i8* %cond, i8* %i6)
  br i1 %tobool7, label %if.then, label %"main$0_latch$0"

if.then:                                          ; preds = %strsearch.exit
  %call12 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i64 0, i64 0), i8* nonnull %i11)
  br label %"main$0_latch$0"

"main$0_latch$0":                                 ; preds = %if.then, %strsearch.exit, %strsearch.exit.thread
  %i12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !5
  %call.i28 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %i12) #5
  %indvars.iv.next = add nuw nsw i64 %arg, 1
  %tobool = icmp eq i64 %indvars.iv.next, 57
  br i1 %tobool, label %"main$0_return_from_recursive_function$0", label %"main$0_increment_depth_counter"

"main$0_increment_depth_counter":                 ; preds = %"main$0_latch$0"
  br label %"main$0_recursively_call_function"

"main$0_recursively_call_function":               ; preds = %"main$0_increment_depth_counter"
  call void @"main$0"(i64 %indvars.iv.next)
  ret void

"main$0_return_from_recursive_function$0":        ; preds = %"main$0_latch$0"
  ret void
}

define void @"strsearch$0$0"(%2* %arg, i64 %arg1, i64 %arg2, i8* %arg3) {
"strsearch$0$0_exiting$1":
  %arrayidx = getelementptr inbounds i8, i8* %arg3, i64 %arg1
  %i = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom = zext i8 %i to i64
  %arrayidx3 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom
  %i4 = load i64, i64* %arrayidx3, align 8, !tbaa !1
  %cmp4 = icmp eq i64 %i4, 0
  %add = add i64 %i4, %arg1
  br i1 %cmp4, label %"strsearch$0$0_return_from_recursive_function$1", label %"strsearch$0$0_latch$0"

"strsearch$0$0_latch$0":                          ; preds = %"strsearch$0$0_exiting$1"
  %cmp2 = icmp ult i64 %add, %arg2
  br i1 %cmp2, label %"strsearch$0$0_increment_depth_counter", label %"strsearch$0$0_return_from_recursive_function$0"

"strsearch$0$0_increment_depth_counter":          ; preds = %"strsearch$0$0_latch$0"
  br label %"strsearch$0$0_recursively_call_function"

"strsearch$0$0_recursively_call_function":        ; preds = %"strsearch$0$0_increment_depth_counter"
  call void @"strsearch$0$0"(%2* %arg, i64 %add, i64 %arg2, i8* %arg3)
  ret void

"strsearch$0$0_return_from_recursive_function$0": ; preds = %"strsearch$0$0_latch$0"
  %i5 = getelementptr %2, %2* %arg, i32 0, i32 2
  store i64 %i4, i64* %i5, align 8
  %i6 = getelementptr %2, %2* %arg, i32 0, i32 1
  store i64 %add, i64* %i6, align 8
  %i7 = getelementptr %2, %2* %arg, i32 0, i32 3
  store i8 1, i8* %i7, align 1
  ret void

"strsearch$0$0_return_from_recursive_function$1": ; preds = %"strsearch$0$0_exiting$1"
  %i8 = getelementptr %2, %2* %arg, i32 0, i32 0
  store i64 %arg1, i64* %i8, align 8
  %i9 = getelementptr %2, %2* %arg, i32 0, i32 3
  store i8 0, i8* %i9, align 1
  ret void
}

define void @"main$0$0"(%4* %arg, i64 %arg1, i64 %arg2, i8* %arg3, i64 %arg4, i64 %arg5, i8* %arg6) {
"main$0$0_header":
  %cmp236.i = icmp ult i64 %arg1, %arg5
  br i1 %cmp236.i, label %land.end.i.preheader, label %while.end.i

while.end.i:                                      ; preds = %"main$0$0_header"
  %cmp6.i = icmp eq i64 %arg2, 0
  br i1 %cmp6.i, label %"main$0$0_exiting$1", label %"main$0$0_latch$0"

land.end.i.preheader:                             ; preds = %"main$0$0_header"
  br label %"main$0$0$0_initialize_context"

"main$0$0$0_initialize_context":                  ; preds = %land.end.i.preheader
  %i = alloca %5, align 8
  br label %"main$0$0$0_call_recursive_function"

"main$0$0$0_call_recursive_function":             ; preds = %"main$0$0$0_initialize_context"
  call void @"main$0$0$0"(%5* %i, i64 %arg1, i64 %arg5, i8* %arg6)
  br label %"main$0$0$0_branch_to_exit"

"main$0$0$0_branch_to_exit":                      ; preds = %"main$0$0$0_call_recursive_function"
  %i7 = getelementptr %5, %5* %i, i32 0, i32 3
  %i8 = load i8, i8* %i7, align 1
  switch i8 %i8, label %"main$0$0$0_extract_return_values$0" [
    i8 1, label %"main$0$0$0_extract_return_values$0"
    i8 0, label %"main$0$0$0_extract_return_values$1"
  ]

"main$0$0$0_extract_return_values$0":             ; preds = %"main$0$0$0_branch_to_exit", %"main$0$0$0_branch_to_exit"
  %i9 = getelementptr %5, %5* %i, i32 0, i32 2
  %i10 = load i64, i64* %i9, align 8
  %i11 = getelementptr %5, %5* %i, i32 0, i32 0
  %i12 = load i64, i64* %i11, align 8
  br label %while.cond.backedge.i.loopexit

"main$0$0$0_extract_return_values$1":             ; preds = %"main$0$0$0_branch_to_exit"
  %i13 = getelementptr %5, %5* %i, i32 0, i32 1
  %i14 = load i64, i64* %i13, align 8
  br label %if.then.i.loopexit

while.cond.backedge.i.loopexit:                   ; preds = %"main$0$0$0_extract_return_values$0"
  br label %"main$0$0_latch$0"

if.then.i.loopexit:                               ; preds = %"main$0$0$0_extract_return_values$1"
  br label %"main$0$0_exiting$1"

"main$0$0_exiting$1":                             ; preds = %if.then.i.loopexit, %while.end.i
  %pos.134.i = phi i64 [ %arg1, %while.end.i ], [ %i14, %if.then.i.loopexit ]
  %sub7.i = add i64 %pos.134.i, 1
  %add8.i = sub i64 %sub7.i, %arg4
  %arrayidx9.i = getelementptr inbounds i8, i8* %arg6, i64 %add8.i
  %call10.i = tail call i32 @strncmp(i8* %arg3, i8* %arrayidx9.i, i64 %arg4) #4
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %"main$0$0_return_from_recursive_function$1", label %"main$0$0_latch$0"

"main$0$0_latch$0":                               ; preds = %"main$0$0_exiting$1", %while.cond.backedge.i.loopexit, %while.end.i
  %pos.0.be.i = phi i64 [ %arg1, %while.end.i ], [ %sub7.i, %"main$0$0_exiting$1" ], [ %i12, %while.cond.backedge.i.loopexit ]
  %shift.0.be.i = phi i64 [ %arg2, %while.end.i ], [ 0, %"main$0$0_exiting$1" ], [ %i10, %while.cond.backedge.i.loopexit ]
  %cmp.i = icmp ult i64 %pos.0.be.i, %arg5
  br i1 %cmp.i, label %"main$0$0_increment_depth_counter", label %"main$0$0_return_from_recursive_function$0"

"main$0$0_increment_depth_counter":               ; preds = %"main$0$0_latch$0"
  br label %"main$0$0_recursively_call_function"

"main$0$0_recursively_call_function":             ; preds = %"main$0$0_increment_depth_counter"
  call void @"main$0$0"(%4* %arg, i64 %pos.0.be.i, i64 %shift.0.be.i, i8* %arg3, i64 %arg4, i64 %arg5, i8* %arg6)
  ret void

"main$0$0_return_from_recursive_function$0":      ; preds = %"main$0$0_latch$0"
  %i15 = getelementptr %4, %4* %arg, i32 0, i32 1
  store i8 1, i8* %i15, align 1
  ret void

"main$0$0_return_from_recursive_function$1":      ; preds = %"main$0$0_exiting$1"
  %i16 = getelementptr %4, %4* %arg, i32 0, i32 0
  store i8* %arrayidx9.i, i8** %i16, align 8
  %i17 = getelementptr %4, %4* %arg, i32 0, i32 1
  store i8 0, i8* %i17, align 1
  ret void
}

define void @"main$0$1"(i64 %arg, i8* %arg1, i64 %arg2) {
"main$0$1_latch$0":
  %sub.i = xor i64 %arg, -1
  %sub4.i = add i64 %arg2, %sub.i
  %arrayidx5.i = getelementptr inbounds i8, i8* %arg1, i64 %arg
  %i = load i8, i8* %arrayidx5.i, align 1, !tbaa !7
  %idxprom.i = zext i8 %i to i64
  %arrayidx6.i = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i
  store i64 %sub4.i, i64* %arrayidx6.i, align 8, !tbaa !1
  %inc8.i = add nuw i64 %arg, 1
  %sub.i.1 = sub i64 -2, %arg
  %sub4.i.1 = add i64 %arg2, %sub.i.1
  %arrayidx5.i.1 = getelementptr inbounds i8, i8* %arg1, i64 %inc8.i
  %i3 = load i8, i8* %arrayidx5.i.1, align 1, !tbaa !7
  %idxprom.i.1 = zext i8 %i3 to i64
  %arrayidx6.i.1 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i.1
  store i64 %sub4.i.1, i64* %arrayidx6.i.1, align 8, !tbaa !1
  %inc8.i.1 = add i64 %arg, 2
  %sub.i.2 = sub i64 -3, %arg
  %sub4.i.2 = add i64 %arg2, %sub.i.2
  %arrayidx5.i.2 = getelementptr inbounds i8, i8* %arg1, i64 %inc8.i.1
  %i4 = load i8, i8* %arrayidx5.i.2, align 1, !tbaa !7
  %idxprom.i.2 = zext i8 %i4 to i64
  %arrayidx6.i.2 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i.2
  store i64 %sub4.i.2, i64* %arrayidx6.i.2, align 8, !tbaa !1
  %inc8.i.2 = add i64 %arg, 3
  %sub.i.3 = sub i64 -4, %arg
  %sub4.i.3 = add i64 %arg2, %sub.i.3
  %arrayidx5.i.3 = getelementptr inbounds i8, i8* %arg1, i64 %inc8.i.2
  %i5 = load i8, i8* %arrayidx5.i.3, align 1, !tbaa !7
  %idxprom.i.3 = zext i8 %i5 to i64
  %arrayidx6.i.3 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i.3
  store i64 %sub4.i.3, i64* %arrayidx6.i.3, align 8, !tbaa !1
  %inc8.i.3 = add i64 %arg, 4
  %exitcond.3 = icmp eq i64 %inc8.i.3, %arg2
  br i1 %exitcond.3, label %"main$0$1_return_from_recursive_function$0", label %"main$0$1_increment_depth_counter"

"main$0$1_increment_depth_counter":               ; preds = %"main$0$1_latch$0"
  br label %"main$0$1_recursively_call_function"

"main$0$1_recursively_call_function":             ; preds = %"main$0$1_increment_depth_counter"
  call void @"main$0$1"(i64 %inc8.i.3, i8* %arg1, i64 %arg2)
  ret void

"main$0$1_return_from_recursive_function$0":      ; preds = %"main$0$1_latch$0"
  ret void
}

define void @"main$0$2"(%3* %arg, i64 %arg1, i64 %arg2, i8* %arg3, i64 %arg4) {
"main$0$2_latch$0":
  %sub.i.prol = xor i64 %arg2, -1
  %sub4.i.prol = add i64 %arg4, %sub.i.prol
  %arrayidx5.i.prol = getelementptr inbounds i8, i8* %arg3, i64 %arg2
  %i = load i8, i8* %arrayidx5.i.prol, align 1, !tbaa !7
  %idxprom.i.prol = zext i8 %i to i64
  %arrayidx6.i.prol = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i.prol
  store i64 %sub4.i.prol, i64* %arrayidx6.i.prol, align 8, !tbaa !1
  %inc8.i.prol = add nuw i64 %arg2, 1
  %prol.iter.sub = add i64 %arg1, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %"main$0$2_return_from_recursive_function$0", label %"main$0$2_increment_depth_counter", !llvm.loop !13

"main$0$2_increment_depth_counter":               ; preds = %"main$0$2_latch$0"
  br label %"main$0$2_recursively_call_function"

"main$0$2_recursively_call_function":             ; preds = %"main$0$2_increment_depth_counter"
  call void @"main$0$2"(%3* %arg, i64 %prol.iter.sub, i64 %inc8.i.prol, i8* %arg3, i64 %arg4)
  ret void

"main$0$2_return_from_recursive_function$0":      ; preds = %"main$0$2_latch$0"
  %i5 = getelementptr %3, %3* %arg, i32 0, i32 0
  store i64 %inc8.i.prol, i64* %i5, align 8
  ret void
}

define void @"main$0$3"(i64 %arg, <2 x i64> %arg1) {
"main$0$3_latch$0":
  %i = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %arg
  %i2 = bitcast i64* %i to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i2, align 16, !tbaa !1
  %i3 = getelementptr i64, i64* %i, i64 2
  %i4 = bitcast i64* %i3 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i4, align 16, !tbaa !1
  %index.next = or i64 %arg, 4
  %i5 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next
  %i6 = bitcast i64* %i5 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i6, align 16, !tbaa !1
  %i7 = getelementptr i64, i64* %i5, i64 2
  %i8 = bitcast i64* %i7 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i8, align 16, !tbaa !1
  %index.next.1 = or i64 %arg, 8
  %i9 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.1
  %i10 = bitcast i64* %i9 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i10, align 16, !tbaa !1
  %i11 = getelementptr i64, i64* %i9, i64 2
  %i12 = bitcast i64* %i11 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i12, align 16, !tbaa !1
  %index.next.2 = or i64 %arg, 12
  %i13 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.2
  %i14 = bitcast i64* %i13 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i14, align 16, !tbaa !1
  %i15 = getelementptr i64, i64* %i13, i64 2
  %i16 = bitcast i64* %i15 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i16, align 16, !tbaa !1
  %index.next.3 = or i64 %arg, 16
  %i17 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.3
  %i18 = bitcast i64* %i17 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i18, align 16, !tbaa !1
  %i19 = getelementptr i64, i64* %i17, i64 2
  %i20 = bitcast i64* %i19 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i20, align 16, !tbaa !1
  %index.next.4 = or i64 %arg, 20
  %i21 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.4
  %i22 = bitcast i64* %i21 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i22, align 16, !tbaa !1
  %i23 = getelementptr i64, i64* %i21, i64 2
  %i24 = bitcast i64* %i23 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i24, align 16, !tbaa !1
  %index.next.5 = or i64 %arg, 24
  %i25 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.5
  %i26 = bitcast i64* %i25 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i26, align 16, !tbaa !1
  %i27 = getelementptr i64, i64* %i25, i64 2
  %i28 = bitcast i64* %i27 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i28, align 16, !tbaa !1
  %index.next.6 = or i64 %arg, 28
  %i29 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.6
  %i30 = bitcast i64* %i29 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i30, align 16, !tbaa !1
  %i31 = getelementptr i64, i64* %i29, i64 2
  %i32 = bitcast i64* %i31 to <2 x i64>*
  store <2 x i64> %arg1, <2 x i64>* %i32, align 16, !tbaa !1
  %index.next.7 = add nsw i64 %arg, 32
  %i33 = icmp eq i64 %index.next.7, 256
  br i1 %i33, label %"main$0$3_return_from_recursive_function$0", label %"main$0$3_increment_depth_counter", !llvm.loop !14

"main$0$3_increment_depth_counter":               ; preds = %"main$0$3_latch$0"
  br label %"main$0$3_recursively_call_function"

"main$0$3_recursively_call_function":             ; preds = %"main$0$3_increment_depth_counter"
  call void @"main$0$3"(i64 %index.next.7, <2 x i64> %arg1)
  ret void

"main$0$3_return_from_recursive_function$0":      ; preds = %"main$0$3_latch$0"
  ret void
}

define void @"main$0$0$0"(%5* %arg, i64 %arg1, i64 %arg2, i8* %arg3) {
"main$0$0$0_exiting$1":
  %arrayidx.i26 = getelementptr inbounds i8, i8* %arg3, i64 %arg1
  %i = load i8, i8* %arrayidx.i26, align 1, !tbaa !7
  %idxprom.i27 = zext i8 %i to i64
  %arrayidx3.i = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i27
  %i4 = load i64, i64* %arrayidx3.i, align 8, !tbaa !1
  %cmp4.i = icmp eq i64 %i4, 0
  %add.i = add i64 %i4, %arg1
  br i1 %cmp4.i, label %"main$0$0$0_return_from_recursive_function$1", label %"main$0$0$0_latch$0"

"main$0$0$0_latch$0":                             ; preds = %"main$0$0$0_exiting$1"
  %cmp2.i25 = icmp ult i64 %add.i, %arg2
  br i1 %cmp2.i25, label %"main$0$0$0_increment_depth_counter", label %"main$0$0$0_return_from_recursive_function$0"

"main$0$0$0_increment_depth_counter":             ; preds = %"main$0$0$0_latch$0"
  br label %"main$0$0$0_recursively_call_function"

"main$0$0$0_recursively_call_function":           ; preds = %"main$0$0$0_increment_depth_counter"
  call void @"main$0$0$0"(%5* %arg, i64 %add.i, i64 %arg2, i8* %arg3)
  ret void

"main$0$0$0_return_from_recursive_function$0":    ; preds = %"main$0$0$0_latch$0"
  %i5 = getelementptr %5, %5* %arg, i32 0, i32 2
  store i64 %i4, i64* %i5, align 8
  %i6 = getelementptr %5, %5* %arg, i32 0, i32 0
  store i64 %add.i, i64* %i6, align 8
  %i7 = getelementptr %5, %5* %arg, i32 0, i32 3
  store i8 1, i8* %i7, align 1
  ret void

"main$0$0$0_return_from_recursive_function$1":    ; preds = %"main$0$0$0_exiting$1"
  %i8 = getelementptr %5, %5* %arg, i32 0, i32 1
  store i64 %arg1, i64* %i8, align 8
  %i9 = getelementptr %5, %5* %arg, i32 0, i32 3
  store i8 0, i8* %i9, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.vectorize.width", i32 1}
!12 = !{!"llvm.loop.interleave.count", i32 1}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !11, !12}
