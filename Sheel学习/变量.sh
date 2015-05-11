#!/bin/sh

#  变量.sh
#  Sheel学习
#
#  Created by cqh on 15/5/11.
#  Copyright (c) 2015年 Cnepay. All rights reserved.

#2>变量命名规则：注意，变量名和等号之间不能有空格.同时，变量名的命名须遵循如下规则：
#首个字符必须为字母（a-z，A-Z）。
#中间不能有空格，可以使用下划线（_）。
#不能使用标点符号。
#不能使用bash里的关键字（可用help命令查看保留关键字）。
#1>定义变量
variableName="value"

#3>变量定义举例
myUrl="http ://see.xidian.edu.cn/cpp/linux/"
mynum=100

#4>使用变量 ：使用时 在变量名前面加美元符号（$）即可
your_name="chengqh"
echo $your_name
echo ${your_name} #变量名外面的花括号是可选的，加不加都行，加花括号是为了帮助解释器识别变量的边界

#5>使用{识别变量的边界}
for skill in Ada Coffe Action Java
do
    echo "i am good at ${skill}Script"
done


#6>重新定义变量
myUrl="http:baidu.com"
echo ${myUrl}

#7>只读变量
myUrl="http://baidu.com"
readonly myUrl
myUrl="http://sina.com" #尝试更改只读变量，结果报错：

#8>删除变量
#unset variable_name
#注意：unset 变量被删除后不能再次使用 命令不能删除只读变量

#9>变量类型
    #1) 局部变量:局部变量在脚本或命令中定义，仅在当前shell实例中有效，其他shell启动的程序不能访问局部变量。
    #2) 环境变量:所有的程序，包括shell启动的程序，都能访问环境变量，有些程序需要环境变量来保证其正常运行。必要的时候shell脚本也可以定义环境变量。



