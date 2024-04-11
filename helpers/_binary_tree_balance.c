#include <stdlib.h>
#include "binary_trees.h"

/**
 * _binary_t_height_ - Measures the height of a binary tree
 *
 * @tree: Pointer to the node to measures the height
 *
 * Return: The height of the tree starting at @node
 */
int _binary_t_height_(const binary_tree_t *tree)
{
	int height_l;
	int height_r;

	if (!tree)
		return (0);
	height_l = tree->left ? 1 + _binary_t_height_(tree->left) : 0;
	height_r = tree->right ? 1 + _binary_t_height_(tree->right) : 0;
	return (height_l > height_r ? height_l : height_r);
}

/**
 * _binary_tree_balance - Gets the balance factor of a binary tree
 *
 * @tree: Pointer to the root node of the tree to check
 *
 * Return: 1 if the tree is balanced, 0 otherwise
 */
int _binary_tree_balance(const binary_tree_t *tree)
{
	int height_l;
	int height_r;

	if (!tree)
		return (0);
	height_l = tree->left ? _binary_t_height_(tree->left) : -1;
	height_r = tree->right ? _binary_t_height_(tree->right) : -1;
	return (height_l - height_r);
}
