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
	binary_tree_t *uncle;


	node = NULL;
	uncle = binary_tree_uncle(node);
	printf("Uncle of (%p) is (%p)\n", (void *)node, (void *)uncle);
	return (0);
}
