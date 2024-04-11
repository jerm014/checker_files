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

	len = _printf("%S\n%r\n", "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x10", "! loohcS tseB");
	len2 = printf("\\x01\\x02\\x03\\x04\\x05\\x06\\x07\\x08\\x09\\x0A\\x10\nBest School !\n");
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%S\n%r\n", "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x10", "!loohcS tseB");
	len2 = printf("\\x01\\x02\\x03\\x04\\x05\\x06\\x07\\x08\\x09\\x0A\\x10\nBest School!\n");
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}