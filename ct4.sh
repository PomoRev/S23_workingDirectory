#! /bin/bash

# Frank Emanuel (c) 2023
# Trace by output

for (( i=0; i < 6; i++ ))
do
    for (( ii=0; ii < $i / 2; ii++ ))
    do
        echo -n ' '
    done

    if [[ $(( $i % 2 )) -ne 0 ]]
    then
        echo -n '*'
    fi

    echo '*'
done

for (( i=6; i >= 0; i-- ))
do
    for (( ii=0; ii < $i / 2; ii++ ))
    do
        echo -n ' '
    done

    if [[ $(( $i % 2 )) -ne 0 ]]
    then
        echo -n '*'
    fi

    echo '*'
done