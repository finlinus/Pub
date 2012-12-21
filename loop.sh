#!/bin/bash
#Just a test.
#20121221 linus 1st edition
read -p "End number:" end_num
read -p "Number counted every time:" loop_num
dest=$(($end_num+1))
con=$(($end_num-1))
t=0
sum=0
s=0
for((i=1;i<$dest;i++));do
   loop[$i]=$i
done
while true;do
   for((i=1;i<$dest;i++));do
     if [ "${loop[$i]}" -gt "0" ];then
       let t++
     fi
     if [ "$t" -eq "$loop_num" ];then
       loop[$i]=0
       t=0
       let s++
     fi
   done
   if [ "$s" -eq "$con" ];then
     break
   fi
done
for((i=1;i<$dest;i++));do
   sum=$(($sum+${loop[$i]}))
done
printf "The number left is $sum.\n"
