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

	len = _printf("INT_MAX:%d;%i\nUINT_MAX:%u\nINT_MIN:%d;%i\n", INT_MAX, INT_MAX, UINT_MAX, INT_MIN, INT_MIN);
	len2 = printf("INT_MAX:%d;%i\nUINT_MAX:%u\nINT_MIN:%d;%i\n", INT_MAX, INT_MAX, UINT_MAX, INT_MIN, INT_MIN);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("INT_MAX:%d;%i\nUINT_MAX:%o\nINT_MIN:%d;%i\n", INT_MAX, INT_MAX, UINT_MAX, INT_MIN, INT_MIN);
	len2 = printf("INT_MAX:%d;%i\nUINT_MAX:%o\nINT_MIN:%d;%i\n", INT_MAX, INT_MAX, UINT_MAX, INT_MIN, INT_MIN);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("INT_MAX:%d;%i\nUINT_MAX:%x\nINT_MIN:%d;%i\n", INT_MAX, INT_MAX, UINT_MAX, INT_MIN, INT_MIN);
	len2 = printf("INT_MAX:%d;%i\nUINT_MAX:%x\nINT_MIN:%d;%i\n", INT_MAX, INT_MAX, UINT_MAX, INT_MIN, INT_MIN);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("INT_MAX:%d;%i\nUINT_MAX:%X\nINT_MIN:%d;%i\n", INT_MAX, INT_MAX, UINT_MAX, INT_MIN, INT_MIN);
	len2 = printf("INT_MAX:%d;%i\nUINT_MAX:%X\nINT_MIN:%d;%i\n", INT_MAX, INT_MAX, UINT_MAX, INT_MIN, INT_MIN);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}