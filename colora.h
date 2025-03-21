#ifndef COLORA_H
#define COLORA_H
#include "extra.h"

int blockAddr;
char At[1024];

char* TM_START;

void strColorA(char* CMD)
{
    char cmd2[] = "COLORA";
	if(strcmp(CMD , cmd2)) {
		setMonitorColor(0x3c);
    }
}

#endif