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
		yyrestart(input_fp);
		yyparse();
		fclose(input_fp);
		yylineno = 1;

		if(nError || !root) {
			return 0;
		}

#if LAB_STAGE == lab1
		printTree(root);
        return 0;
#endif

		initTable();
		preprocessTable();	
		sematicCheck(root);

#if LAB_STAGE == lab2
		deleteTree(root);
		clearTable();
        return 0;
#endif
		
		if(!nError && argc >= 3) {
			codes = generate_ir(root);
			test_ir(codes);

			FILE *fp = fopen(argv[2], "w");
			if(!fp) {
				perror(argv[2]);
				return 1;
			}

#if LAB_STAGE == lab3
    #ifdef OPTIMIZE_IR
			opt_codes = opt_ir(codes);
    #else
			opt_codes = codes;
            codes = NULL;
    #endif
			ir_out = fp;
			printInterCodes(opt_codes, fp);
			fclose(fp);
			clearInterCodes(codes);
			clearInterCodes(opt_codes);
		    deleteTree(root);
		    clearTable();
            return 0;
#else
            opt_codes = codes;
            codes = NULL;
#endif

#if LAB_STAGE == lab4
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
