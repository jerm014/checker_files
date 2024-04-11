#include <stdio.h>
#include "0-object_like_macro.h"

/**
 * main - Entry point
 *
 * Return: 1 for error, 0 therwise
 */
int main(void)
{
#ifndef SIZE
	printf("Macro 'SIZE' is not defined\n");
	return (1);
#else
	printf("%d\n", SIZE);
	return (0);
#endif
}
