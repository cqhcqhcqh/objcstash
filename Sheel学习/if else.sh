#!/bin/sh

#1>if ... fi 语句；
#if [ expression ]
#then
#Statement(s) to be executed if expression is true
#注意：expression 和方括号([ ])之间必须有空格，否则会有语法错误


#2>if ... else ... fi 语句；

#if [ expression ]
#then
#Statement(s) to be executed if expression is true
#else
#Statement(s) to be executed if expression is not true
#fi



#3>if ... elif ... else ... fi 语句。

#4>if ... else 语句也可以写成一行，以命令的方式来运行，像这样
if test $[2*3] -eq $[1+5]; then echo 'The two numbers are equal';fi
#test 命令用于检查某个条件是否成立，与方括号([ ])类似。
