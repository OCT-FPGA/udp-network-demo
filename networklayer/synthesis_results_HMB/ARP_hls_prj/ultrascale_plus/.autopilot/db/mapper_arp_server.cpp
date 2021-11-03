#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_arpDataIn_V_data_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_arpDataIn_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_arpDataIn_V_data_V.dat");
unsigned int ap_apatb_arpDataIn_V_keep_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_arpDataIn_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_arpDataIn_V_keep_V.dat");
unsigned int ap_apatb_arpDataIn_V_strb_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_arpDataIn_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_arpDataIn_V_strb_V.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_arpDataIn_V_last_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_arpDataIn_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_arpDataIn_V_last_V.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_macIpEncode_req_V_cap_bc;
static AESL_RUNTIME_BC __xlx_macIpEncode_req_V_size_Reader("../tv/stream_size/stream_size_in_macIpEncode_req_V.dat");
unsigned int ap_apatb_arpDataOut_V_data_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_arpDataOut_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_arpDataOut_V_data_V.dat");
unsigned int ap_apatb_arpDataOut_V_keep_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_arpDataOut_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_arpDataOut_V_keep_V.dat");
unsigned int ap_apatb_arpDataOut_V_strb_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_arpDataOut_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_arpDataOut_V_strb_V.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_arpDataOut_V_last_V_V_cap_bc;
static AESL_RUNTIME_BC __xlx_arpDataOut_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_arpDataOut_V_last_V.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__V_cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_macIpEncode_rsp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_macIpEncode_rsp_V_size_Reader("../tv/stream_size/stream_size_out_macIpEncode_rsp_V.dat");
struct __cosim_s40__ { char data[64]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void arp_server(volatile void *, volatile void *, volatile void *, , volatile void *, , , __cosim_s4__*, volatile void *, volatile void *, volatile void *, , volatile void *, , , __cosim_s10__*, long long*, int*, char*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_arp_server_hw(volatile void * __xlx_apatb_param_arpDataIn_V_data_V, volatile void * __xlx_apatb_param_arpDataIn_V_keep_V, volatile void * __xlx_apatb_param_arpDataIn_V_strb_V, volatile void * __xlx_apatb_param_arpDataIn_V_last_V, volatile void * __xlx_apatb_param_macIpEncode_req, volatile void * __xlx_apatb_param_arpDataOut_V_data_V, volatile void * __xlx_apatb_param_arpDataOut_V_keep_V, volatile void * __xlx_apatb_param_arpDataOut_V_strb_V, volatile void * __xlx_apatb_param_arpDataOut_V_last_V, volatile void * __xlx_apatb_param_macIpEncode_rsp, volatile void * __xlx_apatb_param_arpTable_macAddress, volatile void * __xlx_apatb_param_arpTable_ipAddress, volatile void * __xlx_apatb_param_arpTable_valid, volatile void * __xlx_apatb_param_arp_scan, volatile void * __xlx_apatb_param_myMacAddress, volatile void * __xlx_apatb_param_myIpAddress, volatile void * __xlx_apatb_param_gatewayIP, volatile void * __xlx_apatb_param_networkMask) {
  // collect __xlx_arpDataIn_V_data_V_tmp_vec
  unsigned __xlx_arpDataIn_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_arpDataIn_V_data_V_V_read_Size = __xlx_arpDataIn_V_data_V_V_size_Reader.read_size();
  vector<__cosim_s40__> __xlx_arpDataIn_V_data_V_tmp_vec;
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataIn_V_data_V)->empty() && __xlx_arpDataIn_V_data_V_V_tmp_Count < __xlx_arpDataIn_V_data_V_V_read_Size) {
    __xlx_arpDataIn_V_data_V_tmp_vec.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataIn_V_data_V)->read());
    __xlx_arpDataIn_V_data_V_V_tmp_Count++;
  }
  ap_apatb_arpDataIn_V_data_V_V_cap_bc = __xlx_arpDataIn_V_data_V_tmp_vec.size();
  // store input buffer
  __cosim_s40__* __xlx_arpDataIn_V_data_V_input_buffer= new __cosim_s40__[__xlx_arpDataIn_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_arpDataIn_V_data_V_tmp_vec.size(); ++i) {
    __xlx_arpDataIn_V_data_V_input_buffer[i] = __xlx_arpDataIn_V_data_V_tmp_vec[i];
  }
  // collect __xlx_arpDataIn_V_keep_V_tmp_vec
  unsigned __xlx_arpDataIn_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_arpDataIn_V_keep_V_V_read_Size = __xlx_arpDataIn_V_keep_V_V_size_Reader.read_size();
  vector<long long> __xlx_arpDataIn_V_keep_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_keep_V)->empty() && __xlx_arpDataIn_V_keep_V_V_tmp_Count < __xlx_arpDataIn_V_keep_V_V_read_Size) {
    __xlx_arpDataIn_V_keep_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_keep_V)->read());
    __xlx_arpDataIn_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_arpDataIn_V_keep_V_V_cap_bc = __xlx_arpDataIn_V_keep_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_arpDataIn_V_keep_V_input_buffer= new long long[__xlx_arpDataIn_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_arpDataIn_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_arpDataIn_V_keep_V_input_buffer[i] = __xlx_arpDataIn_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_arpDataIn_V_strb_V_tmp_vec
  unsigned __xlx_arpDataIn_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_arpDataIn_V_strb_V_V_read_Size = __xlx_arpDataIn_V_strb_V_V_size_Reader.read_size();
  vector<long long> __xlx_arpDataIn_V_strb_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_strb_V)->empty() && __xlx_arpDataIn_V_strb_V_V_tmp_Count < __xlx_arpDataIn_V_strb_V_V_read_Size) {
    __xlx_arpDataIn_V_strb_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_strb_V)->read());
    __xlx_arpDataIn_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_arpDataIn_V_strb_V_V_cap_bc = __xlx_arpDataIn_V_strb_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_arpDataIn_V_strb_V_input_buffer= new long long[__xlx_arpDataIn_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_arpDataIn_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_arpDataIn_V_strb_V_input_buffer[i] = __xlx_arpDataIn_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_arpDataIn_V_last_V_tmp_vec
  unsigned __xlx_arpDataIn_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_arpDataIn_V_last_V_V_read_Size = __xlx_arpDataIn_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_arpDataIn_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_arpDataIn_V_last_V)->empty() && __xlx_arpDataIn_V_last_V_V_tmp_Count < __xlx_arpDataIn_V_last_V_V_read_Size) {
    __xlx_arpDataIn_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_arpDataIn_V_last_V)->read());
    __xlx_arpDataIn_V_last_V_V_tmp_Count++;
  }
  ap_apatb_arpDataIn_V_last_V_V_cap_bc = __xlx_arpDataIn_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_arpDataIn_V_last_V_input_buffer= new char[__xlx_arpDataIn_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_arpDataIn_V_last_V_tmp_vec.size(); ++i) {
    __xlx_arpDataIn_V_last_V_input_buffer[i] = __xlx_arpDataIn_V_last_V_tmp_vec[i];
  }
  // collect __xlx_macIpEncode_req_tmp_vec
  unsigned __xlx_macIpEncode_req_V_tmp_Count = 0;
  unsigned __xlx_macIpEncode_req_V_read_Size = __xlx_macIpEncode_req_V_size_Reader.read_size();
  vector<__cosim_s4__> __xlx_macIpEncode_req_tmp_vec;
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_macIpEncode_req)->empty() && __xlx_macIpEncode_req_V_tmp_Count < __xlx_macIpEncode_req_V_read_Size) {
    __xlx_macIpEncode_req_tmp_vec.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_macIpEncode_req)->read());
    __xlx_macIpEncode_req_V_tmp_Count++;
  }
  ap_apatb_macIpEncode_req_V_cap_bc = __xlx_macIpEncode_req_tmp_vec.size();
  // store input buffer
  __cosim_s4__* __xlx_macIpEncode_req_input_buffer= new __cosim_s4__[__xlx_macIpEncode_req_tmp_vec.size()];
  for (int i = 0; i < __xlx_macIpEncode_req_tmp_vec.size(); ++i) {
    __xlx_macIpEncode_req_input_buffer[i] = __xlx_macIpEncode_req_tmp_vec[i];
  }
  //Create input buffer for arpDataOut_V_data_V
  ap_apatb_arpDataOut_V_data_V_V_cap_bc = __xlx_arpDataOut_V_data_V_V_size_Reader.read_size();
  __cosim_s40__* __xlx_arpDataOut_V_data_V_input_buffer= new __cosim_s40__[ap_apatb_arpDataOut_V_data_V_V_cap_bc];
  //Create input buffer for arpDataOut_V_keep_V
  ap_apatb_arpDataOut_V_keep_V_V_cap_bc = __xlx_arpDataOut_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_arpDataOut_V_keep_V_input_buffer= new long long[ap_apatb_arpDataOut_V_keep_V_V_cap_bc];
  //Create input buffer for arpDataOut_V_strb_V
  ap_apatb_arpDataOut_V_strb_V_V_cap_bc = __xlx_arpDataOut_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_arpDataOut_V_strb_V_input_buffer= new long long[ap_apatb_arpDataOut_V_strb_V_V_cap_bc];
  //Create input buffer for arpDataOut_V_last_V
  ap_apatb_arpDataOut_V_last_V_V_cap_bc = __xlx_arpDataOut_V_last_V_V_size_Reader.read_size();
  char* __xlx_arpDataOut_V_last_V_input_buffer= new char[ap_apatb_arpDataOut_V_last_V_V_cap_bc];
  //Create input buffer for macIpEncode_rsp
  ap_apatb_macIpEncode_rsp_V_cap_bc = __xlx_macIpEncode_rsp_V_size_Reader.read_size();
  __cosim_s10__* __xlx_macIpEncode_rsp_input_buffer= new __cosim_s10__[ap_apatb_macIpEncode_rsp_V_cap_bc];
  // Collect __xlx_arpTable_macAddress__tmp_vec
  vector<sc_bv<64> >__xlx_arpTable_macAddress__tmp_vec;
  for (int j = 0, e = 256; j != e; ++j) {
    sc_bv<64> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+3];
    _xlx_tmp_sc.range(39, 32) = ((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+4];
    _xlx_tmp_sc.range(47, 40) = ((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+5];
    _xlx_tmp_sc.range(55, 48) = ((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+6];
    _xlx_tmp_sc.range(63, 56) = ((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+7];
    __xlx_arpTable_macAddress__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_arpTable_macAddress = 256;
  int __xlx_offset_param_arpTable_macAddress = 0;
  int __xlx_offset_byte_param_arpTable_macAddress = 0*8;
  long long* __xlx_arpTable_macAddress__input_buffer= new long long[__xlx_arpTable_macAddress__tmp_vec.size()];
  for (int i = 0; i < __xlx_arpTable_macAddress__tmp_vec.size(); ++i) {
    __xlx_arpTable_macAddress__input_buffer[i] = __xlx_arpTable_macAddress__tmp_vec[i].range(63, 0).to_uint64();
  }
  // Collect __xlx_arpTable_ipAddress__tmp_vec
  vector<sc_bv<32> >__xlx_arpTable_ipAddress__tmp_vec;
  for (int j = 0, e = 256; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_arpTable_ipAddress)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_arpTable_ipAddress)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_arpTable_ipAddress)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_arpTable_ipAddress)[j*4+3];
    __xlx_arpTable_ipAddress__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_arpTable_ipAddress = 256;
  int __xlx_offset_param_arpTable_ipAddress = 0;
  int __xlx_offset_byte_param_arpTable_ipAddress = 0*4;
  int* __xlx_arpTable_ipAddress__input_buffer= new int[__xlx_arpTable_ipAddress__tmp_vec.size()];
  for (int i = 0; i < __xlx_arpTable_ipAddress__tmp_vec.size(); ++i) {
    __xlx_arpTable_ipAddress__input_buffer[i] = __xlx_arpTable_ipAddress__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_arpTable_valid__tmp_vec
  vector<sc_bv<8> >__xlx_arpTable_valid__tmp_vec;
  for (int j = 0, e = 256; j != e; ++j) {
    __xlx_arpTable_valid__tmp_vec.push_back(((char*)__xlx_apatb_param_arpTable_valid)[j]);
  }
  int __xlx_size_param_arpTable_valid = 256;
  int __xlx_offset_param_arpTable_valid = 0;
  int __xlx_offset_byte_param_arpTable_valid = 0*1;
  char* __xlx_arpTable_valid__input_buffer= new char[__xlx_arpTable_valid__tmp_vec.size()];
  for (int i = 0; i < __xlx_arpTable_valid__tmp_vec.size(); ++i) {
    __xlx_arpTable_valid__input_buffer[i] = __xlx_arpTable_valid__tmp_vec[i].range(7, 0).to_uint64();
  }
  // DUT call
  arp_server(__xlx_arpDataIn_V_data_V_input_buffer, __xlx_arpDataIn_V_keep_V_input_buffer, __xlx_arpDataIn_V_strb_V_input_buffer, __xlx_arpDataIn_V_last_V_input_buffer, __xlx_macIpEncode_req_input_buffer, __xlx_arpDataOut_V_data_V_input_buffer, __xlx_arpDataOut_V_keep_V_input_buffer, __xlx_arpDataOut_V_strb_V_input_buffer, __xlx_arpDataOut_V_last_V_input_buffer, __xlx_macIpEncode_rsp_input_buffer, __xlx_arpTable_macAddress__input_buffer, __xlx_arpTable_ipAddress__input_buffer, __xlx_arpTable_valid__input_buffer, __xlx_apatb_param_arp_scan, __xlx_apatb_param_myMacAddress, __xlx_apatb_param_myIpAddress, __xlx_apatb_param_gatewayIP, __xlx_apatb_param_networkMask);
  for (unsigned i = 0; i <ap_apatb_arpDataOut_V_data_V_V_cap_bc; ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataOut_V_data_V)->write(__xlx_arpDataOut_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_arpDataOut_V_keep_V_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_keep_V)->write(__xlx_arpDataOut_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_arpDataOut_V_strb_V_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_strb_V)->write(__xlx_arpDataOut_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_arpDataOut_V_last_V_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_arpDataOut_V_last_V)->write(__xlx_arpDataOut_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_macIpEncode_rsp_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_macIpEncode_rsp)->write(__xlx_macIpEncode_rsp_input_buffer[i]);
// print __xlx_apatb_param_arpTable_macAddress
  sc_bv<64>*__xlx_arpTable_macAddress_output_buffer = new sc_bv<64>[__xlx_size_param_arpTable_macAddress];
  for (int i = 0; i < __xlx_size_param_arpTable_macAddress; ++i) {
    __xlx_arpTable_macAddress_output_buffer[i] = __xlx_arpTable_macAddress__input_buffer[i+__xlx_offset_param_arpTable_macAddress];
  }
  for (int i = 0; i < __xlx_size_param_arpTable_macAddress; ++i) {
    ((char*)__xlx_apatb_param_arpTable_macAddress)[i*8+0] = __xlx_arpTable_macAddress_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_arpTable_macAddress)[i*8+1] = __xlx_arpTable_macAddress_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_arpTable_macAddress)[i*8+2] = __xlx_arpTable_macAddress_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_arpTable_macAddress)[i*8+3] = __xlx_arpTable_macAddress_output_buffer[i].range(31, 24).to_uint();
    ((char*)__xlx_apatb_param_arpTable_macAddress)[i*8+4] = __xlx_arpTable_macAddress_output_buffer[i].range(39, 32).to_uint();
    ((char*)__xlx_apatb_param_arpTable_macAddress)[i*8+5] = __xlx_arpTable_macAddress_output_buffer[i].range(47, 40).to_uint();
    ((char*)__xlx_apatb_param_arpTable_macAddress)[i*8+6] = __xlx_arpTable_macAddress_output_buffer[i].range(55, 48).to_uint();
    ((char*)__xlx_apatb_param_arpTable_macAddress)[i*8+7] = __xlx_arpTable_macAddress_output_buffer[i].range(63, 56).to_uint();
  }
// print __xlx_apatb_param_arpTable_ipAddress
  sc_bv<32>*__xlx_arpTable_ipAddress_output_buffer = new sc_bv<32>[__xlx_size_param_arpTable_ipAddress];
  for (int i = 0; i < __xlx_size_param_arpTable_ipAddress; ++i) {
    __xlx_arpTable_ipAddress_output_buffer[i] = __xlx_arpTable_ipAddress__input_buffer[i+__xlx_offset_param_arpTable_ipAddress];
  }
  for (int i = 0; i < __xlx_size_param_arpTable_ipAddress; ++i) {
    ((char*)__xlx_apatb_param_arpTable_ipAddress)[i*4+0] = __xlx_arpTable_ipAddress_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_arpTable_ipAddress)[i*4+1] = __xlx_arpTable_ipAddress_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_arpTable_ipAddress)[i*4+2] = __xlx_arpTable_ipAddress_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_arpTable_ipAddress)[i*4+3] = __xlx_arpTable_ipAddress_output_buffer[i].range(31, 24).to_uint();
  }
// print __xlx_apatb_param_arpTable_valid
  sc_bv<8>*__xlx_arpTable_valid_output_buffer = new sc_bv<8>[__xlx_size_param_arpTable_valid];
  for (int i = 0; i < __xlx_size_param_arpTable_valid; ++i) {
    __xlx_arpTable_valid_output_buffer[i] = __xlx_arpTable_valid__input_buffer[i+__xlx_offset_param_arpTable_valid];
  }
  for (int i = 0; i < __xlx_size_param_arpTable_valid; ++i) {
    ((char*)__xlx_apatb_param_arpTable_valid)[i] = __xlx_arpTable_valid_output_buffer[i].to_uint();
  }
}
