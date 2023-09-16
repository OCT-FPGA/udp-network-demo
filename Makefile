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
DEVICE ?= xilinx_u280_gen3x16_xdma_1_202211_1
INTERFACE ?= 0
JOBS ?= 8
XCLBIN_NAME ?= udp_demo_if$(INTERFACE)

XSA := $(strip $(patsubst %.xpfm, % , $(shell basename $(DEVICE))))
TEMP_DIR := _x.$(XSA)
VPP := $(XILINX_VITIS)/bin/v++
CLFLAGS += -t hw --platform $(DEVICE) --save-temps
BUILD_DIR := ./build_hw_if$(INTERFACE)
HOST_BUILD_DIR := ./host/build_sw_if$(INTERFACE)
BINARY_CONTAINERS = $(BUILD_DIR)/${XCLBIN_NAME}.xclbin

PWD = $(shell readlink -f .)
#Include Libraries
CXX = g++
CXXFLAGS = -g -std=c++17 -I$(XILINX_XRT)/include
SENDER_HOST_SRCS += host/fileops.cpp
SENDER_HOST_SRCS += host/ip_to_hex.cpp
RECEIVER_HOST_SRCS += host/fileops.cpp
RECEIVER_HOST_SRCS += host/ip_to_hex.cpp
SENDER_HOST_SRCS += host/udp_host_sender_if$(INTERFACE).cpp
RECEIVER_HOST_SRCS += host/udp_host_receiver_if$(INTERFACE).cpp

# Host compiler global settings
LDFLAGS = -L$(XILINX_XRT)/lib -lxrt_coreutil -pthread

ifneq ($(HOST_ARCH), x86)
  LDFLAGS += --sysroot=$(SYSROOT)
endif

SENDER_EXECUTABLE = $(HOST_BUILD_DIR)/udp_host_sender_if$(INTERFACE)
RECEIVER_EXECUTABLE = $(HOST_BUILD_DIR)/udp_host_receiver_if$(INTERFACE)
CMD_ARGS = $(BUILD_DIR)/${XCLBIN_NAME}.xclbin

NETLAYERDIR = ./networklayer/
CMACDIR     = ./cmac/
USERKRNLDIR = ./user_krnl/


POSTSYSLINKTCL ?= $(shell readlink -f ./post_sys_link.tcl)

LIST_XO = $(NETLAYERDIR)networklayer.xo
CONFIGFLAGS := --config connectivity_if$(INTERFACE).tmp.ini

# Include cmac kernel depending on the interface
ifeq (3, $(INTERFACE))
	LIST_XO += $(CMACDIR)cmac_0.xo
	LIST_XO += $(CMACDIR)cmac_1.xo
else
	LIST_XO += $(CMACDIR)cmac_$(INTERFACE).xo
endif

# Include application kernels depending on the design
LIST_XO += $(USERKRNLDIR)xofiles/txkrnl.xo
LIST_XO += $(USERKRNLDIR)xofiles/rxkrnl.xo
	
# Linker params
# Linker userPostSysLinkTcl param
HLS_IP_FOLDER  = $(shell readlink -f ./$(NETLAYERDIR)synthesis_results_HBM)
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
	$(VPP) $(CLFLAGS) $(CONFIGFLAGS) --temp_dir $(BUILD_DIR) -l -o'$@' $(LIST_XO) $(LIST_REPOS) --hls.jobs $(JOBS) 

.PHONY: exe
exe: $(SENDER_EXECUTABLE) $(RECEIVER_EXECUTABLE)

# Building Host
.PHONY: compile
compile: $(SENDER_EXECUTABLE)
$(SENDER_EXECUTABLE): check-xrt $(SENDER_HOST_SRCS) 
	mkdir -p $(HOST_BUILD_DIR) 
	$(CXX) $(CXXFLAGS) $(SENDER_HOST_SRCS) -o '$@' $(LDFLAGS)

compile: $(RECEIVER_EXECUTABLE)
$(RECEIVER_EXECUTABLE): check-xrt $(RECEIVER_HOST_SRCS)
	$(CXX) $(CXXFLAGS) $(RECEIVER_HOST_SRCS) -o '$@' $(LDFLAGS)


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
	echo "param=compiler.worstNegativeSlack=-2" >> connectivity_if$(INTERFACE).tmp.ini

