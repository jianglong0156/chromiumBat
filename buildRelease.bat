set GYP_GENERATORS=msvs-ninja,ninja
set GYP_DEFINES=branding=Chromium buildtype=Official fastbuild=1
set GYP_MSVS_VERSION=2013
set DEPOT_TOOLS_WIN_TOOLCHAIN=0
ninja -C src/out/Release chrome
chrome
pause