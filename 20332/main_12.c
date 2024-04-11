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
	int heap;

	root = NULL;

	heap = binary_tree_is_heap(root);
	printf("Is the tree with root node (%p) a Max Heap: %d\n", (void *)root, heap);

	binary_tree_is_heap(root);

	return (0);
}
