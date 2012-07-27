// DATA derived from module latch0 !!!!!!!!!!!!!!!!
// table may be used turbo sim to hold the cell functionality delay and connectivity
// table width is 88 bits
// where first 4 bits holds the primitive type
// next is 16 bits that holds the primitive delay in ps
// next is 12 bits the holds the net index of the output pin - pin0 bit 11 is set if exist
// next is 12 bits the holds the net index of the input pin  - pinX bit 11 is set if exist
// there are 4 such fields
// next is 4 bits for the current output value, set to x, R/W field
// next is 4 bits control that can be used for whatever, also R/W field
1_00e6_807_805_000_000_000_2_0    //    0 buf0    |  buf    230 ps   q       n4      UC      UC      UC      val x, ctl
5_01c2_803_801_800_000_000_2_0    //    1 nand0   |  nand   450 ps   n2      d       clk     UC      UC      val x, ctl
5_01c2_804_802_800_000_000_2_0    //    2 nand1   |  nand   450 ps   n3      n1      clk     UC      UC      val x, ctl
5_01c2_805_803_806_000_000_2_0    //    3 nand2   |  nand   450 ps   n4      n2      n5      UC      UC      val x, ctl
5_01c2_806_804_805_000_000_2_0    //    4 nand3   |  nand   450 ps   n5      n3      n4      UC      UC      val x, ctl
1_00e6_808_806_000_000_000_2_0    //    5 not0    |  buf    230 ps   qb      n5      UC      UC      UC      val x, ctl
