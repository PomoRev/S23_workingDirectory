#! /bin/bash -u

read -p 'Hey, what is your name? : ' name
name=${name^^}

echo "$name is a fine name can I call you ${name:0:1}?"

read -p "please say yes" response

