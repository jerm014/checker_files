#include <stdio.h>
#include <stdlib.h>
#include "sort.h"

/**
 * main - Entry point
 *
 * Return: Always 0
 */
int main(void)
{
	int array[] = {966, 393, 729, 85, 957, 159, 819, 827, 816, 59, 226, 849, 71, 39, 155, 939, 459, 807, 951, 494, 189, 54, 958, 90, 195, 1000, 505, 259, 697, 651, 206, 84, 637, 254, 413, 773, 598, 49, 252, 584, 935, 976, 699, 572, 200, 949, 929, 80, 554, 847, 346, 383, 839, 172, 257, 124, 753, 860, 493, 134, 107, 467, 904, 835, 486, 808, 503, 945, 45, 17, 448, 783, 242, 246, 128, 62, 901, 575, 846, 872, 280, 786, 260, 14, 441, 688, 634, 409, 89, 323, 65, 300, 870, 289, 646, 519, 997, 211, 998, 64};
	size_t n = sizeof(array) / sizeof(array[0]);/* 100 */

	print_array(array, n);
	printf("\n");
	radix_sort(array, n);
	printf("\n");
	print_array(array, n);
	return (0);
}
