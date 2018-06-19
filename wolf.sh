#!/bin/sh

MANIFESTURL="https://github.com/Akianonymus/redwolf_harpia/raw/master/redwolf.xml"

# create local manifest

curl --create-dirs -L -o .repo/local_manifests/redwolf.xml -O -L $MANIFESTURL
