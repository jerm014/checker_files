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

	len = _printf("ULONG_MAX:%lu\n", ULONG_MAX);
	len2 = printf("ULONG_MAX:%lu\n", ULONG_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("ULONG_MAX:%lo\n", ULONG_MAX);
	len2 = printf("ULONG_MAX:%lo\n", ULONG_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("ULONG_MAX:%lx\n", ULONG_MAX);
	len2 = printf("ULONG_MAX:%lx\n", ULONG_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("ULONG_MAX:%lX\n", ULONG_MAX);
	len2 = printf("ULONG_MAX:%lX\n", ULONG_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}