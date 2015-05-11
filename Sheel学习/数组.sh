#!/bin/sh

#  数组.sh
#  Sheel学习
#
#  Created by cqh on 15/5/11.
#  Copyright (c) 2015年 Cnepay. All rights reserved.
#  Shell数组：bash支持一维数组（不支持多维数组），并且没有限定数组的大小。类似与C语言，数组元素的下标由0开始编号。获取数组中的元素要利用下标，下标可以是整数或算术表达式，其值应大于或等于0。

#1>定义数组 :在Shell中，用括号来表示数组，数组元素用“空格”符号分割开
#般形式为:
array_name=(value0 value1 value2 value3)
#也可以
array_name=(
    value0
    value1
)

#这样也可以
array_name[0]=value0
array_name[1]=value1
array_name[2]=value2

#2>读取数组
#读取数组元素值的一般格式是：
#${array_name[index]}

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

#使用@ 或 * 可以获取数组中的所有元素，例如：
echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"


#3>获取数组的长度
#获取数组长度的方法与获取字符串长度的方法相同，例如：

# 取得数组元素的个数
length=${#NAME[@]}
echo "NAME 的长度为 $length"
# 或者
length=${#NAME[*]}
# 取得数组单个元素的长度
lengthn=${#NAME[2]}
echo "NAME 元素 2位置的的长度为 $length"

