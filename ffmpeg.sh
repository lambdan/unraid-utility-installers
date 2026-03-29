#!/bin/sh
set -e

URL="https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz"
FFMPEG_DIR="/tmp/.ffmpeg"
DOWNLOAD_DEST="$FFMPEG_DIR/ffmpeg.tar.xz"
FFMPEG_DEST="/usr/local/bin/ffmpeg"
FFPROBE_DEST="/usr/local/bin/ffprobe"

echo "### ffmpeg install script ###"
echo "URL: $URL"
echo "DIR: $FFMPEG_DIR"
echo "Symlink targets: $FFMPEG_DEST $FFPROBE_DEST"
echo "#############################"

mkdir -p "$FFMPEG_DIR"
echo "Downloading $URL"
curl -L -o "$DOWNLOAD_DEST" "$URL"
echo "Untarring..."
tar xf "$DOWNLOAD_DEST" -C "$FFMPEG_DIR" --strip-components=1
echo "Symlinking..."
ln -s "$FFMPEG_DIR/ffmpeg" "$FFMPEG_DEST"
ln -s "$FFMPEG_DIR/ffprobe" "$FFPROBE_DEST"

# verify
file -s "$(which ffmpeg)"
file -s "$(which ffprobe)"

echo "########"
echo "Done! :D"
echo "########"
