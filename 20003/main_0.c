#include <stdio.h>
#include "1-pi.h"

/**
 * main - Entry point
 *
 * Return: 1 for error, 0 therwise
 */
int main(void)
{
#ifndef PI
	printf("Macro 'PI' is not defined\n");
	return (1);
#else
	printf("%.12f\n", PI);
	return (0);
#endif
}
