#include <stdlib.h>
#include <stdio.h>
#include "hash_tables.h"

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always EXIT_SUCCESS.
 */
int main(void)
{
	char *s;
	unsigned long int hash_table_array_size;

	hash_table_array_size = 1;
	s = "";
	printf("%lu\n", hash_djb2((unsigned char *)s));
	printf("%lu\n", key_index((unsigned char *)s, hash_table_array_size));	
	return (EXIT_SUCCESS);
}
