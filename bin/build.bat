@echo off

pushd %~dp0

if not exist premake-core (
    echo.
    echo.[ clone premake ]
    echo.

    set github=https://github.com/premake/premake-core.git
    set branch=release

    git clone --depth=1 --recursive -b %branch% --single-branch %github% premake-core
)

if not exist premake-core/bin/release/premake5.exe (
    echo.
    echo.[ build premake ]
    echo.

    call "%VS140COMNTOOLS%\vsvars32.bat"

    cd premake-core
    nmake -f Bootstrap.mak MSDEV=vs2015 windows
    cd ..
)

popd
