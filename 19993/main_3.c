#include <stdio.h>
#include <stdlib.h>

void free_grid(int **, int);

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	free_grid(NULL, 0);
	printf("OK\n");
	return (0);
}
