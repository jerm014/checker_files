#include <stdlib.h>
#include <stdio.h>
#include "deck.h"

/**
 * print_deck - Prints the deck
 *
 * @deck: Deck to print
 */
void print_deck(const deck_node_t *deck)
{
	size_t i;
	char kinds[4] = {
		'S', 'H', 'C', 'D'
	};

	i = 0;
	while (deck)
	{
		if (i)
			printf(", ");
		printf("{%s, %c}", deck->card->value, kinds[deck->card->kind]);
		if (i == 12)
			printf("\n");
		i = (i + 1) % 13;
		deck = deck->next;
	}
}

/**
 * init_deck - Initialize the deck ll
 *
 * @cards: Array of cards
 *
 * Return: List of cards
 */
deck_node_t *init_deck(const card_t cards[52])
{
	deck_node_t *deck;
	deck_node_t *node;
	size_t i;

	i = 52;
	deck = NULL;
	while (i--)
	{
		node = malloc(sizeof(*node));
		if (!node)
			return (NULL);
		node->card = &cards[i];
		node->next = deck;
		node->prev = NULL;
		if (deck)
			deck->prev = node;
		deck = node;
	}
	return (deck);
}

/**
 * main - Entry point
 *
 * Return: Always 0
 */
int main(void)
{
	card_t cards[52] = {
		{"8", HEART}, {"10", SPADE}, {"Jack", DIAMOND}, {"King", SPADE}, {"7", DIAMOND}, {"Jack", SPADE}, {"Queen", DIAMOND}, {"9", SPADE}, {"3", DIAMOND}, {"4", SPADE}, {"9", HEART}, {"4", DIAMOND}, {"9", CLUB}, {"Queen", HEART}, {"2", DIAMOND}, {"7", HEART}, {"6", DIAMOND}, {"5", SPADE}, {"2", SPADE}, {"Queen", CLUB}, {"Jack", HEART}, {"Ace", HEART}, {"7", SPADE}, {"King", DIAMOND}, {"5", DIAMOND}, {"3", HEART}, {"8", DIAMOND}, {"8", SPADE}, {"3", CLUB}, {"9", DIAMOND}, {"10", HEART}, {"Ace", SPADE}, {"3", SPADE}, {"5", HEART}, {"4", HEART}, {"6", SPADE}, {"4", CLUB}, {"Ace", DIAMOND}, {"10", CLUB}, {"King", CLUB}, {"6", HEART}, {"Jack", CLUB}, {"2", CLUB}, {"6", CLUB}, {"Queen", SPADE}, {"10", DIAMOND}, {"8", CLUB}, {"King", HEART}, {"5", CLUB}, {"7", CLUB}, {"Ace", CLUB}, {"2", HEART}
	};
	deck_node_t *deck;

	deck = init_deck(cards);
	print_deck(deck);
	printf("\n");
	sort_deck(&deck);
	printf("\n");
	print_deck(deck);
	return (0);
}
