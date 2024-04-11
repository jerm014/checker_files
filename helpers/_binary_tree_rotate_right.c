#include <stdlib.h>
#include "binary_trees.h"

/**
 * _binary_tree_rotate_right - Rotate right
 *
 * @tree: Pointer to the root node of the tree to rotate
 *
 * Return: New address of the root
 */
binary_tree_t *_binary_tree_rotate_right(binary_tree_t *tree)
{
	binary_tree_t *x;
	binary_tree_t *T2;

	if (!tree)
		return (NULL);
	x = tree->left;
	T2 = x->right;
	/* Perform rotation*/
	x->right = tree;
	tree->left = T2;
	if (tree->parent && tree->parent->left == tree)
		tree->parent->left = x;
	if (tree->parent && tree->parent->right == tree)
		tree->parent->right = x;
	x->parent = tree->parent;
	tree->parent = x;
	if (T2)
		T2->parent = tree;
	/* Return new root*/
	return (x);
}
