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

	len = _printf("%ho - %ho = %ho\n", USHRT_MAX, 2048, USHRT_MAX - 2048);
	len2 = printf("%ho - %ho = %ho\n", USHRT_MAX, 2048, USHRT_MAX - 2048);
	fflush(stdout);
	if (len != len2)
	{
		printf("Lengths differ.\n");
		fflush(stdout);
		return (1);
	}
	return (0);
}