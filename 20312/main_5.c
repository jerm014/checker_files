#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/* Our own functions */
binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value);
void binary_tree_print(const binary_tree_t *tree);
void _binary_tree_delete(binary_tree_t *tree);

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	binary_tree_t *root, *root1;
	binary_tree_t *first, *second;
	binary_tree_t *ancestor;

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

	root1 = root->right;
	root1->parent = NULL;
	root->right = NULL;

	first = root->left->right->left;
	second = root1->left->right;
	ancestor = binary_trees_ancestor(first, second);
	printf("Lowest common ancestor of (%d) and (%d) is: ", first->n, second->n);
	if (ancestor)
		printf("%d\n", ancestor->n);
	else
		printf("%p\n", (void *)ancestor);

	binary_tree_print(root);
	binary_tree_print(root1);
	_binary_tree_delete(root);
	_binary_tree_delete(root1);
	return (0);
}
