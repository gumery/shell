#(4)需求：--设计监控脚本

#监控远程的一台机器(假设ip为123.23.11.21)的存活状态，当发现宕机时发一封邮件给你自己。 提示：

#你可以使用ping命令 ping -c10 123.23.11.21
#发邮件脚本可以参考 https://coding.net/u/aminglinux/p/aminglinux-book/git/blob/master/D22Z/mail.py
#脚本可以搞成死循环，每隔30s检测一次
#!/bin/bash
ip=123.23.11.21
ma=abc@139.com

while :
do
    ping -c10 $ip >/dev/null 2>/dev/null
    if [ $? != "0" ]
    then
        #假设mail.py已经编写并设置好了
        echo '123'
    else
        echo '456'
    fi
    sleep 30
done
