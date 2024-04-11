#include <stdio.h>
#include "4-sum.h"

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
#ifndef SUM
	printf("The macro 'SUM' is not defined\n");
	return (1);
#else
	printf("%ld\n", SUM(20488723647834, 4087236496));
	return (0);
#endif
}
