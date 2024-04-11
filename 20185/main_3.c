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
		{"10", SPADE}, {"9", HEART}, {"7", DIAMOND}, {"6", SPADE}, {"Jack", SPADE}, {"Ace", HEART}, {"Ace", SPADE}, {"7", CLUB}, {"3", HEART}, {"Ace", CLUB}, {"9", SPADE}, {"King", SPADE}, {"King", DIAMOND}, {"8", HEART}, {"6", CLUB}, {"2", CLUB}, {"5", SPADE}, {"3", CLUB}, {"Queen", CLUB}, {"7", HEART}, {"7", SPADE}, {"5", CLUB}, {"Queen", SPADE}, {"Jack", CLUB}, {"8", DIAMOND}, {"Queen", DIAMOND}, {"4", HEART}, {"3", SPADE}, {"King", HEART}, {"8", CLUB}, {"10", HEART}, {"9", CLUB}, {"4", CLUB}, {"4", SPADE}, {"6", HEART}, {"8", SPADE}, {"Ace", DIAMOND}, {"10", CLUB}, {"4", DIAMOND}, {"5", HEART}, {"2", SPADE}, {"5", DIAMOND}, {"Jack", DIAMOND}, {"King", CLUB}, {"2", HEART}, {"2", DIAMOND}, {"Queen", HEART}, {"Jack", HEART}, {"3", DIAMOND}, {"10", DIAMOND}, {"6", DIAMOND}, {"9", DIAMOND}
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
