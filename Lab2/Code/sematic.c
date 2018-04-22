#include "common.h"

void sematicCheck(TreeNode *root) 
{
	Program(root);
}

void Program(TreeNode *p)
{
	if(p == NULL)	return;
	LOG("in Program");
	ExtDefList(p->childs[0]);
}

void ExtDefList(TreeNode *p)
{
	if(p == NULL)	return ;
	LOG("in ExtDefList");
	TreeNode *child = p->childs[0];
	if(child != NULL) {
		ExtDef(child);
		ExtDefList(p->childs[1]);
	}
}

void ExtDef(TreeNode *p)
{
	if(p == NULL)	return;
	LOG("in ExtDef");	

	if(p->nChild < 2)	return;

	TreeNode *specifier = p->childs[0];
	TreeNode *child1 = p->childs[1];
	Type type = Specifier(specifier);
	if(child1->nType == T_FunDec) {
		//specifier FunDec CompSt
		TreeNode *funDec = child1;
		TreeNode *compSt = p->childs[2];
		Symbol symbol = FunDec(funDec, type);
		insertTable(symbol);
		CompSt(compSt);
	}
	else if(child1->nType == T_ExtDecList) {
		//Specifier ExtDecList ;
		ExtDecList(type, child1);	
	}
	else {
		//Specifier null ;
		//do nothing
	}
}

void ExtDecList(Type type, TreeNode *p)
{
	LOG("in ExtDecList");
	TreeNode* varDec = p->childs[0];
	Symbol symbol =  VarDec(type, varDec);
	insertTable(symbol);

	if(p->nChild > 1) {
		ExtDecList(type, p->childs[2]);
	}
}

Type Specifier(TreeNode *specifier)
{
	LOG("in Specifier");
	TreeNode *child = specifier->childs[0];
	Type type;
	if(child->nType == T_Type) {
		type = malloc(sizeof(struct Type_));
		type->kind = BASIC;
		if(strcmp(child->ptr, "int") == 0)
			type->basic = B_INT;
		else if(strcmp(child->ptr, "float") == 0)
			type->basic = B_FLOAT;
		else
			ASSERT(0);
	}
	else if(child->nType == T_StructSpecifier) {
		//TODO:genarate struct	
		type = StructSpecifier(specifier->childs[0]);
	}
	else
		ASSERT(0);
	LOG("leave Specifier");
	return type;
}

Type StructSpecifier(TreeNode *p)
{
	LOG("in StructSpecifier");
	FieldList structure = malloc(sizeof(struct FieldList_));	
	structure->name = NULL;
	structure->tail = NULL;
	structure->type = NULL;
	if(p->childs[1]->nType == T_Tag) {
		//TODO:its a declaraion, find in table		
		Symbol symbol = searchTable(p->childs[1]->childs[0]->ptr);
		if(symbol == NULL || symbol->kind != S_StrucDef) {
			//error:not defined structure
		}
		
		return symbol->type;
	}
	else {
		//structure definition, add to table
		TreeNode *optTag = p->childs[1];
		if(optTag != NULL) {
			int len = strlen(optTag->childs[0]->ptr);
			structure->name = malloc(len+1);
			strcpy(structure->name, optTag->childs[0]->ptr);
		}
		PRINT_FIELD_LIST(structure);
		structure->tail = DefList(p->childs[3]);
		LOG("1");
		printFieldList(structure);

		Type type = malloc(sizeof(struct Type_));
		type->kind = STRUCTURE;
		type->structure = structure;
		LOG("1");
		PRINT_TYPE(type);
		
		LOG("1");
		Symbol symbol = newTypeSymbol(S_StrucDef, structure->name, type);
		insertTable(symbol);
		LOG("add structure to table");
			
		return type;
	}
	LOG("leave StructSpecifier");
}

Symbol VarDec(Type type, TreeNode *p)
{
	LOG("in VarDec");
	TreeNode *child = p->childs[0];
	Symbol symbol;
	if(child->nType == T_Id) {
		symbol = newTypeSymbol(S_Type, child->ptr, type);
	}
	else if(child->nType == T_VarDec) {
		//array type
		Symbol childSymbol = VarDec(type, child);
		Type arrType = malloc(sizeof(struct Type_));
		arrType->kind = ARRAY;
		arrType->array.elem = childSymbol->type;
		arrType->array.size = p->childs[2]->iValue;
		symbol = newTypeSymbol(S_Type, childSymbol->name, arrType);
		free(childSymbol);
	}
	else {
		ASSERT(0);
	}
	LOG("leave VarDec");
	return symbol;	
}

Symbol FunDec(TreeNode *funDec, Type retType)
{
	LOG("in FunDec");
	Func funcType = malloc(sizeof(struct Func_));
	funcType->retType = retType;
	funcType->argList = NULL;
	if(funDec->childs[2]->nType == T_VarList)
		funcType->argList = VarList(funDec->childs[2]);
	funcType->isDefine = 1;
	Symbol symbol = newFuncSymbol(S_Func, funDec->childs[0]->ptr, funcType);
	return symbol;
}

FieldList VarList(TreeNode *varList)
{
	LOG("in VarList");
	FieldList list = ParamDec(varList->childs[0]);
	if(varList->nChild > 1) {
		list->tail = VarList(varList->childs[2]);	
	}
	return list;
}

FieldList ParamDec(TreeNode *paramDec)
{
	LOG("in ParamDec");
	Type type = Specifier(paramDec->childs[0]);
	Symbol symbol = VarDec(type, paramDec->childs[1]);
	FieldList list = malloc(sizeof(struct FieldList_));
	int len = strlen(symbol->name);
	list->name = malloc(len+1);
	strcpy(list->name, symbol->name);
	list->type = symbol->type;
	list->tail = NULL;
	free(symbol);
	return list;
}


/*
 *------Statements------
*/
void CompSt(TreeNode *compSt)
{
	FieldList fList = DefList(compSt->childs[1]);		
	for(; fList; fList=fList->tail) {
		Symbol symbol = newTypeSymbol(S_Type, fList->name, fList->type);
		insertTable(symbol);
	}	

	StmtList(compSt->childs[2]);
}

void StmtList(TreeNode *stmtList)
{

}

void Stmt(TreeNode *stmt)
{


}



/*
 *------Local Definitions------
*/
FieldList DefList(TreeNode *defList)
{
	LOG("in DefList");
	if(defList == NULL)	return NULL;
	FieldList list = Def(defList->childs[0]);
	printFieldList(list);
	if(defList->nChild == 2) {
		FieldList tail = list;
		for(; tail->tail; tail=tail->tail);
		tail->tail = DefList(defList->childs[1]);
	}

	printFieldList(list);
	LOG("leave DefList");
	return list;
}

FieldList Def(TreeNode *def)
{
	LOG("in Def");
	Type type = Specifier(def->childs[0]);
	
	LOG("leave Def");
	return DecList(def->childs[1], type);
}

FieldList DecList(TreeNode *decList, Type type)
{
	LOG("in DecList");
	FieldList list = Dec(decList->childs[0], type);	
	if(decList->nChild == 3) {
		list->tail = DecList(decList->childs[2], type);
	}
	printFieldList(list);
	LOG("leave DecList");
	return list;
}

FieldList Dec(TreeNode *dec, Type type)
{
	LOG("in Dec");
	TreeNode *varDec = dec->childs[0];
	Symbol symbol = VarDec(type, varDec);
	FieldList list = malloc(sizeof(struct FieldList_));
	list->name = symbol->name;
	list->type = symbol->type;
	list->tail = NULL;
	if(dec->nChild == 3) {
		//TODO:handle exp
	}

	LOG("leave Dec");
	return list;
}

