#!/bin/bash

fileName=$1
cmtMsg=$2

echo "Adding '$1' and commiting with '$2'."

git add $1

if [[ $? -eq 0 ]]
then
    git commit -m "$2"

    if [[ $? -eq 0 ]]
    then
        echo "[Success] ready to push"
        git log --graph --all --oneline --decorate
    else
        echo "[Failed] git commit -m '$2'."
    fi
else
    echo "[Failed] git add $1"
fi

echo "[Finished]"
