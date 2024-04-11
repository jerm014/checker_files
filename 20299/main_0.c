#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/* Our own functions */
binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value);
void binary_tree_print(const binary_tree_t *tree);
void _binary_tree_delete(binary_tree_t *tree);

/**
 * test_leaf - Test the `binary_tree_is_leaf` function
 *
 * @node: Pointer to the node to test
 */
void test_leaf(const binary_tree_t *node)
{
	int leaf;

	leaf = binary_tree_is_leaf(node);
	if (node)
		printf("Is %d a leaf: %d\n", node->n, leaf);
	else
		printf("Is (nil) a leaf: %d\n", leaf);
}

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	binary_tree_t *root;

	root = _binary_tree_node(NULL, 98);
	binary_tree_print(root);

	test_leaf(root);

	_binary_tree_delete(root);
	return (0);
}
