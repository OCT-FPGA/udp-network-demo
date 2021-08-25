// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
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

void XUdp_Set_SocketTable_0_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_0_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_0_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_0_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_1_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_1_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_1_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_1_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_2_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_2_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_2_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_2_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_3_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_3_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_3_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_3_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_4_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_4_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_4_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_4_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_5_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_5_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_5_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_5_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_6_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_6_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_6_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_6_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_7_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_7_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_7_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_7_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_8_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_8_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_8_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_8_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_9_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_9_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_9_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_9_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_10_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_10_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_10_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_10_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_11_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_11_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_11_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_11_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_12_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_12_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_12_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_12_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_13_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_13_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_13_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_13_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_14_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_14_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_14_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_14_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_15_theirIP_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_15_THEIRIP_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_15_theirIP_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_15_THEIRIP_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_0_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_0_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_0_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_0_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_1_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_1_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_1_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_1_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_2_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_2_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_2_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_2_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_3_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_3_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_3_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_3_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_4_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_4_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_4_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_4_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_5_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_5_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_5_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_5_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_6_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_6_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_6_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_6_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_7_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_7_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_7_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_7_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_8_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_8_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_8_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_8_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_9_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_9_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_9_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_9_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_10_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_10_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_10_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_10_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_11_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_11_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_11_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_11_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_12_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_12_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_12_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_12_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_13_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_13_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_13_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_13_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_14_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_14_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_14_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_14_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_15_theirPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_15_THEIRPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_15_theirPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_15_THEIRPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_0_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_0_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_0_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_0_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_1_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_1_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_1_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_1_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_2_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_2_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_2_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_2_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_3_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_3_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_3_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_3_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_4_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_4_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_4_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_4_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_5_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_5_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_5_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_5_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_6_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_6_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_6_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_6_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_7_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_7_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_7_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_7_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_8_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_8_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_8_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_8_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_9_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_9_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_9_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_9_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_10_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_10_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_10_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_10_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_11_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_11_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_11_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_11_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_12_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_12_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_12_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_12_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_13_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_13_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_13_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_13_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_14_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_14_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_14_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_14_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_15_myPort_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_15_MYPORT_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_15_myPort_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_15_MYPORT_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_0_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_0_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_0_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_0_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_1_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_1_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_1_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_1_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_2_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_2_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_2_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_2_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_3_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_3_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_3_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_3_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_4_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_4_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_4_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_4_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_5_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_5_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_5_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_5_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_6_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_6_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_6_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_6_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_7_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_7_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_7_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_7_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_8_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_8_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_8_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_8_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_9_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_9_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_9_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_9_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_10_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_10_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_10_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_10_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_11_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_11_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_11_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_11_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_12_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_12_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_12_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_12_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_13_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_13_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_13_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_13_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_14_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_14_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_14_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_14_VALID_V_DATA);
    return Data;
}

void XUdp_Set_SocketTable_15_valid_V(XUdp *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUdp_WriteReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_15_VALID_V_DATA, Data);
}

u32 XUdp_Get_SocketTable_15_valid_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_SOCKETTABLE_15_VALID_V_DATA);
    return Data;
}

u32 XUdp_Get_numberSockets_V(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_NUMBERSOCKETS_V_DATA);
    return Data;
}

u32 XUdp_Get_numberSockets_V_vld(XUdp *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUdp_ReadReg(InstancePtr->S_axilite_BaseAddress, XUDP_S_AXILITE_ADDR_NUMBERSOCKETS_V_CTRL);
    return Data & 0x1;
}

