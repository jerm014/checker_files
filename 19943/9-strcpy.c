/**
 * _strcpy - Copy the content of a string in another
 *
 * @dest: The allocated destination string
 * @src: The source string to copy
 * Return: The copied string @dest
 */
char *_strcpy(char *dest, char *src)
{
	int i;

	i = 0;
	while (src[i])
	{
		dest[i] = src[i];
		i++;
	}
	dest[i] = '\0';
	return (dest);
}
