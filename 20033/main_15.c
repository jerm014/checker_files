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

	len = _printf("%li + %li = %li\n", LONG_MIN, LONG_MAX, (LONG_MIN + LONG_MAX));
	len2 = printf("%li + %li = %li\n", LONG_MIN, LONG_MAX, (LONG_MIN + LONG_MAX));
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}