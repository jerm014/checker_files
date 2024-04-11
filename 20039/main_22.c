#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include "main.h"

/**
 * main - Entry point
 *
 * Return: 0 on success, error code otherwise
 */
int main(void)
{
	int len, len2;

	len = _printf("%ld;%li\n%ld;%li\n", UINT_MAX, UINT_MAX, -1, -1);
	len2 = printf("%ld;%li\n%ld;%li\n", UINT_MAX, UINT_MAX, -1, -1);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%hd;%hi\n%hd;%hi\n", SHRT_MAX, SHRT_MAX, SHRT_MIN, SHRT_MIN);
	len2 = printf("%hd;%hi\n%hd;%hi\n", SHRT_MAX, SHRT_MAX, SHRT_MIN, SHRT_MIN);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}