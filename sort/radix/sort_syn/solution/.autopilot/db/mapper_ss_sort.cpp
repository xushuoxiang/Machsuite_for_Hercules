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
struct __cosim_s10__ { char data[16]; };
extern "C" void ss_sort(int*, int*, int*, int*, __cosim_s10__*, volatile void *);
extern "C" void apatb_ss_sort_hw(volatile void * __xlx_apatb_param_a, volatile void * __xlx_apatb_param_b, volatile void * __xlx_apatb_param_bucket, volatile void * __xlx_apatb_param_sum, volatile void * __xlx_apatb_param_checkdata, volatile void * __xlx_apatb_param_hercules_buffer_size) {
  // Collect __xlx_a__tmp_vec
  vector<sc_bv<32> >__xlx_a__tmp_vec;
  for (int j = 0, e = 2048; j != e; ++j) {
    __xlx_a__tmp_vec.push_back(((int*)__xlx_apatb_param_a)[j]);
  }
  int __xlx_size_param_a = 2048;
  int __xlx_offset_param_a = 0;
  int __xlx_offset_byte_param_a = 0*4;
  int* __xlx_a__input_buffer= new int[__xlx_a__tmp_vec.size()];
  for (int i = 0; i < __xlx_a__tmp_vec.size(); ++i) {
    __xlx_a__input_buffer[i] = __xlx_a__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_b__tmp_vec
  vector<sc_bv<32> >__xlx_b__tmp_vec;
  for (int j = 0, e = 2048; j != e; ++j) {
    __xlx_b__tmp_vec.push_back(((int*)__xlx_apatb_param_b)[j]);
  }
  int __xlx_size_param_b = 2048;
  int __xlx_offset_param_b = 0;
  int __xlx_offset_byte_param_b = 0*4;
  int* __xlx_b__input_buffer= new int[__xlx_b__tmp_vec.size()];
  for (int i = 0; i < __xlx_b__tmp_vec.size(); ++i) {
    __xlx_b__input_buffer[i] = __xlx_b__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_bucket__tmp_vec
  vector<sc_bv<32> >__xlx_bucket__tmp_vec;
  for (int j = 0, e = 2048; j != e; ++j) {
    __xlx_bucket__tmp_vec.push_back(((int*)__xlx_apatb_param_bucket)[j]);
  }
  int __xlx_size_param_bucket = 2048;
  int __xlx_offset_param_bucket = 0;
  int __xlx_offset_byte_param_bucket = 0*4;
  int* __xlx_bucket__input_buffer= new int[__xlx_bucket__tmp_vec.size()];
  for (int i = 0; i < __xlx_bucket__tmp_vec.size(); ++i) {
    __xlx_bucket__input_buffer[i] = __xlx_bucket__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_sum__tmp_vec
  vector<sc_bv<32> >__xlx_sum__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    __xlx_sum__tmp_vec.push_back(((int*)__xlx_apatb_param_sum)[j]);
  }
  int __xlx_size_param_sum = 128;
  int __xlx_offset_param_sum = 0;
  int __xlx_offset_byte_param_sum = 0*4;
  int* __xlx_sum__input_buffer= new int[__xlx_sum__tmp_vec.size()];
  for (int i = 0; i < __xlx_sum__tmp_vec.size(); ++i) {
    __xlx_sum__input_buffer[i] = __xlx_sum__tmp_vec[i].range(31, 0).to_uint64();
  }
  // Collect __xlx_checkdata__tmp_vec
  vector<sc_bv<128> >__xlx_checkdata__tmp_vec;
  for (int j = 0, e = 2097152; j != e; ++j) {
    sc_bv<128> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_checkdata)[j*2+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_checkdata)[j*2+1];
    __xlx_checkdata__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_checkdata = 2097152;
  int __xlx_offset_param_checkdata = 0;
  int __xlx_offset_byte_param_checkdata = 0*16;
  __cosim_s10__* __xlx_checkdata__input_buffer= new __cosim_s10__[__xlx_checkdata__tmp_vec.size()];
  for (int i = 0; i < __xlx_checkdata__tmp_vec.size(); ++i) {
    ((long long*)__xlx_checkdata__input_buffer)[i*2+0] = __xlx_checkdata__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_checkdata__input_buffer)[i*2+1] = __xlx_checkdata__tmp_vec[i].range(127, 64).to_uint64();
  }
  // DUT call
  ss_sort(__xlx_a__input_buffer, __xlx_b__input_buffer, __xlx_bucket__input_buffer, __xlx_sum__input_buffer, __xlx_checkdata__input_buffer, __xlx_apatb_param_hercules_buffer_size);
// print __xlx_apatb_param_a
  sc_bv<32>*__xlx_a_output_buffer = new sc_bv<32>[__xlx_size_param_a];
  for (int i = 0; i < __xlx_size_param_a; ++i) {
    __xlx_a_output_buffer[i] = __xlx_a__input_buffer[i+__xlx_offset_param_a];
  }
  for (int i = 0; i < __xlx_size_param_a; ++i) {
    ((int*)__xlx_apatb_param_a)[i] = __xlx_a_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_b
  sc_bv<32>*__xlx_b_output_buffer = new sc_bv<32>[__xlx_size_param_b];
  for (int i = 0; i < __xlx_size_param_b; ++i) {
    __xlx_b_output_buffer[i] = __xlx_b__input_buffer[i+__xlx_offset_param_b];
  }
  for (int i = 0; i < __xlx_size_param_b; ++i) {
    ((int*)__xlx_apatb_param_b)[i] = __xlx_b_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_bucket
  sc_bv<32>*__xlx_bucket_output_buffer = new sc_bv<32>[__xlx_size_param_bucket];
  for (int i = 0; i < __xlx_size_param_bucket; ++i) {
    __xlx_bucket_output_buffer[i] = __xlx_bucket__input_buffer[i+__xlx_offset_param_bucket];
  }
  for (int i = 0; i < __xlx_size_param_bucket; ++i) {
    ((int*)__xlx_apatb_param_bucket)[i] = __xlx_bucket_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_sum
  sc_bv<32>*__xlx_sum_output_buffer = new sc_bv<32>[__xlx_size_param_sum];
  for (int i = 0; i < __xlx_size_param_sum; ++i) {
    __xlx_sum_output_buffer[i] = __xlx_sum__input_buffer[i+__xlx_offset_param_sum];
  }
  for (int i = 0; i < __xlx_size_param_sum; ++i) {
    ((int*)__xlx_apatb_param_sum)[i] = __xlx_sum_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_checkdata
  sc_bv<128>*__xlx_checkdata_output_buffer = new sc_bv<128>[__xlx_size_param_checkdata];
  for (int i = 0; i < __xlx_size_param_checkdata; ++i) {
    char* start = (char*)(&(__xlx_checkdata__input_buffer[__xlx_offset_param_checkdata]));
    __xlx_checkdata_output_buffer[i].range(63, 0) = ((long long*)start)[i*2+0];
    __xlx_checkdata_output_buffer[i].range(127, 64) = ((long long*)start)[i*2+1];
  }
  for (int i = 0; i < __xlx_size_param_checkdata; ++i) {
    ((long long*)__xlx_apatb_param_checkdata)[i*2+0] = __xlx_checkdata_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_checkdata)[i*2+1] = __xlx_checkdata_output_buffer[i].range(127, 64).to_uint64();
  }
}
