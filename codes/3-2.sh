#a!/bin/bash
echo "Removed files"
#echo `ls -al $1 | grep '~' | tr -s ' ' | cut -d " " -f8`\n
co=`ls -a $1 | grep '~' | wc -l`
for (( i = 1 ; i<="$co" ; i++ ))
do
echo `ls -a $1 | grep '~' | head -1`
rm "$1"/`ls -a $1 | grep '~' | head -1`
done
exit 0

