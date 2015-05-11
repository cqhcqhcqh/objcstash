#!/bin/sh
#  替换.sh
#  Sheel学习
#  Created by cqh on 15/5/11.
#  Copyright (c) 2015年 Cnepay. All rights reserved.

#1>如果表达式中含特殊字符,shell将会进行替换。在双引号中使用变量就是一种替换，转义字符也是一种替换。

a=10
echo -e "Value of a is $a \n"

#运行结果：
#Value of a is 10
#这里 -e 表示对转义字符进行替换。如果不使用 -e 选项，将会原样输出：
#Value of a is 10\n

#2>命令替换:命令替换是指Shell可以先执行命令，将输出结果暂时保存，在适当的地方输出。
#语法:`command`

DATE=`date`
echo "Date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "Uptime is $UP"

#3>变量替换
echo ${var:-"Variable is not set"}
echo "1 - Value of var is ${var}"

echo ${var:="Variable is not set"}
echo "2 - Value of var is ${var}"

unset var
echo ${var:+"This is default value"}
echo "3 - Value of var is $var"

var="Prefix"
echo ${var:+"This is default value"}
echo "4 - Value of var is $var"

echo ${var:?"Print this message"}
echo "5 - Value of var is ${var}"
