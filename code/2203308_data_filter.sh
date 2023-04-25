#!/bin/bash


s1="$1" #Storing the filename entered in the first argument in a variable
s=${$s1:0:2} #Extracting first two characters of the File name
((s=s+$2+$3)) #Creating the name of the file to be made
touch $s.csv #Creating a new File

echo "$1 $2 $3" >> $s.csv #Appending the File name ,Field name,Field Value in the new created file 
echo $(head -n1 $1) >> $s.csv #Appending the new file with the Column Name

grep -iw "$3" $1 >> $s.csv #Appendind the New File With the desired output



