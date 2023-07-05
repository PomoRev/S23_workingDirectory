#!/usr/bin/bash

# Branch with Conditional Branching
# Based on arguments passed by the command line (CLI)
# Frank Emanuel

file_name=$1
file_extension=$2

echo checking for $file_name

if [[ $# -gt 1 ]]
then 

    if [[ ! -e $file_name'.'$file_extension ]]
    then
        echo creating $file_name.$file_extension
        touch $file_name'.'$file_extension
        pwd
        ls -l *.$file_extension
    else
        echo File already exits!
    fi 

    date >> frank.log
    echo "program ran successfully" >> frank.log

else

    echo I can"'"t let you do that Dave.

    date >> frank.log
    echo you only had $# arguments >> frank.log

fi


echo $0 is done running, thank you.
echo We ran with the arguments $@ >> frank.log
echo the last one was $9 there is not $10 >> frank.log

shift 1

echo now the last one is $9, enjoy, but the first one is $1 >> frank.log




