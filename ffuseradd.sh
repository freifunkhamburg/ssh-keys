#!/bin/bash

if [ "$1" = "" ]; then
    echo -e "\nUSAGE: ffuseradd <USERNAME>... [EMAIL ADDRESS]...\nUsername is\
 necessary!\nEmail address is optional."
else
    if [ "$2" = "" ]; then
        echo -e "You entered username:\n Username:"$1"\n Email address: none"
    else
        echo -e "You entered username:\n Username:"$1"\n Email address: "$2""
    fi
fi
