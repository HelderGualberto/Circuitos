onerror {exit -code 1}
vlib work
vcom -work work serialToParallel.vho
vcom -work work clockRecovery_simulation.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.clockRecovery_vhd_vec_tst
vcd file -direction serialToParallel.msim.vcd
vcd add -internal clockRecovery_vhd_vec_tst/*
vcd add -internal clockRecovery_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


