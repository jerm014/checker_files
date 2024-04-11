#include <stdio.h>
#include "lists.h"

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	listint_t head = {12, 0};
	listint_t tail = {6, 0};
	size_t n;

	head.next = &tail;
	n = listint_len(&head);
	printf("-> %lu elements\n", n);
	return (0);
}
