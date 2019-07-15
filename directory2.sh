# !/bin/bash
# 1741161
echo "

1.	Delete the duplicate files present in two directories and store the deleted filenames in a file called ‘duplicate.txt’
2.	Create a shell script (Permission.sh) to assign the file privileges at the time of creating a file based on the Roles as mentioned below. (Use switch case) 
ROLE	FILE PERMISSION
i.	Administrator	R W X
ii.	Student	R – –
iii.	Faculty R W – 
3.	Create a directory called Collection. Move all the files starting with a specific character to the directory Collection.
4.	Delete the empty files in the current working directory
5.	Delete the files for the given directory which older than 10 days
6.	Display the all files and directories which has read and write permission only.
7.	Compare the contents of files present in two directories and display the duplicate contents along with line numbers and filename. Also, combine the two files without any duplicate contents.
8.	Delete the files which consume exactly 1MB space in the given directory
9.	Delete the empty folders
10.	Move empty directories to the new directory called ‘empty’ "

echo " enter your choice-"
read choice
case $choice in
	1) 
	echo "enter directory 1-"
  read dir1
  echo "enter directory 2-"
  read dir2
 # ls $dir1>file1.txt
 # ls $dir2>file2.txt
 #diff file1.txt file2.txt>file.txt
 diff -s dir1 dir2 | grep diff > file.txt
#sed -i -e "1d" file.txt #deletes first line
#cut -c3- file.txt>file3.txt # removing first 3 characters
#lineNum="$(grep -n '-' file3.txt | head -n 1 | cut -d: -f1)" #get line no
#sed -i -e $lineNum"d" file3.txt
while read p; do
  echo "$p"
  echo $p| tr '/' '\n' | tail -n1 >>new.txt
  #rm $dir1/$p
  #rm $dir2/$p
done <file.txt

while read p; do
  echo "$p"
  #echo $p| tr '/' '\n' | tail -n1 >>new.txt
  rm $dir1/$p
  rm $dir2/$p
done <new.txt

rm new.txt
rm file.txt
;;
2) echo "file name whom u want to give permissions"
   read p
   sh permission.sh $p
   ;;
 3) mkdir collection
	echo "enter the character whom u want to find and collect in directory"
   read ch
   echo "enter the directory from where u want to collect files"
   read d
   mv $d/*$ch /collection
   ;;
  4) 
     find ./ -type f -size 0 -delete
	;;
	
	5) `find . -atime +10 -type f -exec rm {} \;`
	;;
6) find `pwd` -type f -perm -110	 ;;
7)
	;;
8) `find ./ -size 1M -exec rm {} \;` ;;
9)`find ./ -empty -exec rm {} \;`
;;  
10)  
#`find . -type d -empty -exec mv -t /directory {} \;`
find . -type d -empty >new.txt
while read p; do
  #echo "$p"
  echo $p| tr '/' '\n' | tail -n1 >>new2.txt
  #rm $dir1/$p
  #rm $dir2/$p
done <new.txt
while read p; do
  #echo "$p"
  #echo $p| tr '/' '\n' | tail -n1 >>new.txt
  #rm $dir1/$p
  #rm $dir2/$p
  mv $p directory/
done <new2.txt
# rm new2.txt
# rm new.txt

 ;;
esac
  
	  