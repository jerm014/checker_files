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

	len = _printf("%S\nUINT_MAX:%u\n", "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x10", UINT_MAX);
	len2 = printf("\\x01\\x02\\x03\\x04\\x05\\x06\\x07\\x08\\x09\\x0A\\x10\nUINT_MAX:%u\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%S\nUINT_MAX:%o\n", "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x10", UINT_MAX);
	len2 = printf("\\x01\\x02\\x03\\x04\\x05\\x06\\x07\\x08\\x09\\x0A\\x10\nUINT_MAX:%o\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%S\nUINT_MAX:%x\n", "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x10", UINT_MAX);
	len2 = printf("\\x01\\x02\\x03\\x04\\x05\\x06\\x07\\x08\\x09\\x0A\\x10\nUINT_MAX:%x\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%S\nUINT_MAX:%X\n", "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x10", UINT_MAX);
	len2 = printf("\\x01\\x02\\x03\\x04\\x05\\x06\\x07\\x08\\x09\\x0A\\x10\nUINT_MAX:%X\n", UINT_MAX);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}