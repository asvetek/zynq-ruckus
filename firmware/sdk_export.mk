
.PHONY: expsdk

# Export hardware definition file to SDK folder
expsdk:
	@tclsh sdk_export.tcl
