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
unsigned int ap_apatb_rxUdpDataIn_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rxUdpDataIn_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_rxUdpDataIn_V_data_V.dat");
unsigned int ap_apatb_rxUdpDataIn_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rxUdpDataIn_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_rxUdpDataIn_V_keep_V.dat");
unsigned int ap_apatb_rxUdpDataIn_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rxUdpDataIn_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_rxUdpDataIn_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_rxUdpDataIn_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_rxUdpDataIn_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_rxUdpDataIn_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_txUdpDataOut_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_txUdpDataOut_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_txUdpDataOut_V_data_V.dat");
unsigned int ap_apatb_txUdpDataOut_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_txUdpDataOut_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_txUdpDataOut_V_keep_V.dat");
unsigned int ap_apatb_txUdpDataOut_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_txUdpDataOut_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_txUdpDataOut_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_txUdpDataOut_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_txUdpDataOut_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_txUdpDataOut_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_DataOutApp_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataOutApp_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_DataOutApp_V_data_V.dat");
unsigned int ap_apatb_DataOutApp_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataOutApp_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_DataOutApp_V_keep_V.dat");
unsigned int ap_apatb_DataOutApp_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataOutApp_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_DataOutApp_V_strb_V.dat");
unsigned int ap_apatb_DataOutApp_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataOutApp_V_user_V_V_size_Reader("../tv/stream_size/stream_size_out_DataOutApp_V_user_V.dat");
unsigned int ap_apatb_DataOutApp_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataOutApp_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_DataOutApp_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_DataOutApp_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataOutApp_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_out_DataOutApp_V_dest_V.dat");
unsigned int ap_apatb_DataInApp_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataInApp_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_DataInApp_V_data_V.dat");
unsigned int ap_apatb_DataInApp_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataInApp_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_DataInApp_V_keep_V.dat");
unsigned int ap_apatb_DataInApp_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataInApp_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_DataInApp_V_strb_V.dat");
unsigned int ap_apatb_DataInApp_V_user_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataInApp_V_user_V_V_size_Reader("../tv/stream_size/stream_size_in_DataInApp_V_user_V.dat");
unsigned int ap_apatb_DataInApp_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataInApp_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_DataInApp_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_DataInApp_V_dest_V_cap_bc;
static AESL_RUNTIME_BC __xlx_DataInApp_V_dest_V_V_size_Reader("../tv/stream_size/stream_size_in_DataInApp_V_dest_V.dat");
struct __cosim_s40__ { char data[64]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void udp(volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, , volatile void *, , , volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, , volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_udp_hw(volatile void * __xlx_apatb_param_rxUdpDataIn_V_data_V, volatile void * __xlx_apatb_param_rxUdpDataIn_V_keep_V, volatile void * __xlx_apatb_param_rxUdpDataIn_V_strb_V, volatile void * __xlx_apatb_param_rxUdpDataIn_V_last_V, volatile void * __xlx_apatb_param_txUdpDataOut_V_data_V, volatile void * __xlx_apatb_param_txUdpDataOut_V_keep_V, volatile void * __xlx_apatb_param_txUdpDataOut_V_strb_V, volatile void * __xlx_apatb_param_txUdpDataOut_V_last_V, volatile void * __xlx_apatb_param_DataOutApp_V_data_V, volatile void * __xlx_apatb_param_DataOutApp_V_keep_V, volatile void * __xlx_apatb_param_DataOutApp_V_strb_V, volatile void * __xlx_apatb_param_DataOutApp_V_user_V, volatile void * __xlx_apatb_param_DataOutApp_V_last_V, volatile void * __xlx_apatb_param_DataOutApp_V_dest_V, volatile void * __xlx_apatb_param_DataInApp_V_data_V, volatile void * __xlx_apatb_param_DataInApp_V_keep_V, volatile void * __xlx_apatb_param_DataInApp_V_strb_V, volatile void * __xlx_apatb_param_DataInApp_V_user_V, volatile void * __xlx_apatb_param_DataInApp_V_last_V, volatile void * __xlx_apatb_param_DataInApp_V_dest_V, volatile void * __xlx_apatb_param_myIpAddress, volatile void * __xlx_apatb_param_SocketTable_theirIP_0, volatile void * __xlx_apatb_param_SocketTable_theirIP_1, volatile void * __xlx_apatb_param_SocketTable_theirIP_2, volatile void * __xlx_apatb_param_SocketTable_theirIP_3, volatile void * __xlx_apatb_param_SocketTable_theirIP_4, volatile void * __xlx_apatb_param_SocketTable_theirIP_5, volatile void * __xlx_apatb_param_SocketTable_theirIP_6, volatile void * __xlx_apatb_param_SocketTable_theirIP_7, volatile void * __xlx_apatb_param_SocketTable_theirIP_8, volatile void * __xlx_apatb_param_SocketTable_theirIP_9, volatile void * __xlx_apatb_param_SocketTable_theirIP_10, volatile void * __xlx_apatb_param_SocketTable_theirIP_11, volatile void * __xlx_apatb_param_SocketTable_theirIP_12, volatile void * __xlx_apatb_param_SocketTable_theirIP_13, volatile void * __xlx_apatb_param_SocketTable_theirIP_14, volatile void * __xlx_apatb_param_SocketTable_theirIP_15, volatile void * __xlx_apatb_param_SocketTable_theirPort_0, volatile void * __xlx_apatb_param_SocketTable_theirPort_1, volatile void * __xlx_apatb_param_SocketTable_theirPort_2, volatile void * __xlx_apatb_param_SocketTable_theirPort_3, volatile void * __xlx_apatb_param_SocketTable_theirPort_4, volatile void * __xlx_apatb_param_SocketTable_theirPort_5, volatile void * __xlx_apatb_param_SocketTable_theirPort_6, volatile void * __xlx_apatb_param_SocketTable_theirPort_7, volatile void * __xlx_apatb_param_SocketTable_theirPort_8, volatile void * __xlx_apatb_param_SocketTable_theirPort_9, volatile void * __xlx_apatb_param_SocketTable_theirPort_10, volatile void * __xlx_apatb_param_SocketTable_theirPort_11, volatile void * __xlx_apatb_param_SocketTable_theirPort_12, volatile void * __xlx_apatb_param_SocketTable_theirPort_13, volatile void * __xlx_apatb_param_SocketTable_theirPort_14, volatile void * __xlx_apatb_param_SocketTable_theirPort_15, volatile void * __xlx_apatb_param_SocketTable_myPort_0, volatile void * __xlx_apatb_param_SocketTable_myPort_1, volatile void * __xlx_apatb_param_SocketTable_myPort_2, volatile void * __xlx_apatb_param_SocketTable_myPort_3, volatile void * __xlx_apatb_param_SocketTable_myPort_4, volatile void * __xlx_apatb_param_SocketTable_myPort_5, volatile void * __xlx_apatb_param_SocketTable_myPort_6, volatile void * __xlx_apatb_param_SocketTable_myPort_7, volatile void * __xlx_apatb_param_SocketTable_myPort_8, volatile void * __xlx_apatb_param_SocketTable_myPort_9, volatile void * __xlx_apatb_param_SocketTable_myPort_10, volatile void * __xlx_apatb_param_SocketTable_myPort_11, volatile void * __xlx_apatb_param_SocketTable_myPort_12, volatile void * __xlx_apatb_param_SocketTable_myPort_13, volatile void * __xlx_apatb_param_SocketTable_myPort_14, volatile void * __xlx_apatb_param_SocketTable_myPort_15, volatile void * __xlx_apatb_param_SocketTable_valid_0, volatile void * __xlx_apatb_param_SocketTable_valid_1, volatile void * __xlx_apatb_param_SocketTable_valid_2, volatile void * __xlx_apatb_param_SocketTable_valid_3, volatile void * __xlx_apatb_param_SocketTable_valid_4, volatile void * __xlx_apatb_param_SocketTable_valid_5, volatile void * __xlx_apatb_param_SocketTable_valid_6, volatile void * __xlx_apatb_param_SocketTable_valid_7, volatile void * __xlx_apatb_param_SocketTable_valid_8, volatile void * __xlx_apatb_param_SocketTable_valid_9, volatile void * __xlx_apatb_param_SocketTable_valid_10, volatile void * __xlx_apatb_param_SocketTable_valid_11, volatile void * __xlx_apatb_param_SocketTable_valid_12, volatile void * __xlx_apatb_param_SocketTable_valid_13, volatile void * __xlx_apatb_param_SocketTable_valid_14, volatile void * __xlx_apatb_param_SocketTable_valid_15, volatile void * __xlx_apatb_param_numberSockets) {
  // collect __xlx_rxUdpDataIn_V_data_V_tmp_vec
  unsigned __xlx_rxUdpDataIn_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_rxUdpDataIn_V_data_V_V_read_Size = __xlx_rxUdpDataIn_V_data_V_V_size_Reader.read_size();
  vector<__cosim_s40__> __xlx_rxUdpDataIn_V_data_V_tmp_vec;
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_rxUdpDataIn_V_data_V)->empty() && __xlx_rxUdpDataIn_V_data_V_V_tmp_Count < __xlx_rxUdpDataIn_V_data_V_V_read_Size) {
    __xlx_rxUdpDataIn_V_data_V_tmp_vec.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_rxUdpDataIn_V_data_V)->read());
    __xlx_rxUdpDataIn_V_data_V_V_tmp_Count++;
  }
  ap_apatb_rxUdpDataIn_V_data_V_cap_bc = __xlx_rxUdpDataIn_V_data_V_tmp_vec.size();
  // store input buffer
  __cosim_s40__* __xlx_rxUdpDataIn_V_data_V_input_buffer= new __cosim_s40__[__xlx_rxUdpDataIn_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_rxUdpDataIn_V_data_V_tmp_vec.size(); ++i) {
    __xlx_rxUdpDataIn_V_data_V_input_buffer[i] = __xlx_rxUdpDataIn_V_data_V_tmp_vec[i];
  }
  // collect __xlx_rxUdpDataIn_V_keep_V_tmp_vec
  unsigned __xlx_rxUdpDataIn_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_rxUdpDataIn_V_keep_V_V_read_Size = __xlx_rxUdpDataIn_V_keep_V_V_size_Reader.read_size();
  vector<long long> __xlx_rxUdpDataIn_V_keep_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_rxUdpDataIn_V_keep_V)->empty() && __xlx_rxUdpDataIn_V_keep_V_V_tmp_Count < __xlx_rxUdpDataIn_V_keep_V_V_read_Size) {
    __xlx_rxUdpDataIn_V_keep_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_rxUdpDataIn_V_keep_V)->read());
    __xlx_rxUdpDataIn_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_rxUdpDataIn_V_keep_V_cap_bc = __xlx_rxUdpDataIn_V_keep_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_rxUdpDataIn_V_keep_V_input_buffer= new long long[__xlx_rxUdpDataIn_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_rxUdpDataIn_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_rxUdpDataIn_V_keep_V_input_buffer[i] = __xlx_rxUdpDataIn_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_rxUdpDataIn_V_strb_V_tmp_vec
  unsigned __xlx_rxUdpDataIn_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_rxUdpDataIn_V_strb_V_V_read_Size = __xlx_rxUdpDataIn_V_strb_V_V_size_Reader.read_size();
  vector<long long> __xlx_rxUdpDataIn_V_strb_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_rxUdpDataIn_V_strb_V)->empty() && __xlx_rxUdpDataIn_V_strb_V_V_tmp_Count < __xlx_rxUdpDataIn_V_strb_V_V_read_Size) {
    __xlx_rxUdpDataIn_V_strb_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_rxUdpDataIn_V_strb_V)->read());
    __xlx_rxUdpDataIn_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_rxUdpDataIn_V_strb_V_cap_bc = __xlx_rxUdpDataIn_V_strb_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_rxUdpDataIn_V_strb_V_input_buffer= new long long[__xlx_rxUdpDataIn_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_rxUdpDataIn_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_rxUdpDataIn_V_strb_V_input_buffer[i] = __xlx_rxUdpDataIn_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_rxUdpDataIn_V_last_V_tmp_vec
  unsigned __xlx_rxUdpDataIn_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_rxUdpDataIn_V_last_V_V_read_Size = __xlx_rxUdpDataIn_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_rxUdpDataIn_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_rxUdpDataIn_V_last_V)->empty() && __xlx_rxUdpDataIn_V_last_V_V_tmp_Count < __xlx_rxUdpDataIn_V_last_V_V_read_Size) {
    __xlx_rxUdpDataIn_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_rxUdpDataIn_V_last_V)->read());
    __xlx_rxUdpDataIn_V_last_V_V_tmp_Count++;
  }
  ap_apatb_rxUdpDataIn_V_last_V_cap_bc = __xlx_rxUdpDataIn_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_rxUdpDataIn_V_last_V_input_buffer= new char[__xlx_rxUdpDataIn_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_rxUdpDataIn_V_last_V_tmp_vec.size(); ++i) {
    __xlx_rxUdpDataIn_V_last_V_input_buffer[i] = __xlx_rxUdpDataIn_V_last_V_tmp_vec[i];
  }
  //Create input buffer for txUdpDataOut_V_data_V
  ap_apatb_txUdpDataOut_V_data_V_cap_bc = __xlx_txUdpDataOut_V_data_V_V_size_Reader.read_size();
  __cosim_s40__* __xlx_txUdpDataOut_V_data_V_input_buffer= new __cosim_s40__[ap_apatb_txUdpDataOut_V_data_V_cap_bc];
  //Create input buffer for txUdpDataOut_V_keep_V
  ap_apatb_txUdpDataOut_V_keep_V_cap_bc = __xlx_txUdpDataOut_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_txUdpDataOut_V_keep_V_input_buffer= new long long[ap_apatb_txUdpDataOut_V_keep_V_cap_bc];
  //Create input buffer for txUdpDataOut_V_strb_V
  ap_apatb_txUdpDataOut_V_strb_V_cap_bc = __xlx_txUdpDataOut_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_txUdpDataOut_V_strb_V_input_buffer= new long long[ap_apatb_txUdpDataOut_V_strb_V_cap_bc];
  //Create input buffer for txUdpDataOut_V_last_V
  ap_apatb_txUdpDataOut_V_last_V_cap_bc = __xlx_txUdpDataOut_V_last_V_V_size_Reader.read_size();
  char* __xlx_txUdpDataOut_V_last_V_input_buffer= new char[ap_apatb_txUdpDataOut_V_last_V_cap_bc];
  //Create input buffer for DataOutApp_V_data_V
  ap_apatb_DataOutApp_V_data_V_cap_bc = __xlx_DataOutApp_V_data_V_V_size_Reader.read_size();
  __cosim_s40__* __xlx_DataOutApp_V_data_V_input_buffer= new __cosim_s40__[ap_apatb_DataOutApp_V_data_V_cap_bc];
  //Create input buffer for DataOutApp_V_keep_V
  ap_apatb_DataOutApp_V_keep_V_cap_bc = __xlx_DataOutApp_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_DataOutApp_V_keep_V_input_buffer= new long long[ap_apatb_DataOutApp_V_keep_V_cap_bc];
  //Create input buffer for DataOutApp_V_strb_V
  ap_apatb_DataOutApp_V_strb_V_cap_bc = __xlx_DataOutApp_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_DataOutApp_V_strb_V_input_buffer= new long long[ap_apatb_DataOutApp_V_strb_V_cap_bc];
  //Create input buffer for DataOutApp_V_user_V
  ap_apatb_DataOutApp_V_user_V_cap_bc = __xlx_DataOutApp_V_user_V_V_size_Reader.read_size();
  __cosim_s10__* __xlx_DataOutApp_V_user_V_input_buffer= new __cosim_s10__[ap_apatb_DataOutApp_V_user_V_cap_bc];
  //Create input buffer for DataOutApp_V_last_V
  ap_apatb_DataOutApp_V_last_V_cap_bc = __xlx_DataOutApp_V_last_V_V_size_Reader.read_size();
  char* __xlx_DataOutApp_V_last_V_input_buffer= new char[ap_apatb_DataOutApp_V_last_V_cap_bc];
  //Create input buffer for DataOutApp_V_dest_V
  ap_apatb_DataOutApp_V_dest_V_cap_bc = __xlx_DataOutApp_V_dest_V_V_size_Reader.read_size();
  short* __xlx_DataOutApp_V_dest_V_input_buffer= new short[ap_apatb_DataOutApp_V_dest_V_cap_bc];
  // collect __xlx_DataInApp_V_data_V_tmp_vec
  unsigned __xlx_DataInApp_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_DataInApp_V_data_V_V_read_Size = __xlx_DataInApp_V_data_V_V_size_Reader.read_size();
  vector<__cosim_s40__> __xlx_DataInApp_V_data_V_tmp_vec;
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_DataInApp_V_data_V)->empty() && __xlx_DataInApp_V_data_V_V_tmp_Count < __xlx_DataInApp_V_data_V_V_read_Size) {
    __xlx_DataInApp_V_data_V_tmp_vec.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_DataInApp_V_data_V)->read());
    __xlx_DataInApp_V_data_V_V_tmp_Count++;
  }
  ap_apatb_DataInApp_V_data_V_cap_bc = __xlx_DataInApp_V_data_V_tmp_vec.size();
  // store input buffer
  __cosim_s40__* __xlx_DataInApp_V_data_V_input_buffer= new __cosim_s40__[__xlx_DataInApp_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_DataInApp_V_data_V_tmp_vec.size(); ++i) {
    __xlx_DataInApp_V_data_V_input_buffer[i] = __xlx_DataInApp_V_data_V_tmp_vec[i];
  }
  // collect __xlx_DataInApp_V_keep_V_tmp_vec
  unsigned __xlx_DataInApp_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_DataInApp_V_keep_V_V_read_Size = __xlx_DataInApp_V_keep_V_V_size_Reader.read_size();
  vector<long long> __xlx_DataInApp_V_keep_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_DataInApp_V_keep_V)->empty() && __xlx_DataInApp_V_keep_V_V_tmp_Count < __xlx_DataInApp_V_keep_V_V_read_Size) {
    __xlx_DataInApp_V_keep_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_DataInApp_V_keep_V)->read());
    __xlx_DataInApp_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_DataInApp_V_keep_V_cap_bc = __xlx_DataInApp_V_keep_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_DataInApp_V_keep_V_input_buffer= new long long[__xlx_DataInApp_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_DataInApp_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_DataInApp_V_keep_V_input_buffer[i] = __xlx_DataInApp_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_DataInApp_V_strb_V_tmp_vec
  unsigned __xlx_DataInApp_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_DataInApp_V_strb_V_V_read_Size = __xlx_DataInApp_V_strb_V_V_size_Reader.read_size();
  vector<long long> __xlx_DataInApp_V_strb_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_DataInApp_V_strb_V)->empty() && __xlx_DataInApp_V_strb_V_V_tmp_Count < __xlx_DataInApp_V_strb_V_V_read_Size) {
    __xlx_DataInApp_V_strb_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_DataInApp_V_strb_V)->read());
    __xlx_DataInApp_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_DataInApp_V_strb_V_cap_bc = __xlx_DataInApp_V_strb_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_DataInApp_V_strb_V_input_buffer= new long long[__xlx_DataInApp_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_DataInApp_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_DataInApp_V_strb_V_input_buffer[i] = __xlx_DataInApp_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_DataInApp_V_user_V_tmp_vec
  unsigned __xlx_DataInApp_V_user_V_V_tmp_Count = 0;
  unsigned __xlx_DataInApp_V_user_V_V_read_Size = __xlx_DataInApp_V_user_V_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_DataInApp_V_user_V_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_DataInApp_V_user_V)->empty() && __xlx_DataInApp_V_user_V_V_tmp_Count < __xlx_DataInApp_V_user_V_V_read_Size) {
    __xlx_DataInApp_V_user_V_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_DataInApp_V_user_V)->read());
    __xlx_DataInApp_V_user_V_V_tmp_Count++;
  }
  ap_apatb_DataInApp_V_user_V_cap_bc = __xlx_DataInApp_V_user_V_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_DataInApp_V_user_V_input_buffer= new __cosim_s10__[__xlx_DataInApp_V_user_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_DataInApp_V_user_V_tmp_vec.size(); ++i) {
    __xlx_DataInApp_V_user_V_input_buffer[i] = __xlx_DataInApp_V_user_V_tmp_vec[i];
  }
  // collect __xlx_DataInApp_V_last_V_tmp_vec
  unsigned __xlx_DataInApp_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_DataInApp_V_last_V_V_read_Size = __xlx_DataInApp_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_DataInApp_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_DataInApp_V_last_V)->empty() && __xlx_DataInApp_V_last_V_V_tmp_Count < __xlx_DataInApp_V_last_V_V_read_Size) {
    __xlx_DataInApp_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_DataInApp_V_last_V)->read());
    __xlx_DataInApp_V_last_V_V_tmp_Count++;
  }
  ap_apatb_DataInApp_V_last_V_cap_bc = __xlx_DataInApp_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_DataInApp_V_last_V_input_buffer= new char[__xlx_DataInApp_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_DataInApp_V_last_V_tmp_vec.size(); ++i) {
    __xlx_DataInApp_V_last_V_input_buffer[i] = __xlx_DataInApp_V_last_V_tmp_vec[i];
  }
  // collect __xlx_DataInApp_V_dest_V_tmp_vec
  unsigned __xlx_DataInApp_V_dest_V_V_tmp_Count = 0;
  unsigned __xlx_DataInApp_V_dest_V_V_read_Size = __xlx_DataInApp_V_dest_V_V_size_Reader.read_size();
  vector<short> __xlx_DataInApp_V_dest_V_tmp_vec;
  while (!((hls::stream<short>*)__xlx_apatb_param_DataInApp_V_dest_V)->empty() && __xlx_DataInApp_V_dest_V_V_tmp_Count < __xlx_DataInApp_V_dest_V_V_read_Size) {
    __xlx_DataInApp_V_dest_V_tmp_vec.push_back(((hls::stream<short>*)__xlx_apatb_param_DataInApp_V_dest_V)->read());
    __xlx_DataInApp_V_dest_V_V_tmp_Count++;
  }
  ap_apatb_DataInApp_V_dest_V_cap_bc = __xlx_DataInApp_V_dest_V_tmp_vec.size();
  // store input buffer
  short* __xlx_DataInApp_V_dest_V_input_buffer= new short[__xlx_DataInApp_V_dest_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_DataInApp_V_dest_V_tmp_vec.size(); ++i) {
    __xlx_DataInApp_V_dest_V_input_buffer[i] = __xlx_DataInApp_V_dest_V_tmp_vec[i];
  }
  // DUT call
  udp(__xlx_rxUdpDataIn_V_data_V_input_buffer, __xlx_rxUdpDataIn_V_keep_V_input_buffer, __xlx_rxUdpDataIn_V_strb_V_input_buffer, __xlx_rxUdpDataIn_V_last_V_input_buffer, __xlx_txUdpDataOut_V_data_V_input_buffer, __xlx_txUdpDataOut_V_keep_V_input_buffer, __xlx_txUdpDataOut_V_strb_V_input_buffer, __xlx_txUdpDataOut_V_last_V_input_buffer, __xlx_DataOutApp_V_data_V_input_buffer, __xlx_DataOutApp_V_keep_V_input_buffer, __xlx_DataOutApp_V_strb_V_input_buffer, __xlx_DataOutApp_V_user_V_input_buffer, __xlx_DataOutApp_V_last_V_input_buffer, __xlx_DataOutApp_V_dest_V_input_buffer, __xlx_DataInApp_V_data_V_input_buffer, __xlx_DataInApp_V_keep_V_input_buffer, __xlx_DataInApp_V_strb_V_input_buffer, __xlx_DataInApp_V_user_V_input_buffer, __xlx_DataInApp_V_last_V_input_buffer, __xlx_DataInApp_V_dest_V_input_buffer, __xlx_apatb_param_myIpAddress, __xlx_apatb_param_SocketTable_theirIP_0, __xlx_apatb_param_SocketTable_theirIP_1, __xlx_apatb_param_SocketTable_theirIP_2, __xlx_apatb_param_SocketTable_theirIP_3, __xlx_apatb_param_SocketTable_theirIP_4, __xlx_apatb_param_SocketTable_theirIP_5, __xlx_apatb_param_SocketTable_theirIP_6, __xlx_apatb_param_SocketTable_theirIP_7, __xlx_apatb_param_SocketTable_theirIP_8, __xlx_apatb_param_SocketTable_theirIP_9, __xlx_apatb_param_SocketTable_theirIP_10, __xlx_apatb_param_SocketTable_theirIP_11, __xlx_apatb_param_SocketTable_theirIP_12, __xlx_apatb_param_SocketTable_theirIP_13, __xlx_apatb_param_SocketTable_theirIP_14, __xlx_apatb_param_SocketTable_theirIP_15, __xlx_apatb_param_SocketTable_theirPort_0, __xlx_apatb_param_SocketTable_theirPort_1, __xlx_apatb_param_SocketTable_theirPort_2, __xlx_apatb_param_SocketTable_theirPort_3, __xlx_apatb_param_SocketTable_theirPort_4, __xlx_apatb_param_SocketTable_theirPort_5, __xlx_apatb_param_SocketTable_theirPort_6, __xlx_apatb_param_SocketTable_theirPort_7, __xlx_apatb_param_SocketTable_theirPort_8, __xlx_apatb_param_SocketTable_theirPort_9, __xlx_apatb_param_SocketTable_theirPort_10, __xlx_apatb_param_SocketTable_theirPort_11, __xlx_apatb_param_SocketTable_theirPort_12, __xlx_apatb_param_SocketTable_theirPort_13, __xlx_apatb_param_SocketTable_theirPort_14, __xlx_apatb_param_SocketTable_theirPort_15, __xlx_apatb_param_SocketTable_myPort_0, __xlx_apatb_param_SocketTable_myPort_1, __xlx_apatb_param_SocketTable_myPort_2, __xlx_apatb_param_SocketTable_myPort_3, __xlx_apatb_param_SocketTable_myPort_4, __xlx_apatb_param_SocketTable_myPort_5, __xlx_apatb_param_SocketTable_myPort_6, __xlx_apatb_param_SocketTable_myPort_7, __xlx_apatb_param_SocketTable_myPort_8, __xlx_apatb_param_SocketTable_myPort_9, __xlx_apatb_param_SocketTable_myPort_10, __xlx_apatb_param_SocketTable_myPort_11, __xlx_apatb_param_SocketTable_myPort_12, __xlx_apatb_param_SocketTable_myPort_13, __xlx_apatb_param_SocketTable_myPort_14, __xlx_apatb_param_SocketTable_myPort_15, __xlx_apatb_param_SocketTable_valid_0, __xlx_apatb_param_SocketTable_valid_1, __xlx_apatb_param_SocketTable_valid_2, __xlx_apatb_param_SocketTable_valid_3, __xlx_apatb_param_SocketTable_valid_4, __xlx_apatb_param_SocketTable_valid_5, __xlx_apatb_param_SocketTable_valid_6, __xlx_apatb_param_SocketTable_valid_7, __xlx_apatb_param_SocketTable_valid_8, __xlx_apatb_param_SocketTable_valid_9, __xlx_apatb_param_SocketTable_valid_10, __xlx_apatb_param_SocketTable_valid_11, __xlx_apatb_param_SocketTable_valid_12, __xlx_apatb_param_SocketTable_valid_13, __xlx_apatb_param_SocketTable_valid_14, __xlx_apatb_param_SocketTable_valid_15, __xlx_apatb_param_numberSockets);
  for (unsigned i = 0; i <ap_apatb_txUdpDataOut_V_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_txUdpDataOut_V_data_V)->write(__xlx_txUdpDataOut_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_txUdpDataOut_V_keep_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_txUdpDataOut_V_keep_V)->write(__xlx_txUdpDataOut_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_txUdpDataOut_V_strb_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_txUdpDataOut_V_strb_V)->write(__xlx_txUdpDataOut_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_txUdpDataOut_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_txUdpDataOut_V_last_V)->write(__xlx_txUdpDataOut_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_DataOutApp_V_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_DataOutApp_V_data_V)->write(__xlx_DataOutApp_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_DataOutApp_V_keep_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_DataOutApp_V_keep_V)->write(__xlx_DataOutApp_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_DataOutApp_V_strb_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_DataOutApp_V_strb_V)->write(__xlx_DataOutApp_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_DataOutApp_V_user_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_DataOutApp_V_user_V)->write(__xlx_DataOutApp_V_user_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_DataOutApp_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_DataOutApp_V_last_V)->write(__xlx_DataOutApp_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_DataOutApp_V_dest_V_cap_bc; ++i)
    ((hls::stream<short>*)__xlx_apatb_param_DataOutApp_V_dest_V)->write(__xlx_DataOutApp_V_dest_V_input_buffer[i]);
}
