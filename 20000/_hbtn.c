#include <stdlib.h>
#include <string.h>

void *_memcpy(void *dest, void *src, unsigned int n)
{
	unsigned int i;

	for (i = 0; dest && src && i < n; ++i)
		((char *)dest)[i] = ((char *)src)[i];
	return (dest);
}

void *_realloc(void *ptr, unsigned int old_size, unsigned int new_size)
{
	char *new;
	unsigned int copy_size;

	if (ptr == NULL)
	{
		return (malloc(new_size));
	}
	if (new_size == 0)
	{
		free(ptr);
		return (NULL);
	}
	if (new_size == old_size)
	{
		return (ptr);
	}
	new = malloc(new_size);
	if (new == NULL)
	{
		free(ptr);
		return (NULL);
	}
	copy_size = new_size < old_size ? new_size : old_size;
	_memcpy(new, ptr, copy_size);
	free(ptr);
	return ((void *)new);
}
