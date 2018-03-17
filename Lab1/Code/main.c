#include <stdio.h>
#include "TreeNode.h"

extern FILE *yyin;
extern int yylineno;
extern struct TreeNode *root;
extern int nError;
void yyrestart(FILE *);
void yyparse();


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
			printf("\n\nparsering file %d......\n", i);
			yyrestart(fp);
			yyparse();
			fclose(fp);
			yylineno = 1;

			//print tree
			if(!nError)
				printTree(root);
			root = NULL;
			nError = 0;
		}
	}
	
	return 0;
}
