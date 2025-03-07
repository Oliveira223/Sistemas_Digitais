if {[file isdirectory work]} {vdel -all -lib work}
vlib work
vmap work work 
vcom -work work -2008 -explicit mux.vhd
vcom -work work -2008 -explicit mux_tb.vhd
vsim work.mux
quietly set StdArithNoWarnings 1
quietly set StdVitalGlitchNoWarnings 1
do wave.do
run 1ms 