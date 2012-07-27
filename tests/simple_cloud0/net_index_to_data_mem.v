// DATA derived from module simple0 !!!!!!!!!!!!!!!!
// table may be used turbosim to hold the net connectivity
// table width is 92 bits, 5x16+4+4+4
// where 5 = 1 driver + 4 loads
// where 16 = 12 + 4, 12 = cell index + bit 11 set if exist
// where 4  = pin index of driving/load cell
// next is 4 bits reflects the number of loads on net
// next is 4 bits for the current output value, set to x, R/W field
// next is 4 bits control that can be used for whatever, also R/W field
// ATTENTION : initial value of input nets/ports currently set to X !!!
000_0_803_1_808_1_806_1_000_0_3_2_0 //    0 a       |  no dpin    ,nadav pin1 ,yosefi pin1 ,or1   pin1 ,no load    ,n loads 3, val x, ctl
000_0_806_2_000_0_000_0_000_0_1_2_0 //    1 b       |  no dpin    ,or1   pin2 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
000_0_800_2_000_0_000_0_000_0_1_2_0 //    2 c       |  no dpin    ,and1  pin2 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
000_0_807_2_000_0_000_0_000_0_1_2_0 //    3 d       |  no dpin    ,or2   pin2 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
806_0_800_1_807_1_000_0_000_0_2_2_0 //    4 e       |  or1   pin0 ,and1  pin1 ,or2   pin1 ,no load    ,no load    ,n loads 2, val x, ctl
800_0_804_1_000_0_000_0_000_0_1_2_0 //    5 f       |  and1  pin0 ,nor1  pin1 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
805_0_804_2_000_0_000_0_000_0_1_2_0 //    6 g       |  not1  pin0 ,nor1  pin2 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
808_0_802_2_000_0_000_0_000_0_1_2_0 //    7 j1      |  yosefi pin0 ,hasidim pin2 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
803_0_802_1_000_0_000_0_000_0_1_2_0 //    8 j2      |  nadav pin0 ,hasidim pin1 ,no load    ,no load    ,no load    ,n loads 1, val x, ctl
802_0_000_0_000_0_000_0_000_0_0_2_0 //    9 j3      |  hasidim pin0 ,no load    ,no load    ,no load    ,no load    ,n loads 0, val x, ctl
807_0_805_1_801_1_000_0_000_0_2_2_0 //   10 n1      |  or2   pin0 ,not1  pin1 ,buf1  pin1 ,no load    ,no load    ,n loads 2, val x, ctl
804_0_000_0_000_0_000_0_000_0_0_2_0 //   11 o1      |  nor1  pin0 ,no load    ,no load    ,no load    ,no load    ,n loads 0, val x, ctl
801_0_000_0_000_0_000_0_000_0_0_2_0 //   12 o2      |  buf1  pin0 ,no load    ,no load    ,no load    ,no load    ,n loads 0, val x, ctl
