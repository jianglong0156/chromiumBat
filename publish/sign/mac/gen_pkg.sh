#!/bin/bash
echo "start-----"
CERT="CocoaChina (U7E7529TA5)"

SRC_PKG="../../CocosSimulatorMac_v1.0.pkg"
DEST_PKG="../../CocosSimulatorMac_v1.0Signed.pkg"

productsign --sign "Developer ID Installer: $CERT" "$SRC_PKG" "$DEST_PKG"
spctl -a -v --type install "$DEST_PKG"
echo ""
echo "DONE: Generate pkg file in $SRC_PKG"
echo "end-----"
