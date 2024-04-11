#include <stdlib.h>

void *_calloc(unsigned int nmemb, unsigned int size)
{
	char *p;
	unsigned long int n;

	if (nmemb == 0 || size == 0)
	{
		return (NULL);
	}
	p = malloc(nmemb * size);
	if (p == NULL)
	{
		return (NULL);
	}
	n = 0;
	while (n < nmemb * size)
	{
		p[n] = 0;
		n++;
	}
	return ((void *)p);
}
