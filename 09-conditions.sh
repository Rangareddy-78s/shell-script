#! /bin/bash
No1=$1
No2=$2

if [$No1 -gt $No2]
then 
echo "$No1 greater than $No2"
elif [$No1 -lt $No2]
then
echo "$No1 less than $No2"
elif [$No1 -eq $No2]
then
echo "$No1 equals to $No2"
else 
then
echo "Need to check"
fi
