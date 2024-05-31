transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/compu/Documents/1Juan/1Facultad/9 Semestre/E1225 Taller de Sistemas Digitales/0Repository/BandTBS/Procesador/procesor parts/RAM2VGA TEST/vga_generator.vhd}

