%{
	#include <stdio.h>
	#include <stdarg.h>
	#include "TreeNode.h"
	int yylex();	
//	void yyerror(const char *msg);
	void yyerror(char *pstr, ...);
	void syntaxError(const char *msg, int lineno);
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
		$$->nType = NonTerminal;
		addChild($$, $1);
		root = $$;
	}
	;
ExtDefList : ExtDef ExtDefList	{
		$$ = createNode("ExtDefList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
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
		$$->nType = NonTerminal;
	}
	| Specifier SEMI	{
		$$ = createNode("ExtDef", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| Specifier FunDec CompSt	{
		$$ = createNode("ExtDef", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| error SEMI {//error recovery
		nError ++;
		yyerror("Missing \";\"");
	}
	;
ExtDecList : VarDec	{
		$$ = createNode("ExtDecList", @$.first_line); 
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| VarDec COMMA ExtDecList	{
		$$ = createNode("ExtDecList", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	;

Specifier : TYPE	{
		$$ = createNode("Specifier", @$.first_line); 
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| StructSpecifier	{
		$$ = createNode("Specifier", @$.first_line); 
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	;
StructSpecifier : STRUCT OptTag LC DefList RC	{
		$$ = createNode("StructSpecifier", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		$$->nType = NonTerminal;
	}
	| STRUCT Tag	{
		$$ = createNode("StructSpecifier", @$.first_line); 
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| STRUCT OptTag error RC {//error handle
		nError ++;	
		yyerror("Missing \"{\"");
	}
	;
OptTag : ID	{
		$$ = createNode("OptTag", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
Tag : ID	{
		$$ = createNode("Tag", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
 	;

VarDec : ID	{
		$$ = createNode("VarDec", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| VarDec LB INT RB	{
		$$ = createNode("VarDec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	| VarDec LB error	{//error handle	
		nError ++;	
		yyerror("Missing \"]\"");
	}
	;
FunDec : ID LP VarList RP{
		$$ = createNode("FunDec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	| ID LP RP	{
		$$ = createNode("FunDec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| ID error RP {//error handle
		nError ++;	
		yyerror("Missing \")\"");
	}
	;
VarList : ParamDec COMMA VarList	{
		$$ = createNode("VarList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| ParamDec	{
		$$ = createNode("VarList", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	;
ParamDec : Specifier VarDec	{
		$$ = createNode("ParamDec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	;

CompSt : LC DefList StmtList RC	{
		$$ = createNode("CompSt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	;
StmtList : Stmt StmtList	{
		$$ = createNode("StmtList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| {//null
		$$ = NULL;
	}
	;
Stmt : Exp SEMI	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| CompSt	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| RETURN Exp SEMI	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| IF LP Exp RP Stmt %prec LOWER_THAN_ELSE	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		$$->nType = NonTerminal;
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
		$$->nType = NonTerminal;
	}
	| WHILE LP Exp RP Stmt	{
		$$ = createNode("Stmt", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		addChild($$, $5);
		$$->nType = NonTerminal;
	}
	| Exp error SEMI	{//error handle
		nError ++;
		yyerror("Missing \";\"");
		//syntaxError("Missing \";\"\n", @1.first_line);		
	}
	;

DefList : Def DefList	{
		$$ = createNode("DefList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
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
		$$->nType = NonTerminal;
	}
	| Specifier DecList error SEMI	{//error handle
		nError ++;
		yyerror("Missing \";\"");
		//syntaxError("Missing \";\"\n", @1.first_line);		
	}
	;
DecList : Dec	{
		$$ = createNode("DecList", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| Dec COMMA DecList	{
		$$ = createNode("DecList", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	;
Dec : VarDec	{
		$$ = createNode("Dec", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| VarDec ASSIGNOP Exp	{
		$$ = createNode("Dec", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	;

Exp : Exp ASSIGNOP Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp AND Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp OR Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp RELOP Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp PLUS Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp MINUS Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp STAR Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp DIV Exp	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| LP Exp RP		{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| MINUS Exp		{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| NOT Exp		{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		$$->nType = NonTerminal;
	}
	| ID LP Args RP	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	| ID LP RP		{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp LB Exp RB	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		addChild($$, $4);
		$$->nType = NonTerminal;
	}
	| Exp DOT ID	{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| ID			{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| INT			{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| FLOAT			{
		$$ = createNode("Exp", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	| Exp LB error RB	{//error handle 
		nError ++;
		yyerror("Missing \"]\"");
	}
	;
Args : Exp COMMA Args	{
		$$ = createNode("Args", @$.first_line);
		addChild($$, $1);
		addChild($$, $2);
		addChild($$, $3);
		$$->nType = NonTerminal;
	}
	| Exp			{
		$$ = createNode("Args", @$.first_line);
		addChild($$, $1);
		$$->nType = NonTerminal;
	}
	;

%%

#include "lex.yy.c"


void syntaxError(const char *msg, int lineno)
{
	printf("Error type B at line %d: %s\n",
			lineno, msg);
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
		fprintf(stderr, "Error type B at Line %d: ", yylineno);
		va_list varList;
		va_start(varList, pstr);
		vprintf(pstr, varList);
		va_end(varList);
		printf(".\n");
		newLine = 0;
	//}
}
