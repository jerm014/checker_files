#include <stdio.h>
#include "function_pointers.h"

/**
 * is_98 - check if a number is equal to 98
 * @elem: the integer to check
 *
 * Return: 0 if false, something else otherwise.
 */
int is_98(int elem)
{
	return (elem == 98);
}

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	int index;

	index = int_index(NULL, 20, &is_98);
	printf("%d\n", index);
	return (0);
}
