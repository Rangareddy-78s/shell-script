#! /bin/bash
UserID=$(id -u)

if [ $UserID -ne 0 ]; then 
echo "Please run this script with root access"
exit 1
else
echo "You are super user"
fi
dnf install mysql -y

if [ $? -ne 0 ]; then 
echo "Installation of mysql... Failure"
exit 1
else
echo "Installation of mysql... Success"
fi

echo "is script running" 