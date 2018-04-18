#ifndef _TREENODE_H_
#define _TREENODE_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


typedef enum ValueType {
	Int = 1,
	Float,
	Id,
	Type,
	Relop,
	Token,
	NonTerminal,
	None
} ValueType;



typedef struct TreeNode {
	int lineno;			//line no
	ValueType nType;			//to explain which type value is,interger or float or id
	union {
		int iValue;
		float fValue;
		char *ptr;
	};
	char *info;			//other information
	int nChild;			//childs no
	struct TreeNode *childs[8];	//childs pointers
} TreeNode;

struct TreeNode *newNode();
struct TreeNode *createNode(char *pstr, int lineno);
void addChild(struct TreeNode *parent, struct TreeNode *child);
void printTree(struct TreeNode *root);
void deleteTree(struct TreeNode *root);


#endif
