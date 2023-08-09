#! /bin/bash

# Frank Emanuel (c) 2023
# trace by variables
# run with a couple words... find the logic error

function reverse {
    local word=''
    for (( i=${#1}-1; i > 0; i-- ))
    do
        word+=${1:$i:1}
    done
    echo $word
}

if [[ $1 == $(reverse $1) ]]
then
    echo "palindrome"
else
    echo "ordinary word"
fi