#!/bin/bash

gcd () # arg1 arg2
{
#    echo "arg1 = $1, arg2 = $2"
    if [[ $1 -eq $2 ]]
    then
        echo 'GCD is' $1
    else
        if [[ $1 -gt $2 ]]
        then
            gcd $(($1-$2)) $2
        else
            gcd $1 $(($2-$1))
        fi
    fi
}

while :
do
    read arg1 arg2
    if [[ -n $arg1 ]]
    then
        gcd $arg1 $arg2
    else
        echo 'bye'
        break
    fi
done
