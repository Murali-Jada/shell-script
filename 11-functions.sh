#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

VALIDATE(){
    echo "exit status: $1"
    echo "what are you doing: $2"

}

then 
    echo "please run the script with root access"
    exit 1 # manually exit if error comes
else
    echo "you are super user"
fi

dnf install mysql -y

VALIDATE $? "installing MYSQL"

dnf install git -y
VALIDATE $? "installing GIT"