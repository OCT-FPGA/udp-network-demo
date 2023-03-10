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
unsigned int ap_apatb_dataIn_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataIn_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_dataIn_V_data_V.dat");
unsigned int ap_apatb_dataIn_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataIn_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_dataIn_V_keep_V.dat");
unsigned int ap_apatb_dataIn_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataIn_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_dataIn_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_dataIn_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataIn_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_dataIn_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_dataOut_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataOut_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_dataOut_V_data_V.dat");
unsigned int ap_apatb_dataOut_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataOut_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_dataOut_V_keep_V.dat");
unsigned int ap_apatb_dataOut_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataOut_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_dataOut_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_dataOut_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dataOut_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_dataOut_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_arpTableReplay_cap_bc;
static AESL_RUNTIME_BC __xlx_arpTableReplay_V_size_Reader("../tv/stream_size/stream_size_in_arpTableReplay.dat");
unsigned int ap_apatb_arpTableRequest_cap_bc;
static AESL_RUNTIME_BC __xlx_arpTableRequest_V_size_Reader("../tv/stream_size/stream_size_out_arpTableRequest.dat");
struct __cosim_s40__ { char data[64]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s4__ { char data[4]; };
extern "C" void ethernet_header_inserter(volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , __cosim_s10__*, __cosim_s4__*, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_ethernet_header_inserter_hw(volatile void * __xlx_apatb_param_dataIn_V_data_V, volatile void * __xlx_apatb_param_dataIn_V_keep_V, volatile void * __xlx_apatb_param_dataIn_V_strb_V, volatile void * __xlx_apatb_param_dataIn_V_last_V, volatile void * __xlx_apatb_param_dataOut_V_data_V, volatile void * __xlx_apatb_param_dataOut_V_keep_V, volatile void * __xlx_apatb_param_dataOut_V_strb_V, volatile void * __xlx_apatb_param_dataOut_V_last_V, volatile void * __xlx_apatb_param_arpTableReplay, volatile void * __xlx_apatb_param_arpTableRequest, volatile void * __xlx_apatb_param_myMacAddress, volatile void * __xlx_apatb_param_regSubNetMask, volatile void * __xlx_apatb_param_regDefaultGateway) {
  // collect __xlx_dataIn_V_data_V_tmp_vec
  unsigned __xlx_dataIn_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_dataIn_V_data_V_V_read_Size = __xlx_dataIn_V_data_V_V_size_Reader.read_size();
  vector<__cosim_s40__> __xlx_dataIn_V_data_V_tmp_vec;
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_dataIn_V_data_V)->empty() && __xlx_dataIn_V_data_V_V_tmp_Count < __xlx_dataIn_V_data_V_V_read_Size) {
    __xlx_dataIn_V_data_V_tmp_vec.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_dataIn_V_data_V)->read());
    __xlx_dataIn_V_data_V_V_tmp_Count++;
  }
  ap_apatb_dataIn_V_data_V_cap_bc = __xlx_dataIn_V_data_V_tmp_vec.size();
  // store input buffer
  __cosim_s40__* __xlx_dataIn_V_data_V_input_buffer= new __cosim_s40__[__xlx_dataIn_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataIn_V_data_V_tmp_vec.size(); ++i) {
    __xlx_dataIn_V_data_V_input_buffer[i] = __xlx_dataIn_V_data_V_tmp_vec[i];
  }
  // collect __xlx_dataIn_V_keep_V_tmp_vec
  unsigned __xlx_dataIn_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_dataIn_V_keep_V_V_read_Size = __xlx_dataIn_V_keep_V_V_size_Reader.read_size();
  vector<long long> __xlx_dataIn_V_keep_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_dataIn_V_keep_V)->empty() && __xlx_dataIn_V_keep_V_V_tmp_Count < __xlx_dataIn_V_keep_V_V_read_Size) {
    __xlx_dataIn_V_keep_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_dataIn_V_keep_V)->read());
    __xlx_dataIn_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_dataIn_V_keep_V_cap_bc = __xlx_dataIn_V_keep_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_dataIn_V_keep_V_input_buffer= new long long[__xlx_dataIn_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataIn_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_dataIn_V_keep_V_input_buffer[i] = __xlx_dataIn_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_dataIn_V_strb_V_tmp_vec
  unsigned __xlx_dataIn_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_dataIn_V_strb_V_V_read_Size = __xlx_dataIn_V_strb_V_V_size_Reader.read_size();
  vector<long long> __xlx_dataIn_V_strb_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_dataIn_V_strb_V)->empty() && __xlx_dataIn_V_strb_V_V_tmp_Count < __xlx_dataIn_V_strb_V_V_read_Size) {
    __xlx_dataIn_V_strb_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_dataIn_V_strb_V)->read());
    __xlx_dataIn_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_dataIn_V_strb_V_cap_bc = __xlx_dataIn_V_strb_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_dataIn_V_strb_V_input_buffer= new long long[__xlx_dataIn_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataIn_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_dataIn_V_strb_V_input_buffer[i] = __xlx_dataIn_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_dataIn_V_last_V_tmp_vec
  unsigned __xlx_dataIn_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_dataIn_V_last_V_V_read_Size = __xlx_dataIn_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_dataIn_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_dataIn_V_last_V)->empty() && __xlx_dataIn_V_last_V_V_tmp_Count < __xlx_dataIn_V_last_V_V_read_Size) {
    __xlx_dataIn_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_dataIn_V_last_V)->read());
    __xlx_dataIn_V_last_V_V_tmp_Count++;
  }
  ap_apatb_dataIn_V_last_V_cap_bc = __xlx_dataIn_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_dataIn_V_last_V_input_buffer= new char[__xlx_dataIn_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_dataIn_V_last_V_tmp_vec.size(); ++i) {
    __xlx_dataIn_V_last_V_input_buffer[i] = __xlx_dataIn_V_last_V_tmp_vec[i];
  }
  //Create input buffer for dataOut_V_data_V
  ap_apatb_dataOut_V_data_V_cap_bc = __xlx_dataOut_V_data_V_V_size_Reader.read_size();
  __cosim_s40__* __xlx_dataOut_V_data_V_input_buffer= new __cosim_s40__[ap_apatb_dataOut_V_data_V_cap_bc];
  //Create input buffer for dataOut_V_keep_V
  ap_apatb_dataOut_V_keep_V_cap_bc = __xlx_dataOut_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_dataOut_V_keep_V_input_buffer= new long long[ap_apatb_dataOut_V_keep_V_cap_bc];
  //Create input buffer for dataOut_V_strb_V
  ap_apatb_dataOut_V_strb_V_cap_bc = __xlx_dataOut_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_dataOut_V_strb_V_input_buffer= new long long[ap_apatb_dataOut_V_strb_V_cap_bc];
  //Create input buffer for dataOut_V_last_V
  ap_apatb_dataOut_V_last_V_cap_bc = __xlx_dataOut_V_last_V_V_size_Reader.read_size();
  char* __xlx_dataOut_V_last_V_input_buffer= new char[ap_apatb_dataOut_V_last_V_cap_bc];
  // collect __xlx_arpTableReplay_tmp_vec
  unsigned __xlx_arpTableReplay_V_tmp_Count = 0;
  unsigned __xlx_arpTableReplay_V_read_Size = __xlx_arpTableReplay_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_arpTableReplay_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_arpTableReplay)->empty() && __xlx_arpTableReplay_V_tmp_Count < __xlx_arpTableReplay_V_read_Size) {
    __xlx_arpTableReplay_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_arpTableReplay)->read());
    __xlx_arpTableReplay_V_tmp_Count++;
  }
  ap_apatb_arpTableReplay_cap_bc = __xlx_arpTableReplay_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_arpTableReplay_input_buffer= new __cosim_s10__[__xlx_arpTableReplay_tmp_vec.size()];
  for (int i = 0; i < __xlx_arpTableReplay_tmp_vec.size(); ++i) {
    __xlx_arpTableReplay_input_buffer[i] = __xlx_arpTableReplay_tmp_vec[i];
  }
  //Create input buffer for arpTableRequest
  ap_apatb_arpTableRequest_cap_bc = __xlx_arpTableRequest_V_size_Reader.read_size();
  __cosim_s4__* __xlx_arpTableRequest_input_buffer= new __cosim_s4__[ap_apatb_arpTableRequest_cap_bc];
  // DUT call
  ethernet_header_inserter(__xlx_dataIn_V_data_V_input_buffer, __xlx_dataIn_V_keep_V_input_buffer, __xlx_dataIn_V_strb_V_input_buffer, __xlx_dataIn_V_last_V_input_buffer, __xlx_dataOut_V_data_V_input_buffer, __xlx_dataOut_V_keep_V_input_buffer, __xlx_dataOut_V_strb_V_input_buffer, __xlx_dataOut_V_last_V_input_buffer, __xlx_arpTableReplay_input_buffer, __xlx_arpTableRequest_input_buffer, __xlx_apatb_param_myMacAddress, __xlx_apatb_param_regSubNetMask, __xlx_apatb_param_regDefaultGateway);
  for (unsigned i = 0; i <ap_apatb_dataOut_V_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_dataOut_V_data_V)->write(__xlx_dataOut_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_dataOut_V_keep_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_dataOut_V_keep_V)->write(__xlx_dataOut_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_dataOut_V_strb_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_dataOut_V_strb_V)->write(__xlx_dataOut_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_dataOut_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_dataOut_V_last_V)->write(__xlx_dataOut_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_arpTableRequest_cap_bc; ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_arpTableRequest)->write(__xlx_arpTableRequest_input_buffer[i]);
}
