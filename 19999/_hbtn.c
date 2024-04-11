#include <stdlib.h>

/**
 * array_range - Array range
 *
 * @min: Min value
 * @max: Max value
 *
 * Return: The allocated array
 */
int *array_range(int min, int max)
{
	unsigned int size, i;
	int *p;

	if (min > max)
	{
		return (NULL);
	}
	size = max - min + 1;
	p = malloc(sizeof(int) * size);
	if (p == NULL)
	{
		return (NULL);
	}
	i = 0;
	while (i < size)
	{
		p[i] = min + i;
		i++;
	}
	return (p);
}
