#ifndef _IR_OPT_H_
#define _IR_OPT_H_

#include "common.h"

#define SIGN_SIZE 32
#define MAP_SIZE 256

typedef struct DAGNode_* DAGNode;

struct DAGNode_
{
	BOOL isLeaf;
	IC_TYPE kind;		
	DAGNode signList[SIGN_SIZE];
	int signSize;
	Operand op;
	DAGNode left, right;
};

BOOL compareDAGNode(DAGNode node1, DAGNode node2);

void printMap();

#endif
