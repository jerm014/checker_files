#include <stdlib.h>

/**
 * count_words - Counts the number of words in a string
 *
 * @str: The string to count the number of words in
 *
 * Return: The number of words
 */
int count_words(char *str)
{
	int i;
	int n;

	for (i = 0, n = 0; str && str[i];)
	{
		if (str[i] != ' ' && str[i] != '\t')
		{
			++n;
			while (str[i] && str[i] != ' ' && str[i] != '\t')
				++i;
		}
		else
			++i;
	}
	return (n);
}

/**
 * first_wordchar - Search for the first non-separator char
 *
 * @str: The string to search in
 * @count: The initial index to start to search
 *
 * Return: The index of the first non-separator char
 */
int first_wordchar(char *str, int count)
{
	while (str && str[++count])
		if (str[count] != ' ' && str[count] != '\t')
			return (count);
	return (count);
}

/**
 * last_wordchar - Search for the first separator char
 *
 * @str: The string to search in
 * @count: The initial index to start to search
 *
 * Return: The index of the first separator char
 */
int last_wordchar(char *str, int count)
{
	while (str && str[++count])
		if (str[count] == ' ' || str[count] == '\t')
			return (count);
	return (count);
}

/**
 * delimit_str - Copy a delimited part of a string in another
 *
 * @dest: The destination string
 * @str: The string to be copied
 * @first: The index in @str to start the copy
 * @last: The index in @str to end the copy
 *
 * Return: The @dest string
 */
char *delimit_str(char *dest, char *str, int first, int last)
{
	int count;

	for (count = 0; count + first < last; ++count)
		dest[count] = str[first + count];
	dest[count] = '\0';
	return (dest);
}

/**
 * strtow - Splits a string in an array of words
 *
 * @str: The string to be splited
 *
 * Return: An array of string
 */
char **strtow(char *str)
{
	char **tab;
	int count;
	int first;
	int last;
	int n;

	last = -1;
	n = count_words(str);
	if (!str || !str[0] || n == 0)
		return (NULL);
	tab = malloc(sizeof(*tab) * (n + 1));
	if (!tab)
		return (NULL);
	for (count = 0; count < n; ++count)
	{
		first = first_wordchar(str, last);
		last = last_wordchar(str, first);
		tab[count] = malloc(sizeof(**tab) * ((last - first) + 1));
		if (!tab[count])
			return (NULL);
		tab[count] = delimit_str(tab[count], str, first, last);
	}
	tab[count] = NULL;
	return (tab);
}
