#! /bin/bash
No1=$1
No2=$2

if [$No1 -gt $No2]
then 
echo "$No1 greater than $No2"
else if [$No1 -lt $No2]
then
echo "$No1 less than $No2"
else if [$No1 -eq $No2]
echo "$No1 equals to $No2"
fi 
