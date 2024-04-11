#include <stdlib.h>
#include "deck.h"

int value_of_card(const deck_node_t *node)
{
	const char *s;
	int value;

	s = node->card->value;
	value = 0;
	if (s[0] >= '0' && s[0] <= '9')
		value = atoi(s);
	else
	{
		switch (s[0])
		{
		case 'J':
			value = 11;
			break;
		case 'Q':
			value = 12;
			break;
		case 'K':
			value = 13;
			break;
		default:
			value = 1;
			break;
		}
	}
	return (value);
}

/**
 * sort_deck - Sorts an array of cards using LSD Radix sort algorithm
 *
 * @deck: Array to be sorted
 */
void sort_deck(deck_node_t **deck)
{
	char success;
	deck_node_t *node;
	deck_node_t *tmp;
	char kind1, kind2;
	int value1, value2;

	if (!deck || !*deck || !(*deck)->next)
		return;
	for (success = 0; !success;)
	{
		success = 1;
		for (node = *deck; node && node->next; node = node->next)
		{
			kind1 = node->card->kind;
			kind2 = node->next->card->kind;
			value1 = value_of_card(node);
			value2 = value_of_card(node->next);
			if (13 * kind1 + value1 > 13 * kind2 + value2)
			{
				tmp = node->next;
				if (node->prev)
					node->prev->next = tmp;
				if (tmp->next)
					tmp->next->prev = node;
				node->next  = tmp->next;
				tmp->prev = node->prev;
				tmp->next = node;
				node->prev = tmp;
				if (node == *deck)
					*deck = tmp;
				success = 0;
				node = tmp;
				/*print_deck(*deck);*/
			}
		}
	}
}
