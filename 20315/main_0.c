#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/* Our own functions */
void binary_tree_print(const binary_tree_t *tree);
bst_t *_array_to_bst(int *array, size_t size);
bst_t *_bst_search(const bst_t *tree, int value);
void _binary_tree_delete(binary_tree_t *tree);

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	bst_t *root;
	int array[] = {
		98, 110, 43, 56, 2, 78, 123, 76, 234
	};
	size_t size = sizeof(array) / sizeof(array[0]);
	bst_t *s1, *s2;
	int value;

	root = _array_to_bst(array, size);
	binary_tree_print(root);

	value = 2;
	s1 = bst_search(root, value);
	s2 = _bst_search(root, value);
	if (s1 == s2)
	{
		if (s1)
		{
			printf("Found %d:\n", value);
			binary_tree_print(s1);
		}
		else
		{
			printf("Found %p\n", (void *)s1);
		}
	}
	else
	{
		printf("Wring pointer returned!\n");
	}
	_binary_tree_delete(root);
	return (0);
}
