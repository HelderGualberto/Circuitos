onerror {exit -code 1}
vlib work
vlog -work work Calculator.vo
<<<<<<< HEAD
vlog -work work ULASimulation.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.ULA_vlg_vec_tst -voptargs="+acc"
vcd file -direction Calculator.msim.vcd
vcd add -internal ULA_vlg_vec_tst/*
vcd add -internal ULA_vlg_vec_tst/i1/*
=======
vlog -work work dataFluxSimulation.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.dataFlux_vlg_vec_tst -voptargs="+acc"
vcd file -direction Calculator.msim.vcd
vcd add -internal dataFlux_vlg_vec_tst/*
vcd add -internal dataFlux_vlg_vec_tst/i1/*
>>>>>>> origin/master
run -all
quit -f
