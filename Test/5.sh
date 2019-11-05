#(5) 需求：--批量更改文件名

#找到~/Shell/目录下所有后缀名为.php的文件

#批量修改.sh为.php.bak
#把所有.bak文件打包压缩为123.tar.gz
#批量还原文件的名字，即把增加的.bak再删除

#!/bin/bash
#找到.sh 文件
dir=~/Shell
destfile=/home/ubuntu/Shell/Test/sh.txt
find ~/Shell -type f -name '*.php' > $destfile


for item in `cat $destfile`
do
    echo $item
    mv $item $item.bak
done

file=`date +%F`
mkdir /home/ubuntu/Shell/123_$file

for item in `cat sh.txt`
do
    cp $item.bak /home/ubuntu/Shell/123_$file
done

tar czf 123.tar.gz /home/ubuntu/Shell/123_$file

for item in `cat sh.txt`
do
    mv $item.bak $item
done
