onerror {quit -f}
vlib work
vlog -work work Mux2to1.vo
vlog -work work Mux2to1.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Mux8Bits_vlg_vec_tst
vcd file -direction Mux2to1.msim.vcd
vcd add -internal Mux8Bits_vlg_vec_tst/*
vcd add -internal Mux8Bits_vlg_vec_tst/i1/*
add wave /*
run -all
