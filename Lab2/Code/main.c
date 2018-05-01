#include <stdio.h>
#include "TreeNode.h"
#include "debug.h"
#include "sym_table.h"
#include "common.h"

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
			printf("\n\nparsering file: %s......\n", argv[i]);
			yyrestart(fp);
			yyparse();
			fclose(fp);
			yylineno = 1;

			//print tree
			if(!nError && root){
#if EN_PRINT_TREE
				printTree(root);
#endif
				initTable();
				sematicCheck(root);
				deleteTree(root);
				clearTable();
			}
			root = NULL;
			nError = 0;
		}
	}
	
	return 0;
}
