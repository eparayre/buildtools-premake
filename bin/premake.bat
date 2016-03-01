@echo off

set cwd=%~dp0

%cwd%/premake-core/bin/release/premake5.exe %*
