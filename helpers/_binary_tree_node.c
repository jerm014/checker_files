#include <stdlib.h>
#include "binary_trees.h"

/**
 * _binary_tree_node - Creates a new node
 *
 * @parent: Pointer to the parent node
 * @value: Int to store in the node
 *
 * Return: Pointer to the created node. NULL on failure
 */
binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value)
{
	binary_tree_t *node;

	node = malloc(sizeof(*node));
	if (!node)
		return (NULL);
	node->n = value;
	node->left = NULL;
	node->right = NULL;
	node->parent = parent;
	return (node);
}
