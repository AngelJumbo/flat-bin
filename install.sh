#!/bin/bash

echo "Installing flat-bin..."

BIN_DIR="/usr/local/bin"

echo "Downloading flat-bin..."
sudo curl -L https://github.com/AngelJumbo/flat-bin/releases/latest/download/flat-bin -o "$BIN_DIR/flat-bin"

echo "Setting permissions..."
sudo chmod +x "$BIN_DIR/flat-bin"

if command -v flat-bin &>/dev/null; then
  echo "flat-bin installed successfully!"
else
  echo "Error: flat-bin installation failed."
  exit 1
fi

