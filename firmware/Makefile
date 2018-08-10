# Define target output
target: bit
#
# # Define Firmware Version Number
export PRJ_VERSION = 0x00000001
#
export PROJECT = base_zynq_wrapper
#
# # Define target part
export PRJ_PART = xc7z020clg400-1
#
# # # Define software path
export SDK_SRC_PATH = $(PROJ_DIR)/../software
#
#  # Using a non-standard target directory structure,
# which requires me to define the TOP_DIR path
export TOP_DIR = $(abspath $(PWD))
 
export XIL_IPI_REPO = $(abspath $(PWD)/xil_ipi_repo)
#
#
# # Use top level makefile
include $(TOP_DIR)/submodules/ruckus/system_vivado.mk
