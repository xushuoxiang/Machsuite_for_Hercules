#include "hercules.h"
#include <string.h>
#include <stdio.h>

int global_time=0;


void hercules_check_function(hercules_checkdata checkdata[HERCULES_BUFFER], int ID_in, int address_in, int data_in){
    checkdata[global_time].ID=ID_in;
    checkdata[global_time].address=address_in;
    checkdata[global_time].data=data_in;
    checkdata[global_time].time=global_time;
    global_time++;
}
void dump_checkdata(hercules_checkdata checkdata[HERCULES_BUFFER], int size){
    char hercules_filename[100]="hercules";
#if hercules_probe_level == probe_onlyres
    strcat(hercules_filename, "_onlyres");
#elif hercules_probe_level == probe_lowlevel
    strcat(hercules_filename, "_lowlevel");
#elif hercules_probe_level == probe_midlevel
    strcat(hercules_filename, "_midlevel");
#else
    strcat(hercules_filename, "_highlevel");
#endif

#ifdef insertbug
    strcat(hercules_filename, "_error.txt");
#else
    strcat(hercules_filename, "_right.txt");
#endif
    FILE* fp1 = fopen(hercules_filename,"w+");
    for(int temp=0;temp<size;temp++){
        fprintf(fp1, "ID:%d, Address:%d, Data:%d, Time:%d\n",checkdata[temp].ID, checkdata[temp].address, checkdata[temp].data, checkdata[temp].time);
    }
    fclose(fp1);
}