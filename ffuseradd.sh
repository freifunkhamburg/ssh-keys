#!/bin/bash

NMEUSR=$1
EMLUSR=$2
GRPUSR=$3
ADDUSR="$(which useradd) -m -G"


if [ "$NMEUSR" = "" ]; then
    echo -e "\nUSAGE: ffuseradd <USERNAME>... [EMAIL ADDRESS]... [GROUP]... \nUsername is\
 necessary!\nEmail address and group are optional.\nGroups for example: sudo,www-user. Ever add multible groups \",\" separated! Leave it blank for standard user."
    exit
else
    if [ "$EMLUSR" = "" ]; then
        echo -e "You entered username:\n Username: "$NMEUSR"\n Email address: none"
    else
        echo -e "You entered username:\n Username: "$NMEUSR"\n Email address: "$EMLUSR""
    fi
fi

# Adding user
echo -e "\nadding user "$NMEUSR" with "$ADDUSR""
echo $GRPUSR
