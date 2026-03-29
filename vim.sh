#!/bin/sh
set -e

URL="https://github.com/lxhillwind/vim-bin/releases/download/v9.2.0081/vim-v9.2.0081-linux-x64.tar.xz"
DIR="/tmp/.vim"
DEST="/usr/local/bin/vim"
DOWNLOAD_DEST="$DIR/vim.tar.xz"

echo "### vim install script ###"
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
ln -s "$DIR/AppRun" "$DEST"

# verify
file -s "$(which vim)"

echo "########"
echo "Done! :D"
echo "########"
echo
