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
	
	for(i=0; i < 8; i++) {
		cpu.s[i].name[0] = '$';
		cpu.s[i].name[1] = 's';
		cpu.s[i].name[2] = '0' + i;
		cpu.s[i].available = TRUE;
	}

	for(i=0; i < 4; i++) {
		cpu.a[i].name[0] = '$';
		cpu.a[i].name[1] = 'a';
		cpu.a[i].name[2] = '0' + i;
		cpu.t[i].available = TRUE;
	}
	
	strcpy(cpu.zero.name, "$0");
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
	fp_off -= 4;
	var->offset	= fp_off;
	add_var(var);

	if(op->kind == VARIABLE) {
		printMips("subu $sp, $sp, 4\t\t#alloc for %s", op->name);
		//printComment("#alloc %s", op->name);
	}
	else if(op->kind == TEMP) {
		printMips("subu $sp, $sp, 4\t\t#alloc for temp%d", op->value);
		//printComment("#alloc temp%d", op->value);
	}
	else {
		printMips("subu $sp, $sp, 4\t\t#alloc for else", op->value);
	}



	return var;
}

LocalVar alloc_array(Operand op, int size)
{
	LocalVar var = malloc(sizeof(struct LocalVar_));	
	memset(var, 0, sizeof(struct LocalVar_));
	var->op = op;
	fp_off -= size;
	var->offset	= fp_off;
	add_var(var);
	
	printMips("subu $sp, $sp, %d\t\t#alloc for temp%d", size, op->value);

	return var;
}


void clear_reg(Reg *reg)
{
	if(reg == NULL)
		return ;
	reg->available = TRUE;
	
	
	while(reg->varList) {
		reg->varList->reg = NULL;
	}
	
	reg->varList = NULL;
}

void spill_reg(Reg *reg)
{
	LocalVar var = reg->varList;
	while(var) {
		if(var->op->kind == VARIABLE || var->op->kind == TEMP) {
			printMips("sw %s, %d($fp)", reg->name, var->offset);
		}
		var = var->next;
	}
	clear_reg(reg);
}

void free_cReg(Reg *reg)
{
	if(reg && (reg->varList == NULL
			|| (reg->varList && reg->varList->op->kind == CONSTANT))) {
		clear_reg(reg);
	}
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
	for(i=0; i < 8; i++) {
		if(cpu.s[i].available == FALSE)
			continue;
		cpu.s[i].available = FALSE;

		return &cpu.s[i];
	}
	
	/*TODO: choose an reg*/

	ASSERT(0);
	return NULL;
}

Reg *ensure(Operand op)
{
	Reg *reg = NULL;	
	if(op->kind == CONSTANT) {
		if(op->value == 0) {
			reg = &cpu.zero;
		}
		else {
			reg = alloc_reg(op);
			printMips("li %s, %d", reg->name, op->value);	
		}
	}
	else if(op->kind == VARIABLE || op->kind == TEMP){
		LocalVar var = get_var(op);
		if(var == NULL) {
			var = alloc_var(op);
			reg = alloc_reg(op);
			var->reg = reg;
			reg->varList = var;
		}
		else if(var->reg == NULL) {
			reg = alloc_reg(op);
			var->reg = reg;
			reg->varList = var;
			printMips("lw %s, %d($fp)", reg->name, var->offset);
		}
		else {
			reg = var->reg;
		}
	}
	else if(op->kind == REF) {
		reg = ensure_ref(op->op);
	}
	else if(op->kind == DEREF) {
		reg = ensure_rDeref(op->op);
	}
	else {
		printOperand(op, stdout);
		ASSERT(0);
	}

	return reg;
}

Reg *ensure_ref(Operand op)
{
	//printOperand(op, stdout);
	Reg *r = alloc_reg(NULL);
	LocalVar var = get_var(op);
	ASSERT(var);

	printMips("la %s, %d($fp)", r->name, var->offset);

	return r;
}

Reg *ensure_rDeref(Operand op)
{
	Reg *r1 = alloc_reg(NULL);
	Reg *r2 = ensure(op);

	printMips("lw %s, 0(%s)", r1->name, r2->name);

	return r1;
}

Reg *ensure_lDeref(Reg *r1, Reg *r2)
{
	/* *reg(rlt) := reg(x) op reg(y) 
	 * *(rlt) :=  reg(rlt)
	 */
	/*
	LocalVar var = get_var(rlt);
	if(var == NULL) {
		var = alloc_var(rlt);
	}
	*/
	printMips("sw %s, 0(%s)", r2->name, r1->name);	
	
	return r1;
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

	fp_off = 0;
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
	LocalVar var1, var2, var3;

	gen_read_write(fp);

	InterCodes *cur = head, *code = NULL;
	int i = 0, j = 0;
	while(cur) {
		rlt = cur->code.binop.rlt;	
		op1 = cur->code.binop.op1;	
		op2=  cur->code.binop.op2;
		switch(cur->code.kind) {
			case IC_FUNCTION:
				resetRegs();
				clearVarList();

				printMips("\n%s:", cur->code.binop.op1->name);
				prologue();	

				/*param*/
				i = 0;
				while(cur->next && cur->next->code.kind == IC_PARAM) {
					cur = cur->next;
					if(i < 4) {
						LocalVar var = alloc_var(cur->code.binop.op1); 
						var->reg = &cpu.a[i];
					}
					else {
						//Reg *reg = ensure(cur->code.binop.op1);
						LocalVar var = malloc(sizeof(struct LocalVar_));
						memset(var, 0, sizeof(struct LocalVar_));
						var->op = cur->code.binop.op1;
						var->offset = (3 + i-4) * 4; 
						add_var(var);
						//printMips("lw %s, %d($fp)", reg->name, (i-1)*4);
					}
					i++;
				}	
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
			case IC_READ:	
				r1 = ensure(rlt);

				printMips("addi $sp, $sp, -4");
				printMips("sw $ra, 0($sp)");
				printMips("jal read");
				printMips("lw $ra, 0($sp)");
				printMips("addi $sp, $sp, 4");

				printMips("move %s, $v0", r1->name);
				//spill_reg(r1);
				break;
			case IC_RETURN:
				r1 = ensure(cur->code.binop.op1);
				printMips("move $v0, %s", r1->name);
				epilogue();
				break;
			case IC_ASSIGN:
				if(rlt->kind == DEREF) {	
					r1 = ensure(rlt->op);
					r2 = ensure(op1);
					ensure_lDeref(r1, r2);
				}
				else {
					r1 = ensure(rlt);
					r2 = ensure(op1);
					printMips("move %s, %s", r1->name, r2->name);
					free_cReg(r2);
				}
				break;
			case IC_ADD:
				if(rlt->kind == DEREF) {
				//r1 = (rlt->kind == DEREF) ?  : ensure(rlt);
					r1 = alloc_reg(NULL);
					r2 = ensure(op1);
					r3 = ensure(op2);
					printMips("add %s, %s, %s", r1->name, r2->name, r3->name);
				
					Reg *r4 = ensure(rlt->op);
					ensure_lDeref(r4, r1);
					free_cReg(r1);
				}
				else {
					r1 = ensure(rlt);
					r2 = ensure(op1);
					r3 = ensure(op2);
					printMips("add %s, %s, %s", r1->name, r2->name, r3->name);
				}
				free_cReg(r2);
				free_cReg(r3);
				break;
			case IC_SUB:
				r1 = ensure(rlt);
				r2 = ensure(op1);
				r3 = ensure(op2);
				printMips("sub %s, %s, %s", r1->name, r2->name, r3->name);

				free_cReg(r2);
				free_cReg(r3);
				break;
			case IC_MUL:	
				r1 = ensure(rlt);
				r2 = ensure(op1);
				r3 = ensure(op2);
				printMips("mul %s, %s, %s", r1->name, r2->name, r3->name);

				free_cReg(r2);
				free_cReg(r3);
				break;
			case IC_DIV:
				r1 = ensure(rlt);
				r2 = ensure(op1);
				r3 = ensure(op2);
				printMips("div %s, %s, %s", r1->name, r2->name, r3->name);

				free_cReg(r2);
				free_cReg(r3);
				break;
			case IC_LABEL:
				printMips("label%d:", op1->value);
				break;
			case IC_GOTO:	
				printMips("j label%d", op1->value);
				break;
			case IC_JL:
				r1 = ensure(op1);
				r2 = ensure(op2);
				printMips("blt %s, %s, label%d", r1->name, r2->name, rlt->value);
				break;
			case IC_JG:
				r1 = ensure(op1);
				r2 = ensure(op2);
				printMips("bgt %s, %s, label%d", r1->name, r2->name, rlt->value);
				break;
			case IC_JGE:	
				r1 = ensure(op1);
				r2 = ensure(op2);
				printMips("bge %s, %s, label%d", r1->name, r2->name, rlt->value);
				break;
			case IC_JLE:
				r1 = ensure(op1);
				r2 = ensure(op2);
				printMips("ble %s, %s, label%d", r1->name, r2->name, rlt->value);
				break;
			case IC_JE:
				r1 = ensure(op1);
				r2 = ensure(op2);
				printMips("beq %s, %s, label%d", r1->name, r2->name, rlt->value);
				break;
			case IC_JNE:
				r1 = ensure(op1);
				r2 = ensure(op2);
				printMips("bne %s, %s, label%d", r1->name, r2->name, rlt->value);
				break;
			case IC_CALL:	
				/*put arg0-arg3 to $a0-$a3
				 *put arg4~ to stack 
				 */
				j = 0;
				code = cur->prev;
				/*NOTE: have to cnt arg nr first*/
				while(code && code->code.kind == IC_ARG) {
					j++;
					code = code->next;
				}
				i = 0;
				code = cur->prev;
				while(code && code->code.kind == IC_ARG) {
					if(i < 4) {
						Reg *reg = ensure(code->code.binop.op1);
						printMips("move $a%d, %s", i, reg->name);			
					}
					else if(i == 4) {
						printMips("subu $sp, $sp, %d\t\t#alloc for arg4~", (j-3)*4);
						Reg *reg = ensure(code->code.binop.op1);
						printMips("sw %s, 0($sp)", reg->name);
					}
					else {
						Reg *reg = ensure(code->code.binop.op1);
						printMips("sw %s, %d($sp)", reg->name, (i-4)*4);
					}
					code = code->prev;
					i++;
				}

				printMips("addi $sp, $sp, -4");
				printMips("sw $ra, 0($sp)");
				printMips("jal %s", op1->name);
				printMips("lw $ra, 0($sp)");
				printMips("addi $sp, $sp, 4");

				/*NOTE: must ensure(rlt) there, or make stack chaos*/
				r1 = ensure(rlt);
				printMips("move %s, $v0", r1->name);
				
				break;
			case IC_PARAM:
				/*it should be handled in case IC_FUNCTION,
				 *for param number may bigger than 4
				 */
				ASSERT(0);
				break;
			case IC_ARG:
				/*handle in case CALL*/
				break;
			case IC_DEC:
				alloc_array(op1, op2->value);	
				break;
			case IC_REF:	
				/*TODO: improment*/
				ASSERT(0);
				r1 = ensure_ref(op1);	
				r2 = ensure(rlt);
				printMips("move %s, %s", r2->name, r1->name);
				break;
			case IC_DEREF:
				/*should not be in here*/
				ASSERT(0);
			default :
				ASSERT(0);
		}	


		cur = cur->next;
	}
}




