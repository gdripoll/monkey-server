#!/bin/bash
git config --global user.email "gdripoll@gmail.com"
git config --global user.name "gdripoll"
git add .
git commit -m "$1"
git push

