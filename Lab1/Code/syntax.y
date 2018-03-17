%{
	#include <stdio.h>
	#include "TreeNode.h"
	int yylex();	
	struct TreeNode *root = NULL;
%}

/*declared types */

%union {
	int nType;
	struct TreeNode *pNode;
};


/*declared tokens */
%token <pNode> INT FLOAT
%token <pNode> ID
%token <pNode> SEMI COMMA
%token <pNode> ASSIGNOP
%token <pNode> RELOP
%token <pNode> PLUS MINUS STAR DIV AND OR 
%token <pNode> DOT
%token <pNode> NOT
%token <pNode> LP RP LB RB LC RC
%token <pNode> STRUCT RETURN IF ELSE WHILE
%token <pNode> UNDEF
%token <pNode> TYPE

/* declared non-terminals */
%type <pNode> Program ExtDefList ExtDef ExtDecList
%type <pNode> Specifier StructSpecifier OptTag Tag
%type <pNode> VarDec FunDec VarList ParamDec
%type <pNode> CompSt StmtList Stmt
%type <pNode> DefList Def DecList Dec
%type <pNode> Exp Args

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

Program : ExtDefList	{
		$$ = createNode("Program", $1->lineno); 
		root = $$;
		addChild($$, $1);
	}
	;
ExtDefList : ExtDef ExtDefList	{
		$$ = createNode("ExtDefList", $1->lineno);
	}
	|	{//null
	}
	;
ExtDef : Specifier ExtDecList SEMI	{
		$$ = createNode("ExtDef", $1->lineno); 
	}
	| Specifier SEMI	{
		$$ = createNode("ExtDef", $1->lineno); 
	}
	| Specifier FunDec CompSt	{
		$$ = createNode("ExtDef", $1->lineno); 
	}
	;
ExtDecList : VarDec	{
		$$ = createNode("ExtDecList", $1->lineno); 
	}
	| VarDec COMMA ExtDecList	{
		$$ = createNode("ExtDecList", $1->lineno); 
	}
	;

Specifier : TYPE	{
		$$ = createNode("Specifier", $1->lineno); 
	}
	| StructSpecifier	{
		$$ = createNode("Specifier", $1->lineno); 
	}
	;
StructSpecifier : STRUCT OptTag LC DefList RC	{
		$$ = createNode("StructSpecifier", $1->lineno); 
	}
	| STRUCT Tag	{
		$$ = createNode("StructSpecifier", $1->lineno); 
	}
	;
OptTag : ID	{
		$$ = createNode("", $1->lineno); 
	}
	|	{}
	;
Tag : ID	{}
 	;

VarDec : ID	{}
	| VarDec LB INT RB	{}
	;
FunDec : ID LP VarList RP{}
	| ID LP RP	{}
	;
VarList : ParamDec COMMA VarList	{}
	| ParamDec	{}
	;
ParamDec : Specifier VarDec	{}
	;

CompSt : LC DefList StmtList RC	{}
	;
StmtList : Stmt StmtList	{}
	|	{}
	;
Stmt : Exp SEMI	{}
	| CompSt	{}
	| RETURN Exp SEMI	{}
	| IF LP Exp RP Stmt ELSE Stmt	{}
	| WHILE LP Exp RP Stmt	{}
	;

DefList : Def DefList	{}
	| {}
	;
Def : Specifier DecList SEMI	{}
	;
DecList : Dec	{}
	| Dec COMMA DecList	{}
	;
Dec : VarDec	{}
	| VarDec ASSIGNOP Exp	{}
	;

Exp : Exp ASSIGNOP Exp	{}
	| Exp AND Exp	{}
	| Exp OR Exp	{}
	| Exp RELOP Exp	{}
	| Exp PLUS Exp	{}
	| Exp MINUS Exp	{}
	| Exp DIV Exp	{}
	| LP Exp RP		{}
	| MINUS Exp		{}
	| NOT Exp		{}
	| ID LP Args RP	{}
	| ID LP RP		{}
	| Exp LB Exp RB	{}
	| Exp DOT ID	{}
	| ID			{}
	| INT			{}
	| FLOAT			{}
	;
Args : Exp COMMA Args	{}
	| Exp			{}
	;

%%

#include "lex.yy.c"

/*
int main(int argc, char **argv)
{
	int i;
	if (argc > 1) {
		for(i = 1; i < argc; i++) {
			FILE *fp= fopen(argv[i], "r");
			if(!fp) {
				perror(argv[1]);
				return 1;
			}
			printf("parsering file %d......\n", i);
			yyrestart(fp);
			yyparse();
			fclose(fp);
			yylineno = 1;
		}
	}
	
	return 0;
}
*/
