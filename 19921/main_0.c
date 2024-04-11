#include <stdio.h>
#include "main.h"

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	char c;

	for (c = '0'; c <= '9'; ++c)
		printf("%c: %d\n", c, _isdigit(c));
	return (0);
}
