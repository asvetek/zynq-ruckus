source $::env(RUCKUS_DIR)/vivado_env_var.tcl

set proj_bd_file ${OUT_DIR}/${VIVADO_PROJECT}.srcs/sources_1/bd/bd/base_zynq.bd
set src_bd_file ${PROJ_DIR}/bd/base_zynq.bd

set proj_bd_wrapper_file ${OUT_DIR}/${VIVADO_PROJECT}.srcs/sources_1/bd/bd/hdl/base_zynq_wrapper.vhd
set src_bd_wrapper_file ${PROJ_DIR}/hdl/base_zynq_wrapper.vhd

set rc [catch { exec diff $proj_bd_file $src_bd_file } msg ]

if { $rc } {
    puts "NOTICE: BD modifications detected. Copying project BD and BD's wrapper VHDL back to source dir."
    exec cp $proj_bd_file $src_bd_file
    exec cp $proj_bd_wrapper_file $src_bd_wrapper_file
}
