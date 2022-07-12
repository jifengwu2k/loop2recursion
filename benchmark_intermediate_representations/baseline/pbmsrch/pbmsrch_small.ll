; ModuleID = 'pbmsrch_small.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.7, %vector.body ]
  %0 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index
  %1 = bitcast i64* %0 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %1, align 16, !tbaa !1
  %2 = getelementptr i64, i64* %0, i64 2
  %3 = bitcast i64* %2 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %3, align 16, !tbaa !1
  %index.next = or i64 %index, 4
  %4 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next
  %5 = bitcast i64* %4 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %5, align 16, !tbaa !1
  %6 = getelementptr i64, i64* %4, i64 2
  %7 = bitcast i64* %6 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %7, align 16, !tbaa !1
  %index.next.1 = or i64 %index, 8
  %8 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.1
  %9 = bitcast i64* %8 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %9, align 16, !tbaa !1
  %10 = getelementptr i64, i64* %8, i64 2
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %11, align 16, !tbaa !1
  %index.next.2 = or i64 %index, 12
  %12 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.2
  %13 = bitcast i64* %12 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %13, align 16, !tbaa !1
  %14 = getelementptr i64, i64* %12, i64 2
  %15 = bitcast i64* %14 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %15, align 16, !tbaa !1
  %index.next.3 = or i64 %index, 16
  %16 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.3
  %17 = bitcast i64* %16 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %17, align 16, !tbaa !1
  %18 = getelementptr i64, i64* %16, i64 2
  %19 = bitcast i64* %18 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %19, align 16, !tbaa !1
  %index.next.4 = or i64 %index, 20
  %20 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.4
  %21 = bitcast i64* %20 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %21, align 16, !tbaa !1
  %22 = getelementptr i64, i64* %20, i64 2
  %23 = bitcast i64* %22 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %23, align 16, !tbaa !1
  %index.next.5 = or i64 %index, 24
  %24 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.5
  %25 = bitcast i64* %24 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %25, align 16, !tbaa !1
  %26 = getelementptr i64, i64* %24, i64 2
  %27 = bitcast i64* %26 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %27, align 16, !tbaa !1
  %index.next.6 = or i64 %index, 28
  %28 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.6
  %29 = bitcast i64* %28 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %29, align 16, !tbaa !1
  %30 = getelementptr i64, i64* %28, i64 2
  %31 = bitcast i64* %30 to <2 x i64>*
  store <2 x i64> %broadcast.splat24, <2 x i64>* %31, align 16, !tbaa !1
  %index.next.7 = add nsw i64 %index, 32
  %32 = icmp eq i64 %index.next.7, 256
  br i1 %32, label %for.cond1.preheader, label %vector.body, !llvm.loop !5

for.cond1.preheader:                              ; preds = %vector.body
  %cmp219 = icmp eq i64 %call, 0
  br i1 %cmp219, label %for.end9, label %for.body3.preheader

for.body3.preheader:                              ; preds = %for.cond1.preheader
  %33 = add i64 %call, -1
  %xtraiter = and i64 %call, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body3.preheader.split, label %for.body3.prol.preheader

for.body3.prol.preheader:                         ; preds = %for.body3.preheader
  br label %for.body3.prol

for.body3.prol:                                   ; preds = %for.body3.prol.preheader, %for.body3.prol
  %i.120.prol = phi i64 [ %inc8.prol, %for.body3.prol ], [ 0, %for.body3.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body3.prol ], [ %xtraiter, %for.body3.prol.preheader ]
  %sub.prol = xor i64 %i.120.prol, -1
  %sub4.prol = add i64 %call, %sub.prol
  %arrayidx5.prol = getelementptr inbounds i8, i8* %string, i64 %i.120.prol
  %34 = load i8, i8* %arrayidx5.prol, align 1, !tbaa !8
  %idxprom.prol = zext i8 %34 to i64
  %arrayidx6.prol = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.prol
  store i64 %sub4.prol, i64* %arrayidx6.prol, align 8, !tbaa !1
  %inc8.prol = add nuw i64 %i.120.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body3.preheader.split.loopexit, label %for.body3.prol, !llvm.loop !9

for.body3.preheader.split.loopexit:               ; preds = %for.body3.prol
  %inc8.prol.lcssa = phi i64 [ %inc8.prol, %for.body3.prol ]
  br label %for.body3.preheader.split

for.body3.preheader.split:                        ; preds = %for.body3.preheader.split.loopexit, %for.body3.preheader
  %i.120.unr = phi i64 [ 0, %for.body3.preheader ], [ %inc8.prol.lcssa, %for.body3.preheader.split.loopexit ]
  %35 = icmp ult i64 %33, 3
  br i1 %35, label %for.end9.loopexit, label %for.body3.preheader.split.split

for.body3.preheader.split.split:                  ; preds = %for.body3.preheader.split
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body3.preheader.split.split
  %i.120 = phi i64 [ %i.120.unr, %for.body3.preheader.split.split ], [ %inc8.3, %for.body3 ]
  %sub = xor i64 %i.120, -1
  %sub4 = add i64 %call, %sub
  %arrayidx5 = getelementptr inbounds i8, i8* %string, i64 %i.120
  %36 = load i8, i8* %arrayidx5, align 1, !tbaa !8
  %idxprom = zext i8 %36 to i64
  %arrayidx6 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom
  store i64 %sub4, i64* %arrayidx6, align 8, !tbaa !1
  %inc8 = add nuw i64 %i.120, 1
  %sub.1 = sub i64 -2, %i.120
  %sub4.1 = add i64 %call, %sub.1
  %arrayidx5.1 = getelementptr inbounds i8, i8* %string, i64 %inc8
  %37 = load i8, i8* %arrayidx5.1, align 1, !tbaa !8
  %idxprom.1 = zext i8 %37 to i64
  %arrayidx6.1 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.1
  store i64 %sub4.1, i64* %arrayidx6.1, align 8, !tbaa !1
  %inc8.1 = add i64 %i.120, 2
  %sub.2 = sub i64 -3, %i.120
  %sub4.2 = add i64 %call, %sub.2
  %arrayidx5.2 = getelementptr inbounds i8, i8* %string, i64 %inc8.1
  %38 = load i8, i8* %arrayidx5.2, align 1, !tbaa !8
  %idxprom.2 = zext i8 %38 to i64
  %arrayidx6.2 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.2
  store i64 %sub4.2, i64* %arrayidx6.2, align 8, !tbaa !1
  %inc8.2 = add i64 %i.120, 3
  %sub.3 = sub i64 -4, %i.120
  %sub4.3 = add i64 %call, %sub.3
  %arrayidx5.3 = getelementptr inbounds i8, i8* %string, i64 %inc8.2
  %39 = load i8, i8* %arrayidx5.3, align 1, !tbaa !8
  %idxprom.3 = zext i8 %39 to i64
  %arrayidx6.3 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.3
  store i64 %sub4.3, i64* %arrayidx6.3, align 8, !tbaa !1
  %inc8.3 = add i64 %i.120, 4
  %cmp2.3 = icmp ugt i64 %call, %inc8.3
  br i1 %cmp2.3, label %for.body3, label %for.end9.loopexit.unr-lcssa

for.end9.loopexit.unr-lcssa:                      ; preds = %for.body3
  br label %for.end9.loopexit

for.end9.loopexit:                                ; preds = %for.body3.preheader.split, %for.end9.loopexit.unr-lcssa
  br label %for.end9

for.end9:                                         ; preds = %for.end9.loopexit, %for.cond1.preheader
  store i8* %string, i8** @findme, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind readonly uwtable
define i8* @strsearch(i8* readonly %string) #2 {
entry:
  %0 = load i64, i64* @len, align 8, !tbaa !1
  %sub = add i64 %0, -1
  %call = tail call i64 @strlen(i8* %string) #4
  %cmp39 = icmp ult i64 %sub, %call
  br i1 %cmp39, label %while.cond1.preheader.lr.ph, label %cleanup

while.cond1.preheader.lr.ph:                      ; preds = %entry
  %1 = load i8*, i8** @findme, align 8
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.cond1.preheader.lr.ph, %while.cond.backedge
  %shift.041 = phi i64 [ undef, %while.cond1.preheader.lr.ph ], [ %shift.0.be, %while.cond.backedge ]
  %pos.040 = phi i64 [ %sub, %while.cond1.preheader.lr.ph ], [ %pos.0.be, %while.cond.backedge ]
  %cmp236 = icmp ult i64 %pos.040, %call
  br i1 %cmp236, label %land.end.preheader, label %while.end

land.end.preheader:                               ; preds = %while.cond1.preheader
  br label %land.end

while.cond1:                                      ; preds = %land.end
  %cmp2 = icmp ult i64 %add, %call
  br i1 %cmp2, label %land.end, label %while.cond.backedge.loopexit

land.end:                                         ; preds = %land.end.preheader, %while.cond1
  %pos.137 = phi i64 [ %add, %while.cond1 ], [ %pos.040, %land.end.preheader ]
  %arrayidx = getelementptr inbounds i8, i8* %string, i64 %pos.137
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %idxprom = zext i8 %2 to i64
  %arrayidx3 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx3, align 8, !tbaa !1
  %cmp4 = icmp eq i64 %3, 0
  %add = add i64 %3, %pos.137
  br i1 %cmp4, label %if.then.loopexit, label %while.cond1

while.end:                                        ; preds = %while.cond1.preheader
  %cmp6 = icmp eq i64 %shift.041, 0
  br i1 %cmp6, label %if.then, label %while.cond.backedge

if.then.loopexit:                                 ; preds = %land.end
  %pos.137.lcssa = phi i64 [ %pos.137, %land.end ]
  br label %if.then

if.then:                                          ; preds = %if.then.loopexit, %while.end
  %pos.134 = phi i64 [ %pos.040, %while.end ], [ %pos.137.lcssa, %if.then.loopexit ]
  %sub7 = add i64 %pos.134, 1
  %add8 = sub i64 %sub7, %0
  %arrayidx9 = getelementptr inbounds i8, i8* %string, i64 %add8
  %call10 = tail call i32 @strncmp(i8* %1, i8* %arrayidx9, i64 %0) #4
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %cleanup.loopexit, label %while.cond.backedge

while.cond.backedge.loopexit:                     ; preds = %while.cond1
  %add.lcssa59 = phi i64 [ %add, %while.cond1 ]
  %.lcssa58 = phi i64 [ %3, %while.cond1 ]
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.loopexit, %if.then, %while.end
  %pos.0.be = phi i64 [ %pos.040, %while.end ], [ %sub7, %if.then ], [ %add.lcssa59, %while.cond.backedge.loopexit ]
  %shift.0.be = phi i64 [ %shift.041, %while.end ], [ 0, %if.then ], [ %.lcssa58, %while.cond.backedge.loopexit ]
  %cmp = icmp ult i64 %pos.0.be, %call
  br i1 %cmp, label %while.cond1.preheader, label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %while.cond.backedge, %if.then
  %retval.0.ph = phi i8* [ null, %while.cond.backedge ], [ %arrayidx9, %if.then ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %retval.0.ph, %cleanup.loopexit ]
  ret i8* %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %arrayidx = getelementptr inbounds [58 x i8*], [58 x i8*]* @main.find_strings, i64 0, i64 %indvars.iv
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !11
  %call.i = tail call i64 @strlen(i8* %0) #4
  store i64 %call.i, i64* @len, align 8, !tbaa !1
  %broadcast.splatinsert47 = insertelement <2 x i64> undef, i64 %call.i, i32 0
  %broadcast.splat48 = shufflevector <2 x i64> %broadcast.splatinsert47, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.body
  %index = phi i64 [ 0, %for.body ], [ %index.next.7, %vector.body ]
  %1 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index
  %2 = bitcast i64* %1 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %2, align 16, !tbaa !1
  %3 = getelementptr i64, i64* %1, i64 2
  %4 = bitcast i64* %3 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %4, align 16, !tbaa !1
  %index.next = or i64 %index, 4
  %5 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next
  %6 = bitcast i64* %5 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %6, align 16, !tbaa !1
  %7 = getelementptr i64, i64* %5, i64 2
  %8 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %8, align 16, !tbaa !1
  %index.next.1 = or i64 %index, 8
  %9 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.1
  %10 = bitcast i64* %9 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %10, align 16, !tbaa !1
  %11 = getelementptr i64, i64* %9, i64 2
  %12 = bitcast i64* %11 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %12, align 16, !tbaa !1
  %index.next.2 = or i64 %index, 12
  %13 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.2
  %14 = bitcast i64* %13 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %14, align 16, !tbaa !1
  %15 = getelementptr i64, i64* %13, i64 2
  %16 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %16, align 16, !tbaa !1
  %index.next.3 = or i64 %index, 16
  %17 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.3
  %18 = bitcast i64* %17 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %18, align 16, !tbaa !1
  %19 = getelementptr i64, i64* %17, i64 2
  %20 = bitcast i64* %19 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %20, align 16, !tbaa !1
  %index.next.4 = or i64 %index, 20
  %21 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.4
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %22, align 16, !tbaa !1
  %23 = getelementptr i64, i64* %21, i64 2
  %24 = bitcast i64* %23 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %24, align 16, !tbaa !1
  %index.next.5 = or i64 %index, 24
  %25 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.5
  %26 = bitcast i64* %25 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %26, align 16, !tbaa !1
  %27 = getelementptr i64, i64* %25, i64 2
  %28 = bitcast i64* %27 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %28, align 16, !tbaa !1
  %index.next.6 = or i64 %index, 28
  %29 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %index.next.6
  %30 = bitcast i64* %29 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %30, align 16, !tbaa !1
  %31 = getelementptr i64, i64* %29, i64 2
  %32 = bitcast i64* %31 to <2 x i64>*
  store <2 x i64> %broadcast.splat48, <2 x i64>* %32, align 16, !tbaa !1
  %index.next.7 = add nsw i64 %index, 32
  %33 = icmp eq i64 %index.next.7, 256
  br i1 %33, label %for.cond1.preheader.i, label %vector.body, !llvm.loop !13

for.cond1.preheader.i:                            ; preds = %vector.body
  %cmp219.i = icmp eq i64 %call.i, 0
  br i1 %cmp219.i, label %init_search.exit, label %for.body3.i.preheader

for.body3.i.preheader:                            ; preds = %for.cond1.preheader.i
  %34 = add i64 %call.i, -1
  %xtraiter = and i64 %call.i, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body3.i.preheader.split, label %for.body3.i.prol.preheader

for.body3.i.prol.preheader:                       ; preds = %for.body3.i.preheader
  br label %for.body3.i.prol

for.body3.i.prol:                                 ; preds = %for.body3.i.prol, %for.body3.i.prol.preheader
  %i.120.i.prol = phi i64 [ %inc8.i.prol, %for.body3.i.prol ], [ 0, %for.body3.i.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body3.i.prol ], [ %xtraiter, %for.body3.i.prol.preheader ]
  %sub.i.prol = xor i64 %i.120.i.prol, -1
  %sub4.i.prol = add i64 %call.i, %sub.i.prol
  %arrayidx5.i.prol = getelementptr inbounds i8, i8* %0, i64 %i.120.i.prol
  %35 = load i8, i8* %arrayidx5.i.prol, align 1, !tbaa !8
  %idxprom.i.prol = zext i8 %35 to i64
  %arrayidx6.i.prol = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i.prol
  store i64 %sub4.i.prol, i64* %arrayidx6.i.prol, align 8, !tbaa !1
  %inc8.i.prol = add nuw i64 %i.120.i.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body3.i.preheader.split.loopexit, label %for.body3.i.prol, !llvm.loop !14

for.body3.i.preheader.split.loopexit:             ; preds = %for.body3.i.prol
  %inc8.i.prol.lcssa = phi i64 [ %inc8.i.prol, %for.body3.i.prol ]
  br label %for.body3.i.preheader.split

for.body3.i.preheader.split:                      ; preds = %for.body3.i.preheader, %for.body3.i.preheader.split.loopexit
  %i.120.i.unr = phi i64 [ 0, %for.body3.i.preheader ], [ %inc8.i.prol.lcssa, %for.body3.i.preheader.split.loopexit ]
  %36 = icmp ult i64 %34, 3
  br i1 %36, label %init_search.exit.loopexit, label %for.body3.i.preheader.split.split

for.body3.i.preheader.split.split:                ; preds = %for.body3.i.preheader.split
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.body3.i.preheader.split.split
  %i.120.i = phi i64 [ %i.120.i.unr, %for.body3.i.preheader.split.split ], [ %inc8.i.3, %for.body3.i ]
  %sub.i = xor i64 %i.120.i, -1
  %sub4.i = add i64 %call.i, %sub.i
  %arrayidx5.i = getelementptr inbounds i8, i8* %0, i64 %i.120.i
  %37 = load i8, i8* %arrayidx5.i, align 1, !tbaa !8
  %idxprom.i = zext i8 %37 to i64
  %arrayidx6.i = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i
  store i64 %sub4.i, i64* %arrayidx6.i, align 8, !tbaa !1
  %inc8.i = add nuw i64 %i.120.i, 1
  %sub.i.1 = sub i64 -2, %i.120.i
  %sub4.i.1 = add i64 %call.i, %sub.i.1
  %arrayidx5.i.1 = getelementptr inbounds i8, i8* %0, i64 %inc8.i
  %38 = load i8, i8* %arrayidx5.i.1, align 1, !tbaa !8
  %idxprom.i.1 = zext i8 %38 to i64
  %arrayidx6.i.1 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i.1
  store i64 %sub4.i.1, i64* %arrayidx6.i.1, align 8, !tbaa !1
  %inc8.i.1 = add i64 %i.120.i, 2
  %sub.i.2 = sub i64 -3, %i.120.i
  %sub4.i.2 = add i64 %call.i, %sub.i.2
  %arrayidx5.i.2 = getelementptr inbounds i8, i8* %0, i64 %inc8.i.1
  %39 = load i8, i8* %arrayidx5.i.2, align 1, !tbaa !8
  %idxprom.i.2 = zext i8 %39 to i64
  %arrayidx6.i.2 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i.2
  store i64 %sub4.i.2, i64* %arrayidx6.i.2, align 8, !tbaa !1
  %inc8.i.2 = add i64 %i.120.i, 3
  %sub.i.3 = sub i64 -4, %i.120.i
  %sub4.i.3 = add i64 %call.i, %sub.i.3
  %arrayidx5.i.3 = getelementptr inbounds i8, i8* %0, i64 %inc8.i.2
  %40 = load i8, i8* %arrayidx5.i.3, align 1, !tbaa !8
  %idxprom.i.3 = zext i8 %40 to i64
  %arrayidx6.i.3 = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i.3
  store i64 %sub4.i.3, i64* %arrayidx6.i.3, align 8, !tbaa !1
  %inc8.i.3 = add i64 %i.120.i, 4
  %exitcond.3 = icmp eq i64 %inc8.i.3, %call.i
  br i1 %exitcond.3, label %init_search.exit.loopexit.unr-lcssa, label %for.body3.i

init_search.exit.loopexit.unr-lcssa:              ; preds = %for.body3.i
  br label %init_search.exit.loopexit

init_search.exit.loopexit:                        ; preds = %for.body3.i.preheader.split, %init_search.exit.loopexit.unr-lcssa
  br label %init_search.exit

init_search.exit:                                 ; preds = %init_search.exit.loopexit, %for.cond1.preheader.i
  store i8* %0, i8** @findme, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [57 x i8*], [57 x i8*]* @main.search_strings, i64 0, i64 %indvars.iv
  %41 = load i8*, i8** %arrayidx4, align 8, !tbaa !11
  %sub.i23 = add i64 %call.i, -1
  %call.i24 = tail call i64 @strlen(i8* %41) #4
  %cmp39.i = icmp ult i64 %sub.i23, %call.i24
  br i1 %cmp39.i, label %while.cond1.preheader.i.preheader, label %strsearch.exit.thread

while.cond1.preheader.i.preheader:                ; preds = %init_search.exit
  br label %while.cond1.preheader.i

while.cond1.preheader.i:                          ; preds = %while.cond1.preheader.i.preheader, %while.cond.backedge.i
  %shift.041.i = phi i64 [ %shift.0.be.i, %while.cond.backedge.i ], [ undef, %while.cond1.preheader.i.preheader ]
  %pos.040.i = phi i64 [ %pos.0.be.i, %while.cond.backedge.i ], [ %sub.i23, %while.cond1.preheader.i.preheader ]
  %cmp236.i = icmp ult i64 %pos.040.i, %call.i24
  br i1 %cmp236.i, label %land.end.i.preheader, label %while.end.i

land.end.i.preheader:                             ; preds = %while.cond1.preheader.i
  br label %land.end.i

while.cond1.i:                                    ; preds = %land.end.i
  %cmp2.i25 = icmp ult i64 %add.i, %call.i24
  br i1 %cmp2.i25, label %land.end.i, label %while.cond.backedge.i.loopexit

land.end.i:                                       ; preds = %land.end.i.preheader, %while.cond1.i
  %pos.137.i = phi i64 [ %add.i, %while.cond1.i ], [ %pos.040.i, %land.end.i.preheader ]
  %arrayidx.i26 = getelementptr inbounds i8, i8* %41, i64 %pos.137.i
  %42 = load i8, i8* %arrayidx.i26, align 1, !tbaa !8
  %idxprom.i27 = zext i8 %42 to i64
  %arrayidx3.i = getelementptr inbounds [256 x i64], [256 x i64]* @table, i64 0, i64 %idxprom.i27
  %43 = load i64, i64* %arrayidx3.i, align 8, !tbaa !1
  %cmp4.i = icmp eq i64 %43, 0
  %add.i = add i64 %43, %pos.137.i
  br i1 %cmp4.i, label %if.then.i.loopexit, label %while.cond1.i

while.end.i:                                      ; preds = %while.cond1.preheader.i
  %cmp6.i = icmp eq i64 %shift.041.i, 0
  br i1 %cmp6.i, label %if.then.i, label %while.cond.backedge.i

if.then.i.loopexit:                               ; preds = %land.end.i
  %pos.137.i.lcssa = phi i64 [ %pos.137.i, %land.end.i ]
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.loopexit, %while.end.i
  %pos.134.i = phi i64 [ %pos.040.i, %while.end.i ], [ %pos.137.i.lcssa, %if.then.i.loopexit ]
  %sub7.i = add i64 %pos.134.i, 1
  %add8.i = sub i64 %sub7.i, %call.i
  %arrayidx9.i = getelementptr inbounds i8, i8* %41, i64 %add8.i
  %call10.i = tail call i32 @strncmp(i8* %0, i8* %arrayidx9.i, i64 %call.i) #4
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %strsearch.exit, label %while.cond.backedge.i

while.cond.backedge.i.loopexit:                   ; preds = %while.cond1.i
  %add.i.lcssa54 = phi i64 [ %add.i, %while.cond1.i ]
  %.lcssa53 = phi i64 [ %43, %while.cond1.i ]
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %while.cond.backedge.i.loopexit, %if.then.i, %while.end.i
  %pos.0.be.i = phi i64 [ %pos.040.i, %while.end.i ], [ %sub7.i, %if.then.i ], [ %add.i.lcssa54, %while.cond.backedge.i.loopexit ]
  %shift.0.be.i = phi i64 [ %shift.041.i, %while.end.i ], [ 0, %if.then.i ], [ %.lcssa53, %while.cond.backedge.i.loopexit ]
  %cmp.i = icmp ult i64 %pos.0.be.i, %call.i24
  br i1 %cmp.i, label %while.cond1.preheader.i, label %strsearch.exit.thread.loopexit

strsearch.exit.thread.loopexit:                   ; preds = %while.cond.backedge.i
  br label %strsearch.exit.thread

strsearch.exit.thread:                            ; preds = %strsearch.exit.thread.loopexit, %init_search.exit
  %call1031 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i64 0, i64 0), i8* %0, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* %41)
  br label %if.end

strsearch.exit:                                   ; preds = %if.then.i
  %arrayidx9.i.lcssa = phi i8* [ %arrayidx9.i, %if.then.i ]
  %tobool7 = icmp ne i8* %arrayidx9.i.lcssa, null
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.105, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0)
  %call10 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.104, i64 0, i64 0), i8* %0, i8* %cond, i8* %41)
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %strsearch.exit
  %call12 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i64 0, i64 0), i8* nonnull %arrayidx9.i.lcssa)
  br label %if.end

if.end:                                           ; preds = %strsearch.exit.thread, %if.then, %strsearch.exit
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !11
  %call.i28 = tail call i32 @_IO_putc(i32 10, %struct._IO_FILE* %44) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %tobool = icmp eq i64 %indvars.iv.next, 57
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) #3

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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.vectorize.width", i32 1}
!7 = !{!"llvm.loop.interleave.count", i32 1}
!8 = !{!3, !3, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !3, i64 0}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !10}
