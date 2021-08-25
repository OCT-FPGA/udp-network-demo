// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XUDP_H
#define XUDP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xudp_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 S_axilite_BaseAddress;
} XUdp_Config;
#endif

typedef struct {
    u32 S_axilite_BaseAddress;
    u32 IsReady;
} XUdp;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XUdp_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XUdp_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XUdp_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XUdp_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XUdp_Initialize(XUdp *InstancePtr, u16 DeviceId);
XUdp_Config* XUdp_LookupConfig(u16 DeviceId);
int XUdp_CfgInitialize(XUdp *InstancePtr, XUdp_Config *ConfigPtr);
#else
int XUdp_Initialize(XUdp *InstancePtr, const char* InstanceName);
int XUdp_Release(XUdp *InstancePtr);
#endif


void XUdp_Set_SocketTable_0_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_0_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_1_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_1_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_2_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_2_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_3_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_3_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_4_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_4_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_5_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_5_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_6_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_6_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_7_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_7_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_8_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_8_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_9_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_9_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_10_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_10_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_11_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_11_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_12_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_12_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_13_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_13_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_14_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_14_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_15_theirIP_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_15_theirIP_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_0_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_0_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_1_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_1_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_2_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_2_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_3_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_3_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_4_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_4_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_5_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_5_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_6_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_6_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_7_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_7_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_8_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_8_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_9_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_9_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_10_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_10_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_11_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_11_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_12_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_12_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_13_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_13_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_14_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_14_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_15_theirPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_15_theirPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_0_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_0_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_1_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_1_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_2_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_2_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_3_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_3_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_4_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_4_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_5_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_5_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_6_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_6_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_7_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_7_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_8_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_8_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_9_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_9_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_10_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_10_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_11_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_11_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_12_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_12_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_13_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_13_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_14_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_14_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_15_myPort_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_15_myPort_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_0_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_0_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_1_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_1_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_2_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_2_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_3_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_3_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_4_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_4_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_5_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_5_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_6_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_6_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_7_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_7_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_8_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_8_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_9_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_9_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_10_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_10_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_11_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_11_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_12_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_12_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_13_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_13_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_14_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_14_valid_V(XUdp *InstancePtr);
void XUdp_Set_SocketTable_15_valid_V(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_15_valid_V(XUdp *InstancePtr);
u32 XUdp_Get_numberSockets_V(XUdp *InstancePtr);
u32 XUdp_Get_numberSockets_V_vld(XUdp *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
