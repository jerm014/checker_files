#include <stdio.h>

int _pow_recursion(int, int);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	int r;

	r = _pow_recursion(9, 8);
	printf("%d\n", r);
	return (0);
}
