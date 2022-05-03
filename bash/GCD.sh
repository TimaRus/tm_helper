#!/bin/bash

gcd ()
{
    let "mod = $1 % $2"

    if [[ $mod -eq 0 ]]; then return $2; fi

    return $(gcd $2 $mod)
}

while true
do
    read a b

    if [[ -z $a ]]; then break; fi
        
    gcd $a $b
    echo "GCD is $?"
done

echo "bye"
