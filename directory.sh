#!/bin/bash
if [ $1 == 1 ]; then
 echo "enter directory 1-"
 read d1
 echo "enter directory 2-"
 read d2
 count=0
 for i in `ls $d1`
  do
    for j in `ls $d2`
     do
      if [ $i == $j ]; then
       ((count++))
        for k in `cat $i`
          do
            for l in `cat $j`
              do
                if [ $k == $l ]; then
                  echo "this line is equal-$k"
                fi
              done
          done
      fi
     done
   done
 echo "equal files in both diectory r-$count"
fi
