#!/bin/bash

function par() {
    local resto=$[$1%2]

    #echo $resto
    if [ $resto -eq 0 ]; then
        echo "$1 es un número par."

    else
        echo "$1 + 1 = $[$1+1]"
        
    fi
}

par '6'
par '3'
par '2'
par '527'
