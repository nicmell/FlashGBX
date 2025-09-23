#!/bin/sh -x

#pip3 install -e ".[qt6]"
#pip3 install "PyInstaller"


rm -Rf dist
rm -Rf build
rm FlashGBX.spec

pyinstaller \
    --name "FlashGBX" \
    --icon "FlashGBX/res/icon.icns" \
    --add-data "FlashGBX/res/*:res/" \
    --noconfirm \
    --windowed \
    app.py

rm -Rf /Applications/FlashGBX.app
cp -R dist/FlashGBX.app /Applications/