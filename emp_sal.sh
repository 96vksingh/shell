#!/usr/bin/
read -p "enter the basic salary of the employee" sal
if [ $sal -le 1500 ];then
hra=$((sal/10))
da =$((9*hra))
else
hra=500
da =$((sal/100))
da =$((da*98))
fi
gross=$((sal+hra+da))
echo "gros salary =$gross"




h=`date +%H`

if [ $h -lt 12 ]; then
  echo Good morning
elif [ $h -lt 18 ]; then
  echo Good afternoon
else
  echo Good evening
fi
