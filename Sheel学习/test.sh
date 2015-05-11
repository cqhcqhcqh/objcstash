#!/bin/sh

echo -n "hehehehe"

echo "ok"
echo "yes"
echo -e "ok\n"
echo -e "ok"

a=10
echo "Value of a is $a"

string="alibaba is a great company"

#echo `expr index "$string" is`


filename=test.txt
vi $filename << EndOfCommands
i
This file was created automatically from
a shell script
^[
ZZ
EndOfCommands

