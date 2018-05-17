#include "common.h"

void sematicCheck(TreeNode *root) 
{
	Program(root);
	checkFunc();
}

void Program(TreeNode *p)
{
	if(p == NULL)	return;
	
	ExtDefList(p->childs[0]);
}

void ExtDefList(TreeNode *p)
{
	if(p == NULL)	return ;
	
	TreeNode *child = p->childs[0];
	if(child != NULL) {
		ExtDef(child);
		ExtDefList(p->childs[1]);
	}
}

void ExtDef(TreeNode *p)
{
	if(p == NULL)	return;

	if(p->nChild < 2)	return;

	TreeNode *specifier = p->childs[0];
	TreeNode *child1 = p->childs[1];
	Type type = Specifier(specifier);
	if(child1->nType == T_FunDec) {
		//specifier FunDec CompSt
		TreeNode *funDec = child1;
		TreeNode *compSt = p->childs[2];
		Symbol symbol = NULL;
		if(p->childs[2]->nType == T_CompSt) {
			symbol = FunDec(funDec, type, TRUE);
		}
		else {
			symbol = FunDec(funDec, type, FALSE);
		}
		symbol->lineno = p->lineno;
		Symbol s = searchTable(symbol->name);
		if(s != NULL) {
			if(s->kind == S_Func) {
				//compare function type 
				if(s->func->isDefined == 1 && symbol->func->isDefined == 1) {
					printf("Error type 4 at Line %d: Redefined function \"%s\".\n",
						funDec->lineno, symbol->name);
				}
				else if(compareFunction(s, symbol) == FALSE) {
					printf("Error type 19 at Line %d: Inconsistent declaration of function \"%s\".\n",
							funDec->lineno, symbol->name);
					return;
				}
				else if(s->func->isDefined == 0 && symbol->func->isDefined == 1) {
					s->func->isDefined = 1;		
				}
			}
		}
		else {
			int ret = insertTable(symbol);
			if(ret == 1) {
				printf("Error type 4 at Line %d: Redefined function \"%s\".\n",
						funDec->lineno, symbol->name);
			}
		}
		if(p->childs[2]->nType == T_CompSt) {
			curFunc = symbol->func;
			CompSt(p->childs[2]);
			curFunc = NULL;
		}
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
	TreeNode* varDec = p->childs[0];
	Symbol symbol =  VarDec(type, varDec);
	int ret = insertTable(symbol);
	if(ret == 1) {
		printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
				symbol->lineno, symbol->name);
	}

	if(p->nChild > 1) {
		ExtDecList(type, p->childs[2]);
	}
}

Type Specifier(TreeNode *specifier)
{
	TreeNode *child = specifier->childs[0];
	Type type = NULL;
	if(child->nType == T_Type) {
		type = malloc(sizeof(struct Type_));
		type->kind = BASIC;
		if(strcmp(child->ptr, "int") == 0)
			type->basic = B_INT;
		else if(strcmp(child->ptr, "float") == 0)
			type->basic = B_FLOAT;
		else {
			//printTree(specifier);
			ASSERT(0);
		}
	}
	else if(child->nType == T_StructSpecifier) {
		//TODO:genarate struct	
		type = StructSpecifier(specifier->childs[0]);
	}
	else
		ASSERT(0);
	
	return type;
}

Type StructSpecifier(TreeNode *p)
{
	FieldList structure = malloc(sizeof(struct FieldList_));	
	structure->name = NULL;
	structure->tail = NULL;
	structure->type = NULL;
	if(p->childs[1]->nType == T_Tag) {
		//TODO:its a declaraion, find in table		
		Symbol symbol = searchTable(p->childs[1]->childs[0]->ptr);
		if(symbol == NULL || symbol->kind != S_StrucDef) {
			//error:not defined structure
			printf("Error type 17 at Line %d: Undefined structure \"%s\".\n",
					p->childs[1]->childs[0]->lineno, p->childs[1]->childs[0]->ptr);
			return NULL;
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
		//PRINT_FIELD_LIST(structure);
		//structure->tail = DefList(p->childs[3], FALSE);
		DefList(p->childs[3], FALSE, structure);
		//PRINT_FIELD_LIST(structure);
		//checkStructure(structure->tail);

		Type type = malloc(sizeof(struct Type_));
		type->kind = STRUCTURE;
		type->structure = structure;
		//PRINT_TYPE(type);
		
		Symbol symbol = newTypeSymbol(S_StrucDef, structure->name, type);
		int ret = insertTable(symbol);
		if(ret == 1) {
			printf("Error type 16 at Line %d: Duplicated name \"%s\".\n",
					p->lineno, symbol->name);
		}
		
			
		return type;
	}
	
}

Symbol VarDec(Type type, TreeNode *p)
{
	TreeNode *child = p->childs[0];
	Symbol symbol = NULL;
	if(child->nType == T_Id) {
		symbol = newTypeSymbol(S_Type, child->ptr, type);
		symbol->lineno = p->lineno;
	}
	else if(child->nType == T_VarDec) {
		//array type
		Symbol childSymbol = VarDec(type, child);
		Type arrType = malloc(sizeof(struct Type_));
		arrType->kind = ARRAY;
		arrType->array.elem = childSymbol->type;
		arrType->array.size = p->childs[2]->iValue;
		symbol = newTypeSymbol(S_Type, childSymbol->name, arrType);
		//free(childSymbol);
	}
	else {
		ASSERT(0);
	}
	
	return symbol;	
}

Symbol FunDec(TreeNode *funDec, Type retType, BOOL isDef)
{
	Func funcType = malloc(sizeof(struct Func_));
	funcType->retType = retType;
	funcType->argList = NULL;
	if(isDef == TRUE)
		funcType->isDefined = 1;
	else 
		funcType->isDefined = 0;
	if(funDec->childs[2]->nType == T_VarList)
		funcType->argList = VarList(funDec->childs[2], isDef);
	Symbol symbol = newFuncSymbol(S_Func, funDec->childs[0]->ptr, funcType);
	
	return symbol;
}

FieldList VarList(TreeNode *varList, BOOL addTable)
{
	FieldList list = ParamDec(varList->childs[0], addTable);
	if(varList->nChild > 1) {
		list->tail = VarList(varList->childs[2], addTable);	
	}
	
	return list;
}

FieldList ParamDec(TreeNode *paramDec, BOOL addTable)
{
	Type type = Specifier(paramDec->childs[0]);
	Symbol symbol = VarDec(type, paramDec->childs[1]);
	if(addTable == TRUE) {
		int ret = insertTable(symbol);
		if(ret == 1) {
			printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
				symbol->lineno, symbol->name);
		}
	}
	FieldList list = malloc(sizeof(struct FieldList_));
	int len = strlen(symbol->name);
	list->name = malloc(len+1);
	strcpy(list->name, symbol->name);
	list->type = symbol->type;
	list->tail = NULL;
	//free(symbol);
	return list;
}


/*
 *------Statements------
*/
void CompSt(TreeNode *compSt)
{
	//FieldList fList = DefList(compSt->childs[1], TRUE);		
	FieldList fList = malloc(sizeof(struct FieldList_));
	fList->tail = NULL;
	fList->type = NULL;
	fList->name = NULL;
	DefList(compSt->childs[1], TRUE, fList);		
/*	for(; fList; fList=fList->tail) {
		Symbol symbol = newTypeSymbol(S_Type, fList->name, fList->type);
		int ret = insertTable(symbol);
		if(ret == 1) {
			//TODO:cant make sure lineno
			printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
					compSt->childs[1]->lineno, symbol->name);
		}
	}	
*/

	StmtList(compSt->childs[2]);
}

void StmtList(TreeNode *stmtList)
{
	if(stmtList == NULL)	return;
	
	if(stmtList->nChild == 2) {
		Stmt(stmtList->childs[0]);
		StmtList(stmtList->childs[1]);
	}
	
}

void Stmt(TreeNode *stmt)
{
	TreeNode *child = stmt->childs[0];
	Type type = NULL;
	switch(child->nType) {
		case T_Exp:
			Exp(child);
			break;
		case T_CompSt:
			CompSt(child);
			break;
		case T_Return:
			//TODO:check return type
			if(curFunc == NULL) {
				//undefined error: return in non-function area
				PRINT_ERROR(8, stmt->lineno, "Type mismatched for return.");
				ASSERT(0);	
			}
			if(compareType(curFunc->retType, Exp(stmt->childs[1])) == FALSE) {
				PRINT_ERROR(8, stmt->lineno, "Type mismatched for return.");
			}
			break;
		case T_If:
			type = Exp(stmt->childs[2]);
			if(type != NULL && (type->kind != BASIC || type->basic != B_INT)) {
				PRINT_ERROR(7, stmt->childs[2]->lineno, "Type mismatched for operands.\n");
			}
			Stmt(stmt->childs[4]);
			if(stmt->childs[6] != NULL && stmt->childs[6]->nType == T_Stmt )
				Stmt(stmt->childs[6]);
			break;
		case T_While:
			type = Exp(stmt->childs[2]);
			if(type != NULL && (type->kind != BASIC || type->basic != B_INT)) {
				PRINT_ERROR(7, stmt->childs[2]->lineno, "Type mismatched for operands.\n");
			}
			Stmt(stmt->childs[4]);
			break;
		default:
			ASSERT(0);
	}
	

}



/*
 *------Local Definitions------
*/
FieldList DefList(TreeNode *defList, BOOL addTable, FieldList list)
{
	
	if(defList == NULL)	return NULL;
	//FieldList list = 
	Def(defList->childs[0], addTable, list);
	//printFieldList(list);
	if(defList->nChild == 2) {
		FieldList tail = list;
		for(; tail->tail; tail=tail->tail);
		//tail->tail = 
		DefList(defList->childs[1], addTable, list);
	}

	//printFieldList(list);
	
	return list;
}

FieldList Def(TreeNode *def, BOOL addTable, FieldList list)
{
	
	Type type = Specifier(def->childs[0]);
	
	
	return DecList(def->childs[1], type, addTable, list);
}

FieldList DecList(TreeNode *decList, Type type, BOOL addTable, FieldList list)
{
	
	FieldList l = Dec(decList->childs[0], type, addTable, list);	
	if(decList->nChild == 3) {
		//l->tail = 
		DecList(decList->childs[2], type, addTable, list);
	}
	//printFieldList(list);
	
	return list;
}

FieldList Dec(TreeNode *dec, Type type, BOOL addTable, FieldList list)
{
	
	TreeNode *varDec = dec->childs[0];
	Symbol symbol = VarDec(type, varDec);
	if(addTable == TRUE) {
		int ret = insertTable(symbol);
		if(ret == 1) {
			printf("Error type 3 at Line %d: Redefined variable \"%s\".\n",
				symbol->lineno, symbol->name);
		}
	}
	FieldList l = malloc(sizeof(struct FieldList_));
	l->name = symbol->name;
	l->type = symbol->type;
	l->tail = NULL;
	FieldList tail = list;
	if(addTable == FALSE && tail != NULL) {
		while(tail->tail) {
			if(strcmp(tail->name, symbol->name) == 0) {
				printf("Error type 15 at Line %d: Redefined field \"%s\".\n",
						symbol->lineno, symbol->name);
			}
			tail = tail->tail;	
		}
		tail->tail = l;
	}
	if(dec->nChild == 3) {
		//TODO:handle exp
		Type rType = Exp(dec->childs[2]);
		if(compareType(type, rType) == FALSE) {
			PRINT_ERROR(5, dec->lineno, "Type mismatched for assignment.");
		}
		if(addTable == FALSE) {
			PRINT_ERROR(15, dec->lineno, "Illegal initializatio for structure filed");	
		}
	}

	
	return list;
}



/*
 **********Expressions*********
*/
Type Exp(TreeNode *exp)
{
	if(exp == NULL)	return NULL;
	
	TreeNode *first = exp->childs[0];
	TreeNode *second = exp->childs[1];
	TreeNode *third = exp->childs[2];
	Type lType = NULL;
	Type rType = NULL;
	switch(first->nType) {
		case T_Exp:
			lType = Exp(first);
			if(second->nType == T_Assignop) {
				if(lType != NULL && isLeftVar(first) == FALSE) {
					//PRINT_TYPE(lType);
					PRINT_ERROR(6, exp->lineno, "The left-hand side of an assignment must be a variable.");
					lType = NULL;
				}
				else {
					rType = Exp(third);
					if(lType != NULL && rType != NULL && compareType(lType, rType) == FALSE) {
						PRINT_ERROR(5, exp->lineno, "Type mismatched for assignment.");
						lType = NULL;
					}
				}	
				
			}
			else if(second->nType == T_And || second->nType == T_Or) {
				
				rType = Exp(third);
				if((lType != NULL && lType->kind != BASIC) || (rType != NULL && rType->kind != BASIC)) {
					PRINT_ERROR(7, exp->lineno, "Type mismatched for operands.");
					lType = NULL;
				}
			}
			else if(second->nType == T_Plus || second->nType == T_Minus
					|| second->nType == T_Star || second->nType == T_Div
					|| second->nType == T_Relop) {
				
				rType = Exp(third);
				if(lType != NULL && (lType->kind != BASIC || compareType(lType, rType) == FALSE)) {
					PRINT_ERROR(7, exp->lineno, "Type mismatched for operands.");
					lType = NULL;
				}
			}
			else if(second->nType == T_Lb) {
				//exp[exp]
				rType = Exp(third);
				if(lType->kind != ARRAY) {
					printf("Error type 10 at Line %d: variable is not an aaray.\n",
							first->lineno);
					lType = NULL;
				}
				else if(rType != NULL && (rType->kind != BASIC || rType->basic != B_INT)) {
					printf("Error type 12 at Line %d: array index is not an integer.\n",
							third->lineno);
					lType = NULL;
				}
				else {
					lType = lType->array.elem;
				}
			}
			else if(second->nType == T_Dot) {
				//exp.exp
				if(lType != NULL && lType->kind != STRUCTURE) {
					printf("Error type 13 at Line %d: Illegal use of \".\".\n",
							second->lineno);
				}
				else {
					//rType = Exp(third);
					char *name = third->ptr;
					rType = structureField(lType->structure, name);
					if(rType == NULL) {
						printf("Error type 14 at Line %d: Non-existent field \"%s\".\n",
								third->lineno, name);
						lType = NULL;
					}
					else {
						lType = rType;
					}
				}
			}
			else {
				ASSERT(0);
				return NULL;
			}		
			break;
	case T_Id:
			if(second == NULL) {
				
				Symbol symbol = searchTable(first->ptr);
				if(symbol == NULL) {
					printf("Error type 1 at Line %d: Undefined variale \"%s\".\n", 
							exp->lineno, first->ptr);
					lType = NULL;
				}
				else {
					if(symbol->kind == S_Func) 
						lType = symbol->func->retType;
					else
						lType = symbol->type;
				}
			}	
			else if(second->nType == T_Lp) {
				//function call
				Symbol func = searchTable(first->ptr);
				if(func == NULL) {
					printf("Error type 2 at Line %d: Undefined function \"%s\".\n",
							exp->lineno, first->ptr);
					lType = NULL;
				}
				else if(func->kind != S_Func) {
					printf("Error type 11 at Line %d: \"%s\" is not a function.\n",
							first->lineno, func->name);
					lType = NULL;
				}
				else {
					FieldList argList = NULL;
					lType = func->func->retType;
					if(third->nType == T_Args) {
						
						//with args
						argList = Args(exp->childs[2]);	
					}
					else {
						
						//without args
					}
					if(compareArgs(argList, func->func->argList) == FALSE) {
						printf("Error type 9 at Line %d: Function \"", first->lineno);
						printFuncType(func);
						//printType(func->func->retType);
						//printFieldList(func->func->argList);
						printf("\" is not applicable for arguments \"");
						printFieldList(argList);
						printf("\".\n");
					}
				}
			}
			break;
	case T_Int:
			lType = malloc(sizeof(struct Type_));
			lType->kind = BASIC;
			lType->basic = B_INT;
			break;
	case T_Float:
			lType = malloc(sizeof(struct Type_));
			lType->kind = BASIC;
			lType->basic = B_FLOAT;
			break;
	}
	
	//PRINT_TYPE(lType);
	return lType;
}


BOOL isLeftVar(TreeNode *p)
{
	//TODO:more specific type
	if(p == NULL)	return TRUE;
	
	//printTree(p);
	TreeNode *child = p->childs[0];
	if(p->nType == T_Id){
		Symbol symbol = searchTable(p->ptr);
		if(symbol != NULL && symbol->kind == S_Type)
		return TRUE;
	}
	else if(p->nType == T_Exp && (p->childs[0]->nType == T_Id)){
		Symbol symbol = searchTable(p->childs[0]->ptr);
		if(symbol != NULL && symbol->kind == S_Type)
		return TRUE;
	}
	else if(p->nType == T_Exp && p->childs[0]->nType == T_Exp 
		 && (p->childs[1]->nType == T_Lb || p->childs[1]->nType == T_Dot || p->childs[1]->nType == T_Id))
		return TRUE;
	else {
		//printTree(p);
	}
	return FALSE;
}


FieldList Args(TreeNode *args)
{
	FieldList list = malloc(sizeof(struct FieldList_));
	list->name = NULL;
	list->tail = NULL;
	if(args->nChild == 1) {
		list->type = Exp(args->childs[0]);
	}
	else if(args->nChild == 3) {
		list->type = Exp(args->childs[0]);
		list->tail = Args(args->childs[2]);
	}
	else {
		ASSERT(0);
	}
	return list; 
}


BOOL checkStructure(FieldList list)
{
	for(; list->tail; list=list->tail) {
		FieldList p = list->tail;
		for(; p; p=p->tail) 
			if(strcmp(list->name, p->name) == 0) {
				printf("Error type 15 at Line %d: Redefined field \"%s\".\n",
						1, p->name);
			}
	}	
	return TRUE;
}


BOOL checkFunc()
{
	int i;
	for(i=0; i < TABLE_SIZE; i++) {
		if(symbolTable[i] != NULL && symbolTable[i]->kind == S_Func) {
			if(symbolTable[i]->func->isDefined == 0) {
				printf("Error type 18 at Line %d: Undefined function \"%s\".\n",
						symbolTable[i]->lineno, symbolTable[i]->name);
			}
		}
	}	
}
