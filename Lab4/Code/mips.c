#include "common.h"

extern FILE *mips_out;
CPURegs cpu;

void printMips(char *format, ...)
{
	va_list varList;
	va_start(varList, format);
	vfprintf(mips_out, format, varList);
	va_end(varList);
	fprintf(mips_out, "\n");
}

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
			printMips("li %s, %d", cpu.t[i].name, op->value);	
		}
		else {
			ASSERT(0);
		}
		return &cpu.t[i];
	}
}

void gen_read_write(FILE *fp)
{
	printMips(".data");	
	printMips("_prompt: .asciiz \"Enter an integer:\"");	
	printMips("_ret: .asciiz \"\\n\"");	
	printMips(".globl main");	
	printMips(".text");	

	printMips("read:");
	printMips("li $v0, 4");
	printMips("la $a0, _prompt");
	printMips("syscall");
	printMips("li $v0, 5");
	printMips("syscall");
	printMips("jr $ra");

	printMips("\nwrite:");
	printMips("li $v0, 1");
	printMips("syscall");
	printMips("li $v0, 4");
	printMips("la $a0, _ret");
	printMips("syscall");
	printMips("move $v0, $0");
	printMips("jr $ra");
}

void prologue(FILE *fp)
{
	printMips("subu $sp, $sp, 4");
	printMips("sw $ra, 0($sp)");
	printMips("sw $fp, -4($sp)");
	printMips("addi $fp, $sp, 4");
}

void epilogue(FILE *fp)
{
	printMips("addi $sp, $sp, 4");
	printMips("jr $ra");
}

void generate_mips(InterCodes *head)
{
	initRegs();
	FILE *fp = stdout;	
	
	Reg *r1 = NULL;

	gen_read_write(fp);

	InterCodes *cur = head;
	while(cur) {
		switch(cur->code.kind) {
			case IC_FUNCTION:
				printMips("\n%s:", cur->code.binop.op1->name);
				/*TODO: reset*/
				prologue(fp);	
				break;
			case IC_WRITE:
				r1 = get_reg(cur->code.binop.op1);					
				printMips("move $a0, %s", r1->name);

				printMips("addi $sp, $sp, -4");
				printMips("jal write");
				break;
			case IC_RETURN:
				r1 = get_reg(cur->code.binop.op1);
				printMips("move $v0, %s", r1->name);
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




