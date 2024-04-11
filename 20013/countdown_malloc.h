#ifndef _FAKE_MALLOC_H_
#define _FAKE_MALLOC_H_

#include <stdlib.h>

#define malloc(x) fake_malloc(x)

void *fake_malloc(size_t size)
{
	static int calls;

	return (++calls > 2 ? NULL : calloc(1, size));
}

#endif /* _FAKE_MALLOC_H_ */
