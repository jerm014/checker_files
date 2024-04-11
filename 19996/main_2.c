#include "main.h"
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

/**
 * main - check the code .
 *
 * Return: Always 0.
 */
int main(void)
{
    char *c;
    
    c = malloc_checked(sizeof(char) * 1024);
    free(c);
    return (0);
}
