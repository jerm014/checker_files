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
	binary_tree_t *node;
	binary_tree_t *sibling;


	node = NULL;
	sibling = binary_tree_sibling(node);
	printf("Sibling of (%p) is (%p)\n", (void *)node, (void *)sibling);
	return (0);
}
