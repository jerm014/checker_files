#include <stdio.h>
#include <stdlib.h>
#include "lists.h"

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	dlistint_t *head;
	dlistint_t *n;

	head = NULL;
	n = get_dnodeint_at_index(head, 0);
	if (n)
		printf("-> %d\n", n->n);
	else
		printf("(nil)\n");
	return (0);
}
