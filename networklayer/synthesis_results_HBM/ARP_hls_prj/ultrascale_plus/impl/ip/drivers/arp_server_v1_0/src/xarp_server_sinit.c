// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xarp_server.h"

extern XArp_server_Config XArp_server_ConfigTable[];

XArp_server_Config *XArp_server_LookupConfig(u16 DeviceId) {
	XArp_server_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XARP_SERVER_NUM_INSTANCES; Index++) {
		if (XArp_server_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XArp_server_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XArp_server_Initialize(XArp_server *InstancePtr, u16 DeviceId) {
	XArp_server_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XArp_server_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XArp_server_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

