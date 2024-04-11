#include <stdio.h>
#include <stdlib.h>
#include "lists.h"

size_t _print_dlistint_backward(const dlistint_t *h);


/**
 * _free_dlist - Realease the memory allocated for a list
 *
 * @head: A pointer to the first node of the list to free
 */
void _free_dlist(dlistint_t *head)
{
	if (head)
	{
		_free_dlist(head->next);
		free(head);
	}
}

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	dlistint_t *head;
	int ints[130] = {
		7856, 4460, -8622, -6734, -4625, 9495, 2277, -1368, -1080, -1057, -4294, -3307, 9065, -3329, -507, -6507, -5248, 9471, -9026, -6124, -6383, 8133, 2752, -7869, -6714, -2709, 8465, -643, -1376, 1241, 7203, -306, 5856, 1212, -4360, 1375, 2113, -458, 6376, 6979, -4259, -7266, -5247, -9745, 4475, -6326, -9484, -1812, 7753, -7113, 1797, 4361, 3600, -6086, 8727, 760, 588, -9504, -3123, -2760, -1722, -5455, 4398, 9749, 235, -5199, -1243, 8973, -6865, -8598, -8692, 1515, 6475, -8714, -1754, 1611, 8953, -9775, 285, 9344, 7857, 3656, -6463, 2829, -1213, 1626, 6407, -2399, 7755, 5376, -5928, -3927, -2289, -6307, -4162, -7075, 518, -8735, 3474, 9951, 6377, -1782, -4119, -3766, -619, 1656, -3739, 3468, -9458, -613, 2846, 1550, -1967, -7232, -4337, -1780, 4148, 4190, -5837, 605, -130, 6430, 1170, -4384, 1310, 9896, -4189, 9176, 2942, -7917
	};
	dlistint_t *ptr;
	int i;
	size_t n;

	head = NULL;
	for (i = 0; i < 130; ++i)
	{
		ptr = add_dnodeint(&head, ints[i]);
		if (!ptr)
		{
			printf("Failed\n");
			_free_dlist(head);
			return (1);
		}
	}
	n = print_dlistint(head);
	printf("-> %lu elements\n", n);
	n = _print_dlistint_backward(head);
	printf("-> %lu elements\n", n);
	_free_dlist(head);
	return (0);
}
