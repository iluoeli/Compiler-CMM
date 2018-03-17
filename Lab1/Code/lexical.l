/*
%locations
*/
%{
	#include <stdlib.h>
	#include "TreeNode.h"
	#include "syntax.tab.h"
	int yycolumn = 1;
	/*
	#define YY_USER_ACTION \
	  yylloc.first_line = yylloc.last_line = yylineno;\
	  yylloc.first_colunm = yycolumn; \
	  yylloc.last_column = yycolumn + yyleng - 1; \
	  yycolumn += yyleng;
	  */
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

\n		{printf("WARP\n"); yycolumn = 1;}
{ws}	{/*white space, do nothing*/}
0|([+-]?[1-9][0-9]*)	{printf("INT\n");
		yylval.pNode = createNode("INT", yylineno); 
		yylval.pNode->nType = Int;
		yylval.pNode->iValue = atoi(yytext);
		return INT;}
0[xX][A-Fa-f0-9]+	{printf("INT(HEX)\n");
		yylval.pNode = createNode("INT", yylineno); 
		yylval.pNode->nType = Int;
		yylval.pNode->iValue = atoi(yytext);
		return INT;}
0[0-7]+		{printf("INT(OCT)\n");
		yylval.pNode = createNode("INT", yylineno); 
		yylval.pNode->nType = Int;
		yylval.pNode->iValue = atoi(yytext);
		return INT;}
	/* (^-?[1-9]{digit}*)|0		{printf("INT\n");} */
[+-]?{digits}(\.{digits})?([Ee][+-]?{digits})?	{printf("FLOAT(DEC)\n");
		yylval.pNode = createNode("FLOAT", yylineno); 
		yylval.pNode->nType = Float;
		yylval.pNode->iValue = atof(yytext);
		return FLOAT;}
[+-]?([1-9]{digit}*\.?{digits}|{digits}\.)		{printf("FLOAT\n");
		yylval.pNode = createNode("FLOAT", yylineno); 
		yylval.pNode->nType = Float;
		yylval.pNode->iValue = atof(yytext);
		return FLOAT;}
;		{printf("SEMI\n");
		yylval.pNode = createNode("SEMI", yylineno); 
		yylval.pNode->nType = Token;
		return SEMI;}
,		{printf("COMMA\n");
		yylval.pNode = createNode("COMMA", yylineno); 
		yylval.pNode->nType = Token;
		return COMMA;}
=		{printf("ASSIGNOP\n");
		yylval.pNode = createNode("ASSIGNOP", yylineno); 
		yylval.pNode->nType = Token;
		return ASSIGNOP;}
>|<|(>=)|(<=)|(==)|(!=)	{printf("RELOP\n");
		yylval.pNode = createNode("RELOP", yylineno); 
		yylval.pNode->nType = Relop;
		return RELOP;}
\+		{printf("PLUS\n");
		yylval.pNode = createNode("PLUS", yylineno); 
		yylval.pNode->nType = Token;
		return PLUS;}
-		{printf("MINUS\n");
		yylval.pNode = createNode("MINUS", yylineno); 
		yylval.pNode->nType = Token;
		return MINUS;}
\*		{printf("STAR\n");
		yylval.pNode = createNode("STAR", yylineno); 
		yylval.pNode->nType = Token;
		return STAR;}
\/		{printf("DIV\n");
		yylval.pNode = createNode("DIV", yylineno); 
		yylval.pNode->nType = Token;
		return DIV;}
&&		{printf("AND\n");
		yylval.pNode = createNode("AND", yylineno); 
		yylval.pNode->nType = Token;
		return AND;}
"||"	{printf("OR\n");
		yylval.pNode = createNode("OR", yylineno); 
		yylval.pNode->nType = Token;
		return OR;}
\.		{printf("DOT\n");
		yylval.pNode = createNode("DOT", yylineno); 
		yylval.pNode->nType = Token;
		return DOT;}
!		{printf("NOT\n");
		yylval.pNode = createNode("NOT", yylineno); 
		yylval.pNode->nType = Token;
		return NOT;}
\(		{printf("LP\n"); 
		yylval.pNode = createNode("LP", yylineno); 
		yylval.pNode->nType = Token;
		return LP;}
\)		{printf("RP\n"); 
		yylval.pNode = createNode("RP", yylineno); 
		yylval.pNode->nType = Token;
		return RP;}
"["		{printf("LB\n");
		yylval.pNode = createNode("LB", yylineno); 
		yylval.pNode->nType = Token;
		return LB;} 
\]		{printf("RB\n"); 
		yylval.pNode = createNode("RB", yylineno); 
		yylval.pNode->nType = Token;
		return RB;}
\{		{printf("LC\n"); 
		yylval.pNode = createNode("LC", yylineno); 
		yylval.pNode->nType = Token;
		return LC;}
\}		{printf("RC\n"); 
		yylval.pNode = createNode("RC", yylineno); 
		yylval.pNode->nType = Token;
		return RC;}
"//"	{char c = input(); while (c != '\n') c = input();}
(int)|(float)	{printf("TYPE\n");
		yylval.pNode = createNode("TYPE", yylineno); 
		yylval.pNode->nType = Type;
		yylval.pNode->ptr = (char *)malloc(strlen(yytext));
		strncpy(yylval.pNode->ptr, yytext, strlen(yytext));
		return TYPE;}
struct	{printf("STRUCT\n");
		yylval.pNode = createNode("STRUCT", yylineno); 
		yylval.pNode->nType = Token;
		return STRUCT;}
return	{printf("RETURN\n");
		yylval.pNode = createNode("RETURN", yylineno); 
		yylval.pNode->nType = Token;
		return RETURN;}
if		{printf("IF\n");
		yylval.pNode = createNode("IF", yylineno); 
		yylval.pNode->nType = Token;
		return IF;}
else	{printf("ELSE\n");
		yylval.pNode = createNode("ELSE", yylineno); 
		yylval.pNode->nType = Token;
		return ELSE;}
while	{printf("WHILE\n");
		yylval.pNode = createNode("WHILE", yylineno); 
		yylval.pNode->nType = Token;
		return WHILE;}
{letter_}({letter_}|{digit})*		{printf("ID\n");
		yylval.pNode = createNode("ID", yylineno); 
		yylval.pNode->nType = Id;
		yylval.pNode->ptr = (char *)malloc(strlen(yytext));
		strncpy(yylval.pNode->ptr, yytext, strlen(yytext));
		yylval.pNode->nType = Token;
		return ID;}
.		{printf("Error type A at line %d: Mysterious characters \'%s\'\n",
			yylineno, yytext);
		}

%%

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
			yylex();
			fclose(fp);
			yylineno = 1;
		}
	}
	
	return 0;
}
*/
