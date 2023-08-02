#! /bin/bash

# Frank Emanuel (c) 2023
# trace by output

name="Emily Robert Ali Pearl George Sandra Madeline"
length=0

read -a names <<< "$name"

for name in ${names[@]}
do
    if [[ ${#name} -gt length  ]]
    then
        length=${#name}
    fi
done

for name in ${names[@]}
do
    echo -n "this name is ."
    for (( i=0; i < $length - ${#name}; i++ ))
    do 
        echo -n "."
    done
    echo "$name"
done
