onerror {exit -code 1}
vlib work
vlog -work work mux8bits.vo
vlog -work work mux8bitsSimulation.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.mux8bits_vlg_vec_tst -voptargs="+acc"
vcd file -direction mux8bits.msim.vcd
vcd add -internal mux8bits_vlg_vec_tst/*
vcd add -internal mux8bits_vlg_vec_tst/i1/*
run -all
quit -f
