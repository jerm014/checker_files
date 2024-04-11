#ifndef _FAKE_MALLOC_H_
#define _FAKE_MALLOC_H_

#include <stdlib.h>

#define malloc(x) fake_malloc(x, 10)

void *fake_malloc(size_t size, int countdown)
{
	static int i;

	return (++i > countdown ? NULL : calloc(1, size));
}

#endif /* _FAKE_MALLOC_H_ */
