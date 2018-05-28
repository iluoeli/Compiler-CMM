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

BOOL existSign(DAGNode node, Operand op)
{
	if(node == NULL)	return FALSE;
	int i;
	for(i=0; i < node->signSize; i++) {
		if(TRUE == compareOperand(op, node->signList[i]))
			return TRUE;
	}
	
	return FALSE;
}

DAGNode findSign(Operand target)
{
	int i, j;
	Operand op;
	for(i=0; i < curSize; i++) {
		for(j=0; j < nodeMap[i]->signSize; j++) {
			op = nodeMap[i]->signList[j];
			//ASSERT(nodeMap[i]->signList[j]->isLeaf);
			if(compareOperand(target, op) == TRUE) {
				//if(!node->isLeaf) continue;
				return nodeMap[i];
			}
		}
	}
	printf("not find sign: ");
	printOperand(target, stdout);
	printf("\n");
	return NULL;
}

DAGNode findLeaf(Operand target) 
{
	int i;
	for(i=0; i < curSize; i++) {
		if(nodeMap[i]->isLeaf && compareOperand(target, nodeMap[i]->op) == TRUE)
			return nodeMap[i];
	}
	printf("not find leaf: ");
	printOperand(target, stdout);
	printf("\n");
	return NULL;
}

DAGNode findOp(IC_TYPE kind, Operand op1, Operand op2)
{
	int i;
	DAGNode node;
	for(i=0; i < curSize; i++) {
		node = nodeMap[i];
		if(node->isLeaf==FALSE && node->kind == kind
			&& existSign(node->left, op1)
			&& existSign(node->right, op2))
			return node;
	}
	return NULL;
}

void removeSign(DAGNode node, Operand op)
{
	int i;
	for(i=0; i < node->signSize; i++) {
		if(compareOperand(op, node->signList[i]) == 0) {
			int j;
			for(j=i; j < node->signSize-1; j++) {
				node->signList[j] = node->signList[i+1];
			}
			node->signSize--;
			break;
		}
	}
}

DAGNode createDAGNode(Operand op, BOOL isWrite)
{
	DAGNode node = malloc(sizeof(struct DAGNode_));	
	memset(node, 0, sizeof(struct DAGNode_));

	/*op is written*/
	if(!isWrite) {
		node->isLeaf = TRUE;	
		node->op = op;
	}
	else {
		ASSERT(0);
	}
	
	nodeMap[curSize++] = node; 

	return node;
}

DAGNode insertNode(Operand op, BOOL isWrite)
{
	/*
	DAGNode node = findNode(op, isWrite);
	if(node == NULL) {
		node = createDAGNode();	
	}
	*/
	/*create new DAGNode for Leaf*/
	LOG("insertNode");
	DAGNode node = NULL;
	if(!isWrite) {
		node = createDAGNode(op, isWrite);
	}
	else {
		ASSERT(0);
	}
	
	return node;
}



void insertTuple3(InterCode *code)
{
	/*
	 *z = x op y
	 */
	DAGNode nodex, nodey, nodez, nodeop;
	nodex = nodey = nodez = nodeop = NULL;

	/*首先在DAGNode的关联符号中寻找*/
	if(!(nodex=findSign(code->binop.op1))) {
		/*在叶子节点中找*/
		if(!(nodex=findLeaf(code->binop.op1))) {
			nodex = insertNode(code->binop.op1, FALSE);	
		}		
	}
	ASSERT(nodex != NULL);

	if(code->binop.op2 != NULL) {
	if(!(nodey=findSign(code->binop.op2))) {
		if(!(nodey=findLeaf(code->binop.op2))) {
			nodey = insertNode(code->binop.op2, FALSE);	
		}		
	}
	}

	if(code->binop.rlt != NULL) {
	nodez = findSign(code->binop.rlt);
	if(nodez) {
		removeSign(nodez, code->binop.rlt);	
	}
	}

	if(code->kind == IC_ASSIGN) {
		nodex->signList[nodex->signSize++] = code->binop.rlt;
	}
	else {
	nodeop = findOp(code->kind, code->binop.op1, code->binop.op2);
	if(!nodeop) {
		nodeop = malloc(sizeof(struct DAGNode_));
		memset(nodeop, 0, sizeof(struct DAGNode_));
		nodeop->kind = code->kind;
		nodeop->left = nodex;
		nodeop->right = nodey;
		nodeMap[curSize++] = nodeop;
		if(code->binop.rlt)
			nodeop->signList[nodeop->signSize++] = code->binop.rlt;	
	}
	else {
		nodeop->signList[nodeop->signSize++] = code->binop.rlt;
	}
	}
}


InterCodes *DAG2ir()
{
	InterCodes *head = NULL;
	int i, j;
	for(i=0; i < curSize; i++) {
		DAGNode node = nodeMap[i];
		if(nodeMap[i]->isLeaf)
			continue;
		int cnt = 0;
		for(j=0; j < node->signSize; j++) {
			Operand sign = node->signList[j];
			/*NOTE: every inner node must be related to a variable*/
			if(sign->kind == VARIABLE) {
				if(cnt > 0) {
					InterCodes *code = newIC(IC_ASSIGN, sign, node->activeNode, NULL);
					ADD_TAIL(head, code);
				}
				else {
					Operand left=NULL, right=NULL;
					if(node->left) {
						if(node->left->isLeaf) {
							left = node->left->op;
						}
						else {
							left = node->left->activeNode;	 
						}
					}
					if(node->right) {
						if(node->right->isLeaf) {
							right = node->right->op;
						}
						else {
							right = node->right->activeNode;	 
						}
					}
					InterCodes *code = newIC(node->kind, sign, left, right);
					ADD_TAIL(head, code);
					node->activeNode = sign;
				}
				cnt ++;
			}
		}
		if(cnt == 0 && node->signSize > 0) {
			ASSERT(0);	
		}
	}
	printInterCodes(head, stdout);
	return head;
}

InterCodes *opt_ir(InterCodes *head)
{
	InterCodes* start = head, *end;

	for(; start; start=start->next) {
		switch(start->code.kind) {
			/*tuple3*/
			case IC_ADD:
			case IC_SUB:
			case IC_MUL:
			case IC_DIV:
			/*tuple2*/
			case IC_ASSIGN:
			case IC_DEC:
			case IC_FUNCTION:
			case IC_PARAM:
			case IC_LABEL:
			case IC_RETURN:
			case IC_GOTO:
			case IC_CALL:
			case IC_ARG:
			case IC_JL:
			case IC_JG:
			case IC_JGE:	 
			case IC_JLE:
			case IC_JE:
			case IC_JNE:
			
			case IC_READ:
			case IC_WRITE:
			case IC_REF:
			case IC_DEREF:
				insertTuple3(&start->code);
				printMap();
				printf("\n\n");
			//default:
				
		}
	
	
	}
	DAG2ir();
}


void printMap()
{
	int i=0, j;
	for(; i < curSize; i++) {
		if(nodeMap[i]->isLeaf == TRUE) {
			printf("LEAF ");
			printOperand(nodeMap[i]->op, stdout);
		}
		else
			printf("%d", (int)nodeMap[i]->kind);
		printf(": ");
		for(j=0; j < nodeMap[i]->signSize; j++) {
			printOperand(nodeMap[i]->signList[j], stdout);
			printf(",");
		}
		printf("\n");
	}

}
