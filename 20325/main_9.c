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
	int complete;

	root = NULL;

	complete = binary_tree_is_complete(root);
	printf("Is the tree with root node (%p) complete? %d\n", (void *)root, complete);

	return (0);
}
