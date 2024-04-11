#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	avl_t *root;

	root = sorted_array_to_avl(NULL, 0);
	printf("Root: %p\n", (void *)root);

	return (0);
}
