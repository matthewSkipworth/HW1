onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MuxN_testbench/TESTN
add wave -noupdate /MuxN_testbench/S
add wave -noupdate /MuxN_testbench/A
add wave -noupdate /MuxN_testbench/B
add wave -noupdate /MuxN_testbench/C
add wave -noupdate /MuxN_testbench/D
add wave -noupdate /MuxN_testbench/E
add wave -noupdate /MuxN_testbench/F
add wave -noupdate /MuxN_testbench/G
add wave -noupdate /MuxN_testbench/H
add wave -noupdate /MuxN_testbench/M
add wave -noupdate /MuxN_testbench/I
add wave -noupdate /MuxN_testbench/RX
add wave -noupdate /MuxN_testbench/RA
add wave -noupdate /MuxN_testbench/RB
add wave -noupdate /MuxN_testbench/RC
add wave -noupdate /MuxN_testbench/RD
add wave -noupdate /MuxN_testbench/RE
add wave -noupdate /MuxN_testbench/RF
add wave -noupdate /MuxN_testbench/RG
add wave -noupdate /MuxN_testbench/RH
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {267 ps}
