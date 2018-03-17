#ifndef _TREENODE_H_
#define _TREENODE_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct TreeNode {
	int lineno;
	char *value;
	char *info;
	int nChild;
	struct TreeNode *childs[8];
};

struct TreeNode *newNode();
struct TreeNode *creatNode(char *pstr, int lineno);
void addChild(struct TreeNode *parent, struct TreeNode *child);
void printTree(struct TreeNode *root);


#endif
