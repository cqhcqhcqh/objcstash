#!/bin/sh

#  firstSheel脚本.sh
#  Sheel学习
#
#  Created by cqh on 15/5/11.
#  Copyright (c) 2015年 Cnepay. All rights reserved.

#打开文本编辑器，新建一个文件，扩展名为sh（sh代表shell），扩展名并不影响脚本执行，见名知意就好，如果你用php写shell 脚本，扩展名就用php好了

#输入一些代码：

#!/bin/bash
#echo "Hello World !"
#："#!" 是一个约定的标记，它告诉系统这个脚本需要什么解释器来执行，即使用哪一种Shell。
#echo命令用于向窗口输出文本。

#运行Shell脚本有两种方法。

#第一种方法:作为可执行程序
#将上面的代码保存为test.sh，并 cd 到相应目录：
#chmod +x ./test.sh  #使脚本具有执行权限
#./test.sh  #执行脚本

#第二种方法:作为解释器参数：直接运行解释器，其参数就是shell脚本的文件名
#将上面的代码保存为test.sh，并 cd 到相应目录：
#/bin/sh test.sh
#注意：这种方式运行的脚本，不需要在第一行指定解释器信息，写了也没用
echo "Hello world!"
echo "What is your name?"
read PERSON #read 命令从 stdin 获取输入并赋值给 PERSON 变量，最后在 stdout 上输出：
echo "Hello ,$PERSON"


