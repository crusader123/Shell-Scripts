#!/bin/bash
#ps aux | tr -s " " | sort -nr -k 4 | head -1 | cut -d " " -f11 -2
ps -eo pmem,cmd,pid | sort -nr -k 1 | head -1 | tr -s " " | cut -d " " -f3-
exit 0
