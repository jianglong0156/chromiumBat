#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
VERSION=$1
OUT_DIR=$2
PROJDIR="$DIR/installer-proj-mac-cli/Cocos Framework"
PROJTEMP="$PROJDIR/Cocos Framework Template.pkgproj"
PROJ="$PROJDIR/Cocos Framework.pkgproj"
SCRIPTTEMP="$PROJDIR/resources/postflight Template.sh"
SCRIPT="$PROJDIR/resources/postflight.sh"
CERT="CocoaChina (U7E7529TA5)"

echo $VERSION

echo ">>> Package PKG File"
sed "s/FWVERSION/$VERSION/" < "$SCRIPTTEMP" > "$SCRIPT"
sed "s/FWVERSION/$VERSION/" < "$PROJTEMP" > "$PROJ"
packagesbuild -v "$PROJ"

echo ">>> Sign PKG File"
du -h -d 1 "$OUT_DIR"
echo ""
echo "--------------------------"
echo ""

SRC_PKG="$OUT_DIR/Cocos Framework.pkg"
DEST_PKG="$OUT_DIR/Cocos Framework Signed.pkg"

if [ -d "$DEST_PKG" ]; then
    rm -fr "$DEST_PKG"
fi

productsign --sign "Developer ID Installer: $CERT" "$SRC_PKG" "$DEST_PKG"
spctl -a -v --type install "$DEST_PKG"
echo ""
echo "DONE: Generate pkg file in $OUT_DIR"
# cp -r "$DEST_PKG" "$DIR/Release/CocosFramework-V$VERSION-$(date "+%Y%m%d%H%M%S").mpkg"
# open "$PROJDIR/build/"
echo ""

