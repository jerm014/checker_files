#ifndef _FAKE_STRDUP_
#define _FAKE_STRDUP_

#include <stdlib.h>

#define strdup(x) fake_strdup(x)

char *fake_strdup(const char __attribute__((unused))*s)
{
	return (NULL);
}

#define malloc(x) fake_malloc(x)

void *fake_malloc(size_t size)
{
	static int calls;

	return (++calls > 1 ? NULL : calloc(1, size));
}

#endif /* _FAKE_STRDUP_ */
