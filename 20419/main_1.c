#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "search_algos.h"

listint_t *create_list(int *array, size_t size);
void free_list(listint_t *list);

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
	listint_t *head, *res;
	int array[23] = {
		0, 1, 2, 3, 4, 7, 12, 15, 18, 19, 23, 53, 61, 62, 100, 100, 100, 111, 122, 123, 145, 155, 260
	};

	head = create_list(array, 23);
	res = jump_list(head, 23, 100);
	printf("Found at index: %lu\n", res->index);
	free(head);
	return (0);
}
