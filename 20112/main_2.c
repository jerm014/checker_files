#include <stdio.h>
#include <stdlib.h>
#include "main.h"

/**
 * main - check the code .
 *
 * @ac: Arguments counter
 * @av: Arguments array
 *
 * Return: 0 on success, 1 on error
 */
int main(int ac, char **av)
{
	int res;
	char *content = "Best School !";
	if ((ac != 1) && (av == NULL)) 
	{
		/* Empty */
	}

	res = append_text_to_file(NULL, content);
	printf("%i\n", res);
	return (0);
}
