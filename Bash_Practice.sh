#!/bin/bash
#----
# Written by Wen Shen on 2017/8/29
#----

limitTime=60
interval=5

# Create a directory and create a file into it every five seconds.
test -d testDirectory || mkdir testDirectory
for (( i=1; i<=$(( limitTime / interval )); i++ ))
do
    sleep ${interval}
    touch testDirectory/$(date +%Y年%m月%d日_%H點%M分%S秒)
done

# List all files in testDirectory
ls testDirectory/ > listFiles
