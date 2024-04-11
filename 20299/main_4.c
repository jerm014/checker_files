#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

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
	test_leaf(NULL);
	return (0);
}
