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
	size_t nodes;

	root = _binary_tree_node(NULL, 98);
	root->left = _binary_tree_node(root, 50);
	root->right = _binary_tree_node(root, 100);

	nodes = binary_tree_nodes(root);
	printf("Nodes in tree with root node (%d): %lu\n", root->n, nodes);

	binary_tree_print(root);
	_binary_tree_delete(root);
	return (0);
}
