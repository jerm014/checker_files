#include <stdio.h>
#include <stdlib.h>
#include "main.h"

/**
 * main - Entry point
 *
 * Return: 0 on success, error code otherwise
 */
int main(void)
{
	int len, len2;

	len = _printf("%s%u bytes in %u %c%c\n", "There is ", 1024, 1, 'K', 'B');
	len2 = printf("%s%u bytes in %u %c%c\n", "There is ", 1024, 1, 'K', 'B');
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%s%o bytes in %o %c%c\n", "There is ", 1024, 1, 'K', 'B');
	len2 = printf("%s%o bytes in %o %c%c\n", "There is ", 1024, 1, 'K', 'B');
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%s%x bytes in %x %c%c\n", "There is ", 1024, 1, 'K', 'B');
	len2 = printf("%s%x bytes in %x %c%c\n", "There is ", 1024, 1, 'K', 'B');
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%s%X bytes in %X %c%c\n", "There is ", 1024, 1, 'K', 'B');
	len2 = printf("%s%X bytes in %X %c%c\n", "There is ", 1024, 1, 'K', 'B');
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}