#include "common.h"


DAGNode nodeMap[MAP_SIZE];
int curSize = 0;


BOOL compareDAGNode(DAGNode node1, DAGNode node2)
{
	if(node1 == node2)	return TRUE;
	else if(!node1 || !node2)	return FALSE;
	//else if(node1->kind)

	return FALSE;
}

DAGNode findNode(Operand target)
{
	int i, j;
	DAGNode node;
	for(i=0; i < curSize; i++) {
		for(j=0; j < nodeMap[i]->signSize; j++) {
			node = nodeMap[i]->signList[j];
			//ASSERT(nodeMap[i]->signList[j]->isLeaf);
			if(compareOperand(target, node->op) == 0)
				return node;
		}
	}
	return NULL;
}


void insertTuple3(InterCode *code)
{
/*
 *z = x op y
 */

	DAGNode nodex, nodey, nodez, nodeop;
	nodex = nodey = nodez = nodeop = NULL;

	if(!(nodex=findNode(code->binop.op1))) {
			
	}
}


/*
 *战略性放弃构造DAG基本块优化
 */
InterCodes *opt_ir(InterCodes *head)
{
	InterCodes* start = head, *end;

	for(; start; start=start->next) {
		switch(start->code.kind) {
		case IC_ASSIGN:
		case IC_ADD:
		case IC_SUB:
		case IC_MUL:
		case IC_DIV:
			break;
		case IC_DEC:
		case IC_FUNCTION:
		case IC_PARAM:
		case IC_LABEL:
		case IC_RETURN:
		case IC_GOTO:
		case IC_CALL:
		case IC_ARG:
			break;
		case IC_JL:
		case IC_JG:
		case IC_JGE:	 
		case IC_JLE:
		case IC_JE:
		case IC_JNE:
			break;
		
		case IC_READ:
		case IC_WRITE:
		case IC_REF:
		case IC_DEREF:
			break;
		//default:
			
		}
	
	
	}
}


void printMap()
{
	int i=0, j;
	for(; i < curSize; i++) {
		printOperand(nodeMap[i]->op, stdout);	
		printf(": ");
		for(j=0; j < nodeMap[i]->signSize; j++) {
			printMap(nodeMap[i]->signList[j]);
		}
		printf("\n");
	}

}
