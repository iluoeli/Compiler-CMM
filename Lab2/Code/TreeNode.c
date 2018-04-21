#include "TreeNode.h"

struct TreeNode *newNode()
{
	struct TreeNode *node = (struct TreeNode *)malloc(sizeof(struct TreeNode));
	memset(node, 0, sizeof(struct TreeNode));
	//node->lineno = 0;
	//node->value = NULL;
	//node->info = NULL;
	//node->nChild = 0;

	return node;
}

struct TreeNode *createNode(char *pstr, int lineno)
{
	struct TreeNode *node = newNode();
	node->lineno = lineno;
	node->info = (char *)malloc(strlen(pstr)+1);
	strncpy(node->info, pstr, strlen(pstr));
	node->info[strlen(pstr)] = '\0';

	return node;
}

void addChild(struct TreeNode *parent, struct TreeNode *child)
{
	if(!parent || !child)	return;
	parent->childs[parent->nChild++] = child;
}

void printNode(struct TreeNode *subTree, int depth)
{
	int i;
	for(i=0; i < depth; i++)
		printf("  ");
	switch(subTree->nType) {
		case T_Int:
			printf("%s: %d\n", subTree->info, subTree->iValue);
			break;
		case T_Float:
			printf("%s: %f\n", subTree->info, subTree->fValue);
			break;
		case T_Id:
			printf("%s: %s\n", subTree->info, subTree->ptr);
			break;
		case T_Type:
			printf("%s: %s\n", subTree->info, subTree->ptr);
			break;
		case T_Relop:
			printf("%s\n", subTree->info);
			break;
		case T_Token:
			printf("%s\n", subTree->info);
			break;
		case T_NonTerminal:
			printf("%s (%d)\n", subTree->info, subTree->lineno);
			break;
	}
}

void preOrder(struct TreeNode *subTree, int depth)
{
	if(subTree != NULL) {
		//visit current node
		printNode(subTree, depth);

		//then visit childs
		int i;
		for(i = 0; i < subTree->nChild; i++)
			preOrder(subTree->childs[i], depth+1);
	}
}

void printTree(struct TreeNode *root)
{
	preOrder(root, 0);
}

void deleteTree(struct TreeNode *root)
{
	if(root != NULL) {
		int i;
		for(i = 0; i < root->nChild; i++)
			deleteTree(root->childs[i]);
		free(root);
	}
}

