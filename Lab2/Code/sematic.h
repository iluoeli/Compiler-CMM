#ifndef _SEMATIC_H_
#define _SEMATIC_H_

#include "common.h"



//High-level 
void sematicCheck(TreeNode *);
void Program(TreeNode *p);
void ExtDefList(TreeNode *p);
void ExtDef(TreeNode *p);
void ExtDecList(Type type, TreeNode *p);

//Specifiers
Type Specifier(TreeNode *);
Type StructSpecifier(TreeNode *p);

//Declarators
Symbol VarDec(Type type, TreeNode *p);
Symbol FunDec(TreeNode *funcDec, Type retType, BOOL isdec);
FieldList VarList(TreeNode *varList, BOOL addTable);
FieldList ParamDec(TreeNode *paramDec, BOOL addTable);


//Statements
void CompSt(TreeNode *compSt);
void StmtList(TreeNode *stmtList);
void Stmt(TreeNode *stmt);



//Local Definitions
FieldList DefList(TreeNode *defList, BOOL addTable, FieldList list);
FieldList Def(TreeNode *def, BOOL addTable, FieldList list);
FieldList DecList(TreeNode *decList, Type type, BOOL addTable, FieldList list);
FieldList Dec(TreeNode *dec, Type type, BOOL addTable, FieldList list);

//Expressions
Type Exp(TreeNode *exp);
FieldList Args(TreeNode *args);


//other check functions
BOOL isLeftVar(TreeNode *p);
BOOL checkStructure(FieldList list);
BOOL checkFunc();


#endif


