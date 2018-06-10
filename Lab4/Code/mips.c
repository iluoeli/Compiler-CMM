#include "common.h"

extern FILE *mips_out;
CPURegs cpu;
LocalVar localVarList = NULL;
int fp_off = 0;

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

void add_var(LocalVar var)
{
	if(localVarList == NULL) {
		var->next = NULL;
		localVarList = var;
	}
	else {
		var->next = localVarList;
		localVarList = var;
	}
}

LocalVar get_var(Operand op)
{
	LocalVar var = localVarList;
	for(; var; var=var->next) {
		if(compareOperand(op, var->op) == TRUE) {
			break;
		}
	}
	return var;
}

LocalVar alloc_var(Operand op)
{
	LocalVar var = malloc(sizeof(struct LocalVar_));	
	memset(var, 0, sizeof(struct LocalVar_));
	var->op = op;
	fp_off += 4;
	var->offset	= fp_off;
	printMips("addi $sp, $sp, -4");

	add_var(var);

	return var;
}

void clear_reg(Reg *reg)
{
	reg->available = TRUE;
	
	/*
	while(reg->varList) {
		LocalVar var = reg->varList;
	}
	*/
	reg->varList = NULL;
}


void resetRegs()
{
	int i = 0;
	for(; i < 10; i++) {
		cpu.t[i].varList = NULL;
		cpu.t[i].available = TRUE;
	}
}

void clearVarList()
{
	LocalVar var;
	while(localVarList) {
		var = localVarList;
		localVarList = localVarList->next;
		free(var);
	}
}

Reg *alloc_reg(Operand op)
{
	int i;
	for(i=0; i < 10; i++) {
		if(cpu.t[i].available == FALSE)
			continue;
		cpu.t[i].available = FALSE;

		return &cpu.t[i];
	}
	
	/*TODO: choose an reg*/

	ASSERT(0);
	return NULL;
}

Reg *ensure(Operand op)
{
	Reg *reg = NULL;	
	if(op->kind == CONSTANT) {
		reg = alloc_reg(op);
		printMips("li %s, %d", reg->name, op->value);	
	}
	else if(op->kind == VARIABLE || op->kind == TEMP){
		LocalVar var = get_var(op);
		if(var == NULL) {
			var = alloc_var(op);
		}

		if(var->reg == NULL) {
			reg = alloc_reg(op);
			var->reg = reg;
			//printMips("lw %s, %d($fp)", reg->name, var->offset);
		}
		else {
			reg = var->reg;
		}
	}
	else {
		printOperand(op, stdout);
		ASSERT(0);
	}

	return reg;
}

void gen_read_write(FILE *fp)
{
	printMips(".data");	
	printMips("_prompt: .asciiz \"Enter an integer:\"");	
	printMips("_ret: .asciiz \"\\n\"");	
	printMips(".globl main");	
	printMips(".text");	

	printMips("read:");
	printMips("  li $v0, 4");
	printMips("  la $a0, _prompt");
	printMips("  syscall");
	printMips("  li $v0, 5");
	printMips("  syscall");
	printMips("  jr $ra");

	printMips("\nwrite:");
	printMips("  li $v0, 1");
	printMips("  syscall");
	printMips("  li $v0, 4");
	printMips("  la $a0, _ret");
	printMips("  syscall");
	printMips("  move $v0, $0");
	printMips("  jr $ra");
}

void prologue()
{
	/*FIXME: $fp位置可能是错误的*/
	printMips("subu $sp, $sp, 8");
	printMips("sw $ra, 4($sp)");
	printMips("sw $fp, 0($sp)");
	printMips("addiu $fp, $sp, 0");
}

void epilogue()
{
	printMips("addi, $sp, $fp, 0");
	printMips("lw $ra, 4($sp)");
	printMips("lw $fp, 0($sp)");
	printMips("addi $sp, $sp, 8");
	printMips("jr $ra");
}

void generate_mips(InterCodes *head)
{
	initRegs();
	FILE *fp = stdout;	
	
	Reg *r1, *r2, *r3;
	Operand rlt, op1, op2;

	gen_read_write(fp);

	InterCodes *cur = head;
	while(cur) {
		rlt = cur->code.binop.rlt;	
		op1 = cur->code.binop.op1;	
		op2=  cur->code.binop.op2;
		switch(cur->code.kind) {
			case IC_FUNCTION:
				/*TODO: reset*/
				resetRegs();
				clearVarList();

				printMips("\n%s:", cur->code.binop.op1->name);
				prologue();	
				break;
			case IC_WRITE:
				r1 = ensure(cur->code.binop.op1);					
				printMips("move $a0, %s", r1->name);
		
				printMips("addi $sp, $sp, -4");
				printMips("sw $ra, 0($sp)");
				printMips("jal write");
				printMips("lw $ra, 0($sp)");
				printMips("addi $sp, $sp, 4");
				break;
			case IC_RETURN:
				r1 = ensure(cur->code.binop.op1);
				printMips("move $v0, %s", r1->name);
				epilogue();
				break;
			case IC_ASSIGN:
				r1 = ensure(rlt);
				r2 = ensure(op1);
				printMips("move %s, %s", r1->name, r2->name);
				break;
			case IC_LABEL:
			case IC_GOTO:	
			case IC_JL:		case IC_JG:
			case IC_JGE:	case IC_JLE:
			case IC_JE:		case IC_JNE:
			case IC_ADD:
				r1 = ensure(rlt);
				r2 = ensure(op1);
				r3 = ensure(op2);
				printMips("add %s, %s, %s", r1->name, r2->name, r3->name);
				break;
			case IC_SUB:
				r1 = ensure(rlt);
				r2 = ensure(op1);
				r3 = ensure(op2);
				printMips("sub %s, %s, %s", r1->name, r2->name, r3->name);
				break;
			case IC_MUL:	
				r1 = ensure(rlt);
				r2 = ensure(op1);
				r3 = ensure(op2);
				printMips("mul %s, %s, %s", r1->name, r2->name, r3->name);
				break;
			case IC_DIV:
				r1 = ensure(rlt);
				r2 = ensure(op1);
				r3 = ensure(op2);
				printMips("div %s, %s, %s", r1->name, r2->name, r3->name);
				break;
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




