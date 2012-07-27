
`timescale 1ns /1ps

module simple0 ( a,b,c,d,o1,o2);
input a;
input b;
input c;
input d;
output o1;
output o2;

  or	#(1.132) or1  (e,a,b);
  or	#(1.01)  or2  (n1,e,d);
  buf   #(0.321) buf1 (o2,n1);
  and	#(0.225) and1 (f,e,c);
  nor	#(0.646) nor1 (o1,f,g);
  not	#(0.340) not1 (g,n1);
   not  #(0.80) yosefi (j1,a);
   buf  #(0.80) nadav  (j2,a);
   and  #(0.20) hasidim (j3,j2,j1);
   
   

endmodule

