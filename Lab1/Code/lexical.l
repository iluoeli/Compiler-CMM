/*
%locations
*/
%{
	#include <stdlib.h>
	#include "TreeNode.h"
	#include "syntax.tab.h"
	int yycolumn = 1;
	 int nError = 0;
	
	#define YY_USER_ACTION \
	  yylloc.first_line = yylloc.last_line = yylineno;\
	  yylloc.first_column = yycolumn; \
	  yylloc.last_column = yycolumn + yyleng - 1; \
	  yycolumn += yyleng;
	  
%}

/*definitions*/
%option yylineno
delim	[ \t\n\r]
ws		{delim}+
digit	[0-9]
letter_	[_a-zA-Z]
digits	{digit}+
number	{digits}(\.{digits})?(E[+-]?{digit})?


%%

\n		{ yycolumn = 1;}
{ws}	{/*white space, do nothing*/}
0|([+-]?[1-9][0-9]*)	{
		yylval.pNode = createNode("INT", yylineno); 
		yylval.pNode->nType = Int;
		yylval.pNode->iValue = atoi(yytext);
		return INT;}
0[xX][A-Fa-f0-9]+	{
		yylval.pNode = createNode("INT", yylineno); 
		yylval.pNode->nType = Int;
		yylval.pNode->iValue = atoi(yytext);
		return INT;}
0[0-7]+		{
		yylval.pNode = createNode("INT", yylineno); 
		yylval.pNode->nType = Int;
		yylval.pNode->iValue = atoi(yytext);
		return INT;}
	/* (^-?[1-9]{digit}*)|0		{} */
[+-]?{digits}(\.{digits})?([Ee][+-]?{digits})?	{
		yylval.pNode = createNode("FLOAT", yylineno); 
		yylval.pNode->nType = Float;
		yylval.pNode->fValue = atof(yytext);
		return FLOAT;}
[+-]?([1-9]{digit}*\.?{digits}|{digits}\.)		{
		yylval.pNode = createNode("FLOAT", yylineno); 
		yylval.pNode->nType = Float;
		yylval.pNode->fValue = atof(yytext);
		return FLOAT;}
;		{
		yylval.pNode = createNode("SEMI", yylineno); 
		yylval.pNode->nType = Token;
		return SEMI;}
,		{
		yylval.pNode = createNode("COMMA", yylineno); 
		yylval.pNode->nType = Token;
		return COMMA;}
=		{
		yylval.pNode = createNode("ASSIGNOP", yylineno); 
		yylval.pNode->nType = Token;
		return ASSIGNOP;}
>|<|(>=)|(<=)|(==)|(!=)	{
		yylval.pNode = createNode("RELOP", yylineno); 
		yylval.pNode->nType = Relop;
		return RELOP;}
\+		{
		yylval.pNode = createNode("PLUS", yylineno); 
		yylval.pNode->nType = Token;
		return PLUS;}
-		{
		yylval.pNode = createNode("MINUS", yylineno); 
		yylval.pNode->nType = Token;
		return MINUS;}
\*		{
		yylval.pNode = createNode("STAR", yylineno); 
		yylval.pNode->nType = Token;
		return STAR;}
\/		{
		yylval.pNode = createNode("DIV", yylineno); 
		yylval.pNode->nType = Token;
		return DIV;}
&&		{
		yylval.pNode = createNode("AND", yylineno); 
		yylval.pNode->nType = Token;
		return AND;}
"||"	{
		yylval.pNode = createNode("OR", yylineno); 
		yylval.pNode->nType = Token;
		return OR;}
\.		{
		yylval.pNode = createNode("DOT", yylineno); 
		yylval.pNode->nType = Token;
		return DOT;}
!		{
		yylval.pNode = createNode("NOT", yylineno); 
		yylval.pNode->nType = Token;
		return NOT;}
\(		{ 
		yylval.pNode = createNode("LP", yylineno); 
		yylval.pNode->nType = Token;
		return LP;}
\)		{ 
		yylval.pNode = createNode("RP", yylineno); 
		yylval.pNode->nType = Token;
		return RP;}
"["		{
		yylval.pNode = createNode("LB", yylineno); 
		yylval.pNode->nType = Token;
		return LB;} 
\]		{ 
		yylval.pNode = createNode("RB", yylineno); 
		yylval.pNode->nType = Token;
		return RB;}
\{		{ 
		yylval.pNode = createNode("LC", yylineno); 
		yylval.pNode->nType = Token;
		return LC;}
\}		{ 
		yylval.pNode = createNode("RC", yylineno); 
		yylval.pNode->nType = Token;
		return RC;}
"//"	{char c = input(); while (c != '\n') c = input();}
(int)|(float)	{
		yylval.pNode = createNode("TYPE", yylineno); 
		yylval.pNode->nType = Type;
		yylval.pNode->ptr = (char *)malloc(strlen(yytext));
		strncpy(yylval.pNode->ptr, yytext, strlen(yytext));
		return TYPE;}
struct	{
		yylval.pNode = createNode("STRUCT", yylineno); 
		yylval.pNode->nType = Token;
		return STRUCT;}
return	{
		yylval.pNode = createNode("RETURN", yylineno); 
		yylval.pNode->nType = Token;
		return RETURN;}
if		{
		yylval.pNode = createNode("IF", yylineno); 
		yylval.pNode->nType = Token;
		return IF;}
else	{
		yylval.pNode = createNode("ELSE", yylineno); 
		yylval.pNode->nType = Token;
		return ELSE;}
while	{
		yylval.pNode = createNode("WHILE", yylineno); 
		yylval.pNode->nType = Token;
		return WHILE;}
{letter_}({letter_}|{digit})*		{
		yylval.pNode = createNode("ID", yylineno); 
		yylval.pNode->nType = Id;
		yylval.pNode->ptr = (char *)malloc(strlen(yytext));
		strncpy(yylval.pNode->ptr, yytext, strlen(yytext));
		return ID;}
.		{printf("Error type A at line %d: Mysterious characters \'%s\'\n",
			yylineno, yytext);
			nError ++;
		}

%%

