/*
Implementation based on algorithm described in:
The cache performance and optimizations of blocked algorithms
M. D. Lam, E. E. Rothberg, and M. E. Wolf
ASPLOS 1991
*/

#include "gemm.h"

//Probe:
//onlyres 
//lowlevel there is no lowlevel
//midlevel temp_x
//highlevel temp_x,mul,prod


#ifdef config_timing
#include <sys/time.h>
struct timeval begin_time;
struct timeval end_time;
struct timeval lowlevel_time;
struct timeval midlevel_time;
struct timeval highlevel_time;
#endif
void bbgemm(TYPE m1[N], TYPE m2[N], TYPE prod[N], hercules_checkdata checkdata[HERCULES_BUFFER], int* hercules_buffer_size){
    int i, k, j, jj, kk;
    int i_row, k_row;
    TYPE temp_x, mul;
#ifdef config_timing
    gettimeofday(&begin_time,0);
#endif
    loopjj:for (jj = 0; jj < row_size; jj += block_size){
        loopkk:for (kk = 0; kk < row_size; kk += block_size){
            loopi:for ( i = 0; i < row_size; ++i){
                loopk:for (k = 0; k < block_size; ++k){
                    i_row = i * row_size;
                    k_row = (k  + kk) * row_size;
                    temp_x = m1[i_row + k + kk];                    
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_highlevel || hercules_probe_level == probe_midlevel)
#ifdef insertbug
                        if(global_time == errorlocation){
                            printf("loopk: jj=%d, kk=%d, i=%d, k=%d\n",jj,kk,i,k);
                        }
#endif
                        hercules_check_function(checkdata, ID_temp_x, 0, temp_x);
                        
#endif
#endif
#ifdef insertbug
                    if(jj==32 && kk==32 &&i==32&&k==4){
                        printf("*** Insert bug mode ***\n");
                        temp_x+=1;
                    }
#endif 
                    loopj:for (j = 0; j < block_size; ++j){
                        mul = temp_x * m2[k_row + j + jj];
                        
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_highlevel)
#ifdef insertbug
                        if(global_time == errorlocation){
                            printf("loopj: jj=%d, kk=%d, i=%d, k=%d, j=%d\n",jj,kk,i,k,j);
                        }
#endif
                        hercules_check_function(checkdata, ID_mul, 0, mul);
#endif
#endif 
                        prod[i_row + j + jj] += mul;
#ifdef config_timing
        if((jj == 32) && (kk == 32) && (i == 32) && (k==4) && (j==1)){
            gettimeofday(&highlevel_time,0);
        }
#endif

#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_highlevel)
#ifdef insertbug
                        if(global_time == errorlocation){
                            printf("loopj: jj=%d, kk=%d, i=%d, k=%d, j=%d\n",jj,kk,i,k,j);
                        }
#endif
                        hercules_check_function(checkdata, ID_prod, i_row + j + jj, prod[i_row + j + jj]);
                        
#endif
#endif
                    }
                }
            }
        }
    }
#ifdef config_timing
    gettimeofday(&end_time,0);
    printf("Run all time: %ldus\n",end_time.tv_usec-begin_time.tv_usec);
    printf("high level first meet error time: %ldus\n",highlevel_time.tv_usec-begin_time.tv_usec);
    printf("mid level first meet error time: %ldus\n",midlevel_time.tv_usec-begin_time.tv_usec);
#endif
    *hercules_buffer_size = global_time;
}
