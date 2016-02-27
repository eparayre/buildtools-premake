#!/bin/bash

cwd=$(dirname $0)

$cwd/premake-core/bin/release/premake5 "$@"
