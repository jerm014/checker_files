#include <stdlib.h>
#include "binary_trees.h"

bst_t *_bst_insert(bst_t **tree, int value);

/**
 * _search - Searches for a value in a Binary Search Tree
 *
 * @tree: Pointer to the root node of the tree to search
 * @value: Value to look for
 *
 * Return: Pointer to the node holding the searched value. NULL if not found
 */
bst_t *_search(const bst_t *tree, int value)
{
	bst_t *l, *r;

	if (!tree)
		return (NULL);
	if (tree->n == value)
		return ((bst_t *)tree);
	l = _search(tree->left, value);
	r = _search(tree->right, value);
	return (l ? l : r);
}

/**
 * _array_to_bst - Craetes a Binary Search Tree from an array of integers
 *
 * @array: Array to convert to a BST
 * @size: Size of the array
 * Return: A pointer to the root of the created BST, NULL on failure
 */
bst_t *_array_to_bst(int *array, size_t size)
{
	bst_t *tree;
	size_t i;

	if (!array || !size)
		return (NULL);
	tree = NULL;
	for (i = 0; i < size; ++i)
	{
		if (_search(tree, array[i]))
			continue;
		if (!_bst_insert(&tree, array[i]))
			return (NULL);
	}
	return (tree);
}
