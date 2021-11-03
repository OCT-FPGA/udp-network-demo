// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
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
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 S_axilite_BaseAddress;
} XUdp_Config;
#endif

typedef struct {
    u64 S_axilite_BaseAddress;
    u32 IsReady;
} XUdp;

typedef u32 word_type;

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


void XUdp_Set_SocketTable_theirIP_0(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_0(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_1(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_1(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_2(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_2(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_3(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_3(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_4(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_4(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_5(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_5(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_6(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_6(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_7(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_7(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_8(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_8(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_9(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_9(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_10(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_10(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_11(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_11(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_12(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_12(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_13(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_13(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_14(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_14(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirIP_15(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirIP_15(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_0(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_0(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_1(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_1(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_2(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_2(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_3(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_3(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_4(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_4(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_5(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_5(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_6(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_6(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_7(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_7(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_8(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_8(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_9(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_9(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_10(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_10(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_11(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_11(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_12(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_12(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_13(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_13(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_14(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_14(XUdp *InstancePtr);
void XUdp_Set_SocketTable_theirPort_15(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_theirPort_15(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_0(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_0(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_1(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_1(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_2(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_2(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_3(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_3(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_4(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_4(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_5(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_5(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_6(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_6(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_7(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_7(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_8(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_8(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_9(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_9(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_10(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_10(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_11(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_11(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_12(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_12(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_13(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_13(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_14(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_14(XUdp *InstancePtr);
void XUdp_Set_SocketTable_myPort_15(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_myPort_15(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_0(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_0(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_1(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_1(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_2(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_2(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_3(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_3(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_4(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_4(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_5(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_5(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_6(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_6(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_7(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_7(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_8(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_8(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_9(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_9(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_10(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_10(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_11(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_11(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_12(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_12(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_13(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_13(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_14(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_14(XUdp *InstancePtr);
void XUdp_Set_SocketTable_valid_15(XUdp *InstancePtr, u32 Data);
u32 XUdp_Get_SocketTable_valid_15(XUdp *InstancePtr);
u32 XUdp_Get_numberSockets(XUdp *InstancePtr);
u32 XUdp_Get_numberSockets_vld(XUdp *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
