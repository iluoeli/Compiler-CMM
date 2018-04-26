#ifndef _DEBUG_H_
#define _DEBUG_H_


#define SEMATIC_DEBUG 1
#define EN_ASSERT 1

static int depth = 0;

#if SEMATIC_DEBUG
	#define LOG(s) printf("\e[0;31mLOG:\e[0m"s"\n")	
	#define LOG_IN(str)	\
		do {			\
			int i_;		\
			for(i_ = 0; i_ < depth; i_++)	\
				printf("  ");				\
			printf("%s\n", str);			\
			depth ++;						\
		} while(0)
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
