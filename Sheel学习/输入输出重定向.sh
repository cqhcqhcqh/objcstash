#!/bin/sh

#Unix 命令默认从标准输入设备(stdin)获取输入，将结果输出到标准输出设备(stdout)显示。一般情况下，标准输入设备就是键盘，标准输出设备就是终端，即显示器。

#1>输出重定向 :命令的输出不仅可以是显示器，还可以很容易的转移向到文件，这被称为输出重定向

    #命令输出重定向的语法为：
    #command > file
    who > users #输出到显示器的内容就可以被重定向到文件。

    #打开 users 文件
    #cqh      console  May 11 10:34
    #cqh      ttys004  May 11 11:26

    #输出重定向会覆盖文件内容
    echo line 1 > users #利用echo 将(line1) > (文件中的原有)
    cat users

    #使用 >> 追加到文件末尾
    echo line 2 >> users
    cat users


#2>输入重定向 :Unix 命令也可以从文件获取输入
    #计算 users 文件中的行数，可以使用下面的命令：
    wc -l users
    wc -l < users
    #注意：上面两个例子的结果不同：第一个例子，会输出文件名；第二个不会，因为它仅仅知道从标准输入读取内容。

#3>重定向深入讲解
    #一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：
    #标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
    #标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
    #标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。

#4>Here Document :是 Shell 中的一种特殊的重定向方式，它的基本的形式如下：
#command << delimiter
#document
#delimiter
#作用 ==> 是将两个 delimiter 之间的内容(document) 作为输入传递给 command。

#例子: 通过 wc -l 命令计算 document 的行数
wc -l << EOF
    This is a simple lookup program
    for good (and bad) restaurants
    in Cape Town.
EOF

cat << EOF
    This is a simple lookup program
    for good (and bad) restaurants
    in Cape Town.
EOF

filename=test.txt
vi $filename <<EndOfCommands
i
This file was created automatically from
a shell script
^[
ZZ
EndOfCommands

#/dev/null 文件
#希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null：

#/dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到”禁止输出“的效果

#如果希望屏蔽 stdout 和 stderr，可以这样写：
#command > /dev/null 2>&1




