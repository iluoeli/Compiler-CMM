%locations
%option yylineno

%{
	int yycolunm = 1;
	#define YY_USER_ACTION \
	  yylloc.first_line = yylloc.last_line = yylineno;\
	  yylloc.first_colunm = yycolumn; \
	  yylloc.last_column = yycolumn + yyleng - 1; \
	  yycolumn += yyleng;
%}

/*definitions*/
delim	[ \t\n\r]
ws		{delim}+
digit	[0-9]
letter_	[_a-zA-Z]
digits	{digit}+
number	{digits}(\.{digits})?(E[+-]?{digit})?


%%

\n		{printf("WARP\n"); yycolumn = 1;}
{ws}	{/*white space, do nothing*/}
0|([+-]?[1-9][0-9]*)	{printf("INT\n");}
0[xX][A-Fa-f0-9]+	{printf("INT(HEX)\n");}
0[0-7]+		{printf("INT(OCT)\n");}
	/* (^-?[1-9]{digit}*)|0		{printf("INT\n");} */
[+-]?{digits}(\.{digits})?([Ee][+-]?{digits})?	{printf("FLOAT(DEC)\n");}
[+-]?([1-9]{digit}*\.?{digits}|{digits}\.)		{printf("FLOAT\n");}
;		{printf("SEMI\n");}
,		{printf("COMMA\n");}
=		{printf("ASSIGNOP\n");}
>|<|(>=)|(<=)|(==)|(!=)	{printf("RELOP\n");}
\+		{printf("PLUS\n");}
-		{printf("MINUS-\n");}
\*		{printf("STAR\n");}
\/		{printf("DIV\n");}
&&		{printf("AND\n");}
"||"	{printf("OR\n");}
\.		{printf("DOT\n");}
!		{printf("NOT\n");}
\(		{printf("LP\n"); }
\)		{printf("RP\n"); }
\[		{printf("LB\n");} 
\]		{printf("RB\n"); }
\{		{printf("LC\n"); }
\}		{printf("RC\n"); }
"//"	{char c = input(); while (c != '\n') c = input();}
(int)|(float)	{printf("TYPE\n");}
struct	{printf("STRUCT\n");}
return	{printf("RETURN\n");}
if		{printf("IF\n");}
else	{printf("ELSE\n");}
while	{printf("WHILE\n");}
{letter_}({letter_}|{digit})*		{printf("ID\n");}
.		{printf("Error type A at line %d: Mysterious characters \'%s\'\n",
			yylineno, yytext);
		}

%%

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
