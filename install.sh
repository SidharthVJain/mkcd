#!/bin/bash
set -e

REPO="https://raw.githubusercontent.com/<your-username>/mkcd/main"
INSTALL_DIR="$HOME/.local/share/mkcd"
RC_FILE="$HOME/.bashrc"

echo "Installing mkcd..."

mkdir -p "$INSTALL_DIR"

# Download mkcd.sh
curl -fsSL "$REPO/mkcd.sh" -o "$INSTALL_DIR/mkcd.sh"

# Add source line if missing
if ! grep -q 'mkcd.sh' "$RC_FILE"; then
    echo "source $INSTALL_DIR/mkcd.sh" >> "$RC_FILE"
fi

echo "Installation complete."
echo "Run: source ~/.bashrc"
