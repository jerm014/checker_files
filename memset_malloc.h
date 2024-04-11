#ifndef _FAKE_MALLOC_H_
#define _FAKE_MALLOC_H_

#include <stdlib.h>

#define malloc(x) fake_malloc(x)

void *fake_malloc(size_t size)
{
	void *p;
	unsigned int i;

	p = calloc(1, size);
	if (!p)
		return (NULL);
	for (i = 0; i < size; ++i)
		p[i] = 98;
	return (p);
}

#endif /* _FAKE_MALLOC_H_ */
