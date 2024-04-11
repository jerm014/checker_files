#include <stdlib.h>
#include "binary_trees.h"

/**
 * _bst_search - Searches for a value in a Binary Search Tree
 *
 * @tree: Pointer to the root node of the tree to search
 * @value: Value to look for
 *
 * Return: Pointer to the node holding the searched value. NULL if not found
 */
bst_t *_bst_search(const bst_t *tree, int value)
{
	bst_t *l, *r;

	if (!tree)
		return (NULL);
	if (tree->n == value)
		return ((bst_t *)tree);
	l = _bst_search(tree->left, value);
	r = _bst_search(tree->right, value);
	return (l ? l : r);
}
