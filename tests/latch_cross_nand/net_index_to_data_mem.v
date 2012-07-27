// DATA derived from module latch0 !!!!!!!!!!!!!!!!
// table may be used turbosim to hold the net connectivity
// table width is 92 bits, 5x16+4+4+4
// where 5 = 1 driver + 4 loads
// where 16 = 12 + 4, 12 = cell index + bit 11 set if exist
// where 4  = pin index of driving/load cell
// next is 4 bits reflects the number of loads on net
// next is 4 bits for the current output value, set to x, R/W field
// next is 4 bits control that can be used for whatever, also R/W field
// ATTENTION : initial value of input nets/ports currently set to X !!!
000_0_802_2_801_2_000_0_000_0_2_2_0 //    0 clk     |  no dpin    ,nand1 pin2 ,nand0 pin2 ,no load    ,no load    ,n loads 2, val x, ctl
000_0_801_1_805_1_000_0_000_0_2_2_0 //    1 d       |  no dpin    ,nand0 pin1 ,not0  pin1 ,no load    ,no load    ,n loads 2, val x, ctl
805_0_802_1_000_0_000_0_000_0_1_2_0 //    2 n1      |  not0  pin0 ,nand1 pin1 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
801_0_803_1_000_0_000_0_000_0_1_2_0 //    3 n2      |  nand0 pin0 ,nand2 pin1 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
802_0_804_1_000_0_000_0_000_0_1_2_0 //    4 n3      |  nand1 pin0 ,nand3 pin1 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
803_0_800_1_804_2_000_0_000_0_2_2_0 //    5 n4      |  nand2 pin0 ,buf0  pin1 ,nand3 pin2 ,no load    ,no load    ,n loads 2, val x, ctl
804_0_803_2_805_1_000_0_000_0_2_2_0 //    6 n5      |  nand3 pin0 ,nand2 pin2 ,not0  pin1 ,no load    ,no load    ,n loads 2, val x, ctl
800_0_000_0_000_0_000_0_000_0_0_2_0 //    7 q       |  buf0  pin0 ,no load    ,no load    ,no load    ,no load    ,n loads 0, val x, ctl
805_0_000_0_000_0_000_0_000_0_0_2_0 //    8 qb      |  not0  pin0 ,no load    ,no load    ,no load    ,no load    ,n loads 0, val x, ctl
