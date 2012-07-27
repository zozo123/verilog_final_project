onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test/cs
add wave -noupdate /test/rnw
add wave -noupdate /test/wr_data
add wave -noupdate /test/rd_data
add wave -noupdate /test/clk
add wave -noupdate /test/valid
add wave -noupdate /test/test_heap/clk
add wave -noupdate /test/test_heap/cs
add wave -noupdate /test/test_heap/rnw
add wave -noupdate /test/test_heap/wr_data
add wave -noupdate /test/test_heap/rd_data
add wave -noupdate /test/test_heap/valid
add wave -noupdate /test/test_heap/state_insert
add wave -noupdate /test/test_heap/state_heap
add wave -noupdate /test/test_heap/state_extract
add wave -noupdate /test/test_heap/ram_cs
add wave -noupdate /test/test_heap/ram_rnw
add wave -noupdate /test/test_heap/buffer_rd
add wave -noupdate /test/test_heap/buffer_wr
add wave -noupdate /test/test_heap/buffer_rst
add wave -noupdate /test/test_heap/address
add wave -noupdate /test/test_heap/smallest_index
add wave -noupdate /test/test_heap/size
add wave -noupdate /test/test_heap/index
add wave -noupdate /test/test_heap/prev_smallest_index
add wave -noupdate /test/test_heap/ram_wr_data
add wave -noupdate /test/test_heap/buffer_wr_data
add wave -noupdate /test/test_heap/left
add wave -noupdate /test/test_heap/right
add wave -noupdate /test/test_heap/daddy
add wave -noupdate /test/test_heap/smallest
add wave -noupdate /test/test_heap/ram_rd_data
add wave -noupdate /test/test_heap/heap_wr_data
add wave -noupdate /test/test_heap/buffer_full
add wave -noupdate /test/test_heap/buffer_empty
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {57 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 234
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {768 ns}
