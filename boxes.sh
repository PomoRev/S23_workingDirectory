#!/bin/bash -u

# we are going to build a triangle using a passed size

: '  
   *
  * *
 *   *
* * * *
'

echo

# pad the line (starts at width - 1 column)

firstline=0

for (( i = $1 - 1; i > 0; i-- )) 
do

    for (( ii=0; ii <  $i; ii++ ))
    do

        echo -n ' '
    done

    echo -n '*'

    if [ $firstline -eq 0 ] 
    then

        firstline=1
        echo

    else 

        #print other side of the triangle

        for (( j = 0; j < $firstline; j++ ))
        do
            echo -n ' '
        done

        echo '*'
        firstline=$(( $firstline + 2 ))

    fi

done

# print the start for the start and end of the line (at top use one start)

# do this until you have a line the width given for the triangle

for (( i = 0; i < $1; i++ ))
do
    echo -n '* '
done

echo
echo






