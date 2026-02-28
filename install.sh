#!/bin/bash

INSTALL_DIR="$HOME/.local/share/mkcd"
RC_FILE="$HOME/.bashrc"

mkdir -p "$INSTALL_DIR"
cp mkcd.sh "$INSTALL_DIR/"

# Add sourcing line if not already present
if ! grep -q "source $INSTALL_DIR/mkcd.sh" "$RC_FILE"; then
    echo "source $INSTALL_DIR/mkcd.sh" >> "$RC_FILE"
    echo "mkcd installed. Restart your shell or run: source ~/.bashrc"
else
    echo "mkcd already installed."
fi
