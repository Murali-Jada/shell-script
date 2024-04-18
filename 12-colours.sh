#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

      echo "script started executing at: $TIMESTAMP"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
         echo -e "$2...$R FAILURE $N"
         exit 1
    else
         echo -e "$2... $GSUCCESS $N"
    fi      
}

if [ $USERID -ne 0 ]
then 
    echo "please run the script with root access"
    exit 1 # manually exit if error comes
else
    echo "you are super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installing MYSQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing GIT"