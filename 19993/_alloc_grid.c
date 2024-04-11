#include <stdlib.h>

int **alloc_grid(int width, int height)
{
	int **g;
	int *line;
	int i;
	int n;
	int c;

	g = malloc(sizeof(int *) * height);
	if (g == NULL)
	{
		return (NULL);
	}
	i = 0;
	while (i < height)
	{
		line = malloc(sizeof(int) * width);
		if (line == NULL)
		{
			n = 0;
			while (n < i)
			{
				free(g[n]);
				++n;
			}
			free(g);
			return (NULL);
		}
		c = 0;
		while (c < width)
		{
			line[c] = 0;
			c++;
		}
		g[i] = line;
		i++;
	}
	return (g);
}
