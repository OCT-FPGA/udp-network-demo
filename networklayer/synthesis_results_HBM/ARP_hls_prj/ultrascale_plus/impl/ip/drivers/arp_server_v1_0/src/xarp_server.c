// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xarp_server.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XArp_server_CfgInitialize(XArp_server *InstancePtr, XArp_server_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->S_axilite_BaseAddress = ConfigPtr->S_axilite_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XArp_server_Set_arp_scan_i(XArp_server *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XArp_server_WriteReg(InstancePtr->S_axilite_BaseAddress, XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_I_DATA, Data);
}

u32 XArp_server_Get_arp_scan_i(XArp_server *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XArp_server_ReadReg(InstancePtr->S_axilite_BaseAddress, XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_I_DATA);
    return Data;
}

u32 XArp_server_Get_arp_scan_o(XArp_server *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XArp_server_ReadReg(InstancePtr->S_axilite_BaseAddress, XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_O_DATA);
    return Data;
}

u32 XArp_server_Get_arp_scan_o_vld(XArp_server *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XArp_server_ReadReg(InstancePtr->S_axilite_BaseAddress, XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_O_CTRL);
    return Data & 0x1;
}

u32 XArp_server_Get_arpTable_valid_BaseAddress(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE);
}

u32 XArp_server_Get_arpTable_valid_HighAddress(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_HIGH);
}

u32 XArp_server_Get_arpTable_valid_TotalBytes(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE + 1);
}

u32 XArp_server_Get_arpTable_valid_BitWidth(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARP_SERVER_S_AXILITE_WIDTH_ARPTABLE_VALID;
}

u32 XArp_server_Get_arpTable_valid_Depth(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARP_SERVER_S_AXILITE_DEPTH_ARPTABLE_VALID;
}

u32 XArp_server_Write_arpTable_valid_Words(XArp_server *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XArp_server_Read_arpTable_valid_Words(XArp_server *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE + (offset + i)*4);
    }
    return length;
}

u32 XArp_server_Write_arpTable_valid_Bytes(XArp_server *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XArp_server_Read_arpTable_valid_Bytes(XArp_server *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE + offset + i);
    }
    return length;
}

u32 XArp_server_Get_arpTable_ipAddress_BaseAddress(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE);
}

u32 XArp_server_Get_arpTable_ipAddress_HighAddress(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_HIGH);
}

u32 XArp_server_Get_arpTable_ipAddress_TotalBytes(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE + 1);
}

u32 XArp_server_Get_arpTable_ipAddress_BitWidth(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARP_SERVER_S_AXILITE_WIDTH_ARPTABLE_IPADDRESS;
}

u32 XArp_server_Get_arpTable_ipAddress_Depth(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARP_SERVER_S_AXILITE_DEPTH_ARPTABLE_IPADDRESS;
}

u32 XArp_server_Write_arpTable_ipAddress_Words(XArp_server *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XArp_server_Read_arpTable_ipAddress_Words(XArp_server *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE + (offset + i)*4);
    }
    return length;
}

u32 XArp_server_Write_arpTable_ipAddress_Bytes(XArp_server *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XArp_server_Read_arpTable_ipAddress_Bytes(XArp_server *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE + offset + i);
    }
    return length;
}

u32 XArp_server_Get_arpTable_macAddress_BaseAddress(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE);
}

u32 XArp_server_Get_arpTable_macAddress_HighAddress(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_HIGH);
}

u32 XArp_server_Get_arpTable_macAddress_TotalBytes(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE + 1);
}

u32 XArp_server_Get_arpTable_macAddress_BitWidth(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARP_SERVER_S_AXILITE_WIDTH_ARPTABLE_MACADDRESS;
}

u32 XArp_server_Get_arpTable_macAddress_Depth(XArp_server *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XARP_SERVER_S_AXILITE_DEPTH_ARPTABLE_MACADDRESS;
}

u32 XArp_server_Write_arpTable_macAddress_Words(XArp_server *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XArp_server_Read_arpTable_macAddress_Words(XArp_server *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE + (offset + i)*4);
    }
    return length;
}

u32 XArp_server_Write_arpTable_macAddress_Bytes(XArp_server *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XArp_server_Read_arpTable_macAddress_Bytes(XArp_server *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_HIGH - XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->S_axilite_BaseAddress + XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE + offset + i);
    }
    return length;
}

