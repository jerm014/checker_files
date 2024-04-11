#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

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
	test_root(NULL);
	return (0);
}
