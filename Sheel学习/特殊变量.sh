#!/bin/sh

#  特殊变量.sh
#  Sheel学习
#
#  Created by cqh on 15/5/11.
#  Copyright (c) 2015年 Cnepay. All rights reserved.
#1>特殊变量：变量名只能包含数字、字母和下划线，因为某些包含其他字符的变量 有特殊含义 ，这样的变量被称为特殊变量
echo $$

#2>>命令行参数 ：运行脚本时传递给脚本的参数称为命令行参数
#命令行参数用 $n 表示，例如，$1 表示第一个参数，$2 表示第二个参数，依次类推。

echo "File name :$0"
echo "File Parameter :$1"
echo "File Parameter :$2"
echo "Quoted Values :$@"
echo "Quoted Values :$*"
echo "Total Number of Parameters : $#"

#3>$* 和 $@ 的区别 ：$* 和 $@ 都表示传递给函数或脚本的所有参数，不被双引号(" ")包含时，都以"$1" "$2" … "$n" 的形式输出所有参数。
#区别就是 打印时候的区别 ... 当它们被双引号(" ")包含时，"$*" 会将所有的参数作为一个整体，以"$1 $2 … $n"的形式输出所有参数；"$@" 会将各个参数分开，以"$1" "$2" … "$n" 的形式输出所有参数

echo "\$*" $*
echo "\"\$*\"=" "$*"

echo "\$@=" $@
echo "\"\$@\"=" "$@"

echo "print each param from \$*"
for var in $*
do
    echo "$var"
done


echo "print each param form \$@"
for var in $@
do
    echo "$var"
done

echo "print each param from \"\$*\""
for var in "$*"
do
echo "$var"
done


echo "print each param from \"\$@\""
for var in "$@"
do
echo "$var"
done

#4>退出状态
#$? 可以获取上一个命令的退出状态。所谓退出状态，就是上一个命令执行后的返回结果。
#退出状态是一个数字，一般情况下，大部分命令执行成功会返回 0，失败返回 1。
#不过，也有一些命令返回其他值，表示不同类型的错误。
