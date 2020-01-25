#!/usr/bin/env bash

function createRepo() {

    mkdir ~/Documents/$1
    curl -i -H "Authorization: token oAUTH-TOKEN" -d '{"name": "'$1'",  "private": false}' https://api.github.com/user/repos
    cd ~/Documents/$1
    git init
    git remote add origin git@github.com:$(git config --global user.name)/$1.git
    touch README.md
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .

}