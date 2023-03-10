// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XARP_SERVER_H
#define XARP_SERVER_H

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
#include "xarp_server_hw.h"

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
} XArp_server_Config;
#endif

typedef struct {
    u64 S_axilite_BaseAddress;
    u32 IsReady;
} XArp_server;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XArp_server_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XArp_server_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XArp_server_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XArp_server_ReadReg(BaseAddress, RegOffset) \
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
int XArp_server_Initialize(XArp_server *InstancePtr, u16 DeviceId);
XArp_server_Config* XArp_server_LookupConfig(u16 DeviceId);
int XArp_server_CfgInitialize(XArp_server *InstancePtr, XArp_server_Config *ConfigPtr);
#else
int XArp_server_Initialize(XArp_server *InstancePtr, const char* InstanceName);
int XArp_server_Release(XArp_server *InstancePtr);
#endif


void XArp_server_Set_arp_scan_i(XArp_server *InstancePtr, u32 Data);
u32 XArp_server_Get_arp_scan_i(XArp_server *InstancePtr);
u32 XArp_server_Get_arp_scan_o(XArp_server *InstancePtr);
u32 XArp_server_Get_arp_scan_o_vld(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_valid_BaseAddress(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_valid_HighAddress(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_valid_TotalBytes(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_valid_BitWidth(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_valid_Depth(XArp_server *InstancePtr);
u32 XArp_server_Write_arpTable_valid_Words(XArp_server *InstancePtr, int offset, word_type *data, int length);
u32 XArp_server_Read_arpTable_valid_Words(XArp_server *InstancePtr, int offset, word_type *data, int length);
u32 XArp_server_Write_arpTable_valid_Bytes(XArp_server *InstancePtr, int offset, char *data, int length);
u32 XArp_server_Read_arpTable_valid_Bytes(XArp_server *InstancePtr, int offset, char *data, int length);
u32 XArp_server_Get_arpTable_ipAddress_BaseAddress(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_ipAddress_HighAddress(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_ipAddress_TotalBytes(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_ipAddress_BitWidth(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_ipAddress_Depth(XArp_server *InstancePtr);
u32 XArp_server_Write_arpTable_ipAddress_Words(XArp_server *InstancePtr, int offset, word_type *data, int length);
u32 XArp_server_Read_arpTable_ipAddress_Words(XArp_server *InstancePtr, int offset, word_type *data, int length);
u32 XArp_server_Write_arpTable_ipAddress_Bytes(XArp_server *InstancePtr, int offset, char *data, int length);
u32 XArp_server_Read_arpTable_ipAddress_Bytes(XArp_server *InstancePtr, int offset, char *data, int length);
u32 XArp_server_Get_arpTable_macAddress_BaseAddress(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_macAddress_HighAddress(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_macAddress_TotalBytes(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_macAddress_BitWidth(XArp_server *InstancePtr);
u32 XArp_server_Get_arpTable_macAddress_Depth(XArp_server *InstancePtr);
u32 XArp_server_Write_arpTable_macAddress_Words(XArp_server *InstancePtr, int offset, word_type *data, int length);
u32 XArp_server_Read_arpTable_macAddress_Words(XArp_server *InstancePtr, int offset, word_type *data, int length);
u32 XArp_server_Write_arpTable_macAddress_Bytes(XArp_server *InstancePtr, int offset, char *data, int length);
u32 XArp_server_Read_arpTable_macAddress_Bytes(XArp_server *InstancePtr, int offset, char *data, int length);

#ifdef __cplusplus
}
#endif

#endif
