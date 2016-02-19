#!/bin/bash

if [[ $(uname) == 'Darwin' ]]; then
	premake='osx/premake5'
else
	premake='linux/premake5'
fi

cwd=$(dirname $0)

echo $cwd/$premake "$@"
