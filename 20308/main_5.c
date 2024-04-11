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
	size_t nodes;

	root = NULL;

	nodes = binary_tree_nodes(root);
	printf("Nodes in tree with root node (%p): %lu\n", (void *)root, nodes);

	return (0);
}
