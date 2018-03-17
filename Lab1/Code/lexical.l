/*
%locations
*/
%{
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
		return INT;}
0[xX][A-Fa-f0-9]+	{printf("INT(HEX)\n");
		yylval.pNode = createNode("INT", yylineno); 
		return INT;}
0[0-7]+		{printf("INT(OCT)\n");
		yylval.pNode = createNode("INT", yylineno); 
		return INT;}
	/* (^-?[1-9]{digit}*)|0		{printf("INT\n");} */
[+-]?{digits}(\.{digits})?([Ee][+-]?{digits})?	{printf("FLOAT(DEC)\n");
		yylval.pNode = createNode("FLOAT", yylineno); 
		return FLOAT;}
[+-]?([1-9]{digit}*\.?{digits}|{digits}\.)		{printf("FLOAT\n");
		yylval.pNode = createNode("FLOAT", yylineno); 
		return FLOAT;}
;		{printf("SEMI\n");
		yylval.pNode = createNode("SEMI", yylineno); 
		return SEMI;}
,		{printf("COMMA\n");
		yylval.pNode = createNode("COMMA", yylineno); 
		return COMMA;}
=		{printf("ASSIGNOP\n");
		yylval.pNode = createNode("ASSIGNOP", yylineno); 
		return ASSIGNOP;}
>|<|(>=)|(<=)|(==)|(!=)	{printf("RELOP\n");
		yylval.pNode = createNode("RELOP", yylineno); 
		return RELOP;}
\+		{printf("PLUS\n");
		yylval.pNode = createNode("PLUS", yylineno); 
		return PLUS;}
-		{printf("MINUS\n");
		yylval.pNode = createNode("MINUS", yylineno); 
		return MINUS;}
\*		{printf("STAR\n");
		yylval.pNode = createNode("STAR", yylineno); 
		return STAR;}
\/		{printf("DIV\n");
		yylval.pNode = createNode("DIV", yylineno); 
		return DIV;}
&&		{printf("AND\n");
		yylval.pNode = createNode("AND", yylineno); 
		return AND;}
"||"	{printf("OR\n");
		yylval.pNode = createNode("OR", yylineno); 
		return OR;}
\.		{printf("DOT\n");
		yylval.pNode = createNode("DOT", yylineno); 
		return DOT;}
!		{printf("NOT\n");
		yylval.pNode = createNode("NOT", yylineno); 
		return NOT;}
\(		{printf("LP\n"); 
		yylval.pNode = createNode("LP", yylineno); 
		return LP;}
\)		{printf("RP\n"); 
		yylval.pNode = createNode("RP", yylineno); 
		return RP;}
"["		{printf("LB\n");
		yylval.pNode = createNode("LB", yylineno); 
		return LB;} 
\]		{printf("RB\n"); 
		yylval.pNode = createNode("RB", yylineno); 
		return RB;}
\{		{printf("LC\n"); 
		yylval.pNode = createNode("LC", yylineno); 
		return LC;}
\}		{printf("RC\n"); 
		yylval.pNode = createNode("RC", yylineno); 
		return RC;}
"//"	{char c = input(); while (c != '\n') c = input();}
(int)|(float)	{printf("TYPE\n");
		yylval.pNode = createNode("TYPE", yylineno); 
		return TYPE;}
struct	{printf("STRUCT\n");
		yylval.pNode = createNode("STRUCT", yylineno); 
		return STRUCT;}
return	{printf("RETURN\n");
		yylval.pNode = createNode("RETURN", yylineno); 
		return RETURN;}
if		{printf("IF\n");
		yylval.pNode = createNode("IF", yylineno); 
		return IF;}
else	{printf("ELSE\n");
		yylval.pNode = createNode("ELSE", yylineno); 
		return ELSE;}
while	{printf("WHILE\n");
		yylval.pNode = createNode("WHILE", yylineno); 
		return WHILE;}
{letter_}({letter_}|{digit})*		{printf("ID\n");
		yylval.pNode = createNode("ID", yylineno); 
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
