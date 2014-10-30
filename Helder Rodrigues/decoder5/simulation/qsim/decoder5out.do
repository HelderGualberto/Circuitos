onerror {exit -code 1}
vlib work
vlog -work work decoder5out.vo
vlog -work work 7segmentsSimulation.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Mux5to1_vlg_vec_tst -voptargs="+acc"
vcd file -direction decoder5out.msim.vcd
vcd add -internal Mux5to1_vlg_vec_tst/*
vcd add -internal Mux5to1_vlg_vec_tst/i1/*
run -all
quit -f
