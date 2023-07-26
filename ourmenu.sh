#!/bin/bash

# make a menu that will do the following:
#   print out the current user's entry from passwd
#   read in a username to search for in passwd
#   read in a username to add a readme file to their home directory (make sure
#       that they have a home directory)

read name < <(whoami)

choice='START'
while  [[ ${choice::1} != 'Q' ]]
    do
        clear

        echo
        echo -n "Hello "
        grep -w $name /etc/passwd | cut -d':' -f 5 | cut -d',' -f 1

        echo
        echo "Welcome to the System"

        echo 
        echo "Note that these are administrative functions so you"
        echo "will require the administrative password."

        echo
        echo "Enter your choice:"
        echo "(P)rint out your user information"
        echo "(S)earch for a user\'s information"
        echo "(A)dd a readme to a user\'s home directory"
        echo "(L)ist all the files owned by a group"

        echo
        echo "(Q)uit the menu"

        read choice
        choice=${choice^}

        case ${choice::1} in

            Q)  echo "have a great day!"
                ;;

            P)  grep -w $name /etc/passwd
                read -p 'press enter to continue' temp
                ;;
            
            S)  read -p 'Enter the name of a user to search for: ' searchname
                if [[ $(sudo grep -iw $searchname /etc/passwd) ]] 
                then
                        echo "I found $searchname:"
                        sudo grep -iw $searchname /etc/passwd
                else
                        echo "sorry they are not a user of the System"
                fi
                read -p 'press enter to continue' temp
                ;;

            A)  read -p 'Enter the name of a user to search for: ' searchname
                if [[ $(sudo grep -iw $searchname /etc/passwd) ]] 
                then 
                    read targetdirectory < <(sudo grep -iw $searchname /etc/passwd | cut -d':' -f 6)
                    if [[ ! $(ls $targetdirectory >& /dev/null) ]] 
                    then
                        echo "directory not found, sorry"
                    else
                        if [[ ! $(sudo cp ./readme.txt ${targetdirectory}) ]]
                        then
                            echo "file copied"
                        else    
                            echo "file not copied"
                        fi
                    fi
                else    
                    echo "user not found"
                fi

                read -p 'press enter to continue' temp
                ;;    

            L)  read -p 'Enter the name of the group: ' groupname
                
                if [[ ! $(grep -i $groupname /etc/group) ]]
                then
                    echo "$groupname does not exist."
                else
                    read -p "Enter the directory path to list: " pathname

                    if [[ ! $(ls -l ${pathname}) ]]
                    then
                        echo "$pathname is unreachable."
                    else
                        echo
                        echo "The following items belong to $groupname:"

                        while read -a listline 
                        do 
                            if [[ ${listline[3]} == $groupname ]]
                            then
                                echo "- ${listline[8]}"
                            fi
                        done < <(ls -l)

                    fi
                fi

                read -p 'press enter to continue' temp
                ;;  

            *) echo "I have no clue what you want to do"
                ;;

        esac
    done



