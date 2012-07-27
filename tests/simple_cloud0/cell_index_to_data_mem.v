// DATA derived from module simple0 !!!!!!!!!!!!!!!!
// table may be used turbo sim to hold the cell functionality delay and connectivity
// table width is 88 bits
// where first 4 bits holds the primitive type
// next is 16 bits that holds the primitive delay in ps
// next is 12 bits the holds the net index of the output pin - pin0 bit 11 is set if exist
// next is 12 bits the holds the net index of the input pin  - pinX bit 11 is set if exist
// there are 4 such fields
// next is 4 bits for the current output value, set to x, R/W field
// next is 4 bits control that can be used for whatever, also R/W field
2_00e1_805_804_802_000_000_2_0    //    0 and1    |  and    225 ps   f       e       c       UC      UC      val x, ctl
1_0141_80c_80a_000_000_000_2_0    //    1 buf1    |  buf    321 ps   o2      n1      UC      UC      UC      val x, ctl
2_00c8_000_808_807_000_000_2_0    //    2 hasidim |  and    200 ps   UC      j2      j1      UC      UC      val x, ctl
1_0320_808_800_000_000_000_2_0    //    3 nadav   |  buf    800 ps   j2      a       UC      UC      UC      val x, ctl
4_0286_80b_805_806_000_000_2_0    //    4 nor1    |  nor    646 ps   o1      f       g       UC      UC      val x, ctl
0_0154_806_80a_000_000_000_2_0    //    5 not1    |  not    340 ps   g       n1      UC      UC      UC      val x, ctl
3_046c_804_800_801_000_000_2_0    //    6 or1     |  or    1132 ps   e       a       b       UC      UC      val x, ctl
3_03f2_80a_804_803_000_000_2_0    //    7 or2     |  or    1010 ps   n1      e       d       UC      UC      val x, ctl
0_0320_807_800_000_000_000_2_0    //    8 yosefi  |  not    800 ps   j1      a       UC      UC      UC      val x, ctl
