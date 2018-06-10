#include "common.h"


CPURegs cpu;

void initRegs()
{
	memset(&cpu, 0, sizeof(struct CPURegs));

	int i;
	for(i=0; i < 10; i++) {
		cpu.t[i].name[0] = '$';
		cpu.t[i].name[1] = 't';
		cpu.t[i].name[2] = '0' + i;
		cpu.t[i].available = TRUE;
	}
	
	for(i=0; i < 4; i++) {
		cpu.a[i].name[0] = '$';
		cpu.a[i].name[1] = 'a';
		cpu.a[i].name[2] = '0' + i;
		cpu.t[i].available = TRUE;
	}
	
	strcpy(cpu.ra.name, "$ra");
	strcpy(cpu.gp.name, "$ga");
	strcpy(cpu.sp.name, "$sp");
	strcpy(cpu.fp.name, "$fp");
}

Reg *get_reg(Operand op)
{
	int i;
	for(i=0; i < 10; i++) {
		if(cpu.t[i].available == FALSE)
			continue;
		cpu.t[i].available = FALSE;

		if(op->kind == CONSTANT) {
			fprintf(stdout, "li %s, %d\n", cpu.t[i].name, op->value);	
		}
		else {
			ASSERT(0);
		}
		return &cpu.t[i];
	}
}

void gen_ReadAndWrite(FILE *fp)
{
	fprintf(fp, ".data\n");	
	fprintf(fp, "_prompt: .asciiz \"Enter an integer:\"\n");	
	fprintf(fp, "_ret: .asciiz \"\\n\"\n");	
	fprintf(fp, ".globl main\n");	
	fprintf(fp, ".text\n");	

	fprintf(fp,"read:\n");
	fprintf(fp,"li $v0, 4\n");
	fprintf(fp,"la $a0, _prompt\n");
	fprintf(fp,"syscall\n");
	fprintf(fp,"li $v0, 5\n");
	fprintf(fp,"syscall\n");
	fprintf(fp,"jr $ra\n");

	fprintf(fp,"\nwrite:\n");
	fprintf(fp,"li $v0, 1\n");
	fprintf(fp,"syscall\n");
	fprintf(fp,"li $v0, 4\n");
	fprintf(fp,"la $a0, _ret\n");
	fprintf(fp,"syscall\n");
	fprintf(fp,"move $v0, $0\n");
	fprintf(fp,"jr $ra\n");
}

void prologue(FILE *fp)
{
	fprintf(fp, "subu $sp, $sp, 4\n");
	fprintf(fp, "sw $ra, 0($sp)\n");
	fprintf(fp, "sw $fp, -4($sp)\n");
	fprintf(fp, "addi $fp, $sp, 4\n");
}

void epilogue(FILE *fp)
{
	fprintf(fp, "addi $sp, $sp, 4\n");
	fprintf(fp, "jr $ra\n");
}

void generate_mips(InterCodes *head)
{
	initRegs();
	FILE *fp = stdout;	
	
	Reg *r1 = NULL;

	gen_ReadAndWrite(fp);

	InterCodes *cur = head;
	while(cur) {
		switch(cur->code.kind) {
			case IC_FUNCTION:
				fprintf(fp, "\n%s:\n", cur->code.binop.op1->name);
				/*TODO: reset*/
				prologue(fp);	
				break;
			case IC_WRITE:
				r1 = get_reg(cur->code.binop.op1);					
				fprintf(fp, "move $a0, %s\n", r1->name);

				fprintf(fp, "addi $sp, $sp, -4\n");
				fprintf(fp, "jal write\n");
				break;
			case IC_RETURN:
				r1 = get_reg(cur->code.binop.op1);
				fprintf(fp, "move $v0, %s\n", r1->name);
				epilogue(fp);
				break;
			case IC_LABEL:
			case IC_GOTO:	
			case IC_JL:		case IC_JG:
			case IC_JGE:	case IC_JLE:
			case IC_JE:		case IC_JNE:
			case IC_ASSIGN:
			case IC_ADD:	case IC_SUB:
			case IC_MUL:	case IC_DIV:
			case IC_DEC:	case IC_PARAM:
			case IC_CALL:	case IC_ARG:
			case IC_READ:	
			case IC_REF:	case IC_DEREF:
			default :
				ASSERT(1);
		}	


		cur = cur->next;
	}
}




