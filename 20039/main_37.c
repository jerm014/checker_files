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

	len = _printf("%6u\n%6u\n", 1024, 1024984020);
	len2 = printf("%6u\n%6u\n", 1024, 1024984020);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%6o\n%6o\n", 1024, 1024984020);
	len2 = printf("%6o\n%6o\n", 1024, 1024984020);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%6x\n%6x\n", 1024, 1024984020);
	len2 = printf("%6x\n%6x\n", 1024, 1024984020);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%6X\n%6X\n", 1024, 1024984020);
	len2 = printf("%6X\n%6X\n", 1024, 1024984020);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}