#!/bin/bash
		
declare -i a=0
echo "For create directories press 1 & for delete press 11 / For create file press 2 & for delete press  22"
						#making folder
read b
if [ $b = 1 ]
then
echo "No. of folder?"
read c
echo "2^name 0f folder"
read d
until [ $a -eq $c ]
do
((a=1+a))
mkdir $a$d
done
						#deleting folder
elif [ $b = 11 ]
then
echo "No. of folder?"
read c
echo "2^name 0f folder"
read d
until [ $a -eq $c ]
do
((a=1+a))
rm -R  $a$d
done
						#making files
elif [ $b -eq 2 ]
then
echo "No. of files?"
read c
echo "2^name 0f files"
read d
until [ $a -eq $c ]
do
((a=1+a))
touch $a$d
done
						#deleting files
elif [ $b = 22 ]
then
echo "No. of files?"
read c
echo "2^name 0f files"
read d
until [ $a -eq $c ]
do
((a=1+a))
rm  $a$d
done

fi
