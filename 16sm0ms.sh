#!/bin/bash
x=1
while [ $x -le 8 ]
do
    cuda/16sm0ms
    x=$(( $x + 1 ))
done
