#include <stdlib.h>
#include "binary_trees.h"

heap_t *_heap_insert(heap_t **root, int value);

/**
 * _array_to_heap - Builds an heap tree from an array of integers
 *
 * @array: Array to convert
 * @size: Size of the array
 *
 * Return: Pointer to the root node of the created heap tree
 */
heap_t *_array_to_heap(int *array, size_t size)
{
	heap_t *root;
	size_t i;

	root = NULL;
	for (i = 0; i < size; ++i)
		_heap_insert(&root, array[i]);
	return (root);
}
