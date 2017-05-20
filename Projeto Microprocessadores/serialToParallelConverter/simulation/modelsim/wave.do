onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /serialtoparallel_tb/clock
add wave -noupdate /serialtoparallel_tb/inst_serialToParallel/inst_clockRecovery/syncClock
add wave -noupdate /serialtoparallel_tb/inst_serialToParallel/inst_clockDivider/clockOut
add wave -noupdate /serialtoparallel_tb/inst_serialToParallel/inst_clockRecovery/syncData
add wave -noupdate /serialtoparallel_tb/dataParallel
add wave -noupdate /serialtoparallel_tb/inst_serialToParallel/inst_fifo/rdreq
add wave -noupdate /serialtoparallel_tb/inst_serialToParallel/inst_fifo/wrreq
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1166250 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {1489361 ps} {8214080 ps}
