#ifndef COMMANDSDEF_H
#define COMMANDSDEF_H
#include "extra.h"

int blockAddr;
char At[1024];

char* TM_START;

void strTest(char* CMD)
{
    char cmd1[] = "CLS";
    if(strcmp(CMD , cmd1)) {
        cls();
    }
}

#endif