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
	int r;

	head = NULL;
	r = delete_dnodeint_at_index(&head, 0);
	printf("-> %d\n", r);
	return (0);
}
