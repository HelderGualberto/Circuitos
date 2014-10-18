onerror {quit -f}
vlib work
vlog -work work Projeto.vo
vlog -work work Projeto.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Integracao_vlg_vec_tst
vcd file -direction Projeto.msim.vcd
vcd add -internal Integracao_vlg_vec_tst/*
vcd add -internal Integracao_vlg_vec_tst/i1/*
add wave /*
run -all
