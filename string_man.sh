#!/bin/bash
#1741161_bca_b
echo "
1. STRING LENGTH
2. STRING COPY
3. STRING CONCATENATION
4. REVERSE STRING (Without Using In-Build Function)
5. SUBSTRING
6. CHECK THE GIVEN STRING IS PALINDROME OR NOT
7. DISPLAY THE PRESENCE OF THE CHARACTER IN THE STRING
8. REPLACE THE STRING (Without Using In-Build Function)
9. ELIMINATE THE DUPLICATE CHARACTER IN THE GIVEN STRING
10. A LOWER CASE TO UPPER CASE CONVERSION "
read -p "Enter the string o which you want to do operation--" string1
length=$(echo ${#string1})
read -p "Enter your choice-" choice
#echo $choice
case $choice in
 1) echo "length of the string is- $length"
    ;;
 2) echo "copy";;
 3) read -p "enter string with which u want to concat" string2
    echo "the concatenated string is-"$string1$string2;;
 4) length1=$(echo ${#string1})
    echo $length1
    #length2 = "$length1"
    for ((i = $length1 - 1; i >= 0; i--))
      do
        string2="$string2${string1:$i:1}"
      done
     echo "reverse string is- $string2"
;;
 5) echo "enter index no from where to where u want the string-"
    read -p "starting of substring(string index begins from 0)-" ind1
    read -p "till how many characters u want-" ind2
    string2="$string2${string1:$ind1:$ind2}"
	echo "SUb STRING IS-$string2";;
 6) echo "palindrome check"
    length1=$(echo ${#string1})
    # echo $length1
     #length2 = "$length1"
     for ((i = $length1 - 1; i >= 0; i--))
       do
         string2="$string2${string1:$i:1}"
       done
	   if [ $string1 == $string2 ];then
			   echo "it is palindrom"
		   else
			   echo "not a plindrome"
		   fi
		   
      #echo "reverse string is- $string2"
    ;;
 7) echo "enter the character you want to check in string"
    read ch
    # for ((i = 1; i <= $length-1; i++))
    for i in $string1
       do
         if [[ "$i" == *$ch* ]];then
          echo "char found"
         else
          echo "char not found"
          fi
       done;;
 8) echo "replace string"
       echo "enter the character you want to replace in string "
    read ch
    echo "enter the character with which u want to replace it "
 read ch1
    #for ((i = 1; i <= $length-1; i++))
	for i in $string1
       do
         if [[ "$i" == *$ch* ]];then
          echo "char found"
         ${string1//"$i"/"$ch1"}
         else
          echo "char not found"
          fi
       done
	   echo "changed string is $string1 ";;
 9) echo "eliminate duplicate"
    #for ((i = 1; i <= $length-1; i++))
	for i in $string1
       do
         for j in $string1
          do
         if [[ "$i" == "$j" ]];then
          echo "char found"
         ${string1//$i/""}
         else
          echo "char not found"
          fi
         done
       done;;
 10)
     echo $string1 | tr '[:lower:]' '[:upper:]';;
 *) echo "the entered choice does not exist"
;;
esac
