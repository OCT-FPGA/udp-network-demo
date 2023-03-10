#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_arpDataIn_V_data_V "../tv/cdatafile/c.arp_server.autotvin_arpDataIn_V_data_V.dat"
#define AUTOTB_TVOUT_arpDataIn_V_data_V "../tv/cdatafile/c.arp_server.autotvout_arpDataIn_V_data_V.dat"
#define AUTOTB_TVIN_arpDataIn_V_keep_V "../tv/cdatafile/c.arp_server.autotvin_arpDataIn_V_keep_V.dat"
#define AUTOTB_TVOUT_arpDataIn_V_keep_V "../tv/cdatafile/c.arp_server.autotvout_arpDataIn_V_keep_V.dat"
#define AUTOTB_TVIN_arpDataIn_V_strb_V "../tv/cdatafile/c.arp_server.autotvin_arpDataIn_V_strb_V.dat"
#define AUTOTB_TVOUT_arpDataIn_V_strb_V "../tv/cdatafile/c.arp_server.autotvout_arpDataIn_V_strb_V.dat"
#define AUTOTB_TVIN_arpDataIn_V_last_V "../tv/cdatafile/c.arp_server.autotvin_arpDataIn_V_last_V.dat"
#define AUTOTB_TVOUT_arpDataIn_V_last_V "../tv/cdatafile/c.arp_server.autotvout_arpDataIn_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_arpDataIn_V_data_V "../tv/stream_size/stream_size_in_arpDataIn_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_data_V "../tv/stream_size/stream_ingress_status_arpDataIn_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_arpDataIn_V_keep_V "../tv/stream_size/stream_size_in_arpDataIn_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_keep_V "../tv/stream_size/stream_ingress_status_arpDataIn_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_arpDataIn_V_strb_V "../tv/stream_size/stream_size_in_arpDataIn_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_strb_V "../tv/stream_size/stream_ingress_status_arpDataIn_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_arpDataIn_V_last_V "../tv/stream_size/stream_size_in_arpDataIn_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_last_V "../tv/stream_size/stream_ingress_status_arpDataIn_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_macIpEncode_req "../tv/cdatafile/c.arp_server.autotvin_macIpEncode_req.dat"
#define AUTOTB_TVOUT_macIpEncode_req "../tv/cdatafile/c.arp_server.autotvout_macIpEncode_req.dat"
#define WRAPC_STREAM_SIZE_IN_macIpEncode_req "../tv/stream_size/stream_size_in_macIpEncode_req.dat"
#define WRAPC_STREAM_INGRESS_STATUS_macIpEncode_req "../tv/stream_size/stream_ingress_status_macIpEncode_req.dat"
// wrapc file define:
#define AUTOTB_TVIN_arpDataOut_V_data_V "../tv/cdatafile/c.arp_server.autotvin_arpDataOut_V_data_V.dat"
#define AUTOTB_TVOUT_arpDataOut_V_data_V "../tv/cdatafile/c.arp_server.autotvout_arpDataOut_V_data_V.dat"
#define AUTOTB_TVIN_arpDataOut_V_keep_V "../tv/cdatafile/c.arp_server.autotvin_arpDataOut_V_keep_V.dat"
#define AUTOTB_TVOUT_arpDataOut_V_keep_V "../tv/cdatafile/c.arp_server.autotvout_arpDataOut_V_keep_V.dat"
#define AUTOTB_TVIN_arpDataOut_V_strb_V "../tv/cdatafile/c.arp_server.autotvin_arpDataOut_V_strb_V.dat"
#define AUTOTB_TVOUT_arpDataOut_V_strb_V "../tv/cdatafile/c.arp_server.autotvout_arpDataOut_V_strb_V.dat"
#define AUTOTB_TVIN_arpDataOut_V_last_V "../tv/cdatafile/c.arp_server.autotvin_arpDataOut_V_last_V.dat"
#define AUTOTB_TVOUT_arpDataOut_V_last_V "../tv/cdatafile/c.arp_server.autotvout_arpDataOut_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_arpDataOut_V_data_V "../tv/stream_size/stream_size_out_arpDataOut_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_arpDataOut_V_data_V "../tv/stream_size/stream_egress_status_arpDataOut_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_arpDataOut_V_keep_V "../tv/stream_size/stream_size_out_arpDataOut_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_arpDataOut_V_keep_V "../tv/stream_size/stream_egress_status_arpDataOut_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_arpDataOut_V_strb_V "../tv/stream_size/stream_size_out_arpDataOut_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_arpDataOut_V_strb_V "../tv/stream_size/stream_egress_status_arpDataOut_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_arpDataOut_V_last_V "../tv/stream_size/stream_size_out_arpDataOut_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_arpDataOut_V_last_V "../tv/stream_size/stream_egress_status_arpDataOut_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_macIpEncode_rsp "../tv/cdatafile/c.arp_server.autotvin_macIpEncode_rsp.dat"
#define AUTOTB_TVOUT_macIpEncode_rsp "../tv/cdatafile/c.arp_server.autotvout_macIpEncode_rsp.dat"
#define WRAPC_STREAM_SIZE_OUT_macIpEncode_rsp "../tv/stream_size/stream_size_out_macIpEncode_rsp.dat"
#define WRAPC_STREAM_EGRESS_STATUS_macIpEncode_rsp "../tv/stream_size/stream_egress_status_macIpEncode_rsp.dat"
// wrapc file define:
#define AUTOTB_TVIN_arpTable_macAddress "../tv/cdatafile/c.arp_server.autotvin_arpTable_macAddress.dat"
#define AUTOTB_TVOUT_arpTable_macAddress "../tv/cdatafile/c.arp_server.autotvout_arpTable_macAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_arpTable_ipAddress "../tv/cdatafile/c.arp_server.autotvin_arpTable_ipAddress.dat"
#define AUTOTB_TVOUT_arpTable_ipAddress "../tv/cdatafile/c.arp_server.autotvout_arpTable_ipAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_arpTable_valid "../tv/cdatafile/c.arp_server.autotvin_arpTable_valid.dat"
#define AUTOTB_TVOUT_arpTable_valid "../tv/cdatafile/c.arp_server.autotvout_arpTable_valid.dat"
// wrapc file define:
#define AUTOTB_TVIN_arp_scan "../tv/cdatafile/c.arp_server.autotvin_arp_scan.dat"
#define AUTOTB_TVOUT_arp_scan "../tv/cdatafile/c.arp_server.autotvout_arp_scan.dat"
// wrapc file define:
#define AUTOTB_TVIN_myMacAddress "../tv/cdatafile/c.arp_server.autotvin_myMacAddress.dat"
#define AUTOTB_TVOUT_myMacAddress "../tv/cdatafile/c.arp_server.autotvout_myMacAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_myIpAddress "../tv/cdatafile/c.arp_server.autotvin_myIpAddress.dat"
#define AUTOTB_TVOUT_myIpAddress "../tv/cdatafile/c.arp_server.autotvout_myIpAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_gatewayIP "../tv/cdatafile/c.arp_server.autotvin_gatewayIP.dat"
#define AUTOTB_TVOUT_gatewayIP "../tv/cdatafile/c.arp_server.autotvout_gatewayIP.dat"
// wrapc file define:
#define AUTOTB_TVIN_networkMask "../tv/cdatafile/c.arp_server.autotvin_networkMask.dat"
#define AUTOTB_TVOUT_networkMask "../tv/cdatafile/c.arp_server.autotvout_networkMask.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_arpDataIn_V_data_V "../tv/rtldatafile/rtl.arp_server.autotvout_arpDataIn_V_data_V.dat"
#define AUTOTB_TVOUT_PC_arpDataIn_V_keep_V "../tv/rtldatafile/rtl.arp_server.autotvout_arpDataIn_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_arpDataIn_V_strb_V "../tv/rtldatafile/rtl.arp_server.autotvout_arpDataIn_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_arpDataIn_V_last_V "../tv/rtldatafile/rtl.arp_server.autotvout_arpDataIn_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_macIpEncode_req "../tv/rtldatafile/rtl.arp_server.autotvout_macIpEncode_req.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_arpDataOut_V_data_V "../tv/rtldatafile/rtl.arp_server.autotvout_arpDataOut_V_data_V.dat"
#define AUTOTB_TVOUT_PC_arpDataOut_V_keep_V "../tv/rtldatafile/rtl.arp_server.autotvout_arpDataOut_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_arpDataOut_V_strb_V "../tv/rtldatafile/rtl.arp_server.autotvout_arpDataOut_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_arpDataOut_V_last_V "../tv/rtldatafile/rtl.arp_server.autotvout_arpDataOut_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_macIpEncode_rsp "../tv/rtldatafile/rtl.arp_server.autotvout_macIpEncode_rsp.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_arpTable_macAddress "../tv/rtldatafile/rtl.arp_server.autotvout_arpTable_macAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_arpTable_ipAddress "../tv/rtldatafile/rtl.arp_server.autotvout_arpTable_ipAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_arpTable_valid "../tv/rtldatafile/rtl.arp_server.autotvout_arpTable_valid.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_arp_scan "../tv/rtldatafile/rtl.arp_server.autotvout_arp_scan.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_myMacAddress "../tv/rtldatafile/rtl.arp_server.autotvout_myMacAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_myIpAddress "../tv/rtldatafile/rtl.arp_server.autotvout_myIpAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gatewayIP "../tv/rtldatafile/rtl.arp_server.autotvout_gatewayIP.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_networkMask "../tv/rtldatafile/rtl.arp_server.autotvout_networkMask.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  arpDataIn_V_data_V_depth = 0;
  arpDataIn_V_keep_V_depth = 0;
  arpDataIn_V_strb_V_depth = 0;
  arpDataIn_V_last_V_depth = 0;
  macIpEncode_req_depth = 0;
  arpDataOut_V_data_V_depth = 0;
  arpDataOut_V_keep_V_depth = 0;
  arpDataOut_V_strb_V_depth = 0;
  arpDataOut_V_last_V_depth = 0;
  macIpEncode_rsp_depth = 0;
  arpTable_macAddress_depth = 0;
  arpTable_ipAddress_depth = 0;
  arpTable_valid_depth = 0;
  arp_scan_depth = 0;
  myMacAddress_depth = 0;
  myIpAddress_depth = 0;
  gatewayIP_depth = 0;
  networkMask_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{arpDataIn_V_data_V " << arpDataIn_V_data_V_depth << "}\n";
  total_list << "{arpDataIn_V_keep_V " << arpDataIn_V_keep_V_depth << "}\n";
  total_list << "{arpDataIn_V_strb_V " << arpDataIn_V_strb_V_depth << "}\n";
  total_list << "{arpDataIn_V_last_V " << arpDataIn_V_last_V_depth << "}\n";
  total_list << "{macIpEncode_req " << macIpEncode_req_depth << "}\n";
  total_list << "{arpDataOut_V_data_V " << arpDataOut_V_data_V_depth << "}\n";
  total_list << "{arpDataOut_V_keep_V " << arpDataOut_V_keep_V_depth << "}\n";
  total_list << "{arpDataOut_V_strb_V " << arpDataOut_V_strb_V_depth << "}\n";
  total_list << "{arpDataOut_V_last_V " << arpDataOut_V_last_V_depth << "}\n";
  total_list << "{macIpEncode_rsp " << macIpEncode_rsp_depth << "}\n";
  total_list << "{arpTable_macAddress " << arpTable_macAddress_depth << "}\n";
  total_list << "{arpTable_ipAddress " << arpTable_ipAddress_depth << "}\n";
  total_list << "{arpTable_valid " << arpTable_valid_depth << "}\n";
  total_list << "{arp_scan " << arp_scan_depth << "}\n";
  total_list << "{myMacAddress " << myMacAddress_depth << "}\n";
  total_list << "{myIpAddress " << myIpAddress_depth << "}\n";
  total_list << "{gatewayIP " << gatewayIP_depth << "}\n";
  total_list << "{networkMask " << networkMask_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int arpDataIn_V_data_V_depth;
    int arpDataIn_V_keep_V_depth;
    int arpDataIn_V_strb_V_depth;
    int arpDataIn_V_last_V_depth;
    int macIpEncode_req_depth;
    int arpDataOut_V_data_V_depth;
    int arpDataOut_V_keep_V_depth;
    int arpDataOut_V_strb_V_depth;
    int arpDataOut_V_last_V_depth;
    int macIpEncode_rsp_depth;
    int arpTable_macAddress_depth;
    int arpTable_ipAddress_depth;
    int arpTable_valid_depth;
    int arp_scan_depth;
    int myMacAddress_depth;
    int myIpAddress_depth;
    int gatewayIP_depth;
    int networkMask_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s40__ { char data[64]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void arp_server_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_arp_server_hw(volatile void * __xlx_apatb_param_arpDataIn_V_data_V, volatile void * __xlx_apatb_param_arpDataIn_V_keep_V, volatile void * __xlx_apatb_param_arpDataIn_V_strb_V, volatile void * __xlx_apatb_param_arpDataIn_V_last_V, volatile void * __xlx_apatb_param_macIpEncode_req, volatile void * __xlx_apatb_param_arpDataOut_V_data_V, volatile void * __xlx_apatb_param_arpDataOut_V_keep_V, volatile void * __xlx_apatb_param_arpDataOut_V_strb_V, volatile void * __xlx_apatb_param_arpDataOut_V_last_V, volatile void * __xlx_apatb_param_macIpEncode_rsp, volatile void * __xlx_apatb_param_arpTable_macAddress, volatile void * __xlx_apatb_param_arpTable_ipAddress, volatile void * __xlx_apatb_param_arpTable_valid, volatile void * __xlx_apatb_param_arp_scan, volatile void * __xlx_apatb_param_myMacAddress, volatile void * __xlx_apatb_param_myIpAddress, volatile void * __xlx_apatb_param_gatewayIP, volatile void * __xlx_apatb_param_networkMask) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_arpDataIn_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_arpDataIn_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_arpDataIn_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_arpDataIn_stream_buf_final_size; ++i) {
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataIn_V_data_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_keep_V)->read();
((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_arpDataIn_V_last_V)->read();
}
long __xlx_apatb_param_macIpEncode_req_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_macIpEncode_req);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_macIpEncode_req_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_macIpEncode_req_stream_buf_final_size; ++i)((hls::stream<__cosim_s4__>*)__xlx_apatb_param_macIpEncode_req)->read();
{unsigned xlx_stream_arpDataOut_size = 0;

          std::vector<sc_bv<512> > arpDataOut_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_arpDataOut_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > arpDataOut_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "arpDataOut");
  
            // push token into output port buffer
            if (AESL_token != "") {
              arpDataOut_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "arpDataOut" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_arpDataOut_size=arpDataOut_V_data_V_pc_buffer.size();
arpDataOut_V_data_V_pc_buffer_Copy=arpDataOut_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > arpDataOut_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_arpDataOut_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > arpDataOut_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "arpDataOut");
  
            // push token into output port buffer
            if (AESL_token != "") {
              arpDataOut_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "arpDataOut" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_arpDataOut_size=arpDataOut_V_keep_V_pc_buffer.size();
arpDataOut_V_keep_V_pc_buffer_Copy=arpDataOut_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > arpDataOut_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_arpDataOut_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > arpDataOut_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "arpDataOut");
  
            // push token into output port buffer
            if (AESL_token != "") {
              arpDataOut_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "arpDataOut" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_arpDataOut_size=arpDataOut_V_strb_V_pc_buffer.size();
arpDataOut_V_strb_V_pc_buffer_Copy=arpDataOut_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > arpDataOut_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_arpDataOut_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > arpDataOut_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "arpDataOut");
  
            // push token into output port buffer
            if (AESL_token != "") {
              arpDataOut_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "arpDataOut" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_arpDataOut_size=arpDataOut_V_last_V_pc_buffer.size();
arpDataOut_V_last_V_pc_buffer_Copy=arpDataOut_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_arpDataOut_size; j != e; ++j) {
__cosim_s40__ xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0*8+0] = arpDataOut_V_data_V_pc_buffer_Copy[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+1] = arpDataOut_V_data_V_pc_buffer_Copy[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+2] = arpDataOut_V_data_V_pc_buffer_Copy[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+3] = arpDataOut_V_data_V_pc_buffer_Copy[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+4] = arpDataOut_V_data_V_pc_buffer_Copy[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+5] = arpDataOut_V_data_V_pc_buffer_Copy[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+6] = arpDataOut_V_data_V_pc_buffer_Copy[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt_data)[0*8+7] = arpDataOut_V_data_V_pc_buffer_Copy[j].range(511,448).to_int64();
((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataOut_V_data_V)->write(xlx_stream_elt_data);
long long xlx_stream_elt_keep;
((long long*)&xlx_stream_elt_keep)[0] = arpDataOut_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_keep_V)->write(xlx_stream_elt_keep);
long long xlx_stream_elt_strb;
((long long*)&xlx_stream_elt_strb)[0] = arpDataOut_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = arpDataOut_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_arpDataOut_V_last_V)->write(xlx_stream_elt_last);
}}long __xlx_apatb_param_macIpEncode_rsp_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_macIpEncode_rsp);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_macIpEncode_rsp_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_macIpEncode_rsp);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > macIpEncode_rsp_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "macIpEncode_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              macIpEncode_rsp_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "macIpEncode_rsp" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = macIpEncode_rsp_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = macIpEncode_rsp_pc_buffer[j].range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_macIpEncode_rsp)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #ifdef USE_BINARY_TV_FILE
{
transaction<48> tr(256);
aesl_fh.read(AUTOTB_TVOUT_PC_arpTable_macAddress, tr.p, tr.tbytes);
tr.reorder();
tr.send<8>((char*)__xlx_apatb_param_arpTable_macAddress, 256);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_arpTable_macAddress);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<48> > arpTable_macAddress_pc_buffer(256);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "arpTable_macAddress");
  
            // push token into output port buffer
            if (AESL_token != "") {
              arpTable_macAddress_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "arpTable_macAddress" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 256; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+0] = arpTable_macAddress_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+1] = arpTable_macAddress_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+2] = arpTable_macAddress_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+3] = arpTable_macAddress_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+4] = arpTable_macAddress_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_arpTable_macAddress)[j*8+5] = arpTable_macAddress_pc_buffer[i].range(47, 40).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<32> tr(256);
aesl_fh.read(AUTOTB_TVOUT_PC_arpTable_ipAddress, tr.p, tr.tbytes);
tr.reorder();
tr.send<4>((char*)__xlx_apatb_param_arpTable_ipAddress, 256);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_arpTable_ipAddress);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > arpTable_ipAddress_pc_buffer(256);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "arpTable_ipAddress");
  
            // push token into output port buffer
            if (AESL_token != "") {
              arpTable_ipAddress_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "arpTable_ipAddress" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 256; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_arpTable_ipAddress)[j*4+0] = arpTable_ipAddress_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_arpTable_ipAddress)[j*4+1] = arpTable_ipAddress_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_arpTable_ipAddress)[j*4+2] = arpTable_ipAddress_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_arpTable_ipAddress)[j*4+3] = arpTable_ipAddress_pc_buffer[i].range(31, 24).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<1> tr(256);
aesl_fh.read(AUTOTB_TVOUT_PC_arpTable_valid, tr.p, tr.tbytes);
tr.reorder();
tr.send<1>((char*)__xlx_apatb_param_arpTable_valid, 256);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_arpTable_valid);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > arpTable_valid_pc_buffer(256);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "arpTable_valid");
  
            // push token into output port buffer
            if (AESL_token != "") {
              arpTable_valid_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "arpTable_valid" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 256; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_arpTable_valid)[j*1+0] = arpTable_valid_pc_buffer[i].range(0, 0).to_uint64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_arp_scan);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<1> > arp_scan_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "arp_scan");
  
            // push token into output port buffer
            if (AESL_token != "") {
              arp_scan_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "arp_scan" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_arp_scan)[0*1+0] = arp_scan_pc_buffer[0].range(0, 0).to_uint64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_arpDataIn_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_arpDataIn_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_arpDataIn_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_arpDataIn_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_macIpEncode_req);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_macIpEncode_req);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_arpDataOut_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_arpDataOut_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_arpDataOut_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_arpDataOut_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_macIpEncode_rsp);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_macIpEncode_rsp);
CodeState = DUMP_INPUTS;
// data
std::vector<__cosim_s40__> __xlx_apatb_param_arpDataIn_V_data_V_stream_buf;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataIn_V_data_V)->empty())
    __xlx_apatb_param_arpDataIn_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataIn_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_arpDataIn_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataIn_V_data_V)->write(__xlx_apatb_param_arpDataIn_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_arpDataIn_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataIn_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_arpDataIn_V_keep_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_keep_V)->empty())
    __xlx_apatb_param_arpDataIn_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_arpDataIn_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_keep_V)->write(__xlx_apatb_param_arpDataIn_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<long long> __xlx_apatb_param_arpDataIn_V_strb_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_strb_V)->empty())
    __xlx_apatb_param_arpDataIn_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_arpDataIn_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_arpDataIn_V_strb_V)->write(__xlx_apatb_param_arpDataIn_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_arpDataIn_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_arpDataIn_V_last_V)->empty())
    __xlx_apatb_param_arpDataIn_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_arpDataIn_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_arpDataIn_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_arpDataIn_V_last_V)->write(__xlx_apatb_param_arpDataIn_V_last_V_stream_buf[i]);
  }
// id
// dest
std::vector<__cosim_s4__> __xlx_apatb_param_macIpEncode_req_stream_buf;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_macIpEncode_req)->empty())
    __xlx_apatb_param_macIpEncode_req_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_macIpEncode_req)->read());
  for (int i = 0; i < __xlx_apatb_param_macIpEncode_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_macIpEncode_req)->write(__xlx_apatb_param_macIpEncode_req_stream_buf[i]);
  }
long __xlx_apatb_param_macIpEncode_req_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_macIpEncode_req)->size();
// data
std::vector<__cosim_s40__> __xlx_apatb_param_arpDataOut_V_data_V_stream_buf;
long __xlx_apatb_param_arpDataOut_stream_buf_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataOut_V_data_V)->size();
// keep
std::vector<long long> __xlx_apatb_param_arpDataOut_V_keep_V_stream_buf;
// strb
std::vector<long long> __xlx_apatb_param_arpDataOut_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_arpDataOut_V_last_V_stream_buf;
// id
// dest
std::vector<__cosim_s10__> __xlx_apatb_param_macIpEncode_rsp_stream_buf;
long __xlx_apatb_param_macIpEncode_rsp_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_macIpEncode_rsp)->size();
unsigned __xlx_offset_byte_param_arpTable_macAddress = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_arpTable_macAddress, 'b');
transaction<48> tr(256);
  __xlx_offset_byte_param_arpTable_macAddress = 0*8;
  if (__xlx_apatb_param_arpTable_macAddress) {
tr.import<8>((char*)__xlx_apatb_param_arpTable_macAddress, 256, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_arpTable_macAddress, tr.p, tr.tbytes);
}

  tcl_file.set_num(256, &tcl_file.arpTable_macAddress_depth);
#else
// print arpTable_macAddress Transactions
{
aesl_fh.write(AUTOTB_TVIN_arpTable_macAddress, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_arpTable_macAddress = 0*8;
  if (__xlx_apatb_param_arpTable_macAddress) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<48> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_arpTable_macAddress)[j];
aesl_fh.write(AUTOTB_TVIN_arpTable_macAddress, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(256, &tcl_file.arpTable_macAddress_depth);
aesl_fh.write(AUTOTB_TVIN_arpTable_macAddress, end_str());
}

#endif
unsigned __xlx_offset_byte_param_arpTable_ipAddress = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_arpTable_ipAddress, 'b');
transaction<32> tr(256);
  __xlx_offset_byte_param_arpTable_ipAddress = 0*4;
  if (__xlx_apatb_param_arpTable_ipAddress) {
tr.import<4>((char*)__xlx_apatb_param_arpTable_ipAddress, 256, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_arpTable_ipAddress, tr.p, tr.tbytes);
}

  tcl_file.set_num(256, &tcl_file.arpTable_ipAddress_depth);
#else
// print arpTable_ipAddress Transactions
{
aesl_fh.write(AUTOTB_TVIN_arpTable_ipAddress, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_arpTable_ipAddress = 0*4;
  if (__xlx_apatb_param_arpTable_ipAddress) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_arpTable_ipAddress)[j];
aesl_fh.write(AUTOTB_TVIN_arpTable_ipAddress, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(256, &tcl_file.arpTable_ipAddress_depth);
aesl_fh.write(AUTOTB_TVIN_arpTable_ipAddress, end_str());
}

#endif
unsigned __xlx_offset_byte_param_arpTable_valid = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_arpTable_valid, 'b');
transaction<1> tr(256);
  __xlx_offset_byte_param_arpTable_valid = 0*1;
  if (__xlx_apatb_param_arpTable_valid) {
tr.import<1>((char*)__xlx_apatb_param_arpTable_valid, 256, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_arpTable_valid, tr.p, tr.tbytes);
}

  tcl_file.set_num(256, &tcl_file.arpTable_valid_depth);
#else
// print arpTable_valid Transactions
{
aesl_fh.write(AUTOTB_TVIN_arpTable_valid, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_arpTable_valid = 0*1;
  if (__xlx_apatb_param_arpTable_valid) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<1> __xlx_tmp_lv = ((char*)__xlx_apatb_param_arpTable_valid)[j];
aesl_fh.write(AUTOTB_TVIN_arpTable_valid, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(256, &tcl_file.arpTable_valid_depth);
aesl_fh.write(AUTOTB_TVIN_arpTable_valid, end_str());
}

#endif
// print arp_scan Transactions
{
aesl_fh.write(AUTOTB_TVIN_arp_scan, begin_str(AESL_transaction));
{
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_arp_scan);
aesl_fh.write(AUTOTB_TVIN_arp_scan, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.arp_scan_depth);
aesl_fh.write(AUTOTB_TVIN_arp_scan, end_str());
}

// print myMacAddress Transactions
{
aesl_fh.write(AUTOTB_TVIN_myMacAddress, begin_str(AESL_transaction));
{
    sc_bv<48> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_myMacAddress);
aesl_fh.write(AUTOTB_TVIN_myMacAddress, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.myMacAddress_depth);
aesl_fh.write(AUTOTB_TVIN_myMacAddress, end_str());
}

// print myIpAddress Transactions
{
aesl_fh.write(AUTOTB_TVIN_myIpAddress, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_myIpAddress);
aesl_fh.write(AUTOTB_TVIN_myIpAddress, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.myIpAddress_depth);
aesl_fh.write(AUTOTB_TVIN_myIpAddress, end_str());
}

// print gatewayIP Transactions
{
aesl_fh.write(AUTOTB_TVIN_gatewayIP, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_gatewayIP);
aesl_fh.write(AUTOTB_TVIN_gatewayIP, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.gatewayIP_depth);
aesl_fh.write(AUTOTB_TVIN_gatewayIP, end_str());
}

// print networkMask Transactions
{
aesl_fh.write(AUTOTB_TVIN_networkMask, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_networkMask);
aesl_fh.write(AUTOTB_TVIN_networkMask, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.networkMask_depth);
aesl_fh.write(AUTOTB_TVIN_networkMask, end_str());
}

CodeState = CALL_C_DUT;
arp_server_hw_stub_wrapper(__xlx_apatb_param_arpDataIn_V_data_V, __xlx_apatb_param_arpDataIn_V_keep_V, __xlx_apatb_param_arpDataIn_V_strb_V, __xlx_apatb_param_arpDataIn_V_last_V, __xlx_apatb_param_macIpEncode_req, __xlx_apatb_param_arpDataOut_V_data_V, __xlx_apatb_param_arpDataOut_V_keep_V, __xlx_apatb_param_arpDataOut_V_strb_V, __xlx_apatb_param_arpDataOut_V_last_V, __xlx_apatb_param_macIpEncode_rsp, __xlx_apatb_param_arpTable_macAddress, __xlx_apatb_param_arpTable_ipAddress, __xlx_apatb_param_arpTable_valid, __xlx_apatb_param_arp_scan, __xlx_apatb_param_myMacAddress, __xlx_apatb_param_myIpAddress, __xlx_apatb_param_gatewayIP, __xlx_apatb_param_networkMask);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_arpDataIn_stream_buf_final_size = __xlx_apatb_param_arpDataIn_stream_buf_size - ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataIn_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_arpDataIn_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_arpDataIn_V_data_V_stream_buf[j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_arpDataIn_V_data_V_stream_buf[j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_arpDataIn_V_data_V_stream_buf[j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_arpDataIn_V_data_V_stream_buf[j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_arpDataIn_V_data_V_stream_buf[j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_arpDataIn_V_data_V_stream_buf[j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_arpDataIn_V_data_V_stream_buf[j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_arpDataIn_V_data_V_stream_buf[j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_arpDataIn_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_arpDataIn_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_arpDataIn_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_arpDataIn_stream_buf_final_size, &tcl_file.arpDataIn_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_arpDataIn_stream_buf_final_size, &tcl_file.arpDataIn_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_arpDataIn_stream_buf_final_size, &tcl_file.arpDataIn_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_arpDataIn_stream_buf_final_size, &tcl_file.arpDataIn_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_arpDataIn_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_arpDataIn_stream_buf_final_size > 0) {
  long arpDataIn_V_data_V_stream_ingress_size = __xlx_apatb_param_arpDataIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_arpDataIn_stream_buf_final_size; j != e; j++) {
    arpDataIn_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long arpDataIn_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_arpDataIn_stream_buf_final_size > 0) {
  long arpDataIn_V_keep_V_stream_ingress_size = __xlx_apatb_param_arpDataIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_arpDataIn_stream_buf_final_size; j != e; j++) {
    arpDataIn_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long arpDataIn_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_arpDataIn_stream_buf_final_size > 0) {
  long arpDataIn_V_strb_V_stream_ingress_size = __xlx_apatb_param_arpDataIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_arpDataIn_stream_buf_final_size; j != e; j++) {
    arpDataIn_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long arpDataIn_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_arpDataIn_stream_buf_final_size > 0) {
  long arpDataIn_V_last_V_stream_ingress_size = __xlx_apatb_param_arpDataIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_arpDataIn_stream_buf_final_size; j != e; j++) {
    arpDataIn_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long arpDataIn_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", arpDataIn_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_arpDataIn_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_arpDataIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_arpDataIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_arpDataIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_arpDataIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_arpDataIn_V_last_V, end_str());
}
long __xlx_apatb_param_macIpEncode_req_stream_buf_final_size = __xlx_apatb_param_macIpEncode_req_stream_buf_size - ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_macIpEncode_req)->size();
// print macIpEncode_req Transactions
{
aesl_fh.write(AUTOTB_TVIN_macIpEncode_req, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_macIpEncode_req_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_macIpEncode_req_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_macIpEncode_req, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_macIpEncode_req_stream_buf_final_size, &tcl_file.macIpEncode_req_depth);
aesl_fh.write(AUTOTB_TVIN_macIpEncode_req, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_macIpEncode_req, begin_str(AESL_transaction));
if (__xlx_apatb_param_macIpEncode_req_stream_buf_final_size > 0) {
  long macIpEncode_req_stream_ingress_size = __xlx_apatb_param_macIpEncode_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", macIpEncode_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_macIpEncode_req, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_macIpEncode_req_stream_buf_final_size; j != e; j++) {
    macIpEncode_req_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", macIpEncode_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_macIpEncode_req, __xlx_sprintf_buffer.data());
  }
} else {
  long macIpEncode_req_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", macIpEncode_req_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_macIpEncode_req, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_macIpEncode_req, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_macIpEncode_req, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_macIpEncode_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_macIpEncode_req, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_macIpEncode_req, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_arpDataOut_stream_buf_final_size = ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataOut_V_data_V)->size() - __xlx_apatb_param_arpDataOut_stream_buf_size;
{
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataOut_V_data_V)->empty())
    __xlx_apatb_param_arpDataOut_V_data_V_stream_buf.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataOut_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_arpDataOut_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_arpDataOut_V_data_V)->write(__xlx_apatb_param_arpDataOut_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_keep_V)->empty())
    __xlx_apatb_param_arpDataOut_V_keep_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_arpDataOut_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_keep_V)->write(__xlx_apatb_param_arpDataOut_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_strb_V)->empty())
    __xlx_apatb_param_arpDataOut_V_strb_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_arpDataOut_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_arpDataOut_V_strb_V)->write(__xlx_apatb_param_arpDataOut_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_arpDataOut_V_last_V)->empty())
    __xlx_apatb_param_arpDataOut_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_arpDataOut_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_arpDataOut_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_arpDataOut_V_last_V)->write(__xlx_apatb_param_arpDataOut_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_arpDataOut_stream_buf_final_size; j != e; ++j) {
sc_bv<512> __xlx_tmp_0_lv;
{
sc_bv<512> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_arpDataOut_V_data_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0*8+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_arpDataOut_V_data_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0*8+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_arpDataOut_V_data_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0*8+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_arpDataOut_V_data_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0*8+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_arpDataOut_V_data_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0*8+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_arpDataOut_V_data_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0*8+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_arpDataOut_V_data_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0*8+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_arpDataOut_V_data_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0*8+7];
__xlx_tmp_0_lv = __xlx_tmp_lv;
}
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = ((long long*)&__xlx_apatb_param_arpDataOut_V_keep_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = ((long long*)&__xlx_apatb_param_arpDataOut_V_strb_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_arpDataOut_V_last_V_stream_buf[__xlx_apatb_param_arpDataOut_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_arpDataOut_stream_buf_final_size, &tcl_file.arpDataOut_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_arpDataOut_stream_buf_final_size, &tcl_file.arpDataOut_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_arpDataOut_stream_buf_final_size, &tcl_file.arpDataOut_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_arpDataOut_stream_buf_final_size, &tcl_file.arpDataOut_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_arpDataOut_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_arpDataOut_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_arpDataOut_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_arpDataOut_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_arpDataOut_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_arpDataOut_V_last_V, end_str());
}
long __xlx_apatb_param_macIpEncode_rsp_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_macIpEncode_rsp)->size() - __xlx_apatb_param_macIpEncode_rsp_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_macIpEncode_rsp)->empty())
    __xlx_apatb_param_macIpEncode_rsp_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_macIpEncode_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_macIpEncode_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_macIpEncode_rsp)->write(__xlx_apatb_param_macIpEncode_rsp_stream_buf[i]);
  }
// print macIpEncode_rsp Transactions
{
aesl_fh.write(AUTOTB_TVOUT_macIpEncode_rsp, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_macIpEncode_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_macIpEncode_rsp_stream_buf[__xlx_apatb_param_macIpEncode_rsp_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_macIpEncode_rsp_stream_buf[__xlx_apatb_param_macIpEncode_rsp_stream_buf_size+j])[0*2+1];
aesl_fh.write(AUTOTB_TVOUT_macIpEncode_rsp, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_macIpEncode_rsp_stream_buf_final_size, &tcl_file.macIpEncode_rsp_depth);
aesl_fh.write(AUTOTB_TVOUT_macIpEncode_rsp, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_macIpEncode_rsp, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_macIpEncode_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_macIpEncode_rsp, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_macIpEncode_rsp, end_str());
}
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_arpTable_macAddress, 'b');
transaction<48> tr(256);
  __xlx_offset_byte_param_arpTable_macAddress = 0*8;
  if (__xlx_apatb_param_arpTable_macAddress) {
tr.import<8>((char*)__xlx_apatb_param_arpTable_macAddress, 256, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_arpTable_macAddress, tr.p, tr.tbytes);
}

  tcl_file.set_num(256, &tcl_file.arpTable_macAddress_depth);
#else
// print arpTable_macAddress Transactions
{
aesl_fh.write(AUTOTB_TVOUT_arpTable_macAddress, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_arpTable_macAddress = 0*8;
  if (__xlx_apatb_param_arpTable_macAddress) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<48> __xlx_tmp_lv = ((long long*)__xlx_apatb_param_arpTable_macAddress)[j];
aesl_fh.write(AUTOTB_TVOUT_arpTable_macAddress, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(256, &tcl_file.arpTable_macAddress_depth);
aesl_fh.write(AUTOTB_TVOUT_arpTable_macAddress, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_arpTable_ipAddress, 'b');
transaction<32> tr(256);
  __xlx_offset_byte_param_arpTable_ipAddress = 0*4;
  if (__xlx_apatb_param_arpTable_ipAddress) {
tr.import<4>((char*)__xlx_apatb_param_arpTable_ipAddress, 256, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_arpTable_ipAddress, tr.p, tr.tbytes);
}

  tcl_file.set_num(256, &tcl_file.arpTable_ipAddress_depth);
#else
// print arpTable_ipAddress Transactions
{
aesl_fh.write(AUTOTB_TVOUT_arpTable_ipAddress, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_arpTable_ipAddress = 0*4;
  if (__xlx_apatb_param_arpTable_ipAddress) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_arpTable_ipAddress)[j];
aesl_fh.write(AUTOTB_TVOUT_arpTable_ipAddress, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(256, &tcl_file.arpTable_ipAddress_depth);
aesl_fh.write(AUTOTB_TVOUT_arpTable_ipAddress, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_arpTable_valid, 'b');
transaction<1> tr(256);
  __xlx_offset_byte_param_arpTable_valid = 0*1;
  if (__xlx_apatb_param_arpTable_valid) {
tr.import<1>((char*)__xlx_apatb_param_arpTable_valid, 256, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_arpTable_valid, tr.p, tr.tbytes);
}

  tcl_file.set_num(256, &tcl_file.arpTable_valid_depth);
#else
// print arpTable_valid Transactions
{
aesl_fh.write(AUTOTB_TVOUT_arpTable_valid, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_arpTable_valid = 0*1;
  if (__xlx_apatb_param_arpTable_valid) {
    for (int j = 0  - 0, e = 256 - 0; j != e; ++j) {
sc_bv<1> __xlx_tmp_lv = ((char*)__xlx_apatb_param_arpTable_valid)[j];
aesl_fh.write(AUTOTB_TVOUT_arpTable_valid, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(256, &tcl_file.arpTable_valid_depth);
aesl_fh.write(AUTOTB_TVOUT_arpTable_valid, end_str());
}

#endif
// print arp_scan Transactions
{
aesl_fh.write(AUTOTB_TVOUT_arp_scan, begin_str(AESL_transaction));
{
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_arp_scan);
aesl_fh.write(AUTOTB_TVOUT_arp_scan, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.arp_scan_depth);
aesl_fh.write(AUTOTB_TVOUT_arp_scan, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
