#ifndef _SYM_TABLE_H_
#define _SYM_TABLE_H_

typedef int BOOL;
#define FALSE 0
#define TRUE 1

#define TABLE_SIZE 0x3fff

typedef struct Type_* Type;
typedef struct FieldList_* FieldList;
typedef struct Func_* Func;
typedef struct Symbol_* Symbol;

extern Func curFunc;
extern Symbol symbolTable[TABLE_SIZE];


struct Type_ {
	enum {BASIC, ARRAY, STRUCTURE} kind;
	union {
		enum {B_INT, B_FLOAT} basic;
		struct {
			Type elem;
			int size;
		} array;
		FieldList structure;
	} ;
};

struct FieldList_ {
	char *name;
	Type type;
	FieldList tail;
};

struct Func_ {
	Type retType;
	FieldList argList;
	int isDefined;
};

typedef enum S_TYPE {S_Type, S_Func, S_StrucDef} S_TYPE;
struct Symbol_ {
	S_TYPE kind;
	char *name;
	int lineno;
	union {
		Type type;
		Func func;
	} ;
	Symbol next;
};

Symbol newTypeSymbol(S_TYPE s_type, char *name, Type type);
Symbol newFuncSymbol(S_TYPE s_type, char *name, Func type);
void initTable();
void clearTable();
Symbol searchTable(char *name);
int insertTable(Symbol symbol);

Type structureField(FieldList st, char *name);

//compatr type
BOOL compareType(Type t1, Type t2);
BOOL compareStructure(FieldList s1, FieldList s2);
BOOL compareArgs(FieldList list1, FieldList list2);
BOOL compareFunction(Symbol f1, Symbol f2);

//output functions
void printFieldList(FieldList list);
void printType(Type type);
void printFunc(Func func);
void printSymbol(Symbol symbol);
void printTable();

#endif
