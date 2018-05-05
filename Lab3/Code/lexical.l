/*
%locations
*/
%{
	#include <stdlib.h>
	#include "TreeNode.h"
	#include "syntax.tab.h"
	int yycolumn = 1;
	int nError = 0;
	int newLine = 0;
	
	#define YY_USER_ACTION \
	  yylloc.first_line = yylloc.last_line = yylineno;\
	  yylloc.first_column = yycolumn; \
	  yylloc.last_column = yycolumn + yyleng - 1; \
	  yycolumn += yyleng;
	  
%}

/*definitions*/
%option yylineno
delim	[ \t\r]
ws		{delim}+
digit	[0-9]
letter_	[_a-zA-Z]
digits	{digit}+
number	{digits}(\.{digits})?(E[+-]?{digit})?


%%

\n		{ yycolumn = 1;	newLine = 1;}
{ws}	{/*white space, do nothing*/}
0|([+-]?[1-9][0-9]*)	{
		yylval.pNode = createNode("INT", yylineno); 
		yylval.pNode->nType = T_Int;
		yylval.pNode->iValue = atoi(yytext);
		return INT;}
0[xX][A-Fa-f0-9]+	{
		yylval.pNode = createNode("INT", yylineno); 
		yylval.pNode->nType = T_Int;
		yylval.pNode->iValue = strtol(yytext, NULL, 16);
		return INT;}
0[0-7]+		{
		yylval.pNode = createNode("INT", yylineno); 
		yylval.pNode->nType = T_Int;
		yylval.pNode->iValue = strtol(yytext, NULL, 8);
		return INT;}
		/*
[+-]?({digits}*\.?{digits}|{digits}\.)([Ee][+-]?{digits})?	{
		yylval.pNode = createNode("FLOAT", yylineno); 
		yylval.pNode->nType = T_Float;
		yylval.pNode->fValue = atof(yytext);
		return FLOAT;}
		*/
[+-]?{digits}\.({digits})?([Ee][+-]?{digits})?	{
		yylval.pNode = createNode("FLOAT", yylineno); 
		yylval.pNode->nType = T_Float;
		yylval.pNode->fValue = atof(yytext);
		return FLOAT;}
[+-]?\.{digits}([Ee][+-]?{digits})?	{
		yylval.pNode = createNode("FLOAT", yylineno); 
		yylval.pNode->nType = T_Float;
		yylval.pNode->fValue = atof(yytext);
		return FLOAT;}
;		{
		yylval.pNode = createNode("SEMI", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Semi;
		return SEMI;}
,		{
		yylval.pNode = createNode("COMMA", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Comma;
		return COMMA;}
=		{
		yylval.pNode = createNode("ASSIGNOP", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Assignop;
		return ASSIGNOP;}
>|<|(>=)|(<=)|(==)|(!=)	{
		yylval.pNode = createNode("RELOP", yylineno); 
		yylval.pNode->nType = T_Relop;
		return RELOP;}
\+		{
		yylval.pNode = createNode("PLUS", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Plus;
		return PLUS;}
-		{
		yylval.pNode = createNode("MINUS", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Minus;
		return MINUS;}
"*"		{
		yylval.pNode = createNode("STAR", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Star;
		return STAR;}
\/		{
		yylval.pNode = createNode("DIV", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Div;
		return DIV;}
&&		{
		yylval.pNode = createNode("AND", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_And;
		return AND;}
"||"	{
		yylval.pNode = createNode("OR", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Or;
		return OR;}
\.		{
		yylval.pNode = createNode("DOT", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Dot;
		return DOT;}
!		{
		yylval.pNode = createNode("NOT", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Not;
		return NOT;}
\(		{ 
		yylval.pNode = createNode("LP", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Lp;
		return LP;}
\)		{ 
		yylval.pNode = createNode("RP", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Rp;
		return RP;}
"["		{
		yylval.pNode = createNode("LB", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Lb;
		return LB;} 
\]		{ 
		yylval.pNode = createNode("RB", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Rb;
		return RB;}
\{		{ 
		yylval.pNode = createNode("LC", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Lc;
		return LC;}
\}		{ 
		yylval.pNode = createNode("RC", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Rc;
		return RC;}
"//"	{char c = input(); while (c != EOF && c != '\n') c = input();}
"/*"	{	char c = input(); 
			while (c != EOF) {
				if(c == '*') {
					c = input();
					if(c == '/')
						break;
				}
				else
					c = input();
			}
		}
(int)|(float)	{
		yylval.pNode = createNode("TYPE", yylineno); 
		yylval.pNode->nType = T_Type;
		yylval.pNode->ptr = (char *)malloc(strlen(yytext));
		strncpy(yylval.pNode->ptr, yytext, strlen(yytext));
		yylval.pNode->ptr[strlen(yytext)] = '\0';
		return TYPE;}
struct	{
		yylval.pNode = createNode("STRUCT", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Struct;
		return STRUCT;}
return	{
		yylval.pNode = createNode("RETURN", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Return;
		return RETURN;}
if		{
		yylval.pNode = createNode("IF", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_If;
		return IF;}
else	{
		yylval.pNode = createNode("ELSE", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_Else;
		return ELSE;}
while	{
		yylval.pNode = createNode("WHILE", yylineno); 
		yylval.pNode->nType = T_Token;
		yylval.pNode->nType = T_While;
		return WHILE;}
{letter_}({letter_}|{digit})*		{
		yylval.pNode = createNode("ID", yylineno); 
		yylval.pNode->nType = T_Id;
		yylval.pNode->ptr = (char *)malloc(strlen(yytext));
		strncpy(yylval.pNode->ptr, yytext, strlen(yytext));
		yylval.pNode->ptr[strlen(yytext)] = '\0';
		return ID;}
0[xX][0-9a-zA-Z]+	{
            printf("#%d Error type A at Line %d: Illegal hexadecimal number \"%s\".\n",
            nError, yylineno, yytext);
            nError ++;	return INT;}
0[0-9a-zA-Z]+		{
            printf("#%d Error type A at Line %d: Illegal octal number \"%s\".\n",
            nError, yylineno, yytext);
            nError ++; return INT;}
.		{
			printf("#%d Error type A at Line %d: Mysterious characters \"%s\".\n",
			nError, yylineno, yytext);
			nError ++;}

%%

