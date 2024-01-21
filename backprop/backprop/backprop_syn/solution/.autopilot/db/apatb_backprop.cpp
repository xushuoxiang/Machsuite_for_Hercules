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
#define AUTOTB_TVIN_weights1 "../tv/cdatafile/c.backprop.autotvin_weights1.dat"
#define AUTOTB_TVOUT_weights1 "../tv/cdatafile/c.backprop.autotvout_weights1.dat"
#define AUTOTB_TVIN_weights2 "../tv/cdatafile/c.backprop.autotvin_weights2.dat"
#define AUTOTB_TVOUT_weights2 "../tv/cdatafile/c.backprop.autotvout_weights2.dat"
#define AUTOTB_TVIN_weights3 "../tv/cdatafile/c.backprop.autotvin_weights3.dat"
#define AUTOTB_TVOUT_weights3 "../tv/cdatafile/c.backprop.autotvout_weights3.dat"
#define AUTOTB_TVIN_biases1 "../tv/cdatafile/c.backprop.autotvin_biases1.dat"
#define AUTOTB_TVOUT_biases1 "../tv/cdatafile/c.backprop.autotvout_biases1.dat"
#define AUTOTB_TVIN_biases2 "../tv/cdatafile/c.backprop.autotvin_biases2.dat"
#define AUTOTB_TVOUT_biases2 "../tv/cdatafile/c.backprop.autotvout_biases2.dat"
#define AUTOTB_TVIN_biases3 "../tv/cdatafile/c.backprop.autotvin_biases3.dat"
#define AUTOTB_TVOUT_biases3 "../tv/cdatafile/c.backprop.autotvout_biases3.dat"
#define AUTOTB_TVIN_training_data "../tv/cdatafile/c.backprop.autotvin_training_data.dat"
#define AUTOTB_TVOUT_training_data "../tv/cdatafile/c.backprop.autotvout_training_data.dat"
#define AUTOTB_TVIN_training_targets "../tv/cdatafile/c.backprop.autotvin_training_targets.dat"
#define AUTOTB_TVOUT_training_targets "../tv/cdatafile/c.backprop.autotvout_training_targets.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_weights1 "../tv/rtldatafile/rtl.backprop.autotvout_weights1.dat"
#define AUTOTB_TVOUT_PC_weights2 "../tv/rtldatafile/rtl.backprop.autotvout_weights2.dat"
#define AUTOTB_TVOUT_PC_weights3 "../tv/rtldatafile/rtl.backprop.autotvout_weights3.dat"
#define AUTOTB_TVOUT_PC_biases1 "../tv/rtldatafile/rtl.backprop.autotvout_biases1.dat"
#define AUTOTB_TVOUT_PC_biases2 "../tv/rtldatafile/rtl.backprop.autotvout_biases2.dat"
#define AUTOTB_TVOUT_PC_biases3 "../tv/rtldatafile/rtl.backprop.autotvout_biases3.dat"
#define AUTOTB_TVOUT_PC_training_data "../tv/rtldatafile/rtl.backprop.autotvout_training_data.dat"
#define AUTOTB_TVOUT_PC_training_targets "../tv/rtldatafile/rtl.backprop.autotvout_training_targets.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
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

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
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


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  weights1_depth = 0;
  weights2_depth = 0;
  weights3_depth = 0;
  biases1_depth = 0;
  biases2_depth = 0;
  biases3_depth = 0;
  training_data_depth = 0;
  training_targets_depth = 0;
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
  total_list << "{weights1 " << weights1_depth << "}\n";
  total_list << "{weights2 " << weights2_depth << "}\n";
  total_list << "{weights3 " << weights3_depth << "}\n";
  total_list << "{biases1 " << biases1_depth << "}\n";
  total_list << "{biases2 " << biases2_depth << "}\n";
  total_list << "{biases3 " << biases3_depth << "}\n";
  total_list << "{training_data " << training_data_depth << "}\n";
  total_list << "{training_targets " << training_targets_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int weights1_depth;
    int weights2_depth;
    int weights3_depth;
    int biases1_depth;
    int biases2_depth;
    int biases3_depth;
    int training_data_depth;
    int training_targets_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void backprop_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_backprop_hw(volatile void * __xlx_apatb_param_weights1, volatile void * __xlx_apatb_param_weights2, volatile void * __xlx_apatb_param_weights3, volatile void * __xlx_apatb_param_biases1, volatile void * __xlx_apatb_param_biases2, volatile void * __xlx_apatb_param_biases3, volatile void * __xlx_apatb_param_training_data, volatile void * __xlx_apatb_param_training_targets) {
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
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(832);
aesl_fh.read(AUTOTB_TVOUT_PC_weights1, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<8>((char*)__xlx_apatb_param_weights1, 832);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_weights1);
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
          std::vector<sc_bv<64> > weights1_pc_buffer(832);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              weights1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "weights1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 832; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_weights1)[j*8+0] = weights1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_weights1)[j*8+1] = weights1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_weights1)[j*8+2] = weights1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_weights1)[j*8+3] = weights1_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_weights1)[j*8+4] = weights1_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_weights1)[j*8+5] = weights1_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_weights1)[j*8+6] = weights1_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_weights1)[j*8+7] = weights1_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(4096);
aesl_fh.read(AUTOTB_TVOUT_PC_weights2, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<8>((char*)__xlx_apatb_param_weights2, 4096);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_weights2);
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
          std::vector<sc_bv<64> > weights2_pc_buffer(4096);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              weights2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "weights2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 4096; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_weights2)[j*8+0] = weights2_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_weights2)[j*8+1] = weights2_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_weights2)[j*8+2] = weights2_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_weights2)[j*8+3] = weights2_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_weights2)[j*8+4] = weights2_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_weights2)[j*8+5] = weights2_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_weights2)[j*8+6] = weights2_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_weights2)[j*8+7] = weights2_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(192);
aesl_fh.read(AUTOTB_TVOUT_PC_weights3, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<8>((char*)__xlx_apatb_param_weights3, 192);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_weights3);
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
          std::vector<sc_bv<64> > weights3_pc_buffer(192);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              weights3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "weights3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 192; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_weights3)[j*8+0] = weights3_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_weights3)[j*8+1] = weights3_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_weights3)[j*8+2] = weights3_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_weights3)[j*8+3] = weights3_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_weights3)[j*8+4] = weights3_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_weights3)[j*8+5] = weights3_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_weights3)[j*8+6] = weights3_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_weights3)[j*8+7] = weights3_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(64);
aesl_fh.read(AUTOTB_TVOUT_PC_biases1, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<8>((char*)__xlx_apatb_param_biases1, 64);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_biases1);
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
          std::vector<sc_bv<64> > biases1_pc_buffer(64);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              biases1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "biases1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 64; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_biases1)[j*8+0] = biases1_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_biases1)[j*8+1] = biases1_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_biases1)[j*8+2] = biases1_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_biases1)[j*8+3] = biases1_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_biases1)[j*8+4] = biases1_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_biases1)[j*8+5] = biases1_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_biases1)[j*8+6] = biases1_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_biases1)[j*8+7] = biases1_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(64);
aesl_fh.read(AUTOTB_TVOUT_PC_biases2, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<8>((char*)__xlx_apatb_param_biases2, 64);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_biases2);
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
          std::vector<sc_bv<64> > biases2_pc_buffer(64);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              biases2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "biases2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 64; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_biases2)[j*8+0] = biases2_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_biases2)[j*8+1] = biases2_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_biases2)[j*8+2] = biases2_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_biases2)[j*8+3] = biases2_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_biases2)[j*8+4] = biases2_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_biases2)[j*8+5] = biases2_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_biases2)[j*8+6] = biases2_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_biases2)[j*8+7] = biases2_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif
#ifdef USE_BINARY_TV_FILE
{
transaction<64> tr(3);
aesl_fh.read(AUTOTB_TVOUT_PC_biases3, tr.p, tr.tbytes);
if (little_endian()) { tr.reorder(); }
tr.send<8>((char*)__xlx_apatb_param_biases3, 3);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_biases3);
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
          std::vector<sc_bv<64> > biases3_pc_buffer(3);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              biases3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "biases3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 3; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_biases3)[j*8+0] = biases3_pc_buffer[i].range(7, 0).to_int64();
((char*)__xlx_apatb_param_biases3)[j*8+1] = biases3_pc_buffer[i].range(15, 8).to_int64();
((char*)__xlx_apatb_param_biases3)[j*8+2] = biases3_pc_buffer[i].range(23, 16).to_int64();
((char*)__xlx_apatb_param_biases3)[j*8+3] = biases3_pc_buffer[i].range(31, 24).to_int64();
((char*)__xlx_apatb_param_biases3)[j*8+4] = biases3_pc_buffer[i].range(39, 32).to_int64();
((char*)__xlx_apatb_param_biases3)[j*8+5] = biases3_pc_buffer[i].range(47, 40).to_int64();
((char*)__xlx_apatb_param_biases3)[j*8+6] = biases3_pc_buffer[i].range(55, 48).to_int64();
((char*)__xlx_apatb_param_biases3)[j*8+7] = biases3_pc_buffer[i].range(63, 56).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_weights1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_weights1, 'b');
transaction<64> tr(832);
  __xlx_offset_byte_param_weights1 = 0*8;
  if (__xlx_apatb_param_weights1) {
tr.import<8>((char*)__xlx_apatb_param_weights1, 832, 0);
  }
aesl_fh.write(AUTOTB_TVIN_weights1, tr.p, tr.tbytes);
}

  tcl_file.set_num(832, &tcl_file.weights1_depth);
#else
// print weights1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_weights1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_weights1 = 0*8;
if (__xlx_apatb_param_weights1) {
for (size_t i = 0; i < 832; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_weights1 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_weights1, s);
}
}
}

  tcl_file.set_num(832, &tcl_file.weights1_depth);
aesl_fh.write(AUTOTB_TVIN_weights1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_weights2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_weights2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_weights2 = 0*8;
  if (__xlx_apatb_param_weights2) {
tr.import<8>((char*)__xlx_apatb_param_weights2, 4096, 0);
  }
aesl_fh.write(AUTOTB_TVIN_weights2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.weights2_depth);
#else
// print weights2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_weights2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_weights2 = 0*8;
if (__xlx_apatb_param_weights2) {
for (size_t i = 0; i < 4096; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_weights2 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_weights2, s);
}
}
}

  tcl_file.set_num(4096, &tcl_file.weights2_depth);
aesl_fh.write(AUTOTB_TVIN_weights2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_weights3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_weights3, 'b');
transaction<64> tr(192);
  __xlx_offset_byte_param_weights3 = 0*8;
  if (__xlx_apatb_param_weights3) {
tr.import<8>((char*)__xlx_apatb_param_weights3, 192, 0);
  }
aesl_fh.write(AUTOTB_TVIN_weights3, tr.p, tr.tbytes);
}

  tcl_file.set_num(192, &tcl_file.weights3_depth);
#else
// print weights3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_weights3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_weights3 = 0*8;
if (__xlx_apatb_param_weights3) {
for (size_t i = 0; i < 192; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_weights3 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_weights3, s);
}
}
}

  tcl_file.set_num(192, &tcl_file.weights3_depth);
aesl_fh.write(AUTOTB_TVIN_weights3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_biases1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_biases1, 'b');
transaction<64> tr(64);
  __xlx_offset_byte_param_biases1 = 0*8;
  if (__xlx_apatb_param_biases1) {
tr.import<8>((char*)__xlx_apatb_param_biases1, 64, 0);
  }
aesl_fh.write(AUTOTB_TVIN_biases1, tr.p, tr.tbytes);
}

  tcl_file.set_num(64, &tcl_file.biases1_depth);
#else
// print biases1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_biases1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_biases1 = 0*8;
if (__xlx_apatb_param_biases1) {
for (size_t i = 0; i < 64; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_biases1 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_biases1, s);
}
}
}

  tcl_file.set_num(64, &tcl_file.biases1_depth);
aesl_fh.write(AUTOTB_TVIN_biases1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_biases2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_biases2, 'b');
transaction<64> tr(64);
  __xlx_offset_byte_param_biases2 = 0*8;
  if (__xlx_apatb_param_biases2) {
tr.import<8>((char*)__xlx_apatb_param_biases2, 64, 0);
  }
aesl_fh.write(AUTOTB_TVIN_biases2, tr.p, tr.tbytes);
}

  tcl_file.set_num(64, &tcl_file.biases2_depth);
#else
// print biases2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_biases2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_biases2 = 0*8;
if (__xlx_apatb_param_biases2) {
for (size_t i = 0; i < 64; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_biases2 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_biases2, s);
}
}
}

  tcl_file.set_num(64, &tcl_file.biases2_depth);
aesl_fh.write(AUTOTB_TVIN_biases2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_biases3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_biases3, 'b');
transaction<64> tr(3);
  __xlx_offset_byte_param_biases3 = 0*8;
  if (__xlx_apatb_param_biases3) {
tr.import<8>((char*)__xlx_apatb_param_biases3, 3, 0);
  }
aesl_fh.write(AUTOTB_TVIN_biases3, tr.p, tr.tbytes);
}

  tcl_file.set_num(3, &tcl_file.biases3_depth);
#else
// print biases3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_biases3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_biases3 = 0*8;
if (__xlx_apatb_param_biases3) {
for (size_t i = 0; i < 3; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_biases3 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_biases3, s);
}
}
}

  tcl_file.set_num(3, &tcl_file.biases3_depth);
aesl_fh.write(AUTOTB_TVIN_biases3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_training_data = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_training_data, 'b');
transaction<64> tr(2119);
  __xlx_offset_byte_param_training_data = 0*8;
  if (__xlx_apatb_param_training_data) {
tr.import<8>((char*)__xlx_apatb_param_training_data, 2119, 0);
  }
aesl_fh.write(AUTOTB_TVIN_training_data, tr.p, tr.tbytes);
}

  tcl_file.set_num(2119, &tcl_file.training_data_depth);
#else
// print training_data Transactions
{
aesl_fh.write(AUTOTB_TVIN_training_data, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_training_data = 0*8;
if (__xlx_apatb_param_training_data) {
for (size_t i = 0; i < 2119; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_training_data + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_training_data, s);
}
}
}

  tcl_file.set_num(2119, &tcl_file.training_data_depth);
aesl_fh.write(AUTOTB_TVIN_training_data, end_str());
}

#endif
unsigned __xlx_offset_byte_param_training_targets = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_training_targets, 'b');
transaction<64> tr(489);
  __xlx_offset_byte_param_training_targets = 0*8;
  if (__xlx_apatb_param_training_targets) {
tr.import<8>((char*)__xlx_apatb_param_training_targets, 489, 0);
  }
aesl_fh.write(AUTOTB_TVIN_training_targets, tr.p, tr.tbytes);
}

  tcl_file.set_num(489, &tcl_file.training_targets_depth);
#else
// print training_targets Transactions
{
aesl_fh.write(AUTOTB_TVIN_training_targets, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_training_targets = 0*8;
if (__xlx_apatb_param_training_targets) {
for (size_t i = 0; i < 489; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_training_targets + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVIN_training_targets, s);
}
}
}

  tcl_file.set_num(489, &tcl_file.training_targets_depth);
aesl_fh.write(AUTOTB_TVIN_training_targets, end_str());
}

#endif
CodeState = CALL_C_DUT;
backprop_hw_stub_wrapper(__xlx_apatb_param_weights1, __xlx_apatb_param_weights2, __xlx_apatb_param_weights3, __xlx_apatb_param_biases1, __xlx_apatb_param_biases2, __xlx_apatb_param_biases3, __xlx_apatb_param_training_data, __xlx_apatb_param_training_targets);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_weights1, 'b');
transaction<64> tr(832);
  __xlx_offset_byte_param_weights1 = 0*8;
  if (__xlx_apatb_param_weights1) {
tr.import<8>((char*)__xlx_apatb_param_weights1, 832, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_weights1, tr.p, tr.tbytes);
}

  tcl_file.set_num(832, &tcl_file.weights1_depth);
#else
// print weights1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_weights1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_weights1 = 0*8;
if (__xlx_apatb_param_weights1) {
for (size_t i = 0; i < 832; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_weights1 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVOUT_weights1, s);
}
}
}

  tcl_file.set_num(832, &tcl_file.weights1_depth);
aesl_fh.write(AUTOTB_TVOUT_weights1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_weights2, 'b');
transaction<64> tr(4096);
  __xlx_offset_byte_param_weights2 = 0*8;
  if (__xlx_apatb_param_weights2) {
tr.import<8>((char*)__xlx_apatb_param_weights2, 4096, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_weights2, tr.p, tr.tbytes);
}

  tcl_file.set_num(4096, &tcl_file.weights2_depth);
#else
// print weights2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_weights2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_weights2 = 0*8;
if (__xlx_apatb_param_weights2) {
for (size_t i = 0; i < 4096; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_weights2 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVOUT_weights2, s);
}
}
}

  tcl_file.set_num(4096, &tcl_file.weights2_depth);
aesl_fh.write(AUTOTB_TVOUT_weights2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_weights3, 'b');
transaction<64> tr(192);
  __xlx_offset_byte_param_weights3 = 0*8;
  if (__xlx_apatb_param_weights3) {
tr.import<8>((char*)__xlx_apatb_param_weights3, 192, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_weights3, tr.p, tr.tbytes);
}

  tcl_file.set_num(192, &tcl_file.weights3_depth);
#else
// print weights3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_weights3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_weights3 = 0*8;
if (__xlx_apatb_param_weights3) {
for (size_t i = 0; i < 192; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_weights3 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVOUT_weights3, s);
}
}
}

  tcl_file.set_num(192, &tcl_file.weights3_depth);
aesl_fh.write(AUTOTB_TVOUT_weights3, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_biases1, 'b');
transaction<64> tr(64);
  __xlx_offset_byte_param_biases1 = 0*8;
  if (__xlx_apatb_param_biases1) {
tr.import<8>((char*)__xlx_apatb_param_biases1, 64, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_biases1, tr.p, tr.tbytes);
}

  tcl_file.set_num(64, &tcl_file.biases1_depth);
#else
// print biases1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_biases1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_biases1 = 0*8;
if (__xlx_apatb_param_biases1) {
for (size_t i = 0; i < 64; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_biases1 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVOUT_biases1, s);
}
}
}

  tcl_file.set_num(64, &tcl_file.biases1_depth);
aesl_fh.write(AUTOTB_TVOUT_biases1, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_biases2, 'b');
transaction<64> tr(64);
  __xlx_offset_byte_param_biases2 = 0*8;
  if (__xlx_apatb_param_biases2) {
tr.import<8>((char*)__xlx_apatb_param_biases2, 64, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_biases2, tr.p, tr.tbytes);
}

  tcl_file.set_num(64, &tcl_file.biases2_depth);
#else
// print biases2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_biases2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_biases2 = 0*8;
if (__xlx_apatb_param_biases2) {
for (size_t i = 0; i < 64; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_biases2 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVOUT_biases2, s);
}
}
}

  tcl_file.set_num(64, &tcl_file.biases2_depth);
aesl_fh.write(AUTOTB_TVOUT_biases2, end_str());
}

#endif
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_biases3, 'b');
transaction<64> tr(3);
  __xlx_offset_byte_param_biases3 = 0*8;
  if (__xlx_apatb_param_biases3) {
tr.import<8>((char*)__xlx_apatb_param_biases3, 3, 0);
  }
aesl_fh.write(AUTOTB_TVOUT_biases3, tr.p, tr.tbytes);
}

  tcl_file.set_num(3, &tcl_file.biases3_depth);
#else
// print biases3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_biases3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_biases3 = 0*8;
if (__xlx_apatb_param_biases3) {
for (size_t i = 0; i < 3; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_biases3 + i * 8;
std::string s = formatData(pos, 64);
aesl_fh.write(AUTOTB_TVOUT_biases3, s);
}
}
}

  tcl_file.set_num(3, &tcl_file.biases3_depth);
aesl_fh.write(AUTOTB_TVOUT_biases3, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
