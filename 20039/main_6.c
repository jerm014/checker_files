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

	len = _printf("%s%b bytes in %b %c%c\n", "There is ", 1024, 1, 'K', 'B');
	len2 = printf("%s10000000000 bytes in 1 %c%c\n", "There is ", 'K', 'B');
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("The %s value of an unsigned %c%c%c is %b\n", "max", 'i', 'n', 't', UINT_MAX);
	len2 = printf("The %s value of an unsigned %c%c%c is 11111111111111111111111111111111\n", "max", 'i', 'n', 't');
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}