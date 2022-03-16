#!/bin/bash 

let NUM=RANDOM

if [ $NUM -gt 5]; then
  echo "$NUM es menor que 5"
fi
if [ $NUM -lt 5]; then
  echo "$NUM es menor que 5"
fi
exit 0
