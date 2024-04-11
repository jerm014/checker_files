#include "main.h"
#include <stdio.h>

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
    char *s0 = "Anne Cognet";
    char *s1 = "Asaia Palacios";

    printf("%s, %s\n", s0, s1);
    if (s0 != s1) {
        printf("Different\n");
    }
    set_string(&s1, s0);
    printf("%s, %s\n", s0, s1);
    if (s0 == s1) {
        printf("Equal\n");
    }
    return (0);
}
