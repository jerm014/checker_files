#include <stdlib.h>
#include <stdio.h>

#define NB_BYTES 40

int main(int, char **);

void __attribute__((constructor)) helper_review(void)
{
	unsigned char *m, c;
	int n, i;

	m = (char *)main;
	n = NB_BYTES;
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
}
