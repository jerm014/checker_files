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
	binary_tree_t *root;

	root = bst_remove(NULL, 12);
	printf("Root: %p\n", (void *)root);

	return (0);
}
