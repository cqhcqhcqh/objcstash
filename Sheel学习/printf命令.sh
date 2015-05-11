#!/bin/sh

#printf 命令用于格式化输出， 是echo命令的增强版。它是C语言printf()库函数的一个有限的变形，并且在语法上有些不同。
#注意：printf 由 POSIX 标准所定义，移植性要比 echo 好。

printf "Hello , Sheel\n"

#printf 不像 echo 那样会自动换行，必须显式添加换行符(\n)。

#printf 命令的语法：
#printf  format-string  [arguments...]
#format-string 为格式控制字符串，arguments 为参数列表。

    #这里仅说明与C语言printf()函数的不同：
    #printf 命令不用加括号
    #format-string 可以没有引号，但最好加上，单引号双引号均可。
    #参数多于格式控制符(%)时，format-string 可以重用，可以将所有参数都转换。
    #arguments 使用空格分隔，不用逗号

printf "%d %s\n" 1 "abc"

printf '%d %s\n' 1 "edf"

printf %s acdj

#注意点1> 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf %s abc def

printf "%s\n" abc def

#注意点2> 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
# 如果以 %d 的格式来显示字符串，那么会有警告，提示无效的数字，此时默认置为 0
printf "The first program always prints'%s,%d\n'" Hello Shell