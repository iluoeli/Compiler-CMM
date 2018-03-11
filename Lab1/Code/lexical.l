%{

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

\n		{printf("WARP\n");}
{ws}	{/*white space, do nothing*/}
0|([1-9][0-9]*)	{printf("INT\n");}
	/* (^-?[1-9]{digit}*)|0		{printf("INT\n");} */
^[+-]?([1-9]{digit}*\.?{digits}|{digits}\.)$		{printf("FLOAT\n");}
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
	if (argc > 1) {
		if (!(yyin = fopen(argv[1], "r"))) {
			perror(argv[1]);
			return 1;
		}
	}
	while(yylex() != 0);
	
	return 0;
}
