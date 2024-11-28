#!/bin/bash

echo "Installing flat-bin..."

BIN_DIR="/usr/local/bin"

curl -L https://github.com/AngelJumbo/flat-bin/releases/latest/download/flat-bin -o "$BIN_DIR/flat-bin"

chmod +x "$BIN_DIR/flat-bin"

if command -v flat-bin &>/dev/null; then
  echo "flat-bin installed successfully!"
else
  echo "Error: flat-bin installation failed."
  exit 1
fi

