#!bin/bash

VAR1=$1
VAR2=$2

echo "Variable1 :$VAR1"

echo "ALL: $@"

echo "addation:$((VAR1+VAR2))"
echo "subtraction:$((VAR1-VAR2))"