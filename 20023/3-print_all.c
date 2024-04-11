#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include "variadic_functions.h"

/**
 * _print_int - Print a int
 *
 * @valist: The valist containing the value to print
 */
void _print_int(va_list valist)
{
	int s;

	s = va_arg(valist, int);
	printf("%d", s);
}

/**
 * _print_string - Print a string
 *
 * @valist: The valist containing the value to print
 */
void _print_string(va_list valist)
{
	const char *s;

	s = va_arg(valist, char *);
	printf("%s", s ? s : "(nil)");
}

/**
 * _print_char - Print a char
 *
 * @valist: The valist containing the value to print
 */
void _print_char(va_list valist)
{
	char s;

	s = va_arg(valist, int);
	printf("%c", s);
}

/**
 * _print_float - Print a float
 *
 * @valist: The valist containing the value to print
 */
void _print_float(va_list valist)
{
	float s;

	s = va_arg(valist, double);
	printf("%f", s);
}

/**
 * print_all - Print several types
 *
 * @format: Describes the type of value to print
 */
void print_all(const char * const format, ...)
{
	va_list valist;
	unsigned int i;
	unsigned int f;
	va_t functions[] = {
		{'i', _print_int},
		{'c', _print_char},
		{'s', _print_string},
		{'f', _print_float},
		{'\0', NULL}
	};
	unsigned int n;

	va_start(valist, format);
	i = 0;
	n = 0;
	while (format && format[i])
	{
		f = 0;
		while (functions[f].f != NULL)
		{
			if (functions[f].c == format[i])
			{
				if (n > 0)
				{
					printf(", ");
				}
				functions[f].f(valist);
				n++;
				break;
			}
			f++;
		}
		i++;
	}
	va_end(valist);
	printf("\n");
}
