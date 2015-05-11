#!/bin/sh

#  运算符.sh
#  Sheel学习
#
#  Created by cqh on 15/5/11.
#  Copyright (c) 2015年 Cnepay. All rights reserved.

#1>运算符
#Bash 支持很多运算符，包括算数运算符、关系运算符、布尔运算符、字符串运算符和文件测试运算符。
#原生bash不支持简单的数学运算，但是可以通过其他命令来实现，例如 awk 和 expr，expr 最常用。
#expr 是一款表达式计算工具，使用它能完成表达式的求值操作
var=`expr 2 + 2`
echo "Total value :$var"

#两点注意：
    #1)表达式和运算符之间要有空格，例如 2+2 是不对的，必须写成 2 + 2
    #2)完整的表达式要被 ` ` 包含

#2>算数运算符
a=10
b=20

val=`expr $a \* $b`
echo "a * b : $val"

var=`expr $a + $b`
echo "a + b = $var"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

if [ $a == $b ]
then
    echo "a is equal to b"
fi

if [ $a != $b ]
then
    echo "a is not equal to b"
fi

#注意：
#乘号(*)前边必须加反斜杠(\)才能实现乘法运算；
#if...then...fi 是条件语句，后续将会讲解。
#注意：条件表达式要放在方括号之间，并且要有空格，例如 [$a==$b] 是错误的，必须写成 [ $a == $b ]。


#3>关系运算符 :只支持数字，不支持字符串，除非字符串的值是数字

a=10
b=20
if [ $a -eq $b ]
then
    echo "$a -eq $b : a is equal to b"
else
    echo "$a -eq $b: a is not equal to b"
fi


#4>布尔运算符
#5>文件测试运算符
file="/Users/cqh/Documents/iOS_Demo_Workspace/0511/Sheel学习/Sheel学习/转义.png"

if [ -r $file ]
then
    echo "File has read access"
else
    echo "File does not have read access"
fi


