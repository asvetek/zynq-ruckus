source $::env(RUCKUS_DIR)/vivado_env_var.tcl

# Export hardware definition file to SDK folder
exec cp -f ${OUT_DIR}/${VIVADO_PROJECT}.runs/impl_1/${PROJECT}.sysdef $::env(SDK_PATH)/${PROJECT}.hdf

