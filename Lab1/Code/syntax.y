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
		$$->nType = NonTerminal;
		addChild($$, $1);
		root = $$;
	}
	;
ExtDefList : ExtDef ExtDefList	{
		$$ = createNode("ExtDefList", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
ExtDef : Specifier ExtDecList SEMI	{
		$$ = createNode("ExtDef", $1->lineno); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Specifier SEMI	{
		$$ = createNode("ExtDef", $1->lineno); 
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| Specifier FunDec CompSt	{
		$$ = createNode("ExtDef", $1->lineno); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	;
ExtDecList : VarDec	{
		$$ = createNode("ExtDecList", $1->lineno); 
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| VarDec COMMA ExtDecList	{
		$$ = createNode("ExtDecList", $1->lineno); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	;

Specifier : TYPE	{
		$$ = createNode("Specifier", $1->lineno); 
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| StructSpecifier	{
		$$ = createNode("Specifier", $1->lineno); 
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	;
StructSpecifier : STRUCT OptTag LC DefList RC	{
		$$ = createNode("StructSpecifier", $1->lineno); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		$$->nType = NonTerminal;
	}
	| STRUCT Tag	{
		$$ = createNode("StructSpecifier", $1->lineno); 
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	;
OptTag : ID	{
		$$ = createNode("OptTag", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
Tag : ID	{
		$$ = createNode("Tag", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
 	;

VarDec : ID	{
		$$ = createNode("VarDec", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| VarDec LB INT RB	{
		$$ = createNode("VarDec", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	;
FunDec : ID LP VarList RP{
		$$ = createNode("FunDec", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	| ID LP RP	{
		$$ = createNode("FunDec", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	;
VarList : ParamDec COMMA VarList	{
		$$ = createNode("VarList", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| ParamDec	{
		$$ = createNode("VarList", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	;
ParamDec : Specifier VarDec	{
		$$ = createNode("ParamDec", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	;

CompSt : LC DefList StmtList RC	{
		$$ = createNode("CompSt", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	;
StmtList : Stmt StmtList	{
		$$ = createNode("StmtList", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
Stmt : Exp SEMI	{
		$$ = createNode("Stmt", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| CompSt	{
		$$ = createNode("Stmt", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| RETURN Exp SEMI	{
		$$ = createNode("Stmt", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| IF LP Exp RP Stmt ELSE Stmt	{
		$$ = createNode("Stmt", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		addChild($$, $6);
		addChild($$, $7);
		$$->nType = NonTerminal;
	}
	| WHILE LP Exp RP Stmt	{
		$$ = createNode("Stmt", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		$$->nType = NonTerminal;
	}
	| error SEMI	{
		
	}
	;

DefList : Def DefList	{
		$$ = createNode("DefList", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
Def : Specifier DecList SEMI	{
		$$ = createNode("Def", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	;
DecList : Dec	{
		$$ = createNode("DecList", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| Dec COMMA DecList	{
		$$ = createNode("DecList", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	;
Dec : VarDec	{
		$$ = createNode("Dec", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| VarDec ASSIGNOP Exp	{
		$$ = createNode("Dec", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	;

Exp : Exp ASSIGNOP Exp	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp AND Exp	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp OR Exp	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp RELOP Exp	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp PLUS Exp	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp MINUS Exp	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp DIV Exp	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| LP Exp RP		{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| MINUS Exp		{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| NOT Exp		{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| ID LP Args RP	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	| ID LP RP		{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp LB Exp RB	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	| Exp DOT ID	{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| ID			{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| INT			{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| FLOAT			{
		$$ = createNode("Exp", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	;
Args : Exp COMMA Args	{
		$$ = createNode("Args", $1->lineno);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp			{
		$$ = createNode("Args", $1->lineno);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
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
