#!/usr/bin/env bash
if [[ ${1} =~ ^[a-z][0-9a-z-]*$ ]]; then
    rm -rf .git
    sed s/starter/$1/g pom.xml > temp.tmp
    rm pom.xml
    mv temp.tmp pom.xml
    git init
    echo "git remote add origin <LINK>"
    echo "git push -u origin master"
    rm -f init.sh
else
    echo "./init project-name"
    echo "'project-name' must validate the regex \"^[a-z][0-9a-z-]*$\"."
fi
