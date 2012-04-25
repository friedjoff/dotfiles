#!/bin/sh
cd "$(dirname "$0")"
git pull
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
chmod +x ~/.osx