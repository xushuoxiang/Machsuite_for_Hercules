/*
Implementation based on algorithm described in:
A. Danalis, G. Marin, C. McCurdy, J. S. Meredith, P. C. Roth, K. Spafford, V. Tipparaju, and J. S. Vetter.
The scalable heterogeneous computing (shoc) benchmark suite.
In Proceedings of the 3rd Workshop on General-Purpose Computation on Graphics Processing Units, 2010
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../../common/support.h"

#define TYPE int32_t
#define TYPE_MAX INT32_MAX

#define SIZE 2048
#define NUMOFBLOCKS 512

#define ELEMENTSPERBLOCK 4
#define RADIXSIZE 4
#define BUCKETSIZE NUMOFBLOCKS*RADIXSIZE
#define MASK 0x3

#define SCAN_BLOCK 16
#define SCAN_RADIX BUCKETSIZE/SCAN_BLOCK

//#define ENABLE_HERCULES 1
#define HERCULES_BUFFER 256*1024
#define ID_a 0
#define ID_b 1
#define ID_bucket 2
#define ID_sum 3
//enum DataID{ID_a=0, ID_b, ID_bucket, ID_sum};
typedef struct hercules_checkdata
{
  int ID;
  int address;
  int data;
  int time;
}hercules_checkdata;

void ss_sort(int a[SIZE], int b[SIZE], int bucket[BUCKETSIZE], int sum[SCAN_RADIX], hercules_checkdata checkdata[HERCULES_BUFFER]);

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  int a[SIZE];
  int b[SIZE];
  int bucket[BUCKETSIZE];
  int sum[SCAN_RADIX];
  hercules_checkdata checkdata[HERCULES_BUFFER];
};
