#!/usr/bin/bash
#
# Fun with Functions

echo $1

function fun {

    echo $1

}

fun hello world
fun "hello world"
fun $1
echo $1