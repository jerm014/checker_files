#include <stdio.h>
#include <stdlib.h>
#include "lists.h"

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	listint_t *head;
	int n;

	head = NULL;
	n = delete_nodeint_at_index(&head, 0);
	printf("-> %d\n", n);
	return (0);
}
