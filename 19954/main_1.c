#include <stdio.h>

char *rot13(char *);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	char s[] = "[]{}()*&^$#@!,.<>/?|;:~=-_+";
	char *p;

	p = rot13(s);
	printf("%s\n", p);
	printf("%s\n", s);
	return (0);
}
