/*
Implementation based on algorithm described in:
A. Danalis, G. Marin, C. McCurdy, J. S. Meredith, P. C. Roth, K. Spafford, V. Tipparaju, and J. S. Vetter.
The scalable heterogeneous computing (shoc) benchmark suite.
In Proceedings of the 3rd Workshop on General-Purpose Computation on Graphics Processing Units, 2010
*/

#include "sort.h"
// #include <sys/time.h>


int lastval=0;
// struct timeval absumbuecket_time;
// struct timeval absum_time;
// struct timeval ab_time;

void local_scan(int bucket[BUCKETSIZE], hercules_checkdata checkdata[HERCULES_BUFFER], int exp)
{
    int radixID, i, bucket_indx;
    bucket[0]=lastval;
    local_1 : for (radixID=0; radixID<SCAN_RADIX; radixID++) {
        local_2 : for (i=1; i<SCAN_BLOCK; i++){
            bucket_indx = radixID*SCAN_BLOCK + i;
            bucket[bucket_indx] += bucket[bucket_indx-1];
#if (hercules_probe_level == probe_highlevel)
#ifdef ENABLE_HERCULES
           hercules_check_function(checkdata, ID_bucket, bucket_indx, bucket[bucket_indx]);
#endif 
#endif
        }
    }
}

void sum_scan(int sum[SCAN_RADIX], int bucket[BUCKETSIZE], hercules_checkdata checkdata[HERCULES_BUFFER])
{
//#pragma HLS PIPELINE rewind
    int radixID, bucket_indx;
    sum[0] = 0;
    sum_1 : for (radixID=1; radixID<SCAN_RADIX; radixID++) {
        bucket_indx = radixID*SCAN_BLOCK - 1;
        sum[radixID] = sum[radixID-1] + bucket[bucket_indx];
#if (hercules_probe_level == probe_midlevel) || (hercules_probe_level == probe_highlevel)
#ifdef ENABLE_HERCULES
       hercules_check_function(checkdata, ID_sum, radixID, sum[radixID]);
#endif
#endif
    }
}

void last_step_scan(int bucket[BUCKETSIZE], int sum[SCAN_RADIX], hercules_checkdata checkdata[HERCULES_BUFFER])
{
//#pragma HLS PIPELINE rewind
    int radixID, i, bucket_indx;
    last_1:for (radixID=0; radixID<SCAN_RADIX; radixID++) {
        last_2:for (i=0; i<SCAN_BLOCK; i++) {
            bucket_indx = radixID * SCAN_BLOCK + i;
            bucket[bucket_indx] = bucket[bucket_indx] + sum[radixID];
#if (hercules_probe_level == probe_highlevel)
#ifdef ENABLE_HERCULES
           hercules_check_function(checkdata, ID_bucket, bucket_indx, bucket[bucket_indx]);
#endif 
#endif
        }
    }
}

void init(int bucket[BUCKETSIZE], hercules_checkdata checkdata[HERCULES_BUFFER])
{
//#pragma HLS PIPELINE rewind
    int i;
    init_1 : for (i=0; i<BUCKETSIZE; i++) {
        bucket[i] = 0;
#ifdef ENABLE_HERCULES
       hercules_check_function(checkdata, ID_bucket, i, bucket[i]);
#endif
    }
}

void hist(int bucket[BUCKETSIZE], int a[SIZE], int exp, hercules_checkdata checkdata[HERCULES_BUFFER])
{
    int blockID, i, bucket_indx, a_indx;
    blockID = 0;
    hist_1 : for (blockID=0; blockID<NUMOFBLOCKS; blockID++) {
        hist_2 : for(i=0; i<4; i++) {
            a_indx = blockID * ELEMENTSPERBLOCK + i;
            bucket_indx = ((a[a_indx] >> exp) & 0x3)*NUMOFBLOCKS + blockID + 1;
            bucket[bucket_indx]++;
#if (hercules_probe_level == probe_highlevel)
#ifdef ENABLE_HERCULES
           hercules_check_function(checkdata, ID_bucket, bucket_indx, bucket[bucket_indx]);
#endif
#endif
        }
    }
    lastval=bucket[0];
}

void update(int b[SIZE], int bucket[BUCKETSIZE], int a[SIZE], int exp, hercules_checkdata checkdata[HERCULES_BUFFER], int mark_a)
{
//#pragma HLS PIPELINE rewind
    int i, blockID, bucket_indx, a_indx;

    blockID = 0;

    update_1 : for (blockID = 0; blockID < NUMOFBLOCKS; blockID++) {

        update_2 : for(i=0; i<4; i++) {

            bucket_indx = ((a[blockID * ELEMENTSPERBLOCK + i] >> exp) & 0x3)*NUMOFBLOCKS + blockID;
            a_indx = blockID * ELEMENTSPERBLOCK + i;
            b[bucket[bucket_indx]] = a[a_indx];
#if (hercules_probe_level == probe_lowlevel) || (hercules_probe_level == probe_midlevel) || (hercules_probe_level == probe_highlevel)
#ifdef ENABLE_HERCULES
            if(mark_a == 1){
                hercules_check_function(checkdata, ID_a, bucket[bucket_indx], b[bucket[bucket_indx]]);
            }
            else{
                hercules_check_function(checkdata, ID_b, bucket[bucket_indx], b[bucket[bucket_indx]]);
            }
#endif
#endif
            bucket[bucket_indx]++;
#if (hercules_probe_level == probe_highlevel)
#ifdef ENABLE_HERCULES
           hercules_check_function(checkdata, ID_bucket, bucket_indx, bucket[bucket_indx]);
#endif
#endif
        }
    }
}

void ss_sort(int a[SIZE], int b[SIZE], int bucket[BUCKETSIZE], int sum[SCAN_RADIX], hercules_checkdata checkdata[HERCULES_BUFFER], int* hercules_buffer_size){
#pragma HLS INTERFACE ap_memory port=bucket storage_type=ram_1p
    int exp=0;
    int valid_buffer=0;
    #define BUFFER_A 0
    #define BUFFER_B 1

    // struct timeval begin,end;
    // gettimeofday(&begin,0);

    sort_1 : for (exp=0; exp<32; exp+=2) {
//#pragma HLS PIPELINE rewind
        init(bucket, checkdata);
        if (valid_buffer == BUFFER_A) {
            hist(bucket, a, exp, checkdata);
        } else {
            hist(bucket, b, exp, checkdata);
        }

        // if(exp==2) gettimeofday(&absumbuecket_time,0);
        local_scan(bucket, checkdata, exp);
        // if(exp==2) gettimeofday(&absum_time,0);
        sum_scan(sum, bucket, checkdata);
        last_step_scan(bucket, sum, checkdata);
        // if(exp==2) gettimeofday(&ab_time,0);

        if (valid_buffer==BUFFER_A) {
            update(b, bucket, a, exp, checkdata, 0);
            valid_buffer = BUFFER_B;
        } else {
            update(a, bucket, b, exp, checkdata, 1);
            valid_buffer = BUFFER_A;
        }
    }
    // gettimeofday(&end,0);
    // printf("total time %ld us\n",end.tv_usec-begin.tv_usec);
    // printf("Probe for a,b time %ldus\n",ab_time.tv_usec-begin.tv_usec);
    // printf("Probe for a,b,sum time %ldus\n",absum_time.tv_usec-begin.tv_usec);
    // printf("Probe for a,b,bucket,sum time %ldus\n",absumbuecket_time.tv_usec-begin.tv_usec);
    // If trip count is even, buffer A will be valid at the end.
    *hercules_buffer_size = global_time; 
}
