#include <stdlib.h>
#include <string.h>
#include "hash_tables.h"

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always EXIT_SUCCESS.
 */
int main(void)
{
	hash_table_t *ht;
	char *key = strdup("USA");
	char *value = strdup("Washington");

	ht = hash_table_create(1);
	hash_table_set(ht, key, value);
	free(key);
	free(value);
	hash_table_delete(ht);
	return (EXIT_SUCCESS);
}
