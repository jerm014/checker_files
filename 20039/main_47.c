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

	len = _printf("UINT_MAX:%b\n%r\n", UINT_MAX, "! loohcS tseB");
	len2 = printf("UINT_MAX:11111111111111111111111111111111\nBest School !\n");
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("UINT_MAX:%b\n%r\n", UINT_MAX, "!loohcS tseB");
	len2 = printf("UINT_MAX:11111111111111111111111111111111\nBest School!\n");
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}