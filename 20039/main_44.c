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

	len = _printf("%R\nUINT_MAX:%u\n", "Orfg Fpubby !", UINT_MAX);
	len2 = printf("Best School !\nUINT_MAX:%u\n", UINT_MAX);
	fflush(stdout);
	/*if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}*/
	len = _printf("%R\nUINT_MAX:%o\n", "Orfg Fpubby !", UINT_MAX);
	len2 = printf("Best School !\nUINT_MAX:%o\n", UINT_MAX);
	fflush(stdout);
	/*if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}*/
	len = _printf("%R\nUINT_MAX:%x\n", "Orfg Fpubby !", UINT_MAX);
	len2 = printf("Best School !\nUINT_MAX:%x\n", UINT_MAX);
	fflush(stdout);
	/*if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}*/
	len = _printf("%R\nUINT_MAX:%X\n", "Orfg Fpubby !", UINT_MAX);
	len2 = printf("Best School !\nUINT_MAX:%X\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}