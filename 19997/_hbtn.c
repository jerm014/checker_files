#include <stdlib.h>

unsigned int _strlen(char *str)
{
	unsigned int i;

	i = 0;
	while (str && str[i])
	{
		++i;
	}
	return (i);
}

char *_strcpy(char *dest, char *src)
{
	unsigned int i;

	i = 0;
	while (src && src[i])
	{
		dest[i] = src[i];
		++i;
	}
	return (dest);
}

char *_strncpy(char *dest, char *src, unsigned int n)
{
	unsigned int i;

	i = 0;
	while (i < n && src && src[i])
	{
		dest[i] = src[i];
		++i;
	}
	return (dest);
}

char *string_nconcat(char *s1, char *s2, unsigned int n)
{
	int l;
	char *s;

	if (s1 == NULL)
	{
		s1 = "";
	}
	if (s2 == NULL)
	{
		s2 = "";
	}
	if (n > _strlen(s2))
	{
		n = _strlen(s2);
	}
	l = _strlen(s1) + n + 1;
	if (l == 0)
		return (NULL);
	s = malloc(l * sizeof(char));
	if (s == NULL)
	{
		return (NULL);
	}
	_strcpy(s, s1);
	_strncpy(s + _strlen(s1), s2, n);
	return (s);
}
