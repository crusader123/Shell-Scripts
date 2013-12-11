#!/bin/bash
who -s | tr -s " " | cut -d " " -f1 | uniq -d
exit 0
