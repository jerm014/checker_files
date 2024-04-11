#include <stdlib.h>
#include "binary_trees.h"

/**
 * _binary_tree_rotate_left - Rotate left
 *
 * @tree: Pointer to the root node of the tree to rotate
 *
 * Return: New address of the root
 */
binary_tree_t *_binary_tree_rotate_left(binary_tree_t *tree)
{
	binary_tree_t *y;
	binary_tree_t *T2;

	if (!tree)
		return (NULL);
	y = tree->right;
	T2 = y->left;
	/* Perform rotation*/
	y->left = tree;
	tree->right = T2;
	if (tree->parent && tree->parent->left == tree)
		tree->parent->left = y;
	if (tree->parent && tree->parent->right == tree)
		tree->parent->right = y;
	y->parent = tree->parent;
	tree->parent = y;
	if (T2)
		T2->parent = tree;
	/* Return new root*/
	return (y);
}
