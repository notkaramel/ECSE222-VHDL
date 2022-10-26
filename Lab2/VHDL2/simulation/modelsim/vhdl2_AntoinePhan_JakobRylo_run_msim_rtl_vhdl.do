transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {P:/ECSE222-VHDL/Lab2/VHDL2/AntoinePhan_JakobRylo_MUX2to1_behavioral.vhd}

vcom -93 -work work {P:/ECSE222-VHDL/Lab2/VHDL2/behavioral_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  behave_tb

add wave *
view structure
view signals
run -all
