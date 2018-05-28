#include "common.h"


DAGNode nodeMap[MAP_SIZE];
int curSize = 0;

void clearMap()
{
	int i;
	for(i=0; i < curSize; i++) {
		free(nodeMap[i]);
		nodeMap[i] = NULL;
	}
	curSize = 0;
}

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
	/*
	printf("not find sign: ");
	printOperand(target, stdout);
	printf("\n");
	*/
	return NULL;
}

DAGNode findLeaf(Operand target) 
{
	int i;
	for(i=0; i < curSize; i++) {
		if(nodeMap[i]->isLeaf && compareOperand(target, nodeMap[i]->op) == TRUE)
			return nodeMap[i];
	}
	/*
	printf("not find leaf: ");
	printOperand(target, stdout);
	printf("\n");
	*/
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
		if(compareOperand(op, node->signList[i]) == TRUE) {
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
	//LOG("insertNode");
	DAGNode node = NULL;
	if(!isWrite) {
		node = createDAGNode(op, isWrite);
	}
	else {
		ASSERT(0);
	}
	
	return node;
}



void insertTuple(InterCode *code)
{
	/*
	 *z = x op y
	 */
	DAGNode nodex, nodey, nodez, nodeop;
	nodex = nodey = nodez = nodeop = NULL;
	
	/*handle special case*/
	/*	
	if(IC_ADD <= code->kind <= IC_DIV && code->binop.op1->kind == CONSTANT
		&& code->binop.op2->kind == CONSTANT) {
		int rlt;
		if(code->kind == IC_ADD) 
			rlt = code->binop.op1->value + code->binop.op2->value;
		else if(code->kind == IC_SUB) 
			rlt = code->binop.op1->value - code->binop.op2->value;
		else if(code->kind == IC_MUL) 
			rlt = code->binop.op1->value * code->binop.op2->value;
		else
			rlt = code->binop.op1->value / code->binop.op2->value;
		Operand op = NEW_OP(CONSTANT, rlt);
		InterCodes *new_code = newIC(IC_ASSIGN, code->binop.rlt, op, NULL);
		code = &new_code->code;
	}
	*/
	
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
	else if(IC_JL <= code->kind && code->kind <= IC_JNE) {
		/*if op1 relop op2 GOTO rlt is 3-tuple*/	
		nodeop = malloc(sizeof(struct DAGNode_));
		memset(nodeop, 0, sizeof(struct DAGNode_));
		nodeop->kind = code->kind;
		nodeop->left = nodex;
		nodeop->right = nodey;
		nodeop->activeSign = code->binop.rlt;
		nodeMap[curSize++] = nodeop;
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

void fixRefAndDeref(Operand op) 
{
	if(!op)	return;
	if(op->kind == DEREF || op->kind == REF) {
		DAGNode node = findSign(op->op);
		if(!node)	node = findLeaf(op->op);
		ASSERT(node);
		op->op = node->activeSign;
	}

}

InterCodes *DAG2ir()
{
	InterCodes *head = NULL;
	int i, j;
	for(i=0; i < curSize; i++) {
		DAGNode node = nodeMap[i];
		if(node->isLeaf) {
			for(j=0; j < node->signSize; j++) {
				Operand sign = node->signList[j];
				if(sign->kind == VARIABLE) {
					if(!node->activeSign)
						node->activeSign = sign;
					InterCodes *code = newIC(IC_ASSIGN, sign, node->op, NULL);
					ADD_TAIL(head, code);
				}
			}
			if(!node->activeSign) {
				fixRefAndDeref(node->op);
				node->activeSign = node->op;
			}
			continue;
		}
		int cnt = 0;
		for(j=0; j < node->signSize; j++) {
			Operand sign = node->signList[j];
			/*NOTE: every inner node must be related to a variable*/
			if(sign->kind == VARIABLE) {
				if(cnt > 0) {
					InterCodes *code = newIC(IC_ASSIGN, sign, node->activeSign, NULL);
					ADD_TAIL(head, code);
				}
				else {
					Operand left, right;
					left = (node->left) ? node->left->activeSign: NULL;	 
					right = (node->right) ? node->right->activeSign: NULL;	 

					InterCodes *code = newIC(node->kind, sign, left, right);
					ADD_TAIL(head, code);
					node->activeSign = sign;
				}
				cnt ++;
			}
		}
		if(cnt == 0 && node->signSize > 0) {
			//LOG("activeSign is a tmp");
			Operand left, right;
			left = (node->left) ? node->left->activeSign: NULL;	 
			right = (node->right) ? node->right->activeSign: NULL;	 
			node->activeSign = node->signList[0];

			InterCodes *code = newIC(node->kind, node->activeSign, left, right);
			ADD_TAIL(head, code);
			//ASSERT(0);	
		}
		else if(node->signSize == 0) {
			/*IC_FUNCTION, IC_PARAM e.t.*/
			Operand left, right;
			left = (node->left) ? node->left->activeSign: NULL;	 
			right = (node->right) ? node->right->activeSign: NULL;	 
			//node->activeSign = node->signList[0];

			InterCodes *code = newIC(node->kind, node->activeSign, left, right);
			ADD_TAIL(head, code);
		}
	}
	//printInterCodes(head, stdout);
	return head;
}

InterCodes *opt_block(InterCodes *start, InterCodes *end)
{
	InterCodes *p = start;
	InterCodes *head = NULL;

	clearMap();
	for(; p && p->prev != end; p=p->next) {
		/*NOTE: *q := y killed all the other nodes*/
		if(IC_ASSIGN <= p->code.kind && p->code.kind <= IC_DIV
			&& p->code.binop.rlt->kind == DEREF) {
			head = copyInterCodes(start, end);	
			return head;
		}		
		else {
			insertTuple(&p->code);
			//printMap();
		}
	}	
/*	
	printf("\n");
	printMap();
	printf("\n");
*/
	head = DAG2ir();
//	printInterCodes(head, stdout);

	return head;
}

InterCodes *opt_ir(InterCodes *head)
{
	int cnt = 0;
	InterCodes* start, *end, *p, *opt_codes, *block;
	p = head;
	opt_codes = block = NULL;

	for(; p; p = p->next) {
		switch(p->code.kind) {
			case IC_FUNCTION:	case IC_LABEL:
				if(cnt == 0) {
					start = p;
					cnt ++;
				}
				else {
					end = p->prev;
					block = opt_block(start, end);
					ADD_TAIL(opt_codes, block);

					cnt = 1;
					start = p;
				}
				break;
			case IC_GOTO:	case IC_RETURN:
			case IC_JL:		case IC_JG:
			case IC_JGE:	case IC_JLE:
			case IC_JE:		case IC_JNE:
				cnt++;
				ASSERT(cnt > 0);
				end = p;	
				block = opt_block(start, end);
				ADD_TAIL(opt_codes, block);
				cnt = 0;
				start = end->next;
				break;
		
			case IC_ADD:
				if(p->code.binop.op1->kind == CONSTANT 
					&& p->code.binop.op1->value == 0) {
					p->code.kind = IC_ASSIGN;
					p->code.binop.op1 = p->code.binop.op2;
				}	
				else if(p->code.binop.op2->kind == CONSTANT 
					&& p->code.binop.op2->value == 0) {
					p->code.kind = IC_ASSIGN;
				}	
				cnt ++;
				break;
			case IC_SUB:
				if(p->code.binop.op1->kind == CONSTANT 
					&& p->code.binop.op1->value == 0) {
					p->code.kind = IC_ASSIGN;
					p->code.binop.op2->value = -p->code.binop.op2->value;
					p->code.binop.op1 = p->code.binop.op2;
				}	
				else if(p->code.binop.op2->kind == CONSTANT 
					&& p->code.binop.op2->value == 0) {
					p->code.kind = IC_ASSIGN;
				}	
				cnt ++;
				break;
			case IC_MUL:
			case IC_DIV:

			case IC_ASSIGN:
			case IC_DEC:	case IC_PARAM:
			case IC_CALL:	case IC_ARG:
			case IC_READ:	case IC_WRITE:
			case IC_REF:	case IC_DEREF:
	
			default:
				cnt ++;
		}
	}

	printf("\n");
	printInterCodes(opt_codes, stdout);
	
	return opt_codes;
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
			printf("NODE %d", (int)nodeMap[i]->kind);
		printf(": ");
		for(j=0; j < nodeMap[i]->signSize; j++) {
			printOperand(nodeMap[i]->signList[j], stdout);
			printf(" ");
		}
		printf("\n");
	}

}
