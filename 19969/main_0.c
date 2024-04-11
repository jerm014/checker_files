void print_diagsums(int *, int);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	int c3[3][3] = {
		{72635472, 652476, 23842634},
		{2634534, 2782634, 63458345},
		{3453454, 3453455, 28974827}
	};
	print_diagsums((int *)c3, 3);
	return (0);
}
