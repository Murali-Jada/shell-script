#!/bin/bash

echo "All variables: $@"
echo "No of variables passed: $#"
echo "script name: $0"
echo "current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "which user running the script: $USER"
echo "hostname: $HOSTNAME"
echo "processes ID of the shell script: $$"
sleep 60 &
echo "processes ID of last background command: $!"