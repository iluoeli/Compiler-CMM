%{
	#include <stdio.h>
	#include <stdarg.h>
	#include "TreeNode.h"
	int yylex();	
//	void yyerror(const char *msg);
	void yyerror(char *pstr, ...);
	void detailedMessage(const char *msg);
	struct TreeNode *root = NULL;
	extern int nError;
	extern int newLine;
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
		$$ = createNode("Program", @$.first_line); 
		$$->nType = T_NonTerminal;
		addChild($$, $1);
		root = $$;
	}
	;
ExtDefList : ExtDef ExtDefList	{
		$$ = createNode("ExtDefList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = T_NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
ExtDef : Specifier ExtDecList SEMI	{
		$$ = createNode("ExtDef", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Specifier SEMI	{
		$$ = createNode("ExtDef", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = T_NonTerminal;
	}
	| Specifier FunDec CompSt	{
		$$ = createNode("ExtDef", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| error SEMI {//error recovery
		nError ++;
		yyerror("Missing \";\"");
	}
	;
ExtDecList : VarDec	{
		$$ = createNode("ExtDecList", @$.first_line); 
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| VarDec COMMA ExtDecList	{
		$$ = createNode("ExtDecList", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	;

Specifier : TYPE	{
		$$ = createNode("Specifier", @$.first_line); 
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| StructSpecifier	{
		$$ = createNode("Specifier", @$.first_line); 
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	;
StructSpecifier : STRUCT OptTag LC DefList RC	{
		$$ = createNode("StructSpecifier", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		$$->nType = T_NonTerminal;
	}
	| STRUCT Tag	{
		$$ = createNode("StructSpecifier", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = T_NonTerminal;
	}
	| STRUCT OptTag error RC {//error handle
		yyerror("Missing \"{\"");
		nError ++;	
	}
	;
OptTag : ID	{
		$$ = createNode("OptTag", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
Tag : ID	{
		$$ = createNode("Tag", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
 	;

VarDec : ID	{
		$$ = createNode("VarDec", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| VarDec LB INT RB	{
		$$ = createNode("VarDec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = T_NonTerminal;
	}
	| VarDec LB error	{//error handle	
		yyerror("Missing \"]\"");
		nError ++;	
	}
	;
FunDec : ID LP VarList RP{
		$$ = createNode("FunDec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = T_NonTerminal;
	}
	| ID LP RP	{
		$$ = createNode("FunDec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| ID error RP {//error handle
		yyerror("Missing \"(\"");
		nError ++;	
	}
	;
VarList : ParamDec COMMA VarList	{
		$$ = createNode("VarList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| ParamDec	{
		$$ = createNode("VarList", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	;
ParamDec : Specifier VarDec	{
		$$ = createNode("ParamDec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = T_NonTerminal;
	}
	;

CompSt : LC DefList StmtList RC	{
		$$ = createNode("CompSt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = T_NonTerminal;
	}
	| LC error RC {
		nError ++;	
		//yyerror("Missing \"*\"");
	}
	;
StmtList : Stmt StmtList	{
		$$ = createNode("StmtList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = T_NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
Stmt : Exp SEMI	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = T_NonTerminal;
	}
	| CompSt	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| RETURN Exp SEMI	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| IF LP Exp RP Stmt %prec LOWER_THAN_ELSE	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		$$->nType = T_NonTerminal;
	}
	| IF LP Exp RP Stmt ELSE Stmt	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		addChild($$, $6);
		addChild($$, $7);
		$$->nType = T_NonTerminal;
	}
	| WHILE LP Exp RP Stmt	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		$$->nType = T_NonTerminal;
	}
	| Exp error SEMI	{//error handle
		yyerror("Missing \";\"");
		nError ++;
		//syntaxError("Missing \";\"\n", @1.first_line);		
	}
	;

DefList : Def DefList	{
		$$ = createNode("DefList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = T_NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
Def : Specifier DecList SEMI	{
		$$ = createNode("Def", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Specifier DecList error SEMI	{//error handle
		nError ++;
		//yyerror("Missing \";\"");
		//syntaxError("Missing \";\"\n", @1.first_line);		
	}
	;
DecList : Dec	{
		$$ = createNode("DecList", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| Dec COMMA DecList	{
		$$ = createNode("DecList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	;
Dec : VarDec	{
		$$ = createNode("Dec", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| VarDec ASSIGNOP Exp	{
		$$ = createNode("Dec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	;

Exp : Exp ASSIGNOP Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Exp AND Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Exp OR Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Exp RELOP Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Exp PLUS Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Exp MINUS Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Exp STAR Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Exp DIV Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| LP Exp RP		{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| MINUS Exp		{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = T_NonTerminal;
	}
	| NOT Exp		{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = T_NonTerminal;
	}
	| ID LP Args RP	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = T_NonTerminal;
	}
	| ID LP RP		{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Exp LB Exp RB	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = T_NonTerminal;
	}
	| Exp DOT ID	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| ID			{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| INT			{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| FLOAT			{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	| Exp LB error RB	{//error handle 
		yyerror("Missing \"]\"");
		nError ++;
	}
	;
Args : Exp COMMA Args	{
		$$ = createNode("Args", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = T_NonTerminal;
	}
	| Exp			{
		$$ = createNode("Args", @$.first_line);
		addChild($$, $1);
		$$->nType = T_NonTerminal;
	}
	;

%%

#include "lex.yy.c"


void detailedMessage(const char *msg)
{
	printf("(%s).\n", msg);
}

//let yyerror do nothing
/*
void yyerror(const char *msg)
{
}
*/

void yyerror(char *pstr, ...)
{
	//if(newLine) {
		//printf("Error type B at Line %d: ", yylineno);
		fprintf(stderr, "#%d Error type B at Line %d: ", nError, yylineno);
		va_list varList;
		va_start(varList, pstr);
		vprintf(pstr, varList);
		va_end(varList);
		printf(".\n");
		newLine = 0;
	//}
}
