transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/Stack_P.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/RAM.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/sreg.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/ext_sig_br.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/registro.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/Program_C.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/mem_prog.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/dec_instruccion.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/ALU.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/procesador.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/ext_sig_rjmp.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/archivo_registros.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/dec5_32.vhd}
vcom -93 -work work {C:/Users/leonm/OneDrive/Escritorio/5 semestre/arquitectura/procesador-2/mux32_8.vhd}

