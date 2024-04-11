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

	len = _printf("%s%S%c", "Show me the codes: ", "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x10", '\n');
	len2 = printf("%s\\x01\\x02\\x03\\x04\\x05\\x06\\x07\\x08\\x09\\x0A\\x10%c", "Show me the codes: ", '\n');
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}