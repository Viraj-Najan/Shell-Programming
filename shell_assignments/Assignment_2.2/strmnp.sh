#!/bin/bash
#String Manipulation

echo "Enter the string"
read str

echo "Which Operation do you want to perform?"
echo "1. Compare the strings"
echo "2. Join Two strings"
echo "3. Length of the string"
echo "4. Occurance of a character"
echo "5. Reverse the string"

read n

case $n in
	1)echo "Enter the strings to be compared"
	  read str1;
	  [[ $str == $str1 ]] && echo " Both strings are equal" || echo "Strings are not equal."
	  ;;
	2)echo "Enter the string to be joined"
	  read str1
	  str2=${str}${str1}
	  echo "Joint string is" ${str2}
	  ;;
	3)echo "Length of the string is" ${#str}
	  ;;
	4)echo $str | awk '{for (i=1 ; i<=NF ; i++) array[$i]++ } END{ for (char in array) print char,array[char]}' FS=""
	  ;;
	5)echo "Reverse string is:" `echo $str | rev`
	  ;;
esac
