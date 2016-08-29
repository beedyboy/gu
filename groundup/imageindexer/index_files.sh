#!/bin/bash



SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for file in $(find . -iname "*.jpg" -o -iname "*.png"); do	
	photographer=$(identify -verbose $file | grep -i exif:Artist | awk '{print $2, $3}')	
	echo $file,$photographer,
	identify -verbose $file | grep -i keyword | awk -v PHOTOGRAPHER"=$photographer" -v FILE="$file" '{print FILE "," PHOTOGRAPHER "," $2}'	
done

#IFS=$SAVEIFS