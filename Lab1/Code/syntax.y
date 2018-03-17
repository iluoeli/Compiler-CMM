%{
  #include <stdio.h>
  #include "TreeNode.h"
%}

/*declared types */
%union {
	int nType;
	TreeNode *pNode;
};

/*declared tokens */
%token <type_int> ADD SUB MUL DIV

/* declared non-terminals */
%type <type_double> Exp Factor Term

%right ASSIGNOP
%left OR
%left AND
%left RELOP
%left PLUS MINUS
%left STAR DIV
%right NOT
%left DOT
%left LC RC
%left LB RB 
%left LP RP
%nonassoc LOWER_THAN_ELSE
%nonassoc ELSE
%nonassoc STRUCT RETURN WHILE

%%

Program : ExtDefList {

	}
	;
ExtDefList : ExtDef ExtDefList
	| e
	;
ExtDef : Specifier ExtDecList SEMI
	| Specifier SEMI
	| Specifier FunDec CompSt
	;
ExtDecList : VarDec
	| VarDec COMMA ExtDecList
	;

Specifier : TYPE
	| StructSpecifier
	;
StructSpecifier : STRUCT OptTag LC DefList RC
	| STRUCT Tag
	;
OptTag : ID
	| e
	;
Tag : ID
 	;

VarDec : ID
	| VarDec LB INT RB
	;
FunDec : ID LP VarList RP
	| ID LP RP
	;
VarList : ParamDec COMMA VarList
	| ParamDec
	;
ParamDec : Specifier VarDec
	;

CompSt : LC DefList StmtList RC
	;
StmtList : Stmt StmtList
	| e
	;
Stmt : Exp SEMI
	| CompSt
	| RETURN Exp SEMI
	| IF LP Exp RP Stmt ELSE Stmt
	| WHILE LP Exp RP Stmt
	;

DefList : Def DefList
	| e
	;
Def : Specifier DecList SEMI
	;
DecList : Dec
	| Dec COMMA DecList
	;
Dec : VarDec
	| VarDec ASSIGNOP Exp
	;

Exp : Exp ASSIGNOP Exp
	| Exp AND Exp
	| Exp OR Exp
	| Exp RELOP Exp
	| Exp PLUS Exp
	| Exp MINUS Exp
	| Exp DIV Exp
	| LP Exp RP
	| MINUS Exp
	| NOT Exp
	| ID LP Args RP
	| ID LP RP
	| Exp LB Exp RB
	| Exp DOT ID
	| ID
	| INT
	| FLOAT
	;
Args : Exp COMMA Args
	| Exp
	;

