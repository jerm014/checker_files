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
	int bst;

	root = NULL;

	bst = binary_tree_is_bst(root);
	printf("Is the tree with root node (%p) a BST: %d\n", (void *)root, bst);

	return (0);
}
