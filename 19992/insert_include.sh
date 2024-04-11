#!/bin/bash

# cat 3-alloc_grid.c > tmp && echo '#include "fake_malloc.h"' > 3-alloc_grid.c && echo '' >> 3-alloc_grid.c && cat tmp >> 3-alloc_grid.c && rm -f tmp
echo '#include "fake_malloc.h"' > 3-alloc_grid_fake_malloc.c && echo '' >> 3-alloc_grid_fake_malloc.c && cat 3-alloc_grid.c >> 3-alloc_grid_fake_malloc.c
