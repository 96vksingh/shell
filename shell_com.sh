#!/bin/#!/usr/bin/env bash
echo "
1. make directory
2. content copy
3. directory remane
4. deletion
5. hide unhide
6. change permission
7. del all non empty directory
8. move directory
9. directory info
10. del file which is inactive from last 1 hour "
read -p "Enter your choice-" choice

case $choice in
 1) read -p "enter name of directory which u want to add-" di
    mkdir $di
    ;;
 2) read -p "enter name of directory 1-" dic1
    read -p "enter name of directory 2-" dic2
     cp -a /$dic1/. /$dic2/;;
 3) read -p "enter name of directory u want to rename with-" name
    read -p "enter name of directory u want to remane" pre
     mv $pre $name;;
 4) read -p "enter directory u want to del-" dic1
    rm -r $dic1
;;
 5) read -p "enter name of directory u want to hide-" dic1
    mv $dic ".$dic"
   ;;
 6) echo "giving only read permission"
    chmod 100 lab1.sh;;
 7) echo "deleting all non empty directories"
    find ./ -type d ! -empty -delete ;;
 8) ;;
 9) read -p "enter name of directory u want info" kk
    stat $kk
	;;
 10)
     echo $string1 | tr '[:lower:]' '[:upper:]';;
 *) echo "the entered choice does not exist"
;;
esac
