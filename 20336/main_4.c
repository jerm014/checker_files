#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/* Our own functions */
heap_t *_array_to_heap(int *array, size_t size);
void binary_tree_print(const binary_tree_t *tree);

/**
 * _print_array - Prints an array of integers
 *
 * @array: Pointer to the first element of the array
 * @size: Number of elements in the array
 */
void _print_array(int *array, size_t size)
{
	size_t i;

	for (i = 0; i < size; i++)
	{
		if (i)
			printf(", ");
		printf("%d", array[i]);
	}
	printf("\n");
}

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	int *out;
	size_t out_size;

	out = heap_to_sorted_array(NULL, &out_size);
	if (out)
	{
		printf("Extracted array:\n");
		_print_array(out, out_size);
		free(out);
	}
	else
	{
		printf("Returned NULL\n");
	}
	return (0);
}
