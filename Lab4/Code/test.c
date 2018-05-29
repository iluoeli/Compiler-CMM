#include "common.h"


/*
 *test double link
 */
int test_ir(InterCodes *codes)
{
	int flag = 0;

	while(codes && codes->next) {
		ASSERT(codes->next->prev == codes);
		codes = codes->next;
	}	

	return flag;
}
