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

	len = _printf("UINT_MAX:%b\nUINT_MAX:%u\n", UINT_MAX, UINT_MAX);
	len2 = printf("UINT_MAX:11111111111111111111111111111111\nUINT_MAX:%u\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("UINT_MAX:%b\nUINT_MAX:%o\n", UINT_MAX, UINT_MAX);
	len2 = printf("UINT_MAX:11111111111111111111111111111111\nUINT_MAX:%o\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("UINT_MAX:%b\nUINT_MAX:%x\n", UINT_MAX, UINT_MAX);
	len2 = printf("UINT_MAX:11111111111111111111111111111111\nUINT_MAX:%x\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("UINT_MAX:%b\nUINT_MAX:%X\n", UINT_MAX, UINT_MAX);
	len2 = printf("UINT_MAX:11111111111111111111111111111111\nUINT_MAX:%X\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}