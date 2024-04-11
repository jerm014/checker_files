#include <stdio.h>
#include <stdlib.h>
#include "main.h"

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	int res;
	char *content = "Best School !";

	res = create_file(NULL, content);
	printf("%i\n", res);
	return (0);
}
