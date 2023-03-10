// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xudp.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XUdp_CfgInitialize(XUdp *InstancePtr, XUdp_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->S_axilite_BaseAddress = ConfigPtr->S_axilite_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XUdp_Set_SocketTable_theirIP_0(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_0_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_0(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_0_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_1(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_1_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_1(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_1_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_2(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_2_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_2(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_2_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_3(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_3_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_3(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_3_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_4(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_4_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_4(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_4_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_5(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_5_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_5(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_5_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_6(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_6_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_6(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_6_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_7(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_7_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_7(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_7_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_8(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_8_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_8(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_8_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_9(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_9_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_9(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_9_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_10(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_10_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_10(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_10_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_11(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_11_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_11(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_11_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_12(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_12_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_12(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_12_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_13(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_13_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_13(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_13_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_14(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_14_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_14(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_14_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirIP_15(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_15_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirIP_15(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRIP_15_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_0(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_0_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_0(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_0_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_1(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_1_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_1(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_1_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_2(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_2_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_2(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_2_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_3(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_3_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_3(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_3_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_4(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_4_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_4(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_4_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_5(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_5_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_5(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_5_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_6(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_6_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_6(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_6_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_7(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_7_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_7(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_7_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_8(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_8_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_8(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_8_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_9(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_9_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_9(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_9_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_10(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_10_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_10(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_10_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_11(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_11_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_11(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_11_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_12(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_12_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_12(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_12_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_13(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_13_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_13(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_13_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_14(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_14_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_14(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_14_DATA);
    return Data;
}

void XUdp_Set_SocketTable_theirPort_15(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_15_DATA, Data);
}

u32 XUdp_Get_SocketTable_theirPort_15(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_THEIRPORT_15_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_0(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_0_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_0(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_0_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_1(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_1_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_1(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_1_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_2(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_2_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_2(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_2_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_3(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_3_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_3(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_3_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_4(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_4_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_4(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_4_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_5(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_5_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_5(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_5_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_6(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_6_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_6(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_6_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_7(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_7_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_7(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_7_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_8(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_8_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_8(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_8_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_9(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_9_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_9(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_9_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_10(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_10_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_10(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_10_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_11(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_11_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_11(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_11_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_12(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_12_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_12(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_12_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_13(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_13_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_13(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_13_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_14(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_14_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_14(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_14_DATA);
    return Data;
}

void XUdp_Set_SocketTable_myPort_15(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_15_DATA, Data);
}

u32 XUdp_Get_SocketTable_myPort_15(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_MYPORT_15_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_0(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_0_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_0(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_0_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_1(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_1_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_1(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_1_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_2(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_2_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_2(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_2_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_3(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_3_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_3(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_3_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_4(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_4_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_4(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_4_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_5(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_5_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_5(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_5_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_6(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_6_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_6(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_6_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_7(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_7_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_7(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_7_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_8(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_8_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_8(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_8_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_9(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_9_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_9(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_9_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_10(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_10_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_10(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_10_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_11(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_11_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_11(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_11_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_12(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_12_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_12(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_12_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_13(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_13_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_13(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_13_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_14(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_14_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_14(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_14_DATA);
    return Data;
}

void XUdp_Set_SocketTable_valid_15(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_15_DATA, Data);
}

u32 XUdp_Get_SocketTable_valid_15(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_VALID_15_DATA);
    return Data;
}

u32 XUdp_Get_numberSockets(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_NUMBERSOCKETS_DATA);
    return Data;
}

u32 XUdp_Get_numberSockets_vld(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_NUMBERSOCKETS_CTRL);
    return Data & 0x1;
}

