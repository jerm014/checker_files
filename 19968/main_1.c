void print_chessboard(char (*)[8]);

/**
 * main - check the code for Holberton School students.
 *
 * Return: Always 0.
 */
int main(void)
{
	char board[8][8] = {
		{' ', 'r', 'b', ' ', 'k', ' ', ' ', 'r'},
		{'p', ' ', 'p', ' ', 'p', 'p', ' ', ' '},
		{' ', ' ', 'k', ' ', 'q', 'k', 'p', 'b'},
		{' ', 'p', ' ', 'p', ' ', ' ', ' ', ' '},
		{' ', 'P', ' ', ' ', ' ', ' ', ' ', 'p'},
		{' ', ' ', 'K', ' ', ' ', 'K', 'P', 'B'},
		{'P', 'B', 'P', 'P', 'P', 'P', ' ', 'P'},
		{'R', ' ', ' ', 'Q', ' ', 'R', 'K', ' '},
	};
	print_chessboard(board);
	return (0);
}
