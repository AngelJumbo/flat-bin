#!/bin/bash

echo "Installing flat-bin..."

BIN_DIR="$HOME/.local/bin"

mkdir -p "$BIN_DIR"

BINARY_URL="https://raw.githubusercontent.com/AngelJumbo/flat-bin/main/flat-bin"

echo "Downloading flat-bin..."
curl -fL "$BINARY_URL" -o "$BIN_DIR/flat-bin" || {
  echo "Error: Unable to download flat-bin. Check the URL or your network connection."
  exit 1
}

chmod +x "$BIN_DIR/flat-bin"

echo "Installation complete."
echo "Make sure that ~/.local/bin is part of your PATH to use flat-bin."

