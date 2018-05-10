#ifndef _IR_H_
#define _IR_H_

typedef struct Operand_ *Operand;
struct Operand_ {
	enum {VARIABLE, CONSTANT, ADDRESS} kind;
	union {
		int var_no;
		int value;
	};
	
};

struct InterCode{
	enum {ASSIGN, ADD, SUM, MUL} kind;
	union {
		struct { Operand right, left;} assign;
		struct { Operand rlt, op1, op2;} binop;
	};
};
typedef struct InterCode InterCode;

struct InterCodes {
	struct InterCode code;
	struct InterCodes *prev, *next;
};
typedef struct InterCodes InterCodes;

InterCodes *addTail(InterCodes *head1, InterCodes *head2);

int newParm();
int newArg();
int newTemp();
int newLabel();


InterCodes *generate_ir(TreeNode *root);
InterCodes *translate_Program(TreeNode *program);
InterCodes *translate_ExtDefList(TreeNode *extDefList);
InterCodes *translate_ExtDef(TreeNode *extDef);
InterCodes *translate_ExtDecList(TreeNode *extDecList);
InterCodes *translate_VarDec(TreeNode *varDec);



#endif
