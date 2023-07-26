#! /bin/bash
 
    while read -a listline
    do 
        echo $listline[3]

        if [[ ${listline[3]} == $groupname ]]
        then
            echo "- ${listline[8]}"
        fi
    done  < <(ls -l)