#!/usr/bin/bash 
cat animals.txt | cut -d " " -f 2 | sort | uniq -c
