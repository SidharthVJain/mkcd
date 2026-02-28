#!/usr/bin/env bash
set -euo pipefail

SCRIPT_URL="https://raw.githubusercontent.com/yourname/mkcd/main/mkcd.sh"
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="mkcd"

echo "Downloading $SCRIPT_NAME..."

curl -fsSL "$SCRIPT_URL" -o "$SCRIPT_NAME"

echo "Installing to $INSTALL_DIR..."

sudo install -m 755 "$SCRIPT_NAME" "$INSTALL_DIR/$SCRIPT_NAME"

rm "$SCRIPT_NAME"

echo "Installed! You can now run: $SCRIPT_NAME"
