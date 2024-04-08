#!/bin/bash
clear
trap '' SIGINT   

random_number=$(shuf -i 1000-9999 -n 1)

echo "$random_number" >> /home/eshaan-deshmukh/out

while true; do
    if [[ "$1" != "1" ]]; then
        read -p "You owe me $1 dollars for $2. This screen will not go away until you pay. " input
    else
        read -p "You owe me $1 dollar for $2. This screen will not go away until you pay. " input
    fi
    
    if [[ "$input" == "$random_number" ]]; then
        echo "Payment received. Exiting..."
        exit 0
    fi
done
