#include "sym_table.h"
#include <string.h>

Symbol symbolTable[TABLE_SIZE];


unsigned int hash_pjw(char *name)
{
	unsigned int val = 0, i;
	for(; *name; ++name) {
		val = (val << 2) + *name;
		if(i = val & ~0x3fff) val = (val ^ (i >> 12)) & 0x3fff;
	}
	return val;
}


void initTable()
{
	int i;
	for(i=0; i < TABLE_SIZE; i++) {
		symbolTable[i] = NULL;
	}
}

Symbol searchTable(char *name)
{
	if(name == NULL)	return NULL;
	unsigned int hashValue = hash_pjw(name);
	if(symbolTable[hashValue] != NULL) {
		Symbol p = symbolTable[hashValue];
		for(; p && 0 != strcmp(name, p->name); p=p->next);
		if(p != NULL)	return p;
	}
	return NULL;
}

int insertTable(Symbol symbol)
{
	if(symbol == NULL || symbol->name == NULL)	return -1;
	unsigned int hashValue = hash_pjw(symbol->name);

	//first in this place
	if(symbolTable[hashValue] == NULL) {
		symbolTable[hashValue] = symbol;
	}
	else {
		//insert tail
		if(searchTable(symbol->name) != NULL)	return 1;
		Symbol p = symbolTable[hashValue];
		for(; p->next; p=p->next);
		p->next = symbol;
		symbol->next = NULL;
	}
	return 0;
}

