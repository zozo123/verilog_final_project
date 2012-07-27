// DATA derived from module simple0 !!!!!!!!!!!!!!!!
// code used to capture all changes in ref_dut and
// generates screen prints with time, value and net name
always @( ref_dut.a )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name a",delta_time,ref_dut.a); end
always @( ref_dut.b )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name b",delta_time,ref_dut.b); end
always @( ref_dut.c )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name c",delta_time,ref_dut.c); end
always @( ref_dut.d )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name d",delta_time,ref_dut.d); end
always @( ref_dut.e )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name e",delta_time,ref_dut.e); end
always @( ref_dut.f )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name f",delta_time,ref_dut.f); end
always @( ref_dut.g )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name g",delta_time,ref_dut.g); end
always @( ref_dut.j1 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name j1",delta_time,ref_dut.j1); end
always @( ref_dut.j2 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name j2",delta_time,ref_dut.j2); end
always @( ref_dut.j3 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name j3",delta_time,ref_dut.j3); end
always @( ref_dut.n1 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name n1",delta_time,ref_dut.n1); end
always @( ref_dut.o1 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name o1",delta_time,ref_dut.o1); end
always @( ref_dut.o2 )
	begin delta_time=($time-start_time); $display("===  ref_vcd      time %d ps, value %b, net name o2",delta_time,ref_dut.o2); end
