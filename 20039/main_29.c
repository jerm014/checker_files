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

	len = _printf("%d%r%i\n", INT_MAX, "! loohcS tseB", INT_MAX);
	len2 = printf("%dBest School !%i\n", INT_MAX, INT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%d%r%i\n", INT_MIN, "!loohcS tseB", INT_MIN);
	len2 = printf("%dBest School!%i\n", INT_MIN, INT_MIN);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}