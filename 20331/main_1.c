#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/* Our own functions */
void binary_tree_print(const binary_tree_t *tree);
binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value);
void _binary_tree_delete(binary_tree_t *tree);

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	binary_tree_t *root;
	int avl;

	root = _binary_tree_node(NULL, 98);
	root->left = _binary_tree_node(root, 50);
	root->right = _binary_tree_node(root, 100);

	avl = binary_tree_is_avl(root);
	printf("Is the tree with root node (%d) an AVL: %d\n", root->n, avl);

	binary_tree_print(root);
	_binary_tree_delete(root);
	return (0);
}
