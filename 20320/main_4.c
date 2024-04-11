#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/* Our own functions */
void binary_tree_print(const binary_tree_t *tree);
void _binary_tree_delete(binary_tree_t *tree);

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	avl_t *root;
	avl_t *node;
	int array[] = {
		2, 12, 15, 33, 38, 44, 46, 48, 57, 58, 60, 63, 71, 74, 84
	};
	size_t size = sizeof(array) / sizeof(array[0]);
	size_t i;

	root = NULL;
	for (i = 0; i < size; i++)
	{
		node = avl_insert(&root, array[i]);
		if (node)
			printf("Value inserted: %d\n", node->n);
		else
		{
			printf("Value not inserted: %d\n", array[i]);
		}
	}

	binary_tree_print(root);
	_binary_tree_delete(root);
	return (0);
}
