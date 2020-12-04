#!/bin/bash

openssl aes-256-cbc -d -a -in ../private.zip.enc -out private.zip
unzip private.zip
mv private ..
rm -rf private.zip

mkdir -p ~/.ssh
cp ../private/.gitconfig ~/.gitconfig