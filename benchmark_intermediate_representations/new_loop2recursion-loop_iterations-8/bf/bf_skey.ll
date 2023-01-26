; ModuleID = './benchmark_intermediate_representations/new_loop2recursion-loop_iterations-8/bf/bf_skey.ll.temp'
source_filename = "./benchmark_intermediate_representations/baseline/bf/bf_skey.ll"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@bf_init = internal unnamed_addr constant %struct.bf_key_st { [18 x i64] [i64 608135816, i64 2242054355, i64 320440878, i64 57701188, i64 2752067618, i64 698298832, i64 137296536, i64 3964562569, i64 1160258022, i64 953160567, i64 3193202383, i64 887688300, i64 3232508343, i64 3380367581, i64 1065670069, i64 3041331479, i64 2450970073, i64 2306472731], [1024 x i64] [i64 3509652390, i64 2564797868, i64 805139163, i64 3491422135, i64 3101798381, i64 1780907670, i64 3128725573, i64 4046225305, i64 614570311, i64 3012652279, i64 134345442, i64 2240740374, i64 1667834072, i64 1901547113, i64 2757295779, i64 4103290238, i64 227898511, i64 1921955416, i64 1904987480, i64 2182433518, i64 2069144605, i64 3260701109, i64 2620446009, i64 720527379, i64 3318853667, i64 677414384, i64 3393288472, i64 3101374703, i64 2390351024, i64 1614419982, i64 1822297739, i64 2954791486, i64 3608508353, i64 3174124327, i64 2024746970, i64 1432378464, i64 3864339955, i64 2857741204, i64 1464375394, i64 1676153920, i64 1439316330, i64 715854006, i64 3033291828, i64 289532110, i64 2706671279, i64 2087905683, i64 3018724369, i64 1668267050, i64 732546397, i64 1947742710, i64 3462151702, i64 2609353502, i64 2950085171, i64 1814351708, i64 2050118529, i64 680887927, i64 999245976, i64 1800124847, i64 3300911131, i64 1713906067, i64 1641548236, i64 4213287313, i64 1216130144, i64 1575780402, i64 4018429277, i64 3917837745, i64 3693486850, i64 3949271944, i64 596196993, i64 3549867205, i64 258830323, i64 2213823033, i64 772490370, i64 2760122372, i64 1774776394, i64 2652871518, i64 566650946, i64 4142492826, i64 1728879713, i64 2882767088, i64 1783734482, i64 3629395816, i64 2517608232, i64 2874225571, i64 1861159788, i64 326777828, i64 3124490320, i64 2130389656, i64 2716951837, i64 967770486, i64 1724537150, i64 2185432712, i64 2364442137, i64 1164943284, i64 2105845187, i64 998989502, i64 3765401048, i64 2244026483, i64 1075463327, i64 1455516326, i64 1322494562, i64 910128902, i64 469688178, i64 1117454909, i64 936433444, i64 3490320968, i64 3675253459, i64 1240580251, i64 122909385, i64 2157517691, i64 634681816, i64 4142456567, i64 3825094682, i64 3061402683, i64 2540495037, i64 79693498, i64 3249098678, i64 1084186820, i64 1583128258, i64 426386531, i64 1761308591, i64 1047286709, i64 322548459, i64 995290223, i64 1845252383, i64 2603652396, i64 3431023940, i64 2942221577, i64 3202600964, i64 3727903485, i64 1712269319, i64 422464435, i64 3234572375, i64 1170764815, i64 3523960633, i64 3117677531, i64 1434042557, i64 442511882, i64 3600875718, i64 1076654713, i64 1738483198, i64 4213154764, i64 2393238008, i64 3677496056, i64 1014306527, i64 4251020053, i64 793779912, i64 2902807211, i64 842905082, i64 4246964064, i64 1395751752, i64 1040244610, i64 2656851899, i64 3396308128, i64 445077038, i64 3742853595, i64 3577915638, i64 679411651, i64 2892444358, i64 2354009459, i64 1767581616, i64 3150600392, i64 3791627101, i64 3102740896, i64 284835224, i64 4246832056, i64 1258075500, i64 768725851, i64 2589189241, i64 3069724005, i64 3532540348, i64 1274779536, i64 3789419226, i64 2764799539, i64 1660621633, i64 3471099624, i64 4011903706, i64 913787905, i64 3497959166, i64 737222580, i64 2514213453, i64 2928710040, i64 3937242737, i64 1804850592, i64 3499020752, i64 2949064160, i64 2386320175, i64 2390070455, i64 2415321851, i64 4061277028, i64 2290661394, i64 2416832540, i64 1336762016, i64 1754252060, i64 3520065937, i64 3014181293, i64 791618072, i64 3188594551, i64 3933548030, i64 2332172193, i64 3852520463, i64 3043980520, i64 413987798, i64 3465142937, i64 3030929376, i64 4245938359, i64 2093235073, i64 3534596313, i64 375366246, i64 2157278981, i64 2479649556, i64 555357303, i64 3870105701, i64 2008414854, i64 3344188149, i64 4221384143, i64 3956125452, i64 2067696032, i64 3594591187, i64 2921233993, i64 2428461, i64 544322398, i64 577241275, i64 1471733935, i64 610547355, i64 4027169054, i64 1432588573, i64 1507829418, i64 2025931657, i64 3646575487, i64 545086370, i64 48609733, i64 2200306550, i64 1653985193, i64 298326376, i64 1316178497, i64 3007786442, i64 2064951626, i64 458293330, i64 2589141269, i64 3591329599, i64 3164325604, i64 727753846, i64 2179363840, i64 146436021, i64 1461446943, i64 4069977195, i64 705550613, i64 3059967265, i64 3887724982, i64 4281599278, i64 3313849956, i64 1404054877, i64 2845806497, i64 146425753, i64 1854211946, i64 1266315497, i64 3048417604, i64 3681880366, i64 3289982499, i64 2909710000, i64 1235738493, i64 2632868024, i64 2414719590, i64 3970600049, i64 1771706367, i64 1449415276, i64 3266420449, i64 422970021, i64 1963543593, i64 2690192192, i64 3826793022, i64 1062508698, i64 1531092325, i64 1804592342, i64 2583117782, i64 2714934279, i64 4024971509, i64 1294809318, i64 4028980673, i64 1289560198, i64 2221992742, i64 1669523910, i64 35572830, i64 157838143, i64 1052438473, i64 1016535060, i64 1802137761, i64 1753167236, i64 1386275462, i64 3080475397, i64 2857371447, i64 1040679964, i64 2145300060, i64 2390574316, i64 1461121720, i64 2956646967, i64 4031777805, i64 4028374788, i64 33600511, i64 2920084762, i64 1018524850, i64 629373528, i64 3691585981, i64 3515945977, i64 2091462646, i64 2486323059, i64 586499841, i64 988145025, i64 935516892, i64 3367335476, i64 2599673255, i64 2839830854, i64 265290510, i64 3972581182, i64 2759138881, i64 3795373465, i64 1005194799, i64 847297441, i64 406762289, i64 1314163512, i64 1332590856, i64 1866599683, i64 4127851711, i64 750260880, i64 613907577, i64 1450815602, i64 3165620655, i64 3734664991, i64 3650291728, i64 3012275730, i64 3704569646, i64 1427272223, i64 778793252, i64 1343938022, i64 2676280711, i64 2052605720, i64 1946737175, i64 3164576444, i64 3914038668, i64 3967478842, i64 3682934266, i64 1661551462, i64 3294938066, i64 4011595847, i64 840292616, i64 3712170807, i64 616741398, i64 312560963, i64 711312465, i64 1351876610, i64 322626781, i64 1910503582, i64 271666773, i64 2175563734, i64 1594956187, i64 70604529, i64 3617834859, i64 1007753275, i64 1495573769, i64 4069517037, i64 2549218298, i64 2663038764, i64 504708206, i64 2263041392, i64 3941167025, i64 2249088522, i64 1514023603, i64 1998579484, i64 1312622330, i64 694541497, i64 2582060303, i64 2151582166, i64 1382467621, i64 776784248, i64 2618340202, i64 3323268794, i64 2497899128, i64 2784771155, i64 503983604, i64 4076293799, i64 907881277, i64 423175695, i64 432175456, i64 1378068232, i64 4145222326, i64 3954048622, i64 3938656102, i64 3820766613, i64 2793130115, i64 2977904593, i64 26017576, i64 3274890735, i64 3194772133, i64 1700274565, i64 1756076034, i64 4006520079, i64 3677328699, i64 720338349, i64 1533947780, i64 354530856, i64 688349552, i64 3973924725, i64 1637815568, i64 332179504, i64 3949051286, i64 53804574, i64 2852348879, i64 3044236432, i64 1282449977, i64 3583942155, i64 3416972820, i64 4006381244, i64 1617046695, i64 2628476075, i64 3002303598, i64 1686838959, i64 431878346, i64 2686675385, i64 1700445008, i64 1080580658, i64 1009431731, i64 832498133, i64 3223435511, i64 2605976345, i64 2271191193, i64 2516031870, i64 1648197032, i64 4164389018, i64 2548247927, i64 300782431, i64 375919233, i64 238389289, i64 3353747414, i64 2531188641, i64 2019080857, i64 1475708069, i64 455242339, i64 2609103871, i64 448939670, i64 3451063019, i64 1395535956, i64 2413381860, i64 1841049896, i64 1491858159, i64 885456874, i64 4264095073, i64 4001119347, i64 1565136089, i64 3898914787, i64 1108368660, i64 540939232, i64 1173283510, i64 2745871338, i64 3681308437, i64 4207628240, i64 3343053890, i64 4016749493, i64 1699691293, i64 1103962373, i64 3625875870, i64 2256883143, i64 3830138730, i64 1031889488, i64 3479347698, i64 1535977030, i64 4236805024, i64 3251091107, i64 2132092099, i64 1774941330, i64 1199868427, i64 1452454533, i64 157007616, i64 2904115357, i64 342012276, i64 595725824, i64 1480756522, i64 206960106, i64 497939518, i64 591360097, i64 863170706, i64 2375253569, i64 3596610801, i64 1814182875, i64 2094937945, i64 3421402208, i64 1082520231, i64 3463918190, i64 2785509508, i64 435703966, i64 3908032597, i64 1641649973, i64 2842273706, i64 3305899714, i64 1510255612, i64 2148256476, i64 2655287854, i64 3276092548, i64 4258621189, i64 236887753, i64 3681803219, i64 274041037, i64 1734335097, i64 3815195456, i64 3317970021, i64 1899903192, i64 1026095262, i64 4050517792, i64 356393447, i64 2410691914, i64 3873677099, i64 3682840055, i64 3913112168, i64 2491498743, i64 4132185628, i64 2489919796, i64 1091903735, i64 1979897079, i64 3170134830, i64 3567386728, i64 3557303409, i64 857797738, i64 1136121015, i64 1342202287, i64 507115054, i64 2535736646, i64 337727348, i64 3213592640, i64 1301675037, i64 2528481711, i64 1895095763, i64 1721773893, i64 3216771564, i64 62756741, i64 2142006736, i64 835421444, i64 2531993523, i64 1442658625, i64 3659876326, i64 2882144922, i64 676362277, i64 1392781812, i64 170690266, i64 3921047035, i64 1759253602, i64 3611846912, i64 1745797284, i64 664899054, i64 1329594018, i64 3901205900, i64 3045908486, i64 2062866102, i64 2865634940, i64 3543621612, i64 3464012697, i64 1080764994, i64 553557557, i64 3656615353, i64 3996768171, i64 991055499, i64 499776247, i64 1265440854, i64 648242737, i64 3940784050, i64 980351604, i64 3713745714, i64 1749149687, i64 3396870395, i64 4211799374, i64 3640570775, i64 1161844396, i64 3125318951, i64 1431517754, i64 545492359, i64 4268468663, i64 3499529547, i64 1437099964, i64 2702547544, i64 3433638243, i64 2581715763, i64 2787789398, i64 1060185593, i64 1593081372, i64 2418618748, i64 4260947970, i64 69676912, i64 2159744348, i64 86519011, i64 2512459080, i64 3838209314, i64 1220612927, i64 3339683548, i64 133810670, i64 1090789135, i64 1078426020, i64 1569222167, i64 845107691, i64 3583754449, i64 4072456591, i64 1091646820, i64 628848692, i64 1613405280, i64 3757631651, i64 526609435, i64 236106946, i64 48312990, i64 2942717905, i64 3402727701, i64 1797494240, i64 859738849, i64 992217954, i64 4005476642, i64 2243076622, i64 3870952857, i64 3732016268, i64 765654824, i64 3490871365, i64 2511836413, i64 1685915746, i64 3888969200, i64 1414112111, i64 2273134842, i64 3281911079, i64 4080962846, i64 172450625, i64 2569994100, i64 980381355, i64 4109958455, i64 2819808352, i64 2716589560, i64 2568741196, i64 3681446669, i64 3329971472, i64 1835478071, i64 660984891, i64 3704678404, i64 4045999559, i64 3422617507, i64 3040415634, i64 1762651403, i64 1719377915, i64 3470491036, i64 2693910283, i64 3642056355, i64 3138596744, i64 1364962596, i64 2073328063, i64 1983633131, i64 926494387, i64 3423689081, i64 2150032023, i64 4096667949, i64 1749200295, i64 3328846651, i64 309677260, i64 2016342300, i64 1779581495, i64 3079819751, i64 111262694, i64 1274766160, i64 443224088, i64 298511866, i64 1025883608, i64 3806446537, i64 1145181785, i64 168956806, i64 3641502830, i64 3584813610, i64 1689216846, i64 3666258015, i64 3200248200, i64 1692713982, i64 2646376535, i64 4042768518, i64 1618508792, i64 1610833997, i64 3523052358, i64 4130873264, i64 2001055236, i64 3610705100, i64 2202168115, i64 4028541809, i64 2961195399, i64 1006657119, i64 2006996926, i64 3186142756, i64 1430667929, i64 3210227297, i64 1314452623, i64 4074634658, i64 4101304120, i64 2273951170, i64 1399257539, i64 3367210612, i64 3027628629, i64 1190975929, i64 2062231137, i64 2333990788, i64 2221543033, i64 2438960610, i64 1181637006, i64 548689776, i64 2362791313, i64 3372408396, i64 3104550113, i64 3145860560, i64 296247880, i64 1970579870, i64 3078560182, i64 3769228297, i64 1714227617, i64 3291629107, i64 3898220290, i64 166772364, i64 1251581989, i64 493813264, i64 448347421, i64 195405023, i64 2709975567, i64 677966185, i64 3703036547, i64 1463355134, i64 2715995803, i64 1338867538, i64 1343315457, i64 2802222074, i64 2684532164, i64 233230375, i64 2599980071, i64 2000651841, i64 3277868038, i64 1638401717, i64 4028070440, i64 3237316320, i64 6314154, i64 819756386, i64 300326615, i64 590932579, i64 1405279636, i64 3267499572, i64 3150704214, i64 2428286686, i64 3959192993, i64 3461946742, i64 1862657033, i64 1266418056, i64 963775037, i64 2089974820, i64 2263052895, i64 1917689273, i64 448879540, i64 3550394620, i64 3981727096, i64 150775221, i64 3627908307, i64 1303187396, i64 508620638, i64 2975983352, i64 2726630617, i64 1817252668, i64 1876281319, i64 1457606340, i64 908771278, i64 3720792119, i64 3617206836, i64 2455994898, i64 1729034894, i64 1080033504, i64 976866871, i64 3556439503, i64 2881648439, i64 1522871579, i64 1555064734, i64 1336096578, i64 3548522304, i64 2579274686, i64 3574697629, i64 3205460757, i64 3593280638, i64 3338716283, i64 3079412587, i64 564236357, i64 2993598910, i64 1781952180, i64 1464380207, i64 3163844217, i64 3332601554, i64 1699332808, i64 1393555694, i64 1183702653, i64 3581086237, i64 1288719814, i64 691649499, i64 2847557200, i64 2895455976, i64 3193889540, i64 2717570544, i64 1781354906, i64 1676643554, i64 2592534050, i64 3230253752, i64 1126444790, i64 2770207658, i64 2633158820, i64 2210423226, i64 2615765581, i64 2414155088, i64 3127139286, i64 673620729, i64 2805611233, i64 1269405062, i64 4015350505, i64 3341807571, i64 4149409754, i64 1057255273, i64 2012875353, i64 2162469141, i64 2276492801, i64 2601117357, i64 993977747, i64 3918593370, i64 2654263191, i64 753973209, i64 36408145, i64 2530585658, i64 25011837, i64 3520020182, i64 2088578344, i64 530523599, i64 2918365339, i64 1524020338, i64 1518925132, i64 3760827505, i64 3759777254, i64 1202760957, i64 3985898139, i64 3906192525, i64 674977740, i64 4174734889, i64 2031300136, i64 2019492241, i64 3983892565, i64 4153806404, i64 3822280332, i64 352677332, i64 2297720250, i64 60907813, i64 90501309, i64 3286998549, i64 1016092578, i64 2535922412, i64 2839152426, i64 457141659, i64 509813237, i64 4120667899, i64 652014361, i64 1966332200, i64 2975202805, i64 55981186, i64 2327461051, i64 676427537, i64 3255491064, i64 2882294119, i64 3433927263, i64 1307055953, i64 942726286, i64 933058658, i64 2468411793, i64 3933900994, i64 4215176142, i64 1361170020, i64 2001714738, i64 2830558078, i64 3274259782, i64 1222529897, i64 1679025792, i64 2729314320, i64 3714953764, i64 1770335741, i64 151462246, i64 3013232138, i64 1682292957, i64 1483529935, i64 471910574, i64 1539241949, i64 458788160, i64 3436315007, i64 1807016891, i64 3718408830, i64 978976581, i64 1043663428, i64 3165965781, i64 1927990952, i64 4200891579, i64 2372276910, i64 3208408903, i64 3533431907, i64 1412390302, i64 2931980059, i64 4132332400, i64 1947078029, i64 3881505623, i64 4168226417, i64 2941484381, i64 1077988104, i64 1320477388, i64 886195818, i64 18198404, i64 3786409000, i64 2509781533, i64 112762804, i64 3463356488, i64 1866414978, i64 891333506, i64 18488651, i64 661792760, i64 1628790961, i64 3885187036, i64 3141171499, i64 876946877, i64 2693282273, i64 1372485963, i64 791857591, i64 2686433993, i64 3759982718, i64 3167212022, i64 3472953795, i64 2716379847, i64 445679433, i64 3561995674, i64 3504004811, i64 3574258232, i64 54117162, i64 3331405415, i64 2381918588, i64 3769707343, i64 4154350007, i64 1140177722, i64 4074052095, i64 668550556, i64 3214352940, i64 367459370, i64 261225585, i64 2610173221, i64 4209349473, i64 3468074219, i64 3265815641, i64 314222801, i64 3066103646, i64 3808782860, i64 282218597, i64 3406013506, i64 3773591054, i64 379116347, i64 1285071038, i64 846784868, i64 2669647154, i64 3771962079, i64 3550491691, i64 2305946142, i64 453669953, i64 1268987020, i64 3317592352, i64 3279303384, i64 3744833421, i64 2610507566, i64 3859509063, i64 266596637, i64 3847019092, i64 517658769, i64 3462560207, i64 3443424879, i64 370717030, i64 4247526661, i64 2224018117, i64 4143653529, i64 4112773975, i64 2788324899, i64 2477274417, i64 1456262402, i64 2901442914, i64 1517677493, i64 1846949527, i64 2295493580, i64 3734397586, i64 2176403920, i64 1280348187, i64 1908823572, i64 3871786941, i64 846861322, i64 1172426758, i64 3287448474, i64 3383383037, i64 1655181056, i64 3139813346, i64 901632758, i64 1897031941, i64 2986607138, i64 3066810236, i64 3447102507, i64 1393639104, i64 373351379, i64 950779232, i64 625454576, i64 3124240540, i64 4148612726, i64 2007998917, i64 544563296, i64 2244738638, i64 2330496472, i64 2058025392, i64 1291430526, i64 424198748, i64 50039436, i64 29584100, i64 3605783033, i64 2429876329, i64 2791104160, i64 1057563949, i64 3255363231, i64 3075367218, i64 3463963227, i64 1469046755, i64 985887462] }, align 8
@"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$0" = dso_local global %struct.bf_key_st* null
@"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$1" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$2" = dso_local global i8* null
@"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$3" = dso_local global <2 x i64>* null
@"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$4" = dso_local global i64* null

; Function Attrs: nounwind uwtable
define void @BF_set_key(%struct.bf_key_st* %key, i32 %len, i8* readonly %data) #0 {
entry:
  %in = alloca <2 x i64>, align 16
  %i = bitcast <2 x i64>* %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %i) #5
  %i1 = bitcast %struct.bf_key_st* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %i1, i8* align 1 bitcast (%struct.bf_key_st* @bf_init to i8*), i64 8336, i1 false)
  %cmp = icmp sgt i32 %len, 72
  %.len = select i1 %cmp, i32 72, i32 %len
  %idxprom = sext i32 %.len to i64
  %arrayidx = getelementptr inbounds i8, i8* %data, i64 %idxprom
  br label %"BF_set_key$1_initialize_context"

"BF_set_key$1_initialize_context":                ; preds = %entry
  store %struct.bf_key_st* %key, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$0", align 8
  store i8* %arrayidx, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$1", align 8
  store i8* %data, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$2", align 8
  br label %"BF_set_key$1_call_recursive_function"

"BF_set_key$1_call_recursive_function":           ; preds = %"BF_set_key$1_initialize_context"
  call void @"BF_set_key$1"(i8* %data, i64 608135816, i64 0)
  br label %for.end

for.end:                                          ; preds = %"BF_set_key$1_call_recursive_function"
  %arrayidx30 = getelementptr inbounds <2 x i64>, <2 x i64>* %in, i64 0, i64 0
  %i2 = bitcast <2 x i64>* %in to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %i2, i8 0, i64 16, i1 false)
  call void @BF_encrypt(i64* %arrayidx30, %struct.bf_key_st* nonnull %key, i32 1) #5
  %i3 = load <2 x i64>, <2 x i64>* %in, align 16, !tbaa !1
  %i4 = bitcast %struct.bf_key_st* %key to <2 x i64>*
  store <2 x i64> %i3, <2 x i64>* %i4, align 8, !tbaa !1
  call void @BF_encrypt(i64* %arrayidx30, %struct.bf_key_st* nonnull %key, i32 1) #5
  %arrayidx39.1 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 2
  %i5 = load <2 x i64>, <2 x i64>* %in, align 16, !tbaa !1
  %i6 = bitcast i64* %arrayidx39.1 to <2 x i64>*
  store <2 x i64> %i5, <2 x i64>* %i6, align 8, !tbaa !1
  call void @BF_encrypt(i64* %arrayidx30, %struct.bf_key_st* nonnull %key, i32 1) #5
  %arrayidx39.2 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 4
  %i7 = load <2 x i64>, <2 x i64>* %in, align 16, !tbaa !1
  %i8 = bitcast i64* %arrayidx39.2 to <2 x i64>*
  store <2 x i64> %i7, <2 x i64>* %i8, align 8, !tbaa !1
  call void @BF_encrypt(i64* %arrayidx30, %struct.bf_key_st* nonnull %key, i32 1) #5
  %arrayidx39.3 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 6
  %i9 = load <2 x i64>, <2 x i64>* %in, align 16, !tbaa !1
  %i10 = bitcast i64* %arrayidx39.3 to <2 x i64>*
  store <2 x i64> %i9, <2 x i64>* %i10, align 8, !tbaa !1
  call void @BF_encrypt(i64* %arrayidx30, %struct.bf_key_st* nonnull %key, i32 1) #5
  %arrayidx39.4 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 8
  %i11 = load <2 x i64>, <2 x i64>* %in, align 16, !tbaa !1
  %i12 = bitcast i64* %arrayidx39.4 to <2 x i64>*
  store <2 x i64> %i11, <2 x i64>* %i12, align 8, !tbaa !1
  call void @BF_encrypt(i64* %arrayidx30, %struct.bf_key_st* nonnull %key, i32 1) #5
  %arrayidx39.5 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 10
  %i13 = load <2 x i64>, <2 x i64>* %in, align 16, !tbaa !1
  %i14 = bitcast i64* %arrayidx39.5 to <2 x i64>*
  store <2 x i64> %i13, <2 x i64>* %i14, align 8, !tbaa !1
  call void @BF_encrypt(i64* %arrayidx30, %struct.bf_key_st* nonnull %key, i32 1) #5
  %arrayidx39.6 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 12
  %i15 = load <2 x i64>, <2 x i64>* %in, align 16, !tbaa !1
  %i16 = bitcast i64* %arrayidx39.6 to <2 x i64>*
  store <2 x i64> %i15, <2 x i64>* %i16, align 8, !tbaa !1
  call void @BF_encrypt(i64* %arrayidx30, %struct.bf_key_st* nonnull %key, i32 1) #5
  %arrayidx39.7 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 14
  %i17 = load <2 x i64>, <2 x i64>* %in, align 16, !tbaa !1
  %i18 = bitcast i64* %arrayidx39.7 to <2 x i64>*
  store <2 x i64> %i17, <2 x i64>* %i18, align 8, !tbaa !1
  call void @BF_encrypt(i64* %arrayidx30, %struct.bf_key_st* nonnull %key, i32 1) #5
  %arrayidx39.8 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 16
  %i19 = load <2 x i64>, <2 x i64>* %in, align 16, !tbaa !1
  %i20 = bitcast i64* %arrayidx39.8 to <2 x i64>*
  store <2 x i64> %i19, <2 x i64>* %i20, align 8, !tbaa !1
  br label %"BF_set_key$0_initialize_context"

"BF_set_key$0_initialize_context":                ; preds = %for.end
  store <2 x i64>* %in, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$3", align 8
  store i64* %arrayidx30, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$4", align 8
  store %struct.bf_key_st* %key, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$0", align 8
  br label %"BF_set_key$0_call_recursive_function"

"BF_set_key$0_call_recursive_function":           ; preds = %"BF_set_key$0_initialize_context"
  call void @"BF_set_key$0"(i64 0)
  br label %for.end61

for.end61:                                        ; preds = %"BF_set_key$0_call_recursive_function"
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %i) #5
  ret void
}

declare void @BF_encrypt(i64*, %struct.bf_key_st*, i32) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

define void @"BF_set_key$1"(i8* %arg, i64 %arg1, i64 %arg2) {
"BF_set_key$1_preheader_in_recursion":
  br label %"BF_set_key$1_exiting$0"

"BF_set_key$1_exiting$0":                         ; preds = %"BF_set_key$1_increment_loop_counter$0", %"BF_set_key$1_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"BF_set_key$1_preheader_in_recursion" ], [ %i17, %"BF_set_key$1_increment_loop_counter$0" ]
  %i = phi i64 [ %arg1, %"BF_set_key$1_preheader_in_recursion" ], [ %.pre, %"BF_set_key$1_increment_loop_counter$0" ]
  %indvars.iv115 = phi i64 [ %arg2, %"BF_set_key$1_preheader_in_recursion" ], [ %indvars.iv.next116, %"BF_set_key$1_increment_loop_counter$0" ]
  %d.0110 = phi i8* [ %arg, %"BF_set_key$1_preheader_in_recursion" ], [ %d.4, %"BF_set_key$1_increment_loop_counter$0" ]
  %incdec.ptr = getelementptr inbounds i8, i8* %d.0110, i64 1
  %i3 = load i8, i8* %d.0110, align 1, !tbaa !5
  %conv = zext i8 %i3 to i64
  %i4 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$1", align 8
  %cmp2 = icmp ult i8* %incdec.ptr, %i4
  %i5 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$2", align 8
  %incdec.ptr.data = select i1 %cmp2, i8* %incdec.ptr, i8* %i5
  %shl = shl nuw nsw i64 %conv, 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %incdec.ptr.data, i64 1
  %i6 = load i8, i8* %incdec.ptr.data, align 1, !tbaa !5
  %conv7 = zext i8 %i6 to i64
  %or = or i64 %shl, %conv7
  %i7 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$1", align 8
  %cmp8 = icmp ult i8* %incdec.ptr6, %i7
  %i8 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$2", align 8
  %d.2 = select i1 %cmp8, i8* %incdec.ptr6, i8* %i8
  %shl12 = shl nuw nsw i64 %or, 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %d.2, i64 1
  %i9 = load i8, i8* %d.2, align 1, !tbaa !5
  %conv14 = zext i8 %i9 to i64
  %or15 = or i64 %shl12, %conv14
  %i10 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$1", align 8
  %cmp16 = icmp ult i8* %incdec.ptr13, %i10
  %i11 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$2", align 8
  %incdec.ptr13.data = select i1 %cmp16, i8* %incdec.ptr13, i8* %i11
  %shl20 = shl nuw nsw i64 %or15, 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %incdec.ptr13.data, i64 1
  %i12 = load i8, i8* %incdec.ptr13.data, align 1, !tbaa !5
  %conv22 = zext i8 %i12 to i64
  %or23 = or i64 %shl20, %conv22
  %i13 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$0", align 8
  %arrayidx29 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %i13, i64 0, i32 0, i64 %indvars.iv115
  %xor = xor i64 %or23, %i
  store i64 %xor, i64* %arrayidx29, align 8, !tbaa !1
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %exitcond = icmp eq i64 %indvars.iv.next116, 18
  br i1 %exitcond, label %"BF_set_key$1_return_from_recursive_function$0", label %"BF_set_key$1_latch$0"

"BF_set_key$1_latch$0":                           ; preds = %"BF_set_key$1_exiting$0"
  %i14 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$1", align 8
  %cmp24 = icmp ult i8* %incdec.ptr21, %i14
  %i15 = load i8*, i8** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$2", align 8
  %d.4 = select i1 %cmp24, i8* %incdec.ptr21, i8* %i15
  %i16 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$0", align 8
  %arrayidx29.phi.trans.insert = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %i16, i64 0, i32 0, i64 %indvars.iv.next116
  %.pre = load i64, i64* %arrayidx29.phi.trans.insert, align 8, !tbaa !1
  br label %"BF_set_key$1_increment_loop_counter$0"

"BF_set_key$1_increment_loop_counter$0":          ; preds = %"BF_set_key$1_latch$0"
  %i17 = add i8 %loop_counter, 1
  %i18 = icmp ult i8 %i17, 8
  br i1 %i18, label %"BF_set_key$1_exiting$0", label %"BF_set_key$1_increment_depth_counter"

"BF_set_key$1_increment_depth_counter":           ; preds = %"BF_set_key$1_increment_loop_counter$0"
  %d.4.lcssa = phi i8* [ %d.4, %"BF_set_key$1_increment_loop_counter$0" ]
  %.pre.lcssa = phi i64 [ %.pre, %"BF_set_key$1_increment_loop_counter$0" ]
  %indvars.iv.next116.lcssa1 = phi i64 [ %indvars.iv.next116, %"BF_set_key$1_increment_loop_counter$0" ]
  br label %"BF_set_key$1_recursively_call_function"

"BF_set_key$1_recursively_call_function":         ; preds = %"BF_set_key$1_increment_depth_counter"
  call void @"BF_set_key$1"(i8* %d.4.lcssa, i64 %.pre.lcssa, i64 %indvars.iv.next116.lcssa1)
  ret void

"BF_set_key$1_return_from_recursive_function$0":  ; preds = %"BF_set_key$1_exiting$0"
  ret void
}

define void @"BF_set_key$0"(i64 %arg) {
"BF_set_key$0_preheader_in_recursion":
  br label %"BF_set_key$0_latch$0"

"BF_set_key$0_latch$0":                           ; preds = %"BF_set_key$0_increment_loop_counter$0", %"BF_set_key$0_preheader_in_recursion"
  %loop_counter = phi i8 [ 0, %"BF_set_key$0_preheader_in_recursion" ], [ %i6, %"BF_set_key$0_increment_loop_counter$0" ]
  %indvars.iv = phi i64 [ %arg, %"BF_set_key$0_preheader_in_recursion" ], [ %indvars.iv.next, %"BF_set_key$0_increment_loop_counter$0" ]
  %i = load i64*, i64** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$4", align 8
  %i1 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$0", align 8
  call void @BF_encrypt(i64* %i, %struct.bf_key_st* nonnull %i1, i32 1) #5
  %i2 = load %struct.bf_key_st*, %struct.bf_key_st** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$0", align 8
  %arrayidx54 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %i2, i64 0, i32 1, i64 %indvars.iv
  %i3 = load <2 x i64>*, <2 x i64>** @"./benchmark_intermediate_representations/baseline/bf/bf_skey.ll_invariant_variable$3", align 8
  %i4 = load <2 x i64>, <2 x i64>* %i3, align 16, !tbaa !1
  %i5 = bitcast i64* %arrayidx54 to <2 x i64>*
  store <2 x i64> %i4, <2 x i64>* %i5, align 8, !tbaa !1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp48 = icmp slt i64 %indvars.iv.next, 1024
  br i1 %cmp48, label %"BF_set_key$0_increment_loop_counter$0", label %"BF_set_key$0_return_from_recursive_function$0"

"BF_set_key$0_increment_loop_counter$0":          ; preds = %"BF_set_key$0_latch$0"
  %i6 = add i8 %loop_counter, 1
  %i7 = icmp ult i8 %i6, 8
  br i1 %i7, label %"BF_set_key$0_latch$0", label %"BF_set_key$0_increment_depth_counter"

"BF_set_key$0_increment_depth_counter":           ; preds = %"BF_set_key$0_increment_loop_counter$0"
  %indvars.iv.next.lcssa1 = phi i64 [ %indvars.iv.next, %"BF_set_key$0_increment_loop_counter$0" ]
  br label %"BF_set_key$0_recursively_call_function"

"BF_set_key$0_recursively_call_function":         ; preds = %"BF_set_key$0_increment_depth_counter"
  call void @"BF_set_key$0"(i64 %indvars.iv.next.lcssa1)
  ret void

"BF_set_key$0_return_from_recursive_function$0":  ; preds = %"BF_set_key$0_latch$0"
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
