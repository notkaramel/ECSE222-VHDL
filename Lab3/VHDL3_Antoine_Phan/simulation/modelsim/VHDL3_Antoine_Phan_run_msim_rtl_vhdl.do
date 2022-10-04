transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {P:/ECSE222-VHDL/Lab3/VHDL3_Antoine_Phan/Half_Adder.vhd}
vcom -93 -work work {P:/ECSE222-VHDL/Lab3/VHDL3_Antoine_Phan/Full_adder.vhd}
vcom -93 -work work {P:/ECSE222-VHDL/Lab3/VHDL3_Antoine_Phan/RCA_Structural.vhd}

vcom -93 -work work {P:/ECSE222-VHDL/Lab3/VHDL3_Antoine_Phan/RCA_Structural_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  rca_structural_tb

add wave *
view structure
view signals
run -all
