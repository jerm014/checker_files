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
	int full;

	root = NULL;

	full = binary_tree_is_full(root);
	printf("Is the tree with root node (%p) full? %d\n", (void *)root, full);

	return (0);
}
