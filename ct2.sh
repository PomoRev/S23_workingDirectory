#! /bin/bash

# Frank Emanuel (c) 2023
# trace by variables
# called by: /bin/bash ct2.sh correct 5

function mystery {  
    echo "inside mystery $1 $2 $val1"
    secret
    local val1=$2
    echo "after secret and local $1 $2 $val1"
    if [[ ${val1:0:1} == 't' ]]; then
        val1=${val1^^} 
    fi 
    echo "at end of function $val1"
}

function secret {
    val1='untrue'
}

tput setaf 4; tput bold
echo "Processing Data"

echo "in main $1 $2"

val1='truth'

echo "in main $1 $2 $val1"

mystery $2 $val1

echo "back in main $1 $2 $val1"

echo "done"

tput sgr0

# Trace: $1 $2 $val1 $1(function) $2(fuction) local $val1 

