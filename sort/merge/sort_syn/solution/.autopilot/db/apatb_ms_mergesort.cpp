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
#define AUTOTB_TVIN_a "../tv/cdatafile/c.ms_mergesort.autotvin_a.dat"
#define AUTOTB_TVOUT_a "../tv/cdatafile/c.ms_mergesort.autotvout_a.dat"
// wrapc file define:
#define AUTOTB_TVIN_checkdata "../tv/cdatafile/c.ms_mergesort.autotvin_checkdata.dat"
#define AUTOTB_TVOUT_checkdata "../tv/cdatafile/c.ms_mergesort.autotvout_checkdata.dat"
// wrapc file define:
#define AUTOTB_TVIN_hercules_buffer_size "../tv/cdatafile/c.ms_mergesort.autotvin_hercules_buffer_size.dat"
#define AUTOTB_TVOUT_hercules_buffer_size "../tv/cdatafile/c.ms_mergesort.autotvout_hercules_buffer_size.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_a "../tv/rtldatafile/rtl.ms_mergesort.autotvout_a.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_checkdata "../tv/rtldatafile/rtl.ms_mergesort.autotvout_checkdata.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_hercules_buffer_size "../tv/rtldatafile/rtl.ms_mergesort.autotvout_hercules_buffer_size.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  a_depth = 0;
  checkdata_depth = 0;
  hercules_buffer_size_depth = 0;
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
  total_list << "{a " << a_depth << "}\n";
  total_list << "{checkdata " << checkdata_depth << "}\n";
  total_list << "{hercules_buffer_size " << hercules_buffer_size_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int a_depth;
    int checkdata_depth;
    int hercules_buffer_size_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s10__ { char data[16]; };
extern "C" void ms_mergesort_hw_stub_wrapper(volatile void *, volatile void *, volatile void *);

extern "C" void apatb_ms_mergesort_hw(volatile void * __xlx_apatb_param_a, volatile void * __xlx_apatb_param_checkdata, volatile void * __xlx_apatb_param_hercules_buffer_size) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_a);
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
          std::vector<sc_bv<32> > a_pc_buffer(2048);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "a");
  
            // push token into output port buffer
            if (AESL_token != "") {
              a_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2048; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_a)[j] = a_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_checkdata);
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
          std::vector<sc_bv<128> > checkdata_pc_buffer(2097152);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "checkdata");
  
            // push token into output port buffer
            if (AESL_token != "") {
              checkdata_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 2097152; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_checkdata)[j*2+0] = checkdata_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_checkdata)[j*2+1] = checkdata_pc_buffer[i].range(127,64).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_hercules_buffer_size);
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
          std::vector<sc_bv<32> > hercules_buffer_size_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "hercules_buffer_size");
  
            // push token into output port buffer
            if (AESL_token != "") {
              hercules_buffer_size_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_hercules_buffer_size)[0] = hercules_buffer_size_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//a
aesl_fh.touch(AUTOTB_TVIN_a);
aesl_fh.touch(AUTOTB_TVOUT_a);
//checkdata
aesl_fh.touch(AUTOTB_TVIN_checkdata);
aesl_fh.touch(AUTOTB_TVOUT_checkdata);
//hercules_buffer_size
aesl_fh.touch(AUTOTB_TVIN_hercules_buffer_size);
aesl_fh.touch(AUTOTB_TVOUT_hercules_buffer_size);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_a = 0;
// print a Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_a = 0*4;
  if (__xlx_apatb_param_a) {
    for (int j = 0  - 0, e = 2048 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_a, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2048, &tcl_file.a_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_checkdata = 0;
// print checkdata Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_checkdata, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_checkdata = 0*16;
  if (__xlx_apatb_param_checkdata) {
    for (int j = 0  - 0, e = 2097152 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_checkdata)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_checkdata)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_checkdata, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2097152, &tcl_file.checkdata_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_checkdata, __xlx_sprintf_buffer.data());
}
// print hercules_buffer_size Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_hercules_buffer_size, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_hercules_buffer_size);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_hercules_buffer_size, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.hercules_buffer_size_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_hercules_buffer_size, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
ms_mergesort_hw_stub_wrapper(__xlx_apatb_param_a, __xlx_apatb_param_checkdata, __xlx_apatb_param_hercules_buffer_size);
CodeState = DUMP_OUTPUTS;
// print a Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_a, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_a = 0*4;
  if (__xlx_apatb_param_a) {
    for (int j = 0  - 0, e = 2048 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_a, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2048, &tcl_file.a_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_a, __xlx_sprintf_buffer.data());
}
// print checkdata Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_checkdata, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_checkdata = 0*16;
  if (__xlx_apatb_param_checkdata) {
    for (int j = 0  - 0, e = 2097152 - 0; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_checkdata)[j*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_checkdata)[j*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_checkdata, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(2097152, &tcl_file.checkdata_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_checkdata, __xlx_sprintf_buffer.data());
}
// print hercules_buffer_size Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_hercules_buffer_size, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_hercules_buffer_size);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_hercules_buffer_size, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.hercules_buffer_size_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_hercules_buffer_size, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
