#!/bin/bash 

function solidline {
    for (( i=0; i < $(tput cols); i++ ))
    do

        echo -n '*'

    done

    echo
}

function emptyline {

    echo -n '*'

    if [[ -n $1 ]]
    then

        echo -n "message goes here: $1"

    else

        for (( i=0; i < $(tput cols) - 2; i++ ))
        do

            echo -n ' '

        done

    fi

    echo '*'

}

solidline
emptyline $1
solidline


echo

while [[ ${1:0:1} == '-' ]]
do

    echo "$option: $1"
    shift 1 

done

message="$@"

width=${#message}
echo $@
echo "$width characters"