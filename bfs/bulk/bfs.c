/*
Implementations based on:
Harish and Narayanan. "Accelerating large graph algorithms on the GPU using CUDA." HiPC, 2007.
Hong, Oguntebi, Olukotun. "Efficient Parallel Graph Exploration on Multi-Core CPU and GPU." PACT, 2011.
*/

#include "bfs.h"

//Probe:
//onlyres 
//lowlevel tmp_begin, tmp_end, level_counts
//midlevel tmp_begin, tmp_end, level_counts, tmp_level, tmp_dst
//highlevel tmp_begin, tmp_end, level_counts, tmp_level, tmp_dst, level

#ifdef config_timing
#include <sys/time.h>
struct timeval begin_time;
struct timeval end_time;
struct timeval lowlevel_time;
struct timeval midlevel_time;
struct timeval highlevel_time;
struct timeval error_time;
#endif

#ifdef insertbug
int mark=0;
#endif

void bfs(node_t nodes[N_NODES], edge_t edges[N_EDGES],
            node_index_t starting_node, level_t level[N_NODES],
            edge_index_t level_counts[N_LEVELS], hercules_checkdata checkdata[HERCULES_BUFFER], int* hercules_buffer_size)
{
  node_index_t n;
  edge_index_t e;
  level_t horizon;
  edge_index_t cnt;
#ifdef config_timing
    gettimeofday(&begin_time,0);
    // printf("begin time:%ld\n", begin_time.tv_usec);
#endif
  level[starting_node] = 0;
  level_counts[0] = 1;

  loop_horizons: for( horizon=0; horizon<N_LEVELS; horizon++ ) {
    cnt = 0;
    // Add unmarked neighbors of the current horizon to the next horizon
    loop_nodes: for( n=0; n<N_NODES; n++ ) {
      if( level[n]==horizon ) {
        edge_index_t tmp_begin = nodes[n].edge_begin;
#ifdef config_timing
        if(horizon == 2 && n == 233){
            gettimeofday(&lowlevel_time,0);
        }
#endif
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_lowlevel) || (hercules_probe_level == probe_midlevel) || (hercules_probe_level == probe_highlevel)
#ifdef insertbug
      if(global_time == errorlocation){
        printf("horizon=%d, n=%d\n",horizon,n);
      }
#endif
      hercules_check_function(checkdata, ID_tmp_begin, 0, tmp_begin); 
#endif
#endif
        edge_index_t tmp_end = nodes[n].edge_end;
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_lowlevel) || (hercules_probe_level == probe_midlevel) || (hercules_probe_level == probe_highlevel)
      hercules_check_function(checkdata, ID_tmp_end, 0, tmp_end);
#endif
#endif
#ifdef insertbug
      if(horizon == 2 && n == 128){
        // printf("*** Insert bug mode ***\n");
#ifdef config_timing
    gettimeofday(&error_time,0);
    // printf("begin time:%ld\n", begin_time.tv_usec);
#endif
        nodes[128].edge_begin = 12;
        nodes[128].edge_end = 5;
        goto test;
      }
#endif

        loop_neighbors: for( e=tmp_begin; e<tmp_end; e++ ) {
          node_index_t tmp_dst = edges[e].dst;
#ifdef config_timing
        if(horizon == 2 && n == 128 && e == 2293){
            gettimeofday(&midlevel_time,0);
        }
        
#endif
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_midlevel) || (hercules_probe_level == probe_highlevel)
#ifdef insertbug
      if(global_time == errorlocation){
        printf("horizon=%d, n=%d,e=%d\n",horizon,n,e);
      }
#endif
          hercules_check_function(checkdata, ID_tmp_dst, 0, tmp_dst);
#endif
#endif
          level_t tmp_level = level[tmp_dst];
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_midlevel) || (hercules_probe_level == probe_highlevel)
          hercules_check_function(checkdata, ID_tmp_level, 0, tmp_level);
#endif
#endif


          if( tmp_level ==MAX_LEVEL ) { // Unmarked
test:
            level[tmp_dst] = horizon+1;
#ifdef config_timing
            if(horizon == 2 && n == 128 && e == 2292){
              gettimeofday(&highlevel_time,0);
              // printf("time:%ld\n", highlevel_time.tv_usec);
            }
#endif
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_highlevel)
            hercules_check_function(checkdata, ID_level, tmp_dst, level[tmp_dst]);
#endif
#endif
            ++cnt;
          }
        }
      }
    }
    level_counts[horizon+1]=cnt;


#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_lowlevel) || (hercules_probe_level == probe_midlevel) || (hercules_probe_level == probe_highlevel)
    hercules_check_function(checkdata, ID_level_counts, horizon+1, level_counts[horizon+1]);
#endif
#endif
    if( cnt==0 )
      break;
  }
#ifdef config_timing
    gettimeofday(&end_time,0);
    printf("Run all time: %ldus\n",end_time.tv_usec-begin_time.tv_usec);
    printf("high level first meet error time: %ldus\n",highlevel_time.tv_usec-begin_time.tv_usec);
    printf("mid level first meet error time: %ldus\n",midlevel_time.tv_usec-begin_time.tv_usec);
    printf("low level first meet error time: %ldus\n",lowlevel_time.tv_usec-begin_time.tv_usec);
    printf("actual error time: %ldus\n",error_time.tv_usec-begin_time.tv_usec);
#endif
  *hercules_buffer_size = global_time;
}
