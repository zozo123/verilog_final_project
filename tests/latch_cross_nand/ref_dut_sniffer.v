// DATA derived from module latch0 !!!!!!!!!!!!!!!!
// code used to capture all changes in ref_dut and
// generates screen prints with time, value and net name
always @( ref_dut.clk )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name clk",delta_time,ref_dut.clk); end
always @( ref_dut.d )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name d",delta_time,ref_dut.d); end
always @( ref_dut.n1 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name n1",delta_time,ref_dut.n1); end
always @( ref_dut.n2 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name n2",delta_time,ref_dut.n2); end
always @( ref_dut.n3 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name n3",delta_time,ref_dut.n3); end
always @( ref_dut.n4 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name n4",delta_time,ref_dut.n4); end
always @( ref_dut.n5 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name n5",delta_time,ref_dut.n5); end
always @( ref_dut.q )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name q",delta_time,ref_dut.q); end
always @( ref_dut.qb )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name qb",delta_time,ref_dut.qb); end
