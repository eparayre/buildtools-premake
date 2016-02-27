#!/bin/bash

./build.sh

premake-core/bin/release/premake5 "$@"
