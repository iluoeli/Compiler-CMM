#ifndef _SYM_TABLE_H_
#define _SYM_TABLE_H_


typedef struct Type_* Type;
typedef struct FieldList_* FieldList;
typedef struct Func_* Func;

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

struct Func {
	Type retType;
	FieldList argList;

};

#endif
