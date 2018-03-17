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
	node->info = (char *)malloc(sizeof(pstr));
	strncpy(node->info, pstr, strlen(pstr));

	return node;
}

void addChild(struct TreeNode *parent, struct TreeNode *child)
{
	if(!parent || !child)	return;
	parent->childs[parent->nChild++] = child;
}

void preOrder(struct TreeNode *subTree, int depth)
{
	if(subTree != NULL) {
		//visit current node
		int i;
		for(i=0; i < depth; i++)
			printf("  ");
		switch(subTree->nType) {
			case Int:
				printf("%s: %d\n", subTree->info, subTree->iValue);
				break;
			case Float:
				printf("%s: %f\n", subTree->info, subTree->fValue);
				break;
			case Id:
				printf("%s: %s\n", subTree->info, subTree->ptr);
				break;
			case Type:
				printf("%s: %s\n", subTree->info, subTree->ptr);
				break;
			case Relop:
				printf("%s\n", subTree->info);
				break;
			case Token:
				printf("%s\n", subTree->info);
				break;
			case NonTerminal:
				printf("%s (%d)\n", subTree->info, subTree->lineno);
				break;
		}

		//then visit childs
		for(i = 0; i < subTree->nChild; i++)
			preOrder(subTree->childs[i], depth+1);
	}
}

void printTree(struct TreeNode *root)
{
	preOrder(root, 0);
}
