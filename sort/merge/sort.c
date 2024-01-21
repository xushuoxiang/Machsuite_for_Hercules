#include "sort.h"

//Probe:
//onlyres 
//lowlevel a
//midlevel a,mid,to
//highlevel a,mid,to,temp

#ifdef config_timing
#include <sys/time.h>
struct timeval begin_time;
struct timeval end_time;
struct timeval lowlevel_time;
struct timeval midlevel_time;
struct timeval highlevel_time;
#endif


void merge(TYPE a[SIZE], int start, int m, int stop, hercules_checkdata checkdata[HERCULES_BUFFER],int iter_m, int iter_i){
    TYPE temp[SIZE];
    int i, j, k;

    merge_label1 : for(i=start; i<=m; i++){
        temp[i] = a[i];
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_highlevel)
    hercules_check_function(checkdata, ID_temp, i, temp[i]);
#endif
#endif
    }

    merge_label2 : for(j=m+1; j<=stop; j++){
        temp[m+1+stop-j] = a[j];
#ifdef config_timing
        if((iter_m == 1024) && (iter_i == 0) && (j == 1033)){
            gettimeofday(&highlevel_time,0);
        }
#endif
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_highlevel)
    hercules_check_function(checkdata, ID_temp, m+1+stop-j, temp[m+1+stop-j]);
#endif
#endif
    }

    i = start;
    j = stop;

    merge_label3 : for(k=start; k<=stop; k++){
        TYPE tmp_j = temp[j];
        TYPE tmp_i = temp[i];
        if(tmp_j < tmp_i) {
            a[k] = tmp_j;
#ifdef config_timing
        if((iter_m == 1024) && (iter_i == 0) && (k == 16)){
            gettimeofday(&midlevel_time,0);
        }      
#endif

#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_midlevel || hercules_probe_level == probe_highlevel || hercules_probe_level == probe_lowlevel)
        hercules_check_function(checkdata, ID_a, k, a[k]);
#endif
#endif            
            j--;
        } else {
            a[k] = tmp_i;
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_midlevel || hercules_probe_level == probe_highlevel || hercules_probe_level == probe_lowlevel)
        hercules_check_function(checkdata, ID_a, k, a[k]);
#endif
#endif            
            i++;
        }
    }
}

void ms_mergesort(TYPE a[SIZE]
#ifdef ENABLE_HERCULES
, hercules_checkdata checkdata[HERCULES_BUFFER], int* hercules_buffer_size
#endif
) {
    int start, stop;
    int i, m, from, mid, to;

    start = 0;
    stop = SIZE;
#ifdef config_timing
    gettimeofday(&begin_time,0);
#endif

    mergesort_label1 : for(m=1; m<stop-start; m+=m) {
#ifdef insertbug
        if(m>SIZE/4){
            a[m+10]=0;
        }
#endif

        mergesort_label2 : for(i=start; i<stop; i+=m+m) {
            from = i;
            mid = i+m-1;
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_midlevel || hercules_probe_level == probe_highlevel )
        hercules_check_function(checkdata, ID_mid, 0, mid);
#endif
#endif 
            to = i+m+m-1;
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_midlevel || hercules_probe_level == probe_highlevel )
        hercules_check_function(checkdata, ID_to, 0, to);
#endif
#endif
            if(to < stop){
                merge(a, from, mid, to, checkdata, m, i);
            }
            else{
                merge(a, from, mid, stop, checkdata, m, i);
            }
        }
    }
#ifdef config_timing
    gettimeofday(&end_time,0);
    printf("Run all time: %ldus\n",end_time.tv_usec-begin_time.tv_usec);
    printf("high level first meet error time: %ldus\n",highlevel_time.tv_usec-begin_time.tv_usec);
    printf("mid level first meet error time: %ldus\n",midlevel_time.tv_usec-begin_time.tv_usec);
#endif
#ifdef ENABLE_HERCULES
    *hercules_buffer_size = global_time;
#endif
}
