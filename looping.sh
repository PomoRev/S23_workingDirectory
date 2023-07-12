#!/usr/bin/bash
#
# Loopy Fun

# C style loop (known number of iterations)

for (( i = 0; i < 14; i++ ))
do
    echo " $i"
done

# traditional while loop (continues while true)

ls | while read line
do 
    echo "::" $line
done

# fancy for loops (iterating through data)

for i in $(ls)
do
    echo "]]" $i
done

# fancy for loops (iterating through ranges)

for i in {1..10}
do
    touch "file$i.txt"
done