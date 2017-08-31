#!/bin/bash

result=$(python translate.py "$1" "$2")

path="$(echo $0 | rev | cut -c 13- | rev | tr -d '\n')"
echo "${path}"

if [ ! -e ${path}v_list ] ; then
    touch ${path}v_list
fi
num_lines=$(wc -l < "${PWD}/v_list" | tr -d '[:space:] ') 
echo "[${num_lines}]\t $1 \t->\t ${result}" >> ${PWD}/v_list
echo "[${num_lines}]\t $1 \t->\t ${result}"
