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

	len = _printf("%r\nUINT_MAX:%u\n%r\n", "! loohcS tseB", UINT_MAX, "!loohcS tseB");
	len2 = printf("Best School !\nUINT_MAX:%u\nBest School!\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%r\nUINT_MAX:%o\n%r\n", "! loohcS tseB", UINT_MAX, "!loohcS tseB");
	len2 = printf("Best School !\nUINT_MAX:%o\nBest School!\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%r\nUINT_MAX:%x\n%r\n", "! loohcS tseB", UINT_MAX, "!loohcS tseB");
	len2 = printf("Best School !\nUINT_MAX:%x\nBest School!\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%r\nUINT_MAX:%X\n%r\n", "! loohcS tseB", UINT_MAX, "!loohcS tseB");
	len2 = printf("Best School !\nUINT_MAX:%X\nBest School!\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}