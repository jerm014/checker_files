#include <stdlib.h>
#include "binary_trees.h"

avl_t *_avl_insert(avl_t **root, int n);

/**
 * _array_to_avl - Builds an AVL tree from an array of integers
 *
 * @array: Array to convert
 * @size: Size of the array
 *
 * Return: Pointer to the root node of the created AVL tree
 */
avl_t *_array_to_avl(int *array, size_t size)
{
	avl_t *root;
	size_t i;

	root = NULL;
	for (i = 0; i < size; ++i)
		_avl_insert(&root, array[i]);
	return (root);
}
