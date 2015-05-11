#!/bin/sh

#Shell 函数的定义格式如下：
#function_name () {
#list of commands
#[ return value ]
#}

#如果你愿意，也可以在函数名前加上关键字 function：

#Shell 函数返回值只能是整数，一般用来表示函数执行成功与否，0表示成功，其他值表示失败。如果 return 其他数据，比如一个字符串，往往会得到错误提示
#注意:如果一定要让函数返回字符串，那么可以先定义一个变量，用来接收函数的计算结果，脚本在需要的时候访问这个变量来获得函数返回值

Hello () {
    echo "Url is http :// see.xidian.edu.cn/cpp/shell/"

}

Hello#调用函数只需要给出函数名，不需要加括号。

funWithReturn () {
    echo "The function is to get the sum of two numbers..."
    echo -n "Input first numbner :"
    read aNum
    echo -n "Input another number :"
    read anotherNum
    echo "The two numbers ar $aNum and $anotherNum !"
    return $(($aNum + $anotherNum))


}

funWithReturn

#嵌套函数
number_one () {
    echo "Url_1 is http://see.xidian.edu.cn/cpp/shell/"
    number_two
    }
    number_two () {
    echo "Url_2 is http://see.xidian.edu.cn/cpp/u/xitong/"
    }
    number_one

    ret=$?
echo "The sum of two numbers is $ret !"

#函数返回值在调用该函数后通过 $? 来获得。
#删除变量一样，删除函数也可以使用 unset 命令，不过要加上 .f 选项，如下所示
#unset .f function_name

#如果你希望直接从终端调用函数，可以将函数定义在主目录下的 .profile 文件，这样每次登录后，在命令提示符后面输入函数名字就可以立即调用
