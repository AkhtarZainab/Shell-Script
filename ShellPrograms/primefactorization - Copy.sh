#!/bin/bash -x

read n

declare -a PrimeFactors
counter=0
count=0
flag=0

for (( i=2; i<$num; ))
do
   oper=$(($n%$i))
   if [ $oper -eq 0 ]
   then
      PrimeFactors[$counter]=$factor
      counter=$(($counter+1))
      factor=$i
      f=$(($factor/2))
      for (( j=2; j<=$f; ))
      do
         flag=0
         g=$(($factor%$j))
         if [ $g -eq 0 ]
         then
            flag=1
            break
         fi
         j=$(($j+1))
      done
      if [ $flag -eq 0 ]
      then
         echo "[ $factor ]"
         count=1
      fi
   fi
   i=$(($i+1))
done
if [ $count -eq 0 ]
then
   echo "no prime factors found except 1 and $num"
fi


echo "${primeFactor[@]}"



