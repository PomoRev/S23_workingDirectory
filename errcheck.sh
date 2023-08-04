#! /bin/bash

sudo adduser jenny 


if [[ $(echo $?) -ne 0 ]]
then
    echo our error messsage
fi

echo done

