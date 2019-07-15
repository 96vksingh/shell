#!/bin/bash
read -p "enter string-" string1
length1=$(echo ${#string1})
echo $length1
length2 = $length1
    for ((i = $length1 - 1; i >= 0; i--))
      do
        string2="$string2${string:$i:1}"
      done
  
      
