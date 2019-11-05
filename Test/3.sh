#!/bin/bash

#(3)需求：--统计内存使用

#写一个脚本计算一下linux系统所有进程占用内存大小的和。（提示，使用ps或者top命令）

#answer①
sum=0
list=`ps aux |awk '{print $6}'|grep -v 'RSS'`

for item in $list
do
    sum=`expr $sum + $item` 
done

echo $sum

#answer②
#ps aux | grep -v 'RSS TTY' |awk '{(sum=sum+$6)};END{print sum}'
