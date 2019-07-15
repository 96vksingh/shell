#!/bin/bash
echo "enter directory 1-"
read dir1
echo "enter directory 2-"
read dir2
ls -l $dir1>file1.txt
ls -l $dir2>file2.txt
diff file1.txt file2.txt>file.txt
sed -i -e "1d" file.txt #deletes first line
cut -c3- file.txt>file3.txt # removing first 3 characters
lineNum="$(grep -n '-' file3.txt | head -n 1 | cut -d: -f1)" #get line no
sed -i -e $lineNum"d" file3.txt
while read p; do
  echo "$p"
  rm $dir1/$p
  rm $dir2/$p
done <file3.txt
