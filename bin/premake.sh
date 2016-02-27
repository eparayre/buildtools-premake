#!/bin/bash

chmod +x build.sh
./build.sh

premake-core/bin/release/premake5 "$@"
