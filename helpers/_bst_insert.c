#include <stdlib.h>
#include "binary_trees.h"

binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value);

/**
 * _bst_insert_node - Inserts a node in a BST
 *
 * @tree: Pointer to the root node of the BST
 * @node: Pointer to the node to insert
 *
 * Return: 1 on success, 0 on failure
 */
int _bst_insert_node(bst_t *tree, bst_t *node)
{
	if (node->n == tree->n)
		return (0);
	if (node->n > tree->n)
	{
		if (!tree->right)
		{
			tree->right = node;
			node->parent = tree;
			return (1);
		}
		return (_bst_insert_node(tree->right, node));
	}
	if (!tree->left)
	{
		tree->left = node;
		node->parent = tree;
		return (1);
	}
	return (_bst_insert_node(tree->left, node));
}

/**
 * _bst_insert - Inserts a node in a Binary Search Tree
 *
 * @tree: Pointer to the root node of the BST.
 * If NULL, the inserted node become the root node
 * @value: Value to be inserted
 * If duplicated, the insertio is canceled
 *
 * Return: A pointer to the created node. NULL on failure
 */
bst_t *_bst_insert(bst_t **tree, int value)
{
	bst_t *node;

	node = _binary_tree_node(NULL, value);
	if (!node)
		return (NULL);
	if (!*tree)
		*tree = node;
	else if (!_bst_insert_node(*tree, node))
	{
		free(node);
		node = NULL;
	}
	return (node);
}
