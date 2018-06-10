#ifndef _MIPS_H_
#define _MIPS_H_


typedef struct Reg {
	char name[8];
	Operand signList[32];
	int signSize;
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

#endif
