#!/bin/sh

#break命令

#break命令允许跳出所有循环（终止执行后面的所有循环）。

#下面的例子中，脚本进入死循环直至用户输入数字大于5。要跳出这个循环，返回到shell提示符下，就要使用break命令

while :
do
echo -n "Input a number between 1 to 5: "
    read aNum
    case $aNum in

        1|2|3|4|5) echo "Your number is $aNum!"
        ;;

        *) echo "You do not select a number between 1 to 5, game is over!"
        break
    ;;
esac
done

#注意：在嵌套循环中，break 命令后面还可以跟一个整数，表示跳出第几层循环。例如： break n 表示跳出第几n层循环

#continue命令
#continue命令与break命令类似，只有一点差别，它不会跳出所有循环，仅仅跳出当前循环。


