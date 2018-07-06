#ifndef _MIPS_H_
#define _MIPS_H_


typedef struct LocalVar_* LocalVar;
struct Reg_;
struct LocalVar_ {
	Operand op;
	struct Reg_ *reg;
	int offset;
	LocalVar next;
};


typedef struct Reg_ {
	char name[4];
	LocalVar varList;
	int lastUse;
	BOOL available;
} Reg;


typedef struct CPURegs {
	union {
		Reg reg[32];
		struct {
			Reg zero;
			Reg at;
			Reg v[2];
			Reg a[4];
			Reg t[10];
			Reg s[8];
			Reg k[2];
			Reg gp;
			Reg sp;
			Reg fp;
			Reg ra;
		};
	};
} CPURegs;


void generate_mips(InterCodes *head);

void printMips(char *format, ...);
#define printinMips(format, ...)	printMips("  "format, ##__VA_ARGS__)
#define printComment(format, ...)	printMips(format, ##__VA_ARGS__)

Reg *ensure_ref(Operand op);
Reg *ensure_rDeref(Operand op);

#endif
