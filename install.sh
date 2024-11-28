#!/bin/bash

echo "Installing flat-bin..."

BIN_DIR="$HOME/.local/bin"

mkdir -p "$BIN_DIR"

echo "Downloading flat-bin..."
curl -L https://github.com/AngelJumbo/flat-bin/releases/latest/download/flat-bin -o "$BIN_DIR/flat-bin"

chmod +x "$BIN_DIR/flat-bin"

echo "Installation complete."
echo "Make sure that ~/.local/bin is part of your PATH to use flat-bin."
echo "You can check this by running: export PATH=\$HOME/.local/bin:\$PATH"

