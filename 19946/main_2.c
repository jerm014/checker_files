#include <stdio.h>

char *_strcat(char *, char *);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	char s1[1] = "";
	char s2[] = "";
	char *p;

	printf("%s\n", s1);
	printf("%s\n", s2);
	p = _strcat(s1, s2);
	printf("%s\n", s1);
	printf("%s\n", s2);
	printf("%s\n", p);
	return (0);
}
