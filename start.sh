#!/bin/sh

dir=$(dirname $(readlink -f $0))
name=$(basename ${dir})

docker run -it -v "${dir}/shared:/shared" "$@" ${name}

