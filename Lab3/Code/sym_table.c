#include "common.h"

Symbol symbolTable[TABLE_SIZE];
Func curFunc = NULL;

Symbol newTypeSymbol(S_TYPE s_type, char *name, Type type)
{
	int len = strlen(name);
	Symbol symbol = malloc(sizeof(struct Symbol_));	
	symbol->kind = s_type;
	symbol->type = type;
	symbol->next = NULL;
	symbol->name = malloc(len+1);
	strcpy(symbol->name, name);
	symbol->name[len] = '\0';

	//printSymbol(symbol);
	//printf("\n");
	return symbol;
}


Symbol newFuncSymbol(S_TYPE s_type, char *name, Func type)
{
	int len = strlen(name);
	Symbol symbol = malloc(sizeof(struct Symbol_));	
	symbol->kind = s_type;
	symbol->func = type;
	symbol->next = NULL;
	symbol->name = malloc(len+1);
	strcpy(symbol->name, name);
	
	//printSymbol(symbol);
	//printf("\n");
	return symbol;
}

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
	curFunc = NULL;
}

void clearTable()
{
	int i;
	for(i=0; i < TABLE_SIZE; i++) {
		if(symbolTable[i] != NULL) {
			free(symbolTable[i]);
		}
	}
	curFunc = NULL;
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
	//printf("hash=%d ", hashValue);
	//printSymbol(symbol);
	//PRINT_TABLE();

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
	//PRINT_TABLE();
	return 0;
}

void preprocessTable()
{
	//int read()
	Func read_func = malloc(sizeof(struct Func_));		
	read_func->retType = malloc(sizeof(struct Type_));
	read_func->retType->kind = BASIC;
	read_func->retType->basic = B_INT;
	read_func->argList = NULL;
	read_func->isDefined = 1;	
	Symbol read_symbol = newFuncSymbol(S_Func, "read", read_func);
	read_symbol->lineno = 0;
	insertTable(read_symbol);

	//int write(int)
	Func write_func = malloc(sizeof(struct Func_));
	write_func->retType = malloc(sizeof(struct Type_));
	write_func->retType->kind = BASIC;
	write_func->retType->basic = B_INT;
	write_func->argList = malloc(sizeof(struct FieldList_));
	write_func->argList->name = NULL;
	write_func->argList->tail = NULL;
	write_func->argList->type = malloc(sizeof(struct Type_));
	write_func->argList->type->kind = BASIC;
	write_func->argList->type->basic = B_INT;
	write_func->isDefined = 1;
	Symbol write_symbol = newFuncSymbol(S_Func, "write", write_func);
	write_symbol->lineno = 0;
	insertTable(write_symbol);
}

int typeSize(Type type)
{
	int size = 0;
	FieldList p;
	switch(type->kind) {
		case BASIC:
			size = 4;
			break;
		case ARRAY:
			size = typeSize(type->array.elem) * type->array.size;
			break;
		case STRUCTURE:
			p = type->structure;
			while(p != NULL) {
				size += typeSize(p->type);
				p = p->tail;
			}
			break;
	}
	return size;
}

Type structureField(FieldList st, char *name)
{
	for(; st; st=st->tail) {
		if(strcmp(st->name , name) == 0)
			return st->type;
	}
	return NULL;
}


BOOL compareType(Type t1, Type t2)
{
	if(t1 == t2)
		return TRUE;
	if(t1 == NULL || t2 == NULL)
		return FALSE;
	//PRINT_TYPE(t1);
	//PRINT_TYPE(t2);
	//printf("\n");
	if(t1->kind != t2->kind)
		return FALSE;
	if(t1->kind == BASIC)
		if(t1->basic == t2->basic)	return TRUE;
		else return FALSE;
		//return t1->basic == t2->basic;
	else if(t1->kind == ARRAY)
		return compareType(t1->array.elem, t2->array.elem);
	else if(t1->kind == STRUCTURE)
		return compareStructure(t1->structure, t2->structure);
	return FALSE;
}

BOOL compareStructure(FieldList s1, FieldList s2)
{
	if(s1 == s2)	return TRUE;
	if(s1 == NULL || s2 == NULL)	return FALSE;
	if(strcmp(s1->name, s2->name) == 0)	return TRUE;

	return FALSE;
}

BOOL compareArgs(FieldList list1, FieldList list2)
{
	if(list1 == list2)	return TRUE;
	if(list1 == NULL || list2 == NULL)	return FALSE;
	if(compareType(list1->type, list2->type) == FALSE)
		return FALSE;
	return compareArgs(list1->tail, list2->tail);
}

BOOL compareFunction(Symbol f1, Symbol f2)
{
	if(f1 == f2)	return TRUE;
	if(f1 == NULL || f2 == NULL)	return FALSE;
	if(f1->kind != S_Func || f2->kind != S_Func)	return FALSE;
	if(compareType(f1->func->retType, f2->func->retType) == FALSE)	return FALSE;
	return compareArgs(f1->func->argList, f2->func->argList);	
}

void printFieldList(FieldList list)
{
	if(list == NULL)	return;
	//printf("(");
	for(; list->tail; list=list->tail) {
		printType(list->type);
		if(list->name != NULL)
			printf(" %s", list->name);
		printf(", ");
	}
	printType(list->type);
	if(list->name != NULL)
		printf(" %s", list->name);
	//printf(")");
}

void printType(Type type)
{
	if(type == NULL)	return;
	switch(type->kind) {
		case BASIC:
			if(type->basic == B_INT)	
				printf("int");
			else	printf("float");
			break;
		case ARRAY:
			printType(type->array.elem);
			printf("[%d]", type->array.size);
			break;
		case STRUCTURE:
			printFieldList(type->structure);
			break;
	}
}

void printFunc(Func func)
{
	printType(func->retType);	
	printf(" (");
	printFieldList(func->argList);
	printf(")");
}

void printFuncType(Symbol func) 
{
	printf("%s", func->name);
	printf("(");
	FieldList p = func->func->argList;
	while(p && p->tail) {
		printType(p->type);
		printf(",");
		p = p->tail;
	}
	printType(p->type);
	printf(")");
}

void printSymbol(Symbol symbol)
{
	if(symbol == NULL) return;
	if(symbol->kind == S_Type) {
		printf("Var ");
		printf("%s: ", symbol->name);
		printType(symbol->type);
	}
	else if(symbol->kind == S_Func){
		printf("Func ");
		printf("%s: ", symbol->name);
		printFunc(symbol->func);
	}
	else if(symbol->kind == S_StrucDef) {
		printf("StrucDef ");
		printf("%s: ", symbol->name);
		printType(symbol->type);
	}
}


void printTable()
{
	int i;
	printf("\n---------------------------------\n");
	for(i=0; i < TABLE_SIZE; i++){
		if(symbolTable[i] != NULL) {
			printSymbol(symbolTable[i]);			
			printf("\n---------------------------------\n");
		}
	}

}
