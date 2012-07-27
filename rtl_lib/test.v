`timescale 1ns / 1ns

module test ();
	reg cs,rnw;
	reg [3:0] wr_data;
	wire [3:0] rd_data;
	reg clk;
	wire valid,ready;

	always #10 clk =! clk;

	initial
	begin
		clk = 0;
		rnw     = 0;
		
		cs		= 1;
		wr_data = 7;
		#15
		
		cs = 0;
		#15
		
		cs = 1;
		wr_data = 6;	
		#15
		
		cs = 0;
		#15
		
		cs = 1;
		wr_data = 5;
		#15
		
		cs = 0;
		#15
		
		cs = 1;
		wr_data = 4;	
		#15
		
		cs = 0;
		#15
		
		cs = 1;
		wr_data = 3;
		#15
		
		cs = 0;
		#1000
		
		cs = 1;
		rnw = 1;
		#30;
		cs = 0;
		rnw = 0;
	end

	min_heap #(.data_wd(4), .capacity(8), .addr(3))
	test_heap(
		.clk(clk),
		.cs(cs),
		.rnw(rnw),
		.wr_data(wr_data),
		.rd_data(rd_data),
		.valid(valid),
		.ready(ready)
		);
		
endmodule