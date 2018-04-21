#ifndef _SYM_TABLE_H_
#define _SYM_TABLE_H_


typedef struct Type_* Type;
typedef struct FieldList_* FieldList;
typedef struct Func_* Func;
typedef struct Symbol_* Symbol;

struct Type_ {
	enum {BASIC, ARRAY, STRUCTURE} kind;
	union {
		int basic;
		struct {
			Type elem;
			int size;
		} array;
		FieldList structure;
	} u;
};

struct FieldList_ {
	char *name;
	Type type;
	FieldList tail;
};

struct Func_ {
	char *name;
	Type retType;
	FieldList argList;
	int isDefine;
};

struct Symbol_ {
	enum {S_Type, S_Func} kind;	
	char *name;
	union {
		Type type;
		Func func;
	} u;
	Symbol next;
};


#define TABLE_SIZE 0x3fff

#endif
