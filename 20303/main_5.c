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

	root = _binary_tree_node(NULL, 98);
	root->left = _binary_tree_node(root, 50);
	root->right = _binary_tree_node(root, 100);
	root->left->left = _binary_tree_node(root->left, 40);
	root->left->right = _binary_tree_node(root->left, 60);
	root->right->left = _binary_tree_node(root->right, 99);
	root->right->right = _binary_tree_node(root->right, 110);
	binary_tree_print(root);

	binary_tree_postorder(root, NULL);

	_binary_tree_delete(root);
	return (0);
}
