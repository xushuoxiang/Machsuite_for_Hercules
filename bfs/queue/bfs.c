/*
Implementation based on:
Hong, Oguntebi, Olukotun. "Efficient Parallel Graph Exploration on Multi-Core CPU and GPU." PACT, 2011.
*/

#include "bfs.h"

//Probe:
//onlyres 
//lowlevel n
//midlevel n, tmp_dst, tmp_level
//highlevel n, tmp_dst, tmp_level, level, level_counts

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

#define Q_PUSH(node) { queue[q_in==0?N_NODES-1:q_in-1]=node; q_in=(q_in+1)%N_NODES; }
#define Q_PEEK() (queue[q_out])
#define Q_POP() { q_out = (q_out+1)%N_NODES; }
#define Q_EMPTY() (q_in>q_out ? q_in==q_out+1 : (q_in==0)&&(q_out==N_NODES-1))

void bfs(node_t nodes[N_NODES], edge_t edges[N_EDGES],
            node_index_t starting_node, level_t level[N_NODES],
            edge_index_t level_counts[N_LEVELS], hercules_checkdata checkdata[HERCULES_BUFFER], int* hercules_buffer_size)
{
  node_index_t queue[N_NODES];
  node_index_t q_in, q_out;
  node_index_t dummy;
  node_index_t n;
  edge_index_t e;

#ifdef config_timing
    gettimeofday(&begin_time,0);
#endif
  /*init_levels: for( n=0; n<N_NODES; n++ )*/
  /*level[n] = MAX_LEVEL;*/
  /*init_horizons: for( i=0; i<N_LEVELS; i++ )*/
  /*level_counts[i] = 0;*/

  q_in = 1;
  q_out = 0;
  level[starting_node] = 0;
  level_counts[0] = 1;
  Q_PUSH(starting_node);

  loop_queue: for( dummy=0; dummy<N_NODES; dummy++ ) { // Typically while(not_empty(queue)){
    if( Q_EMPTY() )
      break;
    n = Q_PEEK();
#ifdef config_timing
    if(dummy == 230){
      gettimeofday(&lowlevel_time,0);
    }
    if(dummy == 101){
      gettimeofday(&midlevel_time,0);
    }
#endif
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_lowlevel) || (hercules_probe_level == probe_midlevel) || (hercules_probe_level == probe_highlevel)
      hercules_check_function(checkdata, ID_n, 0, n);
#endif
#endif
    Q_POP();
#ifdef insertbug
    if(dummy == 100 ){
#ifdef config_timing
      gettimeofday(&error_time,0);
#endif
      // printf("*** Insert bug mode ***\n");
      nodes[n].edge_begin = 12;
      nodes[n].edge_end = 5;
      goto test;
    }
#endif
    edge_index_t tmp_begin = nodes[n].edge_begin;
    edge_index_t tmp_end = nodes[n].edge_end;
    loop_neighbors: for( e=tmp_begin; e<tmp_end; e++ ) {
      node_index_t tmp_dst = edges[e].dst;
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_midlevel) || (hercules_probe_level == probe_highlevel)
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
test:   {}
        level_t tmp_level = level[n]+1;
        level[tmp_dst] = tmp_level;

#ifdef config_timing
        if(dummy==100 && e==2645){
          gettimeofday(&highlevel_time,0);
        }
#endif
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_highlevel)
            hercules_check_function(checkdata, ID_level, tmp_dst, level[tmp_dst]);
#endif
#endif

        ++level_counts[tmp_level];
#ifdef ENABLE_HERCULES
#if (hercules_probe_level == probe_highlevel)
            hercules_check_function(checkdata, ID_level_counts, tmp_level, level_counts[tmp_level]);
#endif
#endif
        Q_PUSH(tmp_dst);
      }
    }
  }

  /*
  printf("Horizons:");
  for( i=0; i<N_LEVELS; i++ )
    printf(" %d", level_counts[i]);
  printf("\n");
  */
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
