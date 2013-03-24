#!/bin/bash

# Author:   [credential]	helper = cache[credential]	helper = cache[credential]	helper = cache
# File:     /home/sliker/ffuseradd.sh
# Created:  14:30:04 01/03/2013
# Modified: 20:48:17 06/03/2013
# Title:    ffuseradd
# Version:  0.1
# License:  GPLv2 - https://www.gnu.org/licenses/gpl-2.0.html


# vim: ff=unix:fileencoding=utf-8:ft=sh

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
