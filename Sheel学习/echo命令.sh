#!/bin/sh

#  echo是Shell的一个内部指令，用于在屏幕上打印出指定的字符串。命令格式：echo arg
#1> 显示转义字符
echo \"It is a test\"
echo wocaolali #双引号也可以省略。
#结果将是："It is a test"


#2>显示不换行
echo "OK!\c"
echo "It is a test"
#输出：OK!It si a test


#3>显示结果重定向至文件
echo "It is a test" > myfile

#4>原样输出字符串
#若需要原样输出字符串（不进行转义），请使用单引号(不能省略)。例如：
echo '$name\"'

#5>显示日期
echo `date`


#从上面可看出，双引号可有可无，单引号主要用在原样输出中。
