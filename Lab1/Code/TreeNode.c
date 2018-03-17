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

void printTree(struct TreeNode *root)
{
	
}
