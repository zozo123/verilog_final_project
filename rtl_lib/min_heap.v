`timescale 1ns / 1ns

module min_heap #(parameter data_wd=16, capacity=8, addr=3) 
	(
	input wire clk, cs, rnw, 
	input wire [data_wd-1:0] wr_data,
	output reg [data_wd-1:0] rd_data,
	output reg valid, ready
	);
   
	reg [1:0] state_insert,state_heap;
	reg [4:0] state_extract;
	reg ram_cs,ram_rnw,buffer_rd, buffer_wr, buffer_rst;
	reg [addr-1:0] address,smallest_index,size,index,prev_smallest_index;
	reg [data_wd-1:0] ram_wr_data,buffer_wr_data,left,right,daddy,smallest;
	wire [data_wd-1:0] ram_rd_data,heap_wr_data;
	wire buffer_full, buffer_empty;
   
	sp_ram #(.add_wd(addr), .data_wd(data_wd), .depth(capacity)) 
	future_events(
		.clk(clk),
		.cs(ram_cs),
		.rnw(ram_rnw),
		.add(address),
		.wr_data(ram_wr_data),
		.rd_data(ram_rd_data)
		);
	
	fifo #(.add_wd(addr), .data_wd(data_wd), .depth(capacity)) 
	buffer(
		.clk(clk),
		.rd(buffer_rd),
		.wr(buffer_wr),
		.rst(buffer_rst),
		.wr_data(buffer_wr_data),
		.full(buffer_full),
		.empty(buffer_empty),
		.rd_data(heap_wr_data)
		);
   
	`define IDLE					0
	`define INSERT					1
	`define EXTRACT					2
	`define WAITING 				0
	`define PREPARE_WHILE_CONDITION 1
	`define INSIDE_WHILE 			2
	`define NOP						3
	`define A						0
	`define B						1
	`define C						2
	`define D						3
	`define E						4
	`define F						5
	`define G						6
	`define H						7
	`define I						8
	`define NOPB					9
	`define NOPC					10
	`define NOPD					11
	`define NOPE					12
	`define NOPF					13
	`define NOPG					14
	`define NOPH					15
	`define NOPI					16
	
	initial
	begin
		buffer_rst <= #1 1;
		ram_cs <= #1 0;
		address <= #1 0;
		size <= #1 0;
		index <= #1 0;
		valid <= #1 0;
		state_heap <= #1 `IDLE;
	end
	
	always @(posedge clk)
	begin
		if (buffer_rst)
		begin
			buffer_rst <= #1 0;
			buffer_rd <= #1 0;
			buffer_wr <= #1 0;
		end
		if (cs && !rnw)
		begin
			buffer_wr <= #1 1;
			buffer_wr_data <= #1 wr_data;
		end
		else
			buffer_wr <= #1 0;
		
	end
	
	always @(posedge clk)
		case(state_heap)
			`IDLE:
			begin
				ready <= #1 1;
				buffer_rd <= #1 0;
				ram_cs <= #1 0;
				if (buffer_empty == 0)
				begin
					ready <= #1 0;
					state_heap <= #1 `INSERT;
					state_insert <= #1 `WAITING;
				end
				if (cs && rnw)
				begin
					ready <= #1 0;
					state_heap <= #1 `EXTRACT;
					state_extract <= #1 `A;
				end
			end
			
			`INSERT:
				case (state_insert)
					`WAITING:
						begin
							size <= #1 size + 1;
							index <= #1 size + 1;
							state_insert <= #1 `PREPARE_WHILE_CONDITION;
						end
						
					`PREPARE_WHILE_CONDITION:
					begin
						address <= #1 index / 2;		
						ram_rnw <= #1 1;
						ram_cs <= #1 1;
						state_insert <= #1 `NOP;
					end
					
					`NOP:
						if (1 == 1)
						begin
							state_insert <= #1 `INSIDE_WHILE;
							//ram_cs <= #1 1;
						end
					
					`INSIDE_WHILE:
						if (index > 1 && ram_rd_data > heap_wr_data)
						begin
							address <= #1 index;
							ram_wr_data <= #1 ram_rd_data;
							ram_rnw <= #1 0;
							ram_cs <= #1 1;
							index <= #1 index / 2;
							state_insert <= #1 `PREPARE_WHILE_CONDITION;
						end
						else
						begin
							ram_cs <= #1 1;
							address <= #1 index;
							ram_wr_data <= #1 heap_wr_data;
							ram_rnw <= #1 0;
							buffer_rd <= #1 1;
							state_heap <= #1 `IDLE;
						end
				endcase
				
			`EXTRACT:
				case(state_extract)
					`A:
					begin
						ram_cs <= #1 1;
						address <= #1 1;
						ram_rnw <= #1 1;
						state_extract <= #1 `NOPB;
					end
					`NOPB:
					begin
						ram_cs <= #1 0;
						state_extract <= #1 `B;
					end
					`B:
					begin
						ram_cs <= #1 1;
						rd_data <= #1 ram_rd_data;
						valid <= #1 1;
						if (size > 1)
						begin
							address <= #1 size;
							state_extract <= #1 `NOPC;
						end
						else
						begin
							ram_cs <= #1 0;
							size <= #1 size - 1;
							state_heap <= #1 `IDLE;
						end
					end
					`NOPC:
					begin
						ram_cs <= #1 0;
						state_extract <= #1 `C;
					end
					`C:
					begin
						ram_cs <= #1 1;
						ram_wr_data <= #1 ram_rd_data;
						address <= #1 1;
						ram_rnw <= #1 0;
						size <= #1 size - 1;
						prev_smallest_index <= #1 1;
						state_extract <= #1 `NOPD;
					end
					`NOPD:
					begin
						ram_cs <= #1 0;
						state_extract <= #1 `D;
					end
					`D:
					begin
						ram_cs <= #1 1;
						address <= #1 2*prev_smallest_index;
						ram_rnw <= #1 1;
						state_extract <= #1 `NOPE;
					end
					`NOPE:
					begin
						ram_cs <= #1 0;
						state_extract <= #1 `E;
					end
					`E:
					begin
						ram_cs <= #1 1;
						left <= #1 ram_rd_data;
						address <= #1 address + 1;
						state_extract <= #1 `NOPF;
					end
					`NOPF:
					begin
						ram_cs <= #1 0;
						state_extract <= #1 `F;
					end
					`F:
					begin
						ram_cs <= #1 1;
						right <= #1 ram_rd_data;
						address <= #1 prev_smallest_index;
						state_extract <= #1 `NOPG;
					end
					`NOPG:
					begin
						ram_cs <= #1 0;
						state_extract <= #1 `G;
					end
					`G:
					begin
						ram_cs <= #1 1;
						daddy <= #1 ram_rd_data;
						if (2*prev_smallest_index <= size && right < ram_rd_data)
							smallest_index <= #1 2*prev_smallest_index;
						else
							smallest_index <= #1 prev_smallest_index;
						address <= #1 smallest;
						state_extract <= #1 `NOPH;
					end
					`NOPH:
					begin
						ram_cs <= #1 0;
						state_extract <= #1 `H;
					end
					`H:
					begin
						ram_cs <= #1 1;
						smallest <= #1 ram_rd_data;
						if (2*prev_smallest_index + 1 <= size && right < ram_rd_data)
							smallest_index <= #1 2*prev_smallest_index + 1;
						if (smallest_index != prev_smallest_index)
						begin
							ram_rnw <= #1 0;
							address <= #1 smallest_index;
							ram_wr_data <= #1 daddy;
							state_extract <= #1 `NOPI;
						end
						else
						begin
							ram_cs <= #1 0;
							state_heap <= #1 `IDLE;
						end
					end
					`NOPI:
					begin
						ram_cs <= #1 0;
						state_extract <= #1 `I;
					end
					`I:
					begin
						ram_cs <= #1 1;
						address <= #1 prev_smallest_index;
						ram_wr_data <= #1 smallest;
						prev_smallest_index <= #1 smallest_index;
						state_extract <= #1 `NOPD;
					end
				endcase
		endcase
endmodule