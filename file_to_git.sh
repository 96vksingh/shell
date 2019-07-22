# !/bin/bash
day=`date +"%d"`
month=`date +"%m"`
case $month in
01) m="Jan"
;;
02) m="Feb"
;;
03) m="Mar"
;;
04) m="Apr"
;;
05) m="May"
;;
06) m="Jun"
;;
07) m="Jul"
;;
08) m="Aug"
;;
09) m="Sep"
;;
10) m="Oct"
;;
11) m="Nov"
;;
12) m="Dec"
;;
esac
ee=`echo "$m $day"`
echo $ee
for i in `ls *sh`
do
	 rr=`stat $i | grep "$ee"`
	 echo $rr
	 if [ -z "$rr" ]; then
		 echo "its null----$i"
	 else
		 #echo "some data----$i"
		 git add $i
		 git commit -m "automatic commit"
		 git push -u origin master
	 fi
done
	 
		 
