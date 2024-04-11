#include <stdio.h>
#include <stdlib.h>

/**
 * _strlen - String length
 *
 * @s: the string to measure the length of
 * Return: The length of @s
 */
unsigned int _strlen(char *s)
{
	unsigned int i;

	for (i = 0; s && s[i]; ++i)
		;
	return (i);
}

/**
 * _rev_str - Reverse a string
 *
 * @s: the string to reverse
 * @len: Length of @s
 */
void _rev_str(char *s, unsigned int len)
{
	unsigned int i;
	char tmp;

	for (i = 0; i < len / 2; ++i)
	{
		tmp = s[i];
		s[i] = s[len - 1 - i];
		s[len - 1 - i] = tmp;
	}
}

/**
 * _memset - Set a memory area
 *
 * @s: The pointer to the area to set
 * @value: The value to fill the area with
 * @size: Number of bytes to set
 *
 * Return: The memory area set
 */
char *_memset(char *s, char value, unsigned int size)
{
	unsigned int i;

	for (i = 0; i < size; ++i)
		s[i] = value;
	return (s);
}

/**
 * minimize - Get ride of trailing 0
 *
 * @s: The string to monimize
 * Return: The minimized string
 */
char *minimize(char *s)
{
	char *r;
	unsigned int size;
	unsigned int i;
	int first;

	for (i = 0, size = 0, first = 1; s && s[i]; ++i)
		if (first && s[i] == '0')
			++size;
		else if (first && s[i] != '0')
			first = 0;
	if (size == 0)
		return (s);
	if (size == i)
		--size;
	r = malloc(sizeof(*r) * ((i - size) + 1));
	if (r == NULL)
		return (NULL);
	_memset(r, 0, sizeof(*r) * ((i - size) + 1));
	for (i = 0; s[i + size]; ++i)
		r[i] = s[i + size];
	free(s);
	return (r);
}

/**
 * mul - Calculates the product of two infinites numbers
 *
 * @nb1: The first number, an only-digit string
 * @nb2: The first number, an only-digit string
 * Return: The product, an only-digit string
 */
char *mul(char *nb1, char *nb2)
{
	char *r;
	int count[2];
	unsigned int total;
	unsigned int i;

	total = _strlen(nb1) + _strlen(nb2);
	r = malloc(sizeof(*r) * (total + 1));
	if (!r)
		return (NULL);
	_memset(r, 0, sizeof(*r) * (total + 1));
	count[0] = _strlen(nb1) - 1;
	while (count[0] >= 0)
	{
		count[1] = _strlen(nb2) - 1;
		while (count[1] >= 0)
		{
			r[count[0] + count[1] + 1] +=
			(nb1[count[0]] - 48) * (nb2[count[1]] - 48);
			r[count[0] + count[1]] +=
			r[count[0] + count[1] + 1] / 10;
			r[count[0] + count[1] + 1] %= 10;
			count[1]--;
		}
		count[0]--;
	}
	for (i = 0; i < total; ++i)
		r[i] += 48;
	return (minimize(r));
}

/**
 * main - Entry point
 *
 * @ac: Ac
 * @av: AV
 * Return: 0 or 1
 */
int main(int ac, char **av)
{
	int i;
	int j;
	char *res;

	if (ac != 3)
	{
		printf("Error\n");
		return (98);
	}
	for (j = 1; j < 3; ++j)
		for (i = 0; av[j][i]; ++i)
			if (av[j][i] < '0' || av[j][i] > '9')
			{
				printf("Error\n");
				return (98);
			}
	res = mul(av[1], av[2]);
	if (res == NULL)
		return (1);
	printf("%s\n", res);
	free(res);
	return (0);
}
