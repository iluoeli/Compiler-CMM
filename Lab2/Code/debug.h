#ifndef _DEBUG_H_
#define _DEBUG_H_

#define DEBUG_ 1

#if DEBUG_
	#define LOG(s) printf(s"\n")	
#else
	#define LOG(s)
#endif



#endif
