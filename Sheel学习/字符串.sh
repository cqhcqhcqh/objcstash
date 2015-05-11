#!/bin/sh

#  子复查un.sh
#  Sheel学习
#
#  Created by cqh on 15/5/11.
#  Copyright (c) 2015年 Cnepay. All rights reserved.

#1>字符串：字符串可以用单引号，也可以用双引号，也可以不用引号。单双引号的区别跟PHP类似。

    #1)单引号
    str="this is a string"
    #单引号字符串的限制：
    #单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的；
    #单引号字串中不能出现单引号（对单引号使用转义符后也不行）

    #2)双引号
    your_name='qinjx'
    #双引号里可以有变量 #双引号里可以出现转义字符
    str="Hello, I know your are \"$your_name\"! \n"
    echo $str

#2>拼接字符串
your_name="chengqh"
greeting="hello,"$your_name" !"
greeting_1="hello,${your_name} !"

echo $greeting $greeting_1

#3>获取字符串长度
string="abcd"
echo ${#string}

#4>提取子字符串
string="alibaba is a great company"
echo ${string:1:4}

#5>查找子字符串
echo `expr index "$string" is`

