#!/bin/bash

# Script to automate the testing of Lab 8 (example)

echo "test 1: no parameters"

$1

echo "test 2: just a phrase"

$1 this is my message

echo "test 3: just a phrase in quotes"

$1 "this is my message"

echo "test 4: alternate length"

$1 "this is my message!"



