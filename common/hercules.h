#define ENABLE_HERCULES 1
#define HERCULES_BUFFER 8*256*1024
#define DUMP_SIZE HERCULES_BUFFER
#define ID_a 0
#define ID_b 1
#define ID_bucket 2
#define ID_sum 3
#define ID_temp 4
#define ID_prod 5
#define ID_mul 6
#define ID_temp_x 7
#define ID_tmp_begin 8
#define ID_tmp_end 9
#define ID_tmp_level 10
#define ID_tmp_dst 11
#define ID_level 12
#define ID_level_counts 13
#define ID_n 14
#define ID_mid 15
#define ID_to 16

#define probe_onlyres 0
#define probe_lowlevel 1
#define probe_midlevel 2
#define probe_highlevel 3

#define hercules_probe_level probe_highlevel
// #define errorlocation  6913
// #define insertbug 1
// #define config_timing 1


//enum DataID{ID_a=0, ID_b, ID_bucket, ID_sum};
typedef struct 
{ int ID;
  int address;
  int data;
  int time;
}hercules_checkdata;

extern int global_time;

void hercules_check_function(hercules_checkdata checkdata[HERCULES_BUFFER], int ID_in, int address_in, int data_in);
void dump_checkdata(hercules_checkdata checkdata[HERCULES_BUFFER], int size);
