#ifndef _FREE_LISTINT_SAFE_H_
#define _FREE_LISTINT_SAFE_H_

#include <stddef.h>

typedef struct _listdone_s
{
	const struct listint_s *node;
	struct _listdone_s *next;
} _listdone_t;

#endif /* _FREE_LISTINT_SAFE_H_ */
