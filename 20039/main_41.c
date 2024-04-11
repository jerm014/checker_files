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

	len = _printf("%06u\n%06u\n", 1024, 1024984020);
	len2 = printf("%06u\n%06u\n", 1024, 1024984020);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%06o\n%06o\n", 1024, 1024984020);
	len2 = printf("%06o\n%06o\n", 1024, 1024984020);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%06x\n%06x\n", 1024, 1024984020);
	len2 = printf("%06x\n%06x\n", 1024, 1024984020);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%06X\n%06X\n", 1024, 1024984020);
	len2 = printf("%06X\n%06X\n", 1024, 1024984020);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}