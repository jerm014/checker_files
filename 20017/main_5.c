#include <stdio.h>
#include "function_pointers.h"

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	int array[20] = {
		0, -986, 97, 402, 1024, 4096, -1024, 98, 1, 2, 3, 4,
		5, 6, 7, 8, 9, 10, 11, 98
	};
	int index;

	index = int_index(array, 20, NULL);
	printf("%d\n", index);
	return (0);
}
