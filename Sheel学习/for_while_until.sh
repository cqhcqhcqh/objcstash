#!/bin/sh

#for循环一般格式为：
#for 变量 in 列表
#do
#command1
#command2
#...
#commandN
#done

for loop in 1 2 3 4 5
do
echo "The value is: $loop"
done

#顺序输出字符串中的字符

for str in 'This is a string'
do
echo $str
done


#显示主目录下以 .bash 开头的文件：
for FILE in $HOME/.bash*
do
echo $FILE
done


#while command
#do
#Statement(s) to be executed if command is true
#done

#测试条件是：如果COUNTER小于5，那么返回 true。COUNTER从0开始，每次循环处理时，COUNTER加1。运行上述脚本，返回数字1到5，然后终止。
COUNTER=0
while [ $COUNTER -lt 5 ]
do
COUNTER='expr $COUNTER+1'
echo $COUNTER
done


echo 'type <CTRL-D> to terminate'
echo -n 'enter your most liked film: '
while read FILM
do
echo "Yeah! great film the $FILM"
done



#Util循环：until 循环执行一系列命令直至条件为 true 时停止。until 循环与 while 循环在处理方式上刚好相反。一般while循环优于until循环，但在某些时候，也只是极少数情况下，until 循环更加有用。

a=0
until [ ! $a -lt 10 ]
do
echo $a
a=`expr $a + 1`
done


