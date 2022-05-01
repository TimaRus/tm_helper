#!/bin/bash

var=1 + 1 # not correct
echo "$var"

var=1+1 # will be string
echo "$var"

let var=1+1
echo "$var"

let "var = 1 + 1"
echo "$var"
