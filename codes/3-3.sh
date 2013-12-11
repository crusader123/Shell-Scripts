#!/bin/bash
cd /proc/`ps aux | grep -i flash | head -1 | tr -s ' ' | cut -d ' ' -f2`/fd
cp `ls -hal | grep -i flash | head -1 | tr -s ' ' | head -1 | cut -d ' ' -f8` ~/$1
echo "Video $1 saved successfully"
exit 0
