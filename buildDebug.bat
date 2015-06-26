set GYP_GENERATORS=msvs-ninja,ninja
set GYP_DEFINES=component=shared_library
set GYP_MSVS_VERSION=2013
set DEPOT_TOOLS_WIN_TOOLCHAIN=0
ninja -C src/out/Debug chrome
chrome
pause