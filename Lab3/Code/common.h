#ifndef _COMMON_H_
#define _COMMON_H_

#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include "TreeNode.h"
#include "debug.h"
#include "sym_table.h"
#include "sematic.h"
#include "ir.h"
#include "test.h"
#include "ir_opt.h"

#define OPTIMIZE_IR 1

/*
enum BOOL {
	FALSE, TRUE
};
*/

#define NEW_OP(type, ptr)	newOp(type, (void *)ptr)

#endif
