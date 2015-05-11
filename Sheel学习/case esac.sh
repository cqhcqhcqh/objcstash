#!/bin/sh
#case ... esac 与其他语言中的 switch ... case 语句类似，是一种多分枝选择结构。

#格式
#case 值 in
#模式1)
#command1
#command2
#command3
#;;
#模式2）
#command1
#command2
#command3
#;;
#*)
#command1
#command2
#command3
#;;
#esac
#取值后面必须为关键字 in，每一模式必须以右括号结束。取值可以为变量或常数。匹配发现取值符合某一模式后，其间所有命令开始执行直至 ;;。;; 与其他语言中的 break 类似
#如果无一匹配模式，使用星号 * 捕获该值，再执行后面的命令。

echo 'Input a number between 1 to 4'
echo 'Your number is: \c'
read aNum
case $aNum in
    1) echo "Your select "$aNum""
    ;;
esac


option="${2}"
case ${option} in
-f) FILE="${2}"
echo "File name is $FILE"
;;
-d) DIR="${2}"
echo "Dir name is $DIR"
;;
*)
echo "`basename ${0}`:usage: [-f file] | [-d directory]"
exit 1 # Command to come out of the program with status 1
;;
esac
