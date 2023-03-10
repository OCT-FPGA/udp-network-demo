// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xudp.h"

extern XUdp_Config XUdp_ConfigTable[];

XUdp_Config *XUdp_LookupConfig(u16 DeviceId) {
	XUdp_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XUDP_NUM_INSTANCES; Index++) {
		if (XUdp_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XUdp_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XUdp_Initialize(XUdp *InstancePtr, u16 DeviceId) {
	XUdp_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XUdp_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XUdp_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

