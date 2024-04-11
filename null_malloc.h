#ifndef _FAKE_MALLOC_H_
#define _FAKE_MALLOC_H_

#include <stdlib.h>

#define malloc(x) fake_malloc(x)

void *fake_malloc(size_t __attribute__((unused))size)
{
	return (NULL);
}

#endif /* _FAKE_MALLOC_H_ */
