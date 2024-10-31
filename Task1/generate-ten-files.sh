#!/bin/bash

mkdir tenfiles

DIR="./tenfiles"

USER="studentandrey"

for i in {1..10}; do
    FILENAME=$(mktemp -u XXX).txt

    touch "$DIR/$FILENAME"

    chown $USER "$DIR/$FILENAME"
    
    PERMISSIONS=$(( $RANDOM % 8 ))
    case $PERMISSIONS in
        0) CHMOD=700 ;;
        1) CHMOD=600 ;;
        2) CHMOD=500 ;;
        3) CHMOD=400 ;;
        4) CHMOD=300 ;;
        5) CHMOD=200 ;;
        6) CHMOD=100 ;;
        *) CHMOD=000 ;;
    esac

    chmod $CHMOD "$DIR/$FILENAME"
done