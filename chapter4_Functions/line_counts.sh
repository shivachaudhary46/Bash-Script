#!/usr/bin/bash

for text in dir/*.txt
do
    if grep -q "name" $text; then
        var=$(cat $text | grep "name" | sed 's/*=/ /g')
        echo "$var"
        echo $(wc -l < $text)
    fi
done