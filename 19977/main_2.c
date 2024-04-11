#include <stdio.h>

int is_prime_number(int);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	int r;

	r = is_prime_number(-7);
	printf("%d\n", r);
	return (0);
}
