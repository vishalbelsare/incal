#!/bin/bash

cd ../smtlearn

declare -a options=(1 2 3 4 5)

for i in "${options[@]}"; do
    python experiments.py ../synthetic/kk/$i "" ../output/synthetic/kk/$i cnf -t 200 &
done
wait