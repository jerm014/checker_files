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
	size_t size;

	root = NULL;

	size = binary_tree_size(root);
	printf("Size of tree with root node (%p): %lu\n", (void *)root, size);

	return (0);
}
