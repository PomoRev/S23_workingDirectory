#!/bin/bash -u

# make a menu that will do the following:
#   print out the current user's entry from passwd
#   read in a username to search for in passwd
#   read in a username to add a readme file to their home directory (make sure
#       that they have a home directory)

choice='START'
while  [[ ${choice::1} != 'Q' ]]
    do
    clear

    echo
    echo -n "Hello "
    grep $USERNAME /etc/passwd | cut -d':' -f 5 | cut -d',' -f 1

    echo
    echo Welcome to the System

    echo 
    echo Note that these are administrative functions so you
    echo will require the administrative password.

    echo
    echo Enter your choice:
    echo "(P)rint out your user information"

    echo
    echo "(Q)uit the menu"

    read choice
    choice=${choice^}

    case ${choice::1} in

        Q)  echo "have a great day!"
            ;;

        *) echo "I have no clue what you want to do"
            ;;

    esac
done

