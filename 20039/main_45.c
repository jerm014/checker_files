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

	len = _printf("UINT_MAX:%b\n%S\n", UINT_MAX, "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x10");
	len2 = printf("UINT_MAX:11111111111111111111111111111111\n\\x01\\x02\\x03\\x04\\x05\\x06\\x07\\x08\\x09\\x0A\\x10\n");
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}
