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
	binary_tree_t *node;
	binary_tree_t *sibling;

	root = _binary_tree_node(NULL, 70);

	node = root;
	sibling = binary_tree_sibling(node);
	if (sibling)
		printf("Sibling of (%d) is (%d)\n", node->n, sibling->n);
	else
		printf("Sibling of (%d) is (%p)\n", node->n, (void *)sibling);

	binary_tree_print(root);
	_binary_tree_delete(root);
	return (0);
}
