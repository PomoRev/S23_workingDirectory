#! /bin/bash

# Frank Emanuel (c) 2023
# trace by variables
# called by: /bin/bash ct2.sh correct 5

function mystery {  
    secret
    local val1=$2
    if [[ ${val1:0:1} == 't' ]]; then
        val1=${val1^^} 
    fi 
}

function secret {
    val1='untrue'
}

tput setaf 4; tput bold
echo "Processing Data"

val1='truth'

mystery $2 $val1

echo "done"

tput sgr0

# Trace: $1 $2 $val1 $1(function) $2(fuction) local $val1 

