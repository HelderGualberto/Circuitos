onerror {exit -code 1}
vlib work
vlog -work work Mux2to1.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Mux8Bits_vlg_vec_tst -voptargs="+acc"
vcd file -direction Mux2to1.msim.vcd
vcd add -internal Mux8Bits_vlg_vec_tst/*
vcd add -internal Mux8Bits_vlg_vec_tst/i1/*
run -all
quit -f
