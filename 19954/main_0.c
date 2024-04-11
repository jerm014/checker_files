#include <stdio.h>

char *rot13(char *);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	char s[] = "Talk is cheap. Show me the code ([#CisFun, #CisAwesome])\n";
	char *p;

	p = rot13(s);
	printf("%s", p);
	printf("%s", s);
	return (0);
}
