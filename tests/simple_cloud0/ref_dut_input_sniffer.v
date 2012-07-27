// DATA derived from module simple0 !!!!!!!!!!!!!!!!
// code used to capture inputs change to ref_dut
// converting them to vcd format fed to turbosim in_fifo
reg null_bit;

   always @(ref_dut.a)
     begin
        ref_dut_change_count = ref_dut_change_count +1;
	dt = $time - start_time;
	null_bit = push_input({encode_bit_value(ref_dut.a), 14'd0, dt});
     end

   always @(ref_dut.b)
     begin
        ref_dut_change_count = ref_dut_change_count +1;
	dt = $time - start_time;
	null_bit = push_input({encode_bit_value(ref_dut.b), 14'd1, dt});
     end

   always @(ref_dut.c)
     begin
        ref_dut_change_count = ref_dut_change_count +1;
	dt = $time - start_time;
	null_bit = push_input({encode_bit_value(ref_dut.c), 14'd2, dt});
     end

   always @(ref_dut.d)
     begin
        ref_dut_change_count = ref_dut_change_count +1;
	dt = $time - start_time;
	null_bit = push_input({encode_bit_value(ref_dut.d), 14'd3, dt});
     end
