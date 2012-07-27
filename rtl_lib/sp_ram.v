`timescale 1ns / 1ns

module  sp_ram #(parameter add_wd=4, data_wd=32,depth=16, t_access = 15) 
   (
    input wire clk, cs, rnw, 
    input wire [add_wd-1:0] add,
    input wire [data_wd-1:0] wr_data,
    output reg [data_wd-1:0] rd_data
    );
     
   // parameter t_access = 15;
   
   reg [data_wd-1:0] 	      ram [depth-1:0];
   
   
   always @(posedge clk)
     begin
	if (cs && rnw)
	  begin
	     rd_data <= #1 {data_wd{1'bx}};
	     rd_data <= #5 ram[add];
	  end
	if (cs && !rnw)
	  ram[add] <= #1 wr_data;
     end
   
endmodule




