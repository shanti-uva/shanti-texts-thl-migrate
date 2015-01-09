# Grab HTML essays from THL in JSON 

use strict;
use LWP::Simple;
use utf8;
use open ':encoding(utf8)';

# A hash to store KMap IDs, group by domain
my %kmaps = ();

# Place KMap IDs with documents
$kmaps{'places'}   = [1, 179, 317, 433, 486, 516, 534, 570, 588, 634, 637, 674,
749, 782, 807, 838, 884, 1063, 1064, 1068, 1070, 1073, 1075, 1084, 1085, 1087,
1089, 1090, 1091, 1094, 1098, 1144, 1147, 1165, 1236, 2541, 2675, 3507, 3718,
3862, 3873, 4439, 4874, 5224, 5225, 5226, 5228, 5230, 5231, 5233, 5234, 5235,
5298, 10656, 11613, 13734, 13735, 13740, 15344, 15345, 15346, 15347, 15348,
15354, 15355, 15356, 15369, 15372, 15373, 15374, 15375, 15376, 15389, 15401,
15404, 15405, 15406, 15407, 15409, 15410, 15411, 15412, 15413, 15414, 15415,
15416, 15417, 15418, 15419, 15420, 15421, 15422, 15423, 15424, 15425, 15426,
15427, 15428, 15432, 15433, 15434, 15435, 15436, 15437, 15438, 15439, 15440,
15441, 15442, 15443, 15444, 15445, 15446, 15447, 15448, 15456, 15466, 15467,
15468, 15470, 15472, 15474, 15476, 15478, 15479, 15480, 15481, 15482, 15483,
15774, 16408, 16409, 16410, 16411, 16412, 16413, 16414, 16415, 16416, 16417,
16418, 16420, 16421, 16422, 16424, 16425, 16426, 16427, 16428, 16429, 16430,
16431, 16432, 16433, 16434, 16435, 16436, 16437, 16438, 16439, 16440, 16441,
16442, 16443, 16444, 16468, 16469, 16470, 16471, 16472, 16473, 16474, 16475,
16476, 16477, 16478, 16479, 16480, 16481, 16482, 16483, 16484, 16485, 16486,
16487, 16488, 16489, 16490, 16491, 16492, 16493, 16494, 16495, 16496, 16497,
16498, 16499, 16500, 16501, 16502, 16503, 16504, 16506, 16507, 16508, 16509,
16510, 16511, 16512, 16513, 16514, 16515, 16516, 16517, 16518, 16519, 16520,
16521, 16522, 16523, 16524, 16525, 16526, 16527, 16528, 16529, 16531, 16532,
16533, 16534, 16535, 16536, 16537, 16538, 16539, 16540, 16541, 16542, 16543,
16544, 16545, 16546, 16548, 16549, 16550, 16551, 16552, 16553, 16554, 16555,
16556, 16557, 16558, 16559, 16560, 16561, 16562, 16563, 16564, 16565, 16566,
16567, 16568, 16569, 16570, 16571, 16572, 16573, 16574, 16575, 16576, 16577,
16578, 16579, 16580, 16581, 16582, 16583, 16584, 16585, 16586, 16587, 16588,
16589, 16590, 16591, 16592, 16593, 16594, 16595, 16596, 16597, 16598, 16599,
16600, 16601, 16602, 16604, 16605, 16606, 16607, 16608, 16609, 16610, 16611,
16612, 16613, 16614, 16615, 16616, 16617, 16618, 16619, 16620, 16621, 16622,
16623, 16624, 16625, 16626, 16627, 16628, 16629, 16630, 16631, 16632, 16633,
16634, 16635, 16636, 16637, 16638, 16639, 16640, 16641, 16642, 16643, 16644,
16645, 16646, 16647, 16648, 16649, 16650, 16651, 16652, 16653, 16654, 16655,
16656, 16657, 16658, 16659, 16660, 16661, 16662, 16663, 16664, 16665, 16666,
16667, 16668, 16669, 16670, 16671, 16672, 16673, 16674, 16675, 16676, 16677,
16678, 16679, 16680, 16681, 16682, 16683, 16684, 16685, 16686, 16687, 16688,
16689, 16690, 16691, 16692, 16693, 16694, 16695, 16696, 16697, 16698, 16699,
16700, 16701, 16702, 16703, 16704, 16705, 16706, 16707, 16708, 16709, 16710,
16711, 16713, 16714, 16715, 16716, 16717, 16718, 16719, 16721, 16722, 16723,
16724, 16725, 16726, 16727, 16730, 16731, 16732, 16733, 16734, 16735, 16736,
16737, 16738, 16739, 16740, 16741, 16742, 16743, 16744, 16746, 16748, 16749,
16750, 16751, 16752, 16754, 16755, 16756, 16757, 16758, 16759, 16760, 16761,
16762, 16763, 16764, 16765, 16766, 16767, 16768, 16770, 16771, 16772, 16773,
16774, 16775, 16776, 16777, 16778, 16781, 16782, 16783, 16784, 16785, 16786,
16787, 16788, 16790, 16791, 16792, 16793, 16794, 16795, 16796, 16797, 16798,
16799, 16801, 16802, 16803, 16804, 16805, 16806, 16807, 16808, 16809, 16810,
16811, 16812, 16814, 16815, 16816, 16817, 16819, 16820, 16821, 16822, 16823,
16824, 16825, 16826, 16827, 16828, 16829, 16830, 16831, 16832, 16835, 16836,
16837, 16838, 16841, 16842, 16843, 16845, 16846, 16847, 16848, 16849, 16850,
16851, 16852, 16853, 16854, 16855, 16856, 16857, 16859, 16860, 16861, 16862,
16863, 16864, 16865, 16866, 16867, 16868, 16869, 16885, 16886, 16887, 16888,
16889, 16890, 16891, 16892, 16894, 16895, 16896, 16897, 16898, 16900, 16901,
16902, 16903, 16904, 16905, 16906, 16907, 16908, 16909, 16910, 16911, 16912,
16913, 16914, 16915, 16916, 16917, 16918, 16919, 16920, 16921, 16922, 16923,
16924, 16925, 16926, 16927, 16928, 16929, 16930, 16931, 16932, 16933, 16934,
16935, 16936, 16937, 16938, 16939, 16940, 16941, 16942, 16943, 16944, 16945,
16946, 16947, 16949, 16950, 16951, 16952, 16953, 16954, 16955, 16956, 16957,
16958, 16959, 16960, 16961, 16962, 17021, 17089, 17093, 17108, 17421, 17447,
22146, 22253, 22297, 22298, 22299, 22300, 22302, 22303, 22304, 22305, 22306,
22307, 22308, 22309, 22335, 22338, 22339, 22340, 22341, 22342, 22343, 22344,
22348, 22349, 22350, 22352, 22353, 22354, 22355, 22356, 22357, 22361, 22363,
22365, 22366, 22367, 22368, 22369, 22370, 22371, 22372, 22373, 22374, 22375,
22377, 22378, 22379, 22380, 22381, 22382, 22384, 22385, 22386, 22387, 22388,
22389, 22390, 22391, 22393, 22395, 22396, 22397, 22401, 22409, 22411, 22412,
22413, 22415, 22416, 22418, 22421, 22424, 22568, 22707, 23155, 23294, 23335,
23404, 23405, 23406, 23407, 23408, 23409, 23410, 23411, 23412, 23413, 23414,
23415, 23416, 23417, 23418, 23419, 23420, 23421, 23422, 23423, 23424, 23425,
23426, 23427, 23428, 23429, 23430, 23431, 23432, 23433, 23434, 23435, 23436,
23437, 23438, 23439, 23440, 23441, 23442, 23443, 23444, 23445, 23446, 23447,
23448, 23449, 23450, 23451, 23452, 23453, 23454, 23455, 23456, 23457, 23458,
23459, 23460, 23461, 23462, 23463, 23464, 23465, 23466, 23467, 23468, 23469,
23470, 23471, 23472, 23473, 23474, 23475, 23476, 23477, 23478, 23479, 23480,
23481, 23482, 23483, 23484, 23485, 23486, 23487, 23488, 23489, 23490, 23492,
23493, 23494, 23497, 23498, 23499, 23500, 23501, 23502, 23503, 23504, 23505,
23506, 23507, 23508, 23509, 23510, 23511, 23512, 23513, 23514, 23515, 23516,
23517, 23518, 23519, 23520, 23521, 23522, 23523, 23524, 23525, 23526, 23527,
23528, 23529, 23530, 23531, 23532, 23533, 23534, 23535, 23536, 23537, 23538,
23539, 23540, 23541, 23542, 23543, 23544, 23545, 23546, 23547, 23548, 23549,
23550, 23551, 23552, 23553, 23554, 23555, 23556, 23557, 23558, 23559, 23560,
23561, 23562, 23563, 23564, 23565, 23566, 23567, 23568, 23569, 23570, 23571,
23572, 23573, 23574, 23575, 23576, 23577, 23578, 23579, 23580, 23581, 23582,
23583, 23584, 23585, 23586, 23587, 23588, 23589, 23590, 23591, 23592, 23593,
23594, 23595, 23596, 23597, 23598, 23599, 23600, 23601, 23602, 23603, 23604,
23605, 23606, 23607, 23608, 23609, 23610, 23611, 23612, 23613, 23614, 23615,
23616, 23617, 23618, 23619, 23620, 23621, 23623, 23624, 23625, 23626, 23627,
23628, 23629, 23630, 23631, 23632, 23633, 23634, 23635, 23636, 23637, 23638,
23639, 23640, 23641, 23642, 23643, 23644, 23653, 23671, 23672, 23673, 23674,
23675, 23676, 23677, 23678, 23679, 23680, 23681, 23682, 23683, 23684, 23685,
23686, 23687, 23688, 23689, 23690, 23691, 23700, 23725, 23731, 23744, 23745,
23748, 23750, 23751, 23752, 23753, 24071, 24106, 24107, 24108, 24111, 24112,
24121, 24122, 24123, 24124, 24125, 24126, 24127, 24128, 24353, 24566, 24567,
24568, 24573, 25107];

# Subject KMap IDs with documents
$kmaps{'subjects'} = [20, 21, 23, 24, 25, 26, 27, 28, 29, 31, 32, 35, 36, 38,
84, 104, 109, 111, 119, 125, 132, 133, 134, 141, 143, 147, 150, 154, 159, 160,
161, 162, 164, 169, 173, 191, 202, 203, 204, 252, 263, 264, 265, 266, 268, 286,
289, 290, 292, 293, 294, 295, 297, 299, 300, 301, 302, 303, 304, 307, 308, 353,
363, 377, 381, 382, 385, 386, 387, 391, 399, 402, 406, 418, 420, 422, 423, 425,
426, 435, 436, 442, 448, 455, 456, 462, 463, 466, 469, 470, 471, 475, 477, 478,
479, 480, 481, 482, 483, 485, 486, 487, 490, 491, 492, 494, 495, 499, 508, 514,
516, 522, 523, 524, 525, 526, 549, 555, 576, 588, 590, 591, 595, 619, 635, 638,
639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 655, 657, 661,
662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 675, 676, 677, 678, 679,
680, 681, 682, 683, 684, 685, 686, 687, 689, 690, 691, 692, 693, 694, 695, 696,
697, 698, 705, 709, 727, 728, 729, 731, 732, 733, 737, 752, 760, 761, 762, 763,
764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779,
780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795,
796, 797, 798, 799, 800, 802, 803, 804, 805, 806, 807, 808, 809, 810, 816, 817,
818, 819, 820, 821, 822, 824, 825, 829, 831, 832, 833, 834, 835, 840, 844, 845,
846, 847, 848, 849, 850, 852, 853, 854, 855, 856, 857, 871, 883, 884, 885, 887,
888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 902, 903, 904,
905, 906, 907, 908, 909, 910, 911, 912, 914, 915, 916, 917, 918, 920, 921, 923,
925, 927, 936, 937, 938, 947, 1063, 1705, 1708, 1709, 1710, 1712, 1713, 1716,
1718, 1724, 1725, 1726, 1727, 1752, 1775, 1776, 1777, 1780, 1781, 1782, 1783,
1784, 1785, 1786, 1787, 1788, 1789, 1790, 1808, 1809, 1811, 1812, 1813, 1814,
1815, 1816, 1817, 1818, 1820, 1821, 1822, 1823, 1824, 1825, 1826, 1828, 1829,
1831, 1832, 1833, 1834, 1835, 1836, 1838, 1839, 1840, 1841, 1842, 1848, 1849,
1851, 1852, 1853, 1854, 1855, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864,
1865, 1866, 1867, 1868, 1869, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877,
1878, 1880, 1881, 1882, 1883, 1884, 1886, 1887, 1888, 1889, 1891, 1892, 1895,
1896, 1897, 1898, 1908, 1909, 1910, 1912, 1913, 1914, 1915, 1916, 1917, 1926,
1927, 1928, 1929, 1930, 1933, 1934, 1938, 1941, 1945, 1949, 1950, 1951, 1952,
1953, 1957, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1968, 1969, 1970,
1971, 1977, 1983, 1986, 1987, 1989, 1992, 1995, 2001, 2002, 2003, 2012, 2015,
2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029,
2030, 2031, 2032, 2033, 2034, 2035, 2036, 2040, 2041, 2042, 2043, 2044, 2045,
2047, 2062, 2063, 2065, 2066, 2080, 2093, 2095, 2108, 2109, 2110, 2111, 2112,
2113, 2114, 2115, 2116, 2117, 2118, 2119, 2121, 2122, 2124, 2125, 2126, 2127,
2128, 2130, 2131, 2132, 2133, 2134, 2135, 2136, 2137, 2138, 2139, 2144, 2150,
2151, 2152, 2153, 2154, 2156, 2157, 2160, 2164, 2165, 2166, 2167, 2168, 2169,
2170, 2171, 2172, 2173, 2174, 2176, 2177, 2178, 2179, 2180, 2181, 2182, 2183,
2184, 2185, 2187, 2188, 2189, 2190, 2191, 2192, 2193, 2194, 2195, 2196, 2197,
2198, 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2210,
2212, 2213, 2214, 2215, 2216, 2217, 2218, 2219, 2220, 2221, 2222, 2223, 2225,
2226, 2227, 2228, 2230, 2231, 2233, 2234, 2236, 2237, 2238, 2239, 2240, 2241,
2242, 2243, 2244, 2245, 2247, 2248, 2249, 2250, 2251, 2252, 2253, 2254, 2255,
2256, 2257, 2258, 2259, 2260, 2261, 2262, 2263, 2264, 2265, 2266, 2267, 2268,
2269, 2270, 2271, 2272, 2273, 2274, 2276, 2277, 2279, 2280, 2281, 2282, 2283,
2284, 2285, 2287, 2288, 2289, 2290, 2291, 2292, 2293, 2294, 2295, 2296, 2297,
2298, 2299, 2300, 2301, 2302, 2303, 2304, 2305, 2306, 2307, 2308, 2309, 2310,
2311, 2312, 2313, 2315, 2316, 2317, 2318, 2319, 2321, 2322, 2323, 2324, 2325,
2326, 2327, 2328, 2329, 2330, 2331, 2332, 2334, 2335, 2336, 2337, 2338, 2340,
2341, 2342, 2343, 2345, 2347, 2348, 2349, 2350, 2351, 2352, 2353, 2354, 2355,
2356, 2357, 2358, 2359, 2360, 2361, 2362, 2363, 2364, 2365, 2366, 2367, 2368,
2369, 2370, 2371, 2372, 2373, 2376, 2377, 2379, 2380, 2382, 2383, 2384, 2385,
2387, 2388, 2389, 2390, 2391, 2392, 2393, 2394, 2395, 2396, 2397, 2398, 2399,
2400, 2401, 2402, 2403, 2404, 2405, 2407, 2408, 2409, 2410, 2411, 2412, 2413,
2414, 2415, 2416, 2417, 2418, 2419, 2420, 2421, 2422, 2423, 2425, 2426, 2428,
2429, 2430, 2431, 2433, 2434, 2435, 2436, 2437, 2439, 2440, 2441, 2442, 2443,
2444, 2445, 2446, 2447, 2448, 2449, 2450, 2451, 2452, 2453, 2454, 2455, 2456,
2457, 2458, 2459, 2460, 2461, 2462, 2463, 2464, 2465, 2466, 2467, 2468, 2469,
2470, 2472, 2473, 2474, 2475, 2476, 2477, 2478, 2479, 2480, 2481, 2482, 2483,
2484, 2485, 2486, 2487, 2488, 2489, 2490, 2491, 2492, 2493, 2494, 2495, 2496,
2497, 2498, 2499, 2501, 2502, 2503, 2504, 2505, 2506, 2507, 2508, 2510, 2511,
2512, 2513, 2514, 2516, 2517, 2519, 2521, 2522, 2523, 2524, 2525, 2526, 2527,
2528, 2529, 2530, 2531, 2532, 2533, 2534, 2535, 2536, 2537, 2538, 2539, 2540,
2541, 2542, 2543, 2545, 2546, 2547, 2548, 2549, 2550, 2552, 2554, 2636, 2695,
2711, 2713, 2714, 2805, 2988, 2992, 3006, 3033, 3070, 3072, 3088, 3101, 3435,
3437, 3438, 3443, 3445, 3655, 3702, 3765, 3808, 3809, 3810, 3811, 3964, 3965,
3967, 3972, 3977, 3979, 3980, 3989, 3990, 3991, 3992, 3993, 3994, 3995, 3996,
3997, 3998, 4000, 4001, 4005, 4008, 4009, 4012, 4091, 4092, 4093, 4095, 4096,
4097, 4098, 4099, 4100, 4101, 4109, 4110, 4139, 4145, 4146, 4173, 4174, 4195,
4196, 4197, 4198, 4287, 4290, 4291, 4292, 4294, 4309, 4315, 4318, 4319, 4320,
4321, 4322, 4323, 4324, 4326, 4327, 4328, 4374, 4427, 4441, 4482, 4483, 4499,
4500, 4501, 4502, 4503, 4504, 4509, 4533, 4539, 4544, 4545, 4546, 4550, 4551,
4552, 4576, 4719, 4720, 4767, 4769, 4771, 4772, 4773, 4774, 4775, 4776, 4777,
4778, 4779, 4780, 4781, 4782, 4783, 4784, 4785, 4786, 4787, 4788, 4790, 4791,
4792, 4793, 4794, 4795, 4848, 4851, 4852, 4853, 4854, 4855, 4856, 4857, 4860,
4861, 4862, 4863, 4864, 4865, 4866, 4867, 4868, 4869, 4871, 4872, 4873, 4874,
4876, 4881, 4882, 4884, 4885, 4887, 4888, 4889, 4890, 4891, 4892, 4894, 4895,
4896, 4897, 4898, 4900, 4901, 4903, 4904, 4906, 4913, 4914, 4915, 4916, 4921,
4924, 4941, 4949, 4950, 4951, 4952, 4961, 5009, 5010, 5048, 5049, 5050, 5051,
5052, 5053, 5067, 5070, 5071, 5072, 5073, 5074, 5075, 5077, 5078, 5080, 5081,
5082, 5083, 5084, 5085, 5086, 5087, 5088, 5089, 5090, 5091, 5092, 5093, 5094,
5095, 5096, 5097, 5098, 5099, 5100, 5101, 5102, 5103, 5106, 5107, 5110, 5111,
5112, 5113, 5115, 5116, 5117, 5118, 5119, 5120, 5121, 5122, 5124, 5125, 5126,
5128, 5129, 5130, 5132, 5133, 5134, 5135, 5136, 5138, 5139, 5140, 5142, 5143,
5145, 5147, 5148, 5150, 5151, 5152, 5153, 5154, 5155, 5156, 5157, 5158, 5182,
5190, 5191, 5192, 5193, 5194, 5195, 5196, 5197, 5198, 5199, 5200, 5201, 5202,
5203, 5205, 5206, 5207, 5208, 5209, 5210, 5211, 5214, 5215, 5216, 5217, 5220,
5221, 5222, 5223, 5224, 5225, 5226, 5227, 5228, 5229, 5230, 5231, 5232, 5233,
5234, 5235, 5237, 5238, 5239, 5240, 5241, 5242, 5243, 5244, 5245, 5246, 5248,
5249, 5250, 5251, 5252, 5253, 5254, 5255, 5257, 5258, 5259, 5260, 5261, 5262,
5263, 5264, 5265, 5266, 5267, 5268, 5269, 5270, 5271, 5272, 5273, 5274, 5275,
5276, 5277, 5278, 5279, 5280, 5281, 5283, 5284, 5285, 5286, 5287, 5288, 5289,
5290, 5291, 5292, 5293, 5294, 5295, 5296, 5297, 5298, 5299, 5300, 5301, 5302,
5303, 5304, 5305, 5306, 5307, 5308, 5309, 5310, 5311, 5312, 5313, 5314, 5315,
5316, 5318, 5319, 5320, 5321, 5322, 5323, 5324, 5325, 5326, 5327, 5328, 5330,
5331, 5332, 5333, 5334, 5335, 5336, 5338, 5339, 5340, 5341, 5342, 5343, 5344,
5345, 5346, 5348, 5349, 5350, 5351, 5352, 5353, 5354, 5355, 5356, 5357, 5358,
5359, 5360, 5361, 5362, 5363, 5364, 5365, 5366, 5367, 5368, 5369, 5370, 5381,
5401, 5402, 5407, 5416, 5418, 5422, 5456, 5464, 5465, 5466, 5470, 5517, 5543,
5548, 5549, 5660, 5662, 5663, 5664, 5665, 5666, 5667, 5668, 5669, 5670, 5671,
5672, 5673, 5674, 5675, 5676, 5677, 5678, 5680, 5681, 5682, 5683, 5684, 5685,
5686, 5687, 5688, 5689, 5690, 5691, 5692, 5693, 5694, 5697, 5698, 5699, 5700,
5701, 5703, 5704, 5706, 5707, 5708, 5709, 5710, 5712, 5713, 5715, 5716, 5717,
5718, 5719, 5720, 5721, 5722, 5723, 5724, 5725, 5726, 5727, 5729, 5730, 5731,
5732, 5733, 5734, 5735, 5736, 5738, 5739, 5740, 5742, 5743, 5745, 5746, 5747,
5748, 5749, 5750, 5751, 5752, 5753, 5754, 5756, 5757, 5758, 5759, 5760, 5762,
5769, 5770, 5771, 5772, 5773, 5778, 5779, 5781, 5783, 5804, 5814, 5815, 5816,
5818, 5822, 5823, 5824, 5825, 5826, 5827, 5828, 5829, 5830, 5831, 5834, 5837,
5839, 5840, 5841, 5842, 5843, 5844, 5847, 5852, 5857, 5902, 5905, 5913, 5920,
5935, 5944, 6033, 6171, 6310, 6327, 6328, 6330, 6345, 6364, 6401, 6404, 6431,
6647, 6651, 6690, 6704, 6705, 6706, 6707, 6709, 6710, 6711, 6712, 6713, 6715,
6716, 6717, 6718, 6719, 6720, 6721, 6722, 6723, 6724, 6725, 6726, 6727, 6728,
6729, 6730, 6731, 6732, 6733, 6734, 6735, 6736, 6737, 6738, 6739, 6740, 6741,
6742, 6743, 6744, 6745, 6747, 6748, 6750, 6751, 6752, 6753, 6754, 6756, 6758,
6759, 6760, 6761, 6762, 6772, 6773, 6774, 6775, 6776, 6777, 6779, 6780, 6805,
6811, 6812, 6813, 6814, 6815, 6816, 6817, 6818, 6819, 6820, 6821, 6822, 6823,
6824, 6825, 6826, 6827, 6828, 6830, 6831, 6832, 6833, 6834, 6835, 6836, 6837,
6838, 6839, 6840, 6841, 6842, 6884, 6885, 6886, 6887, 6888, 6889, 6890, 6891,
6892, 6894, 6895, 6896, 6898, 6899, 6900, 6901, 6902, 6903, 6904, 6905, 6906,
6907, 6908, 6909, 6910, 6911, 6912, 6913, 6914, 6915, 6916, 6917, 6918, 6919,
6920, 6921, 6922, 6923, 6924, 6925, 6926, 6927, 6928, 6932, 6933, 6934, 6936,
6937, 6938, 6939, 6940, 6941, 6942, 6943, 6944, 6945, 6946, 6947, 6948, 6949,
6950, 6951, 6952, 6953, 6954, 6955, 6956, 6957, 6958, 6959, 6960, 6961, 6962,
6963, 6964, 6965, 6966, 6967, 6968, 6969, 6970, 6971, 6972, 6973];

# Where to put the scraped pages
my $OUTDIR  = '01-raw-json';

# Iterate through the two arrays in the hash and save scraped files
for my $domain (keys %kmaps) {
  for my $kid (@{$kmaps{$domain}}) {
    my $base = "http://$domain.kmaps.virginia.edu";
    my $url = "$base/features/$kid/descriptions.json";
    getstore($url,"$OUTDIR/$domain-$kid.json");
  }
}

exit();
