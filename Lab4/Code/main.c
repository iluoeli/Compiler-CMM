#include <stdio.h>
#include "TreeNode.h"
#include "debug.h"
#include "sym_table.h"
#include "common.h"

extern FILE *yyin;
extern int yylineno;
extern struct TreeNode *root;
extern int nError;
InterCodes *codes = NULL;
InterCodes *opt_codes = NULL;
FILE *mips_out = NULL;
FILE *ir_out = NULL;
void yyrestart(FILE *);
void yyparse();


int main(int argc, char **argv)
{
	int i;
	if (argc >= 2) {
		FILE *input_fp= fopen(argv[1], "r");
		if(!input_fp) {
			perror(argv[1]);
			return 1;
		}
		//printf("\n\nparsering file: %s......\n", argv[i]);
		yyrestart(input_fp);
		yyparse();
		fclose(input_fp);
		yylineno = 1;

		//print tree
		if(nError || !root) {
			return 1;
		}
#if EN_PRINT_TREE
		printTree(root);
#endif
		initTable();
		preprocessTable();	
		sematicCheck(root);
		//printTable();
		
		if(!nError && argc >= 3) {
			codes = generate_ir(root);
			//printInterCodes(codes, NULL);
			test_ir(codes);
/*
			char fileName[128];
			strcpy(fileName, argv[i]);
			strcat(fileName, ".ir");
			FILE *fp = fopen(fileName, "w");
			ASSERT(fp);
			printInterCodes(codes, fp);
			fclose(fp);
*/
			/*
			if(argc < 3) {
				printf("./parser <input_file> <output_file>\n");
				return 1;
			}
			*/

			FILE *fp = fopen(argv[2], "w");
			if(!fp) {
				perror(argv[2]);
				return 1;
			}

#if LAB_STAGE == 3
			ir_out = fp;
#else
			ir_out = stdout;
#endif
			printInterCodes(codes, stdout);

#ifdef OPTIMIZE_IR
			opt_codes = opt_ir(codes);
			printInterCodes(opt_codes, ir_out);
			printInterCodes(opt_codes, NULL);
			printf("\n");
#else
			printInterCodes(codes, ir_out);
			printInterCodes(codes, stdout);
#endif

			//printInterCodes(opt_codes, NULL);
			printf("\n\n");

#if LAB_STAGE == 4
			mips_out = fp;
			generate_mips(opt_codes);
#endif

			fclose(fp);
			ir_out = NULL;
			mips_out = NULL;
			clearInterCodes(codes);
			clearInterCodes(opt_codes);
		}

		deleteTree(root);
		clearTable();
		root = NULL;
		nError = 0;
	}
	else {
		printf("./parser <input_file> <output_file>\n");
	}
	
	return 0;
}
