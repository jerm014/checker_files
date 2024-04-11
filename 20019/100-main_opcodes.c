#include <stdlib.h>
#include <stdio.h>

int main(int ac, char **av)
{
	unsigned char *m, c;
	int n, i;

	if (ac != 2)
	{
		printf("Error\n");
		return (1);
	}
	n = atoi(av[1]);
	if (n < 0)
	{
		printf("Error\n");
		return (2);
	}
	m = (char *)main;
	i = 0;
	while (i < n)
	{
		if (i != 0)
		{
			printf(" ");
		}
		c = m[i];
		printf("%02x", c);
		i++;
	}
	printf("\n");
	return (0);
}
