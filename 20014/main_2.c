#include <stdio.h>
#include <stdlib.h>
#include "dog.h"

dog_t *_new_dog(char *, float, char *);

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
	dog_t *my_dog;

	my_dog = _new_dog("Ghost", 4.75, "Jon Snow");
	free(my_dog->name);
	my_dog->name = NULL;
	free_dog(my_dog);
	return (0);
}
