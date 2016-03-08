#!/bin/sh

dir=$(dirname $(readlink -f $0))
name=$(basename ${dir})

docker commit $(docker ps -l -q) ${name}

