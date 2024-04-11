#include <stddef.h>
#include "lists.h"
#include "_free_listint_safe.h"
#include <stdlib.h>
#include <stdio.h>

const listint_t *__find_in_list(_listdone_t **done, const listint_t *node)
{
	_listdone_t *p;

	p = *done;
	while (p)
	{
		if (p->node == node)
		{
			return (p->node);
		}
		p = p->next;
	}
	p = malloc(sizeof(_listdone_t));
	if (p == NULL)
	{
		printf("Error\n");
		exit(98);
	}
	p->node = node;
	p->next = *done;
	*done = p;
	return (NULL);
}

void __free_done(_listdone_t *done)
{
	_listdone_t *tmp;

	while (done)
	{
		tmp = done->next;
		free(done);
		done = tmp;
	}
}

size_t _free_listint_safe(listint_t **h)
{
	_listdone_t *done;
	listint_t *head;
	listint_t *tmp;
	size_t n;

	head = *h;
	n = 0;
	done = NULL;
	while (head)
	{
		if (__find_in_list(&done, head) != NULL)
		{
			__free_done(done);
			*h = NULL;
			return (n);
		}
		tmp = head;
		head = head->next;
		free(tmp);
		n++;
	}
	__free_done(done);
	*h = NULL;
	return (n);
}
