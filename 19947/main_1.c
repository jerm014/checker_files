#include <stdio.h>

char *_strncat(char *, char *, int);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	char s1[98] = "Holberton ";
	char s2[] = "School!\n";
	char *p;

	printf("%s\n", s1);
	printf("%s", s2);
	p = _strncat(s1, s2, 50);
	printf("%s\n", s1);
	printf("%s", s2);
	printf("%s\n", p);
	return (0);
}
