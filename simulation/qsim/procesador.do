onerror {quit -f}
vlib work
vlog -work work procesador.vo
vlog -work work procesador.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.procesador_vlg_vec_tst
vcd file -direction procesador.msim.vcd
vcd add -internal procesador_vlg_vec_tst/*
vcd add -internal procesador_vlg_vec_tst/i1/*
add wave /*
run -all
