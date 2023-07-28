#! /bin/bash

while [[ ${1:0:1} == '-' ]]
do 

    if [[ ${1:1:1} == 'w' ]]
    then
        echo $1 is the current arg
        echo ${1#-w} is the remainder of the arg
    fi

    shift 1

done

echo "left with: $@ "








