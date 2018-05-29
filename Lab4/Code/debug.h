#ifndef _DEBUG_H_
#define _DEBUG_H_


#define EN_PRINT_TREE 0
#define SEMATIC_DEBUG 1
#define EN_ASSERT 1
#define IR_DEBUG 1


#if SEMATIC_DEBUG
	#define LOG(s) printf("\e[0;31mLOG:\e[0m"s"\n")	
	#define PRINT_FIELD_LIST(fList)	printFieldList(fList)
	#define PRINT_TYPE(type)	printType(type)
	#define PRINT_SYMBOL(symbol)	printSymbol(symbol)
	#define PRINT_TABLE()	printTable()
#else
	#define LOG(s)
	#define PRINT_FIELD_LIST(fList)
	#define PRINT_TYPE(type)
	#define PRINT_SYMBOL(symbol)
	#define PRINT_TABLE()	
#endif

#if EN_ASSERT
	#define ASSERT(s) assert(s)
#else
	#define ASSERT(s)
#endif

#define PRINT_ERROR(errType, lineno, ptr)	\
	printf("Error type %d at Line %d: %s\n", errType, lineno, ptr)

#endif
