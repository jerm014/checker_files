#include <stdio.h>

char *leet(char *);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	char s[] = "TALK IS CHEAP. SHOW ME THE CODE.\n";
	char *p;

	p = leet(s);
	printf("%s", p);
	printf("%s", s);
	return (0);
}
