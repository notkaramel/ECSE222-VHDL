transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {P:/ECSE 222/Assignments/Lab1/VHDL1/OR_gate.vhd}

vcom -93 -work work {P:/ECSE 222/Assignments/Lab1/VHDL1/OR_gate_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  OR_gate

add wave *
view structure
view signals
run -all
