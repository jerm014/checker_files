#include <stdio.h>
#include <limits.h>

void swap_int(int *, int *);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	int a;
	int b;

	a = INT_MAX;
	b = INT_MIN;
	printf("%d, %d\n", a, b);
	swap_int(&a, &b);
	printf("%d, %d\n", a, b);
	return (0);
}
