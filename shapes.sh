#!/usr/bin/bash -u

# making shapes
# takes a height and a width from the CLI and creates an empty rectangle

function solidline {

    # takes a width at $1

    for (( i = 0; i < $1; i++ ))
    do 
        echo -n '*'
    done

    echo
}

function emptyline {

    # takes a width at $1

    echo -n '*'

    for (( i = 0; i < $1 - 2; i++ ))
    do 
        echo -n ' '
    done

    echo '*'
}

# takes a height at $1 and a width at $2

solidline $2

for (( ii = 0; ii < $1 - 2; ii++ ))
do
    emptyline $2
done

solidline $2


