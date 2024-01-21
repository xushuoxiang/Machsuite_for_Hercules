#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "../../common/support.h"
#include "../../common/hercules.h"

#define SIZE 2048
#define TYPE int32_t
#define TYPE_MAX INT32_MAX

void ms_mergesort(TYPE a[SIZE]
#ifdef ENABLE_HERCULES
, hercules_checkdata checkdata[HERCULES_BUFFER], int* hercules_buffer_size
#endif
);
////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  TYPE a[SIZE];
  hercules_checkdata checkdata[HERCULES_BUFFER];
  int hercules_buffer_size;
};
