`timescale 1ps /1ps
  
module sim_project();

   wire [15:0] o;
   reg [15:0]  a;
   reg [15:0]  b;
   
   integer     i, k,s;
   integer     turbosim_cycle_count;
    
   integer     ref_dut_change_count;
   integer     turbosim_change_count;
    
   time        start_time;
   reg [15:0]  delta_time;
   reg [15:0]  dt;

   reg [31:0] input_vcd_fifo [63:0];
   reg [5:0]  input_vcd_wr_ptr;
   reg [5:0]  input_vcd_rd_ptr;
   integer    input_vcd_len;
   reg 	      input_vcd_full;   
   reg 	      input_vcd_empty;   


   reg 	       clk;
   reg 	       rst;
   reg 	       go;
   wire        done;
   reg 	       wr;
   wire        rd;
   wire        full;
   wire        empty;
   
   reg [31:0]  in_record;
   wire [31:0] out_record;
   
   //reg [13:0]  input_nets_to_index_mem [31:0];
   reg [159:0] net_index_to_name_mem [299:0];
   reg [1:0]   new_net_value;
   
   
   always #10000 clk = !clk;  // 50 Mhz clock
   
   /////////////////////////////////////////
   /////////////////////////////////////////

   
   initial 
   begin
      // $readmemh("input_nets_to_index_mem.v", input_nets_to_index_mem);
      $readmemh("net_index_to_name_mem.v",   net_index_to_name_mem);
      
      clk = 0;
      rst = 1;
      go  = 0;
      wr  = 0;
      i   = 1;
      s   = 0;
      
      a   = 0;
      b   = 0;

      ref_dut_change_count  = 0;
      turbosim_change_count = 0;
 
     
      turbosim_cycle_count = 0;
      input_vcd_full       = 0 ;   
      input_vcd_empty      = 1;   
       
      in_record  = 32'h0;      
      start_time = $time;
      
      #50000;
      rst = 0;
      wait(done);
      
      while (i<1000)
	begin

	   ref_dut_change_count  = 0;
	   turbosim_change_count = 0;

	   // from this point the real adder add1 starts propagating
	   if (i>1)
	     begin
		a = $dist_uniform(s,0,40000);
		b = $dist_uniform(s,0,40000);
	     end
	   $display("start iteration %d : a = %h, b =%h", i[7:0], a,b);

	   start_time = $time;
	   // let ref dut work and propagets the inputs
	   // all the changes will be captured by the sniffers
	   @(posedge clk);
	   #1000;

	   // dumping the input changes accomulated into turbosim 
	   while(!input_vcd_empty)
	     begin
		in_record = pop_input(1);
		write_in_fifo;
	     end
	   
	   pulse_go; // pulsing the go signal,  the done signal should go low.

	   // here turbosim is processing the input stimuli
	   // ... and emiting net change from time to time.
	   // those changes are captured and displayed

	   wait_done;
	   
	   $display("end   iteration %d : turbosim solved in %d clock cycles", i[7:0],turbosim_cycle_count[15:0]);
	   
	   i=i+1;
	end	
   end


   /////////////////////////////////////////
   /////////////////////////////////////////

   add1 ref_dut ( .a(a), .b(b), .o(o));
   
   /////////////////////////////////////////
   /////////////////////////////////////////

   turbosim  turbosim(.clk        (clk),
		      .rst        (rst),
		      .go         (go),
		      .done       (done),
		      .wr         (wr),
		      .rd         (rd),
		      .full       (full),
		      .empty      (empty),
		      .in_record  (in_record),
		      .out_record (out_record)
		      );

   /////////////////////////////////////////
   /////////////////////////////////////////
   // sniffer on ref_dut input change 
   // this is used to derive the vcd set for turbosim in_fifo
   // the idea is to record the changed values the user drives the real network
   // and to provide them to turbosim

`include "ref_dut_input_sniffer.v"


   /////////////////////////////////////////
   /////////////////////////////////////////
   // sniffer on turbosim outputs
   
   wire [13:0] net_index       = out_record[29:16];   
   wire [15:0] net_change_time = out_record[15:0];
   wire [1:0]  net_value       = out_record[31:30];
   reg 	       net_value1;
  

   always @(net_value)
     case (net_value)
       2'b00 :net_value1 = 1'b0;
       2'b01 :net_value1 = 1'b1;
       2'b10 :net_value1 = 1'bx;
       2'b11 :net_value1 = 1'bz;
     endcase // case (net_value)
   

   assign rd = !empty;
   
   always @(posedge clk)
     if (!empty)
       begin
	  turbosim_change_count = turbosim_change_count +1;
	  $display("=== acc_vcd       time %d ps, value %b, net name %s",
		   net_change_time,net_value1, net_index_to_name_mem[net_index]);
       end

   /////////////////////////////////////////
   /////////////////////////////////////////
   
   // sniffer on adder internal nets,
   // this will be used to compare simulator results to our accelerator

`include "ref_dut_sniffer.v"

   /////////////////////////////////////////
   /////////////////////////////////////////
   
   function [1:0] encode_bit_value;
      input new_val;
      
      begin
	 
	 if (new_val === 1'b0)
	   encode_bit_value = 2'b00;
	 else if (new_val === 1'b1)
	   encode_bit_value = 2'b01;
	 else if (new_val === 1'bx)
	   encode_bit_value = 2'b10;
	 else if (new_val === 1'bz)
	   encode_bit_value = 2'b11;
      end
   endfunction // encode_bit_value

   /////////////////////////////////////////
   /////////////////////////////////////////

  
 initial
   begin
      input_vcd_wr_ptr= 0;
      input_vcd_rd_ptr= 0;
      input_vcd_len= 0;
   end

   /////////////////////////////////////////
   /////////////////////////////////////////
  
   function [31:0] pop_input;
      input null_bit;
      

      begin
	 pop_input = input_vcd_fifo[input_vcd_rd_ptr];
	 input_vcd_rd_ptr = input_vcd_rd_ptr +1;	 
	 input_vcd_len    = input_vcd_len-1;
	 
	 if (input_vcd_len <= 0)
	   input_vcd_empty = 1;
	 input_vcd_full = 0;

	 
	 if (input_vcd_len < 0)
	   $display ("Error,input_vcd_fifo underflow %d ...",input_vcd_len);
  
      end

   endfunction // pop_input
   /////////////////////////////////////////
   /////////////////////////////////////////
  
   function push_input;

   input [31:0] element;

      begin
	 input_vcd_fifo[input_vcd_wr_ptr] = element;
	 input_vcd_wr_ptr = input_vcd_wr_ptr +1;	 
	 input_vcd_len    = input_vcd_len+1;
	 if (input_vcd_len >= 64)
	   input_vcd_full = 1;
	 input_vcd_empty = 0;
	 
	 
	 if (input_vcd_len > 64)
	   $display ("Error,input_vcd_fifo overflow %d ...",input_vcd_len);
	 push_input = 1;
	 
      end

   endfunction // push_input
   
   /////////////////////////////////////////
   /////////////////////////////////////////

   task pulse_go;
      begin
	 @(posedge clk); 
	 go <= #1000 1;
	 @(posedge clk);
	 go <= #1000 0;
	 @(posedge clk);
	 #1000;
	 
      end

   endtask // pulse_go
   /////////////////////////////////////////
   /////////////////////////////////////////

   task wait_done;
      begin
	 turbosim_cycle_count = 0;
	 while (!done)
	   begin
	      @(posedge clk);
	      #1000;
	      turbosim_cycle_count = turbosim_cycle_count +1;
	   end

      end

   endtask // wait_done
   
   /////////////////////////////////////////
   /////////////////////////////////////////
   
   task write_in_fifo;
      
      begin
	 wait (!full);
	 wr = 1;
	 @(posedge clk);
	 #1000;
	 wr = 0;
      end
   endtask // write_in_fifo
   
  
endmodule

/////////////////////////////////////////
/////////////////////////////////////////


/////////////////////////////////////////
/////////////////////////////////////////

