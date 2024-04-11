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

	len = _printf("UINT_MAX:%#u\n", UINT_MAX);
	len2 = printf("UINT_MAX:%#u\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("UINT_MAX:%#o\n%#o\n", UINT_MAX, 0);
	len2 = printf("UINT_MAX:%#o\n%#o\n", UINT_MAX, 0);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("UINT_MAX:%#x\n", UINT_MAX);
	len2 = printf("UINT_MAX:%#x\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("UINT_MAX:%#X\n", UINT_MAX);
	len2 = printf("UINT_MAX:%#X\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}