#include "common.h"


void Program(TreeNode *p)
{
	if(p == NULL)	return;
	LOG("in Program");
	ExtDefList(p->childs[0]);
}

void ExtDefList(TreeNode *p)
{
	if(p == NULL)	return ;
	LOG("in ExtDefList");
	TreeNode *child = p->childs[0];
	if(child != NULL) {
		ExtDef(child);
		ExtDefList(p->childs[1]);
	}
}

void ExtDef(TreeNode *p)
{
	if(p == NULL)	return;
	LOG("in ExtDef");	

	TreeNode *child = p->childs[0];

}
