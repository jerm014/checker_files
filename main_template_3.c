#include <stdlib.h>
#include <stdio.h>
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

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	binary_tree_t *root;

	root = _binary_tree_node(NULL, 70);
	root->left = _binary_tree_node(root, 50);
	root->right = _binary_tree_node(root, 90);
	root->left->left = _binary_tree_node(root->left, 40);
	root->left->right = _binary_tree_node(root->left, 60);
	root->right->left = _binary_tree_node(root->right, 80);
	root->right->right = _binary_tree_node(root->right, 110);
	root->right->right->left = _binary_tree_node(root->right->right, 105);
	root->right->right->right = _binary_tree_node(root->right->right, 120);
	root->right->left->left = _binary_tree_node(root->right->left, 75);
	root->right->left->right = _binary_tree_node(root->right->left, 85);
	root->left->right->left = _binary_tree_node(root->left->right, 55);
	root->left->right->right = _binary_tree_node(root->left->right, 65);
	root->left->left->left = _binary_tree_node(root->left->left, 35);
	root->left->left->right = _binary_tree_node(root->left->left, 45);

	/* ###FUNC### */

	binary_tree_print(root);
	return (0);
}
