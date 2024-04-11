#include <stdlib.h>
#include <stdio.h>
#include "binary_trees.h"

/* Our own functions */
void binary_tree_print(const binary_tree_t *tree);
binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value);
void _binary_tree_delete(binary_tree_t *tree);

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	binary_tree_t *root;
	int heap;

	root = _binary_tree_node(NULL, 98);
	root->left = _binary_tree_node(root, 90);
	root->right = _binary_tree_node(root, 85);
	root->left->left = _binary_tree_node(root->left, 87);
	root->left->right = _binary_tree_node(root->left, 25);
	root->right->left = _binary_tree_node(root->right, 29);
	root->right->right = _binary_tree_node(root->right, 40);
	root->right->right->left = _binary_tree_node(root->right->right, 39);
	/*root->right->right->right = _binary_tree_node(root->right->right, 38);*/
	root->right->left->left = _binary_tree_node(root->right->left, 22);
	root->right->left->right = _binary_tree_node(root->right->left, 28);
	root->left->right->left = _binary_tree_node(root->left->right, 21);
	root->left->right->right = _binary_tree_node(root->left->right, 20);
	root->left->left->left = _binary_tree_node(root->left->left, 35);
	root->left->left->right = _binary_tree_node(root->left->left, 45);

	heap = binary_tree_is_heap(root);
	printf("Is the tree with root node (%d) a Max Heap: %d\n", root->n, heap);

	binary_tree_print(root);
	_binary_tree_delete(root);
	return (0);
}
