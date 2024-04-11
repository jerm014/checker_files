#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/* Our own functions */
binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value);
void binary_tree_print(const binary_tree_t *tree);
void _binary_tree_delete(binary_tree_t *tree);

/**
 * test_root - Test the `binary_tree_is_root` function
 *
 * @node: Pointer to the node to test
 */
void test_root(const binary_tree_t *node)
{
	int root;

	root = binary_tree_is_root(node);
	if (node)
		printf("Is %d a root: %d\n", node->n, root);
	else
		printf("Is (nil) a root: %d\n", root);
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

	test_root(root);

	_binary_tree_delete(root);
	return (0);
}
