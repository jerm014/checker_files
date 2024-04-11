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
	int avl;

	root = NULL;

	avl = binary_tree_is_avl(root);
	printf("Is the tree with root node (%p) an AVL: %d\n", (void *)root, avl);

	return (0);
}
