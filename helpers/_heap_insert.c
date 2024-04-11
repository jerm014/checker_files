#include <stdio.h>
#include <stdlib.h>
#include "binary_trees.h"

binary_tree_t *_binary_tree_node(binary_tree_t *parent, int value);

#ifndef _CHECKER_HEAP_QUEUE_
#define _CHECKER_HEAP_QUEUE_
typedef struct checker_queue_node_s
{
	binary_tree_t *ptr;
	struct checker_queue_node_s *next;
	struct checker_queue_node_s *prev;
} checker_queue_node_t;

typedef struct checker_queue_s
{
	struct checker_queue_node_s *front;
	struct checker_queue_node_s *back;
} checker_queue_t;

#endif /* _CHECKER_HEAP_QUEUE_ */

/**
 * _pop_front - Pops out the front node of a queue
 *
 * @queue: Pointer to the queue
 *
 * Return: A pointer to the data of the poped node
 */
static binary_tree_t *_pop_front(checker_queue_t *queue)
{
	checker_queue_node_t *node;
	binary_tree_t *ptr;

	node = queue->front;
	if (node)
	{
		queue->front = node->next;
		if (node->next)
			node->next->prev = NULL;
		ptr = node->ptr;
		free(node);
		return (ptr);
	}
	return (NULL);
}

/**
 * _push_back - Push an element at the back of a queue
 *
 * @queue: Pointer to the queue
 * @ptr: Data to store in the new node
 *
 * Return: A pointer to the created node
 */
static checker_queue_node_t *_push_back(checker_queue_t *queue, binary_tree_t *ptr)
{
	checker_queue_node_t *node;

	node = malloc(sizeof(*node));
	if (!node)
		return (NULL);
	node->ptr = ptr;
	node->next = NULL;
	node->prev = NULL;
	if (!queue->front)
	{
		queue->front = node;
		queue->back = node;
		return (node);
	}
	node->prev = queue->back;
	queue->back->next = node;
	queue->back = node;
	return (node);
}

/**
 * _create_queue - Creates a queue
 *
 * Return: A pointer to the created queue
 */
static checker_queue_t *_create_queue()
{
	checker_queue_t *queue;

	queue = malloc(sizeof(*queue));
	if (!queue)
		return (NULL);
	queue->front = NULL;
	queue->back = NULL;
	return (queue);
}

/**
 * _delete_queue - Deletes a queue
 *
 * @queue: Pointer to the queue to delete
 */
static void _delete_queue(checker_queue_t *queue)
{
	checker_queue_node_t *node;
	checker_queue_node_t *tmp;

	if (!queue)
		return;
	for (node = queue->front; node; node = tmp)
	{
		tmp = node->next;
		free(node);
	}
	free(queue);
}

/**
 * _last_node_ - Gets the last node in a complete binary tree
 *
 * @tree: Pointer to the root node of the tree
 *
 * Return: A pointer to the last node of the complete tree
 */
static heap_t *_last_node_(heap_t *tree)
{
	heap_t *t;
	checker_queue_t *queue;

	queue = _create_queue();
	if (!queue)
		return (NULL);
	_push_back(queue, tree);
	t = NULL;
	while (queue->front)
	{
		t = _pop_front(queue);
		if (!t->left || !t->right)
			break;
		if (t->left)
			_push_back(queue, t->left);
		if (t->right)
			_push_back(queue, t->right);
	}
	_delete_queue(queue);
	return (t);
}

/**
 * _heap_insert - Inserts a value in a binary Heap
 *
 * @root: Double pointer to the root node of the tree
 * @value: Value to insert
 *
 * Return: A pointer to the created node
 */
heap_t *_heap_insert(heap_t **root, int value)
{
	heap_t *node;
	heap_t *t;
	int tmp;

	node = _binary_tree_node(NULL, value);
	if (!node)
		return (NULL);
	if (!*root)
	{
		*root = node;
		return (node);
	}
	t = _last_node_(*root);
	if (!t)
		return (NULL);
	if (!t->left)
		t->left = node;
	else
		t->right = node;
	for (node->parent = t; node->parent && node->parent->n < node->n;)
	{
		tmp = node->n;
		node->n = node->parent->n;
		node->parent->n = tmp;
		node = node->parent;
	}
	return (node);
}
