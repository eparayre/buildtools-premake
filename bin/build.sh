#!/bin/bash

pushd $(dirname $0) > /dev/null

if [ ! -d "premake-core" ]; then
    echo -en "\n"
    echo [ clone premake ]
    echo -en "\n"

    github=https://github.com/premake/premake-core.git
    branch=release

    git clone --depth=1 --recursive -b $branch --single-branch $github premake-core
fi

if [ ! -f "premake-core/bin/release/premake5" ]; then
    echo -en "\n"
    echo [ build premake ]
    echo -en "\n"

    cd premake-core

    if [[ $(uname) == 'Darwin' ]]; then
        make -f Bootstrap.mak osx
    else
        make -f Bootstrap.mak linux
    fi

    cd ..
fi

popd > /dev/null
