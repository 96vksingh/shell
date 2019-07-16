# !/bin/bash
day=`date +"%d"`
month=`date +"%m"`
case $month in
1) m="Jan"
;;
2) m="Feb"
;;
3) m="Mar"
;;
4) m="Apr"
;;
5) m="May"
;;
6) m="Jun"
;;
7) m="Jul"
;;
8) m="Aug"
;;
9) m="Sep"
;;
10) m="Oct"
;;
11) m="Nov"
;;
12) m="Dec"
;;
esac
ee `echo "$day $m"`

for i in `ls *sh`
do
	 rr=`stat $i | grep "$ee"`
	 if [[ $ee == " " ]]; then
		 echo " "
	 else
		 echo "i came"
		 git add $i
		 git commit -m "automatic commit"
		 git push -u origin master
	 fi
done
	 
		 
