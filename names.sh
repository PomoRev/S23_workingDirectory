#! /bin/bash

name=$(whoami)

name=$(grep -w -m1 $name /etc/passwd | cut -d: -f5 | cut -d, -f1 )

echo "Hello $name"