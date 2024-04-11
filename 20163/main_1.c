#include <stdio.h>
#include "lists.h"

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	dlistint_t head = {9, 0, 0};
	size_t n;

	n = print_dlistint_backward(&head);
	printf("-> %lu elements\n", n);
	return (0);
}
