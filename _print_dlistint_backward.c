#include <stdio.h>
#include "lists.h"

/**
 * _print_dlistint_backward - Prints a doubly linkedlist of integers
 *
 * @h: A pointer to the first element of a list
 *
 * Return: The number of element printed
 */
size_t _print_dlistint_backward(const dlistint_t *h)
{
	size_t n;
	const dlistint_t *ptr;

	for (ptr = h; ptr && ptr->next;)
		ptr = ptr->next;
	for (n = 0; ptr;)
	{
		printf("%d\n", ptr->n);
		ptr = ptr->prev;
		++n;
	}
	return (n);
}
