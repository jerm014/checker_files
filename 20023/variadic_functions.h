#ifndef _VARIADIC_H_
#define _VARIADIC_H_

#include <stdarg.h>

/**
 * struct va_s - va_t
 *
 * @c: Char
 * @f: Function
 */
typedef struct va_s
{
	char c;
	void (*f)(va_list valist);
} va_t;

int sum_them_all(const unsigned int n, ...);
void print_numbers(const char *separator, const unsigned int n, ...);
void print_strings(const char *separator, const unsigned int n, ...);
void _print_int(va_list valist);
void _print_string(va_list valist);
void _print_char(va_list valist);
void _print_int(va_list valist);
void print_all(const char * const format, ...);

#endif
