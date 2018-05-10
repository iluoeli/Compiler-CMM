#include "common.h"



InterCodes *addTail(InterCodes *head1, InterCodes *head2)
{
	if(NULL == head1) return head2;
	InterCodes *p = head1;
	while(NULL != p->next)
		p=p->next;
	p->next = head2;
	
	return head1;
}


int newParm()
{
	static int cnt = 1;
	return cnt++;
}

int newArg()
{
	static int cnt = 1;
	return cnt++;
}

int newTemp()
{
	static int cnt = 1;
	return cnt++;
}

int newLabel()
{
	static int cnt = 1;
	return cnt++;
}

InterCodes *generate_ir(TreeNode *root)
{
	if(root == NULL)	return NULL;
	InterCodes *codes = translate_Program(root);

	return codes;
}

InterCodes *translate_Program(TreeNode *program)
{
	ASSERT(program->nType == T_Program);	
	InterCodes *codes = translate_ExtDefList(program->childs[0]);
	return codes;
}

InterCodes *translate_ExtDefList(TreeNode *extDefList)
{
	if(NULL == extDefList)	return NULL;
	
	InterCodes *codes1 = translate_ExtDef(extDefList->childs[0]);
	InterCodes *codes2 = translate_ExtDefList(extDefList->childs[1]);
	//TODO:link 

	return NULL;
}

InterCodes *translate_ExtDef(TreeNode *extDef)
{
	TreeNode* child = extDef->childs[1];
	if(child->nType == T_ExtDecList) {
		return translate_ExtDecList(child);	
	}
	else if(child->nType == T_FunDec) {
		//InterCodes codes1 = translate_FunDec(child);
		//InterCodes codes2 =  translate_CompSt(extDef->childs[2]);
		//TODO:link codes1 codes2
	}

	return NULL;
}

InterCodes *translate_ExtDecList(TreeNode *extDecList)
{
	InterCodes *codes = translate_VarDec(extDecList->childs[0]);		
	if(extDecList->nChild == 3) {
		InterCodes *codes2 = translate_ExtDecList(extDecList->childs[2]);
		//TODO:link
	}
	return NULL; 
}

InterCodes *translate_VarDec(TreeNode *varDec)
{

	return NULL;
}
