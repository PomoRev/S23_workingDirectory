#!/bin/bash

echo ${1:0:1}

while [[ ${1:0:1} == 'a' ]]
do
    echo ": $1"
    shift 1
done

echo $@