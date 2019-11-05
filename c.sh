#!/bin/bash

Data=`date`
echo ${Data}

User=`who | wc -l`
echo ${User}

Up=`date ; uptime`
echo ${Up}

string="alibaba is a great company"
echo `expr index "$string" is`
