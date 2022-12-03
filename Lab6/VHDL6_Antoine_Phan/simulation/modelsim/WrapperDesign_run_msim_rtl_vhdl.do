transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/ECSE222-VHDL/Lab6/VHDL6_Antoine_Phan/Antoine_Phan_Counter.vhd}
vcom -93 -work work {D:/ECSE222-VHDL/Lab6/VHDL6_Antoine_Phan/Antoine_Phan_Clock_Divider.vhd}
vcom -93 -work work {D:/ECSE222-VHDL/Lab6/VHDL6_Antoine_Phan/Seven_Segment_Decoder.vhd}
vcom -93 -work work {D:/ECSE222-VHDL/Lab6/VHDL6_Antoine_Phan/Antoine_Phan_FSM.vhd}
vcom -93 -work work {D:/ECSE222-VHDL/Lab6/VHDL6_Antoine_Phan/Antoine_Phan_Sequence_Detector.vhd}
vcom -93 -work work {D:/ECSE222-VHDL/Lab6/VHDL6_Antoine_Phan/ROM.vhd}
vcom -93 -work work {D:/ECSE222-VHDL/Lab6/VHDL6_Antoine_Phan/Antoine_Phan_Wrapper2.vhd}

vcom -93 -work work {D:/ECSE222-VHDL/Lab6/VHDL6_Antoine_Phan/Wrapper2_Simulation.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Wrapper2_Simulation

add wave *
view structure
view signals
run -all
