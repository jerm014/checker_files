#ifndef _FAKE_MALLOC_H_
#define _FAKE_MALLOC_H_

#include <stdlib.h>

#define malloc(x) malloc_0(x)

void *malloc_0(size_t size)
{
	return ((void *)size);
}

#endif /* _FAKE_MALLOC_H_ */
