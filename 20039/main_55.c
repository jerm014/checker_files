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

	len = _printf("%p\n%r\n", ptr, "! loohcS tseB");
	len2 = printf("%p\nBest School !\n", ptr);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	len = _printf("%p\n%r\n", ptr, "!loohcS tseB");
	len2 = printf("%p\nBest School!\n", ptr);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}