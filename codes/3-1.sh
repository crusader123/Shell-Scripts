#!/bin/bash
find $1 -maxdepth 2 -type f -ls | tr -s " " | sort -rn -k 7 | head -1 | cut -d " " -f11
exit 0
