#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/* Our own functions */
binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value);
void binary_tree_print(const binary_tree_t *tree);
void _binary_tree_delete(binary_tree_t *tree);

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	binary_tree_t *root;
	size_t leaves;

	root = _binary_tree_node(NULL, 98);

	leaves = binary_tree_leaves(root);
	printf("Leaves in tree with root node (%d): %lu\n", root->n, leaves);

	binary_tree_print(root);
	_binary_tree_delete(root);
	return (0);
}
