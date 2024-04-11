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
	int bst;

	root = _binary_tree_node(NULL, 98);

	bst = binary_tree_is_bst(root);
	printf("Is the tree with root node (%d) a BST: %d\n", root->n, bst);

	binary_tree_print(root);
	_binary_tree_delete(root);
	return (0);
}
