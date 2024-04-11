#include <stdlib.h>
#include "binary_trees.h"

binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value);
int _binary_tree_balance(const binary_tree_t *tree);
binary_tree_t *_binary_tree_rotate_left(binary_tree_t *tree);
binary_tree_t *_binary_tree_rotate_right(binary_tree_t *tree);

/**
 * _avl_insert_ - Recursive function to insert n in subtree rooted
 * with node and returns new root of subtree.
 *
 * @parent: Pointer to the parent of the node
 * @node: Pointer to the root node
 * @new: Pointer to the node to insert
 *
 * Return: Pointer to the new root
 */
avl_t *_avl_insert_(avl_t *parent, avl_t *node, avl_t *new)
{
	int balance;

	if (node == NULL)
	{
		new->parent = parent;
		return (new);
	}
	if (new->n < node->n)
		node->left = _avl_insert_(node, node->left, new);
	else if (new->n > node->n)
		node->right = _avl_insert_(node, node->right, new);
	else
		return (node);
	balance = _binary_tree_balance(node);
	if (balance > 1 && new->n < node->left->n)
		return (_binary_tree_rotate_right(node));
	if (balance < -1 && new->n > node->right->n)
		return (_binary_tree_rotate_left(node));
	if (balance > 1 && new->n > node->left->n)
	{
		node->left = _binary_tree_rotate_left(node->left);
		return (_binary_tree_rotate_right(node));
	}
	if (balance < -1 && new->n < node->right->n)
	{
		node->right = _binary_tree_rotate_right(node->right);
		return (_binary_tree_rotate_left(node));
	}
	return (node);
}

/**
 * _avl_insert - Inserts a new value in an AVL tree
 *
 * @root: Pointer to the root node of the AVL tree
 * @n: Value to sotre in the new node
 *
 * Return: Pointer to the newly created node
 */
avl_t *_avl_insert(avl_t **root, int n)
{
	avl_t *new;

	new = _binary_tree_node(NULL, n);
	if (!new)
		return (*root);
	*root = _avl_insert_(NULL, *root, new);
	return (new);
}
