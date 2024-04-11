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
	void *ptr = (void *)0x7faf51f0f608;

	len = _printf("%S\n%p\n", "\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0A\x10", ptr);
	len2 = printf("\\x01\\x02\\x03\\x04\\x05\\x06\\x07\\x08\\x09\\x0A\\x10\n%p\n", ptr);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}