#!/bin/bash

function mult_sum() {
    local RESULTADO=$(echo "scale=2;$1*$2/($1+$2)" | bc)
    echo "El resultado es $RESULTADO"
}

mult_sum 2 3

mult_sum 4 5

mult_sum $1 $2
