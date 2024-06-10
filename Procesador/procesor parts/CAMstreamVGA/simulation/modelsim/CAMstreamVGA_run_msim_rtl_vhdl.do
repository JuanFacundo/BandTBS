transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/matez/OneDrive/Documentos/my-works/5to año/Taller de Sistemas Digitales/Repositorio/BandTBS/Procesador/procesor parts/CAMstreamVGA/Z_1.vhd}
vcom -93 -work work {C:/Users/matez/OneDrive/Documentos/my-works/5to año/Taller de Sistemas Digitales/Repositorio/BandTBS/Procesador/procesor parts/CAMstreamVGA/CAPdrive.vhd}

