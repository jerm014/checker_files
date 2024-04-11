void _memset(char *s, char c, int len)
{
	int i;

	for (i = 0; s && i < len; i++)
	{
		s[i] = c;
	}
}
