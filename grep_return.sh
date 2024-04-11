#!/bin/bash

grep -E "return\s*\('\\\\0'\);" $1
