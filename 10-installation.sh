#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "please run the script with root access"
    exit 1 # manually exit if error comes
else
    echo "you are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installation of mysql....Failure"
    exit 1
else
    echo "Installation of mysql....Sucesses"
fi 

dnf install git -y

echo "is script proceding?"
