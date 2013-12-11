#!/bin/bash
#if  [[ "$1" -eq  *.tar.gz || "$1" -eq *.tar ]]
#then
#ls -1 $(tar -tf $1 | tail -1 | cut -d "/" -f1)
#else
#echo "error: given file is not a tar file"
#fi
#exit 0
#echo $#
#if [[ $1 = *.tar.gz || $1 = *.tar ]]
#then
#p = tar -tf $1
#echo $p
#tar -tf $1 > /dev/null
#if [[ "$?" = "0" ]]
if [[ $1 = *.tar || $1 = *.tar.gz ]]
then
for p in `tar -tf $1`
do
echo `basename $p`
#echo `basename "$(tar -tf $1 | head -"$i")"`
#i=i+1;
done
else
echo "error:given file is not a tar file"
fi
exit 0

