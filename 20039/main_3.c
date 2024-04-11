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

	len = _printf("The %s value of an %c%c%c is %d\nIts min value is %i\n", "max", 'i', 'n', 't', INT_MAX, INT_MIN);
	len2 = printf("The %s value of an %c%c%c is %d\nIts min value is %i\n", "max", 'i', 'n', 't', INT_MAX, INT_MIN);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("The %s value of an %c%c%c is %i\nIts min value is %d\n", "max", 'i', 'n', 't', INT_MAX, INT_MIN);
	len2 = printf("The %s value of an %c%c%c is %i\nIts min value is %d\n", "max", 'i', 'n', 't', INT_MAX, INT_MIN);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}