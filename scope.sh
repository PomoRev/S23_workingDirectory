#!/usr/bin/bash
#
# Variable Scope Example

test_variable="Hello"
another_variable="James"

function mixup { 

    test_variable="Well Hello"
    local another_variable="world"
    even_another_variable="oh my"
    echo "$test_variable $another_variable $even_another_variable"

}


echo "$test_variable $another_variable"
mixup
echo "$test_variable $another_variable $even_another_variable"