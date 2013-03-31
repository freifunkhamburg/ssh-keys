#!/bin/bash

#NMEUSR=$1
#EMLUSR=$2
#GRPUSR=$3
#ADDUSR="$(which useradd) -m"


# Usage info

#if [ "$NMEUSR" = "" ]; then
#    echo -e "\nUSAGE: ffuseradd <USERNAME>... [EMAIL ADDRESS]... [GROUP]... \nUsername is\
# necessary!\nEmail address and group are optional.\nGroups for example: sudo,www-user. Ever add multible groups \",\" separated! Leave it blank for standard user."
#    exit
#else
#    if [ "$EMLUSR" = "" ]; then
#        echo -e "You entered:\n Username: "$NMEUSR"\n Email address: none"
#    else
#        echo -e "You entered:\n Username: "$NMEUSR"\n Email address: "$EMLUSR""
#    fi
#fi

# Adding user

#echo -e "\nadding user "$NMEUSR" with "$ADDUSR" "$GRPUSR" "$NMEUSR""

###################
### UND NOCHMAL ###
###################

usage()
{
cat<<EOF
usage: $0 -u <USERNAME> -[e|g]options

This script adds a new user and includes his public key into the users home 

    OPTIONS:
    -h  show this message
    -u  set username
    -e  set new users email address
    -g  set additional group(s) for the new user
EOF
}

NMEUSR=
EMLUSR=
GROUSR=
VERBOSE=

while getopts "h:u:e:g:" OPTION
do
    case $OPTION in
        h)
            usage
            exit 1
            ;;
        u)
            NMEUSR=$OPTARG
            ;;
        e)
            EMLUSR=$OPTARG
            ;;
        g)
            GRPUSR=$OPTARG
            ;;
    esac
done

if [[ -z $NMEUSR ]] || [[ -z $EMLUSR ]] || [[ -z $GRPUSR ]]
then
    usage
    exit 1
fi

#while getopts u:e:g: option
#do
#    case "${option}"
#    in
#        u) NMEUSR=${OPTARG};;
#        e) EMLUSR=${OPTARG};;
#        g) GRPUSR=${OPTARG};;
#    esac
#done

#echo $NMEUSR
#echo $EMLUSR
#echo $GRPUSR
