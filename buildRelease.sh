#!/bin/bash
set GYP_DEFINES=fastbuild=1 src/build/gyp_chromium
ninja -C src/out/Release chrome