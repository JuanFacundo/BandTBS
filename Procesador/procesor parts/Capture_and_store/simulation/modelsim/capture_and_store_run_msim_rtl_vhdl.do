transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/compu/Documents/1Juan/1Facultad/9 Semestre/E1225 Taller de Sistemas Digitales/0Repository/BandTBS/Procesador/procesor parts/Capture_and_store/memory.vhd}
vcom -93 -work work {C:/Users/compu/Documents/1Juan/1Facultad/9 Semestre/E1225 Taller de Sistemas Digitales/0Repository/BandTBS/Procesador/procesor parts/Capture_and_store/DelayedOutput.vhd}
vcom -93 -work work {C:/Users/compu/Documents/1Juan/1Facultad/9 Semestre/E1225 Taller de Sistemas Digitales/0Repository/BandTBS/Procesador/procesor parts/Capture_and_store/Capture_driver.vhd}
vcom -93 -work work {C:/Users/compu/Documents/1Juan/1Facultad/9 Semestre/E1225 Taller de Sistemas Digitales/0Repository/BandTBS/Procesador/procesor parts/Capture_and_store/RegisterPP.vhd}
vcom -93 -work work {C:/Users/compu/Documents/1Juan/1Facultad/9 Semestre/E1225 Taller de Sistemas Digitales/0Repository/BandTBS/Procesador/procesor parts/Capture_and_store/div_clk.vhd}
vcom -93 -work work {C:/Users/compu/Documents/1Juan/1Facultad/9 Semestre/E1225 Taller de Sistemas Digitales/0Repository/BandTBS/Procesador/procesor parts/Capture_and_store/capture_and_store.vhd}

