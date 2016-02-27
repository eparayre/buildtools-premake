#!/bin/bash

cwd=$(dirname $0)

$cwd/build.sh
$cwd/premake-core/bin/release/premake5 "$@"
