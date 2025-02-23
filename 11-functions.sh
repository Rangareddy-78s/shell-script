#! /bin/bash
UserID=$(id -u)
TIMESTAMP=$(date +%F/%H/%M/%S)
Script_Name=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$Script_Name-$TIMESTAMP.log
Validate(){
    if [ $1 -ne 0 ]; then 
    echo "$2... Failure"
    exit 1
    else
    echo "$2... Success"
    fi
}


if [ $UserID -ne 0 ]; then 
echo "Please run this script with root access"
exit 1
else
echo "You are super user"
fi
dnf install mysql -y &>>$LOGFILE
Validate $? "Installation of mysql"
dnf install dockerr -y &>>$LOGFILE
Validate $? "Installation of docker"
