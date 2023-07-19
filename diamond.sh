#!/bin/bash -u

: '

            *
           * *
          *   *
           * *
            * 

            one character - no space   (before 4)
            two characters - 1 space   (before 3)
            three characters - 3 space (before 2)
            four charactres  - 5 space (before 1)
            five characters  - 7 space (before 0)
            four characters  - 5 spaces ( before 1 )    

'

# print out the first line starting with spaces equal to the width - 1 then the character

width=$1;
start=0

for (( ii=$width; ii > 0; ii--))
do 
    for (( i=0; i < $ii - 1; i++ ))
    do

        echo -n ' '

    done

    echo -n '*'

    # print out the inner space before the next character (top and bottom excluded)

    for (( iii=$start; iii > 0; iii-- ))
    do 
        echo -n ' '
    
    done

    if [[ $start -eq 0 ]] 
    then 
        start=1
        echo
    else 
        start=$((start+2))
        echo '*'
    fi
done

start=$((start-4))

# when we have print the width stop and turn around

for (( i=0; i<$width-1; i++))
do
    for (( ii=-1; ii<$i; ii++ ))
    do
        echo -n " "
    done

    echo  -n '*'

    for (( iii=$start; iii>0; iii-- ))
    do
        echo -n ' '
    done

    if [[ $start -lt 1 ]] 
    then 
        echo
    else 
        start=$((start-2))
        echo '*'
    fi

done

echo
