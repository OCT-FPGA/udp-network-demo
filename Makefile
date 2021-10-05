SHELL := /bin/bash
.PHONY: help

help:
	@echo "Makefile Usage:"
	@echo "  make all INTERFACE=<CMAC Interface (0 or 1)> JOBS=<number of jobs>"
	@echo ""
	@echo "  make clean "
	@echo "      Command to remove the generated non-hardware files."
	@echo ""
	@echo "  make cleanall"
	@echo "      Command to remove all the generated files."
	@echo ""

SYSROOT :=
HOST_ARCH := x86
DEVICE ?= xilinx_u280_xdma_201920_3
INTERFACE ?= 0
JOBS ?= 8
XCLBIN_NAME ?= demo_if$(INTERFACE)

XSA := $(strip $(patsubst %.xpfm, % , $(shell basename $(DEVICE))))
TEMP_DIR := _x.$(XSA)
VPP := $(XILINX_VITIS)/bin/v++
CLFLAGS += -t hw --platform $(DEVICE) --save-temps
BUILD_DIR := ./build_hw_if$(INTERFACE)
HOST_BUILD_DIR := ./host/build_sw_if$(INTERFACE)
BINARY_CONTAINERS = $(BUILD_DIR)/${XCLBIN_NAME}.xclbin

COMMON_REPO = ./
PWD = $(shell readlink -f .)
ABS_COMMON_REPO = $(shell readlink -f $(COMMON_REPO))

#Include Libraries
include $(ABS_COMMON_REPO)/common/includes/opencl/opencl.mk
include $(ABS_COMMON_REPO)/common/includes/xcl2/xcl2.mk
CXXFLAGS += $(xcl2_CXXFLAGS)
LDFLAGS += $(xcl2_LDFLAGS)
SENDER_HOST_SRCS += $(xcl2_SRCS)
RECEIVER_HOST_SRCS += $(xcl2_SRCS)
CXXFLAGS += $(opencl_CXXFLAGS) -Wall -O0 -g -std=gnu++14
CXXFLAGS +=  -DVITIS_PLATFORM=$(VITIS_PLATFORM)
LDFLAGS += $(opencl_LDFLAGS)
SENDER_HOST_SRCS += host/fileops.cpp
RECEIVER_HOST_SRCS += host/fileops.cpp
SENDER_HOST_SRCS += host/host_sender_if$(INTERFACE).cpp
RECEIVER_HOST_SRCS += host/host_receiver_if$(INTERFACE).cpp

# Host compiler global settings
CXXFLAGS += -fmessage-length=0
LDFLAGS += -lrt -lstdc++

ifneq ($(HOST_ARCH), x86)
  LDFLAGS += --sysroot=$(SYSROOT)
endif

LDFLAGS+= -lOpenCL -luuid -lxrt_core -lxilinxopencl

SENDER_EXECUTABLE = $(HOST_BUILD_DIR)/host_sender_if$(INTERFACE)
RECEIVER_EXECUTABLE = $(HOST_BUILD_DIR)/host_receiver_if$(INTERFACE)
CMD_ARGS = $(BUILD_DIR)/${XCLBIN_NAME}.xclbin

NETLAYERDIR = ./networklayer/
CMACDIR     = ./cmac/
USERKRNLDIR = ./user_krnl/


POSTSYSLINKTCL ?= $(shell readlink -f ./post_sys_link.tcl)

LIST_XO = $(NETLAYERDIR)networklayer.xo
CONFIGFLAGS := --config connectivity_if$(INTERFACE).tmp.ini

# Include cmac kernel depending on the interface

LIST_XO += $(CMACDIR)cmac_$(INTERFACE).xo


# Include application kernels depending on the design
LIST_XO += $(USERKRNLDIR)xofiles/txkrnl.xo
LIST_XO += $(USERKRNLDIR)xofiles/rxkrnl.xo
	
# Linker params
# Linker userPostSysLinkTcl param
HLS_IP_FOLDER  = $(shell readlink -f ./$(NETLAYERDIR)synthesis_results_HMB)
LIST_REPOS := --user_ip_repo_paths $(HLS_IP_FOLDER)


.PHONY: all clean cleanall 
all: check-devices check-vitis check-xrt create-conf-file $(SENDER_EXECUTABLE) $(RECEIVER_EXECUTABLE) $(BINARY_CONTAINERS)

# Cleaning stuff
clean:
	rm -rf *v++* *.log *.jou *.str host/build*

cleanall: clean
	rm -rf _x* .Xil .ipcache/ *.info *.link_summary *.ltx *.xclbin ./build* ./connectivity*


# Building kernel
$(BUILD_DIR)/${XCLBIN_NAME}.xclbin:
	mkdir -p $(BUILD_DIR)
	make -C $(USERKRNLDIR) all DEVICE=$(DEVICE)
	$(VPP) $(CLFLAGS) $(CONFIGFLAGS) --temp_dir $(BUILD_DIR) -l -o'$@' $(LIST_XO) $(LIST_REPOS) -j $(JOBS) 

.PHONY: exe
exe: $(SENDER_EXECUTABLE) $(RECEIVER_EXECUTABLE)

# Building Host
.PHONY: compile
compile: $(SENDER_EXECUTABLE)
$(SENDER_EXECUTABLE): check-xrt $(SENDER_HOST_SRCS) $(HOST_HDRS)
	mkdir -p $(HOST_BUILD_DIR) 
	$(CXX) $(CXXFLAGS) $(SENDER_HOST_SRCS) $(HOST_HDRS) -o '$@' $(LDFLAGS)

compile: $(RECEIVER_EXECUTABLE)
$(RECEIVER_EXECUTABLE): check-xrt $(RECEIVER_HOST_SRCS) $(HOST_HDRS)
	$(CXX) $(CXXFLAGS) $(RECEIVER_HOST_SRCS) $(HOST_HDRS) -o '$@' $(LDFLAGS)


check-devices:
ifndef DEVICE
	$(error DEVICE not set. Please set the DEVICE properly and rerun. Run "make help" for more details.)
endif

#Checks for XILINX_VITIS
check-vitis:
ifndef XILINX_VITIS
	$(error XILINX_VITIS variable is not set, please set correctly and rerun)
endif

#Checks for XILINX_XRT
check-xrt:
ifndef XILINX_XRT
	$(error XILINX_XRT variable is not set, please set correctly and rerun)
endif

create-conf-file:
	cp config_files/connectivity_if$(INTERFACE).ini connectivity_if$(INTERFACE).tmp.ini
	echo "" >> connectivity_if$(INTERFACE).tmp.ini
	echo "" >> connectivity_if$(INTERFACE).tmp.ini
	echo "[advanced]" >> connectivity_if$(INTERFACE).tmp.ini
	echo "param=compiler.userPostSysLinkOverlayTcl=$(POSTSYSLINKTCL)" >> connectivity_if$(INTERFACE).tmp.ini
	echo "#param=compiler.worstNegativeSlack=-2" >> connectivity_if$(INTERFACE).tmp.ini

