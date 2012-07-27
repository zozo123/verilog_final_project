`timescale 1ns /1ps
module   turbosim( input clk,
		   input rst,
		   input go,
		   output reg done,
		   input wr,
		   input rd,
		   output full,
		   output empty,
		   input [31:0] in_record,
		   output [31:0] out_record
		   );
 
   reg [2:0] state;
   reg [15:0] work_counter; // just for explaining ithe idea
   reg [15:0] work_counter1;// just for explaining ithe idea
   reg [15:0] sim_time;     // just for explaining ithe idea
   reg [15:0] sim_dt;       // just for explaining ithe idea
   reg [13:0] net_index;    // just for explaining ithe idea
   reg [1:0]  net_value;    // just for explaining ithe idea

   reg 	      in_fifo_rd;
   reg 	      out_fifo_wr_pre;
   wire       out_fifo_wr;
   wire [31:0] in_fifo_rd_data;
   wire [31:0] out_fifo_wr_data;
   wire        in_fifo_empty;
   wire        out_fifo_full;
   reg         out_fifo_wr_sel;
   
   integer    s;
 

   // you suppose to put your design hierarchy
   // I will use flat approach, for simplicity.
   
   initial
   begin
      // load model ram image from disk
      $readmemh("net_index_to_data_mem.v",  nets_mem.ram);
      $readmemh("cell_index_to_data_mem.v", cells_mem.ram);
      s = 492;
   end

   
   
`define SOLVE_INIT 0
`define WAIT_GO    1
`define GET_INPUTS 2
`define SOLVE      3
`define OUTPUT     4
   
   always @(posedge clk)
     if (rst)
       begin
	  done         <= #1 0;
	  state        <= #1 `SOLVE_INIT;
	  work_counter <= #1 200;
	  work_counter1<= #1 1;
	  in_fifo_rd   <= #1 0;
	  out_fifo_wr_pre <= #1 0;
	  sim_time     <= #1 0;   // units are in ps	  
	  sim_dt       <= #1 0;   // units are in ps
	  net_index    <= #1 0;   // index can be 0-200	  
	  net_value    <= #1 0;   // value can be 0,1,x,z
	  out_fifo_wr_sel <= #1 0;
       end
     else 
       case(state)
	 `SOLVE_INIT : 
	   if (work_counter > 0)
	     work_counter <= #1 work_counter -1;
	   else
	     begin
		state        <= #1 `WAIT_GO;
		done         <= #1 1;
	     end
 
	 `WAIT_GO :
	   if (go)
	     begin
		done  <= #1 0;
		state        <= #1 `GET_INPUTS;
		work_counter <= #1 $dist_uniform(s,1,5);
		out_fifo_wr_sel <= #1 0;
	     end
	 
	 `GET_INPUTS : begin
	    // reading the input fifo, it may not be back2back
	    // since we may need to do some work on each entry
	    if (!in_fifo_empty)
	      if (work_counter > 0)
		begin
		   in_fifo_rd      <= #1 0;
		   out_fifo_wr_pre <= #1 0;
	           work_counter    <= #1 work_counter -1;
		end
	      else
		begin
		   in_fifo_rd      <= #1 1;
		   out_fifo_wr_pre <= #1 1;
		   work_counter    <= #1 $dist_uniform(s,1,5);
		end
	    else
	      begin
		 in_fifo_rd      <= #1 0;
		 out_fifo_wr_pre <= #1 0;
		 state        <= #1 `SOLVE;
		 work_counter <= #1 $dist_uniform(s,10,500); // spending time on work
		 work_counter1<= #1 $dist_uniform(s,1,4);
		 out_fifo_wr_sel <= #1 1;
	      end
	 end // case: `GET_INPUTS
	 
	 `SOLVE :
	   if (work_counter > 0) // indication should come from your design
	     begin
		out_fifo_wr_pre <= #1 0;
		work_counter <= #1 work_counter -1;
		// while solving, from time to time a new net change emits
		if (work_counter1 > 0)
		  work_counter1 <= #1 work_counter1 -1;
		else
		  begin
		     work_counter1   <= #1 $dist_uniform(s,1,4);
		     sim_time        <= #1 sim_time + $dist_uniform(s,1,20);
		     net_index       <= #1 $dist_uniform(s,40,200);   // index can be 0-200	  
		     net_value       <= #1 $dist_uniform(s,0,3);      // index can be 0-200	  
		     out_fifo_wr_pre <= #1 1;

		  end
		
	     end	
	   else
	     begin
		state        <= #1 `OUTPUT;
		out_fifo_wr_pre  <= #1 0;
	     end
	   
	 `OUTPUT :
	        if (empty) // waiting for output fifo to be empty
		  begin
 		     done         <= #1 1;
		     state        <= #1 `WAIT_GO;
		  end
       endcase // case (state)
   
   assign out_fifo_wr_data = out_fifo_wr_sel ? {net_value,net_index,sim_time}: in_fifo_rd_data;
   assign out_fifo_wr      = out_fifo_wr_sel ? out_fifo_wr_pre               : out_fifo_wr_pre && !in_fifo_empty;
	   

   // student can choose to use dp_ram as well
   sp_ram #(.add_wd(10),.data_wd(92), .depth(512), .t_access(15)) 
   nets_mem(
	   .clk(clk),
	   .cs(1'b0),
	   .rnw(1'b1),
	   .add(),
	   .wr_data(),
	   .rd_data()
	   );
   
   // student can choose to use sp_ram as well
   dp_ram #(.add_wd(10),.data_wd(88), .depth(512), .t_access(15)) 
   cells_mem(
	     .clk(clk),
	     .cs(1'b0),
	     .rd(),
	     .wr(),
	     .rd_add(10'h0),
	     .wr_add(10'h0),
	     .wr_data(),
	     .rd_data()
	     );


   // student can choose to use sp_ram as well
   dp_ram #(.add_wd(10),.data_wd(84), .depth(512), .t_access(15)) 
   event_q(
	   .clk(clk),
	   .cs(1'b0),
	   .rd(),
	   .wr(),
	   .rd_add(10'h0),
	   .wr_add(10'h0),
	   .wr_data(),
	   .rd_data()
	   );

   
   // log2(512)+1 = 10
   fifo #(.add_wd(10),.data_wd(10), .depth(512), .t_access(15)) 
   free_event_q(
	   .clk(clk),
	   .rst(rst),
	   .rd(),
	   .wr(),
	   .empty(),
	   .full(),
	   .wr_data(),
	   .rd_data()
	   );
   
   
   // log2(64)+1 = 7
   fifo #(.add_wd(7),.data_wd(32), .depth(64), .t_access(15)) 
   in_fifo(
	   .clk(clk),
	   .rst(rst),
	   .rd(in_fifo_rd),
	   .wr(wr),
	   .empty(in_fifo_empty),
	   .full(full),
	   .wr_data(in_record),
	   .rd_data(in_fifo_rd_data)
	   );
   // log2(8)+1 = 4
   fifo #(.add_wd(4),.data_wd(32), .depth(8), .t_access(15)) 
   out_fifo(
	    .clk(clk),
	    .rst(rst),
	    .rd(rd),
	    .wr(out_fifo_wr),
	    .empty(empty),
	    .full(out_fifo_full),
	    .wr_data(out_fifo_wr_data),
	    .rd_data(out_record)
	    );

   
       
   

endmodule // turbosim
