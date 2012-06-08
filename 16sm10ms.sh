#!/bin/bash
x=1
while [ $x -le 16 ]
do
    cuda/16sm10ms
    x=$(( $x + 1 ))
done
