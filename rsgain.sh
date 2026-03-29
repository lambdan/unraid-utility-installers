#!/bin/sh
set -e

URL="https://github.com/complexlogic/rsgain/releases/download/v3.7/rsgain-3.7-Linux.tar.xz"
DIR="/tmp/.rsgain"
DOWNLOAD_DEST="$DIR/rsgain.tar.xz"
DEST="/usr/local/bin/rsgain"

echo "### rsgain install script ###"
echo "URL: $URL"
echo "DIR: $DIR"
echo "Symlink targets: $DEST"
echo "#############################"

mkdir -p "$DIR"
echo "Downloading $URL"
curl -L -o "$DOWNLOAD_DEST" "$URL"
echo "Untarring..."
tar xf "$DOWNLOAD_DEST" -C "$DIR" --strip-components=1
echo "Symlinking..."
ln -s "$DIR/rsgain" "$DEST"

# verify
file -s "$(which rsgain)"

echo "########"
echo "Done! :D"
echo "########"
