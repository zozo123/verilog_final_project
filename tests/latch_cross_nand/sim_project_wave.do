onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal -radix hexadecimal /sim_project/o
add wave -noupdate -format Literal -radix hexadecimal /sim_project/a
add wave -noupdate -format Literal -radix hexadecimal /sim_project/b
add wave -noupdate -format Literal /sim_project/i
add wave -noupdate -format Logic /sim_project/clk
add wave -noupdate -format Logic /sim_project/rst
add wave -noupdate -format Logic /sim_project/go
add wave -noupdate -format Logic /sim_project/done
add wave -noupdate -format Logic /sim_project/wr
add wave -noupdate -format Logic /sim_project/rd
add wave -noupdate -format Logic /sim_project/full
add wave -noupdate -format Logic /sim_project/empty
add wave -noupdate -format Literal -radix hexadecimal /sim_project/in_record
add wave -noupdate -format Literal -radix hexadecimal /sim_project/out_record
add wave -noupdate -divider turbosim
add wave -noupdate -format Literal -radix unsigned /sim_project/turbosim/state
add wave -noupdate -format Literal -radix unsigned /sim_project/turbosim/work_counter
add wave -noupdate -format Literal -radix decimal /sim_project/turbosim/work_counter1
add wave -noupdate -format Logic /sim_project/turbosim/out_fifo_wr
add wave -noupdate -format Literal -radix hexadecimal /sim_project/turbosim/in_fifo_rd_data
add wave -noupdate -format Literal -radix hexadecimal /sim_project/turbosim/out_fifo_wr_data
add wave -noupdate -format Logic /sim_project/turbosim/in_fifo_empty
add wave -noupdate -format Logic /sim_project/turbosim/out_fifo_full
add wave -noupdate -divider in_fifo
add wave -noupdate -format Logic /sim_project/turbosim/in_fifo/wr
add wave -noupdate -format Logic /sim_project/turbosim/in_fifo/full
add wave -noupdate -format Literal -radix hexadecimal /sim_project/turbosim/in_fifo/wr_data
add wave -noupdate -format Literal -radix unsigned /sim_project/turbosim/in_fifo/wr_ptr
add wave -noupdate -format Logic /sim_project/turbosim/in_fifo/rd
add wave -noupdate -format Logic /sim_project/turbosim/in_fifo/int_rd
add wave -noupdate -format Logic /sim_project/turbosim/in_fifo/empty
add wave -noupdate -format Literal -radix unsigned /sim_project/turbosim/in_fifo/next_rd_ptr
add wave -noupdate -format Literal -radix hexadecimal /sim_project/turbosim/in_fifo/rd_data
add wave -noupdate -format Literal -radix unsigned /sim_project/turbosim/in_fifo/len
add wave -noupdate -format Logic /sim_project/turbosim/in_fifo/full
add wave -noupdate -format Literal -radix hexadecimal /sim_project/turbosim/in_fifo/dp_ram/ram
add wave -noupdate -divider out_fifo
add wave -noupdate -format Logic /sim_project/turbosim/out_fifo/wr
add wave -noupdate -format Logic /sim_project/turbosim/out_fifo/full
add wave -noupdate -format Literal -radix hexadecimal /sim_project/turbosim/out_fifo/wr_data
add wave -noupdate -format Literal -radix unsigned /sim_project/turbosim/out_fifo/wr_ptr
add wave -noupdate -format Logic /sim_project/turbosim/out_fifo/rd
add wave -noupdate -format Logic /sim_project/turbosim/out_fifo/int_rd
add wave -noupdate -format Logic /sim_project/turbosim/out_fifo/empty
add wave -noupdate -format Literal -radix hexadecimal /sim_project/turbosim/out_fifo/rd_data
add wave -noupdate -format Literal -radix decimal /sim_project/turbosim/out_fifo/rd_ptr
add wave -noupdate -format Literal -radix unsigned /sim_project/turbosim/out_fifo/len
add wave -noupdate -format Logic /sim_project/turbosim/out_fifo_wr_sel
add wave -noupdate -format Literal -radix unsigned /sim_project/turbosim/out_fifo/next_rd_ptr
add wave -noupdate -format Literal -radix hexadecimal -expand /sim_project/turbosim/out_fifo/dp_ram/ram
add wave -noupdate -divider input_vcd_fifo
add wave -noupdate -format Literal -radix hexadecimal /sim_project/input_vcd_fifo
add wave -noupdate -format Literal -radix unsigned /sim_project/input_vcd_wr_ptr
add wave -noupdate -format Literal -radix unsigned /sim_project/input_vcd_rd_ptr
add wave -noupdate -format Literal -radix decimal /sim_project/input_vcd_len
add wave -noupdate -format Logic /sim_project/input_vcd_full
add wave -noupdate -format Logic /sim_project/input_vcd_empty
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {12690992 ps} 0}
WaveRestoreZoom {0 ps} {21 us}
configure wave -namecolwidth 241
configure wave -valuecolwidth 126
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
