#include <stdio.h>
#include <stdlib.h>
#include "lists.h"

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	free_listint(NULL);
	printf("Freed !\n");
	return (0);
}
