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
	void *ptr = (void *)0x7faf51f0f608;

	len = _printf("%d;%i\n%p\n%d;%i\n", INT_MAX, INT_MAX, ptr, INT_MIN, INT_MIN);
	len2 = printf("%d;%i\n%p\n%d;%i\n", INT_MAX, INT_MAX, ptr, INT_MIN, INT_MIN);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}