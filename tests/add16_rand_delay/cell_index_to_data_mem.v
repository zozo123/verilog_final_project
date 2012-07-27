// DATA derived from module add1 !!!!!!!!!!!!!!!!
// table may be used turbo sim to hold the cell functionality delay and connectivity
// table width is 88 bits
// where first 4 bits holds the primitive type
// next is 16 bits that holds the primitive delay in ps
// next is 12 bits the holds the net index of the output pin - pin0 bit 11 is set if exist
// next is 12 bits the holds the net index of the input pin  - pinX bit 11 is set if exist
// there are 4 such fields
// next is 4 bits for the current output value, set to x, R/W field
// next is 4 bits control that can be used for whatever, also R/W field
0_0327_871_84e_000_000_000_2_0    //    0 U10     |  not    807 ps   n24     n140    UC      UC      UC      val x, ctl
5_019e_833_811_834_000_000_2_0    //    1 U100    |  nand   414 ps   n116    b[10]   n117    UC      UC      val x, ctl
5_030c_834_835_836_000_000_2_0    //    2 U101    |  nand   780 ps   n117    n118    n119    UC      UC      val x, ctl
2_0510_84e_84f_850_000_000_2_0    //    3 U102    |  and   1296 ps   n140    n141    n142    UC      UC      val x, ctl
5_069c_84f_80b_879_000_000_2_0    //    4 U103    |  nand  1692 ps   n141    a[5]    n31     UC      UC      val x, ctl
5_0511_850_81b_851_000_000_2_0    //    5 U104    |  nand  1297 ps   n142    b[5]    n143    UC      UC      val x, ctl
5_04d1_851_852_87d_000_000_2_0    //    6 U105    |  nand  1233 ps   n143    n144    n35     UC      UC      val x, ctl
2_0314_8c0_826_827_000_000_2_0    //    7 U106    |  and    788 ps   n96     n104    n105    UC      UC      val x, ctl
5_00bb_826_802_82b_000_000_2_0    //    8 U107    |  nand   187 ps   n104    a[11]   n109    UC      UC      val x, ctl
5_015a_827_812_828_000_000_2_0    //    9 U108    |  nand   346 ps   n105    b[11]   n106    UC      UC      val x, ctl
5_00a2_828_829_82a_000_000_2_0    //   10 U109    |  nand   162 ps   n106    n107    n108    UC      UC      val x, ctl
0_00b3_869_849_000_000_000_2_0    //   11 U11     |  not    179 ps   n17     n136    UC      UC      UC      val x, ctl
2_02eb_849_84a_84b_000_000_2_0    //   12 U110    |  and    747 ps   n136    n137    n138    UC      UC      val x, ctl
5_0484_84a_80c_871_000_000_2_0    //   13 U111    |  nand  1156 ps   n137    a[6]    n24     UC      UC      val x, ctl
5_0675_84b_81c_84c_000_000_2_0    //   14 U112    |  nand  1653 ps   n138    b[6]    n139    UC      UC      val x, ctl
5_053a_84c_84e_875_000_000_2_0    //   15 U113    |  nand  1338 ps   n139    n140    n28     UC      UC      val x, ctl
2_02cc_8b4_8bd_8be_000_000_2_0    //   16 U114    |  and    716 ps   n85     n93     n94     UC      UC      val x, ctl
5_0194_8bd_803_8c2_000_000_2_0    //   17 U115    |  nand   404 ps   n93     a[12]   n98     UC      UC      val x, ctl
5_05e8_8be_813_8bf_000_000_2_0    //   18 U116    |  nand  1512 ps   n94     b[12]   n95     UC      UC      val x, ctl
5_06d8_8bf_8c0_8c1_000_000_2_0    //   19 U117    |  nand  1752 ps   n95     n96     n97     UC      UC      val x, ctl
2_0444_845_846_847_000_000_2_0    //   20 U118    |  and   1092 ps   n132    n133    n134    UC      UC      val x, ctl
5_0655_846_80d_869_000_000_2_0    //   21 U119    |  nand  1621 ps   n133    a[7]    n17     UC      UC      val x, ctl
0_0756_821_845_000_000_000_2_0    //   22 U12     |  not   1878 ps   n10     n132    UC      UC      UC      val x, ctl
5_04b1_847_81d_848_000_000_2_0    //   23 U120    |  nand  1201 ps   n134    b[7]    n135    UC      UC      val x, ctl
5_05f9_848_849_86e_000_000_2_0    //   24 U121    |  nand  1529 ps   n135    n136    n21     UC      UC      val x, ctl
2_0286_8a5_8b1_8b2_000_000_2_0    //   25 U122    |  and    646 ps   n71     n82     n83     UC      UC      val x, ctl
5_0056_8b1_804_8b6_000_000_2_0    //   26 U123    |  nand    86 ps   n82     a[13]   n87     UC      UC      val x, ctl
5_0462_8b2_814_8b3_000_000_2_0    //   27 U124    |  nand  1122 ps   n83     b[13]   n84     UC      UC      val x, ctl
5_06ce_8b3_8b4_8b5_000_000_2_0    //   28 U125    |  nand  1742 ps   n84     n85     n86     UC      UC      val x, ctl
2_012e_835_83e_83f_000_000_2_0    //   29 U126    |  and    302 ps   n118    n126    n127    UC      UC      val x, ctl
5_0619_83f_81f_840_000_000_2_0    //   30 U127    |  nand  1561 ps   n127    b[9]    n128    UC      UC      val x, ctl
5_055a_83e_80f_877_000_000_2_0    //   31 U128    |  nand  1370 ps   n126    a[9]    n3      UC      UC      val x, ctl
3_03c5_840_877_80f_000_000_2_0    //   32 U129    |  or     965 ps   n128    n3      a[9]    UC      UC      val x, ctl
0_0050_82b_829_000_000_000_2_0    //   33 U13     |  not     80 ps   n109    n107    UC      UC      UC      val x, ctl
5_02fa_8a0_8a8_8a9_000_000_2_0    //   34 U130    |  nand   762 ps   n67     n74     n75     UC      UC      val x, ctl
3_0697_8a8_8aa_816_000_000_2_0    //   35 U131    |  or    1687 ps   n74     n76     b[15]   UC      UC      val x, ctl
5_0319_8a9_816_8aa_000_000_2_0    //   36 U132    |  nand   793 ps   n75     b[15]   n76     UC      UC      val x, ctl
0_015c_8aa_806_000_000_000_2_0    //   37 U133    |  not    348 ps   n76     a[15]   UC      UC      UC      val x, ctl
5_0200_893_818_894_000_000_2_0    //   38 U134    |  nand   512 ps   n55     b[2]    n56     UC      UC      val x, ctl
5_00c8_88b_819_88c_000_000_2_0    //   39 U135    |  nand   200 ps   n48     b[3]    n49     UC      UC      val x, ctl
5_0639_884_81a_885_000_000_2_0    //   40 U136    |  nand  1593 ps   n41     b[4]    n42     UC      UC      val x, ctl
5_002a_87c_81b_87d_000_000_2_0    //   41 U137    |  nand    42 ps   n34     b[5]    n35     UC      UC      val x, ctl
5_0703_874_81c_875_000_000_2_0    //   42 U138    |  nand  1795 ps   n27     b[6]    n28     UC      UC      val x, ctl
5_04f7_86d_81d_86e_000_000_2_0    //   43 U139    |  nand  1271 ps   n20     b[7]    n21     UC      UC      val x, ctl
0_016a_8c2_8c0_000_000_000_2_0    //   44 U14     |  not    362 ps   n98     n96     UC      UC      UC      val x, ctl
5_0616_842_81e_84d_000_000_2_0    //   45 U140    |  nand  1558 ps   n13     b[8]    n14     UC      UC      val x, ctl
5_0317_83d_811_836_000_000_2_0    //   46 U141    |  nand   791 ps   n125    b[10]   n119    UC      UC      val x, ctl
5_0449_831_812_82a_000_000_2_0    //   47 U142    |  nand  1097 ps   n114    b[11]   n108    UC      UC      val x, ctl
5_0128_825_813_8c1_000_000_2_0    //   48 U143    |  nand   296 ps   n103    b[12]   n97     UC      UC      val x, ctl
5_03b0_8bc_814_8b5_000_000_2_0    //   49 U144    |  nand   944 ps   n92     b[13]   n86     UC      UC      val x, ctl
5_05d2_8b0_815_8a6_000_000_2_0    //   50 U145    |  nand  1490 ps   n81     b[14]   n72     UC      UC      val x, ctl
5_06b6_89b_817_89c_000_000_2_0    //   51 U146    |  nand  1718 ps   n62     b[1]    n63     UC      UC      val x, ctl
5_01ac_8a2_815_8a4_000_000_2_0    //   52 U147    |  nand   428 ps   n69     b[14]   n70     UC      UC      val x, ctl
5_007b_8a4_8a5_8a6_000_000_2_0    //   53 U148    |  nand   123 ps   n70     n71     n72     UC      UC      val x, ctl
5_020d_8a1_805_8a7_000_000_2_0    //   54 U149    |  nand   525 ps   n68     a[14]   n73     UC      UC      val x, ctl
0_05ca_8b6_8b4_000_000_000_2_0    //   55 U15     |  not   1482 ps   n87     n85     UC      UC      UC      val x, ctl
0_03de_894_808_000_000_000_2_0    //   56 U150    |  not    990 ps   n56     a[2]    UC      UC      UC      val x, ctl
0_04a3_88c_809_000_000_000_2_0    //   57 U151    |  not   1187 ps   n49     a[3]    UC      UC      UC      val x, ctl
0_03f4_885_80a_000_000_000_2_0    //   58 U152    |  not   1012 ps   n42     a[4]    UC      UC      UC      val x, ctl
0_06be_87d_80b_000_000_000_2_0    //   59 U153    |  not   1726 ps   n35     a[5]    UC      UC      UC      val x, ctl
0_069c_875_80c_000_000_000_2_0    //   60 U154    |  not   1692 ps   n28     a[6]    UC      UC      UC      val x, ctl
0_01b6_86e_80d_000_000_000_2_0    //   61 U155    |  not    438 ps   n21     a[7]    UC      UC      UC      val x, ctl
0_0177_84d_80e_000_000_000_2_0    //   62 U156    |  not    375 ps   n14     a[8]    UC      UC      UC      val x, ctl
0_02c5_836_801_000_000_000_2_0    //   63 U157    |  not    709 ps   n119    a[10]   UC      UC      UC      val x, ctl
0_00fa_82a_802_000_000_000_2_0    //   64 U158    |  not    250 ps   n108    a[11]   UC      UC      UC      val x, ctl
0_004a_8c1_803_000_000_000_2_0    //   65 U159    |  not     74 ps   n97     a[12]   UC      UC      UC      val x, ctl
0_0524_8a7_8a5_000_000_000_2_0    //   66 U16     |  not   1316 ps   n73     n71     UC      UC      UC      val x, ctl
0_002d_8b5_804_000_000_000_2_0    //   67 U160    |  not     45 ps   n86     a[13]   UC      UC      UC      val x, ctl
0_01cb_8a6_805_000_000_000_2_0    //   68 U161    |  not    459 ps   n72     a[14]   UC      UC      UC      val x, ctl
5_04e7_898_81f_8a3_000_000_2_0    //   69 U162    |  nand  1255 ps   n6      b[9]    n7      UC      UC      val x, ctl
0_02ad_89c_807_000_000_000_2_0    //   70 U163    |  not    685 ps   n63     a[1]    UC      UC      UC      val x, ctl
0_008c_865_810_000_000_000_2_0    //   71 U164    |  not    140 ps   n161    b[0]    UC      UC      UC      val x, ctl
0_0790_866_800_000_000_000_2_0    //   72 U165    |  not   1936 ps   n162    a[0]    UC      UC      UC      val x, ctl
5_0376_8c4_867_868_000_000_2_0    //   73 U166    |  nand   886 ps   o[0]    n163    n164    UC      UC      val x, ctl
5_061c_867_800_865_000_000_2_0    //   74 U167    |  nand  1564 ps   n163    a[0]    n161    UC      UC      val x, ctl
5_0145_868_810_866_000_000_2_0    //   75 U168    |  nand   325 ps   n164    b[0]    n162    UC      UC      val x, ctl
3_0219_89a_89c_817_000_000_2_0    //   76 U169    |  or     537 ps   n61     n63     b[1]    UC      UC      val x, ctl
0_07a4_838_835_000_000_000_2_0    //   77 U17     |  not   1956 ps   n120    n118    UC      UC      UC      val x, ctl
3_030b_892_894_818_000_000_2_0    //   78 U170    |  or     779 ps   n54     n56     b[2]    UC      UC      val x, ctl
3_0529_88a_88c_819_000_000_2_0    //   79 U171    |  or    1321 ps   n47     n49     b[3]    UC      UC      val x, ctl
3_04a6_883_885_81a_000_000_2_0    //   80 U172    |  or    1190 ps   n40     n42     b[4]    UC      UC      val x, ctl
3_00d2_87b_87d_81b_000_000_2_0    //   81 U173    |  or     210 ps   n33     n35     b[5]    UC      UC      val x, ctl
3_039e_873_875_81c_000_000_2_0    //   82 U174    |  or     926 ps   n26     n28     b[6]    UC      UC      val x, ctl
3_05b0_86b_86e_81d_000_000_2_0    //   83 U175    |  or    1456 ps   n19     n21     b[7]    UC      UC      val x, ctl
3_0323_837_84d_81e_000_000_2_0    //   84 U176    |  or     803 ps   n12     n14     b[8]    UC      UC      val x, ctl
3_0033_88d_8a3_81f_000_000_2_0    //   85 U177    |  or      51 ps   n5      n7      b[9]    UC      UC      val x, ctl
3_0481_83c_836_811_000_000_2_0    //   86 U178    |  or    1153 ps   n124    n119    b[10]   UC      UC      val x, ctl
3_00b1_830_82a_812_000_000_2_0    //   87 U179    |  or     177 ps   n113    n108    b[11]   UC      UC      val x, ctl
4_05a9_8cc_88e_88f_000_000_2_0    //   88 U18     |  nor   1449 ps   o[2]    n50     n51     UC      UC      val x, ctl
3_01f5_824_8c1_813_000_000_2_0    //   89 U180    |  or     501 ps   n102    n97     b[12]   UC      UC      val x, ctl
3_0494_8bb_8b5_814_000_000_2_0    //   90 U181    |  or    1172 ps   n91     n86     b[13]   UC      UC      val x, ctl
3_06c9_8af_8a6_815_000_000_2_0    //   91 U182    |  or    1737 ps   n80     n72     b[14]   UC      UC      val x, ctl
0_0310_8a3_80f_000_000_000_2_0    //   92 U183    |  not    784 ps   n7      a[9]    UC      UC      UC      val x, ctl
2_00e1_88f_890_891_000_000_2_0    //   93 U19     |  and    225 ps   n51     n52     n53     UC      UC      val x, ctl
4_0286_88e_890_891_000_000_2_0    //   94 U20     |  nor    646 ps   n50     n52     n53     UC      UC      val x, ctl
5_0250_891_892_893_000_000_2_0    //   95 U21     |  nand   592 ps   n53     n54     n55     UC      UC      val x, ctl
4_06e2_8cd_886_887_000_000_2_0    //   96 U22     |  nor   1762 ps   o[3]    n43     n44     UC      UC      val x, ctl
2_014b_887_888_889_000_000_2_0    //   97 U23     |  and    331 ps   n44     n45     n46     UC      UC      val x, ctl
4_0044_886_888_889_000_000_2_0    //   98 U24     |  nor     68 ps   n43     n45     n46     UC      UC      val x, ctl
5_01d2_889_88a_88b_000_000_2_0    //   99 U25     |  nand   466 ps   n46     n47     n48     UC      UC      val x, ctl
4_065c_8ce_87e_87f_000_000_2_0    //  100 U26     |  nor   1628 ps   o[4]    n36     n37     UC      UC      val x, ctl
2_0217_87f_880_881_000_000_2_0    //  101 U27     |  and    535 ps   n37     n38     n39     UC      UC      val x, ctl
4_04dc_87e_880_881_000_000_2_0    //  102 U28     |  nor   1244 ps   n36     n38     n39     UC      UC      val x, ctl
5_07ce_881_883_884_000_000_2_0    //  103 U29     |  nand  1998 ps   n39     n40     n41     UC      UC      val x, ctl
4_023a_8cf_876_878_000_000_2_0    //  104 U30     |  nor    570 ps   o[5]    n29     n30     UC      UC      val x, ctl
2_03a1_878_879_87a_000_000_2_0    //  105 U31     |  and    929 ps   n30     n31     n32     UC      UC      val x, ctl
4_0386_876_879_87a_000_000_2_0    //  106 U32     |  nor    902 ps   n29     n31     n32     UC      UC      val x, ctl
5_03e2_87a_87b_87c_000_000_2_0    //  107 U33     |  nand   994 ps   n32     n33     n34     UC      UC      val x, ctl
4_00d2_8d0_86f_870_000_000_2_0    //  108 U34     |  nor    210 ps   o[6]    n22     n23     UC      UC      val x, ctl
2_0208_870_871_872_000_000_2_0    //  109 U35     |  and    520 ps   n23     n24     n25     UC      UC      val x, ctl
4_0589_86f_871_872_000_000_2_0    //  110 U36     |  nor   1417 ps   n22     n24     n25     UC      UC      val x, ctl
5_0472_872_873_874_000_000_2_0    //  111 U37     |  nand  1138 ps   n25     n26     n27     UC      UC      val x, ctl
4_0039_8d1_858_863_000_000_2_0    //  112 U38     |  nor     57 ps   o[7]    n15     n16     UC      UC      val x, ctl
2_0061_863_869_86a_000_000_2_0    //  113 U39     |  and     97 ps   n16     n17     n18     UC      UC      val x, ctl
0_03f2_899_864_000_000_000_2_0    //  114 U4      |  not   1010 ps   n60     n160    UC      UC      UC      val x, ctl
4_05b1_858_869_86a_000_000_2_0    //  115 U40     |  nor   1457 ps   n15     n17     n18     UC      UC      val x, ctl
5_0141_86a_86b_86d_000_000_2_0    //  116 U41     |  nand   321 ps   n18     n19     n20     UC      UC      val x, ctl
4_06e3_8d2_8ae_8b9_000_000_2_0    //  117 U42     |  nor   1763 ps   o[8]    n8      n9      UC      UC      val x, ctl
2_06c5_8b9_821_82c_000_000_2_0    //  118 U43     |  and   1733 ps   n9      n10     n11     UC      UC      val x, ctl
4_02d9_8ae_821_82c_000_000_2_0    //  119 U44     |  nor    729 ps   n8      n10     n11     UC      UC      val x, ctl
5_027d_82c_837_842_000_000_2_0    //  120 U45     |  nand   637 ps   n11     n12     n13     UC      UC      val x, ctl
4_0184_8d3_820_86c_000_000_2_0    //  121 U46     |  nor    388 ps   o[9]    n1      n2      UC      UC      val x, ctl
2_04c8_86c_877_882_000_000_2_0    //  122 U47     |  and   1224 ps   n2      n3      n4      UC      UC      val x, ctl
4_077a_820_877_882_000_000_2_0    //  123 U48     |  nor   1914 ps   n1      n3      n4      UC      UC      val x, ctl
5_034f_882_88d_898_000_000_2_0    //  124 U49     |  nand   847 ps   n4      n5      n6      UC      UC      val x, ctl
4_0598_864_865_866_000_000_2_0    //  125 U5      |  nor   1432 ps   n160    n161    n162    UC      UC      val x, ctl
4_00fd_8c5_839_83a_000_000_2_0    //  126 U50     |  nor    253 ps   o[10]   n121    n122    UC      UC      val x, ctl
2_0311_83a_838_83b_000_000_2_0    //  127 U51     |  and    785 ps   n122    n120    n123    UC      UC      val x, ctl
4_0721_839_838_83b_000_000_2_0    //  128 U52     |  nor   1825 ps   n121    n120    n123    UC      UC      val x, ctl
5_046c_83b_83c_83d_000_000_2_0    //  129 U53     |  nand  1132 ps   n123    n124    n125    UC      UC      val x, ctl
4_0794_8c6_82d_82e_000_000_2_0    //  130 U54     |  nor   1940 ps   o[11]   n110    n111    UC      UC      val x, ctl
2_0135_82e_82b_82f_000_000_2_0    //  131 U55     |  and    309 ps   n111    n109    n112    UC      UC      val x, ctl
4_0372_82d_82b_82f_000_000_2_0    //  132 U56     |  nor    882 ps   n110    n109    n112    UC      UC      val x, ctl
5_03ac_82f_830_831_000_000_2_0    //  133 U57     |  nand   940 ps   n112    n113    n114    UC      UC      val x, ctl
4_07c4_8c7_8c3_822_000_000_2_0    //  134 U58     |  nor   1988 ps   o[12]   n99     n100    UC      UC      val x, ctl
2_01fc_822_8c2_823_000_000_2_0    //  135 U59     |  and    508 ps   n100    n98     n101    UC      UC      val x, ctl
0_0784_890_85f_000_000_000_2_0    //  136 U6      |  not   1924 ps   n52     n156    UC      UC      UC      val x, ctl
4_03a8_8c3_8c2_823_000_000_2_0    //  137 U60     |  nor    936 ps   n99     n98     n101    UC      UC      val x, ctl
5_06d4_823_824_825_000_000_2_0    //  138 U61     |  nand  1748 ps   n101    n102    n103    UC      UC      val x, ctl
4_0755_8c8_8b7_8b8_000_000_2_0    //  139 U62     |  nor   1877 ps   o[13]   n88     n89     UC      UC      val x, ctl
2_00f5_8b8_8b6_8ba_000_000_2_0    //  140 U63     |  and    245 ps   n89     n87     n90     UC      UC      val x, ctl
4_0212_8b7_8b6_8ba_000_000_2_0    //  141 U64     |  nor    530 ps   n88     n87     n90     UC      UC      val x, ctl
5_0604_8ba_8bb_8bc_000_000_2_0    //  142 U65     |  nand  1540 ps   n90     n91     n92     UC      UC      val x, ctl
4_071a_8c9_8ab_8ac_000_000_2_0    //  143 U66     |  nor   1818 ps   o[14]   n77     n78     UC      UC      val x, ctl
2_0559_8ac_8a7_8ad_000_000_2_0    //  144 U67     |  and   1369 ps   n78     n73     n79     UC      UC      val x, ctl
4_0667_8ab_8a7_8ad_000_000_2_0    //  145 U68     |  nor   1639 ps   n77     n73     n79     UC      UC      val x, ctl
5_033a_8ad_8af_8b0_000_000_2_0    //  146 U69     |  nand   826 ps   n79     n80     n81     UC      UC      val x, ctl
0_0154_888_85b_000_000_000_2_0    //  147 U7      |  not    340 ps   n45     n152    UC      UC      UC      val x, ctl
4_07ac_8ca_89d_89e_000_000_2_0    //  148 U70     |  nor   1964 ps   o[15]   n64     n65     UC      UC      val x, ctl
2_0553_89e_89f_8a0_000_000_2_0    //  149 U71     |  and   1363 ps   n65     n66     n67     UC      UC      val x, ctl
4_03c9_89d_8a0_89f_000_000_2_0    //  150 U72     |  nor    969 ps   n64     n67     n66     UC      UC      val x, ctl
5_03ee_89f_8a1_8a2_000_000_2_0    //  151 U73     |  nand  1006 ps   n66     n68     n69     UC      UC      val x, ctl
5_0239_8cb_895_896_000_000_2_0    //  152 U74     |  nand   569 ps   o[1]    n57     n58     UC      UC      val x, ctl
3_046c_896_897_899_000_000_2_0    //  153 U75     |  or    1132 ps   n58     n59     n60     UC      UC      val x, ctl
5_0747_895_897_899_000_000_2_0    //  154 U76     |  nand  1863 ps   n57     n59     n60     UC      UC      val x, ctl
5_0382_897_89a_89b_000_000_2_0    //  155 U77     |  nand   898 ps   n59     n61     n62     UC      UC      val x, ctl
5_0671_877_841_843_000_000_2_0    //  156 U78     |  nand  1649 ps   n3      n129    n130    UC      UC      val x, ctl
5_00da_841_80e_821_000_000_2_0    //  157 U79     |  nand   218 ps   n129    a[8]    n10     UC      UC      val x, ctl
0_0398_880_856_000_000_000_2_0    //  158 U8      |  not    920 ps   n38     n148    UC      UC      UC      val x, ctl
5_075f_843_81e_844_000_000_2_0    //  159 U80     |  nand  1887 ps   n130    b[8]    n131    UC      UC      val x, ctl
5_00e2_844_845_84d_000_000_2_0    //  160 U81     |  nand   226 ps   n131    n132    n14     UC      UC      val x, ctl
2_06da_85f_860_861_000_000_2_0    //  161 U82     |  and   1754 ps   n156    n157    n158    UC      UC      val x, ctl
5_030a_861_817_862_000_000_2_0    //  162 U83     |  nand   778 ps   n158    b[1]    n159    UC      UC      val x, ctl
5_0095_860_807_864_000_000_2_0    //  163 U84     |  nand   149 ps   n157    a[1]    n160    UC      UC      val x, ctl
5_077a_862_89c_899_000_000_2_0    //  164 U85     |  nand  1914 ps   n159    n63     n60     UC      UC      val x, ctl
2_016d_85b_85c_85d_000_000_2_0    //  165 U86     |  and    365 ps   n152    n153    n154    UC      UC      val x, ctl
5_0273_85c_808_890_000_000_2_0    //  166 U87     |  nand   627 ps   n153    a[2]    n52     UC      UC      val x, ctl
5_0593_85d_818_85e_000_000_2_0    //  167 U88     |  nand  1427 ps   n154    b[2]    n155    UC      UC      val x, ctl
5_07a4_85e_85f_894_000_000_2_0    //  168 U89     |  nand  1956 ps   n155    n156    n56     UC      UC      val x, ctl
0_00c5_879_852_000_000_000_2_0    //  169 U9      |  not    197 ps   n31     n144    UC      UC      UC      val x, ctl
2_05e1_856_857_859_000_000_2_0    //  170 U90     |  and   1505 ps   n148    n149    n150    UC      UC      val x, ctl
5_0295_857_809_888_000_000_2_0    //  171 U91     |  nand   661 ps   n149    a[3]    n45     UC      UC      val x, ctl
5_0482_859_819_85a_000_000_2_0    //  172 U92     |  nand  1154 ps   n150    b[3]    n151    UC      UC      val x, ctl
5_02cf_85a_85b_88c_000_000_2_0    //  173 U93     |  nand   719 ps   n151    n152    n49     UC      UC      val x, ctl
2_045d_852_853_854_000_000_2_0    //  174 U94     |  and   1117 ps   n144    n145    n146    UC      UC      val x, ctl
5_03c4_853_80a_880_000_000_2_0    //  175 U95     |  nand   964 ps   n145    a[4]    n38     UC      UC      val x, ctl
5_0148_854_81a_855_000_000_2_0    //  176 U96     |  nand   328 ps   n146    b[4]    n147    UC      UC      val x, ctl
5_01b6_855_856_885_000_000_2_0    //  177 U97     |  nand   438 ps   n147    n148    n42     UC      UC      val x, ctl
2_06f1_829_832_833_000_000_2_0    //  178 U98     |  and   1777 ps   n107    n115    n116    UC      UC      val x, ctl
5_03a2_832_801_838_000_000_2_0    //  179 U99     |  nand   930 ps   n115    a[10]   n120    UC      UC      val x, ctl