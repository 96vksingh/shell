# !/bin/bash
echo "
i.	Administrator R W X
ii.	Student	R – –
iii.	Faculty R W –
"
echo "enter ur choice-"
read choice

case $choice in
	
     1) chmod 777 $1;; # chmod 111 $1;;
	 2) chmod 4 $1;;  # chmod 100 $1;;
	 3) chmod 6 $1;; # chmod 110 $1;;
esac
