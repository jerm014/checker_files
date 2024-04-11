#include <stdio.h>
#include <stdlib.h>
#include "search_algos.h"

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	printf("Found at index: %p\n", (void *) jump_list(NULL, 0, 0));
	return (0);
}
