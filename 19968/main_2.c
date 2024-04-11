void print_chessboard(char (*)[8]);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	char board[8][8] = {
		{' ', 'r', 'b', ' ', 'k', ' ', ' ', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', 'k', ' ', 'q', 'r', ' ', 'b'},
		{'R', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', 'K', ' ', ' ', 'K', ' ', 'B'},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', ' ', 'Q', ' ', 'R', 'K', ' '},
	};
	print_chessboard(board);
	return (0);
}
