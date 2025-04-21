#!bin/bash

VAR1=$1
VAR2=$2

echo "Variable1 :$VAR1"
echo "Variable2 :$VAR2"

echo "Script name: $0"
echo "ALL: $@"
echo "number of Variables: $#"

echo "addation: $((VAR1+VAR2))"
echo "subtraction: $((VAR1-VAR2))"