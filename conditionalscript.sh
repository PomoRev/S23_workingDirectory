#!/usr/bin/bash

# Branch with Conditional Branching
# Frank Emanuel

file_name="hello"
file_extension="txt"

if [[ ! -e $file_name'.'$file_extension ]]
then
    touch $file_name'.'$file_extension
    pwd
    ls -l *.$file_extension
else
    echo File already exits!
fi 


