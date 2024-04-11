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
		{"10", SPADE}, {"6", DIAMOND}, {"Ace", SPADE}, {"7", DIAMOND}, {"2", SPADE}, {"4", SPADE}, {"8", CLUB}, {"9", HEART}, {"4", DIAMOND}, {"3", SPADE}, {"3", HEART}, {"Jack", DIAMOND}, {"2", HEART}, {"Ace", CLUB}, {"5", HEART}, {"6", SPADE}, {"5", CLUB}, {"King", HEART}, {"3", DIAMOND}, {"Jack", SPADE}, {"10", HEART}, {"8", DIAMOND}, {"Ace", HEART}, {"10", DIAMOND}, {"8", HEART}, {"Queen", DIAMOND}, {"Jack", CLUB}, {"Queen", CLUB}, {"Ace", DIAMOND}, {"8", SPADE}, {"10", CLUB}, {"Queen", HEART}, {"4", HEART}, {"King", CLUB}, {"Queen", SPADE}, {"King", DIAMOND}, {"5", DIAMOND}, {"3", CLUB}, {"9", SPADE}, {"6", CLUB}, {"5", SPADE}, {"2", CLUB}, {"7", CLUB}, {"7", HEART}, {"2", DIAMOND}, {"Jack", HEART}, {"6", HEART}, {"4", CLUB}, {"9", CLUB}, {"9", DIAMOND}, {"7", SPADE}, {"King", SPADE}
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
