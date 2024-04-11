#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	bst_t *root;
	bst_t *s1;

	root = NULL;

	s1 = bst_search(root, 12);
	printf("Found %p\n", (void *)s1);

	return (0);
}
