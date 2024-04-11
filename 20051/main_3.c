#include <stdio.h>
#include <stdlib.h>
#include "lists.h"

/**
 * _free_listint - Realease the memory allocated for a list
 *
 * @head: A pointer to the first node of the list to free
 */
void _free_listint(listint_t *head)
{
	if (head)
	{
		_free_listint(head->next);
		free(head);
	}
}

#define NB_VALUES 2

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	listint_t *head;
	int values[NB_VALUES] = {
		-12,
		6,
	};
	listint_t *ptr;
	int i;
	size_t n;

	head = NULL;
	for (i = 0; i < NB_VALUES; ++i)
	{
		ptr = add_nodeint(&head, values[i]);
		if (!ptr)
		{
			printf("Failed\n");
			_free_listint(head);
			return (1);
		}
	}
	n = print_listint(head);
	printf("-> %lu elements\n", n);
	_free_listint(head);
	return (0);
}
