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
	int n;

	head = NULL;
	n = sum_dlistint(head);
	printf("-> %d\n", n);
	return (0);
}
