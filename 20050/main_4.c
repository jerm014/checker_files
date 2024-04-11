#include <stdio.h>
#include "lists.h"

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	size_t n;

	n = listint_len(NULL);
	printf("-> %lu elements\n", n);
	return (0);
}
