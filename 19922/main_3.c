#include "main.h"
#include <stdio.h>

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	int i;
	int j;

	i = 0;
	j = 12;
	printf("%d * %d: %d\n", i, j, mul(i, j));
	return (0);
}
