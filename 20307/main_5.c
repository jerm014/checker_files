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
	size_t leaves;

	root = NULL;

	leaves = binary_tree_leaves(root);
	printf("Leaves in tree with root node (%p): %lu\n", (void *)root, leaves);

	return (0);
}
