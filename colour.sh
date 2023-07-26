#!/bin/bash 

: '

    I have never see this before. Yikes.

'

for ii in {0..7}
do
    for i in {0..7}
    do
        tput setaf $i
        tput setab $ii
        echo -n "This colour is $i"

        # no sugar!

        tput sgr0
        echo
    done
done

echo

tput setab 0
tput setaf 7

echo
echo hello there people
echo

tput bold

echo -n hello there people

tput sgr0

echo

echo all done.

echo

