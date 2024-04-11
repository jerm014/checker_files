#include <stdio.h>

int _strlen_recursion(char *);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	int n;

	n = _strlen_recursion("Dreams feel real while we're in them. It's only when we wake up that we realize something was actually strange.");
	printf("%d\n", n);
	return (0);
}
